
 Working directory              : /wrk/irikura/molpro.4GDS2HO2uF/
 Global scratch directory       : /wrk/irikura/molpro.4GDS2HO2uF/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.4GDS2HO2uF/

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
 
 NSING=12
 NTRIP=16
 
                                                                                 ! active space (2/10) as orbitals [7 3]
 {multi
     closed,21,22
     occ,28,25
     wf,sym=1,spin=0;state,NSING;
     wf,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,15,19
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5103.2}
 hlsdiag(NSING+1) = energd4
 
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
  64 bit mpp version                                                                     DATE: 23-Apr-24          TIME: 17:16:20  
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

     37.224 MB (compressed) written to integral file ( 12.9%)

     Node minimum: 3.932 MB, node maximum: 10.224 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2626485.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2626485      RECORD LENGTH: 524288

 Memory used in sort:       3.18 MW

 SORT1 READ    36081304. AND WROTE      538463. INTEGRALS IN      2 RECORDS. CPU TIME:     0.15 SEC, REAL TIME:     0.17 SEC
 SORT2 READ     3260452. AND WROTE    15753876. INTEGRALS IN    234 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC

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
 CPU TIMES  *        14.12     13.95
 REAL TIME  *        17.28 SEC
 DISK USED  *        30.40 MB (local),      250.47 MB (total)
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
   6   -24984.77408070      -0.00000000     0.45D-08     0.16D-06     5     0       0.01      0.10    diag
   7   -24984.77408070       0.00000000     0.18D-08     0.12D-06     0     0       0.02      0.12    diag

 Final occupancy:  22  22

 !RHF STATE 1.1 Energy               -24984.7740807038    
  RHF One-electron energy            -33999.5252898202    
  RHF Two-electron energy            9014.751209116395
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
    4.1     2.00000  -118.10410     1  1  d0   0.99987
    5.1     2.00000  -118.10410     1  1  d2-  0.97395
    6.1     2.00000  -118.10410     1  1  d2+  0.97695
    7.1     2.00000  -118.10410     1  1  d1+  0.98888
    8.1     2.00000  -118.10410     1  1  d1-  0.98871
    9.1     2.00000   -45.72039     1  4  s    1.00000
   10.1     2.00000   -23.67489     1  2  d0   1.00000
   11.1     2.00000   -23.67489     1  2  d1+ -0.32497    1  2  d2+  0.93344
   12.1     2.00000   -23.67489     1  2  d2-  0.26867    1  2  d1-  0.95941
   13.1     2.00000   -23.67489     1  2  d2-  0.94783    1  2  d1- -0.26022
   14.1     2.00000   -23.67489     1  2  d1+  0.94033    1  2  d2+  0.31241
   15.1     2.00000   -10.01554     1  5  s    0.99999
   16.1     2.00000    -2.99474     1  3  d1-  0.96912
   17.1     2.00000    -2.99474     1  3  d2-  0.29358    1  3  d1+  0.95092
   18.1     2.00000    -2.99474     1  3  d2+  0.96569
   19.1     2.00000    -2.99474     1  3  d2-  0.92616    1  3  d1+ -0.29859
   20.1     2.00000    -2.99474     1  3  d0   0.99992
   21.1     2.00000    -1.62623     1  6  s    0.99951
   22.1     2.00000    -0.16560     1  7  s    1.00154
    1.2     2.00000  -604.13158     1  1  pz   0.99924
    2.2     2.00000  -604.13158     1  1  py   0.99938
    3.2     2.00000  -604.13158     1  1  px   0.99986
    4.2     2.00000  -148.72003     1  2  px   0.99991
    5.2     2.00000  -148.72003     1  2  py   0.99986
    6.2     2.00000  -148.72003     1  2  pz   0.99993
    7.2     2.00000   -35.35818     1  3  pz   0.99992
    8.2     2.00000   -35.35818     1  3  py   0.99978
    9.2     2.00000   -35.35818     1  3  px   0.99969
   10.2     2.00000   -11.20190     1  1  f0   0.99999
   11.2     2.00000   -11.20190     1  1  f3+  0.99820
   12.2     2.00000   -11.20190     1  1  f3-  0.99719
   13.2     2.00000   -11.20190     1  1  f2+  0.99940
   14.2     2.00000   -11.20190     1  1  f2-  0.99941
   15.2     2.00000   -11.20190     1  1  f1+  0.99791
   16.2     2.00000   -11.20190     1  1  f1-  0.99699
   17.2     2.00000    -6.80574     1  4  pz   1.00004
   18.2     2.00000    -6.80574     1  4  py   1.00004
   19.2     2.00000    -6.80574     1  4  px   1.00004
   20.2     2.00000    -0.80779     1  5  pz   0.99943
   21.2     2.00000    -0.80779     1  5  py   0.99943
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
 CPU TIMES  *        14.26      0.14     13.95
 REAL TIME  *        17.43 SEC
 DISK USED  *        33.35 MB (local),      268.17 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  43 (  21  22 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      72 (  29  43 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.212D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.255D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.210D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.176D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.186D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.107D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.345D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.271D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.341D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.348D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.304D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.297D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.402D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.158D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.517D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.551D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 26 SYMMETRY CONTAMINATION OF 0.495D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 27 SYMMETRY CONTAMINATION OF 0.157D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 28 SYMMETRY CONTAMINATION OF 0.158D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 5 4 6 1 2   5 6 3 4 1 6 4 5 3 2   1 1 1 2 3 5 6 4 2 3   5 6 4 1 6 4 2 3 5 1
                                        2 3 5 6 4 1 4 6 3 5   2 6 4 3 5 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.495D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.357D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.176D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.167D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.234D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.154D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.139D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.214D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.332D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.773D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.669D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.871D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.524D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.513D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.916D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.976D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.784D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.784D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.251D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.254D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.336D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.274D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.274D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 2 1 6   7 910 8 4 5 3 2 1 3   2 1 2 1 3 2 1 3 2 1   3 6 5 4 810 9 7 2 1
                                        3 5 6 4 7 9 810 6 8  10 5 4 7 9 2 1 3 6 8  10 7 9 5 4 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
 
 Number of orbital rotations:  2100  ( 213 closed/active, 1555 closed/virtual, 0 active/active, 332 active/virtual )
 Total number of variables:    3180
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   18   34    5 -24984.57094296  -24984.69073691   -0.11979395    0.07476851 0.00011270 0.00000000  0.24E+01      3.38
   2    9   14    0 -24984.67365596  -24984.68008463   -0.00642867    0.04709594 0.00003582 0.00000000  0.46E+00      6.33
   3    9   14    0 -24984.68013074  -24984.68013379   -0.00000305    0.00083896 0.00000024 0.00000000  0.90E-02      9.26
   4    5    8    0 -24984.68013379  -24984.68013379   -0.00000000    0.00000130 0.00000001 0.00000000  0.17E-04     11.36

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.28E-09)
                       Final energy: -24984.68013379
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -24984.7921011328    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.57192753
 One electron energy                        -33998.85026787
 Two electron energy                          9014.05816673
 Virial ratio                                    1.57455360
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -24984.7110445394    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22525404
 One electron energy                        -33999.56220063
 Two electron energy                          9014.85115610
 Virial ratio                                    1.57455632
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -24984.7110445394    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22525404
 One electron energy                        -33999.56220063
 Two electron energy                          9014.85115609
 Virial ratio                                    1.57455632
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -24984.7110445394    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22525404
 One electron energy                        -33999.56220063
 Two electron energy                          9014.85115609
 Virial ratio                                    1.57455632
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -24984.7110445394    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22525404
 One electron energy                        -33999.56220064
 Two electron energy                          9014.85115610
 Virial ratio                                    1.57455632
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -24984.7110445394    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22525404
 One electron energy                        -33999.56220064
 Two electron energy                          9014.85115610
 Virial ratio                                    1.57455632
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -24984.6699011399    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12882353
 One electron energy                        -33990.97382372
 Two electron energy                          9006.30392258
 Virial ratio                                    1.57455665
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -24984.6502225184    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.94270457
 One electron energy                        -33999.24211454
 Two electron energy                          9014.59189202
 Virial ratio                                    1.57455866
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -24984.6502225184    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.94270457
 One electron energy                        -33999.24211454
 Two electron energy                          9014.59189202
 Virial ratio                                    1.57455866
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -24984.6502225184    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.94270457
 One electron energy                        -33999.24211454
 Two electron energy                          9014.59189202
 Virial ratio                                    1.57455866
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -24984.6502225184    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.94270457
 One electron energy                        -33999.24211454
 Two electron energy                          9014.59189202
 Virial ratio                                    1.57455866
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -24984.6502225184    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.94270457
 One electron energy                        -33999.24211454
 Two electron energy                          9014.59189202
 Virial ratio                                    1.57455866
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -24984.7206844526    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.39007942
 One electron energy                        -34000.99729791
 Two electron energy                          9016.27661346
 Virial ratio                                    1.57455437
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -24984.7206844526    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.39007942
 One electron energy                        -34000.99729791
 Two electron energy                          9016.27661346
 Virial ratio                                    1.57455437
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -24984.7206844525    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.39007942
 One electron energy                        -34000.99729790
 Two electron energy                          9016.27661345
 Virial ratio                                    1.57455437
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -24984.7206844525    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.39007942
 One electron energy                        -34000.99729790
 Two electron energy                          9016.27661345
 Virial ratio                                    1.57455437
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -24984.7206844525    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.39007941
 One electron energy                        -34000.99729789
 Two electron energy                          9016.27661344
 Virial ratio                                    1.57455437
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -24984.6774774086    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.86842557
 One electron energy                        -33988.36453739
 Two electron energy                          9003.68705998
 Virial ratio                                    1.57456026
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -24984.6535248900    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.83046012
 One electron energy                        -33997.16988903
 Two electron energy                          9012.51636414
 Virial ratio                                    1.57456021
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -24984.6535248900    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.83046012
 One electron energy                        -33997.16988902
 Two electron energy                          9012.51636413
 Virial ratio                                    1.57456021
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -24984.6535248900    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.83046012
 One electron energy                        -33997.16988902
 Two electron energy                          9012.51636413
 Virial ratio                                    1.57456021
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -24984.6477048804    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.11556078
 One electron energy                        -34002.57057288
 Two electron energy                          9017.92286800
 Virial ratio                                    1.57455631
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -24984.6477048804    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.11556078
 One electron energy                        -34002.57057288
 Two electron energy                          9017.92286800
 Virial ratio                                    1.57455631
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -24984.6477048804    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.11556078
 One electron energy                        -34002.57057287
 Two electron energy                          9017.92286799
 Virial ratio                                    1.57455631
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy             -24984.6477048804    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.11556078
 One electron energy                        -34002.57057287
 Two electron energy                          9017.92286799
 Virial ratio                                    1.57455631
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy             -24984.6477048803    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.11556078
 One electron energy                        -34002.57057287
 Two electron energy                          9017.92286799
 Virial ratio                                    1.57455631
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy             -24984.6477048803    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.11556078
 One electron energy                        -34002.57057287
 Two electron energy                          9017.92286799
 Virial ratio                                    1.57455631
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy             -24984.6477048803    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.11556078
 One electron energy                        -34002.57057287
 Two electron energy                          9017.92286799
 Virial ratio                                    1.57455631
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999993468366
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000005000068
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.072872490696
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000893903
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.927128146968
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     3.037648646682
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.962351237551
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     1.000000451933
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     3.999993511799
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     1.000006152035
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000962112
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.992467756996
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.999998574940
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000001264689
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.007531441263
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999668063
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.000002709218
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999997622719
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     2.210500870726
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.171815371741
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     3.933496564317
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     4.000019580068
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     6.066482707485
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     2.828209382755
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     7.789475522909
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000004980430
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999995048886
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     2.925310575388
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000001997905
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.074687397392
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000000
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     2.961872772270
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.038127330631
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     0.999999946289
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     1.000006103079
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     3.999993847731
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999327738
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.007551301585
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000001159201
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999998660670
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     2.992449550806
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999997649
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999997622632
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000002379720
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.960792811390
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.888769377304
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     4.066799836838
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     3.999984569110
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     5.933216750878
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     8.111205130794
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     3.039231523687
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000001551204
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.999999951046
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.001816933917
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999997108192
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.998184455640
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000000000
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.000478581048
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     3.999521431818
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     3.999999601778
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     1.000000385122
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     1.000000000234
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.999999710150
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.999980941419
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000265859
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000074641
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.000019007931
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000000334288
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999668150
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999997562
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     8.828706317884
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     8.939415250956
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     3.999703598846
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     3.999995850822
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.000300541637
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     1.060585486452
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     1.171292953404
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     0.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     6.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     6.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     6.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>    12.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>    12.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>    12.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>    12.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -3845.20649     1  1  s    1.00000
    2.1     2.00000  -712.75581     1  2  s    1.00000
    3.1     2.00000  -179.76555     1  3  s    1.00000
    4.1     2.00000  -118.10266     1  1  d2-  0.99999
    5.1     2.00000  -118.10266     1  1  d2+  1.00000
    6.1     2.00000  -118.10266     1  1  d0   0.99999
    7.1     2.00000  -118.10266     1  1  d1+  0.99981
    8.1     2.00000  -118.10266     1  1  d1-  0.99981
    9.1     2.00000   -45.71845     1  4  s    1.00004
   10.1     2.00000   -23.67370     1  2  d0   1.00000
   11.1     2.00000   -23.67370     1  2  d2+  1.00000
   12.1     2.00000   -23.67370     1  2  d2-  1.00000
   13.1     2.00000   -23.67370     1  2  d1-  1.00000
   14.1     2.00000   -23.67370     1  2  d1+  1.00000
   15.1     2.00000   -10.01312     1  5  s    0.99839
   16.1     2.00000    -2.99317     1  3  d2+  1.00103
   17.1     2.00000    -2.99317     1  3  d2-  1.00103
   18.1     2.00000    -2.99317     1  3  d1-  1.00106
   19.1     2.00000    -2.99317     1  3  d1+  1.00106
   20.1     2.00000    -2.99317     1  3  d0   1.00107
   21.1     2.00000    -1.61963     1  6  s    0.98599
   22.1     0.46199    -0.04980     1  7  s    1.10404
   23.1     0.24283     0.04699     1  4  d2-  0.94397
   24.1     0.24283     0.04699     1  4  d2+  0.94397
   25.1     0.24283     0.04699     1  4  d1-  0.94397
   26.1     0.24283     0.04699     1  4  d1+  0.94397
   27.1     0.24283     0.04699     1  4  d0   0.94397
   28.1     0.07207     0.02918     1  7  s    1.04269    1 12  s    1.47319
    1.2     2.00000  -604.13010     1  1  pz   1.00000
    2.2     2.00000  -604.13010     1  1  py   0.99999
    3.2     2.00000  -604.13010     1  1  px   0.99999
    4.2     2.00000  -148.71852     1  2  px   1.00000
    5.2     2.00000  -148.71852     1  2  py   1.00000
    6.2     2.00000  -148.71852     1  2  pz   1.00000
    7.2     2.00000   -35.35678     1  3  py   0.99997
    8.2     2.00000   -35.35678     1  3  px   0.99997
    9.2     2.00000   -35.35678     1  3  pz   0.99999
   10.2     2.00000   -11.20062     1  1  f0   1.00000
   11.2     2.00000   -11.20062     1  1  f3+  1.00000
   12.2     2.00000   -11.20062     1  1  f3-  1.00000
   13.2     2.00000   -11.20062     1  1  f2+  0.99999
   14.2     2.00000   -11.20062     1  1  f2-  0.99999
   15.2     2.00000   -11.20062     1  1  f1+  0.99999
   16.2     2.00000   -11.20062     1  1  f1-  0.99999
   17.2     2.00000    -6.80443     1  4  pz   1.00027
   18.2     2.00000    -6.80443     1  4  py   1.00027
   19.2     2.00000    -6.80443     1  4  px   1.00027
   20.2     2.00000    -0.80853     1  5  py   0.99518
   21.2     2.00000    -0.80853     1  5  pz   0.99518
   22.2     2.00000    -0.80853     1  5  px   0.99518
   23.2     0.08393     0.03977     1  6  pz  -0.96836
   24.2     0.08393     0.03977     1  6  py  -0.96836
   25.2     0.08393     0.03977     1  6  px  -0.96836
 *** IN SYMMETRY  1 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.477D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.295D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.475D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.194D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.193D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.164D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.151D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.128D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.529D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.100D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.852D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.852D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.236D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.236D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.754D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.233D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.233D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.889D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.889D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.324D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.324D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.130D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.130D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.579D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.579D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.106D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.106D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.184D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.184D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.326D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  55 SYMMETRY CONTAMINATION OF 0.326D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 2 4 6 1 2   5 3 6 4 1 5 3 6 4 2   1 1 3 5 6 4 2 1 2 5   3 6 4 1 6 4 2 3 5 1
                                        2 3 5 6 4 1 6 4 3 5   2 6 4 3 5 2 1
 *** IN SYMMETRY  2 ORBITAL   2 SYMMETRY CONTAMINATION OF 0.476D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   3 SYMMETRY CONTAMINATION OF 0.476D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.155D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.155D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.526D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.526D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.917D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.140D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.140D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.512D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.512D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.365D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.365D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.227D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.227D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.106D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.106D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.130D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.130D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.523D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.523D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.238D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.125D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.123D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.388D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.416D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.147D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.190D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.196D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.102D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.147D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.146D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.201D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.201D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 2 1 3 6   7 910 8 4 5 3 2 1 2   3 1 3 2 1 2 1 3 2 1   3 6 5 4 810 7 9 2 1
                                        3 7 9 5 4 6 810 6 8  10 5 4 7 9 2 1 3 6 8  10 7 9 5 4 2 1 3
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                1               2               3               4               5               6               7
 2000000 000      0.96616608     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.03063637
 b00000a 000      0.01160347      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.66967833
 a00000b 000     -0.01160347     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.66967833
 ab00000 000     -0.00000000      0.00044062      0.00007934     -0.00036204      0.64569298      0.00042966      0.00000000
 ba00000 000      0.00000000     -0.00044062     -0.00007934      0.00036204     -0.64569298     -0.00042966     -0.00000000
 a000b00 000      0.00000000     -0.00082242      0.64569273      0.00034749     -0.00007847     -0.00017024     -0.00000000
 b000a00 000     -0.00000000      0.00082242     -0.64569273     -0.00034749      0.00007847      0.00017024      0.00000000
 a00b000 000      0.00000000      0.64569269      0.00082243     -0.00007633     -0.00044081      0.00006854     -0.00000000
 b00a000 000     -0.00000000     -0.64569269     -0.00082243      0.00007633      0.00044081     -0.00006854      0.00000000
 a0b0000 000      0.00000000     -0.00006739      0.00016266      0.01376029     -0.00042182      0.64554658     -0.00000000
 b0a0000 000     -0.00000000      0.00006739     -0.00016266     -0.01376029      0.00042182     -0.64554658      0.00000000
 a0000b0 000      0.00000000      0.00007847     -0.00035089      0.64554654      0.00037110     -0.01375995      0.00000000
 b0000a0 000     -0.00000000     -0.00007847      0.00035089     -0.64554654     -0.00037110      0.01375995     -0.00000000
 0b000a0 000     -0.00000000      0.00007818      0.00001408     -0.00006424      0.11456948      0.00007624     -0.00000000
 0a000b0 000      0.00000000     -0.00007818     -0.00001408      0.00006424     -0.11456948     -0.00007624      0.00000000
 0200000 000     -0.05026114     -0.00001392      0.00006226     -0.11454350     -0.00006585      0.00244152     -0.10539743
 0020000 000     -0.05026114     -0.00001392      0.00006226     -0.11454350     -0.00006585      0.00244152     -0.10539743
 0000020 000     -0.05026114      0.00001392     -0.00006226      0.11454350      0.00006585     -0.00244152     -0.10539742
 00b00a0 000     -0.00000000     -0.00001196      0.00002886      0.00244158     -0.00007485      0.11454351      0.00000000
 00a00b0 000      0.00000000      0.00001196     -0.00002886     -0.00244158      0.00007485     -0.11454351     -0.00000000
 0000000 200     -0.13329916      0.00003411     -0.00015254      0.28062160      0.00016132     -0.00598151      0.09519014
 0002000 000     -0.05026114      0.00001732     -0.00005613      0.05515728      0.00009774     -0.10041835     -0.10539743
 000ba00 000      0.00000000     -0.00006771     -0.00001219      0.00005563     -0.09922008     -0.00006602      0.00000000
 000ab00 000     -0.00000000      0.00006771      0.00001219     -0.00005563      0.09922008      0.00006602     -0.00000000
 0b0a000 000      0.00000000      0.00012638     -0.09922005     -0.00005340      0.00001206      0.00002616      0.00000000
 0a0b000 000     -0.00000000     -0.00012638      0.09922005      0.00005340     -0.00001206     -0.00002616     -0.00000000
 00a0b00 000     -0.00000000     -0.00012638      0.09922005      0.00005340     -0.00001206     -0.00002616     -0.00000000
 00b0a00 000      0.00000000      0.00012638     -0.09922005     -0.00005340      0.00001206      0.00002616      0.00000000
 0a00b00 000      0.00000000      0.09922004      0.00012638     -0.00001173     -0.00006774      0.00001053      0.00000000
 0b00a00 000     -0.00000000     -0.09922004     -0.00012638      0.00001173      0.00006774     -0.00001053     -0.00000000
 00ba000 000      0.00000000      0.09922004      0.00012638     -0.00001173     -0.00006774      0.00001053     -0.00000000
 00ab000 000     -0.00000000     -0.09922004     -0.00012638      0.00001173      0.00006774     -0.00001053      0.00000000
 0000200 000     -0.05026114     -0.00000339     -0.00000614      0.05938622     -0.00003190      0.09797683     -0.10539742
 0000000 002     -0.13329916     -0.00004243      0.00013750     -0.13513054     -0.00023946      0.24601620      0.09519014
 0000000 0ba      0.00000000     -0.00016588     -0.00002987      0.00013629     -0.24308057     -0.00016175     -0.00000000
 0000000 0ab     -0.00000000      0.00016588      0.00002987     -0.00013629      0.24308057      0.00016175      0.00000000
 0000000 b0a     -0.00000000      0.00030961     -0.24308047     -0.00013082      0.00002954      0.00006409      0.00000000
 0000000 a0b      0.00000000     -0.00030961      0.24308047      0.00013082     -0.00002954     -0.00006409     -0.00000000
 0000000 ba0     -0.00000000     -0.24308046     -0.00030961      0.00002874      0.00016595     -0.00002580      0.00000000
 0000000 ab0      0.00000000      0.24308046      0.00030961     -0.00002874     -0.00016595      0.00002580     -0.00000000
 0000000 020     -0.13329916      0.00000831      0.00001503     -0.14549107      0.00007814     -0.24003470      0.09519014
 0000ba0 000     -0.00000000      0.00007296     -0.05728472     -0.00003083      0.00000696      0.00001510      0.00000000
 0000ab0 000      0.00000000     -0.00007296      0.05728472      0.00003083     -0.00000696     -0.00001510     -0.00000000
 000a0b0 000      0.00000000      0.05728472      0.00007296     -0.00000677     -0.00003911      0.00000608     -0.00000000
 000b0a0 000     -0.00000000     -0.05728472     -0.00007296      0.00000677      0.00003911     -0.00000608      0.00000000
 0000002 000     -0.01780195     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.13927206
 0b0000a 000     -0.00000000      0.00002180      0.00000393     -0.00001792      0.03195319      0.00002126      0.00000000
 0a0000b 000      0.00000000     -0.00002180     -0.00000393      0.00001792     -0.03195319     -0.00002126     -0.00000000
 0000a0b 000     -0.00000000      0.00004070     -0.03195318     -0.00001720      0.00000388      0.00000842      0.00000000
 0000b0a 000      0.00000000     -0.00004070      0.03195318      0.00001720     -0.00000388     -0.00000842     -0.00000000
 000b00a 000      0.00000000      0.03195318      0.00004070     -0.00000378     -0.00002181      0.00000339     -0.00000000
 000a00b 000     -0.00000000     -0.03195318     -0.00004070      0.00000378      0.00002181     -0.00000339      0.00000000
 00000ba 000      0.00000000      0.00000388     -0.00001736      0.03194595      0.00001836     -0.00068093     -0.00000000
 00000ab 000     -0.00000000     -0.00000388      0.00001736     -0.03194595     -0.00001836      0.00068093      0.00000000
 00b000a 000     -0.00000000     -0.00000334      0.00000805      0.00068095     -0.00002087      0.03194595      0.00000000
 00a000b 000      0.00000000      0.00000334     -0.00000805     -0.00068095      0.00002087     -0.03194595     -0.00000000
 
 Energy:     -24984.79210113 -24984.71104454 -24984.71104454 -24984.71104454 -24984.71104454 -24984.71104454 -24984.66990114

 State:                8               9              10              11              12
 2000000 000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 b00000a 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a00000b 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 ab00000 000      0.00000030      0.00000277     -0.00619287      0.00000197      0.00000044
 ba00000 000     -0.00000030     -0.00000277      0.00619287     -0.00000197     -0.00000044
 a000b00 000      0.00000076      0.00000032      0.00000044      0.00000839      0.00619287
 b000a00 000     -0.00000076     -0.00000032     -0.00000044     -0.00000839     -0.00619287
 a00b000 000     -0.00000001      0.00000022     -0.00000197     -0.00619287      0.00000839
 b00a000 000      0.00000001     -0.00000022      0.00000197      0.00619287     -0.00000839
 a0b0000 000     -0.00006787     -0.00619250     -0.00000278     -0.00000022      0.00000033
 b0a0000 000      0.00006787      0.00619250      0.00000278      0.00000022     -0.00000033
 a0000b0 000     -0.00619250      0.00006787     -0.00000027      0.00000001      0.00000076
 b0000a0 000      0.00619250     -0.00006787      0.00000027     -0.00000001     -0.00000076
 0b000a0 000      0.00002147      0.00020081     -0.44849618      0.00014293      0.00003189
 0a000b0 000     -0.00002147     -0.00020081      0.44849618     -0.00014293     -0.00003189
 0200000 000      0.44846931     -0.00491534      0.00001927     -0.00000105     -0.00005496
 0020000 000      0.44846931     -0.00491534      0.00001927     -0.00000105     -0.00005496
 0000020 000     -0.44846931      0.00491534     -0.00001927      0.00000105      0.00005496
 00b00a0 000     -0.00491533     -0.44846927     -0.00020104     -0.00001599      0.00002364
 00a00b0 000      0.00491533      0.44846927      0.00020104      0.00001599     -0.00002364
 0000000 200      0.43333216     -0.00474943      0.00001862     -0.00000101     -0.00005311
 0002000 000     -0.21997786      0.39084345      0.00016447      0.00001437      0.00000701
 000ba00 000     -0.00001860     -0.00017391      0.38840909     -0.00012378     -0.00002762
 000ab00 000      0.00001860      0.00017391     -0.38840909      0.00012378      0.00002762
 0b0a000 000     -0.00004782     -0.00001992     -0.00002780     -0.00052601     -0.38840879
 0a0b000 000      0.00004782      0.00001992      0.00002780      0.00052601      0.38840879
 00a0b00 000      0.00004782      0.00001992      0.00002780      0.00052601      0.38840879
 00b0a00 000     -0.00004782     -0.00001992     -0.00002780     -0.00052601     -0.38840879
 0a00b00 000     -0.00000069      0.00001394     -0.00012374     -0.38840877      0.00052602
 0b00a00 000      0.00000069     -0.00001394      0.00012374      0.38840877     -0.00052602
 00ba000 000     -0.00000069      0.00001394     -0.00012374     -0.38840877      0.00052602
 00ab000 000      0.00000069     -0.00001394      0.00012374      0.38840877     -0.00052602
 0000200 000     -0.22849146     -0.38592811     -0.00018374     -0.00001332      0.00004795
 0000000 002     -0.21255296      0.37765134      0.00015892      0.00001389      0.00000677
 0000000 0ba      0.00001797      0.00016804     -0.37529914      0.00011960      0.00002669
 0000000 0ab     -0.00001797     -0.00016804      0.37529914     -0.00011960     -0.00002669
 0000000 b0a      0.00004620      0.00001924      0.00002686      0.00050825      0.37529885
 0000000 a0b     -0.00004620     -0.00001924     -0.00002686     -0.00050825     -0.37529885
 0000000 ba0     -0.00000066      0.00001347     -0.00011956     -0.37529884      0.00050826
 0000000 ab0      0.00000066     -0.00001347      0.00011956      0.37529884     -0.00050826
 0000000 020     -0.22077920     -0.37290190     -0.00017754     -0.00001287      0.00004633
 0000ba0 000     -0.00002761     -0.00001150     -0.00001605     -0.00030369     -0.22424792
 0000ab0 000      0.00002761      0.00001150      0.00001605      0.00030369      0.22424792
 000a0b0 000     -0.00000040      0.00000805     -0.00007144     -0.22424791      0.00030370
 000b0a0 000      0.00000040     -0.00000805      0.00007144      0.22424791     -0.00030370
 0000002 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 0b0000a 000     -0.00000403     -0.00003773      0.08427099     -0.00002686     -0.00000599
 0a0000b 000      0.00000403      0.00003773     -0.08427099      0.00002686      0.00000599
 0000a0b 000      0.00001037      0.00000432      0.00000603      0.00011413      0.08427093
 0000b0a 000     -0.00001037     -0.00000432     -0.00000603     -0.00011413     -0.08427093
 000b00a 000      0.00000015     -0.00000302      0.00002685      0.08427093     -0.00011413
 000a00b 000     -0.00000015      0.00000302     -0.00002685     -0.08427093      0.00011413
 00000ba 000      0.08426594     -0.00092358      0.00000362     -0.00000020     -0.00001033
 00000ab 000     -0.08426594      0.00092358     -0.00000362      0.00000020      0.00001033
 00b000a 000      0.00092357      0.08426594      0.00003777      0.00000300     -0.00000444
 00a000b 000     -0.00092357     -0.08426594     -0.00003777     -0.00000300      0.00000444
 
 Energy:     -24984.65022252 -24984.65022252 -24984.65022252 -24984.65022252 -24984.65022252
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      1.00000000      0.00000000
 a000a00 000      0.00000076      0.00017414     -0.00061306      0.99999939      0.00011650     -0.00000000      0.00000000
 a00a000 000      0.00029125     -0.00005724      0.99999937      0.00061307     -0.00001479     -0.00000000     -0.00000000
 a0000a0 000     -0.00009143     -0.00217977      0.00001476     -0.00011612      0.99999722      0.00000000      0.00000000
 aa00000 000      0.99999719      0.00217393     -0.00029112     -0.00000133      0.00009617      0.00000000      0.00000000
 00a00a0 000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a0a0000 000     -0.00217412      0.99999485      0.00005801     -0.00017435      0.00217954      0.00000000     -0.00000000
 0a000a0 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 000aa00 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.32193367
 0a0a000 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00001542
 0a00a00 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00018549
 0000000 0aa     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.69411326
 0000000 a0a     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00003325
 0000000 aa0     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00039992
 00aa000 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00018549
 00a0a00 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00001542
 0aa0000 000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.64386735
 000a0a0 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00032127
 0000aa0 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00002671
 
 Energy:     -24984.72068445 -24984.72068445 -24984.72068445 -24984.72068445 -24984.72068445 -24984.67747741 -24984.65352489

 State:                8               9              10              11              12              13              14
 a00000a 000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a000a00 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 a00a000 000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a0000a0 000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 aa00000 000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 00a00a0 000     -0.00000000      0.00000000      0.00005358      0.00001333     -0.00222946      0.99999693      0.00104181
 a0a0000 000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 0a000a0 000      0.00000000      0.00000000      0.00001761     -0.00013267      0.99996039      0.00223836     -0.00860501
 000aa00 000     -0.00018546      0.00001568      0.00003949      0.00013651      0.00769875     -0.00091465      0.89439352
 0a0a000 000      0.00045260      0.32193341      0.77963994      0.00149217     -0.00001008     -0.00016991     -0.00004479
 0a00a00 000      0.32193336     -0.00045259     -0.00152960      0.75208658     -0.00007729      0.00000755      0.00005973
 0000000 0aa      0.00039987     -0.00003382     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0000000 a0a      0.00097584      0.69411269     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 0000000 aa0      0.69411258     -0.00097582     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 00aa000 000     -0.32193336      0.00045259     -0.00138151      0.65675892      0.00030722     -0.00003002     -0.00032083
 00a0a00 000      0.00045260      0.32193341     -0.61934876     -0.00144777      0.00001623     -0.00015541      0.00001249
 0aa0000 000     -0.00037093      0.00003137     -0.00001974     -0.00006826     -0.00384937      0.00045733     -0.44719676
 000a0a0 000      0.55760492     -0.00078391      0.00008550     -0.05503745      0.00022200     -0.00002169     -0.00021972
 0000aa0 000      0.00078392      0.55760501     -0.09254416     -0.00002563     -0.00000355      0.00018782      0.00001864
 
 Energy:     -24984.65352489 -24984.65352489 -24984.64770488 -24984.64770488 -24984.64770488 -24984.64770488 -24984.64770488

 State:               15              16
 a00000a 000     -0.00000000      0.00000000
 a000a00 000     -0.00000000     -0.00000000
 a00a000 000      0.00000000     -0.00000000
 a0000a0 000     -0.00000000      0.00000000
 aa00000 000     -0.00000000      0.00000000
 00a00a0 000      0.00003732      0.00029225
 a0a0000 000      0.00000000      0.00000000
 0a000a0 000     -0.00036686     -0.00000713
 000aa00 000      0.00032112      0.00001985
 0a0a000 000      0.00089991      0.43835887
 0a00a00 000     -0.48410958      0.00115419
 0000000 0aa     -0.00000000     -0.00000000
 0000000 a0a     -0.00000000     -0.00000001
 0000000 aa0      0.00000001     -0.00000000
 00aa000 000      0.60717753     -0.00102505
 00a0a00 000      0.00124619      0.64529330
 0aa0000 000     -0.00016056     -0.00000993
 000a0a0 000      0.63005491     -0.00125818
 0000aa0 000     -0.00123905     -0.62564687
 
 Energy:     -24984.64770488 -24984.64770488
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        5.45       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        22.85      8.59      0.14     13.95
 REAL TIME  *        30.30 SEC
 DISK USED  *       164.24 MB (local),        1.03 GB (total)
 SF USED    *       307.60 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -24984.79210    0.0
    -24984.71104    6.0
    -24984.71104    6.0
    -24984.71104    6.0
    -24984.71104    6.0
    -24984.71104    6.0
    -24984.66990    0.0
    -24984.65022    6.0
    -24984.65022    6.0
    -24984.65022    6.0
    -24984.65022    6.0
    -24984.65022    6.0
    -24984.72068    6.0
    -24984.72068    6.0
    -24984.72068    6.0
    -24984.72068    6.0
    -24984.72068    6.0
    -24984.67748    0.0
    -24984.65352    2.0
    -24984.65352    2.0
    -24984.65352    2.0
    -24984.64770   12.0
    -24984.64770   12.0
    -24984.64770   12.0
    -24984.64770   12.0
    -24984.64770   12.0
    -24984.64770   12.0
    -24984.64770   12.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 88
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:    29620 conf    75790 CSFs
 N-1 el internal:     9955 conf    31960 CSFs
 N-2 el internal:     1621 conf     5743 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          34 (  15  19 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      72 (  29  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.13 sec, npass=  1  Memory used:   1.80 MW


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -24984.79210113
     2    -24984.71104454
     3    -24984.71104454
     4    -24984.71104454
     5    -24984.71104454
     6    -24984.71104454
     7    -24984.66990114
     8    -24984.65022252
     9    -24984.65022252
    10    -24984.65022252
    11    -24984.65022252
    12    -24984.65022252

 Number of blocks in overlap matrix:  1099   Smallest eigenvalue:  0.77D+00
 Number of N-2 electron functions:    1153
 Number of N-1 electron functions:   31960

 Number of internal configurations:                38116
 Number of singly external configurations:       1148936
 Number of doubly external configurations:       1504729
 Total number of contracted configurations:      2691781
 Total number of uncontracted configurations:    8644507

 Diagonal Coupling coefficients finished.               Storage:24934866 words, CPU-Time:     44.31 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1100569 words, CPU-time:      0.16 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24984.79210113     0.00000000    -0.36436918  0.37D-01  0.62D-01    55.23
    1     2     2     1.00000000     0.00000000-24984.71104454     0.00000000    -0.36636937  0.42D-01  0.66D-01    55.23
    1     3     3     1.00000000     0.00000000-24984.71104454     0.00000000    -0.36639361  0.42D-01  0.66D-01    55.23
    1     4     4     1.00000000     0.00000000-24984.71104454     0.00000000    -0.36614813  0.42D-01  0.66D-01    55.23
    1     5     5     1.00000000     0.00000000-24984.71104454    -0.00000000    -0.36626782  0.42D-01  0.66D-01    55.23
    1     6     6     1.00000000     0.00000000-24984.71104454    -0.00000000    -0.36621804  0.42D-01  0.66D-01    55.23
    1     7     7     1.00000000     0.00000000-24984.66990114     0.00000000    -0.35998336  0.44D-01  0.62D-01    55.23
    1     8     8     1.00000000     0.00000000-24984.65022252    -0.00000000    -0.36143783  0.34D-01  0.69D-01    55.23
    1     9     9     1.00000000     0.00000000-24984.65022252    -0.00000000    -0.36172307  0.35D-01  0.70D-01    55.23
    1    10    10     1.00000000     0.00000000-24984.65022252     0.00000000    -0.36201076  0.35D-01  0.70D-01    55.23
    1    11    11     1.00000000     0.00000000-24984.65022252     0.00000000    -0.36207081  0.35D-01  0.70D-01    55.23
    1    12    12     1.00000000     0.00000000-24984.65022252     0.00000000    -0.36206284  0.35D-01  0.70D-01    55.23
    2     1     1     1.07077713    -0.31848005-24985.11058119    -0.31848005    -0.00667866  0.18D-02  0.79D-03   320.36
    2     2     2     1.07597510    -0.31600005-24985.02704459    -0.31600005    -0.00644100  0.18D-02  0.89D-03   320.36
    2     3     3     1.07604495    -0.31598335-24985.02702789    -0.31598335    -0.00646606  0.18D-02  0.90D-03   320.36
    2     4     4     1.07612292    -0.31597098-24985.02701551    -0.31597098    -0.00648329  0.18D-02  0.90D-03   320.36
    2     5     5     1.07618104    -0.31594876-24985.02699330    -0.31594876    -0.00650759  0.18D-02  0.91D-03   320.36
    2     6     6     1.07617950    -0.31594789-24985.02699242    -0.31594789    -0.00650841  0.18D-02  0.90D-03   320.36
    2     7     7     1.07437125    -0.31466854-24984.98456968    -0.31466854    -0.00664333  0.23D-02  0.83D-03   320.36
    2     8     8     1.07377106    -0.31236250-24984.96258502    -0.31236250    -0.00602573  0.15D-02  0.94D-03   320.36
    2     9     9     1.07388364    -0.31228485-24984.96250737    -0.31228485    -0.00612469  0.16D-02  0.96D-03   320.36
    2    10    10     1.07396874    -0.31222553-24984.96244805    -0.31222553    -0.00620124  0.17D-02  0.97D-03   320.36
    2    11    11     1.07398140    -0.31221433-24984.96243685    -0.31221433    -0.00621759  0.17D-02  0.97D-03   320.36
    2    12    12     1.07398635    -0.31221143-24984.96243395    -0.31221143    -0.00622117  0.17D-02  0.98D-03   320.36
    3     1     1     1.07129446    -0.32512821-24985.11722934    -0.00664816    -0.00018380  0.43D-04  0.28D-04   585.71
    3     2     2     1.07505717    -0.32241060-24985.03345514    -0.00641055    -0.00016256  0.35D-04  0.29D-04   585.71
    3     3     3     1.07507347    -0.32240917-24985.03345371    -0.00642583    -0.00016437  0.35D-04  0.30D-04   585.71
    3     4     4     1.07508405    -0.32240857-24985.03345311    -0.00643759    -0.00016529  0.35D-04  0.30D-04   585.71
    3     5     5     1.07508501    -0.32240811-24985.03345265    -0.00645934    -0.00016569  0.36D-04  0.30D-04   585.71
    3     6     6     1.07508518    -0.32240795-24985.03345249    -0.00646006    -0.00016588  0.36D-04  0.30D-04   585.71
    3     7     7     1.07276574    -0.32122960-24984.99113074    -0.00656106    -0.00019303  0.48D-04  0.34D-04   585.71
    3     8     8     1.07296639    -0.31835983-24984.96858235    -0.00599733    -0.00015341  0.31D-04  0.32D-04   585.71
    3     9     9     1.07296361    -0.31835548-24984.96857799    -0.00607062    -0.00015867  0.32D-04  0.33D-04   585.71
    3    10    10     1.07296138    -0.31835310-24984.96857562    -0.00612757    -0.00016173  0.32D-04  0.34D-04   585.71
    3    11    11     1.07296089    -0.31835269-24984.96857521    -0.00613836    -0.00016229  0.32D-04  0.34D-04   585.71
    3    12    12     1.07296076    -0.31835251-24984.96857503    -0.00614108    -0.00016251  0.32D-04  0.34D-04   585.71
    4     1     1     1.07224955    -0.32532027-24985.11742140    -0.00019206    -0.00000915  0.51D-05  0.92D-06   842.40
    4     2     2     1.07595118    -0.32258215-24985.03362668    -0.00017155    -0.00000804  0.57D-05  0.80D-06   842.40
    4     3     3     1.07595229    -0.32258213-24985.03362667    -0.00017295    -0.00000806  0.56D-05  0.81D-06   842.40
    4     4     4     1.07595514    -0.32258212-24985.03362666    -0.00017355    -0.00000810  0.56D-05  0.82D-06   842.40
    4     5     5     1.07595505    -0.32258210-24985.03362664    -0.00017399    -0.00000811  0.57D-05  0.82D-06   842.40
    4     6     6     1.07595518    -0.32258209-24985.03362662    -0.00017414    -0.00000812  0.57D-05  0.83D-06   842.40
    4     7     7     1.07354235    -0.32142835-24984.99132949    -0.00019875    -0.00000966  0.61D-05  0.11D-05   842.40
    4     8     8     1.07380711    -0.31851779-24984.96874031    -0.00015795    -0.00000736  0.50D-05  0.85D-06   842.40
    4     9     9     1.07380707    -0.31851778-24984.96874030    -0.00016231    -0.00000737  0.50D-05  0.86D-06   842.40
    4    10    10     1.07380704    -0.31851774-24984.96874026    -0.00016464    -0.00000740  0.51D-05  0.86D-06   842.40
    4    11    11     1.07381044    -0.31851761-24984.96874012    -0.00016492    -0.00000742  0.51D-05  0.85D-06   842.40
    4    12    12     1.07381458    -0.31851757-24984.96874009    -0.00016506    -0.00000738  0.51D-05  0.83D-06   842.40
    5     1     1     1.07243748    -0.32533110-24985.11743223    -0.00001083    -0.00000052  0.20D-06  0.68D-07  1091.27
    5     2     2     1.07608726    -0.32259205-24985.03363659    -0.00000990    -0.00000059  0.26D-06  0.77D-07  1091.27
    5     3     3     1.07608775    -0.32259204-24985.03363658    -0.00000991    -0.00000059  0.27D-06  0.76D-07  1091.27
    5     4     4     1.07608809    -0.32259203-24985.03363657    -0.00000992    -0.00000060  0.28D-06  0.77D-07  1091.27
    5     5     5     1.07608803    -0.32259203-24985.03363657    -0.00000993    -0.00000060  0.28D-06  0.77D-07  1091.27
    5     6     6     1.07608804    -0.32259203-24985.03363657    -0.00000994    -0.00000060  0.28D-06  0.77D-07  1091.27
    5     7     7     1.07359883    -0.32143984-24984.99134098    -0.00001149    -0.00000066  0.34D-06  0.87D-07  1091.27
    5     8     8     1.07389235    -0.31852632-24984.96874883    -0.00000853    -0.00000052  0.26D-06  0.72D-07  1091.27
    5     9     9     1.07389243    -0.31852632-24984.96874883    -0.00000853    -0.00000052  0.27D-06  0.72D-07  1091.27
    5    10    10     1.07389238    -0.31852631-24984.96874883    -0.00000857    -0.00000052  0.27D-06  0.72D-07  1091.27
    5    11    11     1.07389242    -0.31852628-24984.96874880    -0.00000868    -0.00000054  0.28D-06  0.74D-07  1091.27
    5    12    12     1.07389217    -0.31852627-24984.96874878    -0.00000870    -0.00000056  0.28D-06  0.76D-07  1091.27
    6     1     1     1.07245497    -0.32533168-24985.11743281    -0.00000058    -0.00000003  0.77D-08  0.46D-08  1339.51
    6     2     2     1.07610862    -0.32259275-24985.03363729    -0.00000070    -0.00000004  0.19D-07  0.64D-08  1339.51
    6     3     3     1.07610851    -0.32259275-24985.03363729    -0.00000071    -0.00000004  0.19D-07  0.66D-08  1339.51
    6     4     4     1.07610838    -0.32259275-24985.03363729    -0.00000072    -0.00000005  0.20D-07  0.68D-08  1339.51
    6     5     5     1.07610825    -0.32259275-24985.03363729    -0.00000072    -0.00000005  0.20D-07  0.68D-08  1339.51
    6     6     6     1.07610822    -0.32259275-24985.03363729    -0.00000072    -0.00000005  0.20D-07  0.68D-08  1339.51
    6     7     7     1.07359774    -0.32144060-24984.99134174    -0.00000076    -0.00000004  0.15D-07  0.88D-08  1339.51
    6     8     8     1.07389574    -0.31852690-24984.96874942    -0.00000059    -0.00000003  0.94D-08  0.72D-08  1339.51
    6     9     9     1.07389574    -0.31852690-24984.96874942    -0.00000059    -0.00000003  0.94D-08  0.73D-08  1339.51
    6    10    10     1.07389572    -0.31852690-24984.96874942    -0.00000059    -0.00000003  0.94D-08  0.73D-08  1339.51
    6    11    11     1.07389550    -0.31852690-24984.96874942    -0.00000062    -0.00000004  0.10D-07  0.76D-08  1339.51
    6    12    12     1.07389543    -0.31852690-24984.96874942    -0.00000063    -0.00000004  0.10D-07  0.79D-08  1339.51
    7     1     1     1.07246570    -0.32533171-24985.11743284    -0.00000003    -0.00000000  0.73D-09  0.21D-09  1588.56
    7     2     2     1.07612316    -0.32259280-24985.03363734    -0.00000005    -0.00000000  0.20D-08  0.44D-09  1588.56
    7     3     3     1.07612316    -0.32259280-24985.03363734    -0.00000005    -0.00000000  0.20D-08  0.45D-09  1588.56
    7     4     4     1.07612310    -0.32259280-24985.03363734    -0.00000005    -0.00000000  0.21D-08  0.46D-09  1588.56
    7     5     5     1.07612309    -0.32259280-24985.03363734    -0.00000005    -0.00000000  0.21D-08  0.46D-09  1588.56
    7     6     6     1.07612307    -0.32259280-24985.03363734    -0.00000005    -0.00000000  0.21D-08  0.46D-09  1588.56
    7     7     7     1.07360615    -0.32144065-24984.99134179    -0.00000005    -0.00000000  0.24D-08  0.65D-09  1588.56
    7     8     8     1.07390360    -0.31852694-24984.96874946    -0.00000004    -0.00000000  0.13D-08  0.38D-09  1588.56
    7     9     9     1.07390359    -0.31852694-24984.96874946    -0.00000004    -0.00000000  0.13D-08  0.39D-09  1588.56
    7    10    10     1.07390357    -0.31852694-24984.96874946    -0.00000004    -0.00000000  0.13D-08  0.39D-09  1588.56
    7    11    11     1.07390364    -0.31852694-24984.96874946    -0.00000004    -0.00000000  0.14D-08  0.41D-09  1588.56
    7    12    12     1.07390371    -0.31852694-24984.96874946    -0.00000004    -0.00000000  0.14D-08  0.41D-09  1588.56


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   9.0%
 S   1.7%  37.0%
 P   0.7%  26.9%  13.3%

 Initialization:   2.8%
 Other:            8.6%

 Total CPU:     1588.6 seconds
 =====================================



 gnormi=  0.93243075  gnorms=  0.02250492  gnormp=  0.04506433  gnorm=  1.00000000
 ecorri= -0.30334929  ecorrs= -0.00732213  ecorrp= -0.01466028  ecorr= -0.32533171

 gnormi=  0.92926166  gnorms=  0.02363871  gnormp=  0.04709962  gnorm=  1.00000000
 ecorri= -0.29977312  ecorrs= -0.00762612  ecorrp= -0.01519356  ecorr= -0.32259280

 gnormi=  0.92926167  gnorms=  0.02363870  gnormp=  0.04709964  gnorm=  1.00000000
 ecorri= -0.29977312  ecorrs= -0.00762615  ecorrp= -0.01519353  ecorr= -0.32259280

 gnormi=  0.92926171  gnorms=  0.02363864  gnormp=  0.04709965  gnorm=  1.00000000
 ecorri= -0.29977314  ecorrs= -0.00762616  ecorrp= -0.01519350  ecorr= -0.32259280

 gnormi=  0.92926173  gnorms=  0.02363862  gnormp=  0.04709966  gnorm=  1.00000000
 ecorri= -0.29977314  ecorrs= -0.00762617  ecorrp= -0.01519348  ecorr= -0.32259280

 gnormi=  0.92926174  gnorms=  0.02363861  gnormp=  0.04709965  gnorm=  1.00000000
 ecorri= -0.29977315  ecorrs= -0.00762617  ecorrp= -0.01519348  ecorr= -0.32259280

 gnormi=  0.93144027  gnorms=  0.02363869  gnormp=  0.04492104  gnorm=  1.00000000
 ecorri= -0.29940276  ecorrs= -0.00759868  ecorrp= -0.01443920  ecorr= -0.32144065

 gnormi=  0.93118228  gnorms=  0.01985630  gnormp=  0.04896142  gnorm=  1.00000000
 ecorri= -0.29660664  ecorrs= -0.00632531  ecorrp= -0.01559498  ecorr= -0.31852694

 gnormi=  0.93118228  gnorms=  0.01985629  gnormp=  0.04896143  gnorm=  1.00000000
 ecorri= -0.29660664  ecorrs= -0.00632531  ecorrp= -0.01559498  ecorr= -0.31852694

 gnormi=  0.93118230  gnorms=  0.01985628  gnormp=  0.04896142  gnorm=  1.00000000
 ecorri= -0.29660665  ecorrs= -0.00632531  ecorrp= -0.01559498  ecorr= -0.31852694

 gnormi=  0.93118225  gnorms=  0.01985633  gnormp=  0.04896143  gnorm=  1.00000000
 ecorri= -0.29660663  ecorrs= -0.00632530  ecorrp= -0.01559501  ecorr= -0.31852694

 gnormi=  0.93118218  gnorms=  0.01985639  gnormp=  0.04896143  gnorm=  1.00000000
 ecorri= -0.29660661  ecorrs= -0.00632528  ecorrp= -0.01559505  ecorr= -0.31852694

 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222000           0.9344637   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0383042   0.0000000
                               0.0000000   0.0000000   0.0000000  -0.0000000
 222222/00000\222000           0.0470042   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.9092729  -0.0000000
                              -0.0000000  -0.0000000   0.0000000  -0.0000001
 222222/\00000222000           0.0000000   0.0000000  -0.0000000   0.8881211  -0.0000000   0.0000000  -0.0000000   0.0000000
                               0.0000000   0.0434434   0.0000000   0.0000000
 222222/00\000222000          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.8881211   0.0000000   0.0000000
                              -0.0434434  -0.0000000  -0.0000000   0.0000000
 222222/000\00222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8881210  -0.0000000   0.0000000  -0.0434434
                              -0.0000000   0.0000000  -0.0000000   0.0000000
 222222/0000\0222000          -0.0000000   0.8832828   0.0925770  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                              -0.0000000  -0.0000000   0.0011053  -0.0434291
 222222/0\0000222000           0.0000000  -0.0925770   0.8832828   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                              -0.0000000  -0.0000000   0.0434293   0.0011053
 2222220/000\0222000          -0.0000000   0.0000000   0.0000000  -0.1758084  -0.0000000  -0.0000000  -0.0000000   0.0000000
                               0.0000000   0.6071734   0.0000000   0.0000000
 22222200/00\0222000          -0.0000000   0.0183261  -0.1748507  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                               0.0000000   0.0000000   0.6069780   0.0154481
 22222200/\000222000           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.1522546  -0.0000000  -0.0000000
                              -0.5258278  -0.0000000   0.0000000   0.0000000
 222222000/\00222000           0.0000000  -0.0000000  -0.0000000   0.1522546   0.0000000   0.0000000   0.0000000  -0.0000000
                              -0.0000000  -0.5258278   0.0000000  -0.0000000
 22222200/0\00222000          -0.0000000   0.0000000   0.0000000   0.0000000   0.1522546  -0.0000000   0.0000000   0.5258277
                               0.0000000  -0.0000000   0.0000000   0.0000000
 2222220/0\000222000          -0.0000000   0.0000000   0.0000000   0.0000000   0.1522545  -0.0000000   0.0000000   0.5258277
                               0.0000000  -0.0000000   0.0000000   0.0000000
 2222220/00\00222000          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.1522546   0.0000000  -0.0000000
                               0.5258277   0.0000000  -0.0000000  -0.0000000
 22222200000002220/\          -0.0000000   0.0000000   0.0000000   0.2859450   0.0000000   0.0000000   0.0000000  -0.0000000
                              -0.0000000   0.5170812  -0.0000000   0.0000000
 2222220000000222/0\           0.0000000  -0.0000000   0.0000000  -0.0000000   0.2859451  -0.0000000  -0.0000000  -0.5170812
                               0.0000000  -0.0000000   0.0000000   0.0000000
 2222220000000222/\0           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.2859451   0.0000000  -0.0000000
                              -0.5170812  -0.0000000   0.0000000  -0.0000000
 2222220020000222000          -0.0519804  -0.1236381  -0.0129585   0.0000000  -0.0000000   0.0000000  -0.0941355  -0.0000000
                               0.0000000  -0.0000000   0.0109235  -0.4291975
 2222220200000222000          -0.0519804  -0.1236381  -0.0129585   0.0000000   0.0000000   0.0000000  -0.0941354   0.0000000
                               0.0000000  -0.0000000   0.0109235  -0.4291975
 2222220000020222000          -0.0519803   0.1236381   0.0129585   0.0000000  -0.0000000  -0.0000000  -0.0941354  -0.0000000
                              -0.0000000   0.0000000  -0.0109234   0.4291969
 2222220000000222200          -0.1115432   0.2322012   0.0243370  -0.0000000   0.0000000  -0.0000000   0.1017972  -0.0000000
                               0.0000000   0.0000000   0.0107418  -0.4220586
 2222220000200222000          -0.0519804   0.0505966   0.1135530   0.0000000  -0.0000000  -0.0000000  -0.0941355  -0.0000000
                              -0.0000000   0.0000000  -0.3771566   0.2051388
 2222220000000222020          -0.1115432  -0.0950241  -0.2132607  -0.0000000   0.0000000   0.0000000   0.1017972   0.0000000
                              -0.0000000   0.0000000  -0.3708842   0.2017267
 2222220002000222000          -0.0519804   0.0730415  -0.1005944  -0.0000000  -0.0000000   0.0000000  -0.0941355   0.0000000
                               0.0000000  -0.0000000   0.3662332   0.2240588
 2222220000000222002          -0.1115432  -0.1371771   0.1889237   0.0000000   0.0000000  -0.0000000   0.1017972  -0.0000000
                              -0.0000000  -0.0000000   0.3601424   0.2203320
 222222000/0\0222000           0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0879042  -0.0000000  -0.0000000
                               0.3035864  -0.0000000   0.0000000  -0.0000000
 2222220000/\0222000           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0879042   0.0000000  -0.0000000   0.3035864
                               0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220000002222000          -0.0104528   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.1507629  -0.0000000
                              -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220000/0\222000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0223478   0.0000000  -0.0000000   0.1141282
                              -0.0000000   0.0000000   0.0000000   0.0000000
 222222000/00\222000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0223478  -0.0000000  -0.0000000
                               0.1141282  -0.0000000   0.0000000  -0.0000000
 2222220/0000\222000          -0.0000000  -0.0000000  -0.0000000  -0.0223478   0.0000000   0.0000000   0.0000000   0.0000000
                              -0.0000000  -0.1141281  -0.0000000   0.0000000
 22222200000/\222000           0.0000000  -0.0222263  -0.0023295   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                               0.0000000   0.0000000  -0.0029038   0.1140916
 22222200/000\222000           0.0000000   0.0023295  -0.0222261  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                               0.0000000  -0.0000000  -0.1140915  -0.0029037

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.959931   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.067229   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 2           0.000000    0.000000   -0.000000    0.955219    0.000000   -0.097128   -0.000000    0.048164    0.005625    0.000000
            -0.000000    0.000000
 3           0.000000    0.000000    0.000000    0.097128   -0.000000    0.955219   -0.000000    0.005625   -0.048164    0.000000
             0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000   -0.000000    0.960145    0.000000    0.000000   -0.000000   -0.000000   -0.048491
            -0.000000    0.000000
 5           0.000000    0.000000    0.960145    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.048491
 6           0.000000    0.960145   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.048491   -0.000000
 7          -0.071665    0.000000    0.000000    0.000000   -0.000000    0.000000    0.959645    0.000000    0.000000    0.000000
             0.000000    0.000000
 8           0.000000    0.000000   -0.050422   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.961609
 9           0.000000   -0.050422   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.961609   -0.000000
 10          0.000000   -0.000000   -0.000000   -0.000000    0.050422   -0.000000    0.000000   -0.000000    0.000000    0.961609
             0.000000   -0.000000
 11          0.000000   -0.000000    0.000000    0.001127    0.000000    0.050410   -0.000000   -0.035833    0.960941   -0.000000
            -0.000000    0.000000
 12         -0.000000    0.000000    0.000000   -0.050410    0.000000    0.001127    0.000000    0.960941    0.035833    0.000000
             0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962279    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.002223   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 2           0.000000    0.961368    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000073   -0.000924
 3           0.000000    0.000000    0.961368    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000924   -0.000073
 4           0.000000   -0.000000    0.000000    0.961368   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000927
             0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.961368    0.000000   -0.000000   -0.000927    0.000000   -0.000000
             0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.961368    0.000000    0.000000   -0.000927   -0.000000
            -0.000000   -0.000000
 7          -0.002223    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.962315    0.000000   -0.000000    0.000000
            -0.000000    0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000   -0.000927    0.000000    0.000000    0.962929    0.000000    0.000000
            -0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000927   -0.000000    0.000000    0.962929   -0.000000
             0.000000    0.000000
 10         -0.000000    0.000000   -0.000000    0.000927   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.962929
            -0.000000   -0.000000
 11         -0.000000   -0.000073    0.000924    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.962929   -0.000000
 12         -0.000000   -0.000924   -0.000073    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.962929

 Energy contributions of internal configurations for state 2
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3216       0.00011919    -1.45921506       2222221000010222000             

 Energy contributions of internal configurations for state 3
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3282       0.00011919    -1.45921182       2222221010000222000             

 Energy contributions of internal configurations for state 4
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3316       0.00012050    -1.47524479       2222221100000222000             

 Energy contributions of internal configurations for state 5
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3232       0.00012050    -1.47524325       2222221000100222000             

 Energy contributions of internal configurations for state 6
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3254       0.00012050    -1.47524285       2222221001000222000             


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95993075 (fixed)   0.96248461 (relaxed)   0.96227947 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00696447   -0.01127896   -0.24443024
 Singles      0.02430385   -0.06362874   -0.06624119
 Pairs        0.04866654    0.00000000   -0.01466028
 Total        1.07993486   -0.07490771   -0.32533171
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.79146470
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.95584833
 One electron energy               -33998.19795907
 Two electron energy                 9013.08052623
 Virial quotient                       -0.57456923
 Correlation energy                    -0.32596815
 !MRCI STATE 1.1 Energy              -24985.1174328417    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.14348906 (Davidson, fixed reference)
 Cluster corrected energies        -24985.14333902 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.14348906 (Davidson, rotated reference)

 Cluster corrected energies        -24985.14246908 (Pople, fixed reference)
 Cluster corrected energies        -24985.14231532 (Pople, relaxed reference)
 Cluster corrected energies        -24985.14246908 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95521912 (fixed)   0.96182795 (relaxed)   0.96136777 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00544635   -0.00818039   -0.24326682
 Singles      0.02557671   -0.06113892   -0.06413242
 Pairs        0.05096104   -0.00000000   -0.01519356
 Total        1.08198411   -0.06931931   -0.32259280
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71088384
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.48089967
 One electron energy               -33998.54363365
 Two electron energy                 9013.50999631
 Virial quotient                       -0.57457357
 Correlation energy                    -0.32275350
 !MRCI STATE 2.1 Energy              -24985.0336373389    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06009800 (Davidson, fixed reference)
 Cluster corrected energies        -24985.05976392 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06009800 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05910587 (Pople, fixed reference)
 Cluster corrected energies        -24985.05876251 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05910587 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95521911 (fixed)   0.96182795 (relaxed)   0.96136777 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00544636   -0.00818039   -0.24326686
 Singles      0.02557669   -0.06113888   -0.06413241
 Pairs        0.05096106    0.00000000   -0.01519353
 Total        1.08198411   -0.06931927   -0.32259280
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71088384
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.48089136
 One electron energy               -33998.54361864
 Two electron energy                 9013.50998131
 Virial quotient                       -0.57457357
 Correlation energy                    -0.32275350
 !MRCI STATE 3.1 Energy              -24985.0336373388    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06009800 (Davidson, fixed reference)
 Cluster corrected energies        -24985.05976392 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06009800 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05910587 (Pople, fixed reference)
 Cluster corrected energies        -24985.05876251 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05910587 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96014453 (fixed)   0.96182798 (relaxed)   0.96136779 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00544637   -0.00818040   -0.24326692
 Singles      0.02557663   -0.06113883   -0.06413239
 Pairs        0.05096107   -0.00000000   -0.01519350
 Total        1.08198406   -0.06931923   -0.32259280
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71088384
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.48088470
 One electron energy               -33998.54359699
 Two electron energy                 9013.50995966
 Virial quotient                       -0.57457357
 Correlation energy                    -0.32275350
 !MRCI STATE 4.1 Energy              -24985.0336373387    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06009798 (Davidson, fixed reference)
 Cluster corrected energies        -24985.05976390 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06009798 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05910585 (Pople, fixed reference)
 Cluster corrected energies        -24985.05876250 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05910585 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96014454 (fixed)   0.96182798 (relaxed)   0.96136780 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00544636   -0.00818040   -0.22964508
 Singles      0.02557661   -0.06113881   -0.06413238
 Pairs        0.05096108   -0.01473864   -0.02881534
 Total        1.08198405   -0.08405785   -0.32259280
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71088384
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.48088422
 One electron energy               -33998.54359598
 Two electron energy                 9013.50995864
 Virial quotient                       -0.57457357
 Correlation energy                    -0.32275350
 !MRCI STATE 5.1 Energy              -24985.0336373387    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06009798 (Davidson, fixed reference)
 Cluster corrected energies        -24985.05976390 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06009798 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05910585 (Pople, fixed reference)
 Cluster corrected energies        -24985.05876249 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05910585 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96014454 (fixed)   0.96182799 (relaxed)   0.96136781 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00544636   -0.00818040   -0.24326694
 Singles      0.02557660   -0.06113881   -0.06413238
 Pairs        0.05096107    0.00000000   -0.01519348
 Total        1.08198403   -0.06931921   -0.32259280
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71088384
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.48088303
 One electron energy               -33998.54359215
 Two electron energy                 9013.50995481
 Virial quotient                       -0.57457357
 Correlation energy                    -0.32275350
 !MRCI STATE 6.1 Energy              -24985.0336373387    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06009797 (Davidson, fixed reference)
 Cluster corrected energies        -24985.05976389 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06009797 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05910584 (Pople, fixed reference)
 Cluster corrected energies        -24985.05876248 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05910584 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95964544 (fixed)   0.96248082 (relaxed)   0.96231506 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00582040   -0.00992525   -0.24165564
 Singles      0.02552636   -0.06235852   -0.06534581
 Pairs        0.04850821   -0.00000000   -0.01443920
 Total        1.07985498   -0.07228377   -0.32144065
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.67053758
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.56585047
 One electron energy               -33989.48903137
 Two electron energy                 9004.49768959
 Virial quotient                       -0.57457148
 Correlation energy                    -0.32080421
 !MRCI STATE 7.1 Energy              -24984.9913417877    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.01695960 (Davidson, fixed reference)
 Cluster corrected energies        -24985.01684029 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.01695960 (Davidson, rotated reference)

 Cluster corrected energies        -24985.01595514 (Pople, fixed reference)
 Cluster corrected energies        -24985.01583288 (Pople, relaxed reference)
 Cluster corrected energies        -24985.01595514 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.96160881 (fixed)   0.96303680 (relaxed)   0.96292942 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00425913   -0.00724940   -0.00834720
 Singles      0.02141457   -0.05635543   -0.05857994
 Pairs        0.05280379   -0.25452589   -0.25159980
 Total        1.07847750   -0.31813072   -0.31852694
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65038322
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.16332016
 One electron energy               -33997.38851095
 Two electron energy                 9012.41976149
 Virial quotient                       -0.57457628
 Correlation energy                    -0.31836624
 !MRCI STATE 8.1 Energy              -24984.9687494584    

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99373404 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99365748 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99373404 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99272676 (Pople, fixed reference)
 Cluster corrected energies        -24984.99264848 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99272676 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.96160881 (fixed)   0.96303680 (relaxed)   0.96292942 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00425913   -0.00724940   -0.24435202
 Singles      0.02141456   -0.05635543   -0.05857993
 Pairs        0.05280380    0.00000000   -0.01559498
 Total        1.07847749   -0.06360483   -0.31852694
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65038322
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.16331937
 One electron energy               -33997.38850852
 Two electron energy                 9012.41975906
 Virial quotient                       -0.57457628
 Correlation energy                    -0.31836624
 !MRCI STATE 9.1 Energy              -24984.9687494584    

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99373404 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99365748 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99373404 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99272676 (Pople, fixed reference)
 Cluster corrected energies        -24984.99264847 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99272676 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96160882 (fixed)   0.96303681 (relaxed)   0.96292943 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00425913   -0.00724940   -0.24435203
 Singles      0.02141455   -0.05635543   -0.05857993
 Pairs        0.05280379    0.00000000   -0.01559498
 Total        1.07847747   -0.06360483   -0.31852694
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65038322
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.16332286
 One electron energy               -33997.38851662
 Two electron energy                 9012.41976716
 Virial quotient                       -0.57457628
 Correlation energy                    -0.31836624
 !MRCI STATE 10.1 Energy             -24984.9687494584    

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99373404 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99365748 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99373404 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99272675 (Pople, fixed reference)
 Cluster corrected energies        -24984.99264847 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99272675 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96094094 (fixed)   0.96303678 (relaxed)   0.96292941 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00425912   -0.00724939   -0.24435197
 Singles      0.02141460   -0.05635548   -0.05857996
 Pairs        0.05280380   -0.00000000   -0.01559501
 Total        1.07847753   -0.06360487   -0.31852694
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65038322
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.16331062
 One electron energy               -33997.38845708
 Two electron energy                 9012.41970762
 Virial quotient                       -0.57457628
 Correlation energy                    -0.31836624
 !MRCI STATE 11.1 Energy             -24984.9687494582    

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99373405 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99365749 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99373405 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99272677 (Pople, fixed reference)
 Cluster corrected energies        -24984.99264849 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99272677 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96094092 (fixed)   0.96303675 (relaxed)   0.96292938 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00425911   -0.00724939   -0.24435190
 Singles      0.02141467   -0.05635553   -0.05857999
 Pairs        0.05280381   -0.00000000   -0.01559505
 Total        1.07847758   -0.06360493   -0.31852694
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65038322
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.16331323
 One electron energy               -33997.38843191
 Two electron energy                 9012.41968245
 Virial quotient                       -0.57457628
 Correlation energy                    -0.31836624
 !MRCI STATE 12.1 Energy             -24984.9687494581    

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99373407 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99365752 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99373407 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99272678 (Pople, fixed reference)
 Cluster corrected energies        -24984.99264851 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99272678 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      261.79       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3543.38   3520.53      8.59      0.14     13.95
 REAL TIME  *      3589.50 SEC
 DISK USED  *       420.58 MB (local),        2.53 GB (total)
 SF USED    *         2.73 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -24985.14348906  AU                              
 SETTING HLSDIAG(2)     =    -24985.06009800  AU                              
 SETTING HLSDIAG(3)     =    -24985.06009800  AU                              
 SETTING HLSDIAG(4)     =    -24985.06009798  AU                              
 SETTING HLSDIAG(5)     =    -24985.06009798  AU                              
 SETTING HLSDIAG(6)     =    -24985.06009797  AU                              
 SETTING HLSDIAG(7)     =    -24985.01695960  AU                              
 SETTING HLSDIAG(8)     =    -24984.99373404  AU                              
 SETTING HLSDIAG(9)     =    -24984.99373404  AU                              
 SETTING HLSDIAG(10)    =    -24984.99373404  AU                              
 SETTING HLSDIAG(11)    =    -24984.99373405  AU                              
 SETTING HLSDIAG(12)    =    -24984.99373407  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 88
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:    28449 conf   120789 CSFs
 N-1 el internal:     8065 conf    49051 CSFs
 N-2 el internal:     1171 conf     8695 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          34 (  15  19 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      72 (  29  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1    -24984.72068445
     2    -24984.72068445
     3    -24984.72068445
     4    -24984.72068445
     5    -24984.72068445
     6    -24984.67747741
     7    -24984.65352489
     8    -24984.65352489
     9    -24984.65352489
    10    -24984.64770488
    11    -24984.64770488
    12    -24984.64770488
    13    -24984.64770488
    14    -24984.64770488
    15    -24984.64770488
    16    -24984.64770488

 Number of blocks in overlap matrix:  1441   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:    1477
 Number of N-1 electron functions:   49051

 Number of internal configurations:                60333
 Number of singly external configurations:       1764653
 Number of doubly external configurations:       1927621
 Total number of contracted configurations:      3752607
 Total number of uncontracted configurations:   13070967

 Diagonal Coupling coefficients finished.               Storage:36433702 words, CPU-Time:    106.25 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1189174 words, CPU-time:      0.20 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24984.72068445    -0.00000000    -0.37180712  0.44D-01  0.67D-01   128.41
    1     2     2     1.00000000     0.00000000-24984.72068445     0.00000000    -0.37179898  0.44D-01  0.67D-01   128.41
    1     3     3     1.00000000     0.00000000-24984.72068445     0.00000000    -0.37181248  0.44D-01  0.67D-01   128.41
    1     4     4     1.00000000     0.00000000-24984.72068445    -0.00000000    -0.37181254  0.44D-01  0.67D-01   128.41
    1     5     5     1.00000000     0.00000000-24984.72068445     0.00000000    -0.37179063  0.44D-01  0.67D-01   128.41
    1     6     6     1.00000000     0.00000000-24984.67747741    -0.00000000    -0.35344956  0.40D-01  0.58D-01   128.41
    1     7     7     1.00000000     0.00000000-24984.65352489     0.00000000    -0.35668520  0.32D-01  0.66D-01   128.41
    1     8     8     1.00000000     0.00000000-24984.65352489     0.00000000    -0.35675673  0.32D-01  0.66D-01   128.41
    1     9     9     1.00000000     0.00000000-24984.65352489     0.00000000    -0.35676171  0.32D-01  0.66D-01   128.41
    1    10    10     1.00000000     0.00000000-24984.64770488     0.00000000    -0.37147025  0.39D-01  0.74D-01   128.41
    1    11    11     1.00000000     0.00000000-24984.64770488    -0.00000000    -0.37147115  0.39D-01  0.74D-01   128.41
    1    12    12     1.00000000     0.00000000-24984.64770488     0.00000000    -0.37154542  0.39D-01  0.74D-01   128.41
    1    13    13     1.00000000     0.00000000-24984.64770488    -0.00000000    -0.37153918  0.39D-01  0.74D-01   128.41
    1    14    14     1.00000000     0.00000000-24984.64770488     0.00000000    -0.37142780  0.39D-01  0.74D-01   128.41
    1    15    15     1.00000000     0.00000000-24984.64770488     0.00000000    -0.37140460  0.39D-01  0.74D-01   128.41
    1    16    16     1.00000000     0.00000000-24984.64770488     0.00000000    -0.37140574  0.39D-01  0.74D-01   128.41
    2     1     1     1.07645998    -0.31860621-24985.03929066    -0.31860621    -0.00690598  0.18D-02  0.92D-03   706.75
    2     2     2     1.07646620    -0.31860267-24985.03928713    -0.31860267    -0.00690973  0.18D-02  0.92D-03   706.75
    2     3     3     1.07647043    -0.31859866-24985.03928311    -0.31859866    -0.00691356  0.18D-02  0.92D-03   706.75
    2     4     4     1.07648378    -0.31859594-24985.03928040    -0.31859594    -0.00691627  0.18D-02  0.92D-03   706.75
    2     5     5     1.07648262    -0.31859334-24985.03927780    -0.31859334    -0.00691875  0.18D-02  0.92D-03   706.75
    2     6     6     1.07254288    -0.31336186-24984.99083927    -0.31336186    -0.00562974  0.14D-02  0.64D-03   706.75
    2     7     7     1.07054399    -0.30993949-24984.96346438    -0.30993949    -0.00590258  0.15D-02  0.89D-03   706.75
    2     8     8     1.07058953    -0.30992053-24984.96344542    -0.30992053    -0.00592478  0.15D-02  0.89D-03   706.75
    2     9     9     1.07057180    -0.30991847-24984.96344336    -0.30991847    -0.00592603  0.15D-02  0.89D-03   706.75
    2    10    10     1.07800073    -0.31565753-24984.96336241    -0.31565753    -0.00636976  0.15D-02  0.10D-02   706.75
    2    11    11     1.07801455    -0.31565689-24984.96336177    -0.31565689    -0.00637089  0.15D-02  0.10D-02   706.75
    2    12    12     1.07803678    -0.31564781-24984.96335269    -0.31564781    -0.00637861  0.15D-02  0.10D-02   706.75
    2    13    13     1.07813917    -0.31564327-24984.96334815    -0.31564327    -0.00639675  0.15D-02  0.10D-02   706.75
    2    14    14     1.07816329    -0.31564213-24984.96334701    -0.31564213    -0.00639345  0.15D-02  0.10D-02   706.75
    2    15    15     1.07815962    -0.31564204-24984.96334692    -0.31564204    -0.00639333  0.15D-02  0.10D-02   706.75
    2    16    16     1.07816480    -0.31563550-24984.96334038    -0.31563550    -0.00640424  0.15D-02  0.10D-02   706.75
    3     1     1     1.07524861    -0.32545534-24985.04613979    -0.00684913    -0.00016061  0.35D-04  0.26D-04  1269.79
    3     2     2     1.07524778    -0.32545512-24985.04613957    -0.00685245    -0.00016074  0.35D-04  0.26D-04  1269.79
    3     3     3     1.07524735    -0.32545505-24985.04613951    -0.00685639    -0.00016092  0.35D-04  0.26D-04  1269.79
    3     4     4     1.07524794    -0.32545485-24985.04613931    -0.00685891    -0.00016109  0.35D-04  0.26D-04  1269.79
    3     5     5     1.07524734    -0.32545477-24985.04613922    -0.00686142    -0.00016116  0.35D-04  0.26D-04  1269.79
    3     6     6     1.07329713    -0.31911665-24984.99659406    -0.00575479    -0.00012950  0.31D-04  0.19D-04  1269.79
    3     7     7     1.07709875    -0.31618362-24984.96970851    -0.00624413    -0.00013818  0.27D-04  0.26D-04  1269.79
    3     8     8     1.07710010    -0.31618353-24984.96970842    -0.00626300    -0.00013867  0.27D-04  0.26D-04  1269.79
    3     9     9     1.07709625    -0.31618322-24984.96970811    -0.00626474    -0.00013866  0.27D-04  0.26D-04  1269.79
    3    10    10     1.07709625    -0.32200322-24984.96970810    -0.00634569    -0.00013868  0.27D-04  0.26D-04  1269.79
    3    11    11     1.07709133    -0.32200308-24984.96970796    -0.00634618    -0.00013810  0.27D-04  0.26D-04  1269.79
    3    12    12     1.07709096    -0.32200302-24984.96970790    -0.00635521    -0.00013812  0.27D-04  0.26D-04  1269.79
    3    13    13     1.07709408    -0.32200264-24984.96970752    -0.00635937    -0.00013843  0.27D-04  0.26D-04  1269.79
    3    14    14     1.06978445    -0.32164779-24984.96935267    -0.00600566    -0.00014240  0.22D-04  0.30D-04  1269.79
    3    15    15     1.06978554    -0.32164625-24984.96935113    -0.00600421    -0.00014357  0.22D-04  0.30D-04  1269.79
    3    16    16     1.06978510    -0.32164618-24984.96935106    -0.00601069    -0.00014362  0.22D-04  0.30D-04  1269.79
    4     1     1     1.07615348    -0.32562703-24985.04631148    -0.00017169    -0.00000720  0.51D-05  0.63D-06  1831.55
    4     2     2     1.07615346    -0.32562700-24985.04631146    -0.00017188    -0.00000721  0.51D-05  0.63D-06  1831.55
    4     3     3     1.07615345    -0.32562700-24985.04631145    -0.00017195    -0.00000721  0.51D-05  0.63D-06  1831.55
    4     4     4     1.07615277    -0.32562693-24985.04631139    -0.00017208    -0.00000718  0.51D-05  0.63D-06  1831.55
    4     5     5     1.07615277    -0.32562685-24985.04631130    -0.00017208    -0.00000718  0.51D-05  0.62D-06  1831.55
    4     6     6     1.07406728    -0.31925338-24984.99673078    -0.00013672    -0.00000552  0.34D-05  0.54D-06  1831.55
    4     7     7     1.07790098    -0.31633115-24984.96985604    -0.00014752    -0.00000582  0.42D-05  0.58D-06  1831.55
    4     8     8     1.07790088    -0.31633108-24984.96985597    -0.00014755    -0.00000587  0.43D-05  0.58D-06  1831.55
    4     9     9     1.07790088    -0.31633107-24984.96985596    -0.00014786    -0.00000587  0.43D-05  0.58D-06  1831.55
    4    10    10     1.07790016    -0.32215068-24984.96985556    -0.00014746    -0.00000579  0.42D-05  0.58D-06  1831.55
    4    11    11     1.07790040    -0.32215045-24984.96985533    -0.00014738    -0.00000590  0.43D-05  0.58D-06  1831.55
    4    12    12     1.07789949    -0.32215044-24984.96985532    -0.00014742    -0.00000587  0.43D-05  0.58D-06  1831.55
    4    13    13     1.07789944    -0.32215044-24984.96985532    -0.00014780    -0.00000588  0.43D-05  0.58D-06  1831.55
    4    14    14     1.07050936    -0.32179664-24984.96950152    -0.00014885    -0.00000606  0.43D-05  0.64D-06  1831.55
    4    15    15     1.07050892    -0.32179612-24984.96950100    -0.00014988    -0.00000610  0.44D-05  0.65D-06  1831.55
    4    16    16     1.07050890    -0.32179612-24984.96950100    -0.00014994    -0.00000611  0.44D-05  0.65D-06  1831.55
    5     1     1     1.07632738    -0.32563592-24985.04632037    -0.00000889    -0.00000045  0.15D-06  0.68D-07  2377.35
    5     2     2     1.07632732    -0.32563590-24985.04632036    -0.00000890    -0.00000045  0.15D-06  0.68D-07  2377.35
    5     3     3     1.07632733    -0.32563590-24985.04632036    -0.00000890    -0.00000045  0.15D-06  0.68D-07  2377.35
    5     4     4     1.07632664    -0.32563579-24985.04632025    -0.00000886    -0.00000044  0.15D-06  0.68D-07  2377.35
    5     5     5     1.07632656    -0.32563571-24985.04632016    -0.00000886    -0.00000044  0.15D-06  0.68D-07  2377.35
    5     6     6     1.07416225    -0.31925970-24984.99673711    -0.00000632    -0.00000029  0.11D-06  0.39D-07  2377.35
    5     7     7     1.07803558    -0.31633834-24984.96986323    -0.00000719    -0.00000034  0.12D-06  0.55D-07  2377.35
    5     8     8     1.07803558    -0.31633834-24984.96986323    -0.00000726    -0.00000034  0.12D-06  0.55D-07  2377.35
    5     9     9     1.07803564    -0.31633834-24984.96986323    -0.00000726    -0.00000034  0.12D-06  0.54D-07  2377.35
    5    10    10     1.07803510    -0.32215783-24984.96986271    -0.00000715    -0.00000034  0.11D-06  0.54D-07  2377.35
    5    11    11     1.07803490    -0.32215776-24984.96986264    -0.00000731    -0.00000034  0.12D-06  0.55D-07  2377.35
    5    12    12     1.07803485    -0.32215772-24984.96986260    -0.00000728    -0.00000034  0.12D-06  0.55D-07  2377.35
    5    13    13     1.07803484    -0.32215772-24984.96986260    -0.00000728    -0.00000034  0.12D-06  0.55D-07  2377.35
    5    14    14     1.07055575    -0.32180393-24984.96950881    -0.00000729    -0.00000037  0.13D-06  0.61D-07  2377.35
    5    15    15     1.07055572    -0.32180345-24984.96950833    -0.00000733    -0.00000037  0.13D-06  0.62D-07  2377.35
    5    16    16     1.07055572    -0.32180345-24984.96950833    -0.00000733    -0.00000037  0.13D-06  0.62D-07  2377.35
    6     1     1     1.07635654    -0.32563645-24985.04632090    -0.00000053    -0.00000003  0.15D-07  0.30D-08  2923.12
    6     2     2     1.07635654    -0.32563644-24985.04632089    -0.00000053    -0.00000003  0.15D-07  0.30D-08  2923.12
    6     3     3     1.07635653    -0.32563644-24985.04632089    -0.00000053    -0.00000003  0.15D-07  0.30D-08  2923.12
    6     4     4     1.07635567    -0.32563633-24985.04632078    -0.00000053    -0.00000003  0.15D-07  0.30D-08  2923.12
    6     5     5     1.07635566    -0.32563624-24985.04632070    -0.00000053    -0.00000003  0.15D-07  0.30D-08  2923.12
    6     6     6     1.07418000    -0.31926002-24984.99673743    -0.00000032    -0.00000002  0.10D-07  0.17D-08  2923.12
    6     7     7     1.07805777    -0.31633875-24984.96986364    -0.00000041    -0.00000002  0.49D-08  0.30D-08  2923.12
    6     8     8     1.07805777    -0.31633875-24984.96986364    -0.00000041    -0.00000002  0.49D-08  0.30D-08  2923.12
    6     9     9     1.07805731    -0.31633874-24984.96986363    -0.00000040    -0.00000002  0.49D-08  0.30D-08  2923.12
    6    10    10     1.07805667    -0.32215823-24984.96986311    -0.00000040    -0.00000002  0.48D-08  0.30D-08  2923.12
    6    11    11     1.07805734    -0.32215817-24984.96986305    -0.00000041    -0.00000002  0.49D-08  0.31D-08  2923.12
    6    12    12     1.07805717    -0.32215813-24984.96986301    -0.00000041    -0.00000002  0.49D-08  0.31D-08  2923.12
    6    13    13     1.07805717    -0.32215813-24984.96986301    -0.00000041    -0.00000002  0.49D-08  0.31D-08  2923.12
    6    14    14     1.07055801    -0.32180436-24984.96950924    -0.00000043    -0.00000002  0.60D-08  0.35D-08  2923.12
    6    15    15     1.07055769    -0.32180389-24984.96950877    -0.00000043    -0.00000002  0.61D-08  0.36D-08  2923.12
    6    16    16     1.07055768    -0.32180389-24984.96950877    -0.00000043    -0.00000002  0.61D-08  0.36D-08  2923.12
    7     1     1     1.07637260    -0.32563648-24985.04632093    -0.00000003    -0.00000000  0.94D-09  0.25D-09  3252.23
    7     2     2     1.07637262    -0.32563647-24985.04632092    -0.00000003    -0.00000000  0.94D-09  0.25D-09  3252.23
    7     3     3     1.07637262    -0.32563647-24985.04632092    -0.00000003    -0.00000000  0.94D-09  0.25D-09  3252.23
    7     4     4     1.07637170    -0.32563636-24985.04632081    -0.00000003    -0.00000000  0.94D-09  0.25D-09  3252.23
    7     5     5     1.07637170    -0.32563627-24985.04632073    -0.00000003    -0.00000000  0.94D-09  0.25D-09  3252.23
    7     6     6     1.07418734    -0.31926004-24984.99673745    -0.00000002    -0.00000000  0.77D-09  0.12D-09  3252.23
    7     7     7     1.07805777    -0.31633875-24984.96986364    -0.00000000    -0.00000002  0.49D-08  0.30D-08  3252.23
    7     8     8     1.07805777    -0.31633875-24984.96986364    -0.00000000    -0.00000002  0.49D-08  0.30D-08  3252.23
    7     9     9     1.07805731    -0.31633874-24984.96986363    -0.00000000    -0.00000002  0.49D-08  0.30D-08  3252.23
    7    10    10     1.07805667    -0.32215823-24984.96986311    -0.00000000    -0.00000002  0.48D-08  0.30D-08  3252.23
    7    11    11     1.07805734    -0.32215817-24984.96986305    -0.00000000    -0.00000002  0.49D-08  0.31D-08  3252.23
    7    12    12     1.07805717    -0.32215813-24984.96986301    -0.00000000    -0.00000002  0.49D-08  0.31D-08  3252.23
    7    13    13     1.07805717    -0.32215813-24984.96986301    -0.00000000    -0.00000002  0.49D-08  0.31D-08  3252.23
    7    14    14     1.07055801    -0.32180436-24984.96950924    -0.00000000    -0.00000002  0.60D-08  0.35D-08  3252.23
    7    15    15     1.07055769    -0.32180389-24984.96950877    -0.00000000    -0.00000002  0.61D-08  0.36D-08  3252.23
    7    16    16     1.07055768    -0.32180389-24984.96950877    -0.00000000    -0.00000002  0.61D-08  0.36D-08  3252.23


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   9.0%
 S   1.5%  37.6%
 P   0.6%  27.7%  13.5%

 Initialization:   3.3%
 Other:            6.7%

 Total CPU:     3252.2 seconds
 =====================================



 gnormi=  0.92904631  gnorms=  0.02402501  gnormp=  0.04692867  gnorm=  1.00000000
 ecorri= -0.30253137  ecorrs= -0.00782345  ecorrp= -0.01528166  ecorr= -0.32563648

 gnormi=  0.92904630  gnorms=  0.02402500  gnormp=  0.04692869  gnorm=  1.00000000
 ecorri= -0.30253136  ecorrs= -0.00782345  ecorrp= -0.01528166  ecorr= -0.32563647

 gnormi=  0.92904630  gnorms=  0.02402500  gnormp=  0.04692870  gnorm=  1.00000000
 ecorri= -0.30253136  ecorrs= -0.00782345  ecorrp= -0.01528166  ecorr= -0.32563647

 gnormi=  0.92904709  gnorms=  0.02402406  gnormp=  0.04692885  gnorm=  1.00000000
 ecorri= -0.30253151  ecorrs= -0.00782315  ecorrp= -0.01528170  ecorr= -0.32563636

 gnormi=  0.92904710  gnorms=  0.02402407  gnormp=  0.04692883  gnorm=  1.00000000
 ecorri= -0.30253143  ecorrs= -0.00782314  ecorrp= -0.01528169  ecorr= -0.32563627

 gnormi=  0.93093632  gnorms=  0.02507247  gnormp=  0.04399121  gnorm=  1.00000000
 ecorri= -0.29721077  ecorrs= -0.00800484  ecorrp= -0.01404444  ecorr= -0.31926004

 gnormi=  0.92759407  gnorms=  0.02180376  gnormp=  0.05060216  gnorm=  1.00000000
 ecorri= -0.29343395  ecorrs= -0.00690185  ecorrp= -0.01600295  ecorr= -0.31633875

 gnormi=  0.92759407  gnorms=  0.02180376  gnormp=  0.05060216  gnorm=  1.00000000
 ecorri= -0.29343395  ecorrs= -0.00690185  ecorrp= -0.01600295  ecorr= -0.31633875

 gnormi=  0.92759447  gnorms=  0.02180320  gnormp=  0.05060233  gnorm=  1.00000000
 ecorri= -0.29343407  ecorrs= -0.00690164  ecorrp= -0.01600304  ecorr= -0.31633874

 gnormi=  0.92759502  gnorms=  0.02180247  gnormp=  0.05060251  gnorm=  1.00000000
 ecorri= -0.29883237  ecorrs= -0.00702826  ecorrp= -0.01629759  ecorr= -0.32215823

 gnormi=  0.92759445  gnorms=  0.02180332  gnormp=  0.05060223  gnorm=  1.00000000
 ecorri= -0.29883213  ecorrs= -0.00702861  ecorrp= -0.01629743  ecorr= -0.32215817

 gnormi=  0.92759459  gnorms=  0.02180311  gnormp=  0.05060230  gnorm=  1.00000000
 ecorri= -0.29883214  ecorrs= -0.00702851  ecorrp= -0.01629748  ecorr= -0.32215813

 gnormi=  0.92759459  gnorms=  0.02180311  gnormp=  0.05060230  gnorm=  1.00000000
 ecorri= -0.29883214  ecorrs= -0.00702851  ecorrp= -0.01629748  ecorr= -0.32215813

 gnormi=  0.93409231  gnorms=  0.01827442  gnormp=  0.04763328  gnorm=  1.00000000
 ecorri= -0.30059498  ecorrs= -0.00588317  ecorrp= -0.01532621  ecorr= -0.32180436

 gnormi=  0.93409259  gnorms=  0.01827409  gnormp=  0.04763332  gnorm=  1.00000000
 ecorri= -0.30059462  ecorrs= -0.00588304  ecorrp= -0.01532622  ecorr= -0.32180389

 gnormi=  0.93409259  gnorms=  0.01827409  gnormp=  0.04763332  gnorm=  1.00000000
 ecorri= -0.30059462  ecorrs= -0.00588304  ecorrp= -0.01532622  ecorr= -0.32180389

 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/00000/222000          -0.0000000   0.0000000  -0.0000000  -0.0000041  -0.0000000   0.9622347   0.0000000  -0.0000000
                               0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 22222200/00/0222000          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000408   0.0000000   0.0000000   0.0000000
                               0.0000000   0.9613409   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2222220/000/0222000           0.0000429   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                               0.9613404  -0.0000000  -0.0000067   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 222222/0/0000222000           0.0000000  -0.0000000  -0.0000000   0.0000044   0.9610501  -0.0000000   0.0000000  -0.0000000
                              -0.0000000  -0.0000462  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 222222/0000/0222000           0.0000000   0.0000000   0.0000000   0.9610500  -0.0000044   0.0000047  -0.0000000  -0.0000000
                               0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 222222//00000222000           0.9610499   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                              -0.0000486   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 222222/000/00222000          -0.0000000   0.0000000   0.9610499  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000273
                               0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000349   0.0000000  -0.0000000   0.0000001
 222222/00/000222000          -0.0000000   0.9610499  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000273   0.0000000
                              -0.0000000  -0.0000000  -0.0000000   0.0000349   0.0000000   0.0000000   0.0000001  -0.0000000
 222222000//00222000           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                               0.0000060  -0.0000000   0.8606683  -0.0000000  -0.0000000  -0.3143489  -0.0000000  -0.0000000
 2222220/0/000222000          -0.0000000   0.0000000  -0.0000005   0.0000000   0.0000000   0.0000000   0.0000000   0.6858398
                              -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.5197319  -0.0000000  -0.0000000   0.3147500
 2222220/00/00222000           0.0000000  -0.0000005   0.0000000  -0.0000000   0.0000000  -0.0000000   0.6858310   0.0000000
                               0.0000000  -0.0000000   0.0000000  -0.5197436   0.0000000  -0.0000000   0.3147500   0.0000000
 22222200//000222000           0.0000000  -0.0000342  -0.0000000   0.0000000  -0.0000000   0.0000000   0.6736279  -0.0000000
                              -0.0000000  -0.0000000  -0.0000000   0.5345487  -0.0000000   0.0000000  -0.3163029  -0.0000000
 22222200/0/00222000           0.0000000   0.0000000   0.0000342   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.6736188
                              -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.5345602   0.0000000  -0.0000000   0.3163029
 22222200000002220//           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                              -0.0000000  -0.0000000  -0.0016951  -0.0000000  -0.0000000   0.6550326  -0.0000000  -0.0000000
 2222220000000222/0/           0.0000000  -0.0000000  -0.0000002   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0007606
                               0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0013006   0.0000000   0.0000000   0.6550308
 2222220000000222//0          -0.0000000  -0.0000002   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0007605  -0.0000000
                              -0.0000000   0.0000000   0.0000000  -0.0013006  -0.0000000   0.0000000   0.6550308  -0.0000000
 2222220//0000222000           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                              -0.0000030  -0.0000000  -0.4282793  -0.0000000   0.0000000  -0.6342741  -0.0000000  -0.0000000
 222222000/0/0222000           0.0000000  -0.0000194  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0059807   0.0000000
                               0.0000000  -0.0000000   0.0000000   0.6068762  -0.0000000  -0.0000000   0.5495516   0.0000000
 2222220000//0222000           0.0000000   0.0000000  -0.0000194  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0059910
                              -0.0000000  -0.0000000   0.0000000   0.0000000   0.6068761   0.0000000   0.0000000   0.5495516

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.961037    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000043   -0.000000   -0.000000    0.000000    0.000000
 2           0.000000   -0.000000    0.961037    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000022    0.000000    0.000000    0.000000   -0.000033    0.000000
 3           0.000000   -0.000000   -0.000000    0.961037    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000020
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000034
 4          -0.000000    0.000004   -0.000000   -0.000000    0.961037   -0.000004   -0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000    0.961037    0.000000    0.000000   -0.000004   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000041    0.000000   -0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000005    0.962235   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 7          -0.000000    0.000000    0.000027    0.000000   -0.000000    0.000000    0.000000    0.001122    0.000000    0.000000
             0.958507   -0.000000    0.000000    0.000000    0.073743   -0.000000
 8           0.000000   -0.000000    0.000000    0.000027   -0.000000   -0.000000    0.000000   -0.000000    0.001122    0.952531
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.129839
 9          -0.000049   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.961340    0.000000    0.000007   -0.000000    0.000000
 10          0.000000   -0.000046   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.961341   -0.000000   -0.000000    0.000000
 11          0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.002500    0.000000   -0.000000    0.000000
            -0.000000   -0.000007    0.000000    0.961337   -0.000000   -0.000000
 12         -0.000000    0.000000    0.000035    0.000000   -0.000000   -0.000000   -0.000000   -0.001917   -0.000000    0.000000
            -0.073741    0.000000    0.000000   -0.000000    0.958507   -0.000000
 13         -0.000000    0.000000    0.000000    0.000035    0.000000   -0.000000   -0.000000   -0.000000   -0.001917   -0.129837
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.952531
 14          0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.964255    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.002494    0.000000    0.000000
 15          0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.964256    0.000000   -0.000000
            -0.001262    0.000000   -0.000000   -0.000000    0.001822   -0.000000
 16         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.964256   -0.001367
             0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.001744

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961037   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000003   -0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.961037    0.000000   -0.000000    0.000000    0.000000    0.000002   -0.000000    0.000000    0.000000
             0.000000    0.000002    0.000000    0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.961037   -0.000000    0.000000   -0.000000   -0.000000    0.000002   -0.000000   -0.000000
            -0.000000   -0.000000    0.000002    0.000000   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.961037   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.961037   -0.000000    0.000000    0.000000    0.000000   -0.000003
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.962235    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 7           0.000000    0.000002   -0.000000    0.000000    0.000000    0.000000    0.961340    0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000003    0.000000
 8          -0.000000   -0.000000    0.000002    0.000000    0.000000    0.000000    0.000000    0.961340   -0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000003
 9          -0.000003    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.961340    0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 10         -0.000000    0.000000   -0.000000   -0.000000   -0.000003    0.000000   -0.000000    0.000000    0.000000    0.961341
            -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 11          0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.961341   -0.000000   -0.000000   -0.000007    0.000000    0.000000
 12          0.000000    0.000002   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.961341    0.000000   -0.000000   -0.000005   -0.000000
 13          0.000000    0.000000    0.000002   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.961341   -0.000000   -0.000000   -0.000005
 14          0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000007   -0.000000   -0.000000    0.964258    0.000000    0.000000
 15          0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000003   -0.000000   -0.000000    0.000000
             0.000000   -0.000005   -0.000000    0.000000    0.964258   -0.000000
 16          0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000003    0.000000    0.000000
             0.000000   -0.000000   -0.000005    0.000000   -0.000000    0.964258

 Energy contributions of internal configurations for state 14
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1927       0.00020362     1.45392928       2222220000000222011             
  2325       0.00015138    -1.16495442       2222220110000222000             

 Energy contributions of internal configurations for state 15
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1929       0.00020369     1.45419033       2222220000000222110             

 Energy contributions of internal configurations for state 16
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1928       0.00020369     1.45418949       2222220000000222101             


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96103701 (fixed)   0.96115167 (relaxed)   0.96103701 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00590540   -0.00960122   -0.24504343
 Singles      0.02601258   -0.06224387   -0.06531140
 Pairs        0.05081103   -0.00000000   -0.01528166
 Total        1.08272901   -0.07184509   -0.32563648
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72068445
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58441521
 One electron energy               -33999.48436684
 Two electron energy                 9014.43804591
 Virial quotient                       -0.57457250
 Correlation energy                    -0.32563648
 !MRCI STATE 1.1 Energy              -24985.0463209337    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07326052 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07317640 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07326052 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07189428 (Pople, fixed reference)
 Cluster corrected energies        -24985.07180909 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07189428 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96103700 (fixed)   0.96115167 (relaxed)   0.96103700 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00590540   -0.00960121   -0.24504341
 Singles      0.02601257   -0.06224387   -0.06531139
 Pairs        0.05081106   -0.00000000   -0.01528166
 Total        1.08272903   -0.07184507   -0.32563647
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72068445
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58441587
 One electron energy               -33999.48436808
 Two electron energy                 9014.43804716
 Virial quotient                       -0.57457250
 Correlation energy                    -0.32563647
 !MRCI STATE 2.1 Energy              -24985.0463209204    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07326051 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07317639 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07326051 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07189427 (Pople, fixed reference)
 Cluster corrected energies        -24985.07180908 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07189427 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96103700 (fixed)   0.96115167 (relaxed)   0.96103700 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00590540   -0.00960121   -0.24503475
 Singles      0.02601257   -0.06224387   -0.06531139
 Pairs        0.05081106   -0.00000938   -0.01529033
 Total        1.08272903   -0.07185445   -0.32563647
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72068445
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58441587
 One electron energy               -33999.48436774
 Two electron energy                 9014.43804682
 Virial quotient                       -0.57457250
 Correlation energy                    -0.32563647
 !MRCI STATE 3.1 Energy              -24985.0463209204    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07326051 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07317639 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07326051 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07189427 (Pople, fixed reference)
 Cluster corrected energies        -24985.07180908 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07189427 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96103719 (fixed)   0.96115186 (relaxed)   0.96103719 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00590587   -0.00960156   -0.24504419
 Singles      0.02601154   -0.06224317   -0.06531047
 Pairs        0.05081121   -0.00000000   -0.01528170
 Total        1.08272861   -0.07184473   -0.32563636
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72068445
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58441145
 One electron energy               -33999.48432934
 Two electron energy                 9014.43800853
 Virial quotient                       -0.57457250
 Correlation energy                    -0.32563636
 !MRCI STATE 4.1 Energy              -24985.0463208103    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07326025 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07317613 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07326025 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07189402 (Pople, fixed reference)
 Cluster corrected energies        -24985.07180882 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07189402 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96103728 (fixed)   0.96115195 (relaxed)   0.96103728 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00590568   -0.00960144   -0.24504406
 Singles      0.02601154   -0.06224321   -0.06531052
 Pairs        0.05081118   -0.00000000   -0.01528169
 Total        1.08272841   -0.07184465   -0.32563627
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72068445
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58441117
 One electron energy               -33999.48433208
 Two electron energy                 9014.43801135
 Virial quotient                       -0.57457250
 Correlation energy                    -0.32563627
 !MRCI STATE 5.1 Energy              -24985.0463207255    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07326010 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07317597 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07326010 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07189386 (Pople, fixed reference)
 Cluster corrected energies        -24985.07180866 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07189386 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96223474 (fixed)   0.96223474 (relaxed)   0.96223474 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00544406   -0.00995471   -0.23944445
 Singles      0.02707915   -0.06238966   -0.06577116
 Pairs        0.04751206    0.00000000   -0.01404444
 Total        1.08003527   -0.07234437   -0.31926004
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.67747741
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.51942683
 One electron energy               -33988.24077609
 Two electron energy                 9003.24403864
 Virial quotient                       -0.57457222
 Correlation energy                    -0.31926004
 !MRCI STATE 6.1 Energy              -24984.9967374493    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.02228951 (Davidson, fixed reference)
 Cluster corrected energies        -24985.02228951 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.02228951 (Davidson, rotated reference)

 Cluster corrected energies        -24985.02094072 (Pople, fixed reference)
 Cluster corrected energies        -24985.02094072 (Pople, relaxed reference)
 Cluster corrected energies        -24985.02094072 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95850697 (fixed)   0.96134020 (relaxed)   0.96134020 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00369962   -0.00657239   -0.24039555
 Singles      0.02359268   -0.05738999   -0.05994025
 Pairs        0.05475388    0.00000000   -0.01600295
 Total        1.08204617   -0.06396238   -0.31633875
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64770489
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.18703964
 One electron energy               -34000.69156414
 Two electron energy                 9015.72170050
 Virial quotient                       -0.57457599
 Correlation energy                    -0.32215875
 !MRCI STATE 7.1 Energy              -24984.9698636367    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99629553 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99629553 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99629553 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99494114 (Pople, fixed reference)
 Cluster corrected energies        -24984.99494114 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99494114 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95253112 (fixed)   0.96134020 (relaxed)   0.96134020 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00369962   -0.00657239   -0.27262357
 Singles      0.02359268   -0.05738999   -0.05994025
 Pairs        0.05475388    0.03487221    0.01622507
 Total        1.08204617   -0.02909018   -0.31633875
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64770489
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.18703957
 One electron energy               -34000.69156388
 Two electron energy                 9015.72170024
 Virial quotient                       -0.57457599
 Correlation energy                    -0.32215875
 !MRCI STATE 8.1 Energy              -24984.9698636367    

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99629553 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99629553 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99629553 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99494114 (Pople, fixed reference)
 Cluster corrected energies        -24984.99494114 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99494114 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.96134042 (fixed)   0.96134042 (relaxed)   0.96134042 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00369958   -0.00657254   -0.24039589
 Singles      0.02359206   -0.05738973   -0.05993982
 Pairs        0.05475403    0.00000000   -0.01600304
 Total        1.08204567   -0.06396228   -0.31633874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64770488
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.18701159
 One electron energy               -34000.69141261
 Two electron energy                 9015.72154898
 Virial quotient                       -0.57457599
 Correlation energy                    -0.32215875
 !MRCI STATE 9.1 Energy              -24984.9698636316    

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99629536 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99629536 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99629536 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99494098 (Pople, fixed reference)
 Cluster corrected energies        -24984.99494098 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99494098 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.96134093 (fixed)   0.96134093 (relaxed)   0.96134093 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00369912   -0.00657230   -0.24579451
 Singles      0.02359124   -0.05738933   -0.06006613
 Pairs        0.05475417   -0.00000000   -0.01629759
 Total        1.08204453   -0.06396163   -0.32215823
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64770488
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.18696986
 One electron energy               -34000.69120900
 Two electron energy                 9015.72134590
 Virial quotient                       -0.57457599
 Correlation energy                    -0.32215823
 !MRCI STATE 10.1 Energy             -24984.9698631082    

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99629443 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99629443 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99629443 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99494004 (Pople, fixed reference)
 Cluster corrected energies        -24984.99494004 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99494004 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.96133747 (fixed)   0.96134072 (relaxed)   0.96134072 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00369895   -0.00657192   -0.24579377
 Singles      0.02359217   -0.05738989   -0.06006697
 Pairs        0.05475389    0.00000000   -0.01629743
 Total        1.08204501   -0.06396182   -0.32215817
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64770492
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.18703916
 One electron energy               -34000.69161043
 Two electron energy                 9015.72174738
 Virial quotient                       -0.57457599
 Correlation energy                    -0.32215813
 !MRCI STATE 11.1 Energy             -24984.9698630506    

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99629452 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99629452 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99629452 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99494013 (Pople, fixed reference)
 Cluster corrected energies        -24984.99494013 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99494013 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95850651 (fixed)   0.96134081 (relaxed)   0.96134081 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00369890   -0.00657197   -0.24579389
 Singles      0.02359194   -0.05738976   -0.06006676
 Pairs        0.05475396    0.00000000   -0.01629748
 Total        1.08204480   -0.06396173   -0.32215813
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64770490
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.18701042
 One electron energy               -34000.69148353
 Two electron energy                 9015.72162052
 Virial quotient                       -0.57457599
 Correlation energy                    -0.32215811
 !MRCI STATE 12.1 Energy             -24984.9698630150    

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99629441 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99629441 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99629441 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99494003 (Pople, fixed reference)
 Cluster corrected energies        -24984.99494003 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99494003 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.95253081 (fixed)   0.96134081 (relaxed)   0.96134081 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00369890   -0.00657197   -0.48222609
 Singles      0.02359194   -0.05738976   -0.06006676
 Pairs        0.05475396    0.25583022    0.22013471
 Total        1.08204480    0.19186849   -0.32215813
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64770490
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.18701047
 One electron energy               -34000.69148250
 Two electron energy                 9015.72161949
 Virial quotient                       -0.57457599
 Correlation energy                    -0.32215811
 !MRCI STATE 13.1 Energy             -24984.9698630149    

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99629441 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99629441 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99629441 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99494003 (Pople, fixed reference)
 Cluster corrected energies        -24984.99494002 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99494003 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96425484 (fixed)   0.96446180 (relaxed)   0.96425807 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00462327   -0.00757722   -0.24853161
 Singles      0.01965427   -0.05599454   -0.05794654
 Pairs        0.05122995    0.00000000   -0.01532621
 Total        1.07550748   -0.06357176   -0.32180436
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65352485
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.14764069
 One electron energy               -33995.81660431
 Two electron energy                 9010.84709507
 Virial quotient                       -0.57457650
 Correlation energy                    -0.31598439
 !MRCI STATE 14.1 Energy             -24984.9695092396    

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99336843 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99322487 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99336843 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99202633 (Pople, fixed reference)
 Cluster corrected energies        -24984.99188263 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99202633 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96425589 (fixed)   0.96446224 (relaxed)   0.96425844 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00462280   -0.00757684   -0.24853130
 Singles      0.01965390   -0.05599445   -0.05794636
 Pairs        0.05122996    0.00000000   -0.01532622
 Total        1.07550666   -0.06357129   -0.32180389
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65352486
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.14762019
 One electron energy               -33995.81655099
 Two electron energy                 9010.84704223
 Virial quotient                       -0.57457650
 Correlation energy                    -0.31598391
 !MRCI STATE 15.1 Energy             -24984.9695087654    

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99336766 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99322405 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99336766 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99202556 (Pople, fixed reference)
 Cluster corrected energies        -24984.99188181 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99202556 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96425589 (fixed)   0.96446224 (relaxed)   0.96425844 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00462280   -0.00757684   -0.24896561
 Singles      0.01965390   -0.05599444   -0.05794636
 Pairs        0.05122996    0.00046709   -0.01489192
 Total        1.07550666   -0.06310420   -0.32180389
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65352486
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.14762090
 One electron energy               -33995.81655130
 Two electron energy                 9010.84704253
 Virial quotient                       -0.57457650
 Correlation energy                    -0.31598391
 !MRCI STATE 16.1 Energy             -24984.9695087654    

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99336766 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99322405 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99336766 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99202556 (Pople, fixed reference)
 Cluster corrected energies        -24984.99188181 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99202556 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      839.47       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     17258.60  13715.21   3520.53      8.59      0.14     13.95
 REAL TIME  *     17407.82 SEC
 DISK USED  *       998.26 MB (local),        5.92 GB (total)
 SF USED    *         5.02 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =    -24985.07326052  AU                              
 SETTING HLSDIAG(14)    =    -24985.07326051  AU                              
 SETTING HLSDIAG(15)    =    -24985.07326051  AU                              
 SETTING HLSDIAG(16)    =    -24985.07326025  AU                              
 SETTING HLSDIAG(17)    =    -24985.07326010  AU                              
 SETTING HLSDIAG(18)    =    -24985.02228951  AU                              
 SETTING HLSDIAG(19)    =    -24984.99629553  AU                              
 SETTING HLSDIAG(20)    =    -24984.99629553  AU                              
 SETTING HLSDIAG(21)    =    -24984.99629536  AU                              
 SETTING HLSDIAG(22)    =    -24984.99629443  AU                              
 SETTING HLSDIAG(23)    =    -24984.99629452  AU                              
 SETTING HLSDIAG(24)    =    -24984.99629441  AU                              
 SETTING HLSDIAG(25)    =    -24984.99629441  AU                              
 SETTING HLSDIAG(26)    =    -24984.99336843  AU                              
 SETTING HLSDIAG(27)    =    -24984.99336766  AU                              
 SETTING HLSDIAG(28)    =    -24984.99336766  AU                              


         HLSDIAG
    -24985.14349
    -24985.06010
    -24985.06010
    -24985.06010
    -24985.06010
    -24985.06010
    -24985.01696
    -24984.99373
    -24984.99373
    -24984.99373
    -24984.99373
    -24984.99373
    -24985.07326
    -24985.07326
    -24985.07326
    -24985.07326
    -24985.07326
    -24985.02229
    -24984.99630
    -24984.99630
    -24984.99630
    -24984.99629
    -24984.99629
    -24984.99629
    -24984.99629
    -24984.99337
    -24984.99337
    -24984.99337
                                                  

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

 Time for Seward_LS:     299.29 sec

       19066877. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     4660 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    299.30 sec, REAL time:    307.70 sec


 SORTLS1 read    19073439. and wrote    19073439. SO integrals in    84 records. CPU time:      0.19 sec, REAL time:      0.26 sec
 SORTLS2 read    19073439. and wrote    19073439. SO integrals in    18 records. CPU time:      0.10 sec, REAL time:      0.20 sec

 FILE SIZES: FILE 1:   471.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   471.9 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      450.05       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      839.47       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     17560.57    301.93  13715.21   3520.53      8.59      0.14     13.95
 REAL TIME  *     17718.42 SEC
 DISK USED  *       998.35 MB (local),        6.48 GB (total)
 SF USED    *         5.02 GB
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
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  12

 Original energies:**************************************************************************************************************
                   **********************
 Replaced energies:**************************************************************************************************************
                   **********************

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:**************************************************************************************************************
                   ******************************************************************
 Replaced energies:**************************************************************************************************************
                   ******************************************************************



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-24985.14348906

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   18302.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   18302.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   18302.23       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   18302.23       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   18302.23       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   27770.01       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32867.43       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32867.43       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32867.43
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00       0.00       0.00      -0.00      -0.00      99.41       0.00       0.00     -11.42      -0.00
                           -0.00       0.00       0.00       0.00     -99.41       0.00      -0.00      11.42       0.00      -0.00

   14   2.1  1.0  1.0      -0.00       0.00      -0.00     -99.41       0.00      -0.00       0.00       0.00      -0.00     -11.41
                           -0.01    -160.64    -116.69       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   15   3.1  1.0  1.0       0.01     181.34     -80.84       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      99.41      -0.00       0.00      -0.00       0.00      -0.00      11.41

   16   4.1  1.0  1.0      -0.00      -0.00       0.00       0.00    -172.11      -0.00      -0.00      19.64       0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00     172.11       0.00       0.00     -19.64      -0.00

   17   5.1  1.0  1.0       0.00      -0.00      -0.00      -0.00      99.38      -0.00       0.00     -11.43      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      99.38       0.00       0.00     -11.43      -0.00

   18   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.01      -0.00

   19   7.1  1.0  1.0      -0.00       0.00       0.00     -31.30      -0.00       0.00      -0.00       0.00       0.00     136.98
                            0.51      -3.91      32.22       0.00       0.00      -0.00      -0.30       0.00      -0.00      -0.00

   20   8.1  1.0  1.0      -0.51      -2.85      32.33      -0.00      -0.00      -0.00       0.30      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      31.30       0.00      -0.00       0.00      -0.00      -0.00    -136.98

   21   9.1  1.0  1.0      -0.00       0.00       0.00      -0.00      -0.00     -25.97       0.00       0.00    -111.53      -0.00
                           -0.00       0.00      -0.00      -0.00      25.97      -0.00       0.00     111.54       0.00      -0.00

   22  10.1  1.0  1.0      -0.00       0.00       0.00      -0.00     -25.95      -0.00       0.00    -111.54      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     -25.95      -0.00       0.00    -111.54      -0.00

   23  11.1  1.0  1.0       0.00      -0.00      -0.00       0.00      -0.00      19.27      -0.00      -0.00      88.10       0.00
                            0.00       0.00       0.00       0.00      19.27       0.00      -0.00      88.10       0.00       0.00

   24  12.1  1.0  1.0       0.00      -0.00      -0.00      -9.19      -0.00      -0.00      -0.00       0.00       0.00      35.49
                           -0.88      29.90      -5.56       0.00      -0.00       0.00       0.51       0.00      -0.00      -0.00

   25  13.1  1.0  1.0       0.88     -28.09     -11.64      -0.00       0.00      -0.00      -0.51       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       9.19       0.00       0.00       0.00       0.00       0.00     -35.49

   26  14.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.00     316.67      -0.00      -0.00    -646.58       0.00
                            0.00       0.00       0.00      -0.00     316.67       0.00      -0.00    -646.58       0.00      -0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00     316.63       0.00       0.00      -0.00       0.00      -0.00     646.69
                          423.05    -214.66     295.71       0.00      -0.00      -0.00    -252.18       0.00      -0.00      -0.00

   28  16.1  1.0  1.0    -423.05     148.68     333.79      -0.00       0.00      -0.00     252.18      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00    -316.63      -0.00      -0.00       0.00       0.00       0.00    -646.69

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      29.27    -279.24       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -140.59       0.00      -0.00      16.14      -0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00     140.59       0.00       0.00     -16.14      -0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     281.07      -0.00       0.00      -0.00       0.00       0.00      31.93

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.07       0.00       0.00       3.22       0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.06       0.00      -0.00      -3.22      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       3.83     -36.52      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      36.62       0.00       0.00       0.00       0.00      -0.00    -157.72

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.61      50.98       5.34      -0.00      -0.00       0.00      -0.94      -0.00       0.00      -0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     -45.53      -0.00      -0.00    -201.42       0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      45.53       0.00      -0.00     201.42       0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -598.31    -513.91     -53.86      -0.00       0.00       0.00     356.66      -0.00      -0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -447.86       0.00       0.00     914.31      -0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     447.86      -0.00      -0.00    -914.31      -0.00

   45   1.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      -0.00      99.41       0.00       0.00     -11.42      -0.00
                            0.00      -0.00      -0.00      -0.00      99.41      -0.00       0.00     -11.42      -0.00       0.00

   46   2.1  1.0 -1.0      -0.00       0.00      -0.00     -99.41       0.00      -0.00       0.00       0.00      -0.00     -11.41
                            0.01     160.64     116.69      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   47   3.1  1.0 -1.0       0.01     181.34     -80.84       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -99.41       0.00      -0.00       0.00      -0.00       0.00     -11.41

   48   4.1  1.0 -1.0      -0.00      -0.00       0.00       0.00    -172.11      -0.00      -0.00      19.64       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00    -172.11      -0.00      -0.00      19.64       0.00

   49   5.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00      99.38      -0.00       0.00     -11.43      -0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00     -99.38      -0.00      -0.00      11.43       0.00

   50   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01       0.00

   51   7.1  1.0 -1.0      -0.00       0.00       0.00     -31.30      -0.00       0.00      -0.00       0.00       0.00     136.98
                           -0.51       3.91     -32.22      -0.00      -0.00       0.00       0.30      -0.00       0.00       0.00

   52   8.1  1.0 -1.0      -0.51      -2.85      32.33      -0.00      -0.00      -0.00       0.30      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00     -31.30      -0.00       0.00      -0.00       0.00       0.00     136.98

   53   9.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      -0.00     -25.97       0.00       0.00    -111.53      -0.00
                            0.00      -0.00       0.00       0.00     -25.97       0.00      -0.00    -111.54      -0.00       0.00

   54  10.1  1.0 -1.0      -0.00       0.00       0.00      -0.00     -25.95      -0.00       0.00    -111.54      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      25.95       0.00      -0.00     111.54       0.00

   55  11.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      -0.00      19.27      -0.00      -0.00      88.10       0.00
                           -0.00      -0.00      -0.00      -0.00     -19.27      -0.00       0.00     -88.10      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00      -0.00      -0.00      -9.19      -0.00      -0.00      -0.00       0.00       0.00      35.49
                            0.88     -29.90       5.56      -0.00       0.00      -0.00      -0.51      -0.00       0.00       0.00

   57  13.1  1.0 -1.0       0.88     -28.09     -11.64      -0.00       0.00      -0.00      -0.51       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -9.19      -0.00      -0.00      -0.00      -0.00      -0.00      35.49

   58  14.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00     316.67      -0.00      -0.00    -646.58       0.00
                           -0.00      -0.00      -0.00       0.00    -316.67      -0.00       0.00     646.58      -0.00       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00     316.63       0.00       0.00      -0.00       0.00      -0.00     646.69
                         -423.05     214.66    -295.71      -0.00       0.00       0.00     252.18      -0.00       0.00       0.00

   60  16.1  1.0 -1.0    -423.05     148.68     333.79      -0.00       0.00      -0.00     252.18      -0.00      -0.00      -0.00
                            0.00       0.00       0.00     316.63       0.00       0.00      -0.00      -0.00      -0.00     646.69


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.01      -0.00       0.00      -0.00      -0.00      -0.51
                            0.00       0.00       0.00       0.01      -0.00       0.00       0.00       0.00      -0.51       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00     181.34      -0.00      -0.00       0.00       0.00      -2.85
                            0.00       0.00      -0.00     160.64      -0.00      -0.00       0.00      -0.00       3.91      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00      -0.00     -80.84       0.00      -0.00       0.00       0.00      32.33
                            0.00       0.00      -0.00     116.69      -0.00      -0.00      -0.00      -0.00     -32.22       0.00

    4   4.1  0.0  0.0       0.00       0.00      -0.00     -99.41       0.00       0.00      -0.00       0.00     -31.30      -0.00
                            0.00       0.00      -0.00      -0.00     -99.41       0.00       0.00       0.00      -0.00     -31.30

    5   5.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00    -172.11      99.38       0.00      -0.00      -0.00
                            0.00       0.00      99.41       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00      99.41      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00    -172.11     -99.38       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.30
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.30      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      19.64     -11.43      -0.01       0.00      -0.00
                            0.00       0.00     -11.42       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00     -11.42      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00      19.64      11.43      -0.01       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00      -0.00     -11.41       0.00      -0.00       0.00      -0.00     136.98      -0.00
                            0.00       0.00       0.00       0.00     -11.41       0.00       0.00       0.00       0.00     136.98

   11  11.1  0.0  0.0   32867.42       0.00       0.00       0.00     -10.70       0.00      -0.00       0.00       0.00    -136.59
                            0.00       0.00      -0.00      11.69       0.00      -0.00      -0.00      -0.00     136.54       0.00

   12  12.1  0.0  0.0       0.00   32867.42       0.00      -0.00     -19.74       0.00      -0.00      -0.00      -0.00      -2.53
                           -0.00       0.00       0.00     -19.17       0.00      -0.00      -0.00      -0.00       4.42       0.00

   13   1.1  1.0  1.0       0.00       0.00   15413.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00     244.67       0.00      -0.00      -0.00

   14   2.1  1.0  1.0       0.00      -0.00       0.00   15413.39       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.69      19.17       0.00      -0.00     122.36      -0.00       0.00       0.00       0.00      -0.13

   15   3.1  1.0  1.0     -10.70     -19.74       0.00       0.00   15413.39       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -122.36       0.00       0.00      -0.00       0.00       0.13       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   15413.44       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   17   5.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00   15413.48       0.00       0.00       0.00
                            0.00       0.00    -244.67      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   26600.23       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   32305.25       0.00
                         -136.54      -4.42       0.00      -0.00      -0.13       0.00      -0.00      -0.00      -0.00    -388.89

   20   8.1  1.0  1.0    -136.59      -2.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32305.25
                           -0.00      -0.00       0.00       0.13      -0.00      -0.00      -0.00      -0.00     388.89       0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00      15.07      -0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -15.08       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   23  11.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00     -20.62       0.00      -0.27      -0.00       0.00

   24  12.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           29.73     123.02      -0.00      -0.00      19.26      -0.00       0.00      -0.00       0.00      -5.67

   25  13.1  1.0  1.0      35.95    -121.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -19.26       0.00      -0.00      -0.00      -0.00       5.67      -0.00

   26  14.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      28.14      -0.00     102.07       0.00       0.00

   27  15.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          637.26     390.02      -0.00       0.00      24.65      -0.00      -0.00       0.00       0.00       1.65

   28  16.1  1.0  1.0     656.28    -357.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     -24.65       0.00       0.00       0.00       0.00      -1.65       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00     -86.53       0.00       0.00      -0.00       0.00     -13.16      -0.00
                          -31.66      -0.81       0.00      -0.00     -86.53       0.00      -0.00      -0.00      -0.00     -13.16

   30   2.1  1.0  0.0       0.00       0.00      86.53       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00    -149.83     -86.50      -0.00      -0.00      -0.00

   31   3.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00    -149.83      86.50      -0.00      -0.00      -0.00
                            0.00       0.00      86.53       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   32   4.1  1.0  0.0       0.00       0.00      -0.00       0.00     149.83      -0.00      -0.00       0.00       0.00       0.17
                           -0.00      -0.00      -0.00     149.83      -0.00      -0.00       0.00      -0.00       0.17       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00      -0.00     -86.50       0.00       0.00      -0.00      -0.00      13.25
                           -0.00      -0.00       0.00      86.50      -0.00      -0.00      -0.00      -0.00     -13.25       0.00

   34   6.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.09
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.09       0.00

   35   7.1  1.0  0.0       0.00       0.00      13.16      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.17      13.25       0.09       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      -0.17     -13.25       0.09       0.00      -0.00
                           -0.00       0.00      13.16       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00      -0.00      10.82       0.00      -0.00       0.00      -0.00     113.84       0.00
                          157.52       4.01      -0.00       0.00      10.82       0.00      -0.00      -0.00      -0.00     113.85

   38  10.1  1.0  0.0       0.00       0.00       0.00      -0.00      10.78       0.00      -0.00      -0.00      -0.00    -110.68
                           -0.00      -0.00       0.00     -10.78      -0.00       0.00      -0.00       0.00     110.68      -0.00

   39  11.1  1.0  0.0       0.00       0.00      -0.00      -8.29       0.00      -0.00       0.00      -0.00       2.41       0.00
                           -5.35     210.29       0.00      -0.00       8.29      -0.00       0.00       0.00       0.00      -2.42

   40  12.1  1.0  0.0       0.00       0.00       3.62       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      11.79      -3.35      -0.15      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      11.79       3.34      -0.15       0.00       0.00
                            0.00      -0.00       3.62      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   42  14.1  1.0  0.0       0.00       0.00      -0.00     -17.44       0.00      -0.00       0.00      -0.00       0.80      -0.00
                          -26.89    1056.52       0.00       0.00      17.44       0.00       0.00      -0.00      -0.00      -0.80

   43  15.1  1.0  0.0       0.00       0.00     -17.43       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00     -10.16      17.38      72.16       0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00     -10.16     -17.38      72.16      -0.00       0.00
                           -0.00      -0.00     -17.43      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           11.69     -19.17      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0     -10.70     -19.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          136.54       4.42      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0    -136.59      -2.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -29.73    -123.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0      35.95    -121.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -637.26    -390.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0     656.28    -357.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.88       0.00       0.00    -423.05       0.00       0.00
                            0.00      -0.00      -0.00       0.88       0.00      -0.00    -423.05       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00      -0.00      -0.00     -28.09       0.00       0.00     148.68       0.00       0.00
                           -0.00       0.00      -0.00     -29.90       0.00      -0.00     214.66       0.00     -29.27      -0.00

    3   3.1  0.0  0.0       0.00       0.00      -0.00      -0.00     -11.64      -0.00       0.00     333.79       0.00       0.00
                            0.00       0.00      -0.00       5.56       0.00      -0.00    -295.71       0.00     279.24       0.00

    4   4.1  0.0  0.0      -0.00      -0.00       0.00      -9.19      -0.00       0.00     316.63      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -9.19       0.00      -0.00     316.63      -0.00       0.00

    5   5.1  0.0  0.0      -0.00     -25.95      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.97       0.00     -19.27       0.00      -0.00    -316.67       0.00       0.00       0.00     140.59

    6   6.1  0.0  0.0     -25.97      -0.00      19.27      -0.00      -0.00     316.67       0.00      -0.00       0.00       0.00
                            0.00      25.95      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.51      -0.00      -0.00     252.18       0.00       0.00
                           -0.00       0.00       0.00      -0.51      -0.00       0.00     252.18      -0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00    -111.54      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                         -111.54      -0.00     -88.10      -0.00      -0.00     646.58      -0.00      -0.00       0.00     -16.14

    9   9.1  0.0  0.0    -111.53      -0.00      88.10       0.00      -0.00    -646.58      -0.00      -0.00       0.00       0.00
                           -0.00     111.54      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   10  10.1  0.0  0.0      -0.00       0.00       0.00      35.49      -0.00       0.00     646.69      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      35.49       0.00       0.00     646.69      -0.00      -0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00      -0.00      35.95       0.00      -0.00     656.28       0.00       0.00
                            0.00      -0.00      -0.00     -29.73       0.00      -0.00    -637.26      -0.00      31.66      -0.00

   12  12.1  0.0  0.0       0.00      -0.00      -0.00       0.00    -121.35      -0.00      -0.00    -357.10       0.00       0.00
                            0.00      -0.00      -0.00    -123.02       0.00      -0.00    -390.02       0.00       0.81      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      86.53
                           -0.00      15.08      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -86.53       0.00
                            0.00      -0.00       0.00       0.00      19.26       0.00      -0.00      24.65       0.00      -0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -19.26      -0.00       0.00     -24.65      -0.00      86.53       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      20.62       0.00       0.00     -28.14       0.00      -0.00      -0.00     149.83

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                          -15.07      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      86.50

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.27       0.00       0.00    -102.07      -0.00      -0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -13.16       0.00
                           -0.00       0.00       0.00      -0.00      -5.67      -0.00      -0.00       1.65       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       5.67       0.00      -0.00      -1.65      -0.00      13.16       0.00

   21   9.1  1.0  1.0   32305.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -10.82
                           -0.00     259.43      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   22  10.1  1.0  1.0       0.00   32305.49       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                         -259.43      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     -10.78

   23  11.1  1.0  1.0       0.00       0.00   32305.47       0.00       0.00       0.00       0.00       0.00       0.00       8.29
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   32305.49       0.00       0.00       0.00       0.00      -3.62      -0.00
                           -0.00       0.00       0.00      -0.00     129.69      -0.00       0.00      -1.68       0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   32305.49       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00    -129.69      -0.00       0.00       1.68      -0.00       3.62      -0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   32947.67       0.00       0.00       0.00      17.44
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   32947.84       0.00      17.43      -0.00
                            0.00       0.00      -0.00      -0.00      -1.68       0.00       0.00    1021.69       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32947.84      -0.00       0.00
                            0.00      -0.00      -0.00       1.68       0.00      -0.00   -1021.69       0.00     -17.43      -0.00

   29   1.1  1.0  0.0       0.00      -0.00       0.00      -3.62      -0.00       0.00      17.43      -0.00   15413.38       0.00
                            0.00      -0.00      -0.00      -0.00      -3.62      -0.00      -0.00      17.43       0.00       0.00

   30   2.1  1.0  0.0     -10.82       0.00       8.29      -0.00       0.00      17.44      -0.00       0.00       0.00   15413.39
                           -0.00      10.78       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   31   3.1  1.0  0.0      -0.00     -10.78      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                          -10.82       0.00      -8.29       0.00       0.00     -17.44      -0.00       0.00      -0.00      -0.00

   32   4.1  1.0  0.0       0.00      -0.00       0.00       0.00     -11.79       0.00      -0.00      10.16       0.00       0.00
                           -0.00      -0.00       0.00     -11.79       0.00      -0.00      10.16       0.00      -0.00      -0.00

   33   5.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -3.34      -0.00      -0.00      17.38       0.00       0.00
                            0.00       0.00      -0.00       3.35       0.00      -0.00     -17.38       0.00      -0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.15       0.00       0.00     -72.16       0.00       0.00
                            0.00      -0.00      -0.00       0.15      -0.00       0.00     -72.16      -0.00      -0.00      -0.00

   35   7.1  1.0  0.0    -113.84       0.00      -2.41      -0.00      -0.00      -0.80       0.00       0.00       0.00       0.00
                            0.00    -110.68      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   36   8.1  1.0  0.0      -0.00     110.68      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                         -113.85       0.00       2.42      -0.00      -0.00       0.80      -0.00       0.00      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00      -0.00    -143.72       0.00       0.00      -0.49       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -143.72       0.00       0.00      -0.49      -0.00      -0.00

   38  10.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00    -146.14      -0.00      -0.00      -0.23       0.00       0.00
                            0.00      -0.00       0.00     146.13      -0.00       0.00       0.23      -0.00      -0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00    -224.56       0.00      -0.00      -2.28       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     224.56       0.00       0.00       2.28      -0.00      -0.00

   40  12.1  1.0  0.0     143.72       0.00     224.56      -0.00      -0.00       2.01      -0.00      -0.00       0.00       0.00
                           -0.00    -146.13       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   41  13.1  1.0  0.0      -0.00     146.14      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                          143.72       0.00    -224.56      -0.00       0.00      -2.01       0.00       0.00      -0.00      -0.00

   42  14.1  1.0  0.0      -0.00       0.00       0.00      -2.01      -0.00      -0.00     722.44      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       2.01      -0.00      -0.00    -722.44      -0.00      -0.00

   43  15.1  1.0  0.0       0.49       0.00       2.28       0.00       0.00    -722.44       0.00       0.00       0.00       0.00
                           -0.00      -0.23      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   44  16.1  1.0  0.0      -0.00       0.23      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.49       0.00      -2.28      -0.00      -0.00     722.44      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -86.53
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      86.53       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      86.53       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     149.83

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      86.50

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      13.16      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      13.16       0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      10.82
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -10.78

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -8.29
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.62       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.62      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -17.44
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -17.43       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -17.43      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -1.61      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -3.83      -0.00     -50.98      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      36.52       0.00      -5.34      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -281.07       0.00       0.00      -0.00       0.00     -36.62       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.07      -0.00      -0.00      -0.00       0.00      45.53

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -140.59       0.00      -0.00      -0.00      -0.00      -0.06      -0.00      -0.00      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.94       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -3.22       0.00       0.00      -0.00       0.00     201.42

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           16.14       0.00      -0.00       0.00      -0.00       3.22       0.00       0.00      -0.00      -0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -31.93      -0.00       0.00       0.00      -0.00     157.72       0.00      -0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00    -157.52       0.00       5.35      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -4.01       0.00    -210.29       0.00

   13   1.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      13.16       0.00      -0.00       0.00      -0.00       3.62
                          -86.53       0.00      -0.00      -0.00      -0.00     -13.16       0.00      -0.00      -0.00      -0.00

   14   2.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      10.82      -0.00      -8.29       0.00
                           -0.00    -149.83     -86.50      -0.00      -0.00      -0.00      -0.00      10.78       0.00      -0.00

   15   3.1  1.0  1.0      -0.00     149.83     -86.50       0.00       0.00       0.00       0.00      10.78       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00     -10.82       0.00      -8.29       0.00

   16   4.1  1.0  1.0    -149.83      -0.00       0.00      -0.00      -0.00      -0.17      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.17       0.00      -0.00      -0.00       0.00     -11.79

   17   5.1  1.0  1.0      86.50      -0.00       0.00       0.00       0.00     -13.25       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00     -13.25       0.00       0.00       0.00      -0.00       3.35

   18   6.1  1.0  1.0      -0.00       0.00      -0.00       0.00      -0.00       0.09      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.09       0.00       0.00      -0.00      -0.00       0.15

   19   7.1  1.0  1.0      -0.00       0.00      -0.00       0.00      -0.00       0.00     113.84      -0.00       2.41       0.00
                            0.00      -0.17      13.25       0.09      -0.00       0.00       0.00    -110.68      -0.00       0.00

   20   8.1  1.0  1.0      -0.00       0.17      13.25      -0.09      -0.00      -0.00       0.00    -110.68       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -113.85       0.00       2.42      -0.00

   21   9.1  1.0  1.0      -0.00       0.00      -0.00       0.00    -113.84      -0.00       0.00      -0.00       0.00     143.72
                           10.82       0.00      -0.00      -0.00      -0.00     113.85       0.00      -0.00      -0.00       0.00

   22  10.1  1.0  1.0     -10.78      -0.00       0.00       0.00       0.00     110.68       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     110.68      -0.00       0.00       0.00       0.00     146.13

   23  11.1  1.0  1.0      -0.00       0.00      -0.00       0.00      -2.41      -0.00      -0.00      -0.00       0.00     224.56
                            8.29      -0.00       0.00       0.00       0.00      -2.42       0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  1.0      -0.00       0.00       0.00      -0.00      -0.00       0.00    -143.72      -0.00    -224.56      -0.00
                           -0.00      11.79      -3.35      -0.15      -0.00       0.00      -0.00    -146.13       0.00      -0.00

   25  13.1  1.0  1.0      -0.00     -11.79      -3.34       0.15      -0.00      -0.00       0.00    -146.14       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00     143.72       0.00    -224.56      -0.00

   26  14.1  1.0  1.0      -0.00       0.00      -0.00       0.00      -0.80       0.00       0.00      -0.00      -0.00       2.01
                           17.44       0.00       0.00      -0.00      -0.00      -0.80      -0.00      -0.00      -0.00       0.00

   27  15.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.49      -0.00      -2.28      -0.00
                            0.00     -10.16      17.38      72.16       0.00       0.00      -0.00      -0.23      -0.00       0.00

   28  16.1  1.0  1.0       0.00      10.16      17.38     -72.16       0.00      -0.00       0.00      -0.23       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.49       0.00      -2.28      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0   15413.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00   15413.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00   15413.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   26600.23       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   32305.25       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   32305.25       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   32305.28       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32305.49       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32305.47       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32305.49
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00      -0.00       0.00     -13.16      -0.00       0.00      -0.00       0.00      -3.62
                          -86.53       0.00      -0.00      -0.00      -0.00     -13.16       0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00     -10.82       0.00       8.29      -0.00
                           -0.00    -149.83     -86.50      -0.00      -0.00      -0.00      -0.00      10.78       0.00      -0.00

   47   3.1  1.0 -1.0      -0.00    -149.83      86.50      -0.00      -0.00      -0.00      -0.00     -10.78      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00     -10.82       0.00      -8.29       0.00

   48   4.1  1.0 -1.0     149.83      -0.00      -0.00       0.00       0.00       0.17       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.17       0.00      -0.00      -0.00       0.00     -11.79

   49   5.1  1.0 -1.0     -86.50       0.00       0.00      -0.00      -0.00      13.25      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -13.25       0.00       0.00       0.00      -0.00       3.35

   50   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00      -0.09       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.09       0.00       0.00      -0.00      -0.00       0.15

   51   7.1  1.0 -1.0       0.00      -0.00       0.00      -0.00      -0.00      -0.00    -113.84       0.00      -2.41      -0.00
                            0.00      -0.17      13.25       0.09       0.00       0.00       0.00    -110.68      -0.00       0.00

   52   8.1  1.0 -1.0       0.00      -0.17     -13.25       0.09       0.00      -0.00      -0.00     110.68      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00    -113.85       0.00       2.42      -0.00

   53   9.1  1.0 -1.0       0.00      -0.00       0.00      -0.00     113.84       0.00       0.00       0.00      -0.00    -143.72
                           10.82       0.00      -0.00      -0.00      -0.00     113.85      -0.00      -0.00      -0.00       0.00

   54  10.1  1.0 -1.0      10.78       0.00      -0.00      -0.00      -0.00    -110.68      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00     110.68      -0.00       0.00      -0.00       0.00     146.13

   55  11.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       2.41       0.00       0.00       0.00       0.00    -224.56
                            8.29      -0.00       0.00       0.00       0.00      -2.42       0.00      -0.00       0.00      -0.00

   56  12.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00      -0.00     143.72       0.00     224.56      -0.00
                           -0.00      11.79      -3.35      -0.15      -0.00       0.00      -0.00    -146.13       0.00       0.00

   57  13.1  1.0 -1.0       0.00      11.79       3.34      -0.15       0.00       0.00      -0.00     146.14      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00     143.72       0.00    -224.56      -0.00

   58  14.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       0.80      -0.00      -0.00       0.00       0.00      -2.01
                           17.44       0.00       0.00      -0.00      -0.00      -0.80      -0.00      -0.00      -0.00       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.49       0.00       2.28       0.00
                            0.00     -10.16      17.38      72.16       0.00       0.00      -0.00      -0.23      -0.00       0.00

   60  16.1  1.0 -1.0      -0.00     -10.16     -17.38      72.16      -0.00       0.00      -0.00       0.23      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.49       0.00      -2.28      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.01      -0.00       0.00      -0.00
                            0.00     598.31       0.00      -0.00      -0.00      -0.01       0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00     181.34      -0.00      -0.00       0.00
                           -0.00     513.91      -0.00      -0.00       0.00    -160.64       0.00       0.00      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     -80.84       0.00      -0.00       0.00
                           -0.00      53.86       0.00       0.00       0.00    -116.69       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     -99.41       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      99.41      -0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    -172.11      99.38       0.00
                           -0.00      -0.00     447.86      -0.00     -99.41      -0.00      -0.00      -0.00       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00      99.41      -0.00       0.00      -0.00      -0.00       0.00
                          -45.53      -0.00      -0.00    -447.86       0.00       0.00       0.00     172.11      99.38      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00    -356.66      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      19.64     -11.43      -0.01
                            0.00       0.00    -914.31       0.00      11.42      -0.00       0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00     -11.42      -0.00       0.00       0.00      -0.00      -0.00
                         -201.42       0.00       0.00     914.31       0.00       0.00      -0.00     -19.64     -11.43       0.01

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     -11.41       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      11.41      -0.00      -0.00      -0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00     -10.70       0.00      -0.00       0.00
                           -0.00      26.89      -0.00       0.00       0.00     -11.69      -0.00       0.00       0.00       0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     -19.74       0.00      -0.00      -0.00
                            0.00   -1056.52       0.00       0.00      -0.00      19.17      -0.00       0.00       0.00       0.00

   13   1.1  1.0  1.0       0.00      -0.00     -17.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.62      -0.00      -0.00      17.43       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0      -0.00     -17.44       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -17.44      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0      11.79      -0.00       0.00     -10.16       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      10.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       3.34       0.00       0.00     -17.38       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -17.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.15      -0.00      -0.00      72.16       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -72.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.80      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.80      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0      -0.00      -0.00       0.49      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -143.72       0.00       0.00      -0.49       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0     146.14       0.00       0.00       0.23       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.23      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0      -0.00       0.00       2.28      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          224.56       0.00       0.00       2.28       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00      -2.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -2.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00      -0.00    -722.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.01       0.00      -0.00    -722.44       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0      -0.00     722.44       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     722.44      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      86.53      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00     -86.53       0.00      -0.00      -0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00     -86.53       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -149.83     -86.50      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     149.83     -86.50       0.00
                            0.00       0.00       0.00       0.00      86.53       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00    -149.83      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00     149.83      -0.00       0.00       0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      86.50      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      86.50      -0.00      -0.00       0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00     -13.16       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.17      13.25       0.09

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.17      13.25      -0.09
                            0.00       0.00       0.00       0.00      13.16       0.00       0.00      -0.00      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00     -10.82      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      10.82       0.00      -0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00     -10.78      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     -10.78      -0.00       0.00      -0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       8.29      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       8.29      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00      -3.62      -0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      11.79      -3.35      -0.15

   41  13.1  1.0  0.0   32305.49       0.00       0.00       0.00      -0.00       0.00      -0.00     -11.79      -3.34       0.15
                            0.00       0.00       0.00       0.00       3.62      -0.00      -0.00      -0.00      -0.00       0.00

   42  14.1  1.0  0.0       0.00   32947.67       0.00       0.00       0.00      17.44      -0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      17.44       0.00       0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00   32947.84       0.00      17.43      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00     -10.16      17.38      72.16

   44  16.1  1.0  0.0       0.00       0.00       0.00   32947.84      -0.00       0.00       0.00      10.16      17.38     -72.16
                           -0.00      -0.00      -0.00       0.00     -17.43      -0.00      -0.00      -0.00      -0.00       0.00

   45   1.1  1.0 -1.0      -0.00       0.00      17.43      -0.00   15413.38       0.00       0.00       0.00       0.00       0.00
                           -3.62      -0.00      -0.00      17.43      -0.00       0.00       0.00      -0.00    -244.67      -0.00

   46   2.1  1.0 -1.0       0.00      17.44      -0.00       0.00       0.00   15413.39       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00    -122.36       0.00      -0.00      -0.00

   47   3.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00   15413.39       0.00       0.00       0.00
                            0.00     -17.44      -0.00       0.00      -0.00     122.36      -0.00      -0.00       0.00      -0.00

   48   4.1  1.0 -1.0     -11.79       0.00      -0.00      10.16       0.00       0.00       0.00   15413.44       0.00       0.00
                            0.00      -0.00      10.16       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   49   5.1  1.0 -1.0      -3.34      -0.00      -0.00      17.38       0.00       0.00       0.00       0.00   15413.48       0.00
                            0.00      -0.00     -17.38       0.00     244.67       0.00      -0.00       0.00      -0.00       0.00

   50   6.1  1.0 -1.0       0.15       0.00       0.00     -72.16       0.00       0.00       0.00       0.00       0.00   26600.23
                           -0.00       0.00     -72.16      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00      -0.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.13      -0.00       0.00       0.00

   52   8.1  1.0 -1.0      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.80      -0.00       0.00      -0.00      -0.13       0.00       0.00       0.00       0.00

   53   9.1  1.0 -1.0       0.00       0.00      -0.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -143.72       0.00       0.00      -0.49      -0.00       0.00       0.00       0.00     -15.07       0.00

   54  10.1  1.0 -1.0    -146.14      -0.00      -0.00      -0.23       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.23      -0.00      15.08      -0.00      -0.00      -0.00      -0.00       0.00

   55  11.1  1.0 -1.0       0.00      -0.00      -2.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          224.56       0.00       0.00       2.28      -0.00       0.00       0.00      20.62      -0.00       0.27

   56  12.1  1.0 -1.0      -0.00       2.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00     -19.26       0.00      -0.00       0.00

   57  13.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -2.01       0.00       0.00       0.00      19.26      -0.00       0.00       0.00       0.00

   58  14.1  1.0 -1.0      -0.00      -0.00     722.44      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.01      -0.00      -0.00    -722.44       0.00       0.00       0.00     -28.14       0.00    -102.07

   59  15.1  1.0 -1.0       0.00    -722.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00     -24.65       0.00       0.00      -0.00

   60  16.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     722.44      -0.00      -0.00       0.00      24.65      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0      -0.00      -0.51      -0.00      -0.00       0.00       0.00       0.88       0.00       0.00    -423.05
                            0.51      -0.00      -0.00       0.00       0.00      -0.88      -0.00       0.00     423.05      -0.00

    2   2.1  0.0  0.0       0.00      -2.85       0.00       0.00      -0.00      -0.00     -28.09       0.00       0.00     148.68
                           -3.91       0.00       0.00      -0.00       0.00      29.90      -0.00       0.00    -214.66      -0.00

    3   3.1  0.0  0.0       0.00      32.33       0.00       0.00      -0.00      -0.00     -11.64      -0.00       0.00     333.79
                           32.22      -0.00      -0.00      -0.00       0.00      -5.56      -0.00       0.00     295.71      -0.00

    4   4.1  0.0  0.0     -31.30      -0.00      -0.00      -0.00       0.00      -9.19      -0.00       0.00     316.63      -0.00
                            0.00      31.30      -0.00      -0.00       0.00       0.00       9.19      -0.00       0.00    -316.63

    5   5.1  0.0  0.0      -0.00      -0.00      -0.00     -25.95      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      25.97      -0.00      19.27      -0.00       0.00     316.67      -0.00      -0.00

    6   6.1  0.0  0.0       0.00      -0.00     -25.97      -0.00      19.27      -0.00      -0.00     316.67       0.00      -0.00
                           -0.00      -0.00      -0.00     -25.95       0.00       0.00       0.00       0.00      -0.00      -0.00

    7   7.1  0.0  0.0      -0.00       0.30       0.00       0.00      -0.00      -0.00      -0.51      -0.00      -0.00     252.18
                           -0.30       0.00       0.00      -0.00      -0.00       0.51       0.00      -0.00    -252.18       0.00

    8   8.1  0.0  0.0       0.00      -0.00       0.00    -111.54      -0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00     111.54       0.00      88.10       0.00       0.00    -646.58       0.00       0.00

    9   9.1  0.0  0.0       0.00      -0.00    -111.53      -0.00      88.10       0.00      -0.00    -646.58      -0.00      -0.00
                           -0.00      -0.00       0.00    -111.54       0.00      -0.00       0.00       0.00      -0.00       0.00

   10  10.1  0.0  0.0     136.98      -0.00      -0.00       0.00       0.00      35.49      -0.00       0.00     646.69      -0.00
                           -0.00    -136.98      -0.00      -0.00       0.00      -0.00     -35.49      -0.00      -0.00    -646.69

   11  11.1  0.0  0.0       0.00    -136.59       0.00       0.00       0.00      -0.00      35.95       0.00      -0.00     656.28
                         -136.54      -0.00      -0.00       0.00       0.00      29.73      -0.00       0.00     637.26       0.00

   12  12.1  0.0  0.0      -0.00      -2.53       0.00      -0.00      -0.00       0.00    -121.35      -0.00      -0.00    -357.10
                           -4.42      -0.00      -0.00       0.00       0.00     123.02      -0.00       0.00     390.02      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0      13.16       0.00      -0.00       0.00      -0.00       3.62       0.00      -0.00     -17.43       0.00
                           -0.00     -13.16       0.00      -0.00      -0.00      -0.00      -3.62      -0.00      -0.00      17.43

   30   2.1  1.0  0.0      -0.00      -0.00      10.82      -0.00      -8.29       0.00      -0.00     -17.44       0.00      -0.00
                           -0.00      -0.00      -0.00      10.78       0.00      -0.00       0.00      -0.00      -0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00      10.78       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00     -10.82       0.00      -8.29       0.00       0.00     -17.44      -0.00       0.00

   32   4.1  1.0  0.0      -0.00      -0.17      -0.00       0.00      -0.00      -0.00      11.79      -0.00       0.00     -10.16
                            0.17       0.00      -0.00      -0.00       0.00     -11.79       0.00      -0.00      10.16       0.00

   33   5.1  1.0  0.0       0.00     -13.25       0.00      -0.00       0.00      -0.00       3.34       0.00       0.00     -17.38
                          -13.25       0.00       0.00       0.00      -0.00       3.35       0.00      -0.00     -17.38       0.00

   34   6.1  1.0  0.0      -0.00       0.09      -0.00      -0.00      -0.00       0.00      -0.15      -0.00      -0.00      72.16
                           -0.09       0.00       0.00      -0.00      -0.00       0.15      -0.00       0.00     -72.16      -0.00

   35   7.1  1.0  0.0      -0.00       0.00     113.84      -0.00       2.41       0.00       0.00       0.80      -0.00      -0.00
                           -0.00       0.00       0.00    -110.68      -0.00       0.00       0.00       0.00      -0.00      -0.00

   36   8.1  1.0  0.0      -0.00      -0.00       0.00    -110.68       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00    -113.85       0.00       2.42      -0.00      -0.00       0.80      -0.00       0.00

   37   9.1  1.0  0.0    -113.84      -0.00       0.00      -0.00       0.00     143.72      -0.00      -0.00       0.49      -0.00
                           -0.00     113.85       0.00      -0.00      -0.00       0.00    -143.72       0.00       0.00      -0.49

   38  10.1  1.0  0.0       0.00     110.68       0.00      -0.00       0.00       0.00     146.14       0.00       0.00       0.23
                          110.68      -0.00       0.00       0.00       0.00     146.13      -0.00       0.00       0.23      -0.00

   39  11.1  1.0  0.0      -2.41      -0.00      -0.00      -0.00       0.00     224.56      -0.00       0.00       2.28      -0.00
                            0.00      -2.42       0.00      -0.00      -0.00      -0.00     224.56       0.00       0.00       2.28

   40  12.1  1.0  0.0      -0.00       0.00    -143.72      -0.00    -224.56      -0.00       0.00      -2.01       0.00       0.00
                           -0.00       0.00      -0.00    -146.13       0.00      -0.00       0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0      -0.00      -0.00       0.00    -146.14       0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00     143.72       0.00    -224.56      -0.00      -0.00      -2.01       0.00       0.00

   42  14.1  1.0  0.0      -0.80       0.00       0.00      -0.00      -0.00       2.01       0.00      -0.00    -722.44       0.00
                           -0.00      -0.80      -0.00      -0.00      -0.00       0.00       2.01       0.00      -0.00    -722.44

   43  15.1  1.0  0.0       0.00       0.00      -0.49      -0.00      -2.28      -0.00      -0.00     722.44       0.00      -0.00
                            0.00       0.00      -0.00      -0.23      -0.00       0.00      -0.00       0.00       0.00       0.00

   44  16.1  1.0  0.0       0.00      -0.00       0.00      -0.23       0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.49       0.00      -2.28      -0.00      -0.00     722.44      -0.00       0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -15.08       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.13      -0.00       0.00      -0.00      -0.00     -19.26      -0.00       0.00     -24.65

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.13      -0.00      -0.00       0.00      -0.00      19.26       0.00      -0.00      24.65       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00     -20.62      -0.00      -0.00      28.14      -0.00       0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      15.07       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.27      -0.00      -0.00     102.07       0.00       0.00

   51   7.1  1.0 -1.0   32305.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     388.89       0.00      -0.00      -0.00       0.00       5.67       0.00       0.00      -1.65

   52   8.1  1.0 -1.0       0.00   32305.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -388.89      -0.00       0.00       0.00       0.00      -5.67      -0.00       0.00       1.65       0.00

   53   9.1  1.0 -1.0       0.00       0.00   32305.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -259.43       0.00      -0.00       0.00      -0.00       0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   32305.49       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     259.43       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   32305.47       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   32305.49       0.00       0.00       0.00       0.00
                           -0.00       5.67       0.00      -0.00      -0.00       0.00    -129.69       0.00      -0.00       1.68

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   32305.49       0.00       0.00       0.00
                           -5.67       0.00      -0.00      -0.00       0.00     129.69       0.00      -0.00      -1.68       0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32947.67       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32947.84       0.00
                           -0.00      -1.65      -0.00      -0.00       0.00       0.00       1.68      -0.00      -0.00   -1021.69

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32947.84
                            1.65      -0.00      -0.00       0.00       0.00      -1.68      -0.00       0.00    1021.69      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by -24985.14348906 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   18302.223       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   18302.223       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   18302.226       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   18302.227       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   18302.228       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   27770.006       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   32867.427
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000     140.581       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000      -0.000    -140.591       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.011     256.454    -114.330       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000    -243.406      -0.000      -0.000      27.770
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.000      -0.000      -0.000     140.540      -0.000       0.000     -16.166
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000       0.000       0.000       0.000       0.003       0.000       0.000      -0.007
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000     -44.261      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.714      -4.037      45.723      -0.000      -0.000      -0.000       0.425      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000     -36.728       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000       0.000      -0.000     -36.703      -0.000       0.000    -157.740
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      27.258      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000      -0.000      -0.000     -12.995      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              1.240     -39.732     -16.465      -0.000       0.000      -0.000      -0.727       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000     447.837      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000     447.782       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+           -598.288     210.272     472.051      -0.000       0.000      -0.000     356.631      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      29.267    -279.242       0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000    -140.586       0.000      -0.000      16.139

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000     140.586       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.001       0.000      -0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     281.069      -0.000       0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.065       0.000       0.000       3.220

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.064       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       3.828     -36.518      -0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      36.620       0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.612      50.980       5.344      -0.000      -0.000       0.000      -0.941      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -45.527      -0.000      -0.000    -201.419

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      45.527       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -598.307    -513.907     -53.863      -0.000       0.000       0.000     356.664      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000    -447.858       0.000       0.000     914.310

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000     447.858      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000    -140.580       0.000      -0.000      16.157

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.011    -227.175    -165.020       0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     140.591      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000     243.407       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000     140.538       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.003       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.714      -5.530      45.566       0.000       0.000      -0.000      -0.425       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      44.261       0.000      -0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      36.729      -0.000       0.000     157.735

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000     -36.703      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      27.258       0.000      -0.000     124.586

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.240      42.282      -7.870       0.000      -0.000       0.000       0.727       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      12.996       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     447.837       0.000      -0.000    -914.403

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              598.288    -303.578     418.195       0.000      -0.000      -0.000    -356.631       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000    -447.782      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.011      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000     256.454      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000    -114.330       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000      -0.000    -140.591       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000    -243.406
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000     140.581      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      27.770
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           32867.427       0.000       0.000       0.000     -16.157      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   32867.428       0.000       0.000      -0.000     -16.141       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   32867.425       0.000       0.000       0.000     -15.133       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   32867.421       0.000      -0.000     -27.916       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+            -16.157      -0.000       0.000       0.000   15413.383       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000     -16.141       0.000      -0.000       0.000   15413.385       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000     -15.133     -27.916       0.000       0.000   15413.385       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000   15413.441
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000     193.725       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000      -0.000    -193.169      -3.581       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+           -157.734      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+            124.589       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000      50.185      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000      -0.000      50.839    -171.613       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+           -914.404       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000     914.557      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000      -0.000     928.117    -505.018       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000     -31.663      -0.806       0.000      -0.000    -122.369       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000    -211.893

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                              -16.139      -0.000       0.000       0.000     122.369       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000     211.893      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000      31.928      -0.000      -0.000       0.000     122.331      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.003      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.241

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -3.225      -0.000      -0.000       0.000      18.606       0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000     157.519       4.010      -0.000       0.000      15.307       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000    -157.718      -0.000      -0.000       0.000     -15.243      -0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      -5.353     210.293       0.000      -0.000      11.725      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      16.668

   13    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                              201.420       0.000       0.000      -0.000       5.115      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000     -26.889    1056.521       0.000       0.000      24.667       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000     -14.362

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -914.309      -0.000      -0.000      -0.000     -24.655      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.001

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -16.533      27.110       0.000      -0.000     122.364      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      16.141      -0.000      -0.000       0.000    -122.364       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -27.770      -0.000       0.000       0.000      -0.001       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -16.166      -0.000       0.000       0.000    -244.673      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.007      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -193.100      -6.247       0.000      -0.000      -0.134       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -193.725      -0.000      -0.000       0.000       0.134      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -157.740      -0.000       0.000       0.000     -15.077       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000     -20.623

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      42.047     173.977      -0.000      -0.000      19.257      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -50.188      -0.000      -0.000      -0.000     -19.257       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      28.144

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     901.226     551.577      -0.000       0.000      24.651      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -914.557       0.000      -0.000      -0.000     -24.651       0.000       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000      -0.000      -0.000      -0.714      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000       0.000       0.000      -4.037       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000       0.000       0.000      45.723       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000       0.000     -44.261      -0.000      -0.000      -0.000       0.000     -12.995
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>             140.540       0.003      -0.000      -0.000      -0.000     -36.703      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              -0.000       0.000       0.000      -0.000     -36.728      -0.000      27.258      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000      -0.000       0.425       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>             -16.166      -0.007       0.000      -0.000       0.000    -157.740      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>              -0.000      -0.000       0.000      -0.000    -157.734      -0.000     124.589       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000      -0.000     193.725      -0.000      -0.000       0.000       0.000      50.185
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>              -0.000       0.000       0.000    -193.169       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>              -0.000      -0.000      -0.000      -3.581       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+          15413.476       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   26600.226       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   32305.246       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   32305.246       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   32305.282       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   32305.487       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   32305.468       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   32305.491
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000     -18.606       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                             -122.331      -0.003      -0.000      -0.000      -0.000      15.243       0.000      -0.000

    3    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000     -15.307       0.000     -11.725       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.241       0.000      -0.000      -0.000       0.000     -16.668

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000     -18.739       0.000       0.000       0.000      -0.000       4.731

    6    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.124       0.000       0.000      -0.000      -0.000       0.211

    7    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               18.739       0.124       0.000       0.000       0.000    -156.522      -0.000       0.000

    8    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000    -161.001       0.000       3.420      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.000     161.001       0.000      -0.000      -0.000       0.000

   10    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000     156.522      -0.000       0.000       0.000       0.000     206.664

   11    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -3.420       0.000      -0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -4.731      -0.211      -0.000       0.000      -0.000    -206.664       0.000       0.000

   13    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000     203.248       0.000    -317.576      -0.000

   14    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -1.135      -0.000      -0.000      -0.000       0.000

   15    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               24.580     102.049       0.000       0.000      -0.000      -0.331      -0.000       0.000

   16    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.699       0.000      -3.228      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              244.673       0.000      -0.000      -0.000      -0.000      15.077      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.134       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.134       0.000       0.000      -0.000       0.000     -19.257

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      20.623       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     -15.074      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.274       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000    -388.892      -0.000       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     388.892       0.000      -0.000      -0.000      -0.000       5.669

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.074      -0.000       0.000       0.000      -0.000     259.428      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000    -259.428      -0.000       0.002      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.274      -0.000       0.000       0.000      -0.002       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -5.669      -0.000       0.000       0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       5.674      -0.000       0.000       0.000      -0.000    -129.687

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     102.074       0.000       0.000      -0.000       0.000      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       1.645       0.000       0.000      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -1.645       0.000       0.000      -0.000      -0.000       1.677

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               1.240       0.000       0.000    -598.288       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |0 0>             -39.732       0.000       0.000     210.272       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -29.267      -0.000      -0.000      -0.000

    3    1  |0 0>             -16.465      -0.000       0.000     472.051       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     279.242       0.000      -0.000       0.000

    4    1  |0 0>              -0.000       0.000     447.782      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.001

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     140.586      -0.000      -0.000

    6    1  |0 0>              -0.000     447.837       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000    -140.586       0.000

    7    1  |0 0>              -0.727      -0.000      -0.000     356.631       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    8    1  |0 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -16.139      -0.000       0.000

    9    1  |0 0>              -0.000    -914.404      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      16.139       0.000

   10    1  |0 0>              -0.000       0.000     914.557      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   11    1  |0 0>              50.839       0.000      -0.000     928.117       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      31.663      -0.000      -0.000       0.000

   12    1  |0 0>            -171.613      -0.000      -0.000    -505.018       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.806      -0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000    -122.369       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000    -211.893

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000     122.369       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000     211.893      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000     122.331      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.003      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.241

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      18.606       0.000       0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      15.307       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000     -15.243      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      11.725      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      16.668

   13    1  |1 1>+          32305.491       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       5.115      -0.000      -0.000      -0.000

   14    1  |1 1>+              0.000   32947.671       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      24.667       0.000

   15    1  |1 1>+              0.000       0.000   32947.840       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -14.362

   16    1  |1 1>+              0.000       0.000       0.000   32947.840       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -24.655      -0.000      -0.000      -0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.000   15413.383       0.000       0.000       0.000
                               -5.115      -0.000      -0.000      24.655       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000   15413.385       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000   15413.385       0.000
                                0.000     -24.667      -0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000   15413.441
                                0.000      -0.000      14.362       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -24.580       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -102.049      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       1.135      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -203.248       0.000       0.000      -0.699      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.331      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              317.576       0.000       0.000       3.228      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -2.843       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                2.843       0.000      -0.000   -1021.690      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1021.690      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     122.369      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000    -122.369       0.000      -0.000       0.000
                               19.257       0.000      -0.000      24.651      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     211.892
                               -0.000       0.000     -24.651      -0.000       0.000      -0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000    -211.892       0.000
                                0.000     -28.144       0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000     122.333      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.003       0.000
                                0.000    -102.074      -0.000      -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000     -18.606       0.000      -0.000       0.000
                               -5.674      -0.000      -0.000       1.645       0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.242
                                0.000      -0.000      -1.645      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     -15.307      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000     -15.242      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      11.725      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -5.114      -0.000      -0.000       0.000
                              129.687      -0.000       0.000      -1.677      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000     -16.668
                               -0.000       0.000       1.677      -0.000      -0.000      -0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      24.667      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000      24.655      -0.000      -0.000      -0.000
                               -1.677       0.000       0.000    1021.689       0.000       0.000      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      14.363
                                0.000      -0.000   -1021.689       0.000       0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -1.612      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -3.828      -0.000     -50.980      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      36.518       0.000      -5.344      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -281.069       0.000       0.000      -0.000       0.000     -36.620       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.065      -0.000      -0.000      -0.000       0.000      45.527

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.064      -0.000      -0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.941       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -3.220       0.000       0.000      -0.000       0.000     201.419

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       3.225       0.000       0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -31.928      -0.000       0.000       0.000      -0.000     157.718       0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000    -157.519       0.000       5.353      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -4.010       0.000    -210.293       0.000

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000     -18.606       0.000      -0.000      -0.000      -0.000

    2    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                             -122.331      -0.003      -0.000      -0.000      -0.000      15.243       0.000      -0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000     -15.307       0.000     -11.725       0.000

    4    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.241       0.000      -0.000      -0.000       0.000     -16.668

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000     -18.739       0.000       0.000       0.000      -0.000       4.731

    6    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.124       0.000       0.000      -0.000      -0.000       0.211

    7    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               18.739       0.124       0.000       0.000       0.000    -156.522      -0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000    -161.001       0.000       3.420      -0.000

    9    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.000     161.001       0.000      -0.000      -0.000       0.000

   10    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000     156.522      -0.000       0.000       0.000       0.000     206.664

   11    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -3.420       0.000      -0.000       0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -4.731      -0.211      -0.000       0.000      -0.000    -206.664       0.000       0.000

   13    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000     203.248       0.000    -317.576      -0.000

   14    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -1.135      -0.000      -0.000      -0.000       0.000

   15    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               24.580     102.049       0.000       0.000      -0.000      -0.331      -0.000       0.000

   16    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.699       0.000      -3.228      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           15413.476       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   26600.226       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   32305.246       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   32305.246       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   32305.282       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   32305.487       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   32305.468       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   32305.491
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000      18.606       0.000      -0.000       0.000      -0.000       5.114
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    2    1  |1 1>-             -0.000      -0.000      -0.000      -0.000      15.307      -0.000     -11.725       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-           -122.333       0.003       0.000       0.000       0.000      15.242       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000      -0.000      -0.000      -0.242      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000     -18.739       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-             -0.000       0.000      -0.000       0.124      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-             -0.000       0.000       0.000       0.000     160.998      -0.000       3.412       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 1>-             18.739      -0.124      -0.000       0.000       0.000    -156.519       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 1>-             -0.000       0.000    -160.998      -0.000       0.000      -0.000       0.000     203.255
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000     156.519       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   11    1  |1 1>-             -0.000       0.000      -3.412      -0.000      -0.000      -0.000       0.000     317.573
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000      -0.000      -0.000       0.000    -203.255      -0.000    -317.573       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   13    1  |1 1>-             -4.730       0.211      -0.000      -0.000       0.000    -206.667       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   14    1  |1 1>-             -0.000       0.000      -1.135       0.000       0.000      -0.000      -0.000       2.843
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-             -0.000       0.000       0.000       0.000      -0.699      -0.000      -3.227      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   16    1  |1 1>-             24.580    -102.049       0.000      -0.000       0.000      -0.331       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     598.307       0.000      -0.000       0.000       0.011      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     513.907      -0.000      -0.000      -0.000     227.175      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      53.863       0.000       0.000      -0.000     165.020      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000    -140.591       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     447.858      -0.000     140.580       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -45.527      -0.000      -0.000    -447.858      -0.000      -0.000      -0.000    -243.407

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -356.664      -0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -914.310       0.000     -16.157       0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -201.420       0.000       0.000     914.309      -0.000      -0.000       0.000      27.770

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000     -16.141       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      26.889      -0.000       0.000      -0.000      16.533       0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1056.521       0.000       0.000       0.000     -27.110       0.000      -0.000

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -5.115      -0.000      -0.000      24.655       0.000      -0.000      -0.000       0.001

    2    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000     122.364      -0.000

    3    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -24.667      -0.000       0.000       0.000    -122.364       0.000       0.000

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      14.362       0.000      -0.001       0.000      -0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -24.580       0.000    -244.673      -0.000       0.000      -0.000

    6    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -102.049      -0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.134       0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       1.135      -0.000       0.000       0.000       0.134      -0.000      -0.000

    9    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -203.248       0.000       0.000      -0.699       0.000      -0.000      -0.000      -0.000

   10    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.331      -0.000     -15.077       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              317.576       0.000       0.000       3.228       0.000      -0.000      -0.000     -20.623

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      19.257      -0.000

   13    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -2.843       0.000       0.000      -0.000     -19.257       0.000      -0.000

   14    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                2.843       0.000      -0.000   -1021.690      -0.000      -0.000      -0.000      28.144

   15    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      24.651      -0.000

   16    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1021.690      -0.000       0.000      -0.000     -24.651       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000    -122.369       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000     122.369       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000    -211.892
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000     211.892       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000    -122.333       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.003      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      18.606      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.242
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      15.307       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      15.242       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000     -11.725       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       5.114       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   13    1  |1 0>           32305.491       0.000       0.000       0.000       0.000      -0.000       0.000      16.668
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000   32947.671       0.000       0.000      -0.000     -24.667       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000   32947.840       0.000     -24.655       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000   32947.840       0.000      -0.000      -0.000     -14.363
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000      -0.000     -24.655       0.000   15413.383       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000     -24.667       0.000      -0.000       0.000   15413.385       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000   15413.385       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             16.668      -0.000       0.000     -14.363       0.000       0.000       0.000   15413.441
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              4.730       0.000       0.000     -24.580       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.211      -0.000      -0.000     102.049       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       1.135      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-             -0.000      -0.000       0.699      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-            206.667       0.000       0.000       0.331       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-             -0.000       0.000       3.227      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000      -2.843       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000   -1021.690       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-             -0.000    1021.690       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.714       0.000       0.000      -0.000      -0.000       1.240

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       5.530      -0.000      -0.000       0.000      -0.000     -42.282

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -45.566       0.000       0.000       0.000      -0.000       7.870

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -44.261       0.000       0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000     -36.729       0.000     -27.258       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -140.538       0.003       0.000       0.000       0.000      36.703      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.425      -0.000      -0.000       0.000       0.000      -0.727

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000    -157.735      -0.000    -124.586      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               16.166      -0.007       0.000       0.000      -0.000     157.740      -0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     193.725       0.000       0.000      -0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     193.100       0.000       0.000      -0.000      -0.000     -42.047

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       6.247       0.000       0.000      -0.000      -0.000    -173.977

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              244.673       0.000      -0.000      -0.000      -0.000      15.077      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.134       0.000      -0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.134       0.000       0.000      -0.000       0.000     -19.257

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      20.623       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000     -15.074      -0.000      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.274       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000    -388.892      -0.000       0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     388.892       0.000      -0.000      -0.000      -0.000       5.669

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.074      -0.000       0.000       0.000      -0.000     259.428      -0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000    -259.428      -0.000       0.002      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.274      -0.000       0.000       0.000      -0.002       0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -5.669      -0.000       0.000       0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       5.674      -0.000       0.000       0.000      -0.000    -129.687

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     102.074       0.000       0.000      -0.000       0.000      -0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       1.645       0.000       0.000      -0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -1.645       0.000       0.000      -0.000      -0.000       1.677

    1    1  |1 0>              -0.000       0.000     -18.606      -0.000       0.000      -0.000       0.000      -5.114
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000     -15.307       0.000      11.725      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 0>             122.333      -0.003      -0.000      -0.000      -0.000     -15.242      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000       0.242       0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000      -0.000      -0.000      18.739      -0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000      -0.124       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000      -0.000    -160.998       0.000      -3.412      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>             -18.739       0.124       0.000       0.000      -0.000     156.519      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000     160.998       0.000       0.000       0.000      -0.000    -203.255
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   10    1  |1 0>              -0.000      -0.000      -0.000    -156.519      -0.000       0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000      -0.000       3.412       0.000       0.000       0.000       0.000    -317.573
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   12    1  |1 0>              -0.000       0.000       0.000      -0.000     203.255       0.000     317.573       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   13    1  |1 0>               4.730      -0.211       0.000       0.000      -0.000     206.667      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   14    1  |1 0>               0.000      -0.000       1.135      -0.000      -0.000       0.000       0.000      -2.843
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

   15    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.699       0.000       3.227       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   16    1  |1 0>             -24.580     102.049      -0.000       0.000      -0.000       0.331      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          15413.476       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   26600.226       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   32305.246       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   32305.246       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   32305.282       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   32305.487       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   32305.468       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   32305.491
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       57          58          59          60

    1    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000    -598.288       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000     303.578       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000    -418.195       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000
                              -12.996       0.000      -0.000     447.782

    5    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000    -447.837       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000     356.631      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     914.403      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000
                               50.188       0.000       0.000     914.557

   11    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000    -901.226      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000    -551.577       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                               19.257       0.000      -0.000      24.651

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000     -24.651      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000     -28.144       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000    -102.074      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                               -5.674      -0.000      -0.000       1.645

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -1.645      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                              129.687      -0.000       0.000      -1.677

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       1.677      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                               -1.677       0.000       0.000    1021.689

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000   -1021.689       0.000

    1    1  |1 0>              -0.000       0.000      24.655      -0.000
                                0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000      24.667      -0.000       0.000
                                0.000       0.000      -0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000

    4    1  |1 0>             -16.668       0.000      -0.000      14.363
                               -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -4.730      -0.000      -0.000      24.580
                               -0.000       0.000       0.000       0.000

    6    1  |1 0>               0.211       0.000       0.000    -102.049
                               -0.000       0.000      -0.000       0.000

    7    1  |1 0>              -0.000      -1.135       0.000       0.000
                               -0.000       0.000       0.000      -0.000

    8    1  |1 0>              -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000      -0.699       0.000
                                0.000       0.000       0.000       0.000

   10    1  |1 0>            -206.667      -0.000      -0.000      -0.331
                                0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000      -0.000      -3.227       0.000
                               -0.000      -0.000       0.000      -0.000

   12    1  |1 0>              -0.000       2.843      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000

   14    1  |1 0>              -0.000       0.000    1021.690      -0.000
                                0.000      -0.000       0.000       0.000

   15    1  |1 0>               0.000   -1021.690       0.000       0.000
                               -0.000       0.000      -0.000       0.000

   16    1  |1 0>              -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   13    1  |1 1>-          32305.491       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   32947.671       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   32947.840       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   32947.840
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-24985.14364728    -0.00015822      -34.72      0.00000000        0.00      0.0000
    2-24985.07493297     0.06855609    15046.32      0.06871431    15081.05      1.8698
    3-24985.07493293     0.06855613    15046.33      0.06871435    15081.06      1.8698
    4-24985.07493292     0.06855613    15046.33      0.06871435    15081.06      1.8698
    5-24985.07399856     0.06949049    15251.40      0.06964871    15286.13      1.8952
    6-24985.07399855     0.06949051    15251.40      0.06964873    15286.13      1.8952
    7-24985.07399855     0.06949051    15251.40      0.06964873    15286.13      1.8952
    8-24985.07399846     0.06949059    15251.42      0.06964881    15286.15      1.8952
    9-24985.07399845     0.06949061    15251.43      0.06964882    15286.15      1.8952
   10-24985.07214586     0.07134320    15658.02      0.07150142    15692.75      1.9457
   11-24985.07214582     0.07134324    15658.03      0.07150145    15692.76      1.9457
   12-24985.07214582     0.07134324    15658.03      0.07150145    15692.76      1.9457
   13-24985.07214576     0.07134330    15658.04      0.07150152    15692.77      1.9457
   14-24985.07214574     0.07134332    15658.05      0.07150154    15692.77      1.9457
   15-24985.07214574     0.07134332    15658.05      0.07150154    15692.77      1.9457
   16-24985.07214568     0.07134338    15658.06      0.07150160    15692.79      1.9457
   17-24985.06003750     0.08345156    18315.50      0.08360978    18350.23      2.2751
   18-24985.06003742     0.08345164    18315.52      0.08360986    18350.24      2.2751
   19-24985.06003707     0.08345199    18315.60      0.08361021    18350.32      2.2751
   20-24985.06003706     0.08345200    18315.60      0.08361021    18350.32      2.2751
   21-24985.06003705     0.08345201    18315.60      0.08361022    18350.32      2.2752
   22-24985.02230732     0.12118174    26596.32      0.12133995    26631.04      3.3018
   23-24985.02230732     0.12118174    26596.32      0.12133995    26631.04      3.3018
   24-24985.02230732     0.12118174    26596.32      0.12133996    26631.04      3.3018
   25-24985.01748818     0.12600088    27654.00      0.12615910    27688.72      3.4330
   26-24985.00199152     0.14149754    31055.12      0.14165575    31089.84      3.8546
   27-24984.99950796     0.14398110    31600.20      0.14413932    31634.92      3.9222
   28-24984.99950489     0.14398417    31600.87      0.14414238    31635.60      3.9223
   29-24984.99950489     0.14398417    31600.87      0.14414239    31635.60      3.9223
   30-24984.99950397     0.14398509    31601.07      0.14414331    31635.80      3.9223
   31-24984.99950365     0.14398540    31601.14      0.14414362    31635.87      3.9223
   32-24984.99800519     0.14548386    31930.02      0.14564208    31964.74      3.9631
   33-24984.99800519     0.14548387    31930.02      0.14564208    31964.74      3.9631
   34-24984.99800480     0.14548426    31930.10      0.14564247    31964.83      3.9631
   35-24984.99688581     0.14660324    32175.69      0.14676146    32210.42      3.9936
   36-24984.99688581     0.14660325    32175.69      0.14676146    32210.42      3.9936
   37-24984.99688540     0.14660366    32175.78      0.14676188    32210.51      3.9936
   38-24984.99688534     0.14660372    32175.80      0.14676194    32210.52      3.9936
   39-24984.99688534     0.14660372    32175.80      0.14676194    32210.52      3.9936
   40-24984.99688529     0.14660377    32175.81      0.14676199    32210.53      3.9936
   41-24984.99688486     0.14660420    32175.90      0.14676241    32210.63      3.9936
   42-24984.99678719     0.14670187    32197.34      0.14686009    32232.06      3.9963
   43-24984.99678662     0.14670244    32197.46      0.14686065    32232.19      3.9963
   44-24984.99678524     0.14670382    32197.77      0.14686204    32232.49      3.9963
   45-24984.99678523     0.14670383    32197.77      0.14686204    32232.49      3.9963
   46-24984.99678428     0.14670478    32197.98      0.14686299    32232.70      3.9963
   47-24984.99452337     0.14896569    32694.19      0.14912390    32728.91      4.0579
   48-24984.99452331     0.14896575    32694.20      0.14912397    32728.93      4.0579
   49-24984.99452257     0.14896649    32694.37      0.14912471    32729.09      4.0579
   50-24984.99452257     0.14896649    32694.37      0.14912471    32729.09      4.0579
   51-24984.99452244     0.14896662    32694.39      0.14912484    32729.12      4.0579
   52-24984.99452238     0.14896668    32694.41      0.14912490    32729.13      4.0579
   53-24984.99452230     0.14896676    32694.42      0.14912498    32729.15      4.0579
   54-24984.99452230     0.14896676    32694.42      0.14912498    32729.15      4.0579
   55-24984.99452224     0.14896682    32694.44      0.14912503    32729.16      4.0579
   56-24984.98469448     0.15879458    34851.38      0.15895280    34886.11      4.3253
   57-24984.98469448     0.15879458    34851.38      0.15895280    34886.11      4.3253
   58-24984.98469420     0.15879486    34851.44      0.15895308    34886.17      4.3253
   59-24984.98469371     0.15879535    34851.55      0.15895356    34886.27      4.3253
   60-24984.98469265     0.15879641    34851.78      0.15895463    34886.51      4.3254

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99943877  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000112
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000006 -0.00000000 -0.00000000 -0.00000000 -0.01175175 -0.00000000 -0.00000000 -0.11264567
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000001  0.00000000 -0.00000000  0.00000000  0.11266672  0.00000000  0.00000002 -0.01174953
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000253 -0.00000000  0.11339426 -0.00000043 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000250 -0.00000000  0.00000002 -0.00000043 -0.11339421  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00074403  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000  0.00000008
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000456  0.00000000 -0.00270450  0.00000001  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00000456 -0.00000000 -0.00000000  0.00000001  0.00270450 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00266784  0.00000000  0.00000000 -0.00006675
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000007  0.00000000 -0.00000000 -0.00000000  0.00006657  0.00000000  0.00000000  0.00267514
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000001 -0.54775867 -0.00002698 -0.00000005  0.00000152  0.40566198 -0.00000000
                           0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000

   2    1  |1 1>+          0.00000000 -0.54775154  0.00000001 -0.00000003 -0.00000000 -0.00000001 -0.00000000 -0.00000003
                          -0.00000000  0.00000148  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000075  0.00000000  0.00000000  0.00000000  0.40527123  0.00000001  0.00000005  0.70274261
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000002 -0.00001558  0.31622118 -0.00000001  0.70249589 -0.00000264 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000002  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000003 -0.00002698  0.54764094  0.00000001 -0.40559752  0.00000152  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00002359  0.00000000 -0.00000008  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000461  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00002347 -0.00000000  0.00000000 -0.00000000  0.00063339  0.00000000  0.00000000 -0.00000083
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.00000748  0.00000000 -0.00000000  0.00000000  0.00051918 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000527  0.00000000 -0.00051793  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.00000582 -0.00000000  0.00000000 -0.00000000 -0.00042080  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000028 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00004068 -0.00000000 -0.00000000 -0.00000000 -0.00014638  0.00000000 -0.00000000  0.00056407
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00132774  0.00000007 -0.00000000  0.00000002  0.00443490 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00133815  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.01933530 -0.00000000 -0.00000000  0.00000000 -0.00444303 -0.00000000 -0.00000000  0.00256162
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000 -0.00000000 -0.00000000  0.81120989  0.00000001  0.00000011  0.00040523

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000
                           0.00000000 -0.00000003 -0.00002698  0.54776867 -0.00000001  0.40561347 -0.00000152 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000
                           0.00000000  0.00000001  0.54776861  0.00002698 -0.00000005  0.00000152  0.40561348 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000171  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.63240256 -0.00000001  0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000297  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000007

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00002339  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000028 -0.00000000  0.00001391 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000027  0.00000000 -0.00000000  0.00000000  0.00001393 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00052470 -0.00000000 -0.00000000 -0.00000027

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00005288  0.00000000  0.00000000 -0.00000000  0.00000034 -0.00000000 -0.00000000 -0.00068058

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000706  0.00000000 -0.00066955  0.00000000  0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000706  0.00000000  0.00000000 -0.00000000 -0.00066954  0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.01933596 -0.00000000 -0.00000000 -0.00000000  0.00000256 -0.00000000 -0.00000000 -0.00512948

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000007 -0.00132873 -0.00000000  0.00445202 -0.00000002 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00132873 -0.00000007 -0.00000000  0.00000002  0.00445202 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000
                           0.00000000  0.00000003  0.00002698 -0.54775863 -0.00000001  0.40566201 -0.00000152 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000077 -0.00000000 -0.00000000 -0.00000000  0.40597309  0.00000000  0.00000005 -0.70233742

   3    1  |1 1>-         -0.00000000 -0.00000148 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.54775147  0.00000001 -0.00000003  0.00000000  0.00000001  0.00000000  0.00000003

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000002  0.00000002  0.00000000
                           0.00000000  0.00000001  0.31621603  0.00001558 -0.00000009  0.00000264  0.70249974 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000
                           0.00000000 -0.00000001 -0.54764394 -0.00002698 -0.00000005  0.00000152  0.40559089 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00002359  0.00000000  0.00000000 -0.00000000 -0.00000008  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00002347 -0.00000000  0.00000000  0.00000000  0.00063340  0.00000000  0.00000000  0.00000147

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000462  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000749 -0.00000000  0.00051920 -0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000527  0.00000000 -0.00000000  0.00000000  0.00051793 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000582 -0.00000000  0.00042080 -0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00004067 -0.00000000  0.00000000  0.00000000 -0.00014584 -0.00000000 -0.00000000 -0.00056422

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000028  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000007 -0.00132774  0.00000000 -0.00443489  0.00000002  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.01933529  0.00000000  0.00000000  0.00000000 -0.00444046 -0.00000000 -0.00000000 -0.00256606

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00133815  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000218
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00002048
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.11339779  0.00000001 -0.00000000 -0.00000000 -0.00001337  0.00000000  0.00000000  0.00000000
                           0.00004112 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00001170 -0.00000000  0.00000000  0.00000000  0.00001067 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00001172 -0.00000000 -0.00001073  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000690  0.00000000 -0.00000000 -0.00000000 -0.00000262 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000690  0.00000000  0.00000260 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00269473  0.00000001 -0.00000000 -0.00000000 -0.00001179  0.00000000  0.00000000 -0.00000000
                           0.00000098 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000001 -0.00000045 -0.12039095  0.00000003  0.72024290 -0.00001000  0.00000001
                          -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000000 -0.00000003 -0.00000002  0.00000000

   2    1  |1 1>+         -0.40565536  0.44749107 -0.00000001  0.00000000 -0.57706878  0.00000002  0.00000005  0.00000001
                           0.00014711 -0.00000139  0.00000000  0.00000000  0.00000376 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000006  0.00000001  0.00000000 -0.00000001  0.00000000  0.00000001 -0.00000000 -0.57734017
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000001 -0.00000001 -0.57766240  0.00000225 -0.00000002 -0.00000357 -0.25759870 -0.00000000
                           0.00000000 -0.00000000 -0.00000004 -0.00000004  0.00000000  0.00000001  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000001  0.00000000 -0.45476054  0.00000179  0.00000006  0.00000795  0.57150615 -0.00000001
                          -0.00000000 -0.00000000 -0.00000003 -0.00000003  0.00000000 -0.00000002 -0.00000001 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000031 -0.00000000 -0.00000000  0.00000000  0.00000012  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00064350 -0.00001458 -0.00000000 -0.00000000 -0.00065964  0.00000000  0.00000000 -0.00000000
                          -0.00000023  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00064572
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00103292 -0.00000000 -0.00024726  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000 -0.00050489  0.00000000 -0.00000000 -0.00000001 -0.00093193  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00119512  0.00000000  0.00053139 -0.00000001 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00016031  0.00130256 -0.00000000  0.00000000  0.00083910 -0.00000000 -0.00000000  0.00000000
                          -0.00000006 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00085185
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00001225  0.00000000  0.00000550 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00444381 -0.00000643  0.00000000 -0.00000000  0.00000315 -0.00000000 -0.00000000 -0.00000000
                          -0.00000161  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000041
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000000  0.57736753

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000004 -0.00000005  0.00000000  0.00000001  0.00000000 -0.00000000
                          -0.00000001  0.00000001  0.66693851 -0.00000260  0.00000003  0.00000412  0.29743074  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000005 -0.00000005  0.00000000  0.00000001  0.00000001 -0.00000000
                          -0.00000000 -0.00000002  0.00000261  0.66727089  0.00000001  0.29668441 -0.00000414 -0.00000001

   4    1  |1 0>           0.00000000  0.00000241 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000380  0.77463756 -0.00000001  0.00000002  0.00041985 -0.00000000 -0.00000001  0.00000001

   5    1  |1 0>           0.00029416  0.00000000 -0.00000000 -0.00000000 -0.00000377  0.00000000  0.00000000 -0.00000000
                           0.81115986  0.00031136 -0.00000000 -0.00000001 -0.57742207  0.00000003  0.00000006 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000039  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00064398 -0.00000000 -0.00000000 -0.00000002 -0.00146314  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00064233 -0.00000000 -0.00146386  0.00000002 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00106997

  10    1  |1 0>          -0.00000019  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00052242  0.00000058 -0.00000000 -0.00000000 -0.00106568  0.00000000  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00049023 -0.00000000  0.00000000  0.00000000  0.00020071  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00049046  0.00000000  0.00020013 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000604  0.00000000  0.00000000  0.00000000  0.00000055 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000605  0.00000000  0.00000057 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000001  0.00000001 -0.00000000  0.00000002  0.00000001 -0.00000000
                          -0.00000001  0.00000001 -0.12119666  0.00000049  0.00000007  0.00001001  0.72010777 -0.00000001

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000006  0.00000001  0.00000000 -0.00000001  0.00000000  0.00000001 -0.00000000 -0.57734013

   3    1  |1 1>-          0.00014711  0.00000139  0.00000000  0.00000000  0.00000377 -0.00000000 -0.00000000  0.00000000
                           0.40565540  0.44686117 -0.00000000  0.00000002  0.57755673 -0.00000003 -0.00000006  0.00000001

   4    1  |1 1>-          0.00000000  0.00000000  0.00000004  0.00000004 -0.00000000 -0.00000001 -0.00000001  0.00000000
                          -0.00000000  0.00000001 -0.00000226 -0.57794593 -0.00000000 -0.25695761  0.00000358  0.00000001

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000003 -0.00000003  0.00000000 -0.00000002 -0.00000002  0.00000000
                          -0.00000000 -0.00000002  0.00000176  0.45412628 -0.00000003 -0.57201216  0.00000794 -0.00000002

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000030 -0.00000000  0.00000013 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00064573

   8    1  |1 1>-         -0.00000023 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00064351 -0.00001532  0.00000000  0.00000000  0.00065963 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00103317 -0.00000000 -0.00000000 -0.00000000 -0.00024611  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00050593  0.00000000  0.00093137 -0.00000001  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00119453  0.00000000 -0.00000000 -0.00000001 -0.00053273 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00085184

  13    1  |1 1>-         -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00016032  0.00130347 -0.00000000  0.00000000 -0.00083766  0.00000000  0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00001224  0.00000000 -0.00000000 -0.00000000 -0.00000552 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000041

  16    1  |1 1>-         -0.00000161 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00444380 -0.00000644  0.00000000 -0.00000000 -0.00000316  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.98711999 -0.10526112 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.10526136  0.98711771 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000005  0.00000007  0.99270022 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000832 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.99270056 -0.00000017 -0.00000005 -0.00000000  0.00000010  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000017  0.99270056 -0.00000007 -0.00000011 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000018 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000 -0.00313148  0.00000000  0.00000000 -0.00000000  0.00000060  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00313148  0.00000000 -0.00000061 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00313272  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00008534  0.00313324 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00313101  0.00008540  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000001  0.04637065 -0.00000000  0.00004083  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.04637410 -0.00000000  0.00000000 -0.00004053
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000039  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.08011519 -0.04646940 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.08028373  0.00000001  0.00000000  0.00000000 -0.00002286  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.04635611 -0.00000001 -0.00000000  0.00000000 -0.00004079  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000022 -0.00000000 -0.00000000 -0.00009556  0.99963350  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00334888  0.00000000 -0.00000000  0.00002549
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00005996 -0.00346135  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00277453 -0.00000000  0.00000007  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00277265 -0.00000000 -0.00000000  0.00000000 -0.00000022  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00207060  0.00000000 -0.00005641 -0.00000001  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00097317 -0.00000000  0.00000000 -0.00004358
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00311082  0.00090903 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.02836627  0.00000000  0.01914402  0.00000183 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.02836092  0.00000000 -0.00000000  0.01913947
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000024  0.00000000 -0.00000000 -0.00000001

  16    1  |1 1>+         -0.01641223 -0.02831674  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00016712 -0.09260963  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.04637255  0.00000001  0.00000000  0.00000000 -0.00004108 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000001  0.04637254 -0.00000000 -0.00004108 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000043  0.00000000 -0.00000000  0.00004776

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000078 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000001  0.09270756 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000056
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.99963361

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000017  0.00000000  0.00000000  0.00000000 -0.00002544 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000024 -0.00000000 -0.00002544 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000498  0.00277502 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00276661  0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00385824  0.00000694  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00344779 -0.00000000 -0.00000000 -0.00000000  0.00004335  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00344779  0.00000000  0.00004335  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.03272662 -0.00005904 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.02836507 -0.00000000 -0.00000000  0.00000183 -0.01914029 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.02836507  0.00000000 -0.01914029 -0.00000183  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.04637061  0.00000001  0.00000000 -0.00000000  0.00004084 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.08028234 -0.04617998  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000039  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.04637409 -0.00000000  0.00000000 -0.00004053

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000001  0.08028411 -0.00000001 -0.00002286 -0.00000000  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000001  0.04635531 -0.00000000  0.00004079  0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000022  0.00000000  0.99963350  0.00009556 -0.00000001

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00004741 -0.00346154  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00334885  0.00000000  0.00000000  0.00002549

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00277455  0.00000000  0.00000000 -0.00000000  0.00000007 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00277265 -0.00000000  0.00000022  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00207056  0.00000000  0.00000000 -0.00000001  0.00005641 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00310751  0.00092030  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00097324 -0.00000000  0.00000000 -0.00004358

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.02836625  0.00000000  0.00000000  0.00000183 -0.01914402 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.01630993 -0.02837581  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000024  0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.02836092  0.00000000 -0.00000000  0.01913947

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00691644 -0.03277666  0.00000872 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000068 -0.00000345 -0.00743656  0.00000000  0.00000000  0.00078288  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000008 -0.00000039 -0.00077987  0.00000000  0.00000000 -0.00746519 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00756198  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00001098  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000003  0.00757142  0.00000000  0.00000000  0.00000886
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00757142 -0.00000003 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.98279482  0.18469913 -0.00004167  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000165  0.47957426  0.00000000  0.00000000  0.00021128
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.47957449 -0.00000165 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.47939585 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00069609 -0.00000000

  11    1  |0 0>          -0.00000011  0.00000337  0.01224322 -0.00000000 -0.00000000  0.47926749  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000378 -0.00012202 -0.47992845  0.00000000  0.00000000  0.01222634  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00121956  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00122263  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000178  0.00000000

   3    1  |1 1>+         -0.00000024  0.00000142  0.00210537  0.00000000  0.00000000 -0.00121313 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000001  0.00211128  0.00000000  0.00000000  0.00058017
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00122089 -0.00000000 -0.00000000  0.00103297
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000156 -0.00000000  0.00000000  0.02707118
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.49993801 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00072592  0.00000000

   8    1  |1 1>+         -0.00014072  0.00090155  0.00471569 -0.00000000 -0.00000000  0.50226191  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.40878977 -0.00000140 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000140  0.40860977  0.00000000  0.00000000 -0.00012713
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.31756471  0.00000109  0.00000000 -0.00000000 -0.00000002
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.13398158  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00019454 -0.00000000

  13    1  |1 1>+          0.00024105 -0.00161639 -0.44770625  0.00000000  0.00000000 -0.12335449 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.18311562 -0.00000063 -0.00000000  0.00000000  0.00000267
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.18345735 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00026638 -0.00000000

  16    1  |1 1>+         -0.10655882  0.56706601 -0.10704214  0.00000000  0.00000000 -0.18430253 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000002 -0.00000000 -0.00000014  0.00000000  0.00000000 -0.00242756 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00122352  0.00000000  0.00000000  0.00102922

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00122352  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000353  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00243205 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00607284 -0.00000000 -0.00000000  0.00243100

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00608208 -0.00000002 -0.00000000  0.00000000 -0.00000001

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000008 -0.00002048  0.00000000  0.00000000 -0.40886184 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00059341 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.40868127  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00031100 -0.00189963  0.54788125 -0.00000000 -0.00000000 -0.00002953 -0.00000000  0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000178  0.51766316  0.00000000  0.00000000 -0.00220940

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.51766298  0.00000178  0.00000000 -0.00000000  0.00000001

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.10656771  0.56716264  0.21320468 -0.00000000 -0.00000000 -0.00001278 -0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000063 -0.18297801 -0.00000000 -0.00000000  0.70671480

  16    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.18297711 -0.00000063 -0.00000000  0.00000000 -0.00000267

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00121956  0.00000000  0.00000000 -0.00102992

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000022 -0.00000143 -0.00210550  0.00000000  0.00000000 -0.00121287 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000178 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00122261  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00211128  0.00000001  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00122087  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000152 -0.00000000  0.00000000  0.00000000 -0.00000010

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00014068 -0.00090150 -0.00464879 -0.00000000 -0.00000000  0.50226050  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00072591  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.49993585 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000140 -0.40879419 -0.00000000 -0.00000000  0.00092151

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.40860950 -0.00000140 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000109 -0.31755897 -0.00000000 -0.00000000 -0.00423531

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00024107  0.00161656  0.44769170 -0.00000000 -0.00000000 -0.12341613 -0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00019456 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.13399021  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000063  0.18311459  0.00000000  0.00000000  0.70695698

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.10655883 -0.56706624  0.10702010  0.00000000  0.00000000 -0.18431514 -0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00026638  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.18345609 -0.00000001

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00002294 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00021719 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000031
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00034089 -0.00000000 -0.00000000 -0.00000000 -0.00073063  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000887 -0.00000000 -0.00000000 -0.00034065 -0.00000000  0.00073124 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00901055 -0.00000001 -0.00000000 -0.00000000 -0.01897083  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00021083 -0.00000000 -0.00000001 -0.00900341 -0.00000000  0.01898760 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000028 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000806
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00557630  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00014677 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00102993 -0.00000000  0.00000000  0.00074575 -0.00000000  0.00110789 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00102612 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00083056
                           0.00000000  0.00000031  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00106474  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.00080206 -0.00000000 -0.00000000 -0.00000000 -0.00089201  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00117180 -0.00000000  0.00000000  0.00000000  0.00065277 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000010  0.00000000 -0.00006470  0.00000000  0.00000000  0.00000000  0.00000792  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00155260  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00796713
                           0.00000000 -0.00000047  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000046

   8    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.34566536  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00092245  0.00000000  0.00000061  0.57259197  0.00000000 -0.10479854  0.00000002 -0.00000000
                          -0.00000000 -0.00000000 -0.00000001  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000 -0.05176452  0.00000005  0.00000001  0.00000011  0.58272054 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00423537  0.00000000  0.00000051  0.47531958  0.00000000 -0.51445823  0.00000010 -0.00000001
                          -0.00000000 -0.00000000 -0.00000001  0.00000002 -0.00000000  0.00000001 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00483448  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.70737234
                          -0.00000000  0.00000147 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004047

  13    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.46081700  0.00000000 -0.00000001 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.70695682 -0.00000000 -0.00000000 -0.00164950 -0.00000000  0.00841710 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.70682834  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00484694
                          -0.00000000 -0.00021544 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000028

  16    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00244966 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00107821 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00090730  0.00000000  0.00000000  0.00000000  0.00097572 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00102922  0.00000000 -0.00000000 -0.00090755 -0.00000000  0.00097548 -0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000037 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008
                           0.00000000  0.00121275 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00141906

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000079

   6    1  |1 0>          -0.00000000 -0.00000825 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.02706719 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00012369

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000000  0.63599916 -0.00000068  0.00000001  0.00000011  0.58780225 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000001 -0.00000003 -0.00000000  0.00000001 -0.00000000  0.00000000
                          -0.00243110  0.00000000  0.00000067  0.63585085 -0.00000000  0.58796183 -0.00000011  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.57989292  0.00000000 -0.00000001 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002
                          -0.00000000  0.00000058  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00041753

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000145 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.19761025 -0.00000021 -0.00000000 -0.00000004 -0.19647601  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00220991 -0.00000000  0.00000021  0.19767546  0.00000000 -0.19640756  0.00000004 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000281  0.00000000  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000267  0.00000001 -0.00682814  0.00000001  0.00000000  0.00000000  0.00910606 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.70671496  0.00000000 -0.00000001 -0.00682484 -0.00000000  0.00911429 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00074604 -0.00000000  0.00000000  0.00000000  0.00110773 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00106476  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000031 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005
                          -0.00000000 -0.00102612  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00083208

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00058015  0.00000000  0.00000000  0.00080226  0.00000000 -0.00089185  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00103296 -0.00000000 -0.00000000 -0.00117166  0.00000000 -0.00065307  0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.02707118  0.00000000 -0.00000000 -0.00006471 -0.00000000  0.00000792 -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.34567315  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000047  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000043
                           0.00000000  0.00155427 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00747368

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.57256404 -0.00000061 -0.00000000 -0.00000002 -0.10492496  0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                          -0.00012828  0.00000000  0.00000006  0.05190345  0.00000000 -0.58271483  0.00000011 -0.00000001

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000002 -0.00000000 -0.47519685  0.00000050  0.00000001  0.00000010  0.51458310 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.46081538  0.00000000 -0.00000001 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000147  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00004043
                          -0.00000000 -0.00483403  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.70672088

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000267  0.00000001  0.00165370 -0.00000000 -0.00000000 -0.00000000 -0.00840852  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00245224 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00021544  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000028
                           0.00000000  0.70682801 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00485378

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>          -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000033  0.00001460 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00264513  0.00000000 -0.00000000  0.00000000  0.02509973 -0.00000127  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.02507342 -0.00000000 -0.00000000 -0.00000000  0.00264788 -0.00000010  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00058798  0.00000000 -0.02517964  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000021  0.00000000  0.00000320 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.02517163 -0.00000002  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000002  0.02517163 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000 -0.00000340 -0.00005927  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.68217125 -0.00000050  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000050  0.68217072 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000002 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.01515007 -0.00000001  0.68246336 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000090
                           0.00000549 -0.00000000 -0.00008664  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.68234435  0.00000001  0.00000000  0.00000000 -0.01781592  0.00000784  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.01782832  0.00000000 -0.00000000  0.00000000  0.68184492 -0.00028860  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00063652  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00105238  0.00000000 -0.00063518  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000095
                           0.00000038  0.00000000  0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00060951 -0.00000000  0.00000000 -0.00000000 -0.00104131 -0.00000114  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00101480 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00061142  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000554  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.35062809 -0.00000000  0.33104324 -0.00000000  0.00000000  0.00000000  0.00000001  0.70716163
                          -0.00012707 -0.00000000 -0.00004203  0.00000000  0.00000000  0.00000000  0.00000000  0.00006093

   8    1  |1 1>+         -0.00000000 -0.32822171 -0.00000000 -0.00000000 -0.00000000  0.00387268  0.68875033 -0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000019 -0.25450492  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.24742989  0.00000018 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000017  0.22539775 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.45397030 -0.00000000  0.07794011 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00812674
                           0.00016452 -0.00000000 -0.00000989  0.00000000  0.00000000  0.00000000  0.00000000  0.00000070

  13    1  |1 1>+         -0.00000000  0.07673061  0.00000000  0.00000000 -0.00000000 -0.29030161 -0.10110520 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000025  0.34600556 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00672685  0.00000000 -0.34601519  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00149978
                          -0.00000244  0.00000000  0.00004393 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000013

  16    1  |1 1>+          0.00000000 -0.34540202 -0.00000000 -0.00000000  0.00000000  0.19948987 -0.00130076  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00119177 -0.00000000 -0.00000000 -0.00000000  0.00000081  0.00000001 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00065054 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00065055  0.00000000 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000102 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000234

   5    1  |1 0>          -0.00000040  0.00000000  0.00000015 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00109455 -0.00000000  0.00118556 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000009  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00002208

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.01127806 -0.00000001  0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000001 -0.01131120  0.00000000 -0.00000000  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.25954050  0.00000000  0.00000000  0.00000000 -0.00017718  0.00051761  0.00000000

  10    1  |1 0>           0.00021152 -0.00000000 -0.00003182  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004
                           0.58368527  0.00000000 -0.25065106  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00050699

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00023958 -0.00000000 -0.00000000  0.00000000  0.35664696 -0.17682126 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.34253492  0.00000025 -0.00000000  0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000025  0.34253682 -0.00000000 -0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00027021  0.00000000  0.00000000 -0.00000000 -0.39876739 -0.00073573  0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.34646383  0.00000025 -0.00000000  0.00000000  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000025  0.34646386 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00063648 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00060810 -0.00000000 -0.00000000  0.00000000  0.00104213  0.00000115  0.00000000

   3    1  |1 1>-          0.00000038  0.00000000  0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00105120 -0.00000000  0.00063517 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000094

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00101480  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00061138  0.00000000  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000556 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.32822518 -0.00000000 -0.00000000 -0.00000000 -0.00342830 -0.68852806  0.00000001

   8    1  |1 1>-         -0.00012707 -0.00000000 -0.00004203  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00006091
                          -0.35064687  0.00000000 -0.33104167  0.00000000 -0.00000000 -0.00000000  0.00000001  0.70696380

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.25450066 -0.00000019  0.00000000  0.00000000  0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000018 -0.24741445  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.22538793 -0.00000017  0.00000000  0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.07712889  0.00000000 -0.00000000  0.00000000  0.29019081  0.10029854 -0.00000000

  13    1  |1 1>-          0.00016488 -0.00000000 -0.00000989  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000063
                           0.45497843  0.00000000 -0.07794005  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00733502

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.34600597 -0.00000025  0.00000000  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.34567157 -0.00000000  0.00000000 -0.00000000 -0.19902188  0.00129937 -0.00000000

  16    1  |1 1>-         -0.00000244  0.00000000  0.00004393 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000013
                          -0.00671987 -0.00000000  0.34601666 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00150153

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00001888  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000456  0.00000000  0.00000000 -0.00000000 -0.00000065 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00004357 -0.00000000 -0.00000000  0.00000000 -0.00000009  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000637 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000307  0.00000000  0.00000000 -0.00000217  0.00000000 -0.00000000 -0.00000062
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000308 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000216  0.00000000  0.03155560
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000008  0.00000000 -0.00000000 -0.00000000  0.00007982 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.00030475  0.00000000  0.00000000  0.00006239 -0.00000000  0.00000000  0.00001079
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00030495 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00006291  0.00000000 -0.55153655
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00093248  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000011  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000  0.00042382 -0.00000000 -0.00000000  0.00000000  0.00001485  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000000 -0.00000000  0.00001059 -0.00000000  0.00000000  0.00000000 -0.00059388  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000555  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000446 -0.00000000 -0.00008903
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000214  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000156 -0.00000000  0.00000000  0.00000000 -0.00000104  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000087 -0.00000000  0.00000000 -0.00000507  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000570  0.00000000  0.00000000 -0.00000122  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00002092  0.00000000  0.00000000  0.00003546 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.12715559 -0.00000000 -0.00000001  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00001546 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.13861885  0.00000000 -0.00000001  0.00000000  0.16038040 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.65457929 -0.00000076 -0.00000000 -0.00000000 -0.00000000 -0.00157740  0.00000001  0.02806057
                           0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000057  0.49109584 -0.00000001 -0.00000001 -0.43313202  0.00000149 -0.00000003 -0.00000055
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

  11    1  |1 1>+         -0.21255676  0.00000024  0.00000001 -0.00000003 -0.00000193 -0.55859232 -0.00000001 -0.02286200
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000017 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000001  0.00000001  0.51898561 -0.00000000 -0.00000003 -0.00000001 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00006309 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000000 -0.51593276  0.00000002 -0.00000003 -0.00000001  0.45213492 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00113482  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00253393 -0.00000000  0.58795156
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00101547 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000 -0.00081748  0.00000000 -0.00000000 -0.00000000  0.00108180  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000216 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000181  0.00000000 -0.00000000  0.00000128 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000180  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000129  0.00000000 -0.00008964

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000273 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000055 -0.47023561  0.00000001  0.00000001  0.16940706 -0.00000058  0.00000002  0.00000002

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000000
                          -0.46990472  0.00000055 -0.00000000  0.00000001  0.00000059  0.17032309 -0.00000000  0.00087993

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000001  0.65453165 -0.00000002 -0.00000000  0.00000001 -0.00023875  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00007959  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000001  0.00000002  0.65473324 -0.00000000 -0.00000004 -0.00000001  0.00000000

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000001  0.00040940  0.00000001 -0.00000005 -0.00000000  0.73485408  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000
                           0.00000029  0.25398698  0.00000000 -0.00000000  0.68643503 -0.00000237  0.00000004 -0.00000071

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000021 -0.00000000 -0.00000000
                           0.25533320 -0.00000029 -0.00000002  0.00000004  0.00000237  0.68593542  0.00000001 -0.03636072

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000150  0.00000000 -0.00000000 -0.00000000  0.00233755  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00178269 -0.00000000 -0.00000000  0.00229748 -0.00000001  0.00000000  0.00001150

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00178743 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00229380  0.00000000  0.58796728

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000556  0.00000000  0.00000000  0.00000444 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000156 -0.00000000 -0.00000000  0.00000000  0.00000105 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000214  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000087  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000507 -0.00000000 -0.00015712

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000570 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000121  0.00000000 -0.00008756

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00002099 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00003542  0.00000000 -0.00000192

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.13958228 -0.00000001  0.00000001  0.00000000 -0.16049175 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00001559 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000001 -0.12824176 -0.00000000  0.00000001  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000076  0.65458420 -0.00000001 -0.00000001 -0.00027791 -0.00000001 -0.00000001  0.00000055

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000013 -0.00000000  0.00000000
                          -0.49024026  0.00000058 -0.00000001  0.00000003  0.00000150  0.43410032 -0.00000000  0.02803809

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                           0.00000024  0.21144490  0.00000000 -0.00000000  0.55901078 -0.00000193  0.00000004  0.00000045

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000001 -0.51643162  0.00000001  0.00000003 -0.00000001 -0.45174750  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00006309 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000001 -0.00000001 -0.51899989  0.00000000  0.00000003  0.00000001  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00112978  0.00000000 -0.00000000  0.00253612 -0.00000001  0.00000000 -0.00001150

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00082034  0.00000000  0.00000000 -0.00000000 -0.00108122  0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00101309  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00326639 -0.03136062
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.03137037 -0.00326537
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.03155430 -0.00000000  0.00000000
                          -0.00000000 -0.00000927  0.00000000  0.00000000

   5    1  |0 0>          -0.03155559  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000062  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000213
                           0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.55153655 -0.00000001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00001079 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000001  0.55152099 -0.00000001  0.00000000
                          -0.00000000 -0.00016206  0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.00000001  0.55136806 -0.01365973
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000 -0.00000000  0.01365789  0.55143891
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00008886 -0.00000000  0.00000000
                          -0.00000000 -0.00000003  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00009758  0.00016784
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00015712  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00008756 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000192 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.03475185 -0.00000000  0.00000000
                          -0.00000000 -0.00001021  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.03397050  0.00007146
                          -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000055  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.02803815  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000045 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00840772 -0.00000000  0.00000000
                          -0.00000000 -0.00000247  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00779700 -0.03029791
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00001150  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000001  0.58800189 -0.00000001  0.00000000
                          -0.00000000 -0.00017278  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000001  0.58828206 -0.33911721
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00019717  0.00000013

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00008963  0.00000000  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000005 -0.00000000  0.00000000
                          -0.00000000 -0.00018672  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00087910 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000002  0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.02781661  0.00001914

  10    1  |1 0>          -0.00000000 -0.00000820  0.00000000  0.00000000
                          -0.00000000 -0.02792223  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00002495  0.03651755

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.03636080  0.00000000  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000071 -0.00000000  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00046132  0.67898504

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                           0.58796729 -0.00000001 -0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00001150  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00008903  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00009781 -0.00016770

   3    1  |1 1>-         -0.00000000 -0.00000003  0.00000000  0.00000000
                          -0.00000000 -0.00008886  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.03397022 -0.00011716

   8    1  |1 1>-         -0.00000000 -0.00001021  0.00000000  0.00000000
                          -0.00000000 -0.03475172  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.02806076 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000055  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.02286140 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00775632  0.03030830

  13    1  |1 1>-         -0.00000000 -0.00000247  0.00000000  0.00000000
                          -0.00000000 -0.00840829  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.58795155  0.00000001  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000001  0.58782073  0.33991626

  16    1  |1 1>-         -0.00000000 -0.00017278  0.00000000  0.00000000
                          -0.00000001 -0.58800183  0.00000001 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1 -24985.14364728     -0.00015822      -34.72      0.00000000        0.00      0.0000
   2   1 -24985.07493297      0.06855609    15046.32      0.06871431    15081.05      1.8698
   3   1 -24985.07493293      0.06855613    15046.33      0.06871435    15081.06      1.8698
   4   1 -24985.07493292      0.06855613    15046.33      0.06871435    15081.06      1.8698
   5   1 -24985.07399856      0.06949049    15251.40      0.06964871    15286.13      1.8952
   6   1 -24985.07399855      0.06949051    15251.40      0.06964873    15286.13      1.8952
   7   1 -24985.07399855      0.06949051    15251.40      0.06964873    15286.13      1.8952
   8   1 -24985.07399846      0.06949059    15251.42      0.06964881    15286.15      1.8952
   9   1 -24985.07399845      0.06949061    15251.43      0.06964882    15286.15      1.8952
  10   1 -24985.07214586      0.07134320    15658.02      0.07150142    15692.75      1.9457
  11   1 -24985.07214582      0.07134324    15658.03      0.07150145    15692.76      1.9457
  12   1 -24985.07214582      0.07134324    15658.03      0.07150145    15692.76      1.9457
  13   1 -24985.07214576      0.07134330    15658.04      0.07150152    15692.77      1.9457
  14   1 -24985.07214574      0.07134332    15658.05      0.07150154    15692.77      1.9457
  15   1 -24985.07214574      0.07134332    15658.05      0.07150154    15692.77      1.9457
  16   1 -24985.07214568      0.07134338    15658.06      0.07150160    15692.79      1.9457
  17   1 -24985.06003750      0.08345156    18315.50      0.08360978    18350.23      2.2751
  18   1 -24985.06003742      0.08345164    18315.52      0.08360986    18350.24      2.2751
  19   1 -24985.06003707      0.08345199    18315.60      0.08361021    18350.32      2.2751
  20   1 -24985.06003706      0.08345200    18315.60      0.08361021    18350.32      2.2751
  21   1 -24985.06003705      0.08345201    18315.60      0.08361022    18350.32      2.2752
  22   1 -24985.02230732      0.12118174    26596.32      0.12133995    26631.04      3.3018
  23   1 -24985.02230732      0.12118174    26596.32      0.12133995    26631.04      3.3018
  24   1 -24985.02230732      0.12118174    26596.32      0.12133996    26631.04      3.3018
  25   1 -24985.01748818      0.12600088    27654.00      0.12615910    27688.72      3.4330
  26   1 -24985.00199152      0.14149754    31055.12      0.14165575    31089.84      3.8546
  27   1 -24984.99950796      0.14398110    31600.20      0.14413932    31634.92      3.9222
  28   1 -24984.99950489      0.14398417    31600.87      0.14414238    31635.60      3.9223
  29   1 -24984.99950489      0.14398417    31600.87      0.14414239    31635.60      3.9223
  30   1 -24984.99950397      0.14398509    31601.07      0.14414331    31635.80      3.9223
  31   1 -24984.99950365      0.14398540    31601.14      0.14414362    31635.87      3.9223
  32   1 -24984.99800519      0.14548386    31930.02      0.14564208    31964.74      3.9631
  33   1 -24984.99800519      0.14548387    31930.02      0.14564208    31964.74      3.9631
  34   1 -24984.99800480      0.14548426    31930.10      0.14564247    31964.83      3.9631
  35   1 -24984.99688581      0.14660324    32175.69      0.14676146    32210.42      3.9936
  36   1 -24984.99688581      0.14660325    32175.69      0.14676146    32210.42      3.9936
  37   1 -24984.99688540      0.14660366    32175.78      0.14676188    32210.51      3.9936
  38   1 -24984.99688534      0.14660372    32175.80      0.14676194    32210.52      3.9936
  39   1 -24984.99688534      0.14660372    32175.80      0.14676194    32210.52      3.9936
  40   1 -24984.99688529      0.14660377    32175.81      0.14676199    32210.53      3.9936
  41   1 -24984.99688486      0.14660420    32175.90      0.14676241    32210.63      3.9936
  42   1 -24984.99678719      0.14670187    32197.34      0.14686009    32232.06      3.9963
  43   1 -24984.99678662      0.14670244    32197.46      0.14686065    32232.19      3.9963
  44   1 -24984.99678524      0.14670382    32197.77      0.14686204    32232.49      3.9963
  45   1 -24984.99678523      0.14670383    32197.77      0.14686204    32232.49      3.9963
  46   1 -24984.99678428      0.14670478    32197.98      0.14686299    32232.70      3.9963
  47   1 -24984.99452337      0.14896569    32694.19      0.14912390    32728.91      4.0579
  48   1 -24984.99452331      0.14896575    32694.20      0.14912397    32728.93      4.0579
  49   1 -24984.99452257      0.14896649    32694.37      0.14912471    32729.09      4.0579
  50   1 -24984.99452257      0.14896649    32694.37      0.14912471    32729.09      4.0579
  51   1 -24984.99452244      0.14896662    32694.39      0.14912484    32729.12      4.0579
  52   1 -24984.99452238      0.14896668    32694.41      0.14912490    32729.13      4.0579
  53   1 -24984.99452230      0.14896676    32694.42      0.14912498    32729.15      4.0579
  54   1 -24984.99452230      0.14896676    32694.42      0.14912498    32729.15      4.0579
  55   1 -24984.99452224      0.14896682    32694.44      0.14912503    32729.16      4.0579
  56   1 -24984.98469448      0.15879458    34851.38      0.15895280    34886.11      4.3253
  57   1 -24984.98469448      0.15879458    34851.38      0.15895280    34886.11      4.3253
  58   1 -24984.98469420      0.15879486    34851.44      0.15895308    34886.17      4.3253
  59   1 -24984.98469371      0.15879535    34851.55      0.15895356    34886.27      4.3253
  60   1 -24984.98469265      0.15879641    34851.78      0.15895463    34886.51      4.3254

 E0 = -24985.14348906 is the energy of the lowest zeroth-order state
 E1 = -24985.14364728 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99943877  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000112
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000006 -0.00000000 -0.00000000 -0.00000000 -0.01175175 -0.00000000 -0.00000000 -0.11264567
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000001  0.00000000 -0.00000000  0.00000000  0.11266672  0.00000000  0.00000002 -0.01174953
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000253 -0.00000000  0.11339426 -0.00000043 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000250 -0.00000000  0.00000002 -0.00000043 -0.11339421  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00074403  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000  0.00000008
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000456  0.00000000 -0.00270450  0.00000001  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00000456 -0.00000000 -0.00000000  0.00000001  0.00270450 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00266784  0.00000000  0.00000000 -0.00006675
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000007  0.00000000 -0.00000000 -0.00000000  0.00006657  0.00000000  0.00000000  0.00267514
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000001 -0.54775867 -0.00002698 -0.00000005  0.00000152  0.40566198 -0.00000000
                                0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.54775154  0.00000001 -0.00000003 -0.00000000 -0.00000001 -0.00000000 -0.00000003
                               -0.00000000  0.00000148  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000075  0.00000000  0.00000000  0.00000000  0.40527123  0.00000001  0.00000005  0.70274261
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.00000002 -0.00001558  0.31622118 -0.00000001  0.70249589 -0.00000264 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000002  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000003 -0.00002698  0.54764094  0.00000001 -0.40559752  0.00000152  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00002359  0.00000000 -0.00000008  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000461  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00002347 -0.00000000  0.00000000 -0.00000000  0.00063339  0.00000000  0.00000000 -0.00000083
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000000  0.00000748  0.00000000 -0.00000000  0.00000000  0.00051918 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000527  0.00000000 -0.00051793  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.00000582 -0.00000000  0.00000000 -0.00000000 -0.00042080  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000028 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00004068 -0.00000000 -0.00000000 -0.00000000 -0.00014638  0.00000000 -0.00000000  0.00056407
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00132774  0.00000007 -0.00000000  0.00000002  0.00443490 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00133815  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.01933530 -0.00000000 -0.00000000  0.00000000 -0.00444303 -0.00000000 -0.00000000  0.00256162
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000 -0.00000000 -0.00000000  0.81120989  0.00000001  0.00000011  0.00040523

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000
                                0.00000000 -0.00000003 -0.00002698  0.54776867 -0.00000001  0.40561347 -0.00000152 -0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000
                                0.00000000  0.00000001  0.54776861  0.00002698 -0.00000005  0.00000152  0.40561348 -0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000171  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.63240256 -0.00000001  0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000297  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000007

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00002339  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000028 -0.00000000  0.00001391 -0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000027  0.00000000 -0.00000000  0.00000000  0.00001393 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00052470 -0.00000000 -0.00000000 -0.00000027

 38  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00005288  0.00000000  0.00000000 -0.00000000  0.00000034 -0.00000000 -0.00000000 -0.00068058

 40  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000706  0.00000000 -0.00066955  0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000706  0.00000000  0.00000000 -0.00000000 -0.00066954  0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.01933596 -0.00000000 -0.00000000 -0.00000000  0.00000256 -0.00000000 -0.00000000 -0.00512948

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000007 -0.00132873 -0.00000000  0.00445202 -0.00000002 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00132873 -0.00000007 -0.00000000  0.00000002  0.00445202 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000
                                0.00000000  0.00000003  0.00002698 -0.54775863 -0.00000001  0.40566201 -0.00000152 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000077 -0.00000000 -0.00000000 -0.00000000  0.40597309  0.00000000  0.00000005 -0.70233742

 47  1     3    1  |1 1>-      -0.00000000 -0.00000148 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.54775147  0.00000001 -0.00000003  0.00000000  0.00000001  0.00000000  0.00000003

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000002  0.00000002  0.00000000
                                0.00000000  0.00000001  0.31621603  0.00001558 -0.00000009  0.00000264  0.70249974 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000
                                0.00000000 -0.00000001 -0.54764394 -0.00002698 -0.00000005  0.00000152  0.40559089 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00002359  0.00000000  0.00000000 -0.00000000 -0.00000008  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00002347 -0.00000000  0.00000000  0.00000000  0.00063340  0.00000000  0.00000000  0.00000147

 52  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000462  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000749 -0.00000000  0.00051920 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000527  0.00000000 -0.00000000  0.00000000  0.00051793 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000582 -0.00000000  0.00042080 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00004067 -0.00000000  0.00000000  0.00000000 -0.00014584 -0.00000000 -0.00000000 -0.00056422

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000028  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000007 -0.00132774  0.00000000 -0.00443489  0.00000002  0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.01933529  0.00000000  0.00000000  0.00000000 -0.00444046 -0.00000000 -0.00000000 -0.00256606

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00133815  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000218
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00002048
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.11339779  0.00000001 -0.00000000 -0.00000000 -0.00001337  0.00000000  0.00000000  0.00000000
                                0.00004112 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00001170 -0.00000000  0.00000000  0.00000000  0.00001067 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00001172 -0.00000000 -0.00001073  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000690  0.00000000 -0.00000000 -0.00000000 -0.00000262 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000690  0.00000000  0.00000260 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00269473  0.00000001 -0.00000000 -0.00000000 -0.00001179  0.00000000  0.00000000 -0.00000000
                                0.00000098 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000001 -0.00000045 -0.12039095  0.00000003  0.72024290 -0.00001000  0.00000001
                               -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000000 -0.00000003 -0.00000002  0.00000000

 14  1     2    1  |1 1>+      -0.40565536  0.44749107 -0.00000001  0.00000000 -0.57706878  0.00000002  0.00000005  0.00000001
                                0.00014711 -0.00000139  0.00000000  0.00000000  0.00000376 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000006  0.00000001  0.00000000 -0.00000001  0.00000000  0.00000001 -0.00000000 -0.57734017
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000001 -0.00000001 -0.57766240  0.00000225 -0.00000002 -0.00000357 -0.25759870 -0.00000000
                                0.00000000 -0.00000000 -0.00000004 -0.00000004  0.00000000  0.00000001  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000001  0.00000000 -0.45476054  0.00000179  0.00000006  0.00000795  0.57150615 -0.00000001
                               -0.00000000 -0.00000000 -0.00000003 -0.00000003  0.00000000 -0.00000002 -0.00000001 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000031 -0.00000000 -0.00000000  0.00000000  0.00000012  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00064350 -0.00001458 -0.00000000 -0.00000000 -0.00065964  0.00000000  0.00000000 -0.00000000
                               -0.00000023  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00064572
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00103292 -0.00000000 -0.00024726  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000 -0.00050489  0.00000000 -0.00000000 -0.00000001 -0.00093193  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00119512  0.00000000  0.00053139 -0.00000001 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00016031  0.00130256 -0.00000000  0.00000000  0.00083910 -0.00000000 -0.00000000  0.00000000
                               -0.00000006 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00085185
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00001225  0.00000000  0.00000550 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00444381 -0.00000643  0.00000000 -0.00000000  0.00000315 -0.00000000 -0.00000000 -0.00000000
                               -0.00000161  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000041
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000000  0.57736753

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000004 -0.00000005  0.00000000  0.00000001  0.00000000 -0.00000000
                               -0.00000001  0.00000001  0.66693851 -0.00000260  0.00000003  0.00000412  0.29743074  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000005 -0.00000005  0.00000000  0.00000001  0.00000001 -0.00000000
                               -0.00000000 -0.00000002  0.00000261  0.66727089  0.00000001  0.29668441 -0.00000414 -0.00000001

 32  1     4    1  |1 0>        0.00000000  0.00000241 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000380  0.77463756 -0.00000001  0.00000002  0.00041985 -0.00000000 -0.00000001  0.00000001

 33  1     5    1  |1 0>        0.00029416  0.00000000 -0.00000000 -0.00000000 -0.00000377  0.00000000  0.00000000 -0.00000000
                                0.81115986  0.00031136 -0.00000000 -0.00000001 -0.57742207  0.00000003  0.00000006 -0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000039  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00064398 -0.00000000 -0.00000000 -0.00000002 -0.00146314  0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00064233 -0.00000000 -0.00146386  0.00000002 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00106997

 38  1    10    1  |1 0>       -0.00000019  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00052242  0.00000058 -0.00000000 -0.00000000 -0.00106568  0.00000000  0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00049023 -0.00000000  0.00000000  0.00000000  0.00020071  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00049046  0.00000000  0.00020013 -0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000604  0.00000000  0.00000000  0.00000000  0.00000055 -0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000605  0.00000000  0.00000057 -0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000001  0.00000001 -0.00000000  0.00000002  0.00000001 -0.00000000
                               -0.00000001  0.00000001 -0.12119666  0.00000049  0.00000007  0.00001001  0.72010777 -0.00000001

 46  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000006  0.00000001  0.00000000 -0.00000001  0.00000000  0.00000001 -0.00000000 -0.57734013

 47  1     3    1  |1 1>-       0.00014711  0.00000139  0.00000000  0.00000000  0.00000377 -0.00000000 -0.00000000  0.00000000
                                0.40565540  0.44686117 -0.00000000  0.00000002  0.57755673 -0.00000003 -0.00000006  0.00000001

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000004  0.00000004 -0.00000000 -0.00000001 -0.00000001  0.00000000
                               -0.00000000  0.00000001 -0.00000226 -0.57794593 -0.00000000 -0.25695761  0.00000358  0.00000001

 49  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000003 -0.00000003  0.00000000 -0.00000002 -0.00000002  0.00000000
                               -0.00000000 -0.00000002  0.00000176  0.45412628 -0.00000003 -0.57201216  0.00000794 -0.00000002

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000030 -0.00000000  0.00000013 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00064573

 52  1     8    1  |1 1>-      -0.00000023 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00064351 -0.00001532  0.00000000  0.00000000  0.00065963 -0.00000000 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00103317 -0.00000000 -0.00000000 -0.00000000 -0.00024611  0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00050593  0.00000000  0.00093137 -0.00000001  0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00119453  0.00000000 -0.00000000 -0.00000001 -0.00053273 -0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00085184

 57  1    13    1  |1 1>-      -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00016032  0.00130347 -0.00000000  0.00000000 -0.00083766  0.00000000  0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00001224  0.00000000 -0.00000000 -0.00000000 -0.00000552 -0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000041

 60  1    16    1  |1 1>-      -0.00000161 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00444380 -0.00000644  0.00000000 -0.00000000 -0.00000316  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.98711999 -0.10526112 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.10526136  0.98711771 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000005  0.00000007  0.99270022 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000832 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.99270056 -0.00000017 -0.00000005 -0.00000000  0.00000010  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000017  0.99270056 -0.00000007 -0.00000011 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000018 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000 -0.00313148  0.00000000  0.00000000 -0.00000000  0.00000060  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00313148  0.00000000 -0.00000061 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00313272  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00008534  0.00313324 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00313101  0.00008540  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000001  0.04637065 -0.00000000  0.00004083  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.04637410 -0.00000000  0.00000000 -0.00004053
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000039  0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.08011519 -0.04646940 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.08028373  0.00000001  0.00000000  0.00000000 -0.00002286  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000  0.04635611 -0.00000001 -0.00000000  0.00000000 -0.00004079  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000022 -0.00000000 -0.00000000 -0.00009556  0.99963350  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00334888  0.00000000 -0.00000000  0.00002549
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00005996 -0.00346135  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00277453 -0.00000000  0.00000007  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000  0.00277265 -0.00000000 -0.00000000  0.00000000 -0.00000022  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00207060  0.00000000 -0.00005641 -0.00000001  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00097317 -0.00000000  0.00000000 -0.00004358
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00311082  0.00090903 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.02836627  0.00000000  0.01914402  0.00000183 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.02836092  0.00000000 -0.00000000  0.01913947
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000024  0.00000000 -0.00000000 -0.00000001

 28  1    16    1  |1 1>+      -0.01641223 -0.02831674  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00016712 -0.09260963  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.04637255  0.00000001  0.00000000  0.00000000 -0.00004108 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000001  0.04637254 -0.00000000 -0.00004108 -0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000043  0.00000000 -0.00000000  0.00004776

 33  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000078 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000001  0.09270756 -0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000056
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.99963361

 35  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000017  0.00000000  0.00000000  0.00000000 -0.00002544 -0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000024 -0.00000000 -0.00002544 -0.00000000  0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000498  0.00277502 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00276661  0.00000000 -0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00385824  0.00000694  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00344779 -0.00000000 -0.00000000 -0.00000000  0.00004335  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00344779  0.00000000  0.00004335  0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.03272662 -0.00005904 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.02836507 -0.00000000 -0.00000000  0.00000183 -0.01914029 -0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.02836507  0.00000000 -0.01914029 -0.00000183  0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.04637061  0.00000001  0.00000000 -0.00000000  0.00004084 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.08028234 -0.04617998  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000039  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.04637409 -0.00000000  0.00000000 -0.00004053

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000001  0.08028411 -0.00000001 -0.00002286 -0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000001  0.04635531 -0.00000000  0.00004079  0.00000000 -0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000022  0.00000000  0.99963350  0.00009556 -0.00000001

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00004741 -0.00346154  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00334885  0.00000000  0.00000000  0.00002549

 53  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00277455  0.00000000  0.00000000 -0.00000000  0.00000007 -0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00277265 -0.00000000  0.00000022  0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00207056  0.00000000  0.00000000 -0.00000001  0.00005641 -0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00310751  0.00092030  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00097324 -0.00000000  0.00000000 -0.00004358

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.02836625  0.00000000  0.00000000  0.00000183 -0.01914402 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.01630993 -0.02837581  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000024  0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.02836092  0.00000000 -0.00000000  0.01913947


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00691644 -0.03277666  0.00000872 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000068 -0.00000345 -0.00743656  0.00000000  0.00000000  0.00078288  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000008 -0.00000039 -0.00077987  0.00000000  0.00000000 -0.00746519 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00756198  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00001098  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000003  0.00757142  0.00000000  0.00000000  0.00000886
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00757142 -0.00000003 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.98279482  0.18469913 -0.00004167  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000165  0.47957426  0.00000000  0.00000000  0.00021128
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.47957449 -0.00000165 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.47939585 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00069609 -0.00000000

 11  1    11    1  |0 0>       -0.00000011  0.00000337  0.01224322 -0.00000000 -0.00000000  0.47926749  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000378 -0.00012202 -0.47992845  0.00000000  0.00000000  0.01222634  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00121956  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00122263  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000178  0.00000000

 15  1     3    1  |1 1>+      -0.00000024  0.00000142  0.00210537  0.00000000  0.00000000 -0.00121313 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000001  0.00211128  0.00000000  0.00000000  0.00058017
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00122089 -0.00000000 -0.00000000  0.00103297
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000156 -0.00000000  0.00000000  0.02707118
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.49993801 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00072592  0.00000000

 20  1     8    1  |1 1>+      -0.00014072  0.00090155  0.00471569 -0.00000000 -0.00000000  0.50226191  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.40878977 -0.00000140 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000140  0.40860977  0.00000000  0.00000000 -0.00012713
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.31756471  0.00000109  0.00000000 -0.00000000 -0.00000002
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.13398158  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00019454 -0.00000000

 25  1    13    1  |1 1>+       0.00024105 -0.00161639 -0.44770625  0.00000000  0.00000000 -0.12335449 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.18311562 -0.00000063 -0.00000000  0.00000000  0.00000267
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.18345735 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00026638 -0.00000000

 28  1    16    1  |1 1>+      -0.10655882  0.56706601 -0.10704214  0.00000000  0.00000000 -0.18430253 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000002 -0.00000000 -0.00000014  0.00000000  0.00000000 -0.00242756 -0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00122352  0.00000000  0.00000000  0.00102922

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00122352  0.00000000  0.00000000 -0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000353  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00243205 -0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00607284 -0.00000000 -0.00000000  0.00243100

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00608208 -0.00000002 -0.00000000  0.00000000 -0.00000001

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000008 -0.00002048  0.00000000  0.00000000 -0.40886184 -0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00059341 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.40868127  0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00031100 -0.00189963  0.54788125 -0.00000000 -0.00000000 -0.00002953 -0.00000000  0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000178  0.51766316  0.00000000  0.00000000 -0.00220940

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.51766298  0.00000178  0.00000000 -0.00000000  0.00000001

 42  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.10656771  0.56716264  0.21320468 -0.00000000 -0.00000000 -0.00001278 -0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000063 -0.18297801 -0.00000000 -0.00000000  0.70671480

 44  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.18297711 -0.00000063 -0.00000000  0.00000000 -0.00000267

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00121956  0.00000000  0.00000000 -0.00102992

 46  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000022 -0.00000143 -0.00210550  0.00000000  0.00000000 -0.00121287 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000178 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00122261  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00211128  0.00000001  0.00000000 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00122087  0.00000000  0.00000000 -0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000152 -0.00000000  0.00000000  0.00000000 -0.00000010

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00014068 -0.00090150 -0.00464879 -0.00000000 -0.00000000  0.50226050  0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00072591  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.49993585 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000140 -0.40879419 -0.00000000 -0.00000000  0.00092151

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.40860950 -0.00000140 -0.00000000  0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000109 -0.31755897 -0.00000000 -0.00000000 -0.00423531

 56  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00024107  0.00161656  0.44769170 -0.00000000 -0.00000000 -0.12341613 -0.00000000 -0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00019456 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.13399021  0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000063  0.18311459  0.00000000  0.00000000  0.70695698

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.10655883 -0.56706624  0.10702010  0.00000000  0.00000000 -0.18431514 -0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00026638  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.18345609 -0.00000001


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00002294 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00021719 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000031
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00034089 -0.00000000 -0.00000000 -0.00000000 -0.00073063  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000887 -0.00000000 -0.00000000 -0.00034065 -0.00000000  0.00073124 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000  0.00901055 -0.00000001 -0.00000000 -0.00000000 -0.01897083  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00021083 -0.00000000 -0.00000001 -0.00900341 -0.00000000  0.01898760 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000028 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000806
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00557630  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00014677 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00102993 -0.00000000  0.00000000  0.00074575 -0.00000000  0.00110789 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00102612 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00083056
                                0.00000000  0.00000031  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005

 15  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00106474  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000000  0.00080206 -0.00000000 -0.00000000 -0.00000000 -0.00089201  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00117180 -0.00000000  0.00000000  0.00000000  0.00065277 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000010  0.00000000 -0.00006470  0.00000000  0.00000000  0.00000000  0.00000792  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00155260  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00796713
                                0.00000000 -0.00000047  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000046

 20  1     8    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.34566536  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00092245  0.00000000  0.00000061  0.57259197  0.00000000 -0.10479854  0.00000002 -0.00000000
                               -0.00000000 -0.00000000 -0.00000001  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000 -0.05176452  0.00000005  0.00000001  0.00000011  0.58272054 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00423537  0.00000000  0.00000051  0.47531958  0.00000000 -0.51445823  0.00000010 -0.00000001
                               -0.00000000 -0.00000000 -0.00000001  0.00000002 -0.00000000  0.00000001 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00483448  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.70737234
                               -0.00000000  0.00000147 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004047

 25  1    13    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.46081700  0.00000000 -0.00000001 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.70695682 -0.00000000 -0.00000000 -0.00164950 -0.00000000  0.00841710 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.70682834  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00484694
                               -0.00000000 -0.00021544 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000028

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00244966 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00107821 -0.00000000  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00090730  0.00000000  0.00000000  0.00000000  0.00097572 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00102922  0.00000000 -0.00000000 -0.00090755 -0.00000000  0.00097548 -0.00000000  0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000037 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008
                                0.00000000  0.00121275 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00141906

 33  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000079

 34  1     6    1  |1 0>       -0.00000000 -0.00000825 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.02706719 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00012369

 35  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000000  0.63599916 -0.00000068  0.00000001  0.00000011  0.58780225 -0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000001 -0.00000003 -0.00000000  0.00000001 -0.00000000  0.00000000
                               -0.00243110  0.00000000  0.00000067  0.63585085 -0.00000000  0.58796183 -0.00000011  0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.57989292  0.00000000 -0.00000001 -0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002
                               -0.00000000  0.00000058  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00041753

 39  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000145 -0.00000000 -0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.19761025 -0.00000021 -0.00000000 -0.00000004 -0.19647601  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00220991 -0.00000000  0.00000021  0.19767546  0.00000000 -0.19640756  0.00000004 -0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000281  0.00000000  0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000267  0.00000001 -0.00682814  0.00000001  0.00000000  0.00000000  0.00910606 -0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.70671496  0.00000000 -0.00000001 -0.00682484 -0.00000000  0.00911429 -0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00074604 -0.00000000  0.00000000  0.00000000  0.00110773 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00106476  0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000031 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005
                               -0.00000000 -0.00102612  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00083208

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00058015  0.00000000  0.00000000  0.00080226  0.00000000 -0.00089185  0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00103296 -0.00000000 -0.00000000 -0.00117166  0.00000000 -0.00065307  0.00000000 -0.00000000

 50  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.02707118  0.00000000 -0.00000000 -0.00006471 -0.00000000  0.00000792 -0.00000000  0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.34567315  0.00000000 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000047  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000043
                                0.00000000  0.00155427 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00747368

 53  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.57256404 -0.00000061 -0.00000000 -0.00000002 -0.10492496  0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                               -0.00012828  0.00000000  0.00000006  0.05190345  0.00000000 -0.58271483  0.00000011 -0.00000001

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000002 -0.00000000 -0.47519685  0.00000050  0.00000001  0.00000010  0.51458310 -0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.46081538  0.00000000 -0.00000001 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000147  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00004043
                               -0.00000000 -0.00483403  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.70672088

 58  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000267  0.00000001  0.00165370 -0.00000000 -0.00000000 -0.00000000 -0.00840852  0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00245224 -0.00000000  0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00021544  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000028
                                0.00000000  0.70682801 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00485378


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>       -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000033  0.00001460 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00264513  0.00000000 -0.00000000  0.00000000  0.02509973 -0.00000127  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.02507342 -0.00000000 -0.00000000 -0.00000000  0.00264788 -0.00000010  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00058798  0.00000000 -0.02517964  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000021  0.00000000  0.00000320 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.02517163 -0.00000002  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000002  0.02517163 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000 -0.00000340 -0.00005927  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.68217125 -0.00000050  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000050  0.68217072 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000001  0.00000002 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.01515007 -0.00000001  0.68246336 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000090
                                0.00000549 -0.00000000 -0.00008664  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.68234435  0.00000001  0.00000000  0.00000000 -0.01781592  0.00000784  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.01782832  0.00000000 -0.00000000  0.00000000  0.68184492 -0.00028860  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00063652  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00105238  0.00000000 -0.00063518  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000095
                                0.00000038  0.00000000  0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00060951 -0.00000000  0.00000000 -0.00000000 -0.00104131 -0.00000114  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00101480 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00061142  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000554  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.35062809 -0.00000000  0.33104324 -0.00000000  0.00000000  0.00000000  0.00000001  0.70716163
                               -0.00012707 -0.00000000 -0.00004203  0.00000000  0.00000000  0.00000000  0.00000000  0.00006093

 20  1     8    1  |1 1>+      -0.00000000 -0.32822171 -0.00000000 -0.00000000 -0.00000000  0.00387268  0.68875033 -0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000019 -0.25450492  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.24742989  0.00000018 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000017  0.22539775 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.45397030 -0.00000000  0.07794011 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00812674
                                0.00016452 -0.00000000 -0.00000989  0.00000000  0.00000000  0.00000000  0.00000000  0.00000070

 25  1    13    1  |1 1>+      -0.00000000  0.07673061  0.00000000  0.00000000 -0.00000000 -0.29030161 -0.10110520 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000025  0.34600556 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00672685  0.00000000 -0.34601519  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00149978
                               -0.00000244  0.00000000  0.00004393 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000013

 28  1    16    1  |1 1>+       0.00000000 -0.34540202 -0.00000000 -0.00000000  0.00000000  0.19948987 -0.00130076  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00119177 -0.00000000 -0.00000000 -0.00000000  0.00000081  0.00000001 -0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00065054 -0.00000000  0.00000000 -0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00065055  0.00000000 -0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000102 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000234

 33  1     5    1  |1 0>       -0.00000040  0.00000000  0.00000015 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00109455 -0.00000000  0.00118556 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000009  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00002208

 35  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.01127806 -0.00000001  0.00000000 -0.00000000 -0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000001 -0.01131120  0.00000000 -0.00000000  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.25954050  0.00000000  0.00000000  0.00000000 -0.00017718  0.00051761  0.00000000

 38  1    10    1  |1 0>        0.00021152 -0.00000000 -0.00003182  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004
                                0.58368527  0.00000000 -0.25065106  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00050699

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00023958 -0.00000000 -0.00000000  0.00000000  0.35664696 -0.17682126 -0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.34253492  0.00000025 -0.00000000  0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000025  0.34253682 -0.00000000 -0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00027021  0.00000000  0.00000000 -0.00000000 -0.39876739 -0.00073573  0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.34646383  0.00000025 -0.00000000  0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000025  0.34646386 -0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00063648 -0.00000000  0.00000000 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00060810 -0.00000000 -0.00000000  0.00000000  0.00104213  0.00000115  0.00000000

 47  1     3    1  |1 1>-       0.00000038  0.00000000  0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00105120 -0.00000000  0.00063517 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000094

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00101480  0.00000000  0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00061138  0.00000000  0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000556 -0.00000000  0.00000000  0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.32822518 -0.00000000 -0.00000000 -0.00000000 -0.00342830 -0.68852806  0.00000001

 52  1     8    1  |1 1>-      -0.00012707 -0.00000000 -0.00004203  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00006091
                               -0.35064687  0.00000000 -0.33104167  0.00000000 -0.00000000 -0.00000000  0.00000001  0.70696380

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.25450066 -0.00000019  0.00000000  0.00000000  0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000018 -0.24741445  0.00000000 -0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.22538793 -0.00000017  0.00000000  0.00000000  0.00000000

 56  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.07712889  0.00000000 -0.00000000  0.00000000  0.29019081  0.10029854 -0.00000000

 57  1    13    1  |1 1>-       0.00016488 -0.00000000 -0.00000989  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000063
                                0.45497843  0.00000000 -0.07794005  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00733502

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.34600597 -0.00000025  0.00000000  0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.34567157 -0.00000000  0.00000000 -0.00000000 -0.19902188  0.00129937 -0.00000000

 60  1    16    1  |1 1>-      -0.00000244  0.00000000  0.00004393 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000013
                               -0.00671987 -0.00000000  0.34601666 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00150153


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00001888  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000456  0.00000000  0.00000000 -0.00000000 -0.00000065 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00004357 -0.00000000 -0.00000000  0.00000000 -0.00000009  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000637 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000307  0.00000000  0.00000000 -0.00000217  0.00000000 -0.00000000 -0.00000062
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000308 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000216  0.00000000  0.03155560
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000008  0.00000000 -0.00000000 -0.00000000  0.00007982 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00030475  0.00000000  0.00000000  0.00006239 -0.00000000  0.00000000  0.00001079
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00030495 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00006291  0.00000000 -0.55153655
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00093248  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000011  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000  0.00042382 -0.00000000 -0.00000000  0.00000000  0.00001485  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000  0.00001059 -0.00000000  0.00000000  0.00000000 -0.00059388  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000555  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000446 -0.00000000 -0.00008903
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000214  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000156 -0.00000000  0.00000000  0.00000000 -0.00000104  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000087 -0.00000000  0.00000000 -0.00000507  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000570  0.00000000  0.00000000 -0.00000122  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00002092  0.00000000  0.00000000  0.00003546 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.12715559 -0.00000000 -0.00000001  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00001546 -0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00000000  0.13861885  0.00000000 -0.00000001  0.00000000  0.16038040 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.65457929 -0.00000076 -0.00000000 -0.00000000 -0.00000000 -0.00157740  0.00000001  0.02806057
                                0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000057  0.49109584 -0.00000001 -0.00000001 -0.43313202  0.00000149 -0.00000003 -0.00000055
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.21255676  0.00000024  0.00000001 -0.00000003 -0.00000193 -0.55859232 -0.00000001 -0.02286200
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000017 -0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000001  0.00000001  0.51898561 -0.00000000 -0.00000003 -0.00000001 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00006309 -0.00000000  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00000000 -0.51593276  0.00000002 -0.00000003 -0.00000001  0.45213492 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00113482  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00253393 -0.00000000  0.58795156
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00101547 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000000 -0.00081748  0.00000000 -0.00000000 -0.00000000  0.00108180  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000216 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000181  0.00000000 -0.00000000  0.00000128 -0.00000000  0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000180  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000129  0.00000000 -0.00008964

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000273 -0.00000000 -0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000055 -0.47023561  0.00000001  0.00000001  0.16940706 -0.00000058  0.00000002  0.00000002

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000000
                               -0.46990472  0.00000055 -0.00000000  0.00000001  0.00000059  0.17032309 -0.00000000  0.00087993

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000001  0.65453165 -0.00000002 -0.00000000  0.00000001 -0.00023875  0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00007959  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000001  0.00000002  0.65473324 -0.00000000 -0.00000004 -0.00000001  0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000001  0.00040940  0.00000001 -0.00000005 -0.00000000  0.73485408  0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000
                                0.00000029  0.25398698  0.00000000 -0.00000000  0.68643503 -0.00000237  0.00000004 -0.00000071

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000021 -0.00000000 -0.00000000
                                0.25533320 -0.00000029 -0.00000002  0.00000004  0.00000237  0.68593542  0.00000001 -0.03636072

 42  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000150  0.00000000 -0.00000000 -0.00000000  0.00233755  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00178269 -0.00000000 -0.00000000  0.00229748 -0.00000001  0.00000000  0.00001150

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00178743 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00229380  0.00000000  0.58796728

 45  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000556  0.00000000  0.00000000  0.00000444 -0.00000000  0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000156 -0.00000000 -0.00000000  0.00000000  0.00000105 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000214  0.00000000  0.00000000  0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000087  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000507 -0.00000000 -0.00015712

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000570 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000121  0.00000000 -0.00008756

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00002099 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00003542  0.00000000 -0.00000192

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.13958228 -0.00000001  0.00000001  0.00000000 -0.16049175 -0.00000000

 52  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00001559 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000001 -0.12824176 -0.00000000  0.00000001  0.00000000  0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000076  0.65458420 -0.00000001 -0.00000001 -0.00027791 -0.00000001 -0.00000001  0.00000055

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000013 -0.00000000  0.00000000
                               -0.49024026  0.00000058 -0.00000001  0.00000003  0.00000150  0.43410032 -0.00000000  0.02803809

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                                0.00000024  0.21144490  0.00000000 -0.00000000  0.55901078 -0.00000193  0.00000004  0.00000045

 56  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000001 -0.51643162  0.00000001  0.00000003 -0.00000001 -0.45174750  0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00006309 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000001 -0.00000001 -0.51899989  0.00000000  0.00000003  0.00000001  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00112978  0.00000000 -0.00000000  0.00253612 -0.00000001  0.00000000 -0.00001150

 59  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00082034  0.00000000  0.00000000 -0.00000000 -0.00108122  0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00101309  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00326639 -0.03136062
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.03137037 -0.00326537
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.03155430 -0.00000000  0.00000000
                               -0.00000000 -0.00000927  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.03155559  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000062  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000213
                                0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.55153655 -0.00000001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00001079 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000001  0.55152099 -0.00000001  0.00000000
                               -0.00000000 -0.00016206  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000001  0.55136806 -0.01365973
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000  0.01365789  0.55143891
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00008886 -0.00000000  0.00000000
                               -0.00000000 -0.00000003  0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.00000000  0.00009758  0.00016784
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00015712  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00008756 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000192 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.03475185 -0.00000000  0.00000000
                               -0.00000000 -0.00001021  0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.03397050  0.00007146
                               -0.00000000  0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000055  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.02803815  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000045 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00840772 -0.00000000  0.00000000
                               -0.00000000 -0.00000247  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000  0.00779700 -0.03029791
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00001150  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000001  0.58800189 -0.00000001  0.00000000
                               -0.00000000 -0.00017278  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000001  0.58828206 -0.33911721
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00019717  0.00000013

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00008963  0.00000000  0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000005 -0.00000000  0.00000000
                               -0.00000000 -0.00018672  0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00087910 -0.00000000 -0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000002  0.00000000 -0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.02781661  0.00001914

 38  1    10    1  |1 0>       -0.00000000 -0.00000820  0.00000000  0.00000000
                               -0.00000000 -0.02792223  0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00002495  0.03651755

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.03636080  0.00000000  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000071 -0.00000000  0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00046132  0.67898504

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                                0.58796729 -0.00000001 -0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00001150  0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00008903  0.00000000  0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00009781 -0.00016770

 47  1     3    1  |1 1>-      -0.00000000 -0.00000003  0.00000000  0.00000000
                               -0.00000000 -0.00008886  0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.03397022 -0.00011716

 52  1     8    1  |1 1>-      -0.00000000 -0.00001021  0.00000000  0.00000000
                               -0.00000000 -0.03475172  0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.02806076 -0.00000000 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000055  0.00000000 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.02286140 -0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00775632  0.03030830

 57  1    13    1  |1 1>-      -0.00000000 -0.00000247  0.00000000  0.00000000
                               -0.00000000 -0.00840829  0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.58795155  0.00000001  0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000001  0.58782073  0.33991626

 60  1    16    1  |1 1>-      -0.00000000 -0.00017278  0.00000000  0.00000000
                               -0.00000001 -0.58800183  0.00000001 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    1.27%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.27%    0.00%    0.00%    0.01%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.29%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.29%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%   16.46%    0.00%
 14  1     2    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.42%    0.00%    0.00%   49.38%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%   10.00%    0.00%   49.35%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%   29.99%    0.00%   16.45%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.81%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%   30.01%    0.00%   16.45%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%   16.45%    0.00%
 32  1     4    1  |1 0>          0.00%   39.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%   16.46%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.48%    0.00%    0.00%   49.33%
 47  1     3    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%   10.00%    0.00%    0.00%    0.00%   49.35%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%   29.99%    0.00%    0.00%    0.00%   16.45%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          1.29%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    1.45%    0.00%   51.87%    0.00%    0.00%
 14  1     2    1  |1 1>+        16.46%   20.02%    0.00%    0.00%   33.30%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 16  1     4    1  |1 1>+         0.00%    0.00%   33.37%    0.00%    0.00%    0.00%    6.64%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%   20.68%    0.00%    0.00%    0.00%   32.66%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%
 30  1     2    1  |1 0>          0.00%    0.00%   44.48%    0.00%    0.00%    0.00%    8.85%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%   44.53%    0.00%    8.80%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%   60.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>         65.80%    0.00%    0.00%    0.00%   33.34%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    1.47%    0.00%    0.00%    0.00%   51.86%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 47  1     3    1  |1 1>-        16.46%   19.97%    0.00%    0.00%   33.36%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%   33.40%    0.00%    6.60%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%   20.62%    0.00%   32.72%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>         97.44%    1.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          1.11%   97.44%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.55%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   98.55%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   98.55%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.22%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.22%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.64%    0.22%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.64%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.21%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.93%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.08%    0.00%    0.04%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.04%
 28  1    16    1  |1 1>+         0.03%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.86%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.22%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.22%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.86%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.93%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.04%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.08%    0.00%    0.04%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.22%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.64%    0.21%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.22%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.64%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.21%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   99.93%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.04%    0.00%
 59  1    15    1  |1 1>-         0.03%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.04%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>         96.59%    3.41%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   23.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%   23.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   22.98%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%   22.97%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%   23.03%    0.00%    0.00%    0.01%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   24.99%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   25.23%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%   16.71%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.70%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%   10.08%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.80%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%   20.04%    0.00%    0.00%    1.52%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    3.35%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.37%    0.00%
 28  1    16    1  |1 1>+         1.14%   32.16%    1.15%    0.00%    0.00%    3.40%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   16.72%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.70%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%   30.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%   26.80%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%   26.80%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          1.14%   32.17%    4.55%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    3.35%    0.00%    0.00%   49.94%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    3.35%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   25.23%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   24.99%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.71%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%   16.70%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   10.08%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%   20.04%    0.00%    0.00%    1.52%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.80%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    3.35%    0.00%    0.00%   49.98%
 59  1    15    1  |1 1>-         1.14%   32.16%    1.15%    0.00%    0.00%    3.40%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.37%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.04%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.04%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   11.95%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%   32.79%    0.00%    1.10%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.27%    0.00%    0.00%    0.00%   33.96%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%   22.59%    0.00%   26.47%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.04%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   21.24%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+        49.98%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%   49.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%   40.45%    0.00%    0.00%    0.00%   34.55%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%   40.43%    0.00%   34.57%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.63%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    3.90%    0.00%    0.00%    0.00%    3.86%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    3.91%    0.00%    3.86%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 44  1    16    1  |1 0>         49.94%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   11.95%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 53  1     9    1  |1 1>-         0.00%    0.00%   32.78%    0.00%    0.00%    0.00%    1.10%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.27%    0.00%   33.96%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%   22.58%    0.00%    0.00%    0.00%   26.48%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   21.24%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.95%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%   49.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%   46.54%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   46.54%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.02%    0.00%   46.58%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%   46.56%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.03%    0.00%    0.00%    0.00%   46.49%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+        12.29%    0.00%   10.96%    0.00%    0.00%    0.00%    0.00%   50.01%
 20  1     8    1  |1 1>+         0.00%   10.77%    0.00%    0.00%    0.00%    0.00%   47.44%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    6.48%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    6.12%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    5.08%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+        20.61%    0.00%    0.61%    0.00%    0.00%    0.00%    0.00%    0.01%
 25  1    13    1  |1 1>+         0.00%    0.59%    0.00%    0.00%    0.00%    8.43%    1.02%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   11.97%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%   11.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%   11.93%    0.00%    0.00%    0.00%    3.98%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    6.74%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>         34.07%    0.00%    6.28%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   12.72%    3.13%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%   11.73%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%   11.73%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   15.90%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%   12.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%   12.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%   10.77%    0.00%    0.00%    0.00%    0.00%   47.41%    0.00%
 52  1     8    1  |1 1>-        12.30%    0.00%   10.96%    0.00%    0.00%    0.00%    0.00%   49.98%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    6.48%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    6.12%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    5.08%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.59%    0.00%    0.00%    0.00%    8.42%    1.01%    0.00%
 57  1    13    1  |1 1>-        20.70%    0.00%    0.61%    0.00%    0.00%    0.00%    0.00%    0.01%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%   11.97%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%   11.95%    0.00%    0.00%    0.00%    3.96%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%   11.97%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.10%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   30.42%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    1.62%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    1.92%    0.00%    0.00%    0.00%    2.57%    0.00%
 21  1     9    1  |1 1>+        42.85%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.08%
 22  1    10    1  |1 1>+         0.00%   24.12%    0.00%    0.00%   18.76%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         4.52%    0.00%    0.00%    0.00%    0.00%   31.20%    0.00%    0.05%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%   26.93%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%   26.62%    0.00%    0.00%    0.00%   20.44%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   34.57%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%   22.11%    0.00%    0.00%    2.87%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>         22.08%    0.00%    0.00%    0.00%    0.00%    2.90%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%   42.84%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%   42.87%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   54.00%    0.00%
 40  1    12    1  |1 0>          0.00%    6.45%    0.00%    0.00%   47.12%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          6.52%    0.00%    0.00%    0.00%    0.00%   47.05%    0.00%    0.13%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   34.57%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    1.95%    0.00%    0.00%    0.00%    2.58%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    1.64%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%   42.85%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-        24.03%    0.00%    0.00%    0.00%    0.00%   18.84%    0.00%    0.08%
 55  1    11    1  |1 1>-         0.00%    4.47%    0.00%    0.00%   31.25%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%   26.67%    0.00%    0.00%    0.00%   20.41%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%   26.94%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     57       58       59       60

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.10%
  3  1     3    1  |0 0>          0.00%    0.00%    0.10%    0.00%
  4  1     4    1  |0 0>          0.00%    0.10%    0.00%    0.00%
  5  1     5    1  |0 0>          0.10%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>         30.42%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%   30.42%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%   30.40%    0.02%
 12  1    12    1  |0 0>          0.00%    0.00%    0.02%   30.41%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.12%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.12%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.08%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.01%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.01%    0.09%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%   34.57%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%   34.61%   11.50%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.08%    0.00%
 38  1    10    1  |1 0>          0.00%    0.08%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.13%
 40  1    12    1  |1 0>          0.13%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%   46.10%
 43  1    15    1  |1 0>         34.57%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.12%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.12%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.08%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.05%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.01%    0.09%
 57  1    13    1  |1 1>-         0.00%    0.01%    0.00%    0.00%
 58  1    14    1  |1 1>-        34.57%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%   34.55%   11.55%
 60  1    16    1  |1 1>-         0.00%   34.57%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      450.05       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      839.47       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     58816.61  41256.03    301.93  13715.21   3520.53      8.59      0.14     13.95
 REAL TIME  *     59215.41 SEC
 DISK USED  *       998.35 MB (local),        6.48 GB (total)
 SF USED    *         5.02 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy= -24984.984692645899

              CI              CI           MULTI         RHF-SCF
 -24984.96950877 -24984.96874946 -24984.64770488 -24984.77408070
 **********************************************************************************************************************************
 Molpro calculation terminated
