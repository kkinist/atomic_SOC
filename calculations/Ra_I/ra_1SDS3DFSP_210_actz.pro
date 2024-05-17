
 Working directory              : /wrk/irikura/molpro.WGYUFu97Tq/
 Global scratch directory       : /wrk/irikura/molpro.WGYUFu97Tq/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.WGYUFu97Tq/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov    6
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.00 sec
 ***,Ra SO-CI
                                                                                 ! larger core [15 19]
 memory,8,G
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ra};
 
 basis=aug-cc-pwCVTZ-X2C
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
 NSING=7
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
 Default parameters read. Elapsed time= 0.08 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ra SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 24-Apr-24          TIME: 13:29:19  
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

     Node minimum: 3.932 MB, node maximum: 8.389 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2626485.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2626485      RECORD LENGTH: 524288

 Memory used in sort:       3.18 MW

 SORT1 READ    36081304. AND WROTE      538463. INTEGRALS IN      2 RECORDS. CPU TIME:     0.16 SEC, REAL TIME:     0.17 SEC
 SORT2 READ     3260452. AND WROTE    15753876. INTEGRALS IN    192 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC

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
 CPU TIMES  *        14.49     14.31
 REAL TIME  *        17.56 SEC
 DISK USED  *        30.40 MB (local),      248.72 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   22  22

 Initial occupancy:  22  22

 NELEC=   88   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1   -24984.77408070  -24984.77408070     0.00D+00     0.21D+00     0     0       0.03      0.04    start
   2   -24984.77408070      -0.00000000     0.77D-06     0.16D-04     1     0       0.01      0.05    diag
   3   -24984.77408070      -0.00000000     0.14D-06     0.64D-05     2     0       0.01      0.06    diag
   4   -24984.77408070      -0.00000000     0.60D-07     0.33D-05     3     0       0.02      0.08    diag
   5   -24984.77408070      -0.00000000     0.28D-07     0.40D-05     4     0       0.01      0.09    diag
   6   -24984.77408070      -0.00000000     0.45D-08     0.16D-06     5     0       0.02      0.11    diag
   7   -24984.77408070      -0.00000000     0.18D-08     0.12D-06     0     0       0.01      0.12    diag

 Final occupancy:  22  22

 !RHF STATE 1.1 Energy               -24984.7740807038    
  RHF One-electron energy            -33999.5252898202    
  RHF Two-electron energy            9014.751209116403
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
    4.1     2.00000  -118.10410     1  1  d2-  0.97433
    5.1     2.00000  -118.10410     1  1  d0   0.99987
    6.1     2.00000  -118.10410     1  1  d2+  0.97701
    7.1     2.00000  -118.10410     1  1  d1+  0.98953
    8.1     2.00000  -118.10410     1  1  d1-  0.98861
    9.1     2.00000   -45.72039     1  4  s    1.00000
   10.1     2.00000   -23.67489     1  2  d0   1.00000
   11.1     2.00000   -23.67489     1  2  d1+ -0.34528    1  2  d2+  0.93387
   12.1     2.00000   -23.67489     1  2  d2-  0.26864    1  2  d1-  0.95935
   13.1     2.00000   -23.67489     1  2  d2-  0.95786    1  2  d1- -0.26549
   14.1     2.00000   -23.67489     1  2  d1+  0.93399    1  2  d2+  0.34179
   15.1     2.00000   -10.01554     1  5  s    0.99999
   16.1     2.00000    -2.99474     1  3  d1-  0.96919
   17.1     2.00000    -2.99474     1  3  d2-  0.29712    1  3  d1+  0.94976
   18.1     2.00000    -2.99474     1  3  d2+  0.96569
   19.1     2.00000    -2.99474     1  3  d2-  0.92512    1  3  d1+ -0.30221
   20.1     2.00000    -2.99474     1  3  d0   0.99992
   21.1     2.00000    -1.62623     1  6  s    0.99951
   22.1     2.00000    -0.16560     1  7  s    1.00154
    1.2     2.00000  -604.13158     1  1  pz   0.99900
    2.2     2.00000  -604.13158     1  1  py   0.99914
    3.2     2.00000  -604.13158     1  1  px   0.99986
    4.2     2.00000  -148.72003     1  2  px   0.99990
    5.2     2.00000  -148.72003     1  2  py   0.99986
    6.2     2.00000  -148.72003     1  2  pz   0.99994
    7.2     2.00000   -35.35818     1  3  pz   0.99991
    8.2     2.00000   -35.35818     1  3  py   0.99977
    9.2     2.00000   -35.35818     1  3  px   0.99969
   10.2     2.00000   -11.20190     1  1  f0   0.99999
   11.2     2.00000   -11.20190     1  1  f3+  0.99820
   12.2     2.00000   -11.20190     1  1  f3-  0.99719
   13.2     2.00000   -11.20190     1  1  f2+  0.99958
   14.2     2.00000   -11.20190     1  1  f2-  0.99959
   15.2     2.00000   -11.20190     1  1  f1+  0.99792
   16.2     2.00000   -11.20190     1  1  f1-  0.99699
   17.2     2.00000    -6.80574     1  4  pz   1.00004
   18.2     2.00000    -6.80574     1  4  py   1.00004
   19.2     2.00000    -6.80574     1  4  px   1.00004
   20.2     2.00000    -0.80779     1  5  pz   0.99941
   21.2     2.00000    -0.80779     1  5  py   0.99941
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
 CPU TIMES  *        14.63      0.14     14.31
 REAL TIME  *        17.71 SEC
 DISK USED  *        33.35 MB (local),      266.43 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         7.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  43 (  21  22 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      72 (  29  43 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.249D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.212D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.206D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.166D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.186D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.107D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.322D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.271D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.296D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.339D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.306D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.297D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.404D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.159D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 24 SYMMETRY CONTAMINATION OF 0.519D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.580D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 26 SYMMETRY CONTAMINATION OF 0.521D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 27 SYMMETRY CONTAMINATION OF 0.158D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 28 SYMMETRY CONTAMINATION OF 0.158D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 2 5 4 6 1 2   5 6 3 4 1 6 4 5 3 2   1 1 1 2 3 5 6 4 2 3   5 6 4 1 6 4 2 3 5 1
                                        2 3 5 6 4 1 4 6 3 5   2 6 4 3 5 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.551D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.416D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.176D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.177D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.230D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.141D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.143D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.219D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.334D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.772D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.671D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.872D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.469D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.455D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.913D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.975D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.830D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.830D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.258D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.261D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.337D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 23 SYMMETRY CONTAMINATION OF 0.288D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 25 SYMMETRY CONTAMINATION OF 0.288D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 2 1 6   7 910 8 4 5 3 2 1 3   2 1 2 1 3 2 1 3 2 1   3 6 5 4 810 9 7 2 1
                                        3 5 6 4 7 9 810 6 8  10 5 4 7 9 2 1 3 6 8  10 7 9 5 4 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
 Weight factors for state symmetry  2:    0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
                                          0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348   0.04348
 
 Number of orbital rotations:  2100  ( 213 closed/active, 1555 closed/virtual, 0 active/active, 332 active/virtual )
 Total number of variables:    2890
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   15   28    5 -24984.58354380  -24984.69437479   -0.11083099    0.06978194 0.00008440 0.00000000  0.24E+01      3.13
   2    9   14    0 -24984.68126422  -24984.68665857   -0.00539435    0.04467533 0.00001796 0.00000000  0.46E+00      6.10
   3    9   14    0 -24984.68668366  -24984.68668505   -0.00000139    0.00058315 0.00000008 0.00000000  0.64E-02      9.08
   4    3    6    0 -24984.68668505  -24984.68668505    0.00000000    0.00000058 0.00000001 0.00000000  0.72E-05     11.11

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.11E-08)
                       Final energy: -24984.68668505
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -24984.7924558709    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.55019091
 One electron energy                        -33998.81845955
 Two electron energy                          9014.02600368
 Virial ratio                                    1.57455390
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -24984.7112819464    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22723468
 One electron energy                        -33999.78630859
 Two electron energy                          9015.07502665
 Virial ratio                                    1.57455630
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -24984.7112819464    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22723468
 One electron energy                        -33999.78630859
 Two electron energy                          9015.07502665
 Virial ratio                                    1.57455630
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -24984.7112819464    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22723467
 One electron energy                        -33999.78630859
 Two electron energy                          9015.07502664
 Virial ratio                                    1.57455630
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -24984.7112819464    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22723468
 One electron energy                        -33999.78630860
 Two electron energy                          9015.07502665
 Virial ratio                                    1.57455630
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -24984.7112819464    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.22723468
 One electron energy                        -33999.78630860
 Two electron energy                          9015.07502665
 Virial ratio                                    1.57455630
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -24984.6700101972    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.03132615
 One electron energy                        -33990.18956865
 Two electron energy                          9005.51955845
 Virial ratio                                    1.57455794
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -24984.7208289391    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37896646
 One electron energy                        -34001.10903329
 Two electron energy                          9016.38820435
 Virial ratio                                    1.57455452
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -24984.7208289391    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37896646
 One electron energy                        -34001.10903329
 Two electron energy                          9016.38820435
 Virial ratio                                    1.57455452
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -24984.7208289391    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37896646
 One electron energy                        -34001.10903327
 Two electron energy                          9016.38820434
 Virial ratio                                    1.57455452
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -24984.7208289390    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37896646
 One electron energy                        -34001.10903327
 Two electron energy                          9016.38820434
 Virial ratio                                    1.57455452
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -24984.7208289390    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.37896646
 One electron energy                        -34001.10903327
 Two electron energy                          9016.38820433
 Virial ratio                                    1.57455452
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -24984.6771690518    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.79387331
 One electron energy                        -33987.89724518
 Two electron energy                          9003.22007613
 Virial ratio                                    1.57456124
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -24984.6528629603    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.85699294
 One electron energy                        -33997.73293653
 Two electron energy                          9013.08007357
 Virial ratio                                    1.57455985
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -24984.6528629603    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.85699294
 One electron energy                        -33997.73293652
 Two electron energy                          9013.08007356
 Virial ratio                                    1.57455985
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -24984.6528629603    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43484.85699294
 One electron energy                        -33997.73293652
 Two electron energy                          9013.08007356
 Virial ratio                                    1.57455985
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -24984.6478539636    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769706
 One electron energy                        -34002.92471150
 Two electron energy                          9018.27685753
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -24984.6478539636    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769706
 One electron energy                        -34002.92471150
 Two electron energy                          9018.27685753
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -24984.6478539636    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769706
 One electron energy                        -34002.92471149
 Two electron energy                          9018.27685753
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy             -24984.6478539636    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769706
 One electron energy                        -34002.92471149
 Two electron energy                          9018.27685752
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy             -24984.6478539636    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769706
 One electron energy                        -34002.92471149
 Two electron energy                          9018.27685753
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy             -24984.6478539636    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769706
 One electron energy                        -34002.92471149
 Two electron energy                          9018.27685753
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy             -24984.6478539636    
 Nuclear energy                                  0.00000000
 Kinetic energy                              43485.12769706
 One electron energy                        -34002.92471149
 Two electron energy                          9018.27685753
 Virial ratio                                    1.57455616
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999993151303
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000005373930
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.069268209143
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000771344
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.930732494281
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000932274
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.992122932858
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.999998660175
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000001165457
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.007876309236
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999675431
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.000003094540
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999997230029
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     2.256704988673
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.148435672326
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     3.936954045577
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     4.000014611277
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     6.063029888246
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     2.851590690436
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     7.743270103466
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000005411770
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999994587261
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     2.929092319541
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000001896100
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.070905785328
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999363738
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.007897910436
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000001065405
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999998753400
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     2.992102907021
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999998045
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999997229944
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000002772011
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.933597537818
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.921408816172
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     4.063312369162
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     3.999988048152
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     5.936701084489
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     8.078563898160
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     3.066428246048
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000001436927
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000038809
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.001639471316
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999997332556
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.998361720391
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.999999703988
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.999979156707
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000274420
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000081143
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.000020783743
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000000326524
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999675516
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999997960
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     8.809697473509
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     8.930155511502
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     3.999733585261
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     3.999997340571
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.000269027265
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     1.069845411405
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     1.190301650486
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     0.000000000000
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
    1.1     2.00000 -3845.20352     1  1  s    1.00000
    2.1     2.00000  -712.75286     1  2  s    1.00000
    3.1     2.00000  -179.76261     1  3  s    1.00000
    4.1     2.00000  -118.09970     1  1  d2-  0.99998
    5.1     2.00000  -118.09970     1  1  d2+  0.99997
    6.1     2.00000  -118.09970     1  1  d0   0.99995
    7.1     2.00000  -118.09970     1  1  d1+  0.99969
    8.1     2.00000  -118.09970     1  1  d1-  0.99968
    9.1     2.00000   -45.71553     1  4  s    1.00004
   10.1     2.00000   -23.67075     1  2  d0   1.00000
   11.1     2.00000   -23.67075     1  2  d2+  1.00000
   12.1     2.00000   -23.67075     1  2  d2-  1.00000
   13.1     2.00000   -23.67075     1  2  d1-  1.00000
   14.1     2.00000   -23.67075     1  2  d1+  1.00000
   15.1     2.00000   -10.01025     1  5  s    0.99844
   16.1     2.00000    -2.99029     1  3  d2+  1.00101
   17.1     2.00000    -2.99029     1  3  d2-  1.00101
   18.1     2.00000    -2.99029     1  3  d1-  1.00101
   19.1     2.00000    -2.99029     1  3  d1+  1.00101
   20.1     2.00000    -2.99029     1  3  d0   1.00101
   21.1     2.00000    -1.61693     1  6  s    0.98596
   22.1     0.56358    -0.05618     1  7  s    1.11034
   23.1     0.23442     0.04963     1  4  d2+  0.96009
   24.1     0.23442     0.04963     1  4  d2-  0.96009
   25.1     0.23442     0.04963     1  4  d1-  0.96009
   26.1     0.23442     0.04963     1  4  d1+  0.96009
   27.1     0.23442     0.04963     1  4  d0   0.96009
   28.1     0.08551     0.02628     1  7  s    0.98547    1 12  s    1.56798
    1.2     2.00000  -604.12713     1  1  pz   1.00000
    2.2     2.00000  -604.12713     1  1  py   1.00000
    3.2     2.00000  -604.12713     1  1  px   1.00000
    4.2     2.00000  -148.71556     1  2  px   1.00000
    5.2     2.00000  -148.71556     1  2  py   1.00000
    6.2     2.00000  -148.71556     1  2  pz   1.00000
    7.2     2.00000   -35.35383     1  3  py   0.99999
    8.2     2.00000   -35.35383     1  3  px   0.99999
    9.2     2.00000   -35.35383     1  3  pz   0.99999
   10.2     2.00000   -11.19767     1  1  f0   1.00000
   11.2     2.00000   -11.19767     1  1  f3+  0.99999
   12.2     2.00000   -11.19767     1  1  f3-  0.99999
   13.2     2.00000   -11.19767     1  1  f2+  1.00000
   14.2     2.00000   -11.19767     1  1  f2-  1.00000
   15.2     2.00000   -11.19767     1  1  f1+  0.99999
   16.2     2.00000   -11.19767     1  1  f1-  0.99999
   17.2     2.00000    -6.80151     1  4  pz   1.00022
   18.2     2.00000    -6.80151     1  4  py   1.00022
   19.2     2.00000    -6.80151     1  4  px   1.00022
   20.2     2.00000    -0.80572     1  5  py   0.99368
   21.2     2.00000    -0.80572     1  5  pz   0.99368
   22.2     2.00000    -0.80572     1  5  px   0.99368
   23.2     0.05960     0.04381     1  6  pz  -0.96757
   24.2     0.05960     0.04381     1  6  py  -0.96757
   25.2     0.05960     0.04381     1  6  px  -0.96757
 *** IN SYMMETRY  1 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.690D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.719D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.969D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.249D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.252D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.215D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.673D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.703D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.528D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.533D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.206D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.206D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.840D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.840D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.327D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.390D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.390D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.514D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.514D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.774D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.775D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.195D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.194D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.100D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.100D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.475D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.475D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.146D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.146D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.532D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.532D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.184D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  55 SYMMETRY CONTAMINATION OF 0.184D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 2 4 6 1 2   5 3 6 4 1 5 3 6 4 2   1 1 5 3 6 4 2 1 2 3   5 6 4 1 6 4 2 3 5 1
                                        2 3 5 6 4 1 6 4 3 5   2 6 4 3 5 2 1
 *** IN SYMMETRY  2 ORBITAL   2 SYMMETRY CONTAMINATION OF 0.734D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   3 SYMMETRY CONTAMINATION OF 0.734D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.211D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.211D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.517D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.517D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.960D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.363D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.363D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.175D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.175D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.443D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.443D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.383D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.383D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.293D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.293D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.121D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.121D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.290D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.290D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.203D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.203D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.203D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.162D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.409D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.411D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.552D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.554D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.238D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.237D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.328D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.328D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.348D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.348D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 2 1 3 6   7 910 8 4 5 3 2 1 2   3 1 3 2 1 2 1 3 2 1   3 6 5 410 8 7 9 2 1
                                        3 7 9 5 4 6 810 6 8  10 5 4 7 9 2 1 3 6 8  10 7 9 5 4 2 1 3
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.96585470     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.02212664
 b00000a 000      0.00830483      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.67765912
 a00000b 000     -0.00830483     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.67765912
 b0a0000 000      0.00000000     -0.00042816     -0.00008497      0.00031226     -0.64630084     -0.00043067     -0.00000000
 a0b0000 000     -0.00000000      0.00042816      0.00008497     -0.00031226      0.64630084      0.00043067      0.00000000
 b000a00 000     -0.00000000      0.00083520     -0.64630058     -0.00029316      0.00008416      0.00016690      0.00000000
 a000b00 000      0.00000000     -0.00083520      0.64630058      0.00029316     -0.00008416     -0.00016690     -0.00000000
 b00a000 000     -0.00000000     -0.64630052     -0.00083519      0.00006961      0.00042835     -0.00006913      0.00000000
 a00b000 000      0.00000000      0.64630052      0.00083519     -0.00006961     -0.00042835      0.00006913     -0.00000000
 a0000b0 000      0.00000000      0.00007159     -0.00029634      0.64616881      0.00032090     -0.01307377      0.00000000
 b0000a0 000     -0.00000000     -0.00007159      0.00029634     -0.64616881     -0.00032090      0.01307377     -0.00000000
 ba00000 000     -0.00000000      0.00006820     -0.00016080     -0.01307406      0.00042424     -0.64616880      0.00000000
 ab00000 000      0.00000000     -0.00006820      0.00016080      0.01307406     -0.00042424      0.64616880     -0.00000000
 0000000 200     -0.13463902      0.00003083     -0.00012761      0.27825795      0.00013819     -0.00562992      0.07712177
 0000000 002     -0.13463902     -0.00004085      0.00012377     -0.13425321     -0.00022731      0.24379341      0.07712177
 0000000 0ba      0.00000000     -0.00015968     -0.00003169      0.00011645     -0.24102769     -0.00016061     -0.00000000
 0000000 0ab     -0.00000000      0.00015968      0.00003169     -0.00011645      0.24102769      0.00016061      0.00000000
 0000000 a0b      0.00000000     -0.00031147      0.24102760      0.00010933     -0.00003139     -0.00006224     -0.00000000
 0000000 b0a     -0.00000000      0.00031147     -0.24102760     -0.00010933      0.00003139      0.00006224      0.00000000
 0000000 ab0      0.00000000      0.24102757      0.00031147     -0.00002596     -0.00015975      0.00002578     -0.00000000
 0000000 ba0     -0.00000000     -0.24102757     -0.00031147      0.00002596      0.00015975     -0.00002578      0.00000000
 0000000 020     -0.13463902      0.00001002      0.00000384     -0.14400474      0.00008912     -0.23816349      0.07712177
 0000002 000     -0.01619673     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.13889158
 00a00b0 000      0.00000000     -0.00007642     -0.00001517      0.00005574     -0.11536173     -0.00007687      0.00000000
 00b00a0 000     -0.00000000      0.00007642      0.00001517     -0.00005574      0.11536173      0.00007687     -0.00000000
 0000020 000     -0.04968185      0.00001278     -0.00005290      0.11533816      0.00005728     -0.00233361     -0.09373629
 0020000 000     -0.04968185     -0.00001278      0.00005290     -0.11533816     -0.00005728      0.00233361     -0.09373629
 0200000 000     -0.04968185     -0.00001278      0.00005290     -0.11533816     -0.00005728      0.00233361     -0.09373629
 0b000a0 000     -0.00000000     -0.00001217      0.00002870      0.00233366     -0.00007573      0.11533816      0.00000000
 0a000b0 000      0.00000000      0.00001217     -0.00002870     -0.00233366      0.00007573     -0.11533816     -0.00000000
 0002000 000     -0.04968185      0.00001693     -0.00005130      0.05564807      0.00009422     -0.10105258     -0.09373629
 000ab00 000     -0.00000000      0.00006619      0.00001313     -0.00004827      0.09990619      0.00006657     -0.00000000
 000ba00 000      0.00000000     -0.00006619     -0.00001313      0.00004827     -0.09990619     -0.00006657      0.00000000
 00ab000 000     -0.00000000     -0.00012911      0.09990614      0.00004532     -0.00001301     -0.00002580     -0.00000000
 00ba000 000      0.00000000      0.00012911     -0.09990614     -0.00004532      0.00001301      0.00002580      0.00000000
 0b00a00 000      0.00000000      0.00012911     -0.09990614     -0.00004532      0.00001301      0.00002580      0.00000000
 0a00b00 000     -0.00000000     -0.00012911      0.09990614      0.00004532     -0.00001301     -0.00002580     -0.00000000
 00a0b00 000      0.00000000      0.09990614      0.00012911     -0.00001076     -0.00006622      0.00001069      0.00000000
 00b0a00 000     -0.00000000     -0.09990614     -0.00012911      0.00001076      0.00006622     -0.00001069     -0.00000000
 0b0a000 000      0.00000000      0.09990614      0.00012911     -0.00001076     -0.00006622      0.00001069     -0.00000000
 0a0b000 000     -0.00000000     -0.09990614     -0.00012911      0.00001076      0.00006622     -0.00001069      0.00000000
 0000200 000     -0.04968185     -0.00000415     -0.00000159      0.05969009     -0.00003694      0.09871897     -0.09373629
 0000ab0 000      0.00000000     -0.00007454      0.05768084      0.00002616     -0.00000751     -0.00001490     -0.00000000
 0000ba0 000     -0.00000000      0.00007454     -0.05768084     -0.00002616      0.00000751      0.00001490      0.00000000
 000b0a0 000     -0.00000000     -0.05768083     -0.00007454      0.00000621      0.00003823     -0.00000617      0.00000000
 000a0b0 000      0.00000000      0.05768083      0.00007454     -0.00000621     -0.00003823      0.00000617     -0.00000000
 
 Energy:     -24984.79245587 -24984.71128195 -24984.71128195 -24984.71128195 -24984.71128195 -24984.71128195 -24984.67001020
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      1.00000000      0.00000000
 a000a00 000      0.00000033      0.00017431     -0.00055329      0.99999873      0.00011814     -0.00000000      0.00000000
 a00a000 000      0.00029839     -0.00005921      0.99999870      0.00055330     -0.00001574     -0.00000000     -0.00000000
 0a000a0 000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a0a0000 000      0.99999668      0.00208161     -0.00029826     -0.00000087      0.00009657      0.00000000      0.00000000
 a0000a0 000     -0.00009182     -0.00227952      0.00001569     -0.00011774      0.99999629      0.00000000      0.00000000
 aa00000 000     -0.00208181      0.99999412      0.00005996     -0.00017455      0.00227931      0.00000000     -0.00000000
 00a00a0 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 000aa00 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.32630564
 00aa000 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00001579
 00a0a00 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00018943
 0000000 0aa     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.68382953
 0000000 a0a     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00003308
 0000000 aa0     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00039697
 0a0a000 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00018943
 0aa0000 000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.65261127
 0a00a00 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00001579
 000a0a0 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00032810
 0000aa0 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00002734
 
 Energy:     -24984.72082894 -24984.72082894 -24984.72082894 -24984.72082894 -24984.72082894 -24984.67716905 -24984.65286296

 State:                8               9              10              11              12              13              14
 a00000a 000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 a000a00 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a00a000 000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 0a000a0 000     -0.00000000      0.00000000      0.00005186      0.00001731     -0.00223225      0.99999714      0.00079750
 a0a0000 000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a0000a0 000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 aa00000 000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 00a00a0 000      0.00000000      0.00000000      0.00001679     -0.00014100      0.99996410      0.00223871     -0.00816178
 000aa00 000     -0.00018940      0.00001608      0.00004513      0.00014311      0.00730185     -0.00069701      0.89439703
 00aa000 000      0.00051263      0.32630529      0.78312265      0.00170148     -0.00001140     -0.00016798     -0.00005095
 00a0a00 000      0.32630524     -0.00051262     -0.00173075      0.75519345     -0.00008082      0.00001097      0.00007474
 0000000 0aa      0.00039692     -0.00003371     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0000000 a0a      0.00107430      0.68382880     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 0000000 aa0      0.68382868     -0.00107428     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0a0a000 000     -0.32630524      0.00051262     -0.00154076      0.65282805      0.00032901     -0.00004118     -0.00035565
 0aa0000 000      0.00037880     -0.00003217      0.00002257      0.00007156      0.00365093     -0.00034851      0.44719851
 0a00a00 000      0.00051263      0.32630529     -0.61416439     -0.00159736      0.00001287     -0.00015973      0.00001431
 000a0a0 000      0.56517724     -0.00088788      0.00010969     -0.05910069      0.00023661     -0.00003011     -0.00024849
 0000aa0 000      0.00088790      0.56517733     -0.09754810     -0.00006011     -0.00000085      0.00018920      0.00002116
 
 Energy:     -24984.65286296 -24984.65286296 -24984.64785396 -24984.64785396 -24984.64785396 -24984.64785396 -24984.64785396

 State:               15              16
 a00000a 000      0.00000000     -0.00000000
 a000a00 000     -0.00000000     -0.00000000
 a00a000 000      0.00000000     -0.00000000
 0a000a0 000      0.00005116      0.00029461
 a0a0000 000     -0.00000000      0.00000000
 a0000a0 000     -0.00000000      0.00000000
 aa00000 000      0.00000000      0.00000000
 00a00a0 000     -0.00039210     -0.00000280
 000aa00 000      0.00036364      0.00002230
 00aa000 000      0.00086548      0.43210559
 00a0a00 000     -0.47924793      0.00112294
 0000000 0aa     -0.00000000     -0.00000000
 0000000 a0a     -0.00000000     -0.00000001
 0000000 aa0      0.00000001     -0.00000000
 0a0a000 000      0.61140160     -0.00100288
 0aa0000 000      0.00018182      0.00001115
 0a00a00 000      0.00122443      0.65022921
 000a0a0 000      0.62968681     -0.00122734
 0000aa0 000     -0.00120661     -0.62488629
 
 Energy:     -24984.64785396 -24984.64785396
 


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
 CPU TIMES  *        22.75      8.11      0.14     14.31
 REAL TIME  *        30.30 SEC
 DISK USED  *       164.24 MB (local),        1.03 GB (total)
 SF USED    *       307.60 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -24984.79246    0.0
    -24984.71128    6.0
    -24984.71128    6.0
    -24984.71128    6.0
    -24984.71128    6.0
    -24984.71128    6.0
    -24984.67001    0.0
    -24984.72083    6.0
    -24984.72083    6.0
    -24984.72083    6.0
    -24984.72083    6.0
    -24984.72083    6.0
    -24984.67717    0.0
    -24984.65286    2.0
    -24984.65286    2.0
    -24984.65286    2.0
    -24984.64785   12.0
    -24984.64785   12.0
    -24984.64785   12.0
    -24984.64785   12.0
    -24984.64785   12.0
    -24984.64785   12.0
    -24984.64785   12.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

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
     1    -24984.79245587
     2    -24984.71128195
     3    -24984.71128195
     4    -24984.71128195
     5    -24984.71128195
     6    -24984.71128195
     7    -24984.67001020

 Number of blocks in overlap matrix:   694   Smallest eigenvalue:  0.82D+00
 Number of N-2 electron functions:     748
 Number of N-1 electron functions:   31960

 Number of internal configurations:                38116
 Number of singly external configurations:       1148936
 Number of doubly external configurations:        976024
 Total number of contracted configurations:      2163076
 Total number of uncontracted configurations:    8644507

 Diagonal Coupling coefficients finished.               Storage:20136241 words, CPU-Time:     16.70 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  980284 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24984.79245587    -0.00000000    -0.36358054  0.37D-01  0.62D-01    23.15
    1     2     2     1.00000000     0.00000000-24984.71128195    -0.00000000    -0.36641853  0.42D-01  0.66D-01    23.15
    1     3     3     1.00000000     0.00000000-24984.71128195    -0.00000000    -0.36644320  0.42D-01  0.66D-01    23.15
    1     4     4     1.00000000     0.00000000-24984.71128195    -0.00000000    -0.36634032  0.42D-01  0.66D-01    23.15
    1     5     5     1.00000000     0.00000000-24984.71128195    -0.00000000    -0.36636594  0.42D-01  0.66D-01    23.15
    1     6     6     1.00000000     0.00000000-24984.71128195    -0.00000000    -0.36623856  0.42D-01  0.66D-01    23.15
    1     7     7     1.00000000     0.00000000-24984.67001020     0.00000000    -0.35835881  0.44D-01  0.60D-01    23.15
    2     1     1     1.07010031    -0.31829938-24985.11075526    -0.31829938    -0.00663913  0.18D-02  0.77D-03   161.97
    2     2     2     1.07566227    -0.31588070-24985.02716264    -0.31588070    -0.00648873  0.18D-02  0.89D-03   161.97
    2     3     3     1.07562096    -0.31586892-24985.02715087    -0.31586892    -0.00650117  0.18D-02  0.89D-03   161.97
    2     4     4     1.07573930    -0.31585852-24985.02714047    -0.31585852    -0.00651637  0.18D-02  0.89D-03   161.97
    2     5     5     1.07578797    -0.31584266-24985.02712460    -0.31584266    -0.00653344  0.18D-02  0.89D-03   161.97
    2     6     6     1.07578640    -0.31584201-24985.02712396    -0.31584201    -0.00653390  0.18D-02  0.89D-03   161.97
    2     7     7     1.07416854    -0.31453179-24984.98454199    -0.31453179    -0.00653919  0.23D-02  0.79D-03   161.97
    3     1     1     1.07075101    -0.32490616-24985.11736203    -0.00660678    -0.00018337  0.43D-04  0.27D-04   300.43
    3     2     2     1.07449687    -0.32230980-24985.03359174    -0.00642910    -0.00016488  0.36D-04  0.30D-04   300.43
    3     3     3     1.07450592    -0.32230955-24985.03359150    -0.00644063    -0.00016526  0.36D-04  0.30D-04   300.43
    3     4     4     1.07451489    -0.32230901-24985.03359096    -0.00645049    -0.00016607  0.36D-04  0.31D-04   300.43
    3     5     5     1.07451603    -0.32230855-24985.03359049    -0.00646589    -0.00016645  0.36D-04  0.31D-04   300.43
    3     6     6     1.07451614    -0.32230834-24985.03359029    -0.00646633    -0.00016669  0.36D-04  0.31D-04   300.43
    3     7     7     1.07277442    -0.32101778-24984.99102797    -0.00648599    -0.00018858  0.49D-04  0.32D-04   300.43
    4     1     1     1.07170168    -0.32509709-24985.11755296    -0.00019093    -0.00000928  0.53D-05  0.89D-06   434.57
    4     2     2     1.07531360    -0.32248184-24985.03376379    -0.00017205    -0.00000815  0.61D-05  0.77D-06   434.57
    4     3     3     1.07531587    -0.32248183-24985.03376377    -0.00017228    -0.00000819  0.61D-05  0.78D-06   434.57
    4     4     4     1.07531610    -0.32248180-24985.03376375    -0.00017279    -0.00000820  0.61D-05  0.78D-06   434.57
    4     5     5     1.07531027    -0.32248180-24985.03376375    -0.00017326    -0.00000816  0.61D-05  0.77D-06   434.57
    4     6     6     1.07531613    -0.32248179-24985.03376373    -0.00017344    -0.00000822  0.61D-05  0.78D-06   434.57
    4     7     7     1.07355936    -0.32121186-24984.99122206    -0.00019409    -0.00000955  0.61D-05  0.11D-05   434.57
    5     1     1     1.07189726    -0.32510807-24985.11756394    -0.00001098    -0.00000054  0.21D-06  0.68D-07   564.24
    5     2     2     1.07542968    -0.32249172-24985.03377366    -0.00000988    -0.00000063  0.29D-06  0.82D-07   564.24
    5     3     3     1.07542940    -0.32249171-24985.03377366    -0.00000988    -0.00000063  0.29D-06  0.83D-07   564.24
    5     4     4     1.07543010    -0.32249171-24985.03377366    -0.00000991    -0.00000063  0.29D-06  0.82D-07   564.24
    5     5     5     1.07542999    -0.32249171-24985.03377365    -0.00000991    -0.00000064  0.29D-06  0.82D-07   564.24
    5     6     6     1.07543001    -0.32249171-24985.03377365    -0.00000992    -0.00000064  0.30D-06  0.83D-07   564.24
    5     7     7     1.07363589    -0.32122318-24984.99123338    -0.00001132    -0.00000065  0.33D-06  0.85D-07   564.24
    6     1     1     1.07191566    -0.32510867-24985.11756455    -0.00000061    -0.00000003  0.83D-08  0.46D-08   693.72
    6     2     2     1.07544175    -0.32249246-24985.03377441    -0.00000075    -0.00000005  0.23D-07  0.67D-08   693.72
    6     3     3     1.07544175    -0.32249246-24985.03377441    -0.00000075    -0.00000005  0.23D-07  0.67D-08   693.72
    6     4     4     1.07544180    -0.32249246-24985.03377441    -0.00000075    -0.00000005  0.23D-07  0.69D-08   693.72
    6     5     5     1.07544168    -0.32249246-24985.03377441    -0.00000076    -0.00000005  0.23D-07  0.69D-08   693.72
    6     6     6     1.07544164    -0.32249246-24985.03377441    -0.00000076    -0.00000005  0.23D-07  0.69D-08   693.72
    6     7     7     1.07364283    -0.32122392-24984.99123412    -0.00000074    -0.00000004  0.15D-07  0.86D-08   693.72
    7     1     1     1.07192659    -0.32510870-24985.11756457    -0.00000003    -0.00000000  0.80D-09  0.21D-09   823.47
    7     2     2     1.07545708    -0.32249252-24985.03377447    -0.00000006    -0.00000000  0.22D-08  0.48D-09   823.47
    7     3     3     1.07545709    -0.32249252-24985.03377447    -0.00000006    -0.00000000  0.23D-08  0.48D-09   823.47
    7     4     4     1.07545707    -0.32249252-24985.03377447    -0.00000006    -0.00000000  0.23D-08  0.48D-09   823.47
    7     5     5     1.07545706    -0.32249252-24985.03377447    -0.00000006    -0.00000000  0.23D-08  0.49D-09   823.47
    7     6     6     1.07545704    -0.32249252-24985.03377447    -0.00000006    -0.00000000  0.23D-08  0.49D-09   823.47
    7     7     7     1.07365248    -0.32122397-24984.99123417    -0.00000005    -0.00000000  0.25D-08  0.64D-09   823.47


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   9.7%
 S   2.0%  42.1%
 P   0.7%  28.2%   9.2%

 Initialization:   2.1%
 Other:            5.9%

 Total CPU:      823.5 seconds
 =====================================



 gnormi=  0.93289970  gnorms=  0.02254115  gnormp=  0.04455915  gnorm=  1.00000000
 ecorri= -0.30329381  ecorrs= -0.00732895  ecorrp= -0.01448594  ecorr= -0.32510870

 gnormi=  0.92983720  gnorms=  0.02356725  gnormp=  0.04659556  gnorm=  1.00000000
 ecorri= -0.29986554  ecorrs= -0.00760079  ecorrp= -0.01502619  ecorr= -0.32249252

 gnormi=  0.92983719  gnorms=  0.02356725  gnormp=  0.04659556  gnorm=  1.00000000
 ecorri= -0.29986554  ecorrs= -0.00760079  ecorrp= -0.01502619  ecorr= -0.32249252

 gnormi=  0.92983721  gnorms=  0.02356723  gnormp=  0.04659556  gnorm=  1.00000000
 ecorri= -0.29986555  ecorrs= -0.00760081  ecorrp= -0.01502617  ecorr= -0.32249252

 gnormi=  0.92983722  gnorms=  0.02356721  gnormp=  0.04659557  gnorm=  1.00000000
 ecorri= -0.29986555  ecorrs= -0.00760081  ecorrp= -0.01502616  ecorr= -0.32249252

 gnormi=  0.92983724  gnorms=  0.02356721  gnormp=  0.04659556  gnorm=  1.00000000
 ecorri= -0.29986555  ecorrs= -0.00760081  ecorrp= -0.01502615  ecorr= -0.32249252

 gnormi=  0.93140008  gnorms=  0.02436960  gnormp=  0.04423032  gnorm=  1.00000000
 ecorri= -0.29918803  ecorrs= -0.00782850  ecorrp= -0.01420744  ecorr= -0.32122397

 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222000           0.9340949   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0406630
 222222/00000\222000           0.0469985   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9192039
 222222/0\0000222000          -0.0000000   0.0000000   0.0000000   0.8896773   0.0000000  -0.0000000  -0.0000000
 222222/00\000222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.8896773   0.0000000
 222222/000\00222000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8896773  -0.0000000   0.0000000
 222222/0000\0222000           0.0000000   0.7635642   0.4566130   0.0000000   0.0000000   0.0000000   0.0000000
 222222/\00000222000           0.0000000  -0.4566130   0.7635642  -0.0000000   0.0000000   0.0000000   0.0000000
 2222220000000222/\0           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.3029620  -0.0000000
 2222220000000222/0\           0.0000000  -0.0000000  -0.0000000   0.0000000   0.3029620   0.0000000  -0.0000000
 22222200000002220/\          -0.0000000  -0.0000000  -0.0000000   0.3029620  -0.0000000  -0.0000000   0.0000000
 2222220000000222020          -0.1137273   0.0037970  -0.2473382   0.0000000  -0.0000000   0.0000000   0.0852988
 2222220000000222002          -0.1137273  -0.2160997   0.1203808   0.0000000  -0.0000000  -0.0000000   0.0852988
 2222220000000222200          -0.1137273   0.2123027   0.1269574   0.0000000   0.0000000   0.0000000   0.0852988
 22222200/00\0222000           0.0000000   0.0000000   0.0000000  -0.1541852   0.0000000   0.0000000  -0.0000000
 2222220000002222000          -0.0095252  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.1496018
 2222220/00\00222000           0.0000000  -0.0000000   0.0000000   0.0000000   0.1335283   0.0000000  -0.0000000
 2222220/0\000222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1335283   0.0000000
 22222200/0\00222000           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.1335282  -0.0000000
 22222200/\000222000           0.0000000  -0.0000000   0.0000000   0.0000000   0.1335282   0.0000000  -0.0000000
 222222000/\00222000          -0.0000000  -0.0000000  -0.0000000   0.1335282  -0.0000000  -0.0000000   0.0000000
 2222220/000\0222000           0.0000000   0.0791332  -0.1323292  -0.0000000   0.0000000   0.0000000   0.0000000
 2222220000200222000          -0.0509086  -0.0016735   0.1090124  -0.0000000   0.0000000  -0.0000000  -0.0839296
 2222220002000222000          -0.0509086   0.0952443  -0.0530569  -0.0000000   0.0000000   0.0000000  -0.0839296
 2222220000020222000          -0.0509086   0.0935709   0.0559556  -0.0000000   0.0000000   0.0000000  -0.0839296
 2222220200000222000          -0.0509086  -0.0935708  -0.0559555  -0.0000000   0.0000000   0.0000000  -0.0839296
 2222220020000222000          -0.0509086  -0.0935708  -0.0559555  -0.0000000   0.0000000   0.0000000  -0.0839296
 2222220000/\0222000           0.0000000  -0.0000000   0.0000000   0.0000000   0.0770926   0.0000000  -0.0000000
 222222000/0\0222000           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0770926  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.960385    0.000000    0.000000    0.000000   -0.000000    0.000000    0.061934
 2           0.000000   -0.000000   -0.000000    0.825636   -0.000000   -0.492822    0.000000
 3           0.000000   -0.000000   -0.000000    0.492822    0.000000    0.825636   -0.000000
 4           0.000000    0.000000   -0.000000   -0.000000    0.961535   -0.000000    0.000000
 5          -0.000000    0.000000    0.961535    0.000000    0.000000    0.000000   -0.000000
 6          -0.000000    0.961535   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 7          -0.066098    0.000000    0.000000    0.000000   -0.000000    0.000000    0.959874

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962377    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.002095
 2           0.000000    0.961535    0.000000   -0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.961535    0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.961535    0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.961535    0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.961535   -0.000000
 7          -0.002095    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.962144

 Energy contributions of internal configurations for state 2
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3216       0.00008635    -1.07347482       2222221000010222000             

 Energy contributions of internal configurations for state 3
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3316       0.00008634    -1.07347344       2222221100000222000             

 Energy contributions of internal configurations for state 4
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2657       0.00061461     1.24449644       2222220000000222011             
  3282       0.00011722    -1.45735231       2222221010000222000             

 Energy contributions of internal configurations for state 5
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2658       0.00061461     1.24449509       2222220000000222101             
  3232       0.00011722    -1.45734972       2222221000100222000             

 Energy contributions of internal configurations for state 6
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2659       0.00061461     1.24449421       2222220000000222110             
  3254       0.00011722    -1.45734970       2222221001000222000             


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96038481 (fixed)   0.96259701 (relaxed)   0.96237748 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00726571   -0.01180856   -0.22452879
 Singles      0.02433801   -0.06459367   -0.06715369
 Pairs        0.04811118   -0.02045010   -0.03342622
 Total        1.07971490   -0.09685233   -0.32510870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.79191395
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.94504162
 One electron energy               -33998.16245015
 Two electron energy                 9013.04488557
 Virial quotient                       -0.57456937
 Correlation energy                    -0.32565063
 !MRCI STATE 1.1 Energy              -24985.1175645747    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.14352378 (Davidson, fixed reference)
 Cluster corrected energies        -24985.14336342 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.14352378 (Davidson, rotated reference)

 Cluster corrected energies        -24985.14250301 (Pople, fixed reference)
 Cluster corrected energies        -24985.14233874 (Pople, relaxed reference)
 Cluster corrected energies        -24985.14250301 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.82563650 (fixed)   0.96205321 (relaxed)   0.96153477 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00571964   -0.00852758   -0.24234380
 Singles      0.02549053   -0.06221599   -0.06512253
 Pairs        0.05039814   -0.00000000   -0.01502619
 Total        1.08160831   -0.07074358   -0.32249252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71128195
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.47581544
 One electron energy               -33998.53315445
 Two electron energy                 9013.49937998
 Virial quotient                       -0.57457365
 Correlation energy                    -0.32249252
 !MRCI STATE 2.1 Energy              -24985.0337744663    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06009254 (Davidson, fixed reference)
 Cluster corrected energies        -24985.05971669 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06009254 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05909777 (Pople, fixed reference)
 Cluster corrected energies        -24985.05871178 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05909777 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.82563649 (fixed)   0.96205321 (relaxed)   0.96153477 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00571964   -0.00852759   -0.24234380
 Singles      0.02549054   -0.06221600   -0.06512253
 Pairs        0.05039814   -0.00000000   -0.01502619
 Total        1.08160831   -0.07074358   -0.32249252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71128195
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.47581244
 One electron energy               -33998.53314714
 Two electron energy                 9013.49937268
 Virial quotient                       -0.57457365
 Correlation energy                    -0.32249252
 !MRCI STATE 3.1 Energy              -24985.0337744663    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06009254 (Davidson, fixed reference)
 Cluster corrected energies        -24985.05971669 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06009254 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05909778 (Pople, fixed reference)
 Cluster corrected energies        -24985.05871178 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05909778 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96153477 (fixed)   0.96205322 (relaxed)   0.96153477 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00571964   -0.00852759   -0.24234383
 Singles      0.02549051   -0.06221596   -0.06512252
 Pairs        0.05039814   -0.00000000   -0.01502617
 Total        1.08160830   -0.07074355   -0.32249252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71128195
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.47580630
 One electron energy               -33998.53312769
 Two electron energy                 9013.49935322
 Virial quotient                       -0.57457365
 Correlation energy                    -0.32249252
 !MRCI STATE 4.1 Energy              -24985.0337744662    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06009253 (Davidson, fixed reference)
 Cluster corrected energies        -24985.05971669 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06009253 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05909777 (Pople, fixed reference)
 Cluster corrected energies        -24985.05871178 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05909777 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96153478 (fixed)   0.96205322 (relaxed)   0.96153478 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00571964   -0.00852759   -0.24234385
 Singles      0.02549049   -0.06221595   -0.06512251
 Pairs        0.05039815    0.00000000   -0.01502616
 Total        1.08160828   -0.07074354   -0.32249252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71128195
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.47580521
 One electron energy               -33998.53312550
 Two electron energy                 9013.49935103
 Virial quotient                       -0.57457365
 Correlation energy                    -0.32249252
 !MRCI STATE 5.1 Energy              -24985.0337744662    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06009253 (Davidson, fixed reference)
 Cluster corrected energies        -24985.05971669 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06009253 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05909777 (Pople, fixed reference)
 Cluster corrected energies        -24985.05871177 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05909777 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96153479 (fixed)   0.96205323 (relaxed)   0.96153479 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00571964   -0.00852759   -0.24234385
 Singles      0.02549049   -0.06221595   -0.06512251
 Pairs        0.05039814    0.00000000   -0.01502615
 Total        1.08160827   -0.07074353   -0.32249252
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.71128195
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.47580391
 One electron energy               -33998.53312123
 Two electron energy                 9013.49934676
 Virial quotient                       -0.57457365
 Correlation energy                    -0.32249252
 !MRCI STATE 6.1 Energy              -24985.0337744662    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.06009252 (Davidson, fixed reference)
 Cluster corrected energies        -24985.05971668 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.06009252 (Davidson, rotated reference)

 Cluster corrected energies        -24985.05909776 (Pople, fixed reference)
 Cluster corrected energies        -24985.05871177 (Pople, relaxed reference)
 Cluster corrected energies        -24985.05909776 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95987354 (fixed)   0.96229858 (relaxed)   0.96214438 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00613388   -0.01054754   -0.01234700
 Singles      0.02632497   -0.06372028   -0.06681576
 Pairs        0.04777928   -0.24613633   -0.24206121
 Total        1.08023814   -0.32040415   -0.32122397
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.67055212
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.54030057
 One electron energy               -33989.07229658
 Two electron energy                 9004.08106241
 Virial quotient                       -0.57457181
 Correlation energy                    -0.32068205
 !MRCI STATE 7.1 Energy              -24984.9912341660    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.01696510 (Davidson, fixed reference)
 Cluster corrected energies        -24985.01685408 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.01696510 (Davidson, rotated reference)

 Cluster corrected energies        -24985.01596413 (Pople, fixed reference)
 Cluster corrected energies        -24985.01585030 (Pople, relaxed reference)
 Cluster corrected energies        -24985.01596413 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      126.69       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1141.23   1118.47      8.11      0.14     14.31
 REAL TIME  *      1162.72 SEC
 DISK USED  *       285.48 MB (local),        1.74 GB (total)
 SF USED    *         1.31 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =    -24985.14352378  AU                              
 SETTING HLSDIAG(2)     =    -24985.06009254  AU                              
 SETTING HLSDIAG(3)     =    -24985.06009254  AU                              
 SETTING HLSDIAG(4)     =    -24985.06009253  AU                              
 SETTING HLSDIAG(5)     =    -24985.06009253  AU                              
 SETTING HLSDIAG(6)     =    -24985.06009252  AU                              
 SETTING HLSDIAG(7)     =    -24985.01696510  AU                              


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
     1    -24984.72082894
     2    -24984.72082894
     3    -24984.72082894
     4    -24984.72082894
     5    -24984.72082894
     6    -24984.67716905
     7    -24984.65286296
     8    -24984.65286296
     9    -24984.65286296
    10    -24984.64785396
    11    -24984.64785396
    12    -24984.64785396
    13    -24984.64785396
    14    -24984.64785396
    15    -24984.64785396
    16    -24984.64785396

 Number of blocks in overlap matrix:  1441   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:    1477
 Number of N-1 electron functions:   49051

 Number of internal configurations:                60333
 Number of singly external configurations:       1764653
 Number of doubly external configurations:       1927621
 Total number of contracted configurations:      3752607
 Total number of uncontracted configurations:   13070967

 Diagonal Coupling coefficients finished.               Storage:36433702 words, CPU-Time:    105.91 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1189174 words, CPU-time:      0.20 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000-24984.72082894     0.00000000    -0.37176147  0.44D-01  0.67D-01   128.08
    1     2     2     1.00000000     0.00000000-24984.72082894     0.00000000    -0.37176395  0.44D-01  0.67D-01   128.08
    1     3     3     1.00000000     0.00000000-24984.72082894    -0.00000000    -0.37177224  0.44D-01  0.67D-01   128.08
    1     4     4     1.00000000     0.00000000-24984.72082894     0.00000000    -0.37177235  0.44D-01  0.67D-01   128.08
    1     5     5     1.00000000     0.00000000-24984.72082894    -0.00000000    -0.37175012  0.44D-01  0.67D-01   128.08
    1     6     6     1.00000000     0.00000000-24984.67716905    -0.00000000    -0.35248010  0.41D-01  0.58D-01   128.08
    1     7     7     1.00000000     0.00000000-24984.65286296     0.00000000    -0.35799119  0.34D-01  0.66D-01   128.08
    1     8     8     1.00000000     0.00000000-24984.65286296     0.00000000    -0.35806761  0.34D-01  0.66D-01   128.08
    1     9     9     1.00000000     0.00000000-24984.65286296     0.00000000    -0.35807276  0.34D-01  0.66D-01   128.08
    1    10    10     1.00000000     0.00000000-24984.64785396    -0.00000000    -0.37198216  0.40D-01  0.74D-01   128.08
    1    11    11     1.00000000     0.00000000-24984.64785396     0.00000000    -0.37198284  0.40D-01  0.74D-01   128.08
    1    12    12     1.00000000     0.00000000-24984.64785396    -0.00000000    -0.37206260  0.40D-01  0.74D-01   128.08
    1    13    13     1.00000000     0.00000000-24984.64785396    -0.00000000    -0.37204984  0.40D-01  0.74D-01   128.08
    1    14    14     1.00000000     0.00000000-24984.64785396     0.00000000    -0.37193807  0.40D-01  0.74D-01   128.08
    1    15    15     1.00000000     0.00000000-24984.64785396    -0.00000000    -0.37191410  0.40D-01  0.74D-01   128.08
    1    16    16     1.00000000     0.00000000-24984.64785396    -0.00000000    -0.37191508  0.40D-01  0.74D-01   128.08
    2     1     1     1.07623292    -0.31857330-24985.03940224    -0.31857330    -0.00699927  0.19D-02  0.92D-03   707.58
    2     2     2     1.07624069    -0.31856897-24985.03939791    -0.31856897    -0.00700393  0.19D-02  0.92D-03   707.58
    2     3     3     1.07624299    -0.31856677-24985.03939571    -0.31856677    -0.00700568  0.19D-02  0.92D-03   707.58
    2     4     4     1.07625727    -0.31856314-24985.03939208    -0.31856314    -0.00700946  0.19D-02  0.92D-03   707.58
    2     5     5     1.07625604    -0.31856037-24985.03938931    -0.31856037    -0.00701212  0.19D-02  0.92D-03   707.58
    2     6     6     1.07238810    -0.31332222-24984.99049127    -0.31332222    -0.00560203  0.14D-02  0.62D-03   707.58
    2     7     7     1.07796569    -0.31065992-24984.96352288    -0.31065992    -0.00648725  0.15D-02  0.10D-02   707.58
    2     8     8     1.07796681    -0.31065898-24984.96352194    -0.31065898    -0.00648827  0.15D-02  0.10D-02   707.58
    2     9     9     1.07798055    -0.31065129-24984.96351425    -0.31065129    -0.00649308  0.16D-02  0.10D-02   707.58
    2    10    10     1.07802420    -0.31565071-24984.96350468    -0.31565071    -0.00651062  0.16D-02  0.10D-02   707.58
    2    11    11     1.07802355    -0.31565068-24984.96350465    -0.31565068    -0.00651056  0.16D-02  0.10D-02   707.58
    2    12    12     1.07799946    -0.31564991-24984.96350387    -0.31564991    -0.00651582  0.16D-02  0.10D-02   707.58
    2    13    13     1.07802447    -0.31564219-24984.96349616    -0.31564219    -0.00652337  0.16D-02  0.10D-02   707.58
    2    14    14     1.07120818    -0.31543136-24984.96328533    -0.31543136    -0.00605557  0.16D-02  0.91D-03   707.58
    2    15    15     1.07123386    -0.31541146-24984.96326542    -0.31541146    -0.00607695  0.16D-02  0.92D-03   707.58
    2    16    16     1.07123156    -0.31540962-24984.96326359    -0.31540962    -0.00607850  0.16D-02  0.92D-03   707.58
    3     1     1     1.07486971    -0.32549669-24985.04632563    -0.00692340    -0.00016252  0.35D-04  0.26D-04  1270.94
    3     2     2     1.07486886    -0.32549645-24985.04632539    -0.00692748    -0.00016266  0.35D-04  0.26D-04  1270.94
    3     3     3     1.07486894    -0.32549644-24985.04632538    -0.00692966    -0.00016280  0.35D-04  0.26D-04  1270.94
    3     4     4     1.07486941    -0.32549622-24985.04632515    -0.00693307    -0.00016299  0.35D-04  0.26D-04  1270.94
    3     5     5     1.07486876    -0.32549613-24985.04632507    -0.00693576    -0.00016306  0.35D-04  0.26D-04  1270.94
    3     6     6     1.07333358    -0.31906078-24984.99622983    -0.00573856    -0.00012624  0.31D-04  0.18D-04  1270.94
    3     7     7     1.07664606    -0.31709812-24984.96996108    -0.00643820    -0.00013991  0.27D-04  0.26D-04  1270.94
    3     8     8     1.07664769    -0.31709803-24984.96996099    -0.00643906    -0.00014040  0.27D-04  0.26D-04  1270.94
    3     9     9     1.07664550    -0.31709787-24984.96996083    -0.00644657    -0.00014024  0.27D-04  0.26D-04  1270.94
    3    10    10     1.07664563    -0.32210685-24984.96996082    -0.00645614    -0.00014030  0.27D-04  0.26D-04  1270.94
    3    11    11     1.07664173    -0.32210676-24984.96996072    -0.00645608    -0.00013971  0.27D-04  0.26D-04  1270.94
    3    12    12     1.07664122    -0.32210671-24984.96996067    -0.00645680    -0.00013970  0.27D-04  0.26D-04  1270.94
    3    13    13     1.07664447    -0.32210633-24984.96996029    -0.00646413    -0.00014000  0.27D-04  0.26D-04  1270.94
    3    14    14     1.07004929    -0.32144882-24984.96930278    -0.00601746    -0.00014623  0.23D-04  0.30D-04  1270.94
    3    15    15     1.07005039    -0.32144719-24984.96930116    -0.00603573    -0.00014751  0.24D-04  0.31D-04  1270.94
    3    16    16     1.07004994    -0.32144713-24984.96930109    -0.00603750    -0.00014756  0.24D-04  0.31D-04  1270.94
    4     1     1     1.07575147    -0.32566987-24985.04649881    -0.00017318    -0.00000721  0.51D-05  0.62D-06  1835.81
    4     2     2     1.07575148    -0.32566984-24985.04649878    -0.00017339    -0.00000722  0.51D-05  0.62D-06  1835.81
    4     3     3     1.07575147    -0.32566984-24985.04649878    -0.00017340    -0.00000722  0.51D-05  0.62D-06  1835.81
    4     4     4     1.07575064    -0.32566977-24985.04649871    -0.00017356    -0.00000719  0.51D-05  0.61D-06  1835.81
    4     5     5     1.07575068    -0.32566968-24985.04649862    -0.00017355    -0.00000719  0.51D-05  0.61D-06  1835.81
    4     6     6     1.07413143    -0.31919495-24984.99636400    -0.00013417    -0.00000537  0.33D-05  0.51D-06  1835.81
    4     7     7     1.07741950    -0.31724709-24984.97011005    -0.00014896    -0.00000580  0.43D-05  0.57D-06  1835.81
    4     8     8     1.07741996    -0.31724703-24984.97010999    -0.00014900    -0.00000584  0.43D-05  0.58D-06  1835.81
    4     9     9     1.07741996    -0.31724703-24984.97010999    -0.00014916    -0.00000584  0.43D-05  0.58D-06  1835.81
    4    10    10     1.07741861    -0.32225558-24984.97010954    -0.00014873    -0.00000577  0.43D-05  0.57D-06  1835.81
    4    11    11     1.07741980    -0.32225538-24984.97010934    -0.00014862    -0.00000586  0.43D-05  0.57D-06  1835.81
    4    12    12     1.07741884    -0.32225536-24984.97010933    -0.00014866    -0.00000584  0.43D-05  0.57D-06  1835.81
    4    13    13     1.07741879    -0.32225536-24984.97010932    -0.00014903    -0.00000584  0.43D-05  0.57D-06  1835.81
    4    14    14     1.07072751    -0.32160138-24984.96945534    -0.00015255    -0.00000618  0.44D-05  0.65D-06  1835.81
    4    15    15     1.07072714    -0.32160088-24984.96945485    -0.00015369    -0.00000623  0.45D-05  0.66D-06  1835.81
    4    16    16     1.07072712    -0.32160088-24984.96945485    -0.00015375    -0.00000623  0.45D-05  0.66D-06  1835.81
    5     1     1     1.07591239    -0.32567874-24985.04650768    -0.00000887    -0.00000045  0.15D-06  0.67D-07  2384.51
    5     2     2     1.07591234    -0.32567873-24985.04650767    -0.00000889    -0.00000045  0.15D-06  0.67D-07  2384.51
    5     3     3     1.07591235    -0.32567873-24985.04650767    -0.00000889    -0.00000045  0.15D-06  0.67D-07  2384.51
    5     4     4     1.07591157    -0.32567862-24985.04650756    -0.00000885    -0.00000045  0.15D-06  0.67D-07  2384.51
    5     5     5     1.07591149    -0.32567853-24985.04650747    -0.00000885    -0.00000045  0.15D-06  0.67D-07  2384.51
    5     6     6     1.07424541    -0.31920112-24984.99637018    -0.00000618    -0.00000028  0.10D-06  0.38D-07  2384.51
    5     7     7     1.07753363    -0.31725426-24984.97011722    -0.00000718    -0.00000034  0.12D-06  0.54D-07  2384.51
    5     8     8     1.07753363    -0.31725426-24984.97011722    -0.00000723    -0.00000034  0.12D-06  0.54D-07  2384.51
    5     9     9     1.07753358    -0.31725425-24984.97011721    -0.00000722    -0.00000034  0.12D-06  0.54D-07  2384.51
    5    10    10     1.07753301    -0.32226270-24984.97011666    -0.00000712    -0.00000034  0.12D-06  0.54D-07  2384.51
    5    11    11     1.07753298    -0.32226264-24984.97011660    -0.00000727    -0.00000035  0.12D-06  0.55D-07  2384.51
    5    12    12     1.07753290    -0.32226260-24984.97011656    -0.00000724    -0.00000035  0.12D-06  0.55D-07  2384.51
    5    13    13     1.07753289    -0.32226260-24984.97011656    -0.00000724    -0.00000035  0.12D-06  0.55D-07  2384.51
    5    14    14     1.07074636    -0.32160881-24984.96946277    -0.00000743    -0.00000038  0.14D-06  0.62D-07  2384.51
    5    15    15     1.07074642    -0.32160836-24984.96946233    -0.00000748    -0.00000039  0.14D-06  0.62D-07  2384.51
    5    16    16     1.07074642    -0.32160836-24984.96946233    -0.00000748    -0.00000039  0.14D-06  0.62D-07  2384.51
    6     1     1     1.07593718    -0.32567928-24985.04650822    -0.00000053    -0.00000003  0.15D-07  0.31D-08  2932.31
    6     2     2     1.07593717    -0.32567926-24985.04650820    -0.00000053    -0.00000003  0.15D-07  0.31D-08  2932.31
    6     3     3     1.07593717    -0.32567926-24985.04650820    -0.00000053    -0.00000003  0.15D-07  0.31D-08  2932.31
    6     4     4     1.07593623    -0.32567915-24985.04650809    -0.00000053    -0.00000003  0.15D-07  0.31D-08  2932.31
    6     5     5     1.07593623    -0.32567906-24985.04650800    -0.00000053    -0.00000003  0.15D-07  0.31D-08  2932.31
    6     6     6     1.07426820    -0.31920144-24984.99637049    -0.00000031    -0.00000002  0.10D-07  0.16D-08  2932.31
    6     7     7     1.07755058    -0.31725467-24984.97011763    -0.00000041    -0.00000002  0.49D-08  0.30D-08  2932.31
    6     8     8     1.07755058    -0.31725467-24984.97011763    -0.00000041    -0.00000002  0.49D-08  0.30D-08  2932.31
    6     9     9     1.07755008    -0.31725466-24984.97011762    -0.00000041    -0.00000002  0.49D-08  0.30D-08  2932.31
    6    10    10     1.07754940    -0.32226311-24984.97011707    -0.00000041    -0.00000002  0.49D-08  0.30D-08  2932.31
    6    11    11     1.07755014    -0.32226306-24984.97011702    -0.00000041    -0.00000002  0.49D-08  0.30D-08  2932.31
    6    12    12     1.07754996    -0.32226301-24984.97011698    -0.00000041    -0.00000002  0.49D-08  0.30D-08  2932.31
    6    13    13     1.07754995    -0.32226301-24984.97011698    -0.00000041    -0.00000002  0.49D-08  0.30D-08  2932.31
    6    14    14     1.07074203    -0.32160925-24984.96946322    -0.00000044    -0.00000002  0.60D-08  0.36D-08  2932.31
    6    15    15     1.07074177    -0.32160881-24984.96946278    -0.00000045    -0.00000002  0.61D-08  0.37D-08  2932.31
    6    16    16     1.07074177    -0.32160881-24984.96946278    -0.00000045    -0.00000002  0.61D-08  0.37D-08  2932.31
    7     1     1     1.07595247    -0.32567931-24985.04650825    -0.00000003    -0.00000000  0.97D-09  0.25D-09  3261.59
    7     2     2     1.07595249    -0.32567929-24985.04650823    -0.00000003    -0.00000000  0.97D-09  0.25D-09  3261.59
    7     3     3     1.07595249    -0.32567929-24985.04650823    -0.00000003    -0.00000000  0.97D-09  0.25D-09  3261.59
    7     4     4     1.07595150    -0.32567918-24985.04650812    -0.00000003    -0.00000000  0.97D-09  0.25D-09  3261.59
    7     5     5     1.07595150    -0.32567909-24985.04650803    -0.00000003    -0.00000000  0.97D-09  0.25D-09  3261.59
    7     6     6     1.07427714    -0.31920146-24984.99637051    -0.00000002    -0.00000000  0.73D-09  0.13D-09  3261.59
    7     7     7     1.07755058    -0.31725467-24984.97011763    -0.00000000    -0.00000002  0.49D-08  0.30D-08  3261.59
    7     8     8     1.07755057    -0.31725467-24984.97011763    -0.00000000    -0.00000002  0.49D-08  0.30D-08  3261.59
    7     9     9     1.07755008    -0.31725466-24984.97011762    -0.00000000    -0.00000002  0.49D-08  0.30D-08  3261.59
    7    10    10     1.07754939    -0.32226311-24984.97011707    -0.00000000    -0.00000002  0.49D-08  0.30D-08  3261.59
    7    11    11     1.07755014    -0.32226306-24984.97011702    -0.00000000    -0.00000002  0.49D-08  0.30D-08  3261.59
    7    12    12     1.07754995    -0.32226301-24984.97011698    -0.00000000    -0.00000002  0.49D-08  0.30D-08  3261.59
    7    13    13     1.07754995    -0.32226301-24984.97011698    -0.00000000    -0.00000002  0.49D-08  0.30D-08  3261.59
    7    14    14     1.07074203    -0.32160925-24984.96946322    -0.00000000    -0.00000002  0.61D-08  0.36D-08  3261.59
    7    15    15     1.07074177    -0.32160881-24984.96946278    -0.00000000    -0.00000002  0.61D-08  0.37D-08  3261.59
    7    16    16     1.07074177    -0.32160881-24984.96946278    -0.00000000    -0.00000002  0.61D-08  0.37D-08  3261.59


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   9.1%
 S   1.5%  37.7%
 P   0.6%  27.7%  13.6%

 Initialization:   3.3%
 Other:            6.6%

 Total CPU:     3261.6 seconds
 =====================================



 gnormi=  0.92940908  gnorms=  0.02413136  gnormp=  0.04645955  gnorm=  1.00000000
 ecorri= -0.30268931  ecorrs= -0.00785915  ecorrp= -0.01513085  ecorr= -0.32567931

 gnormi=  0.92940907  gnorms=  0.02413135  gnormp=  0.04645958  gnorm=  1.00000000
 ecorri= -0.30268929  ecorrs= -0.00785915  ecorrp= -0.01513086  ecorr= -0.32567929

 gnormi=  0.92940907  gnorms=  0.02413135  gnormp=  0.04645958  gnorm=  1.00000000
 ecorri= -0.30268929  ecorrs= -0.00785915  ecorrp= -0.01513086  ecorr= -0.32567929

 gnormi=  0.92940993  gnorms=  0.02413033  gnormp=  0.04645974  gnorm=  1.00000000
 ecorri= -0.30268946  ecorrs= -0.00785882  ecorrp= -0.01513090  ecorr= -0.32567918

 gnormi=  0.92940993  gnorms=  0.02413035  gnormp=  0.04645972  gnorm=  1.00000000
 ecorri= -0.30268938  ecorrs= -0.00785882  ecorrp= -0.01513089  ecorr= -0.32567909

 gnormi=  0.93085849  gnorms=  0.02568173  gnormp=  0.04345978  gnorm=  1.00000000
 ecorri= -0.29713139  ecorrs= -0.00819796  ecorrp= -0.01387211  ecorr= -0.31920146

 gnormi=  0.92803069  gnorms=  0.02178075  gnormp=  0.05018856  gnorm=  1.00000000
 ecorri= -0.29442207  ecorrs= -0.00691433  ecorrp= -0.01591827  ecorr= -0.31725467

 gnormi=  0.92803069  gnorms=  0.02178075  gnormp=  0.05018856  gnorm=  1.00000000
 ecorri= -0.29442207  ecorrs= -0.00691433  ecorrp= -0.01591827  ecorr= -0.31725467

 gnormi=  0.92803111  gnorms=  0.02178015  gnormp=  0.05018873  gnorm=  1.00000000
 ecorri= -0.29442219  ecorrs= -0.00691410  ecorrp= -0.01591836  ecorr= -0.31725466

 gnormi=  0.92803170  gnorms=  0.02177938  gnormp=  0.05018892  gnorm=  1.00000000
 ecorri= -0.29907038  ecorrs= -0.00702292  ecorrp= -0.01616980  ecorr= -0.32226311

 gnormi=  0.92803106  gnorms=  0.02178029  gnormp=  0.05018865  gnorm=  1.00000000
 ecorri= -0.29907013  ecorrs= -0.00702329  ecorrp= -0.01616964  ecorr= -0.32226306

 gnormi=  0.92803122  gnorms=  0.02178006  gnormp=  0.05018871  gnorm=  1.00000000
 ecorri= -0.29907014  ecorrs= -0.00702318  ecorrp= -0.01616969  ecorr= -0.32226301

 gnormi=  0.92803122  gnorms=  0.02178006  gnormp=  0.05018871  gnorm=  1.00000000
 ecorri= -0.29907014  ecorrs= -0.00702318  ecorrp= -0.01616969  ecorr= -0.32226301

 gnormi=  0.93393177  gnorms=  0.01869686  gnormp=  0.04737137  gnorm=  1.00000000
 ecorri= -0.30036110  ecorrs= -0.00601526  ecorrp= -0.01523289  ecorr= -0.32160925

 gnormi=  0.93393200  gnorms=  0.01869660  gnormp=  0.04737140  gnorm=  1.00000000
 ecorri= -0.30036076  ecorrs= -0.00601515  ecorrp= -0.01523291  ecorr= -0.32160881

 gnormi=  0.93393200  gnorms=  0.01869659  gnormp=  0.04737141  gnorm=  1.00000000
 ecorri= -0.30036076  ecorrs= -0.00601515  ecorrp= -0.01523290  ecorr= -0.32160881

 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/00000/222000          -0.0000000   0.0000000   0.0000000  -0.0000040  -0.0000000   0.9620406  -0.0000000   0.0000000
                               0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2222220/000/0222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000426   0.0000000  -0.0000000  -0.0000000
                               0.0000000   0.9615021  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 22222200/00/0222000           0.0000449   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                               0.9615016  -0.0000000  -0.0000062  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 222222//00000222000          -0.0000000  -0.0000000   0.0000000   0.0000039   0.9611457  -0.0000000   0.0000000   0.0000000
                               0.0000000  -0.0000482  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 222222/0000/0222000           0.0000000   0.0000000  -0.0000000   0.9611456  -0.0000039   0.0000046  -0.0000000   0.0000000
                              -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 222222/0/0000222000           0.9611454   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                              -0.0000508  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 222222/000/00222000           0.0000000  -0.0000000   0.9611454   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000284
                               0.0000000   0.0000000   0.0000000   0.0000000   0.0000365   0.0000000   0.0000000  -0.0000001
 222222/00/000222000          -0.0000000   0.9611454   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000284   0.0000000
                              -0.0000000  -0.0000000  -0.0000000   0.0000365   0.0000000  -0.0000000  -0.0000001   0.0000000
 222222000//00222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                               0.0000056   0.0000000   0.8604696   0.0000000  -0.0000000  -0.3191444   0.0000000   0.0000000
 22222200//000222000          -0.0000000   0.0000000  -0.0000005  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.6879349
                              -0.0000000   0.0000000  -0.0000000   0.0000000  -0.5167212  -0.0000000  -0.0000000   0.3193835
 22222200/0/00222000           0.0000000  -0.0000005   0.0000000  -0.0000000  -0.0000000   0.0000000   0.6879261   0.0000000
                               0.0000000   0.0000000   0.0000000  -0.5167329   0.0000000  -0.0000000   0.3193835   0.0000000
 2222220/0/000222000           0.0000000  -0.0000358  -0.0000000   0.0000000   0.0000000   0.0000000   0.6716887  -0.0000000
                              -0.0000000  -0.0000000  -0.0000000   0.5371408  -0.0000000   0.0000000  -0.3202724  -0.0000000
 2222220/00/00222000          -0.0000000   0.0000000   0.0000358   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.6716796
                              -0.0000000   0.0000000   0.0000000   0.0000000  -0.5371522   0.0000000  -0.0000000   0.3202724
 22222200000002220//           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                              -0.0000000   0.0000000  -0.0009554  -0.0000000  -0.0000000   0.6453918   0.0000000  -0.0000000
 2222220000000222/0/          -0.0000000   0.0000000  -0.0000001   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0004308
                              -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0007216   0.0000000  -0.0000000   0.6453896
 2222220000000222//0          -0.0000000  -0.0000001  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0004308   0.0000000
                               0.0000000   0.0000000  -0.0000000  -0.0007216  -0.0000000   0.0000000   0.6453896   0.0000000
 2222220//0000222000          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                               0.0000028  -0.0000000   0.4290420  -0.0000000   0.0000000   0.6414856  -0.0000000  -0.0000000
 222222000/0/0222000           0.0000000  -0.0000202  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0087533   0.0000000
                               0.0000000   0.0000000   0.0000000   0.6074146   0.0000000  -0.0000000   0.5556801   0.0000000
 2222220000//0222000           0.0000000  -0.0000000  -0.0000202  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0087636
                               0.0000000   0.0000000  -0.0000000   0.0000000   0.6074145   0.0000000  -0.0000000   0.5556801

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.961125   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000045    0.000000   -0.000000    0.000000   -0.000000
 2           0.000000   -0.000000    0.961125   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000023    0.000000   -0.000000    0.000000   -0.000034    0.000000
 3          -0.000000    0.000000    0.000000    0.961125   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000020
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000036
 4          -0.000000    0.000004   -0.000000    0.000000    0.961125   -0.000004    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.961125    0.000000   -0.000000   -0.000004   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000043    0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000005    0.962041    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 7          -0.000000    0.000000    0.000028    0.000000   -0.000000   -0.000000   -0.000000    0.000646   -0.000000   -0.000000
             0.958484   -0.000000   -0.000000   -0.000000    0.076106   -0.000000
 8          -0.000000    0.000000    0.000000    0.000028    0.000000    0.000000    0.000000    0.000000    0.000646    0.952268
             0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.132930
 9          -0.000051    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.961502    0.000000    0.000006    0.000000   -0.000000
 10         -0.000000   -0.000048   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.961502    0.000000   -0.000000   -0.000000
 11          0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.001432   -0.000000   -0.000000   -0.000000
             0.000000   -0.000006   -0.000000    0.961501    0.000000    0.000000
 12         -0.000000   -0.000000    0.000037    0.000000   -0.000000   -0.000000   -0.000000   -0.001081    0.000000    0.000000
            -0.076105   -0.000000   -0.000000   -0.000000    0.958485    0.000000
 13         -0.000000    0.000000    0.000000    0.000037    0.000000   -0.000000   -0.000000   -0.000000   -0.001081   -0.132929
            -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.952268
 14          0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.964118    0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000    0.001430    0.000000   -0.000000
 15          0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.964118   -0.000000   -0.000000
            -0.000728   -0.000000   -0.000000    0.000000    0.001025    0.000000
 16          0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.964118   -0.000788
             0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000980

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961125   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000003    0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.961125    0.000000   -0.000000   -0.000000   -0.000000    0.000002    0.000000    0.000000   -0.000000
            -0.000000    0.000002   -0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.961125    0.000000    0.000000   -0.000000    0.000000    0.000002   -0.000000   -0.000000
             0.000000   -0.000000    0.000002    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.961125   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.961125   -0.000000   -0.000000   -0.000000    0.000000   -0.000003
            -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.962041    0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 7           0.000000    0.000002    0.000000   -0.000000   -0.000000    0.000000    0.961501   -0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000    0.000001    0.000000
 8           0.000000    0.000000    0.000002   -0.000000   -0.000000    0.000000   -0.000000    0.961501   -0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000    0.000001
 9          -0.000003    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.961502   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 10          0.000000   -0.000000   -0.000000   -0.000000   -0.000003    0.000000   -0.000000    0.000000   -0.000000    0.961502
            -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 11          0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.961502    0.000000   -0.000000   -0.000003    0.000000   -0.000000
 12          0.000000    0.000002   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.961502    0.000000   -0.000000   -0.000002   -0.000000
 13          0.000000   -0.000000    0.000002   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.961502    0.000000   -0.000000   -0.000002
 14          0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000003   -0.000000    0.000000    0.964119    0.000000    0.000000
 15          0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000001   -0.000000   -0.000000    0.000000
             0.000000   -0.000002   -0.000000    0.000000    0.964119    0.000000
 16          0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000001    0.000000   -0.000000
            -0.000000   -0.000000   -0.000002    0.000000    0.000000    0.964119

 Energy contributions of internal configurations for state 14
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1927       0.00019322     1.39552323       2222220000000222011             
  2325       0.00013574    -1.11742598       2222220110000222000             

 Energy contributions of internal configurations for state 15
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1929       0.00019329     1.39578726       2222220000000222110             

 Energy contributions of internal configurations for state 16
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1928       0.00019329     1.39578638       2222220000000222101             


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96112515 (fixed)   0.96123255 (relaxed)   0.96112515 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00611362   -0.01004836   -0.24408040
 Singles      0.02612294   -0.06344593   -0.06646806
 Pairs        0.05029388    0.00000000   -0.01513085
 Total        1.08253043   -0.07349429   -0.32567931
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72082894
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58076289
 One electron energy               -33999.57989316
 Two electron energy                 9014.53338491
 Virial quotient                       -0.57457255
 Correlation energy                    -0.32567931
 !MRCI STATE 1.1 Energy              -24985.0465082453    

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07338670 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07330792 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07338670 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07201945 (Pople, fixed reference)
 Cluster corrected energies        -24985.07193969 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07201945 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96112515 (fixed)   0.96123254 (relaxed)   0.96112515 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00611362   -0.01004835   -0.24408038
 Singles      0.02612292   -0.06344593   -0.06646806
 Pairs        0.05029391   -0.00000000   -0.01513086
 Total        1.08253045   -0.07349427   -0.32567929
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72082894
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58076344
 One electron energy               -33999.57989435
 Two electron energy                 9014.53338612
 Virial quotient                       -0.57457255
 Correlation energy                    -0.32567929
 !MRCI STATE 2.1 Energy              -24985.0465082308    

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07338669 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07330791 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07338669 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07201944 (Pople, fixed reference)
 Cluster corrected energies        -24985.07193968 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07201944 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96112515 (fixed)   0.96123254 (relaxed)   0.96112515 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00611362   -0.01004835   -0.24407135
 Singles      0.02612292   -0.06344593   -0.06646805
 Pairs        0.05029391   -0.00000978   -0.01513989
 Total        1.08253045   -0.07350405   -0.32567929
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72082894
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58076343
 One electron energy               -33999.57989397
 Two electron energy                 9014.53338574
 Virial quotient                       -0.57457255
 Correlation energy                    -0.32567929
 !MRCI STATE 3.1 Energy              -24985.0465082308    

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07338669 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07330791 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07338669 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07201944 (Pople, fixed reference)
 Cluster corrected energies        -24985.07193968 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07201944 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96112533 (fixed)   0.96123273 (relaxed)   0.96112533 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00611415   -0.01004874   -0.24408124
 Singles      0.02612181   -0.06344517   -0.06646705
 Pairs        0.05029407   -0.00000000   -0.01513090
 Total        1.08253003   -0.07349391   -0.32567918
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72082894
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58075988
 One electron energy               -33999.57985800
 Two electron energy                 9014.53334988
 Virial quotient                       -0.57457255
 Correlation energy                    -0.32567918
 !MRCI STATE 4.1 Energy              -24985.0465081202    

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07338643 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07330765 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07338643 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07201918 (Pople, fixed reference)
 Cluster corrected energies        -24985.07193942 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07201918 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96112542 (fixed)   0.96123283 (relaxed)   0.96112543 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00611396   -0.01004862   -0.24408110
 Singles      0.02612182   -0.06344522   -0.06646711
 Pairs        0.05029404   -0.00000000   -0.01513089
 Total        1.08252982   -0.07349384   -0.32567909
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.72082894
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.58075952
 One electron energy               -33999.57986073
 Two electron energy                 9014.53335270
 Virial quotient                       -0.57457255
 Correlation energy                    -0.32567909
 !MRCI STATE 5.1 Energy              -24985.0465080336    

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.07338627 (Davidson, fixed reference)
 Cluster corrected energies        -24985.07330749 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.07338627 (Davidson, rotated reference)

 Cluster corrected energies        -24985.07201902 (Pople, fixed reference)
 Cluster corrected energies        -24985.07193926 (Pople, relaxed reference)
 Cluster corrected energies        -24985.07201902 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96204063 (fixed)   0.96204063 (relaxed)   0.96204063 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00576573   -0.01054581   -0.23823069
 Singles      0.02774837   -0.06364050   -0.06709865
 Pairs        0.04695703    0.00000000   -0.01387211
 Total        1.08047113   -0.07418631   -0.31920146
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.67716905
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.49203935
 One electron energy               -33987.98097861
 Two electron energy                 9002.98460810
 Virial quotient                       -0.57457257
 Correlation energy                    -0.31920146
 !MRCI STATE 6.1 Energy              -24984.9963705087    

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24985.02205701 (Davidson, fixed reference)
 Cluster corrected energies        -24985.02205701 (Davidson, relaxed reference)
 Cluster corrected energies        -24985.02205701 (Davidson, rotated reference)

 Cluster corrected energies        -24985.02070972 (Pople, fixed reference)
 Cluster corrected energies        -24985.02070972 (Pople, relaxed reference)
 Cluster corrected energies        -24985.02070972 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95848440 (fixed)   0.96150138 (relaxed)   0.96150138 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00383541   -0.00686464   -0.24027709
 Singles      0.02355988   -0.05856773   -0.06105932
 Pairs        0.05428813    0.00000000   -0.01591827
 Total        1.08168343   -0.06543237   -0.31725467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785397
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.19043082
 One electron energy               -34000.91306599
 Two electron energy                 9015.94294836
 Virial quotient                       -0.57457595
 Correlation energy                    -0.32226367
 !MRCI STATE 7.1 Energy              -24984.9701176334    

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99644123 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99644123 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99644123 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99508505 (Pople, fixed reference)
 Cluster corrected energies        -24984.99508505 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99508505 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95226791 (fixed)   0.96150138 (relaxed)   0.96150138 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00383541   -0.00686464   -0.27310331
 Singles      0.02355988   -0.05856773   -0.06105932
 Pairs        0.05428813    0.03550759    0.01690796
 Total        1.08168343   -0.02992479   -0.31725467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785397
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.19043075
 One electron energy               -34000.91306573
 Two electron energy                 9015.94294810
 Virial quotient                       -0.57457595
 Correlation energy                    -0.32226367
 !MRCI STATE 8.1 Energy              -24984.9701176334    

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99644123 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99644123 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99644123 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99508505 (Pople, fixed reference)
 Cluster corrected energies        -24984.99508505 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99508505 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.96150162 (fixed)   0.96150162 (relaxed)   0.96150162 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00383538   -0.00686480   -0.24027744
 Singles      0.02355922   -0.05856745   -0.06105886
 Pairs        0.05428829    0.00000000   -0.01591836
 Total        1.08168289   -0.06543225   -0.31725466
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785396
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.19039959
 One electron energy               -34000.91289539
 Two electron energy                 9015.94277777
 Virial quotient                       -0.57457595
 Correlation energy                    -0.32226366
 !MRCI STATE 9.1 Energy              -24984.9701176194    

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99644105 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99644105 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99644105 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99508486 (Pople, fixed reference)
 Cluster corrected energies        -24984.99508486 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99508486 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.96150215 (fixed)   0.96150215 (relaxed)   0.96150215 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00383491   -0.00686456   -0.24492597
 Singles      0.02355836   -0.05856702   -0.06116733
 Pairs        0.05428843    0.00000000   -0.01616980
 Total        1.08168170   -0.06543157   -0.32226311
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785396
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.19035488
 One electron energy               -34000.91267801
 Two electron energy                 9015.94256094
 Virial quotient                       -0.57457595
 Correlation energy                    -0.32226311
 !MRCI STATE 10.1 Energy             -24984.9701170708    

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99644007 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99644007 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99644007 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99508388 (Pople, fixed reference)
 Cluster corrected energies        -24984.99508388 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99508388 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.96150085 (fixed)   0.96150191 (relaxed)   0.96150191 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00383471   -0.00686415   -0.24492517
 Singles      0.02355935   -0.05856763   -0.06116824
 Pairs        0.05428817   -0.00000000   -0.01616964
 Total        1.08168223   -0.06543178   -0.32226306
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785397
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.19043086
 One electron energy               -34000.91313509
 Two electron energy                 9015.94301807
 Virial quotient                       -0.57457595
 Correlation energy                    -0.32226304
 !MRCI STATE 11.1 Energy             -24984.9701170187    

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99644018 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99644018 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99644018 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99508400 (Pople, fixed reference)
 Cluster corrected energies        -24984.99508400 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99508400 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95848471 (fixed)   0.96150202 (relaxed)   0.96150202 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00383467   -0.00686420   -0.24492531
 Singles      0.02355910   -0.05856748   -0.06116801
 Pairs        0.05428823   -0.00000000   -0.01616969
 Total        1.08168200   -0.06543169   -0.32226301
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785397
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.19040083
 One electron energy               -34000.91299050
 Two electron energy                 9015.94287352
 Virial quotient                       -0.57457595
 Correlation energy                    -0.32226301
 !MRCI STATE 12.1 Energy             -24984.9701169779    

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99644006 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99644006 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99644006 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99508388 (Pople, fixed reference)
 Cluster corrected energies        -24984.99508388 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99508388 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.95226828 (fixed)   0.96150202 (relaxed)   0.96150202 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00383467   -0.00686420   -0.48008210
 Singles      0.02355910   -0.05856748   -0.06116801
 Pairs        0.05428823    0.25436487    0.21898710
 Total        1.08168200    0.18893318   -0.32226301
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.64785397
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.19040090
 One electron energy               -34000.91298945
 Two electron energy                 9015.94287248
 Virial quotient                       -0.57457595
 Correlation energy                    -0.32226301
 !MRCI STATE 13.1 Energy             -24984.9701169779    

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99644006 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99644006 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99644006 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99508388 (Pople, fixed reference)
 Cluster corrected energies        -24984.99508388 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99508388 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96411750 (fixed)   0.96430677 (relaxed)   0.96411856 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00474131   -0.00789596   -0.24703796
 Singles      0.02011443   -0.05736603   -0.05933840
 Pairs        0.05096300    0.00000000   -0.01523289
 Total        1.07581875   -0.06526198   -0.32160925
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65286295
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.15692883
 One electron energy               -33996.21931821
 Two electron energy                 9011.24985499
 Virial quotient                       -0.57457638
 Correlation energy                    -0.31660027
 !MRCI STATE 14.1 Energy             -24984.9694632170    

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99346745 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99333452 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99346745 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99212290 (Pople, fixed reference)
 Cluster corrected energies        -24984.99198976 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99212290 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96411806 (fixed)   0.96430716 (relaxed)   0.96411888 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00474089   -0.00789561   -0.24703766
 Singles      0.02011414   -0.05736595   -0.05933825
 Pairs        0.05096301    0.00000000   -0.01523291
 Total        1.07581804   -0.06526156   -0.32160881
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65286295
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.15691064
 One electron energy               -33996.21927516
 Two electron energy                 9011.24981238
 Virial quotient                       -0.57457638
 Correlation energy                    -0.31659982
 !MRCI STATE 15.1 Energy             -24984.9694627755    

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99346675 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99333376 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99346675 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99212220 (Pople, fixed reference)
 Cluster corrected energies        -24984.99198901 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99212220 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96411806 (fixed)   0.96430716 (relaxed)   0.96411888 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00474089   -0.00789561   -0.24728033
 Singles      0.02011413   -0.05736595   -0.05933825
 Pairs        0.05096301    0.00026106   -0.01499023
 Total        1.07581804   -0.06500049   -0.32160881
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                  -24984.65286295
 Nuclear energy                         0.00000000
 Kinetic energy                     43484.15691135
 One electron energy               -33996.21927540
 Two electron energy                 9011.24981262
 Virial quotient                       -0.57457638
 Correlation energy                    -0.31659982
 !MRCI STATE 16.1 Energy             -24984.9694627755    

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies        -24984.99346675 (Davidson, fixed reference)
 Cluster corrected energies        -24984.99333376 (Davidson, relaxed reference)
 Cluster corrected energies        -24984.99346675 (Davidson, rotated reference)

 Cluster corrected energies        -24984.99212220 (Pople, fixed reference)
 Cluster corrected energies        -24984.99198901 (Pople, relaxed reference)
 Cluster corrected energies        -24984.99212220 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      662.00       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     13426.50  12285.27   1118.47      8.11      0.14     14.31
 REAL TIME  *     13549.16 SEC
 DISK USED  *       820.79 MB (local),        4.87 GB (total)
 SF USED    *         5.02 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =    -24985.07338670  AU                              
 SETTING HLSDIAG(9)     =    -24985.07338669  AU                              
 SETTING HLSDIAG(10)    =    -24985.07338669  AU                              
 SETTING HLSDIAG(11)    =    -24985.07338643  AU                              
 SETTING HLSDIAG(12)    =    -24985.07338627  AU                              
 SETTING HLSDIAG(13)    =    -24985.02205701  AU                              
 SETTING HLSDIAG(14)    =    -24984.99644123  AU                              
 SETTING HLSDIAG(15)    =    -24984.99644123  AU                              
 SETTING HLSDIAG(16)    =    -24984.99644105  AU                              
 SETTING HLSDIAG(17)    =    -24984.99644007  AU                              
 SETTING HLSDIAG(18)    =    -24984.99644018  AU                              
 SETTING HLSDIAG(19)    =    -24984.99644006  AU                              
 SETTING HLSDIAG(20)    =    -24984.99644006  AU                              
 SETTING HLSDIAG(21)    =    -24984.99346745  AU                              
 SETTING HLSDIAG(22)    =    -24984.99346675  AU                              
 SETTING HLSDIAG(23)    =    -24984.99346675  AU                              


         HLSDIAG
    -24985.14352
    -24985.06009
    -24985.06009
    -24985.06009
    -24985.06009
    -24985.06009
    -24985.01697
    -24985.07339
    -24985.07339
    -24985.07339
    -24985.07339
    -24985.07339
    -24985.02206
    -24984.99644
    -24984.99644
    -24984.99644
    -24984.99644
    -24984.99644
    -24984.99644
    -24984.99644
    -24984.99347
    -24984.99347
    -24984.99347
                                                  

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

 Time for Seward_LS:     299.84 sec

       19066877. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     4660 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    299.85 sec, REAL time:    308.15 sec


 SORTLS1 read    19073439. and wrote    19073439. SO integrals in    84 records. CPU time:      0.14 sec, REAL time:      0.27 sec
 SORTLS2 read    19073439. and wrote    19073439. SO integrals in    18 records. CPU time:      0.09 sec, REAL time:      0.20 sec

 FILE SIZES: FILE 1:   471.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   471.9 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      450.05       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      662.00       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     13730.30    303.77  12285.27   1118.47      8.11      0.14     14.31
 REAL TIME  *     13861.58 SEC
 DISK USED  *       820.88 MB (local),        5.44 GB (total)
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
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:*****************************************************************************
 Replaced energies:*****************************************************************************

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:**************************************************************************************************************
                   ******************************************************************
 Replaced energies:**************************************************************************************************************
                   ******************************************************************



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=-24985.14352378

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00

    2   2.1  0.0  0.0       0.00   18311.04       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     204.87
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      99.68      -0.00

    3   3.1  0.0  0.0       0.00       0.00   18311.04       0.00       0.00       0.00       0.00      -0.00       0.00       3.11
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     179.02       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   18311.04       0.00       0.00       0.00      -0.00    -102.60      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -102.60

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   18311.04       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     102.59       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   18311.05       0.00     102.59       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   27776.42       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

    8   1.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00     102.59       0.00   15393.31       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -102.59       0.00      -0.00       0.00      -0.00       0.00

    9   2.1  1.0  1.0      -0.00      -0.00       0.00    -102.60      -0.00       0.00       0.00       0.00   15393.31       0.00
                           -0.01     -99.68    -179.02       0.00      -0.00      -0.00      -0.00       0.00      -0.00     125.94

   10   3.1  1.0  1.0       0.01     204.87       3.11      -0.00       0.00      -0.00       0.00       0.00       0.00   15393.31
                           -0.00       0.00      -0.00     102.60       0.00       0.00       0.00      -0.00    -125.94       0.00

   11   4.1  1.0  1.0      -0.00       0.00       0.00       0.00    -177.63       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00     177.63       0.00      -0.00      -0.00       0.00

   12   5.1  1.0  1.0      -0.00      -0.00       0.00      -0.00     102.56      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     102.56       0.00    -251.82       0.00       0.00

   13   6.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   14   7.1  1.0  1.0      -0.00      -0.00       0.00     -27.20      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.30     -14.87      23.87       0.00      -0.00       0.00      -0.15      -0.00       0.00      -0.22

   15   8.1  1.0  1.0      -0.30     -13.99      24.39       0.00       0.00      -0.00       0.15       0.00       0.00       0.00
                            0.00      -0.00      -0.00      27.20      -0.00       0.00       0.00      -0.00       0.22       0.00

   16   9.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00     -22.53       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      22.53       0.00      -0.00      -0.00       0.00      -0.00

   17  10.1  1.0  1.0       0.00       0.00      -0.00      -0.00     -22.51      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00     -22.51       0.00     -15.17      -0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      16.92      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      16.92       0.00       0.00       0.00      -0.00      -0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00      -7.92       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.52      25.38       6.73       0.00       0.00      -0.00       0.24       0.00      -0.00      19.40

   20  13.1  1.0  1.0       0.52     -17.94     -19.17      -0.00       0.00      -0.00      -0.24       0.00       0.00       0.00
                           -0.00       0.00      -0.00       7.93      -0.00       0.00       0.00      -0.00     -19.40      -0.00

   21  14.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00     344.24       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     344.24      -0.00       0.00      -0.00      -0.00      -0.00

   22  15.1  1.0  1.0      -0.00       0.00      -0.00     344.21       0.00      -0.00      -0.00       0.00       0.00       0.00
                          435.12    -347.07     193.38      -0.00       0.00      -0.00    -208.84      -0.00       0.00      25.70

   23  16.1  1.0  1.0    -435.12      -6.13     397.26       0.00      -0.00       0.00     208.84       0.00       0.00       0.00
                            0.00      -0.00       0.00    -344.21      -0.00       0.00      -0.00       0.00     -25.70       0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -89.06      -0.00
                           -0.00     148.71    -248.68       0.00       0.00      -0.00      -0.00      -0.00       0.00     -89.06

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      89.06      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -145.10       0.00      -0.00      -0.00      -0.00      -0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00     145.10       0.00      89.06       0.00      -0.00

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     154.21
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     154.21       0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -89.03
                           -0.00       0.00      -0.00     290.07       0.00      -0.00      -0.00      -0.00      89.03      -0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      13.23       0.00       0.00
                            0.00       0.00       0.00       0.00       0.23      -0.00      -0.00      -0.00       0.00      -0.00

   31   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.23       0.00      13.23       0.00       0.00

   32   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      10.90      -0.00
                           -0.00      16.35     -27.34       0.00       0.00       0.00      -0.00      -0.00       0.00      10.90

   33  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      10.85
                           -0.00      -0.00      -0.00      31.75      -0.00      -0.00       0.00       0.00     -10.85       0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -8.36      -0.00
                            0.98      37.94      22.69      -0.00       0.00      -0.00      -0.45       0.00      -0.00       8.36

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.68       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00     -39.72      -0.00       0.00      -0.00      -0.00      -0.00

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      39.72      -0.00       3.68       0.00       0.00

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -18.18      -0.00
                         -615.37    -482.20    -288.36       0.00      -0.00       0.00     295.38      -0.00      -0.00      18.18

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -18.18      -0.00      -0.00
                           -0.00       0.00       0.00       0.00    -486.84      -0.00      -0.00      -0.00      -0.00      -0.00

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00     486.84       0.00     -18.18       0.00       0.00

   40   1.1  1.0 -1.0       0.00       0.00      -0.00      -0.00       0.00     102.59       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     102.59      -0.00       0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0      -0.00      -0.00       0.00    -102.60      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      99.68     179.02      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0       0.01     204.87       3.11      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -102.60      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00    -177.63       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00    -177.63      -0.00      -0.00      -0.00      -0.00

   44   5.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00     102.56      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00    -102.56      -0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0      -0.00      -0.00       0.00     -27.20      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.30      14.87     -23.87      -0.00       0.00      -0.00       0.15      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0      -0.30     -13.99      24.39       0.00       0.00      -0.00       0.15       0.00       0.00       0.00
                           -0.00       0.00       0.00     -27.20       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00     -22.53       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -22.53      -0.00       0.00      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00      -0.00      -0.00     -22.51      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      22.51      -0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      16.92      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     -16.92      -0.00      -0.00      -0.00      -0.00      -0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00      -7.92       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.52     -25.38      -6.73      -0.00      -0.00       0.00      -0.24      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0       0.52     -17.94     -19.17      -0.00       0.00      -0.00      -0.24       0.00       0.00       0.00
                            0.00      -0.00       0.00      -7.93       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00     344.24       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00    -344.24       0.00      -0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0      -0.00       0.00      -0.00     344.21       0.00      -0.00      -0.00       0.00       0.00       0.00
                         -435.12     347.07    -193.38       0.00      -0.00       0.00     208.84      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0    -435.12      -6.13     397.26       0.00      -0.00       0.00     208.84       0.00       0.00       0.00
                           -0.00       0.00      -0.00     344.21       0.00      -0.00       0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00      -0.00       0.00      -0.00      -0.30      -0.00       0.00       0.00       0.00       0.52
                           -0.00       0.00       0.00      -0.30      -0.00      -0.00       0.00       0.00       0.52       0.00

    2   2.1  0.0  0.0       0.00      -0.00      -0.00      -0.00     -13.99      -0.00       0.00       0.00       0.00     -17.94
                            0.00       0.00      -0.00      14.87       0.00      -0.00       0.00      -0.00     -25.38      -0.00

    3   3.1  0.0  0.0       0.00       0.00      -0.00       0.00      24.39      -0.00      -0.00       0.00       0.00     -19.17
                            0.00       0.00      -0.00     -23.87       0.00      -0.00       0.00      -0.00      -6.73       0.00

    4   4.1  0.0  0.0       0.00      -0.00      -0.00     -27.20       0.00       0.00      -0.00      -0.00      -7.92      -0.00
                            0.00       0.00      -0.00      -0.00     -27.20      -0.00      -0.00      -0.00      -0.00      -7.93

    5   5.1  0.0  0.0    -177.63     102.56       0.00      -0.00       0.00       0.00     -22.51      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00     -22.53      -0.00     -16.92      -0.00       0.00

    6   6.1  0.0  0.0       0.00      -0.00       0.00      -0.00      -0.00     -22.53      -0.00      16.92      -0.00      -0.00
                         -177.63    -102.56       0.00      -0.00      -0.00      -0.00      22.51      -0.00       0.00      -0.00

    7   7.1  0.0  0.0      -0.00       0.00      -0.00      -0.00       0.15       0.00      -0.00      -0.00      -0.00      -0.24
                           -0.00      -0.00      -0.00       0.15      -0.00       0.00      -0.00      -0.00      -0.24      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     251.82       0.00       0.00       0.00       0.00      15.17      -0.00      -0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.22      -0.00       0.00       0.00       0.00      19.40

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.22      -0.00       0.00      -0.00       0.00     -19.40       0.00

   11   4.1  1.0  1.0   15393.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      20.73      -0.00       0.00

   12   5.1  1.0  1.0       0.00   15393.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00     -15.16       0.00      -0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00   26658.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.15      -0.00      -0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   32280.89       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00    -398.64      -0.00       0.00      -0.00      -0.00      -8.01

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   32280.89       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     398.64       0.00       0.00       0.00       0.00       8.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   32280.93       0.00       0.00       0.00       0.00
                           -0.00      15.16      -0.00       0.00      -0.00      -0.00     265.96       0.00       0.00      -0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   32281.14       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    -265.96       0.00       0.00       0.00      -0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32281.12       0.00       0.00
                          -20.73       0.00      -0.15       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32281.14       0.00
                            0.00      -0.00       0.00       0.00      -8.00      -0.00      -0.00       0.00       0.00     132.89

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32281.14
                           -0.00      -0.00       0.00       8.01      -0.00       0.00       0.00       0.00    -132.89      -0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           29.39      -0.00      96.73      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.97       0.00      -0.00       0.00      -0.00      -0.91

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.97      -0.00      -0.00       0.00       0.00       0.91       0.00

   24   1.1  1.0  0.0      -0.00      -0.00       0.00     -13.23       0.00      -0.00       0.00       0.00      -3.68      -0.00
                           -0.00       0.00       0.00       0.00     -13.23       0.00      -0.00      -0.00       0.00      -3.68

   25   2.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00     -10.90      -0.00       8.36      -0.00      -0.00
                         -154.21     -89.03      -0.00      -0.00      -0.00      -0.00      10.85       0.00       0.00      -0.00

   26   3.1  1.0  0.0    -154.21      89.03      -0.00      -0.00      -0.00       0.00     -10.85       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00     -10.90      -0.00      -8.36       0.00      -0.00

   27   4.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00       0.22      -0.00       0.00      -0.00       0.00     -11.85
                           -0.00       0.00      -0.00       0.22       0.00       0.00       0.00      -0.00     -11.85      -0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00      13.34      -0.00      -0.00       0.00      -0.00      -3.30
                           -0.00       0.00      -0.00     -13.34      -0.00       0.00      -0.00       0.00       3.30       0.00

   29   6.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.05      -0.00       0.00      -0.00      -0.00       0.08
                            0.00       0.00       0.00      -0.05       0.00       0.00      -0.00      -0.00       0.08      -0.00

   30   7.1  1.0  0.0       0.00      -0.00      -0.00      -0.00      -0.00    -117.31       0.00      -3.43       0.00      -0.00
                           -0.22      13.34       0.05      -0.00       0.00      -0.00    -112.85      -0.00      -0.00       0.00

   31   8.1  1.0  0.0      -0.22     -13.34       0.05       0.00       0.00       0.00     112.84       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00    -117.32      -0.00       3.43      -0.00       0.00

   32   9.1  1.0  0.0       0.00       0.00       0.00     117.31      -0.00      -0.00       0.00       0.00    -146.86      -0.00
                           -0.00      -0.00      -0.00       0.00     117.32      -0.00      -0.00      -0.00       0.00    -146.86

   33  10.1  1.0  0.0      -0.00       0.00      -0.00      -0.00    -112.84      -0.00       0.00      -0.00       0.00    -150.28
                           -0.00       0.00       0.00     112.85       0.00       0.00      -0.00       0.00     150.28       0.00

   34  11.1  1.0  0.0       0.00      -0.00       0.00       3.43      -0.00      -0.00       0.00      -0.00    -230.21      -0.00
                            0.00      -0.00       0.00       0.00      -3.43       0.00      -0.00       0.00      -0.00     230.21

   35  12.1  1.0  0.0      -0.00       0.00       0.00      -0.00       0.00     146.86      -0.00     230.21       0.00       0.00
                           11.85      -3.30      -0.08       0.00       0.00      -0.00    -150.28       0.00      -0.00       0.00

   36  13.1  1.0  0.0      11.85       3.30      -0.08       0.00       0.00       0.00     150.28       0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00     146.86      -0.00    -230.21      -0.00      -0.00

   37  14.1  1.0  0.0      -0.00      -0.00      -0.00       0.45       0.00       0.00      -0.00      -0.00      -1.15      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.45       0.00       0.00       0.00       0.00       1.15

   38  15.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.32      -0.00       1.31       0.00       0.00
                          -10.60      18.14      68.38      -0.00      -0.00       0.00      -0.16       0.00      -0.00      -0.00

   39  16.1  1.0  0.0     -10.60     -18.14      68.38      -0.00      -0.00      -0.00       0.16       0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.32       0.00      -1.31      -0.00       0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00      -0.00    -435.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -435.12      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0      -0.00       0.00      -6.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     347.07       0.00    -148.71      -0.00       0.00       0.00      -0.00      -0.00      -0.00

    3   3.1  0.0  0.0      -0.00      -0.00     397.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -193.38      -0.00     248.68       0.00      -0.00      -0.00       0.00       0.00      -0.00

    4   4.1  0.0  0.0       0.00     344.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     344.21      -0.00       0.00      -0.00      -0.00    -290.07       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -344.24      -0.00       0.00      -0.00     145.10      -0.00      -0.00      -0.00      -0.00      -0.23

    6   6.1  0.0  0.0     344.24      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00    -145.10      -0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00      -0.00     208.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     208.84       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00      89.06       0.00       0.00       0.00      -0.00      13.23
                            0.00       0.00      -0.00       0.00       0.00     -89.06      -0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00     -89.06      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      25.70      -0.00       0.00      -0.00    -154.21     -89.03      -0.00      -0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00     154.21     -89.03       0.00       0.00
                            0.00     -25.70      -0.00      89.06       0.00       0.00      -0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00    -154.21      -0.00       0.00       0.00       0.00
                          -29.39      -0.00      -0.00       0.00     154.21       0.00       0.00       0.00      -0.00       0.22

   12   5.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      89.03      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      89.03      -0.00      -0.00      -0.00      -0.00     -13.34

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                          -96.73       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.05

   14   7.1  1.0  1.0       0.00       0.00       0.00     -13.23      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.97      -0.00       0.00      -0.00      -0.22      13.34       0.05       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.22      13.34      -0.05      -0.00
                            0.00      -0.97       0.00      13.23       0.00       0.00      -0.00       0.00      -0.00      -0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00      -0.00     -10.90       0.00      -0.00      -0.00      -0.00    -117.31
                           -0.00      -0.00       0.00      -0.00       0.00      10.90      -0.00      -0.00      -0.00       0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00     -10.85       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     -10.85       0.00      -0.00       0.00       0.00     112.85

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       8.36       0.00      -0.00       0.00      -0.00      -3.43
                           -0.00      -0.00      -0.00       0.00      -0.00       8.36       0.00      -0.00       0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00      -3.68      -0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.91      -0.00      -0.00      -0.00      11.85      -3.30      -0.08       0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00     -11.85      -3.30       0.08      -0.00
                            0.00       0.91      -0.00       3.68       0.00       0.00       0.00      -0.00       0.00      -0.00

   21  14.1  1.0  1.0   32933.56       0.00       0.00       0.00      18.18       0.00       0.00       0.00       0.00      -0.45
                           -0.00       0.00       0.00      -0.00      -0.00      18.18      -0.00      -0.00       0.00      -0.00

   22  15.1  1.0  1.0       0.00   32933.71       0.00      18.18       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00    1033.47      -0.00      -0.00      -0.00     -10.60      18.14      68.38      -0.00

   23  16.1  1.0  1.0       0.00       0.00   32933.71       0.00       0.00       0.00      10.60      18.14     -68.38       0.00
                           -0.00   -1033.47       0.00     -18.18       0.00       0.00       0.00       0.00      -0.00      -0.00

   24   1.1  1.0  0.0       0.00      18.18       0.00   15393.31       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      18.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0      18.18       0.00       0.00       0.00   15393.31       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   15393.31       0.00       0.00       0.00       0.00
                          -18.18       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27   4.1  1.0  0.0       0.00       0.00      10.60       0.00       0.00       0.00   15393.37       0.00       0.00       0.00
                            0.00      10.60      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28   5.1  1.0  0.0       0.00       0.00      18.14       0.00       0.00       0.00       0.00   15393.40       0.00       0.00
                            0.00     -18.14      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29   6.1  1.0  0.0       0.00       0.00     -68.38       0.00       0.00       0.00       0.00       0.00   26658.87       0.00
                           -0.00     -68.38       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30   7.1  1.0  0.0      -0.45      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32280.89
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   8.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.45       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   9.1  1.0  0.0      -0.00      -0.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.32      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.00      -0.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.16      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  11.1  1.0  0.0       0.00      -1.31      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       1.31      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  12.1  1.0  0.0       1.15      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  13.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.15       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37  14.1  1.0  0.0      -0.00     730.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -730.78      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38  15.1  1.0  0.0    -730.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39  16.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          730.78      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00     -89.06      -0.00      -0.00      -0.00       0.00     -13.23
                           -0.00      -0.00      -0.00      -0.00       0.00     -89.06      -0.00       0.00       0.00       0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00      89.06      -0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -154.21     -89.03      -0.00      -0.00

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00    -154.21      89.03      -0.00      -0.00
                           -0.00      -0.00      -0.00      89.06       0.00      -0.00      -0.00       0.00       0.00       0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00     154.21      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     154.21       0.00      -0.00       0.00      -0.00       0.22

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00     -89.03       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      89.03      -0.00      -0.00       0.00      -0.00     -13.34

   45   6.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.05

   46   7.1  1.0 -1.0       0.00       0.00       0.00      13.23       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.22      13.34       0.05      -0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00      -0.22     -13.34       0.05       0.00
                           -0.00      -0.00      -0.00      13.23       0.00       0.00      -0.00       0.00      -0.00      -0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00      10.90      -0.00       0.00       0.00       0.00     117.31
                           -0.00      -0.00      -0.00      -0.00       0.00      10.90      -0.00      -0.00      -0.00       0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      10.85      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     -10.85       0.00      -0.00       0.00       0.00     112.85

   50  11.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -8.36      -0.00       0.00      -0.00       0.00       3.43
                           -0.00      -0.00      -0.00       0.00      -0.00       8.36       0.00      -0.00       0.00       0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       3.68       0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      11.85      -3.30      -0.08       0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00      11.85       3.30      -0.08       0.00
                           -0.00      -0.00      -0.00       3.68       0.00       0.00       0.00      -0.00       0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00      -0.00     -18.18      -0.00      -0.00      -0.00      -0.00       0.45
                           -0.00      -0.00      -0.00      -0.00      -0.00      18.18      -0.00      -0.00       0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00     -18.18      -0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -10.60      18.14      68.38      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00     -10.60     -18.14      68.38      -0.00
                           -0.00      -0.00      -0.00     -18.18       0.00       0.00       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.98       0.00      -0.00     615.37       0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -16.35       0.00     -37.94       0.00      -0.00     482.20      -0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      27.34       0.00     -22.69       0.00      -0.00     288.36      -0.00       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00     -31.75       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      39.72      -0.00       0.00     486.84       0.00    -102.59

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     102.59
                            0.23      -0.00       0.00       0.00       0.00     -39.72      -0.00       0.00    -486.84       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.45      -0.00       0.00    -295.38       0.00      -0.00      -0.00

    8   1.1  1.0  1.0      -0.00       0.00      -0.00      -0.00       3.68       0.00      -0.00     -18.18      -0.00       0.00
                          -13.23       0.00      -0.00      -0.00       0.00      -3.68       0.00       0.00      18.18       0.00

    9   2.1  1.0  1.0       0.00      10.90       0.00      -8.36       0.00       0.00     -18.18      -0.00      -0.00       0.00
                           -0.00      -0.00      10.85       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   10   3.1  1.0  1.0       0.00      -0.00      10.85      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00     -10.90      -0.00      -8.36       0.00      -0.00     -18.18       0.00      -0.00       0.00

   11   4.1  1.0  1.0      -0.22       0.00      -0.00       0.00      -0.00      11.85      -0.00      -0.00     -10.60       0.00
                            0.00       0.00       0.00      -0.00     -11.85      -0.00       0.00      10.60      -0.00       0.00

   12   5.1  1.0  1.0     -13.34       0.00       0.00      -0.00       0.00       3.30      -0.00      -0.00     -18.14       0.00
                           -0.00       0.00      -0.00       0.00       3.30       0.00       0.00     -18.14      -0.00       0.00

   13   6.1  1.0  1.0       0.05       0.00      -0.00       0.00       0.00      -0.08      -0.00      -0.00      68.38       0.00
                            0.00       0.00      -0.00      -0.00       0.08      -0.00      -0.00     -68.38       0.00       0.00

   14   7.1  1.0  1.0       0.00     117.31      -0.00       3.43      -0.00       0.00       0.45       0.00      -0.00       0.00
                            0.00      -0.00    -112.85      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00      -0.00    -112.84      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00    -117.32      -0.00       3.43      -0.00       0.00       0.45       0.00      -0.00       0.00

   16   9.1  1.0  1.0       0.00      -0.00      -0.00      -0.00     146.86       0.00       0.00       0.32      -0.00       0.00
                          117.32       0.00      -0.00      -0.00       0.00    -146.86      -0.00      -0.00      -0.32       0.00

   17  10.1  1.0  1.0     112.84       0.00       0.00       0.00      -0.00     150.28      -0.00      -0.00       0.16       0.00
                            0.00       0.00       0.00       0.00     150.28       0.00      -0.00       0.16      -0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00      -0.00      -0.00     230.21       0.00      -0.00       1.31       0.00       0.00
                           -3.43       0.00      -0.00      -0.00      -0.00     230.21      -0.00      -0.00       1.31       0.00

   19  12.1  1.0  1.0      -0.00    -146.86       0.00    -230.21       0.00      -0.00      -1.15       0.00      -0.00       0.00
                            0.00      -0.00    -150.28       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   20  13.1  1.0  1.0      -0.00      -0.00    -150.28      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00     146.86      -0.00    -230.21      -0.00       0.00      -1.15       0.00      -0.00       0.00

   21  14.1  1.0  1.0      -0.00      -0.00       0.00       0.00       1.15       0.00      -0.00    -730.78      -0.00       0.00
                           -0.45       0.00       0.00       0.00       0.00       1.15      -0.00       0.00    -730.78       0.00

   22  15.1  1.0  1.0      -0.00      -0.32       0.00      -1.31      -0.00      -0.00     730.78       0.00      -0.00       0.00
                           -0.00       0.00      -0.16       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   23  16.1  1.0  1.0       0.00       0.00      -0.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.32       0.00      -1.31      -0.00       0.00     730.78      -0.00       0.00       0.00

   24   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -89.06
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   26   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      89.06

   27   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   29   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   30   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -13.23
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   31   8.1  1.0  0.0   32280.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      13.23

   32   9.1  1.0  0.0       0.00   32280.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   33  10.1  1.0  0.0       0.00       0.00   32281.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  11.1  1.0  0.0       0.00       0.00       0.00   32281.12       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35  12.1  1.0  0.0       0.00       0.00       0.00       0.00   32281.14       0.00       0.00       0.00       0.00      -3.68
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   36  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   32281.14       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       3.68

   37  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   32933.56       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32933.71       0.00      18.18
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32933.71       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -18.18

   40   1.1  1.0 -1.0       0.00      -0.00       0.00       0.00      -3.68      -0.00       0.00      18.18       0.00   15393.31
                          -13.23       0.00      -0.00      -0.00       0.00      -3.68       0.00       0.00      18.18      -0.00

   41   2.1  1.0 -1.0      -0.00     -10.90      -0.00       8.36      -0.00      -0.00      18.18       0.00       0.00       0.00
                           -0.00      -0.00      10.85       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   42   3.1  1.0 -1.0      -0.00       0.00     -10.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -10.90      -0.00      -8.36       0.00      -0.00     -18.18       0.00      -0.00       0.00

   43   4.1  1.0 -1.0       0.22      -0.00       0.00      -0.00       0.00     -11.85       0.00       0.00      10.60       0.00
                            0.00       0.00       0.00      -0.00     -11.85      -0.00       0.00      10.60      -0.00       0.00

   44   5.1  1.0 -1.0      13.34      -0.00      -0.00       0.00      -0.00      -3.30       0.00       0.00      18.14       0.00
                           -0.00       0.00      -0.00       0.00       3.30       0.00       0.00     -18.14      -0.00     251.82

   45   6.1  1.0 -1.0      -0.05      -0.00       0.00      -0.00      -0.00       0.08       0.00       0.00     -68.38       0.00
                            0.00       0.00      -0.00      -0.00       0.08      -0.00      -0.00     -68.38       0.00       0.00

   46   7.1  1.0 -1.0      -0.00    -117.31       0.00      -3.43       0.00      -0.00      -0.45      -0.00       0.00       0.00
                            0.00      -0.00    -112.85      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47   8.1  1.0 -1.0       0.00       0.00     112.84       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00    -117.32      -0.00       3.43      -0.00       0.00       0.45       0.00      -0.00       0.00

   48   9.1  1.0 -1.0      -0.00      -0.00       0.00       0.00    -146.86      -0.00      -0.00      -0.32       0.00       0.00
                          117.32      -0.00      -0.00      -0.00       0.00    -146.86      -0.00      -0.00      -0.32       0.00

   49  10.1  1.0 -1.0    -112.84      -0.00       0.00      -0.00       0.00    -150.28       0.00       0.00      -0.16       0.00
                            0.00       0.00      -0.00       0.00     150.28       0.00      -0.00       0.16      -0.00      15.17

   50  11.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00    -230.21      -0.00       0.00      -1.31      -0.00       0.00
                           -3.43       0.00      -0.00       0.00      -0.00     230.21      -0.00      -0.00       1.31      -0.00

   51  12.1  1.0 -1.0       0.00     146.86      -0.00     230.21       0.00       0.00       1.15      -0.00       0.00       0.00
                            0.00      -0.00    -150.28       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   52  13.1  1.0 -1.0       0.00       0.00     150.28       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00     146.86      -0.00    -230.21      -0.00      -0.00      -1.15       0.00      -0.00       0.00

   53  14.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -1.15      -0.00      -0.00     730.78       0.00       0.00
                           -0.45       0.00       0.00       0.00       0.00       1.15       0.00       0.00    -730.78       0.00

   54  15.1  1.0 -1.0       0.00       0.32      -0.00       1.31       0.00       0.00    -730.78       0.00       0.00       0.00
                           -0.00       0.00      -0.16       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   55  16.1  1.0 -1.0      -0.00      -0.00       0.16       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.32       0.00      -1.31      -0.00       0.00     730.78      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0      -0.00       0.01      -0.00      -0.00       0.00      -0.00      -0.30      -0.00       0.00       0.00
                           -0.01      -0.00       0.00      -0.00      -0.00       0.30       0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0      -0.00     204.87       0.00      -0.00      -0.00      -0.00     -13.99      -0.00       0.00       0.00
                          -99.68       0.00      -0.00      -0.00       0.00     -14.87      -0.00       0.00      -0.00       0.00

    3   3.1  0.0  0.0       0.00       3.11       0.00       0.00      -0.00       0.00      24.39      -0.00      -0.00       0.00
                         -179.02      -0.00      -0.00      -0.00       0.00      23.87      -0.00       0.00      -0.00       0.00

    4   4.1  0.0  0.0    -102.60      -0.00       0.00      -0.00      -0.00     -27.20       0.00       0.00      -0.00      -0.00
                            0.00     102.60      -0.00      -0.00       0.00       0.00      27.20       0.00       0.00       0.00

    5   5.1  0.0  0.0      -0.00       0.00    -177.63     102.56       0.00      -0.00       0.00       0.00     -22.51      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      22.53       0.00      16.92

    6   6.1  0.0  0.0       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00     -22.53      -0.00      16.92
                           -0.00       0.00     177.63     102.56      -0.00       0.00       0.00       0.00     -22.51       0.00

    7   7.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.15       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.15       0.00      -0.00       0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   1.1  1.0  0.0      89.06       0.00       0.00       0.00      -0.00      13.23      -0.00       0.00      -0.00      -0.00
                            0.00     -89.06      -0.00       0.00       0.00       0.00     -13.23       0.00      -0.00      -0.00

   25   2.1  1.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      10.90       0.00      -8.36
                            0.00      -0.00    -154.21     -89.03      -0.00      -0.00      -0.00      -0.00      10.85       0.00

   26   3.1  1.0  0.0       0.00       0.00     154.21     -89.03       0.00       0.00       0.00      -0.00      10.85      -0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00     -10.90      -0.00      -8.36

   27   4.1  1.0  0.0      -0.00    -154.21      -0.00       0.00       0.00       0.00      -0.22       0.00      -0.00       0.00
                          154.21       0.00       0.00       0.00      -0.00       0.22       0.00       0.00       0.00      -0.00

   28   5.1  1.0  0.0       0.00      89.03      -0.00       0.00      -0.00      -0.00     -13.34       0.00       0.00      -0.00
                           89.03      -0.00      -0.00      -0.00      -0.00     -13.34      -0.00       0.00      -0.00       0.00

   29   6.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.05       0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.05       0.00       0.00      -0.00      -0.00

   30   7.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     117.31      -0.00       3.43
                            0.00      -0.00      -0.22      13.34       0.05       0.00       0.00      -0.00    -112.85      -0.00

   31   8.1  1.0  0.0      -0.00      -0.00       0.22      13.34      -0.05      -0.00       0.00      -0.00    -112.84      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    -117.32      -0.00       3.43

   32   9.1  1.0  0.0     -10.90       0.00      -0.00      -0.00      -0.00    -117.31       0.00      -0.00      -0.00      -0.00
                            0.00      10.90      -0.00      -0.00      -0.00       0.00     117.32       0.00      -0.00      -0.00

   33  10.1  1.0  0.0      -0.00     -10.85       0.00      -0.00       0.00       0.00     112.84       0.00       0.00       0.00
                          -10.85       0.00      -0.00       0.00       0.00     112.85       0.00       0.00       0.00       0.00

   34  11.1  1.0  0.0       8.36       0.00      -0.00       0.00      -0.00      -3.43       0.00       0.00      -0.00      -0.00
                           -0.00       8.36       0.00      -0.00       0.00       0.00      -3.43       0.00      -0.00      -0.00

   35  12.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00    -146.86       0.00    -230.21
                           -0.00      -0.00      11.85      -3.30      -0.08       0.00       0.00      -0.00    -150.28       0.00

   36  13.1  1.0  0.0      -0.00       0.00     -11.85      -3.30       0.08      -0.00      -0.00      -0.00    -150.28      -0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     146.86      -0.00    -230.21

   37  14.1  1.0  0.0      18.18       0.00       0.00       0.00       0.00      -0.45      -0.00      -0.00       0.00       0.00
                           -0.00      18.18      -0.00      -0.00       0.00      -0.00      -0.45       0.00       0.00       0.00

   38  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.32       0.00      -1.31
                           -0.00      -0.00     -10.60      18.14      68.38      -0.00      -0.00       0.00      -0.16       0.00

   39  16.1  1.0  0.0       0.00       0.00      10.60      18.14     -68.38       0.00       0.00       0.00      -0.16      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.32       0.00      -1.31

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -251.82      -0.00      -0.00      -0.00      -0.00     -15.17       0.00

   41   2.1  1.0 -1.0   15393.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -125.94      -0.00       0.00       0.00       0.00       0.22       0.00      -0.00      -0.00

   42   3.1  1.0 -1.0       0.00   15393.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          125.94      -0.00       0.00       0.00      -0.00      -0.22       0.00      -0.00       0.00      -0.00

   43   4.1  1.0 -1.0       0.00       0.00   15393.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00     -20.73

   44   5.1  1.0 -1.0       0.00       0.00       0.00   15393.40       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      15.16      -0.00       0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00   26658.87       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.15

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   32280.89       0.00       0.00       0.00       0.00
                           -0.00       0.22      -0.00      -0.00      -0.00       0.00     398.64       0.00      -0.00       0.00

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   32280.89       0.00       0.00       0.00
                           -0.22      -0.00      -0.00      -0.00      -0.00    -398.64      -0.00      -0.00      -0.00      -0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32280.93       0.00       0.00
                           -0.00       0.00       0.00     -15.16       0.00      -0.00       0.00       0.00    -265.96      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32281.14       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00     265.96      -0.00      -0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   32281.12
                            0.00       0.00      20.73      -0.00       0.15      -0.00       0.00       0.00       0.00      -0.00

   51  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -19.40      -0.00       0.00      -0.00      -0.00       8.00       0.00       0.00      -0.00

   52  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           19.40       0.00       0.00       0.00      -0.00      -8.01       0.00      -0.00      -0.00      -0.00

   53  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -29.39       0.00     -96.73       0.00       0.00      -0.00      -0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -25.70      -0.00      -0.00       0.00      -0.00      -0.97      -0.00       0.00      -0.00

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           25.70      -0.00      -0.00      -0.00      -0.00       0.97       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55

    1   1.1  0.0  0.0       0.00       0.52       0.00      -0.00    -435.12
                           -0.52      -0.00       0.00     435.12       0.00

    2   2.1  0.0  0.0       0.00     -17.94      -0.00       0.00      -6.13
                           25.38       0.00      -0.00    -347.07      -0.00

    3   3.1  0.0  0.0       0.00     -19.17      -0.00      -0.00     397.26
                            6.73      -0.00      -0.00     193.38       0.00

    4   4.1  0.0  0.0      -7.92      -0.00       0.00     344.21       0.00
                            0.00       7.93      -0.00      -0.00    -344.21

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00     344.24       0.00      -0.00

    6   6.1  0.0  0.0      -0.00      -0.00     344.24      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00

    7   7.1  0.0  0.0      -0.00      -0.24       0.00      -0.00     208.84
                            0.24       0.00       0.00    -208.84      -0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   17  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   18  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   19  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   20  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   21  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   22  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   23  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   24   1.1  1.0  0.0       3.68       0.00      -0.00     -18.18      -0.00
                            0.00      -3.68       0.00       0.00      18.18

   25   2.1  1.0  0.0       0.00       0.00     -18.18      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00

   26   3.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00     -18.18       0.00      -0.00

   27   4.1  1.0  0.0      -0.00      11.85      -0.00      -0.00     -10.60
                          -11.85      -0.00       0.00      10.60      -0.00

   28   5.1  1.0  0.0       0.00       3.30      -0.00      -0.00     -18.14
                            3.30       0.00       0.00     -18.14      -0.00

   29   6.1  1.0  0.0       0.00      -0.08      -0.00      -0.00      68.38
                            0.08      -0.00      -0.00     -68.38       0.00

   30   7.1  1.0  0.0      -0.00       0.00       0.45       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00

   31   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.45       0.00      -0.00

   32   9.1  1.0  0.0     146.86       0.00       0.00       0.32      -0.00
                            0.00    -146.86      -0.00      -0.00      -0.32

   33  10.1  1.0  0.0      -0.00     150.28      -0.00      -0.00       0.16
                          150.28       0.00      -0.00       0.16      -0.00

   34  11.1  1.0  0.0     230.21       0.00      -0.00       1.31       0.00
                           -0.00     230.21      -0.00      -0.00       1.31

   35  12.1  1.0  0.0       0.00      -0.00      -1.15       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00

   36  13.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -1.15       0.00      -0.00

   37  14.1  1.0  0.0       1.15       0.00      -0.00    -730.78      -0.00
                            0.00       1.15      -0.00       0.00    -730.78

   38  15.1  1.0  0.0      -0.00      -0.00     730.78       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00

   39  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     730.78      -0.00       0.00

   40   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00

   41   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00     -19.40      -0.00       0.00     -25.70

   42   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           19.40      -0.00      -0.00      25.70       0.00

   43   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      29.39       0.00       0.00

   44   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   45   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      96.73      -0.00       0.00

   46   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       8.01      -0.00       0.00      -0.97

   47   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -8.00      -0.00      -0.00       0.97      -0.00

   48   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00

   49  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00

   50  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   51  12.1  1.0 -1.0   32281.14       0.00       0.00       0.00       0.00
                           -0.00    -132.89      -0.00      -0.00       0.91

   52  13.1  1.0 -1.0       0.00   32281.14       0.00       0.00       0.00
                          132.89       0.00      -0.00      -0.91       0.00

   53  14.1  1.0 -1.0       0.00       0.00   32933.56       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00

   54  15.1  1.0 -1.0       0.00       0.00       0.00   32933.71       0.00
                            0.00       0.91       0.00       0.00   -1033.47

   55  16.1  1.0 -1.0       0.00       0.00       0.00       0.00   32933.71
                           -0.91      -0.00       0.00    1033.47      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 55)

    The diagonal matrixelements are shifted by -24985.14352378 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   18311.042       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   18311.042       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   18311.043       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   18311.044       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   18311.045       0.000     145.091
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   27776.421       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000     145.091       0.000   15393.311
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000    -145.101      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.011     289.735       4.391      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000    -251.204       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000      -0.000     145.047      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.003       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000      -0.000       0.000     -38.472      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.431     -19.785      34.496       0.000       0.000      -0.000       0.207       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000     -31.866       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000      -0.000      -0.000     -31.840      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      23.928      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000     -11.207       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.741     -25.369     -27.109      -0.000       0.000      -0.000      -0.346       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000     486.829       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000       0.000      -0.000     486.793       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+           -615.350      -8.672     561.806       0.000      -0.000       0.000     295.349       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     148.710    -248.678       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000    -145.095       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000     145.095       0.000     125.946

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.001       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     290.068       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.228      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.229       0.000      18.717

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      16.351     -27.343       0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      31.753      -0.000      -0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.976      37.939      22.688      -0.000       0.000      -0.000      -0.452       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000     -39.716      -0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      39.716      -0.000       5.208

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                             -615.367    -482.202    -288.358       0.000      -0.000       0.000     295.380      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000    -486.838      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000     486.838       0.000     -25.713

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000    -145.090       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.012    -140.966    -253.168       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     145.101       0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000     251.205       0.000      -0.001

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000     145.044       0.000    -251.823

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.003       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.431     -21.028      33.753       0.000      -0.000       0.000      -0.207      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      38.472      -0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      31.867       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000     -31.840       0.000     -15.167

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      23.927       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.741      35.886       9.522       0.000       0.000      -0.000       0.346       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      11.208      -0.000       0.000       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     486.829      -0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              615.350    -490.828     273.476      -0.000       0.000      -0.000    -295.350      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    -486.793      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.000       0.011      -0.000      -0.000       0.000      -0.000      -0.431      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000     289.735       0.000      -0.000      -0.000      -0.000     -19.785      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       4.391       0.000       0.000      -0.000       0.000      34.496      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>            -145.101      -0.000       0.000      -0.000      -0.000     -38.472       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000       0.000    -251.204     145.047       0.003      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000     -31.866
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.207       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          15393.313       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   15393.313       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   15393.369       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   15393.405       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   26658.875       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   32280.888       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   32280.888       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   32280.930
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000    -125.946      -0.000       0.000       0.000       0.000     -18.717       0.000

    2    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000    -218.085    -125.906      -0.003      -0.000      -0.000      -0.000

    3    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000     -15.411

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                              218.085       0.000       0.000       0.000      -0.000       0.307       0.000       0.000

    5    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                              125.906      -0.000      -0.000       0.000      -0.000     -18.866      -0.000       0.000

    6    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.003      -0.000       0.000       0.000       0.000      -0.070       0.000       0.000

    7    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.307      18.866       0.070       0.000       0.000      -0.000

    8    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000    -165.911

    9    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000      15.411      -0.000      -0.000      -0.000       0.000     165.911       0.000

   10    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                              -15.344       0.000      -0.000       0.000       0.000     159.587       0.000       0.000

   11    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      11.824       0.000      -0.000       0.000       0.000      -4.853       0.000

   12    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000      16.761      -4.668      -0.116       0.000       0.000      -0.000

   13    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000     207.687

   14    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      25.716      -0.000      -0.000       0.000      -0.000      -0.636       0.000

   15    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000     -14.986      25.655      96.701      -0.000      -0.000       0.000

   16    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.452

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.001     251.823       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     125.941       0.000      -0.000      -0.000      -0.000      -0.223      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -125.941       0.000      -0.000      -0.000       0.000       0.223      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000     -15.164

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.223       0.000       0.000       0.000      -0.000    -398.636      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.223       0.000       0.000       0.000       0.000     398.636       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      15.164      -0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000    -265.959

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -20.732       0.000      -0.153       0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      19.401       0.000      -0.000       0.000       0.000      -8.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -19.401      -0.000      -0.000      -0.000       0.000       8.005      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      29.393      -0.000      96.726      -0.000      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      25.696       0.000       0.000      -0.000       0.000       0.965       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -25.696       0.000       0.000       0.000       0.000      -0.965      -0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.741       0.000      -0.000    -615.350       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000     -25.369      -0.000       0.000      -8.672       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000    -148.710

    3    1  |0 0>              -0.000       0.000       0.000     -27.109      -0.000      -0.000     561.806       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     248.678

    4    1  |0 0>              -0.000      -0.000     -11.207      -0.000       0.000     486.793       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |0 0>             -31.840      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |0 0>              -0.000      23.928      -0.000      -0.000     486.829      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.000      -0.000      -0.000      -0.346       0.000      -0.000     295.349       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     125.946

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      18.717

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>+          32281.144       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000   32281.119       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000   32281.145       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000   32281.145       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       5.208

   14    1  |1 1>+              0.000       0.000       0.000       0.000   32933.557       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   32933.711       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   32933.711      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -25.713

    1    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000   15393.311
                               -0.000      -0.000       0.000      -5.208       0.000       0.000      25.713       0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               15.344       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000     -11.824       0.000      -0.000     -25.716       0.000      -0.000      -0.000

    4    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000     -16.761      -0.000       0.000      14.986      -0.000      -0.000

    5    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       4.668       0.000       0.000     -25.655      -0.000      -0.000

    6    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.116      -0.000      -0.000     -96.701       0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                             -159.587      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       4.853      -0.000       0.000       0.636       0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000    -207.687      -0.000      -0.000      -0.452      -0.000

   10    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000     212.528       0.000      -0.000       0.232      -0.000      -0.000

   11    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000     325.565      -0.000      -0.000       1.846      -0.000

   12    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                             -212.528       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000    -325.565      -0.000       0.000      -1.630       0.000      -0.000      -0.000

   14    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       1.630       0.000       0.000   -1033.477      -0.000

   15    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.232       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -1.846      -0.000       0.000    1033.477      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.167      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000    -125.946
                                0.000       0.000       0.000      19.401       0.000      -0.000      25.696       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000     -19.401       0.000       0.000     -25.696      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      20.732      -0.000       0.000     -29.393      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.153      -0.000      -0.000     -96.726       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     -18.717
                                0.000      -0.000      -0.000      -8.005       0.000      -0.000       0.965      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       8.000       0.000       0.000      -0.965       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                              265.959       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.002       0.000      -0.000      -0.000       0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.002       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -5.208
                               -0.000       0.000       0.000     132.892       0.000       0.000      -0.910      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000    -132.892      -0.000       0.000       0.910      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      25.713
                               -0.000       0.000      -0.000      -0.910      -0.000      -0.000    1033.471      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.910       0.000      -0.000   -1033.471       0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000     -16.351

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      27.343

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.001    -290.068       0.000      -0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              145.095      -0.000      -0.000      -0.000      -0.000      -0.228      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -145.095      -0.000       0.000       0.000       0.000       0.229      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000    -125.946      -0.000       0.000       0.000       0.000     -18.717       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000    -218.085    -125.906      -0.003      -0.000      -0.000      -0.000

    3    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000     -15.411

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                              218.085       0.000       0.000       0.000      -0.000       0.307       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                              125.906      -0.000      -0.000       0.000      -0.000     -18.866      -0.000       0.000

    6    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.003      -0.000       0.000       0.000       0.000      -0.070       0.000       0.000

    7    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.307      18.866       0.070       0.000       0.000      -0.000

    8    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000    -165.911

    9    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000      15.411      -0.000      -0.000      -0.000       0.000     165.911       0.000

   10    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                              -15.344       0.000      -0.000       0.000       0.000     159.587       0.000       0.000

   11    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      11.824       0.000      -0.000       0.000       0.000      -4.853       0.000

   12    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000      16.761      -4.668      -0.116       0.000       0.000      -0.000

   13    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000     207.687

   14    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      25.716      -0.000      -0.000       0.000      -0.000      -0.636       0.000

   15    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000     -14.986      25.655      96.701      -0.000      -0.000       0.000

   16    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.452

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>           15393.313       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000   15393.313       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000   15393.369       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000   15393.405       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000   26658.875       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000   32280.888       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   32280.888       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   32280.930
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

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

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-            125.946       0.000       0.000       0.000      -0.000      18.717      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      15.411
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000     218.084    -125.908       0.003       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 1>-             -0.000    -218.084       0.000       0.000       0.000       0.000      -0.308       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000     125.908      -0.000       0.000      -0.000      -0.000     -18.867       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 1>-              0.000      -0.003      -0.000       0.000       0.000      -0.000       0.070       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>-             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000     165.908
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>-             -0.000      -0.000       0.308      18.867      -0.070      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 1>-            -15.411       0.000      -0.000      -0.000      -0.000    -165.908       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 1>-             -0.000     -15.344       0.000      -0.000       0.000       0.000     159.584       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   11    1  |1 1>-             11.824       0.000      -0.000       0.000      -0.000      -4.845       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000    -207.694
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   13    1  |1 1>-             -0.000       0.000     -16.761      -4.668       0.116      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   14    1  |1 1>-             25.716       0.000       0.000       0.000       0.000      -0.636      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.452
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000      14.986      25.655     -96.701       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.976       0.000      -0.000     615.367       0.000      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -37.939       0.000      -0.000     482.202      -0.000       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -22.688       0.000      -0.000     288.358      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -31.753       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      39.716      -0.000       0.000     486.838       0.000     145.090

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -39.716      -0.000       0.000    -486.838      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.452      -0.000       0.000    -295.380       0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -5.208       0.000       0.000      25.713       0.000

    2    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               15.344       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000     -11.824       0.000      -0.000     -25.716       0.000      -0.000      -0.000

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000     -16.761      -0.000       0.000      14.986      -0.000      -0.001

    5    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       4.668       0.000       0.000     -25.655      -0.000    -251.823

    6    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.116      -0.000      -0.000     -96.701       0.000      -0.000

    7    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                             -159.587      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       4.853      -0.000       0.000       0.636       0.000      -0.000      -0.000

    9    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000    -207.687      -0.000      -0.000      -0.452      -0.000

   10    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000     212.528       0.000      -0.000       0.232      -0.000     -15.167

   11    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000     325.565      -0.000      -0.000       1.846       0.000

   12    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                             -212.528       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000    -325.565      -0.000       0.000      -1.630       0.000      -0.000      -0.000

   14    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       1.630       0.000       0.000   -1033.477      -0.000

   15    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.232       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -1.846      -0.000       0.000    1033.477      -0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     125.946
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      18.717
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>           32281.144       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000   32281.119       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000   32281.145       0.000       0.000       0.000       0.000       5.208
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000   32281.145       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000   32933.557       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000   32933.711       0.000     -25.713
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   32933.711      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>-             -0.000      -0.000       5.208       0.000      -0.000     -25.713      -0.000   15393.311
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000     -11.824       0.000       0.000     -25.716      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-             15.344      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    4    1  |1 1>-             -0.000       0.000      -0.000      16.761      -0.000      -0.000     -14.986       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000      -0.000       0.000       4.668      -0.000      -0.000     -25.655       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 1>-             -0.000       0.000       0.000      -0.116      -0.000      -0.000      96.701       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000       4.845      -0.000       0.000       0.636       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>-           -159.584      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 1>-             -0.000      -0.000     207.694       0.000       0.000       0.452      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000      -0.000     212.531      -0.000      -0.000       0.232       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 1>-             -0.000       0.000     325.562       0.000      -0.000       1.846       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 1>-              0.000    -325.562       0.000      -0.000      -1.631       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>-           -212.531      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       1.631       0.000       0.000   -1033.477      -0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000      -1.846      -0.000      -0.000    1033.477       0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   16    1  |1 1>-             -0.232      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.012       0.000      -0.000       0.000       0.000      -0.431      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              140.966      -0.000       0.000       0.000      -0.000      21.028       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              253.168       0.000       0.000       0.000      -0.000     -33.753       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -145.101       0.000       0.000      -0.000      -0.000     -38.472      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000     -31.867

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -251.205    -145.044       0.003      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.207      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.001     251.823       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     125.941       0.000      -0.000      -0.000      -0.000      -0.223      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -125.941       0.000      -0.000      -0.000       0.000       0.223      -0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000     -15.164

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.223       0.000       0.000       0.000      -0.000    -398.636      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.223       0.000       0.000       0.000       0.000     398.636       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      15.164      -0.000       0.000      -0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000    -265.959

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -20.732       0.000      -0.153       0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      19.401       0.000      -0.000       0.000       0.000      -8.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -19.401      -0.000      -0.000      -0.000       0.000       8.005      -0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      29.393      -0.000      96.726      -0.000      -0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      25.696       0.000       0.000      -0.000       0.000       0.965       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -25.696       0.000       0.000       0.000       0.000      -0.965      -0.000      -0.000

    1    1  |1 0>            -125.946      -0.000      -0.000      -0.000       0.000     -18.717       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000     -15.411
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000       0.000    -218.084     125.908      -0.003      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 0>               0.000     218.084       0.000      -0.000      -0.000      -0.000       0.308      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 0>              -0.000    -125.908       0.000       0.000       0.000       0.000      18.867      -0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.000       0.003       0.000      -0.000       0.000       0.000      -0.070      -0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000    -165.908
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000      -0.308     -18.867       0.070       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 0>              15.411      -0.000       0.000       0.000       0.000     165.908      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000      15.344      -0.000       0.000      -0.000      -0.000    -159.584      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 0>             -11.824      -0.000       0.000      -0.000       0.000       4.845      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000     207.694
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000      -0.000      16.761       4.668      -0.116       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   14    1  |1 0>             -25.716      -0.000      -0.000      -0.000      -0.000       0.636       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.452
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   16    1  |1 0>              -0.000      -0.000     -14.986     -25.655      96.701      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-          15393.313       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000   15393.313       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000   15393.369       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000   15393.405       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   26658.875       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   32280.888       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   32280.888       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   32280.930
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

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.741       0.000      -0.000    -615.350      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -35.886      -0.000       0.000     490.828       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -9.522       0.000       0.000    -273.476      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     -11.208       0.000       0.000     486.793

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -23.927      -0.000       0.000    -486.829      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               31.840      -0.000       0.000      -0.000       0.000       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.346      -0.000      -0.000     295.350       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.167      -0.000      -0.000       0.000       0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      19.401       0.000      -0.000      25.696

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -19.401       0.000       0.000     -25.696      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      20.732      -0.000       0.000     -29.393      -0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.153      -0.000      -0.000     -96.726       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -8.005       0.000      -0.000       0.965

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       8.000       0.000       0.000      -0.965       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              265.959       0.000       0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.002       0.000      -0.000      -0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.002       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     132.892       0.000       0.000      -0.910

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -132.892      -0.000       0.000       0.910      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.910      -0.000      -0.000    1033.471

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.910       0.000      -0.000   -1033.471       0.000

    1    1  |1 0>               0.000       0.000      -5.208      -0.000       0.000      25.713       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 0>              -0.000      11.824      -0.000      -0.000      25.716       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 0>             -15.344       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    4    1  |1 0>               0.000      -0.000       0.000     -16.761       0.000       0.000      14.986
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.000      -0.000      -4.668       0.000       0.000      25.655
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000       0.116       0.000       0.000     -96.701
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -4.845       0.000      -0.000      -0.636      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>             159.584       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000    -207.694      -0.000      -0.000      -0.452       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000      -0.000       0.000    -212.531       0.000       0.000      -0.232
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000    -325.562      -0.000       0.000      -1.846      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>              -0.000     325.562       0.000       0.000       1.631      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 0>             212.531       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   14    1  |1 0>              -0.000      -0.000      -1.631      -0.000       0.000    1033.477       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   15    1  |1 0>              -0.000       1.846       0.000       0.000   -1033.477       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   16    1  |1 0>               0.232       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-          32281.144       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   32281.119       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   32281.145       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   32281.145       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   32933.557       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   32933.711       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   32933.711
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1-24985.14369132    -0.00016754      -36.77      0.00000000        0.00      0.0000
    2-24985.07510805     0.06841573    15015.52      0.06858327    15052.29      1.8662
    3-24985.07510800     0.06841578    15015.53      0.06858332    15052.30      1.8662
    4-24985.07510800     0.06841578    15015.53      0.06858332    15052.30      1.8662
    5-24985.07415042     0.06937336    15225.69      0.06954090    15262.46      1.8923
    6-24985.07415042     0.06937336    15225.69      0.06954090    15262.46      1.8923
    7-24985.07415042     0.06937337    15225.69      0.06954090    15262.46      1.8923
    8-24985.07415032     0.06937347    15225.72      0.06954100    15262.49      1.8923
    9-24985.07415031     0.06937347    15225.72      0.06954101    15262.49      1.8923
   10-24985.07223946     0.07128432    15645.10      0.07145186    15681.87      1.9443
   11-24985.07223943     0.07128435    15645.11      0.07145189    15681.88      1.9443
   12-24985.07223943     0.07128435    15645.11      0.07145189    15681.88      1.9443
   13-24985.07223935     0.07128443    15645.12      0.07145197    15681.89      1.9443
   14-24985.07223934     0.07128445    15645.13      0.07145198    15681.90      1.9443
   15-24985.07223934     0.07128445    15645.13      0.07145198    15681.90      1.9443
   16-24985.07223926     0.07128452    15645.14      0.07145206    15681.91      1.9443
   17-24985.06004220     0.08348158    18322.09      0.08364912    18358.86      2.2762
   18-24985.06004213     0.08348165    18322.11      0.08364919    18358.88      2.2762
   19-24985.06004176     0.08348203    18322.19      0.08364956    18358.96      2.2762
   20-24985.06004175     0.08348203    18322.19      0.08364957    18358.96      2.2762
   21-24985.06004175     0.08348204    18322.19      0.08364958    18358.96      2.2762
   22-24985.02207326     0.12145052    26655.31      0.12161806    26692.08      3.3094
   23-24985.02207326     0.12145052    26655.31      0.12161806    26692.08      3.3094
   24-24985.02207326     0.12145052    26655.31      0.12161806    26692.08      3.3094
   25-24985.01733626     0.12618753    27694.96      0.12635507    27731.73      3.4383
   26-24985.00234603     0.14117775    30984.93      0.14134529    31021.71      3.8462
   27-24984.99886182     0.14466196    31749.63      0.14482950    31786.40      3.9410
   28-24984.99886153     0.14466226    31749.70      0.14482980    31786.47      3.9410
   29-24984.99886133     0.14466246    31749.74      0.14483000    31786.51      3.9410
   30-24984.99886132     0.14466246    31749.74      0.14483000    31786.51      3.9410
   31-24984.99886128     0.14466250    31749.75      0.14483004    31786.52      3.9410
   32-24984.99815945     0.14536433    31903.78      0.14553187    31940.55      3.9601
   33-24984.99815945     0.14536434    31903.78      0.14553187    31940.55      3.9601
   34-24984.99815907     0.14536471    31903.87      0.14553225    31940.64      3.9601
   35-24984.99704635     0.14647743    32148.08      0.14664497    32184.85      3.9904
   36-24984.99704635     0.14647743    32148.08      0.14664497    32184.85      3.9904
   37-24984.99704596     0.14647782    32148.17      0.14664536    32184.94      3.9904
   38-24984.99704584     0.14647794    32148.19      0.14664548    32184.96      3.9904
   39-24984.99704581     0.14647797    32148.20      0.14664551    32184.97      3.9904
   40-24984.99704581     0.14647797    32148.20      0.14664551    32184.97      3.9904
   41-24984.99704537     0.14647842    32148.30      0.14664596    32185.07      3.9904
   42-24984.99462442     0.14889936    32679.63      0.14906690    32716.40      4.0563
   43-24984.99462436     0.14889942    32679.65      0.14906696    32716.42      4.0563
   44-24984.99462362     0.14890016    32679.81      0.14906770    32716.58      4.0563
   45-24984.99462362     0.14890016    32679.81      0.14906770    32716.58      4.0563
   46-24984.99462347     0.14890031    32679.84      0.14906785    32716.61      4.0563
   47-24984.99462342     0.14890037    32679.85      0.14906791    32716.62      4.0563
   48-24984.99462333     0.14890045    32679.87      0.14906799    32716.64      4.0563
   49-24984.99462333     0.14890045    32679.87      0.14906799    32716.64      4.0563
   50-24984.99462326     0.14890052    32679.89      0.14906806    32716.66      4.0563
   51-24984.98862056     0.15490322    33997.33      0.15507076    34034.10      4.2197
   52-24984.98862034     0.15490344    33997.38      0.15507098    34034.15      4.2197
   53-24984.98862034     0.15490344    33997.38      0.15507098    34034.15      4.2197
   54-24984.98862011     0.15490368    33997.43      0.15507121    34034.20      4.2197
   55-24984.98862003     0.15490375    33997.44      0.15507129    34034.21      4.2197

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99940522  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000007  0.00000000  0.00000000  0.00000000 -0.05934678  0.00000007  0.00000004  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000004 -0.00000000 -0.00000000 -0.00000000  0.09933031 -0.00000011 -0.00000006  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.11583694
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00004195

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000175  0.00000013  0.11583506  0.00000049  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000172  0.00000000 -0.00000007  0.00000049 -0.11583501 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00063418  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000001 -0.54775860  0.00001844  0.00000024 -0.00000172  0.40554615  0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.54775143 -0.00000001  0.00000001 -0.00000001  0.00000000  0.00000001 -0.40554014
                          -0.00000000  0.00000141 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00014686

   3    1  |1 1>+         -0.00000078 -0.00000000  0.00000000  0.00000000  0.40523293 -0.00000044 -0.00000025 -0.00000006
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00001065  0.31622058  0.00000078  0.70229932  0.00000298  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000001  0.00000001  0.00000000

   5    1  |1 1>+          0.00000000  0.00000001  0.00001844  0.54764107 -0.00000045 -0.40548336 -0.00000172 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00002314 -0.00000000 -0.00000007 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000418 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00065045
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000024

   8    1  |1 1>+          0.00001414 -0.00000000 -0.00000000  0.00000000  0.00064602 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000  0.00000798 -0.00000000  0.00000000 -0.00000000  0.00052693  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000568 -0.00000000 -0.00052565 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00000461  0.00000000 -0.00000000  0.00000000 -0.00042248 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000153 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00016911
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000006

  13    1  |1 1>+         -0.00002427  0.00000000  0.00000000  0.00000000 -0.00014964  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00138499 -0.00000005  0.00000000 -0.00000002  0.00466582  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00139501 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00467486
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000169

  16    1  |1 1>+          0.01990621 -0.00000000 -0.00000000  0.00000000 -0.00467411  0.00000001  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.00000000 -0.00000000  0.81098182 -0.00000090 -0.00000048 -0.00000001

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000001  0.00001844  0.54776868  0.00000045  0.40549791  0.00000172  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001  0.54776862 -0.00001844  0.00000024 -0.00000172  0.40549793  0.00000001

   4    1  |1 0>           0.00000000  0.00000163 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.63240250  0.00000002 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000337

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00029366
                           0.00000000 -0.00000264 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000002  0.81093226

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00002293 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000099  0.00000000  0.00001474  0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000099 -0.00000000  0.00000000 -0.00000000  0.00001476  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00053313  0.00000000  0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000019
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00053055

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00003198 -0.00000000 -0.00000000  0.00000000  0.00000027 -0.00000000  0.00000000  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000618 -0.00000000 -0.00067583 -0.00000000 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000618 -0.00000000 -0.00000000  0.00000000 -0.00067583 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.01990679 -0.00000000 -0.00000000  0.00000000  0.00000212 -0.00000000  0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000005 -0.00138565  0.00000001  0.00468289  0.00000002  0.00000000

  16    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00138564  0.00000005  0.00000000 -0.00000002  0.00468290  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000001 -0.00001844 -0.54775856  0.00000045  0.40554618  0.00000172  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000080 -0.00000000  0.00000000 -0.00000000  0.40578488 -0.00000046 -0.00000024  0.00000005

   3    1  |1 1>-          0.00000000 -0.00000141  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00014686
                           0.00000000 -0.54775136 -0.00000001  0.00000001  0.00000001 -0.00000000 -0.00000001  0.40554018

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001  0.00000000
                          -0.00000000 -0.00000001  0.31621600 -0.00001065  0.00000042 -0.00000298  0.70230274  0.00000001

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001 -0.54764373  0.00001844  0.00000024 -0.00000172  0.40547747  0.00000001

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00002313 -0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00001414  0.00000000  0.00000000 -0.00000000  0.00064603 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000024
                          -0.00000000 -0.00000419 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00065045

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000799  0.00000000  0.00052695  0.00000000  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000568 -0.00000000  0.00000000 -0.00000000  0.00052564  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000462  0.00000000  0.00042248  0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00002426 -0.00000000 -0.00000000  0.00000000 -0.00014921  0.00000000  0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000006
                           0.00000000 -0.00000153 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00016912

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000005 -0.00138499 -0.00000001 -0.00466582 -0.00000002 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01990621  0.00000000 -0.00000000 -0.00000000 -0.00467199  0.00000001  0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000169
                          -0.00000000 -0.00139502 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00467485

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000117 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.09931262  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00001109
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.05933619 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001849
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00001722 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00001325 -0.00000000  0.00000000 -0.00000000  0.00001326  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00001327  0.00000000 -0.00001332 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000002 -0.00000076 -0.15555116 -0.00000007  0.71347647  0.00000798  0.00000001
                          -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000000 -0.00000005 -0.00000005 -0.00000000

   2    1  |1 1>+         -0.00000003  0.44742352  0.00000001 -0.00000001 -0.57712165 -0.00000005  0.00000001  0.00000000
                           0.00000000 -0.00000106 -0.00000000  0.00000000 -0.00000054 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.70250228 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000001 -0.57733972
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000001  0.00000001 -0.56435351  0.00000274 -0.00000001  0.00000319 -0.28557773 -0.00000000
                           0.00000000 -0.00000000 -0.00000002 -0.00000003  0.00000000  0.00000002  0.00000002  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.48220323  0.00000232  0.00000000 -0.00000614  0.54854904  0.00000001
                          -0.00000000 -0.00000000 -0.00000002 -0.00000002 -0.00000000 -0.00000004 -0.00000005 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000029 -0.00000000 -0.00000000 -0.00000000  0.00000013 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00002015  0.00000000  0.00000000 -0.00066792 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000441  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00064709
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.00000001  0.00105140  0.00000000 -0.00019746 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00046215  0.00000000 -0.00000000  0.00000001 -0.00096230 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000  0.00000001  0.00117637 -0.00000000  0.00059375  0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00131210  0.00000000 -0.00000000  0.00084252  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00057498  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00086094
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00001049 -0.00000000  0.00000541  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00000734 -0.00000000  0.00000000  0.00000168 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00269502  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000004
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00031867  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000001  0.57736839

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000002 -0.00000003  0.00000000  0.00000002  0.00000003  0.00000000
                          -0.00000000 -0.00000001  0.65157279 -0.00000316  0.00000001 -0.00000369  0.32973567  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000003 -0.00000004 -0.00000000  0.00000002  0.00000002  0.00000000
                           0.00000000  0.00000001  0.00000315  0.65192585 -0.00000003  0.32903716  0.00000370  0.00000001

   4    1  |1 0>          -0.00000000  0.00000184 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.77463755  0.00000001 -0.00000002  0.00032945  0.00000001  0.00000000 -0.00000001

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000054  0.00000000 -0.00000000 -0.00000000
                           0.00000007  0.00024415  0.00000001  0.00000000 -0.57742113 -0.00000006  0.00000001  0.00000001

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000037  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00071802 -0.00000000 -0.00000000  0.00000002 -0.00144129 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00071647  0.00000000 -0.00144207 -0.00000002 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000021  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00107820

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000046  0.00000000  0.00000000 -0.00107362 -0.00000000  0.00000000  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00069651  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00048623 -0.00000000  0.00000000 -0.00000000  0.00022019  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00048647 -0.00000000  0.00021964  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00539586  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000627  0.00000000 -0.00000000  0.00000000 -0.00000056 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000628  0.00000000 -0.00000055 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000001  0.00000001  0.00000000  0.00000005  0.00000006  0.00000000
                          -0.00000000 -0.00000000 -0.15631573  0.00000074  0.00000001 -0.00000799  0.71330936  0.00000001

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.70218363 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000001 -0.57733969

   3    1  |1 1>-          0.00000000  0.00000106 -0.00000000 -0.00000000 -0.00000054 -0.00000000  0.00000000  0.00000000
                           0.00000003  0.44692881 -0.00000000 -0.00000002  0.57750487  0.00000006 -0.00000000 -0.00000001

   4    1  |1 1>-          0.00000000  0.00000000  0.00000003  0.00000003  0.00000000 -0.00000002 -0.00000002 -0.00000000
                           0.00000000 -0.00000001 -0.00000273 -0.56465521  0.00000002 -0.28497728 -0.00000320 -0.00000001

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000002 -0.00000003  0.00000000 -0.00000004 -0.00000004 -0.00000000
                           0.00000000  0.00000002  0.00000233  0.48161973  0.00000006 -0.54906318 -0.00000614 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000028  0.00000000  0.00000013  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000492  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00064710

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00002074 -0.00000000 -0.00000000  0.00066791  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00105158 -0.00000001  0.00000000  0.00000000 -0.00019634 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00046318 -0.00000000  0.00096181  0.00000001  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00117574  0.00000001 -0.00000000  0.00000001 -0.00059500 -0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00057510  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00086093

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00131281  0.00000000 -0.00000000 -0.00084138 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00001048  0.00000000 -0.00000000  0.00000000 -0.00000543 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00269869 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000004

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000734  0.00000000  0.00000000 -0.00000169 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.84436574 -0.52126679 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.52126796  0.84436371  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000001  0.00000014  0.99228975  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000123 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.99228988  0.00000009  0.00000001 -0.00000000  0.00000008  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000009  0.99228989 -0.00000014 -0.00000008 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000021 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.04737250 -0.00000001  0.00004070  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.04737600  0.00000000  0.00000000 -0.00004040
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.08124832 -0.04847457 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.08201446 -0.00000001 -0.00000000  0.00000000 -0.00002282  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.04735674  0.00000000  0.00000000  0.00000000 -0.00004065 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000021 -0.00000000  0.00000000 -0.00005227  0.99966016  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00297784  0.00000000 -0.00000000  0.00001455
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00009700 -0.00306739 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00246296 -0.00000000  0.00000017  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00246094  0.00000000  0.00000000  0.00000000 -0.00000026  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00185843  0.00000000 -0.00003183 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00085973  0.00000000  0.00000000 -0.00002422
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00276418  0.00074526  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.03064611  0.00000000  0.01843505  0.00000096  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.03064205 -0.00000000 -0.00000000  0.01843049
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000  0.00000000 -0.00000001

  16    1  |1 1>+         -0.01811202 -0.03037798 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00133660 -0.09459249 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.04737437 -0.00000000 -0.00000000  0.00000000 -0.00004095 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.04737436 -0.00000001 -0.00004094 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000040 -0.00000000 -0.00000000  0.00004756

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000012 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000001  0.09470470  0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000036
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.99966026

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00002168 -0.00000000 -0.00000000  0.00000000 -0.00001444 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00002173 -0.00000000 -0.00001445 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00003478  0.00246331  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00245460  0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00340467  0.00004809 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00307626  0.00000000  0.00000000 -0.00000000  0.00002413  0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00307627  0.00000000  0.00002413  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.03536280 -0.00049967  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.03064396  0.00000000  0.00000000  0.00000096 -0.01843126 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.03064396  0.00000000 -0.01843126 -0.00000096 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.04737245 -0.00000000 -0.00000000 -0.00000000  0.00004070  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.08258546 -0.04615961 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000001  0.04737599  0.00000000  0.00000000 -0.00004041

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000001  0.08201479 -0.00000001 -0.00002282 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.04735601 -0.00000001  0.00004065  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000021 -0.00000000  0.99966016  0.00005227  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00001024 -0.00306890 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00297781 -0.00000000 -0.00000000  0.00001455

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00246297 -0.00000000 -0.00000000 -0.00000000  0.00000017  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00246095 -0.00000000  0.00000027  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00185840 -0.00000000 -0.00000000 -0.00000000  0.00003183  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00274201  0.00082309  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00085979  0.00000000  0.00000000 -0.00002422

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.03064610 -0.00000000 -0.00000000  0.00000096 -0.01843505 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.01724648 -0.03087761 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.03064205 -0.00000000 -0.00000000  0.01843049

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00605167 -0.03394962 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000238 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000064 -0.00000212 -0.00250179 -0.00000000  0.00000000  0.00000000  0.00421462 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000039 -0.00000129  0.00417344 -0.00000000  0.00000000  0.00000000  0.00252637  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00481259  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000099 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00481261  0.00000001  0.00000000  0.00000218
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00481262 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.98754040  0.15736443  0.00000006  0.00000000  0.00000000 -0.00000000 -0.00000894  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00067658 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00068175 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000014  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000017  0.00000097 -0.00068148 -0.00000000  0.00000000  0.00000000  0.00117751 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00117785 -0.00000000 -0.00000000  0.00060434
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00067772  0.00000000  0.00000000  0.00107605
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000039  0.00000000 -0.00000000  0.02606852
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.59537440 -0.00000001  0.00000000  0.00000001 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00012306  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00006969  0.00051137  0.59990751 -0.00000000  0.00000000  0.00000001  0.00864999  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000111 -0.48814015  0.00000002 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000001  0.48795361 -0.00000111 -0.00000002  0.00000542
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000086  0.37787438 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.16309086 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00003371  0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00011650 -0.00087149 -0.14462434  0.00000001 -0.00000002 -0.00000002 -0.53462225 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00063867  0.00000000  0.00000038
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00089217 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000018  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.09078547  0.56980948 -0.00146298  0.00000000 -0.00000000 -0.00000000 -0.00110889  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000000 -0.00136087  0.00000000 -0.00000000 -0.00000000 -0.00000144  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00068293 -0.00000000 -0.00000000  0.00107453

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00068293 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000028  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00135805  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00931000  0.00000002  0.00000000  0.00134558

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00931999  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000015 -0.48786187  0.00000000 -0.00000000 -0.00000001 -0.00051228 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00010080  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.48768195  0.00000001 -0.00000000 -0.00000001  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00015241 -0.00110067 -0.00068990 -0.00000001  0.00000003  0.00000002  0.65461775  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000002  0.61702352 -0.00000140 -0.00000002 -0.00124095

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000140  0.61702331 -0.00000002  0.00000000

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.09079249  0.56983758 -0.00000181 -0.00000000  0.00000000  0.00000000  0.00183212  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00050743  0.00000000  0.00000000  0.70683636

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00050583  0.00000000 -0.00000038

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00067658 -0.00000000 -0.00000000 -0.00107508

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000015 -0.00000097 -0.00067897  0.00000000 -0.00000000 -0.00000000 -0.00117894 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000014  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00068174  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00117784 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00067770 -0.00000000  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000033  0.00000000 -0.00000001

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00006964 -0.00051150  0.59992210 -0.00000000  0.00000000  0.00000001 -0.00737052  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00012306  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.59537167  0.00000001 -0.00000000 -0.00000001  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000001 -0.48814513  0.00000111  0.00000002  0.00042516

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000111 -0.48795381  0.00000002 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000001 -0.37786812  0.00000086  0.00000001 -0.00235931

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00011652  0.00087171 -0.14576635 -0.00000001  0.00000002  0.00000002  0.53431500  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00003371  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.16310127  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00063704 -0.00000000 -0.00000000  0.70688745

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.09078549 -0.56980953 -0.00146552 -0.00000000  0.00000000  0.00000000  0.00110567 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000018  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00089128  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000419  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000702 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000409 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00002267
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000220  0.00000000 -0.00000000 -0.00000410 -0.00000000  0.00000000 -0.00002267  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00107508 -0.00000000  0.00000000  0.00082148 -0.00000000  0.00000000 -0.00107683  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00107217 -0.00000000  0.00000000  0.00000000 -0.00083466 -0.00000000  0.00000000
                           0.00000000 -0.00000219  0.00000000 -0.00000000  0.00000000  0.00000044 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00107773  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.00073099 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00092556
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00123200 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00055396
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000001  0.00000000 -0.00003175  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000509
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00090405  0.00000000 -0.00000000  0.00000000 -0.01084533  0.00000000  0.00000000
                          -0.00000000  0.00000185  0.00000000 -0.00000000  0.00000000  0.00000575 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.34658110  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00042655  0.00000000  0.00000052  0.56052103 -0.00000000 -0.00000001  0.13776493 -0.00000012
                          -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00687377  0.00000001 -0.00000000  0.00000004  0.00000051  0.57716790
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00235904  0.00000000  0.00000041  0.43969742  0.00000000 -0.00000003  0.55376093 -0.00000049
                          -0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00264807  0.00000000 -0.00000000 -0.00000000  0.70728143  0.00000004 -0.00000005
                           0.00000000 -0.00000542 -0.00000000  0.00000000 -0.00000000 -0.00037514  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.46157011  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.70688748 -0.00000000  0.00000000  0.00149970 -0.00000000 -0.00000000  0.00068216 -0.00000000
                           0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.70685819  0.00000000  0.00000000 -0.00000000  0.00266129  0.00000000 -0.00000000
                          -0.00000000  0.00144616 -0.00000000  0.00000000 -0.00000000 -0.00000141  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00019257  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00107675 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00084705  0.00000000 -0.00000000  0.00000000  0.00000000  0.00106334

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00107453  0.00000000 -0.00000000 -0.00084712 -0.00000000  0.00000000 -0.00106329  0.00000000

   4    1  |1 0>           0.00000000 -0.00000258 -0.00000000  0.00000000 -0.00000000 -0.00000076  0.00000000  0.00000000
                           0.00000000  0.00126027 -0.00000000  0.00000000  0.00000000 -0.00143193 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000063 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00005333 -0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000
                          -0.00000000 -0.02606465 -0.00000000  0.00000000 -0.00000000 -0.00006355 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.67560476 -0.00000062 -0.00000000  0.00000003  0.00000048  0.54186931

   8    1  |1 0>           0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00134560  0.00000000  0.00000062  0.67556716 -0.00000001  0.00000003 -0.54191588  0.00000048

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.57763799  0.00000000 -0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000018  0.00000000  0.00000000
                           0.00000000  0.00000027  0.00000000 -0.00000000  0.00000000 -0.00033437  0.00000000  0.00000000

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000380 -0.00000000  0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.18980739 -0.00000018  0.00000000 -0.00000001 -0.00000019 -0.21812847

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00124207 -0.00000000  0.00000018  0.18983240  0.00000000 -0.00000001  0.21810754 -0.00000019

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000038  0.00000000 -0.00125685  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00016950

  16    1  |1 0>           0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.70683632  0.00000000 -0.00000000 -0.00125717  0.00000000 -0.00000000  0.00016909 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00082155 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00107678

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00107773  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000219 -0.00000000  0.00000000 -0.00000000 -0.00000044  0.00000000  0.00000000
                          -0.00000000 -0.00107217 -0.00000000  0.00000000  0.00000000 -0.00083591 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00060432  0.00000000  0.00000000  0.00073104  0.00000000 -0.00000000  0.00092552 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00107604 -0.00000000 -0.00000000 -0.00123198  0.00000000 -0.00000000  0.00055403 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.02606852  0.00000000 -0.00000000 -0.00003176  0.00000000  0.00000000 -0.00000510  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.34658890  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000185  0.00000000  0.00000000  0.00000000 -0.00000554 -0.00000000  0.00000000
                          -0.00000000  0.00090487 -0.00000000  0.00000000 -0.00000000 -0.01044074 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.56050641 -0.00000052  0.00000000 -0.00000001 -0.00000012 -0.13779341

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000374 -0.00000000  0.00000001  0.00691043  0.00000000 -0.00000003  0.57716721 -0.00000051

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.43966966  0.00000041 -0.00000000  0.00000004  0.00000049  0.55379045

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.46156419  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000542  0.00000000 -0.00000000  0.00000000  0.00037487 -0.00000000 -0.00000000
                          -0.00000000 -0.00264782  0.00000000 -0.00000000 -0.00000000  0.70675905  0.00000004 -0.00000004

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000038  0.00000000 -0.00149936  0.00000000 -0.00000000  0.00000000  0.00000000  0.00068166

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00019279  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00144616  0.00000000 -0.00000000  0.00000000  0.00000141 -0.00000000 -0.00000000
                           0.00000000  0.70685812  0.00000000 -0.00000000 -0.00000000  0.00266072  0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>           0.00000000  0.00000725  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000723 -0.00000000 -0.00000000  0.00000000 -0.00002497 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000437  0.00000000  0.00000000 -0.00000000  0.00004178  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00001866  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00002615  0.00000000
                           0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000822  0.00000000 -0.00000000 -0.00000317
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000822  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00002412 -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000517  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00107365 -0.00000000 -0.00000152  0.00000000 -0.00000000  0.00000000  0.00000100 -0.00000000
                          -0.00000049  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000187  0.00000000  0.00000000 -0.00000000  0.00000211  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000032 -0.00000000 -0.00000000 -0.00000584
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000673 -0.00000000  0.00000000 -0.00000221
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00001014  0.00000000 -0.00000000  0.00001910
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.36013763 -0.00000000  0.70712355  0.00000000  0.00000001 -0.00000000  0.12520482 -0.00000000
                           0.00016357 -0.00000000  0.00136646  0.00000000  0.00000000 -0.00000000 -0.00010772  0.00000000

   8    1  |1 1>+         -0.00000000  0.69059079  0.00000000  0.00000000 -0.00000000  0.14079359  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.65432908 -0.00000086 -0.00000000 -0.00000000 -0.00000010
                          -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000066  0.50507863  0.00000000 -0.00000001 -0.41667616
                          -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.19403098  0.00000025  0.00000001 -0.00000000  0.00000255
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

  12    1  |1 1>+         -0.45064349 -0.00000000  0.01104892  0.00000000  0.00000001 -0.00000001  0.51955919 -0.00000000
                          -0.00020467  0.00000000  0.00002135  0.00000000 -0.00000000 -0.00000000 -0.00044699 -0.00000000

  13    1  |1 1>+         -0.00000000 -0.09417999 -0.00000000 -0.00000001  0.00000001 -0.51543260 -0.00000001 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00072254  0.00000000  0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00049405 -0.00000000 -0.00086448 -0.00000000 -0.00000000 -0.00000000  0.00016552  0.00000000
                          -0.00000022  0.00000000 -0.00000167  0.00000000 -0.00000000 -0.00000000 -0.00000014 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00064839 -0.00000000 -0.00000000  0.00000000 -0.00025839 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000305  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000199  0.00000000  0.00000000  0.00000037

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000199  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000083  0.00000000  0.00000297  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

   5    1  |1 0>           0.00000049 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00107668 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000518  0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000004  0.00000000  0.00001181  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000062 -0.47651527 -0.00000000  0.00000001  0.15092352

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.47622354  0.00000063  0.00000000  0.00000000 -0.00000068

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00053233  0.00000000  0.00000000 -0.00000001  0.65445885  0.00000001 -0.00000000

  10    1  |1 0>          -0.00026236 -0.00000000 -0.00000099 -0.00000000  0.00000000  0.00000000  0.00056314  0.00000000
                           0.57766033 -0.00000000  0.00051467  0.00000000  0.00000001 -0.00000001  0.65457318 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.17001016 -0.00000000 -0.00000000  0.00000000  0.00032558 -0.00000001 -0.00000001

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000031  0.22915729  0.00000001 -0.00000000  0.69509009

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.23050611 -0.00000030 -0.00000001  0.00000000 -0.00000313

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00055112 -0.00000000 -0.00000000  0.00000000  0.00000059 -0.00000000 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00083608  0.00000000 -0.00000000  0.00136025

  16    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00083871 -0.00000000 -0.00000000  0.00000000 -0.00000001

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000519 -0.00000000  0.00000000  0.00000519

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000189 -0.00000000  0.00000000  0.00000000  0.00000211  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000049 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00107269  0.00000000 -0.00000151 -0.00000000 -0.00000000 -0.00000000 -0.00000101 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000032  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000674 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00001018 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.69035874 -0.00000000 -0.00000000 -0.00000000  0.14183149  0.00000000 -0.00000000

   8    1  |1 1>-          0.00016358  0.00000000 -0.00136608  0.00000000 -0.00000000 -0.00000000 -0.00010867 -0.00000000
                          -0.36015755 -0.00000000  0.70692558  0.00000000  0.00000000  0.00000000 -0.12630790 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000086  0.65429127  0.00000001 -0.00000001  0.02132760

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.50426410  0.00000066 -0.00000000  0.00000000 -0.00000188

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000026  0.19291818  0.00000001 -0.00000000  0.56568013

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.09335102 -0.00000000 -0.00000000  0.00000000 -0.51582323 -0.00000000  0.00000001

  13    1  |1 1>-         -0.00020504  0.00000000 -0.00001980  0.00000000 -0.00000000 -0.00000000 -0.00044700 -0.00000000
                           0.45145571  0.00000000  0.01024379 -0.00000000 -0.00000001  0.00000001 -0.51957816  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00071945  0.00000000 -0.00000000  0.00145050

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00064810 -0.00000000  0.00000000 -0.00000000 -0.00026000  0.00000000  0.00000000

  16    1  |1 1>-         -0.00000023 -0.00000000  0.00000167  0.00000000  0.00000000 -0.00000000 -0.00000014  0.00000000
                           0.00049715  0.00000000 -0.00086467 -0.00000000 -0.00000000  0.00000000 -0.00016410  0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55

   1    1  |0 0>          -0.00000000 -0.00000903  0.00000035  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00001595 -0.03758603  0.00000000 -0.00000000 -0.02248697  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000951 -0.02248493  0.00000000  0.00000000  0.03758946  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.04381436
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000039

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000020 -0.04381626  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000317 -0.00000000  0.00000000  0.04381627 -0.00000020 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00003317  0.00000207  0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000521 -0.00000000 -0.00000000 -0.00062965  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00062849
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

   3    1  |1 1>+          0.00000000 -0.00000235  0.00109055 -0.00000000  0.00000000  0.00062908 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00108613  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00062810 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000173 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00040332
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.15220886 -0.00010640  0.00000000  0.00000000  0.00107197  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.02004264  0.00000000 -0.00000000 -0.00052379  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000188 -0.00000001 -0.00000000  0.00000000  0.00057256 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.56530254 -0.00000000 -0.00000000 -0.00020115  0.00000000  0.00000000  0.00000000
                          -0.00000006  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00060735
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

  13    1  |1 1>+         -0.00000001  0.45350159  0.00107333 -0.00000000  0.00000000 -0.00058281 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00144920 -0.00000000  0.00000000  0.70640047 -0.00000328 -0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000003  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.70642628
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000626

  16    1  |1 1>+         -0.00000000  0.00075000 -0.40798478  0.00000000  0.00000000  0.70635889  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000021  0.00000000  0.00000000  0.00126017  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00062947  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000038 -0.00000000 -0.00000000 -0.00062947  0.00000000  0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00125617

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000068  0.00000000 -0.00000000  0.00000000  0.00025280 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.15184204 -0.00000000  0.00000000  0.00025281 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00016509  0.00000021 -0.00000000 -0.00000000 -0.00082535 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00076519

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.73658384 -0.00158261  0.00000000 -0.00000000 -0.00000009  0.00000000

  12    1  |1 0>           0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000313  0.00000000 -0.00000000  0.00000000  0.00023228 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.69464388  0.00000000  0.00000000  0.00023251 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00102668  0.81569661 -0.00000000  0.00000000  0.00013422 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000004  0.00000000  0.00000000
                           0.00000001  0.00000000 -0.00000000  0.00000328  0.70645264 -0.00000000  0.00000000

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000003 -0.00000000 -0.00000000
                           0.00135838  0.00000000  0.00000000  0.70645268 -0.00000328 -0.00000000 -0.00000001

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00062965  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000236 -0.00109076  0.00000000 -0.00000000  0.00062873  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00062848

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000584  0.00000000 -0.00000000 -0.00108614  0.00000001  0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000220  0.00000000 -0.00000000 -0.00062810  0.00000000  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00001908  0.00000000 -0.00000000 -0.00000173  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.15228996  0.00010599  0.00000000  0.00000000  0.00107207  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00040339

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000009 -0.00000000  0.00000000 -0.00000000 -0.00052392  0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.41766165 -0.00000000 -0.00000000 -0.00057262  0.00000000  0.00000000  0.00000000

  11    1  |1 1>-          0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000255  0.00000000 -0.00000000  0.00000000  0.00020095 -0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.45323127 -0.00107338  0.00000000 -0.00000000 -0.00058323  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001
                           0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00060737

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000004 -0.00000000 -0.00000000
                           0.00000001  0.00000000  0.00000000 -0.00000328 -0.70640050  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00075006  0.40775235  0.00000000  0.00000001  0.70649305 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000626
                           0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.70642635


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1 -24985.14369132     -0.00016754      -36.77      0.00000000        0.00      0.0000
   2   1 -24985.07510805      0.06841573    15015.52      0.06858327    15052.29      1.8662
   3   1 -24985.07510800      0.06841578    15015.53      0.06858332    15052.30      1.8662
   4   1 -24985.07510800      0.06841578    15015.53      0.06858332    15052.30      1.8662
   5   1 -24985.07415042      0.06937336    15225.69      0.06954090    15262.46      1.8923
   6   1 -24985.07415042      0.06937336    15225.69      0.06954090    15262.46      1.8923
   7   1 -24985.07415042      0.06937337    15225.69      0.06954090    15262.46      1.8923
   8   1 -24985.07415032      0.06937347    15225.72      0.06954100    15262.49      1.8923
   9   1 -24985.07415031      0.06937347    15225.72      0.06954101    15262.49      1.8923
  10   1 -24985.07223946      0.07128432    15645.10      0.07145186    15681.87      1.9443
  11   1 -24985.07223943      0.07128435    15645.11      0.07145189    15681.88      1.9443
  12   1 -24985.07223943      0.07128435    15645.11      0.07145189    15681.88      1.9443
  13   1 -24985.07223935      0.07128443    15645.12      0.07145197    15681.89      1.9443
  14   1 -24985.07223934      0.07128445    15645.13      0.07145198    15681.90      1.9443
  15   1 -24985.07223934      0.07128445    15645.13      0.07145198    15681.90      1.9443
  16   1 -24985.07223926      0.07128452    15645.14      0.07145206    15681.91      1.9443
  17   1 -24985.06004220      0.08348158    18322.09      0.08364912    18358.86      2.2762
  18   1 -24985.06004213      0.08348165    18322.11      0.08364919    18358.88      2.2762
  19   1 -24985.06004176      0.08348203    18322.19      0.08364956    18358.96      2.2762
  20   1 -24985.06004175      0.08348203    18322.19      0.08364957    18358.96      2.2762
  21   1 -24985.06004175      0.08348204    18322.19      0.08364958    18358.96      2.2762
  22   1 -24985.02207326      0.12145052    26655.31      0.12161806    26692.08      3.3094
  23   1 -24985.02207326      0.12145052    26655.31      0.12161806    26692.08      3.3094
  24   1 -24985.02207326      0.12145052    26655.31      0.12161806    26692.08      3.3094
  25   1 -24985.01733626      0.12618753    27694.96      0.12635507    27731.73      3.4383
  26   1 -24985.00234603      0.14117775    30984.93      0.14134529    31021.71      3.8462
  27   1 -24984.99886182      0.14466196    31749.63      0.14482950    31786.40      3.9410
  28   1 -24984.99886153      0.14466226    31749.70      0.14482980    31786.47      3.9410
  29   1 -24984.99886133      0.14466246    31749.74      0.14483000    31786.51      3.9410
  30   1 -24984.99886132      0.14466246    31749.74      0.14483000    31786.51      3.9410
  31   1 -24984.99886128      0.14466250    31749.75      0.14483004    31786.52      3.9410
  32   1 -24984.99815945      0.14536433    31903.78      0.14553187    31940.55      3.9601
  33   1 -24984.99815945      0.14536434    31903.78      0.14553187    31940.55      3.9601
  34   1 -24984.99815907      0.14536471    31903.87      0.14553225    31940.64      3.9601
  35   1 -24984.99704635      0.14647743    32148.08      0.14664497    32184.85      3.9904
  36   1 -24984.99704635      0.14647743    32148.08      0.14664497    32184.85      3.9904
  37   1 -24984.99704596      0.14647782    32148.17      0.14664536    32184.94      3.9904
  38   1 -24984.99704584      0.14647794    32148.19      0.14664548    32184.96      3.9904
  39   1 -24984.99704581      0.14647797    32148.20      0.14664551    32184.97      3.9904
  40   1 -24984.99704581      0.14647797    32148.20      0.14664551    32184.97      3.9904
  41   1 -24984.99704537      0.14647842    32148.30      0.14664596    32185.07      3.9904
  42   1 -24984.99462442      0.14889936    32679.63      0.14906690    32716.40      4.0563
  43   1 -24984.99462436      0.14889942    32679.65      0.14906696    32716.42      4.0563
  44   1 -24984.99462362      0.14890016    32679.81      0.14906770    32716.58      4.0563
  45   1 -24984.99462362      0.14890016    32679.81      0.14906770    32716.58      4.0563
  46   1 -24984.99462347      0.14890031    32679.84      0.14906785    32716.61      4.0563
  47   1 -24984.99462342      0.14890037    32679.85      0.14906791    32716.62      4.0563
  48   1 -24984.99462333      0.14890045    32679.87      0.14906799    32716.64      4.0563
  49   1 -24984.99462333      0.14890045    32679.87      0.14906799    32716.64      4.0563
  50   1 -24984.99462326      0.14890052    32679.89      0.14906806    32716.66      4.0563
  51   1 -24984.98862056      0.15490322    33997.33      0.15507076    34034.10      4.2197
  52   1 -24984.98862034      0.15490344    33997.38      0.15507098    34034.15      4.2197
  53   1 -24984.98862034      0.15490344    33997.38      0.15507098    34034.15      4.2197
  54   1 -24984.98862011      0.15490368    33997.43      0.15507121    34034.20      4.2197
  55   1 -24984.98862003      0.15490375    33997.44      0.15507129    34034.21      4.2197

 E0 = -24985.14352378 is the energy of the lowest zeroth-order state
 E1 = -24985.14369132 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99940522  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000007  0.00000000  0.00000000  0.00000000 -0.05934678  0.00000007  0.00000004  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000004 -0.00000000 -0.00000000 -0.00000000  0.09933031 -0.00000011 -0.00000006  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.11583694
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00004195

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000175  0.00000013  0.11583506  0.00000049  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000172  0.00000000 -0.00000007  0.00000049 -0.11583501 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00063418  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.00000001 -0.54775860  0.00001844  0.00000024 -0.00000172  0.40554615  0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.54775143 -0.00000001  0.00000001 -0.00000001  0.00000000  0.00000001 -0.40554014
                               -0.00000000  0.00000141 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00014686

 10  1     3    1  |1 1>+      -0.00000078 -0.00000000  0.00000000  0.00000000  0.40523293 -0.00000044 -0.00000025 -0.00000006
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000  0.00001065  0.31622058  0.00000078  0.70229932  0.00000298  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000001  0.00000001  0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000001  0.00001844  0.54764107 -0.00000045 -0.40548336 -0.00000172 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00002314 -0.00000000 -0.00000007 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000000 -0.00000418 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00065045
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000024

 15  1     8    1  |1 1>+       0.00001414 -0.00000000 -0.00000000  0.00000000  0.00064602 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00000798 -0.00000000  0.00000000 -0.00000000  0.00052693  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000568 -0.00000000 -0.00052565 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00000461  0.00000000 -0.00000000  0.00000000 -0.00042248 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1    12    1  |1 1>+      -0.00000000 -0.00000153 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00016911
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000006

 20  1    13    1  |1 1>+      -0.00002427  0.00000000  0.00000000  0.00000000 -0.00014964  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00138499 -0.00000005  0.00000000 -0.00000002  0.00466582  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000 -0.00139501 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00467486
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000169

 23  1    16    1  |1 1>+       0.01990621 -0.00000000 -0.00000000  0.00000000 -0.00467411  0.00000001  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.00000000 -0.00000000  0.81098182 -0.00000090 -0.00000048 -0.00000001

 25  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000001  0.00001844  0.54776868  0.00000045  0.40549791  0.00000172  0.00000000

 26  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001  0.54776862 -0.00001844  0.00000024 -0.00000172  0.40549793  0.00000001

 27  1     4    1  |1 0>        0.00000000  0.00000163 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.63240250  0.00000002 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000337

 28  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00029366
                                0.00000000 -0.00000264 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000002  0.81093226

 29  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00002293 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000099  0.00000000  0.00001474  0.00000000  0.00000000

 31  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000099 -0.00000000  0.00000000 -0.00000000  0.00001476  0.00000000

 32  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00053313  0.00000000  0.00000000  0.00000000

 33  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000019
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00053055

 34  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00003198 -0.00000000 -0.00000000  0.00000000  0.00000027 -0.00000000  0.00000000  0.00000000

 35  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000618 -0.00000000 -0.00067583 -0.00000000 -0.00000000

 36  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000618 -0.00000000 -0.00000000  0.00000000 -0.00067583 -0.00000000

 37  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.01990679 -0.00000000 -0.00000000  0.00000000  0.00000212 -0.00000000  0.00000000  0.00000000

 38  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000005 -0.00138565  0.00000001  0.00468289  0.00000002  0.00000000

 39  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00138564  0.00000005  0.00000000 -0.00000002  0.00468290  0.00000000

 40  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000001 -0.00001844 -0.54775856  0.00000045  0.40554618  0.00000172  0.00000000

 41  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000080 -0.00000000  0.00000000 -0.00000000  0.40578488 -0.00000046 -0.00000024  0.00000005

 42  1     3    1  |1 1>-       0.00000000 -0.00000141  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00014686
                                0.00000000 -0.54775136 -0.00000001  0.00000001  0.00000001 -0.00000000 -0.00000001  0.40554018

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001  0.00000000
                               -0.00000000 -0.00000001  0.31621600 -0.00001065  0.00000042 -0.00000298  0.70230274  0.00000001

 44  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001 -0.54764373  0.00001844  0.00000024 -0.00000172  0.40547747  0.00000001

 45  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00002313 -0.00000000 -0.00000000  0.00000000 -0.00000007 -0.00000000

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00001414  0.00000000  0.00000000 -0.00000000  0.00064603 -0.00000000 -0.00000000 -0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000024
                               -0.00000000 -0.00000419 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00065045

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000799  0.00000000  0.00052695  0.00000000  0.00000000

 49  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000568 -0.00000000  0.00000000 -0.00000000  0.00052564  0.00000000

 50  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000462  0.00000000  0.00042248  0.00000000  0.00000000

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00002426 -0.00000000 -0.00000000  0.00000000 -0.00014921  0.00000000  0.00000000  0.00000000

 52  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000006
                                0.00000000 -0.00000153 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00016912

 53  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000005 -0.00138499 -0.00000001 -0.00466582 -0.00000002 -0.00000000

 54  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01990621  0.00000000 -0.00000000 -0.00000000 -0.00467199  0.00000001  0.00000000  0.00000000

 55  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000169
                               -0.00000000 -0.00139502 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00467485


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000117 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.09931262  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00001109
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.05933619 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001849
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00001722 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00001325 -0.00000000  0.00000000 -0.00000000  0.00001326  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00001327  0.00000000 -0.00001332 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000002 -0.00000076 -0.15555116 -0.00000007  0.71347647  0.00000798  0.00000001
                               -0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000000 -0.00000005 -0.00000005 -0.00000000

  9  1     2    1  |1 1>+      -0.00000003  0.44742352  0.00000001 -0.00000001 -0.57712165 -0.00000005  0.00000001  0.00000000
                                0.00000000 -0.00000106 -0.00000000  0.00000000 -0.00000054 -0.00000000  0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.70250228 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000001 -0.57733972
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000001  0.00000001 -0.56435351  0.00000274 -0.00000001  0.00000319 -0.28557773 -0.00000000
                                0.00000000 -0.00000000 -0.00000002 -0.00000003  0.00000000  0.00000002  0.00000002  0.00000000

 12  1     5    1  |1 1>+       0.00000000  0.00000000 -0.48220323  0.00000232  0.00000000 -0.00000614  0.54854904  0.00000001
                               -0.00000000 -0.00000000 -0.00000002 -0.00000002 -0.00000000 -0.00000004 -0.00000005 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000029 -0.00000000 -0.00000000 -0.00000000  0.00000013 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000 -0.00002015  0.00000000  0.00000000 -0.00066792 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000441  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00064709
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00000000  0.00000000  0.00000001  0.00105140  0.00000000 -0.00019746 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00046215  0.00000000 -0.00000000  0.00000001 -0.00096230 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 18  1    11    1  |1 1>+      -0.00000000  0.00000000  0.00000001  0.00117637 -0.00000000  0.00059375  0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00000000  0.00131210  0.00000000 -0.00000000  0.00084252  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00057498  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00086094
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00001049 -0.00000000  0.00000541  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000 -0.00000734 -0.00000000  0.00000000  0.00000168 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.00269502  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000004
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 24  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00031867  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000001  0.57736839

 25  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000002 -0.00000003  0.00000000  0.00000002  0.00000003  0.00000000
                               -0.00000000 -0.00000001  0.65157279 -0.00000316  0.00000001 -0.00000369  0.32973567  0.00000000

 26  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000003 -0.00000004 -0.00000000  0.00000002  0.00000002  0.00000000
                                0.00000000  0.00000001  0.00000315  0.65192585 -0.00000003  0.32903716  0.00000370  0.00000001

 27  1     4    1  |1 0>       -0.00000000  0.00000184 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.77463755  0.00000001 -0.00000002  0.00032945  0.00000001  0.00000000 -0.00000001

 28  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000054  0.00000000 -0.00000000 -0.00000000
                                0.00000007  0.00024415  0.00000001  0.00000000 -0.57742113 -0.00000006  0.00000001  0.00000001

 29  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000037  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00071802 -0.00000000 -0.00000000  0.00000002 -0.00144129 -0.00000000

 31  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00071647  0.00000000 -0.00144207 -0.00000002 -0.00000000

 32  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000021  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00107820

 33  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000046  0.00000000  0.00000000 -0.00107362 -0.00000000  0.00000000  0.00000000

 34  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00069651  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 35  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00048623 -0.00000000  0.00000000 -0.00000000  0.00022019  0.00000000

 36  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00048647 -0.00000000  0.00021964  0.00000000  0.00000000

 37  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00539586  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 38  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000627  0.00000000 -0.00000000  0.00000000 -0.00000056 -0.00000000

 39  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000628  0.00000000 -0.00000055 -0.00000000 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000001  0.00000001  0.00000000  0.00000005  0.00000006  0.00000000
                               -0.00000000 -0.00000000 -0.15631573  0.00000074  0.00000001 -0.00000799  0.71330936  0.00000001

 41  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.70218363 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000001 -0.57733969

 42  1     3    1  |1 1>-       0.00000000  0.00000106 -0.00000000 -0.00000000 -0.00000054 -0.00000000  0.00000000  0.00000000
                                0.00000003  0.44692881 -0.00000000 -0.00000002  0.57750487  0.00000006 -0.00000000 -0.00000001

 43  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000003  0.00000003  0.00000000 -0.00000002 -0.00000002 -0.00000000
                                0.00000000 -0.00000001 -0.00000273 -0.56465521  0.00000002 -0.28497728 -0.00000320 -0.00000001

 44  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000002 -0.00000003  0.00000000 -0.00000004 -0.00000004 -0.00000000
                                0.00000000  0.00000002  0.00000233  0.48161973  0.00000006 -0.54906318 -0.00000614 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000028  0.00000000  0.00000013  0.00000000 -0.00000000

 46  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000492  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00064710

 47  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00002074 -0.00000000 -0.00000000  0.00066791  0.00000000 -0.00000000 -0.00000000

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00105158 -0.00000001  0.00000000  0.00000000 -0.00019634 -0.00000000

 49  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00046318 -0.00000000  0.00096181  0.00000001  0.00000000

 50  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00117574  0.00000001 -0.00000000  0.00000001 -0.00059500 -0.00000000

 51  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00057510  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00086093

 52  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00131281  0.00000000 -0.00000000 -0.00084138 -0.00000000  0.00000000 -0.00000000

 53  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00001048  0.00000000 -0.00000000  0.00000000 -0.00000543 -0.00000000

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00269869 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000004

 55  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000734  0.00000000  0.00000000 -0.00000169 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.84436574 -0.52126679 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.52126796  0.84436371  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000001  0.00000014  0.99228975  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000123 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.99228988  0.00000009  0.00000001 -0.00000000  0.00000008  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000009  0.99228989 -0.00000014 -0.00000008 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000021 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.04737250 -0.00000001  0.00004070  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.04737600  0.00000000  0.00000000 -0.00004040
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.08124832 -0.04847457 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000 -0.08201446 -0.00000001 -0.00000000  0.00000000 -0.00002282  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.04735674  0.00000000  0.00000000  0.00000000 -0.00004065 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000021 -0.00000000  0.00000000 -0.00005227  0.99966016  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00297784  0.00000000 -0.00000000  0.00001455
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00009700 -0.00306739 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00246296 -0.00000000  0.00000017  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00246094  0.00000000  0.00000000  0.00000000 -0.00000026  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1    11    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00185843  0.00000000 -0.00003183 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 19  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00085973  0.00000000  0.00000000 -0.00002422
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1    13    1  |1 1>+       0.00276418  0.00074526  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.03064611  0.00000000  0.01843505  0.00000096  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.03064205 -0.00000000 -0.00000000  0.01843049
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000  0.00000000 -0.00000001

 23  1    16    1  |1 1>+      -0.01811202 -0.03037798 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00133660 -0.09459249 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 25  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.04737437 -0.00000000 -0.00000000  0.00000000 -0.00004095 -0.00000000

 26  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.04737436 -0.00000001 -0.00004094 -0.00000000 -0.00000000

 27  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000040 -0.00000000 -0.00000000  0.00004756

 28  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000012 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000001  0.09470470  0.00000000 -0.00000000 -0.00000000

 29  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000036
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.99966026

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00002168 -0.00000000 -0.00000000  0.00000000 -0.00001444 -0.00000000

 31  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00002173 -0.00000000 -0.00001445 -0.00000000 -0.00000000

 32  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00003478  0.00246331  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 33  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00245460  0.00000000 -0.00000000 -0.00000000

 34  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00340467  0.00004809 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 35  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00307626  0.00000000  0.00000000 -0.00000000  0.00002413  0.00000000

 36  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00307627  0.00000000  0.00002413  0.00000000  0.00000000

 37  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.03536280 -0.00049967  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 38  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.03064396  0.00000000  0.00000000  0.00000096 -0.01843126 -0.00000000

 39  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.03064396  0.00000000 -0.01843126 -0.00000096 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.04737245 -0.00000000 -0.00000000 -0.00000000  0.00004070  0.00000000

 41  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.08258546 -0.04615961 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000001  0.04737599  0.00000000  0.00000000 -0.00004041

 43  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000001  0.08201479 -0.00000001 -0.00002282 -0.00000000 -0.00000000

 44  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.04735601 -0.00000001  0.00004065  0.00000000  0.00000000

 45  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000021 -0.00000000  0.99966016  0.00005227  0.00000000

 46  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00001024 -0.00306890 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 47  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00297781 -0.00000000 -0.00000000  0.00001455

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00246297 -0.00000000 -0.00000000 -0.00000000  0.00000017  0.00000000

 49  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00246095 -0.00000000  0.00000027  0.00000000 -0.00000000

 50  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00185840 -0.00000000 -0.00000000 -0.00000000  0.00003183  0.00000000

 51  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00274201  0.00082309  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 52  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00085979  0.00000000  0.00000000 -0.00002422

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.03064610 -0.00000000 -0.00000000  0.00000096 -0.01843505 -0.00000000

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.01724648 -0.03087761 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 55  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.03064205 -0.00000000 -0.00000000  0.01843049


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00605167 -0.03394962 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000238 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000064 -0.00000212 -0.00250179 -0.00000000  0.00000000  0.00000000  0.00421462 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000039 -0.00000129  0.00417344 -0.00000000  0.00000000  0.00000000  0.00252637  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00481259  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000099 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00481261  0.00000001  0.00000000  0.00000218
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00481262 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.98754040  0.15736443  0.00000006  0.00000000  0.00000000 -0.00000000 -0.00000894  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00067658 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00068175 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000014  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000017  0.00000097 -0.00068148 -0.00000000  0.00000000  0.00000000  0.00117751 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00117785 -0.00000000 -0.00000000  0.00060434
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00067772  0.00000000  0.00000000  0.00107605
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000039  0.00000000 -0.00000000  0.02606852
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.59537440 -0.00000001  0.00000000  0.00000001 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00012306  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00006969  0.00051137  0.59990751 -0.00000000  0.00000000  0.00000001  0.00864999  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+      -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000111 -0.48814015  0.00000002 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1    10    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000001  0.48795361 -0.00000111 -0.00000002  0.00000542
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000086  0.37787438 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.16309086 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00003371  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1    13    1  |1 1>+       0.00011650 -0.00087149 -0.14462434  0.00000001 -0.00000002 -0.00000002 -0.53462225 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00063867  0.00000000  0.00000038
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00089217 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000018  0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    16    1  |1 1>+      -0.09078547  0.56980948 -0.00146298  0.00000000 -0.00000000 -0.00000000 -0.00110889  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000000 -0.00136087  0.00000000 -0.00000000 -0.00000000 -0.00000144  0.00000000

 25  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00068293 -0.00000000 -0.00000000  0.00107453

 26  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00068293 -0.00000000 -0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000028  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00135805  0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00931000  0.00000002  0.00000000  0.00134558

 31  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00931999  0.00000000 -0.00000000

 32  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000015 -0.48786187  0.00000000 -0.00000000 -0.00000001 -0.00051228 -0.00000000

 33  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00010080  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.48768195  0.00000001 -0.00000000 -0.00000001  0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00015241 -0.00110067 -0.00068990 -0.00000001  0.00000003  0.00000002  0.65461775  0.00000000

 35  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000002  0.61702352 -0.00000140 -0.00000002 -0.00124095

 36  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000140  0.61702331 -0.00000002  0.00000000

 37  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.09079249  0.56983758 -0.00000181 -0.00000000  0.00000000  0.00000000  0.00183212  0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00050743  0.00000000  0.00000000  0.70683636

 39  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00050583  0.00000000 -0.00000038

 40  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00067658 -0.00000000 -0.00000000 -0.00107508

 41  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000015 -0.00000097 -0.00067897  0.00000000 -0.00000000 -0.00000000 -0.00117894 -0.00000000

 42  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000014  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00068174  0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00117784 -0.00000000 -0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00067770 -0.00000000  0.00000000

 45  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000033  0.00000000 -0.00000001

 46  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00006964 -0.00051150  0.59992210 -0.00000000  0.00000000  0.00000001 -0.00737052  0.00000000

 47  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00012306  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.59537167  0.00000001 -0.00000000 -0.00000001  0.00000000

 48  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000001 -0.48814513  0.00000111  0.00000002  0.00042516

 49  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000111 -0.48795381  0.00000002 -0.00000000

 50  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000001 -0.37786812  0.00000086  0.00000001 -0.00235931

 51  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00011652  0.00087171 -0.14576635 -0.00000001  0.00000002  0.00000002  0.53431500  0.00000000

 52  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00003371  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.16310127  0.00000000 -0.00000000 -0.00000000  0.00000000

 53  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00063704 -0.00000000 -0.00000000  0.70688745

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.09078549 -0.56980953 -0.00146552 -0.00000000  0.00000000  0.00000000  0.00110567 -0.00000000

 55  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000018  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00089128  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000419  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000702 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000409 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00002267
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000220  0.00000000 -0.00000000 -0.00000410 -0.00000000  0.00000000 -0.00002267  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00107508 -0.00000000  0.00000000  0.00082148 -0.00000000  0.00000000 -0.00107683  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     2    1  |1 1>+      -0.00000000 -0.00107217 -0.00000000  0.00000000  0.00000000 -0.00083466 -0.00000000  0.00000000
                                0.00000000 -0.00000219  0.00000000 -0.00000000  0.00000000  0.00000044 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00107773  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000  0.00073099 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00092556
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00123200 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00055396
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000001  0.00000000 -0.00003175  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000509
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00090405  0.00000000 -0.00000000  0.00000000 -0.01084533  0.00000000  0.00000000
                               -0.00000000  0.00000185  0.00000000 -0.00000000  0.00000000  0.00000575 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.34658110  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     9    1  |1 1>+      -0.00042655  0.00000000  0.00000052  0.56052103 -0.00000000 -0.00000001  0.13776493 -0.00000012
                               -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00687377  0.00000001 -0.00000000  0.00000004  0.00000051  0.57716790
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+      -0.00235904  0.00000000  0.00000041  0.43969742  0.00000000 -0.00000003  0.55376093 -0.00000049
                               -0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+      -0.00000000 -0.00264807  0.00000000 -0.00000000 -0.00000000  0.70728143  0.00000004 -0.00000005
                                0.00000000 -0.00000542 -0.00000000  0.00000000 -0.00000000 -0.00037514  0.00000000  0.00000000

 20  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.46157011  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1    14    1  |1 1>+       0.70688748 -0.00000000  0.00000000  0.00149970 -0.00000000 -0.00000000  0.00068216 -0.00000000
                                0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    15    1  |1 1>+       0.00000000  0.70685819  0.00000000  0.00000000 -0.00000000  0.00266129  0.00000000 -0.00000000
                               -0.00000000  0.00144616 -0.00000000  0.00000000 -0.00000000 -0.00000141  0.00000000  0.00000000

 23  1    16    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00019257  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00107675 -0.00000000  0.00000000 -0.00000000

 25  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00084705  0.00000000 -0.00000000  0.00000000  0.00000000  0.00106334

 26  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00107453  0.00000000 -0.00000000 -0.00084712 -0.00000000  0.00000000 -0.00106329  0.00000000

 27  1     4    1  |1 0>        0.00000000 -0.00000258 -0.00000000  0.00000000 -0.00000000 -0.00000076  0.00000000  0.00000000
                                0.00000000  0.00126027 -0.00000000  0.00000000  0.00000000 -0.00143193 -0.00000000  0.00000000

 28  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000063 -0.00000000 -0.00000000

 29  1     6    1  |1 0>       -0.00000000  0.00005333 -0.00000000  0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000
                               -0.00000000 -0.02606465 -0.00000000  0.00000000 -0.00000000 -0.00006355 -0.00000000  0.00000000

 30  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.67560476 -0.00000062 -0.00000000  0.00000003  0.00000048  0.54186931

 31  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00134560  0.00000000  0.00000062  0.67556716 -0.00000001  0.00000003 -0.54191588  0.00000048

 32  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.57763799  0.00000000 -0.00000000  0.00000000

 33  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000018  0.00000000  0.00000000
                                0.00000000  0.00000027  0.00000000 -0.00000000  0.00000000 -0.00033437  0.00000000  0.00000000

 34  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000380 -0.00000000  0.00000000 -0.00000000

 35  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.18980739 -0.00000018  0.00000000 -0.00000001 -0.00000019 -0.21812847

 36  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00124207 -0.00000000  0.00000018  0.18983240  0.00000000 -0.00000001  0.21810754 -0.00000019

 37  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000038  0.00000000 -0.00125685  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00016950

 39  1    16    1  |1 0>        0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.70683632  0.00000000 -0.00000000 -0.00125717  0.00000000 -0.00000000  0.00016909 -0.00000000

 40  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00082155 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00107678

 41  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00107773  0.00000000 -0.00000000  0.00000000

 42  1     3    1  |1 1>-      -0.00000000  0.00000219 -0.00000000  0.00000000 -0.00000000 -0.00000044  0.00000000  0.00000000
                               -0.00000000 -0.00107217 -0.00000000  0.00000000  0.00000000 -0.00083591 -0.00000000  0.00000000

 43  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00060432  0.00000000  0.00000000  0.00073104  0.00000000 -0.00000000  0.00092552 -0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00107604 -0.00000000 -0.00000000 -0.00123198  0.00000000 -0.00000000  0.00055403 -0.00000000

 45  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.02606852  0.00000000 -0.00000000 -0.00003176  0.00000000  0.00000000 -0.00000510  0.00000000

 46  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.34658890  0.00000000 -0.00000000  0.00000000

 47  1     8    1  |1 1>-       0.00000000 -0.00000185  0.00000000  0.00000000  0.00000000 -0.00000554 -0.00000000  0.00000000
                               -0.00000000  0.00090487 -0.00000000  0.00000000 -0.00000000 -0.01044074 -0.00000000 -0.00000000

 48  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.56050641 -0.00000052  0.00000000 -0.00000001 -0.00000012 -0.13779341

 49  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000374 -0.00000000  0.00000001  0.00691043  0.00000000 -0.00000003  0.57716721 -0.00000051

 50  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.43966966  0.00000041 -0.00000000  0.00000004  0.00000049  0.55379045

 51  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.46156419  0.00000000 -0.00000000  0.00000000

 52  1    13    1  |1 1>-      -0.00000000  0.00000542  0.00000000 -0.00000000  0.00000000  0.00037487 -0.00000000 -0.00000000
                               -0.00000000 -0.00264782  0.00000000 -0.00000000 -0.00000000  0.70675905  0.00000004 -0.00000004

 53  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000038  0.00000000 -0.00149936  0.00000000 -0.00000000  0.00000000  0.00000000  0.00068166

 54  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00019279  0.00000000 -0.00000000  0.00000000

 55  1    16    1  |1 1>-       0.00000000 -0.00144616  0.00000000 -0.00000000  0.00000000  0.00000141 -0.00000000 -0.00000000
                                0.00000000  0.70685812  0.00000000 -0.00000000 -0.00000000  0.00266072  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>        0.00000000  0.00000725  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000723 -0.00000000 -0.00000000  0.00000000 -0.00002497 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000437  0.00000000  0.00000000 -0.00000000  0.00004178  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00001866  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00002615  0.00000000
                                0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000822  0.00000000 -0.00000000 -0.00000317
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000822  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00002412 -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000517  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00107365 -0.00000000 -0.00000152  0.00000000 -0.00000000  0.00000000  0.00000100 -0.00000000
                               -0.00000049  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000187  0.00000000  0.00000000 -0.00000000  0.00000211  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000032 -0.00000000 -0.00000000 -0.00000584
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000673 -0.00000000  0.00000000 -0.00000221
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00001014  0.00000000 -0.00000000  0.00001910
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.36013763 -0.00000000  0.70712355  0.00000000  0.00000001 -0.00000000  0.12520482 -0.00000000
                                0.00016357 -0.00000000  0.00136646  0.00000000  0.00000000 -0.00000000 -0.00010772  0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.69059079  0.00000000  0.00000000 -0.00000000  0.14079359  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.65432908 -0.00000086 -0.00000000 -0.00000000 -0.00000010
                               -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000

 17  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000066  0.50507863  0.00000000 -0.00000001 -0.41667616
                               -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000

 18  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.19403098  0.00000025  0.00000001 -0.00000000  0.00000255
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

 19  1    12    1  |1 1>+      -0.45064349 -0.00000000  0.01104892  0.00000000  0.00000001 -0.00000001  0.51955919 -0.00000000
                               -0.00020467  0.00000000  0.00002135  0.00000000 -0.00000000 -0.00000000 -0.00044699 -0.00000000

 20  1    13    1  |1 1>+      -0.00000000 -0.09417999 -0.00000000 -0.00000001  0.00000001 -0.51543260 -0.00000001 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 21  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00072254  0.00000000  0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 22  1    15    1  |1 1>+      -0.00049405 -0.00000000 -0.00086448 -0.00000000 -0.00000000 -0.00000000  0.00016552  0.00000000
                               -0.00000022  0.00000000 -0.00000167  0.00000000 -0.00000000 -0.00000000 -0.00000014 -0.00000000

 23  1    16    1  |1 1>+      -0.00000000 -0.00064839 -0.00000000 -0.00000000  0.00000000 -0.00025839 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000305  0.00000000  0.00000000

 25  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000199  0.00000000  0.00000000  0.00000037

 26  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000199  0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000083  0.00000000  0.00000297  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

 28  1     5    1  |1 0>        0.00000049 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00107668 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000518  0.00000000

 29  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000004  0.00000000  0.00001181  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

 30  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000062 -0.47651527 -0.00000000  0.00000001  0.15092352

 31  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.47622354  0.00000063  0.00000000  0.00000000 -0.00000068

 32  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00053233  0.00000000  0.00000000 -0.00000001  0.65445885  0.00000001 -0.00000000

 33  1    10    1  |1 0>       -0.00026236 -0.00000000 -0.00000099 -0.00000000  0.00000000  0.00000000  0.00056314  0.00000000
                                0.57766033 -0.00000000  0.00051467  0.00000000  0.00000001 -0.00000001  0.65457318 -0.00000000

 34  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.17001016 -0.00000000 -0.00000000  0.00000000  0.00032558 -0.00000001 -0.00000001

 35  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000031  0.22915729  0.00000001 -0.00000000  0.69509009

 36  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.23050611 -0.00000030 -0.00000001  0.00000000 -0.00000313

 37  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00055112 -0.00000000 -0.00000000  0.00000000  0.00000059 -0.00000000 -0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00083608  0.00000000 -0.00000000  0.00136025

 39  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00083871 -0.00000000 -0.00000000  0.00000000 -0.00000001

 40  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000519 -0.00000000  0.00000000  0.00000519

 41  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000189 -0.00000000  0.00000000  0.00000000  0.00000211  0.00000000 -0.00000000

 42  1     3    1  |1 1>-      -0.00000049 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00107269  0.00000000 -0.00000151 -0.00000000 -0.00000000 -0.00000000 -0.00000101 -0.00000000

 43  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000032  0.00000000  0.00000000 -0.00000000  0.00000000

 44  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000674 -0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00001018 -0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.69035874 -0.00000000 -0.00000000 -0.00000000  0.14183149  0.00000000 -0.00000000

 47  1     8    1  |1 1>-       0.00016358  0.00000000 -0.00136608  0.00000000 -0.00000000 -0.00000000 -0.00010867 -0.00000000
                               -0.36015755 -0.00000000  0.70692558  0.00000000  0.00000000  0.00000000 -0.12630790 -0.00000000

 48  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000001  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000086  0.65429127  0.00000001 -0.00000001  0.02132760

 49  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.50426410  0.00000066 -0.00000000  0.00000000 -0.00000188

 50  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000026  0.19291818  0.00000001 -0.00000000  0.56568013

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.09335102 -0.00000000 -0.00000000  0.00000000 -0.51582323 -0.00000000  0.00000001

 52  1    13    1  |1 1>-      -0.00020504  0.00000000 -0.00001980  0.00000000 -0.00000000 -0.00000000 -0.00044700 -0.00000000
                                0.45145571  0.00000000  0.01024379 -0.00000000 -0.00000001  0.00000001 -0.51957816  0.00000000

 53  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00071945  0.00000000 -0.00000000  0.00145050

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00064810 -0.00000000  0.00000000 -0.00000000 -0.00026000  0.00000000  0.00000000

 55  1    16    1  |1 1>-      -0.00000023 -0.00000000  0.00000167  0.00000000  0.00000000 -0.00000000 -0.00000014  0.00000000
                                0.00049715  0.00000000 -0.00086467 -0.00000000 -0.00000000  0.00000000 -0.00016410  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55

  1  1     1    1  |0 0>       -0.00000000 -0.00000903  0.00000035  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00001595 -0.03758603  0.00000000 -0.00000000 -0.02248697  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000951 -0.02248493  0.00000000  0.00000000  0.03758946  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.04381436
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000039

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000020 -0.04381626  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000317 -0.00000000  0.00000000  0.04381627 -0.00000020 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00003317  0.00000207  0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000521 -0.00000000 -0.00000000 -0.00062965  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00062849
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

 10  1     3    1  |1 1>+       0.00000000 -0.00000235  0.00109055 -0.00000000  0.00000000  0.00062908 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00108613  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00062810 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000173 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00040332
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.15220886 -0.00010640  0.00000000  0.00000000  0.00107197  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.02004264  0.00000000 -0.00000000 -0.00052379  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1    10    1  |1 1>+      -0.00000188 -0.00000001 -0.00000000  0.00000000  0.00057256 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1    11    1  |1 1>+      -0.56530254 -0.00000000 -0.00000000 -0.00020115  0.00000000  0.00000000  0.00000000
                               -0.00000006  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1    12    1  |1 1>+      -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00060735
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

 20  1    13    1  |1 1>+      -0.00000001  0.45350159  0.00107333 -0.00000000  0.00000000 -0.00058281 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1    14    1  |1 1>+      -0.00144920 -0.00000000  0.00000000  0.70640047 -0.00000328 -0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000003  0.00000000  0.00000000

 22  1    15    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.70642628
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000626

 23  1    16    1  |1 1>+      -0.00000000  0.00075000 -0.40798478  0.00000000  0.00000000  0.70635889  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 24  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000021  0.00000000  0.00000000  0.00126017  0.00000000

 25  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00062947  0.00000000 -0.00000000

 26  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000038 -0.00000000 -0.00000000 -0.00062947  0.00000000  0.00000000  0.00000000

 27  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

 28  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00125617

 29  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 30  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000068  0.00000000 -0.00000000  0.00000000  0.00025280 -0.00000000  0.00000000

 31  1     8    1  |1 0>       -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.15184204 -0.00000000  0.00000000  0.00025281 -0.00000000 -0.00000000 -0.00000000

 32  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00016509  0.00000021 -0.00000000 -0.00000000 -0.00082535 -0.00000000

 33  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00076519

 34  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.73658384 -0.00158261  0.00000000 -0.00000000 -0.00000009  0.00000000

 35  1    12    1  |1 0>        0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000313  0.00000000 -0.00000000  0.00000000  0.00023228 -0.00000000  0.00000000

 36  1    13    1  |1 0>       -0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.69464388  0.00000000  0.00000000  0.00023251 -0.00000000 -0.00000000 -0.00000000

 37  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00102668  0.81569661 -0.00000000  0.00000000  0.00013422 -0.00000000

 38  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000004  0.00000000  0.00000000
                                0.00000001  0.00000000 -0.00000000  0.00000328  0.70645264 -0.00000000  0.00000000

 39  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000003 -0.00000000 -0.00000000
                                0.00135838  0.00000000  0.00000000  0.70645268 -0.00000328 -0.00000000 -0.00000001

 40  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00062965  0.00000000 -0.00000000

 41  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000236 -0.00109076  0.00000000 -0.00000000  0.00062873  0.00000000

 42  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00062848

 43  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000584  0.00000000 -0.00000000 -0.00108614  0.00000001  0.00000000  0.00000000

 44  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000220  0.00000000 -0.00000000 -0.00062810  0.00000000  0.00000000  0.00000000

 45  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00001908  0.00000000 -0.00000000 -0.00000173  0.00000000 -0.00000000 -0.00000000

 46  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.15228996  0.00010599  0.00000000  0.00000000  0.00107207  0.00000000

 47  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00040339

 48  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000009 -0.00000000  0.00000000 -0.00000000 -0.00052392  0.00000000 -0.00000000

 49  1    10    1  |1 1>-      -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.41766165 -0.00000000 -0.00000000 -0.00057262  0.00000000  0.00000000  0.00000000

 50  1    11    1  |1 1>-       0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000255  0.00000000 -0.00000000  0.00000000  0.00020095 -0.00000000  0.00000000

 51  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.45323127 -0.00107338  0.00000000 -0.00000000 -0.00058323  0.00000000

 52  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001
                                0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00060737

 53  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000004 -0.00000000 -0.00000000
                                0.00000001  0.00000000  0.00000000 -0.00000328 -0.70640050  0.00000000 -0.00000000

 54  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00075006  0.40775235  0.00000000  0.00000001  0.70649305 -0.00000000

 55  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000626
                                0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.70642635



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.88%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.35%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.99%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.34%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.34%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.34%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%   16.45%    0.00%
  9  1     2    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.45%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.42%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%   10.00%    0.00%   49.32%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%   29.99%    0.00%   16.44%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.77%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%   30.01%    0.00%   16.44%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%   16.44%    0.00%
 27  1     4    1  |1 0>          0.00%   39.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   65.76%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%   16.45%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.47%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.45%
 43  1     4    1  |1 1>-         0.00%    0.00%   10.00%    0.00%    0.00%    0.00%   49.32%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%   29.99%    0.00%    0.00%    0.00%   16.44%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.35%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    2.42%    0.00%   50.90%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%   20.02%    0.00%    0.00%   33.31%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+        49.35%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 11  1     4    1  |1 1>+         0.00%    0.00%   31.85%    0.00%    0.00%    0.00%    8.16%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%   23.25%    0.00%    0.00%    0.00%   30.09%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%
 25  1     2    1  |1 0>          0.00%    0.00%   42.45%    0.00%    0.00%    0.00%   10.87%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%   42.50%    0.00%   10.83%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%   60.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.34%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    2.44%    0.00%    0.00%    0.00%   50.88%    0.00%
 41  1     2    1  |1 1>-        49.31%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 42  1     3    1  |1 1>-         0.00%   19.97%    0.00%    0.00%   33.35%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%   31.88%    0.00%    8.12%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%   23.20%    0.00%   30.15%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>         71.30%   27.17%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         27.17%   71.30%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.46%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%   98.46%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   98.46%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.22%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.22%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.66%    0.23%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.67%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.22%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.93%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.09%    0.00%    0.03%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.03%
 23  1    16    1  |1 1>+         0.03%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.22%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.22%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.90%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.93%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.09%    0.00%    0.00%    0.00%    0.03%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.09%    0.00%    0.03%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.22%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.68%    0.21%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.22%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.67%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.22%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   99.93%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.09%    0.00%    0.00%    0.00%    0.03%    0.00%
 54  1    15    1  |1 1>-         0.03%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.03%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>         97.52%    2.48%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%   35.45%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%   35.99%    0.00%    0.00%    0.00%    0.01%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   23.83%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   23.81%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   14.28%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    2.66%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    2.09%    0.00%    0.00%    0.00%   28.58%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.82%   32.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%   23.80%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%   23.78%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.85%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%   38.07%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   38.07%    0.00%    0.00%
 37  1    14    1  |1 0>          0.82%   32.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.96%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%   35.99%    0.00%    0.00%    0.00%    0.01%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%   35.45%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   23.83%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   23.81%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   14.28%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%    0.00%    2.12%    0.00%    0.00%    0.00%   28.55%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    2.66%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.97%
 54  1    15    1  |1 1>-         0.82%   32.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   12.01%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%   31.42%    0.00%    0.00%    1.90%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.31%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%   19.33%    0.00%    0.00%   30.67%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   50.02%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   21.30%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+        49.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%   49.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%   45.64%    0.00%    0.00%    0.00%    0.00%   29.36%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%   45.64%    0.00%    0.00%   29.37%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.37%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    3.60%    0.00%    0.00%    0.00%    0.00%    4.76%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    3.60%    0.00%    0.00%    4.76%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>         49.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   12.01%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%   31.42%    0.00%    0.00%    0.00%    0.00%    1.90%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.31%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%   19.33%    0.00%    0.00%    0.00%    0.00%   30.67%
 51  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   21.30%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   49.95%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%   49.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+        12.97%    0.00%   50.00%    0.00%    0.00%    0.00%    1.57%    0.00%
 15  1     8    1  |1 1>+         0.00%   47.69%    0.00%    0.00%    0.00%    1.98%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%   42.81%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   25.51%    0.00%    0.00%   17.36%
 18  1    11    1  |1 1>+         0.00%    0.00%    0.00%    3.76%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+        20.31%    0.00%    0.01%    0.00%    0.00%    0.00%   26.99%    0.00%
 20  1    13    1  |1 1>+         0.00%    0.89%    0.00%    0.00%    0.00%   26.57%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%   22.71%    0.00%    0.00%    2.28%
 31  1     8    1  |1 0>          0.00%    0.00%    0.00%   22.68%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.83%    0.00%    0.00%
 33  1    10    1  |1 0>         33.37%    0.00%    0.00%    0.00%    0.00%    0.00%   42.85%    0.00%
 34  1    11    1  |1 0>          0.00%    2.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    5.25%    0.00%    0.00%   48.32%
 36  1    13    1  |1 0>          0.00%    0.00%    0.00%    5.31%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%   47.66%    0.00%    0.00%    0.00%    2.01%    0.00%    0.00%
 47  1     8    1  |1 1>-        12.97%    0.00%   49.97%    0.00%    0.00%    0.00%    1.60%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   42.81%    0.00%    0.00%    0.05%
 49  1    10    1  |1 1>-         0.00%    0.00%    0.00%   25.43%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    3.72%    0.00%    0.00%   32.00%
 51  1    12    1  |1 1>-         0.00%    0.87%    0.00%    0.00%    0.00%   26.61%    0.00%    0.00%
 52  1    13    1  |1 1>-        20.38%    0.00%    0.01%    0.00%    0.00%    0.00%   27.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.14%    0.00%    0.00%    0.05%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.05%    0.00%    0.00%    0.14%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.19%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    2.32%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1    11    1  |1 1>+        31.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1    13    1  |1 1>+         0.00%   20.57%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1    14    1  |1 1>+         0.00%    0.00%    0.00%   49.90%    0.00%    0.00%    0.00%
 22  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.90%
 23  1    16    1  |1 1>+         0.00%    0.00%   16.65%    0.00%    0.00%   49.89%    0.00%
 24  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     8    1  |1 0>          2.31%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    11    1  |1 0>          0.00%   54.26%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    13    1  |1 0>         48.25%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1    14    1  |1 0>          0.00%    0.00%   66.54%    0.00%    0.00%    0.00%    0.00%
 38  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%   49.91%    0.00%    0.00%
 39  1    16    1  |1 0>          0.00%    0.00%    0.00%   49.91%    0.00%    0.00%    0.00%
 40  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     7    1  |1 1>-         0.00%    2.32%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    10    1  |1 1>-        17.44%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    12    1  |1 1>-         0.00%   20.54%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   49.90%    0.00%    0.00%
 54  1    15    1  |1 1>-         0.00%    0.00%   16.63%    0.00%    0.00%   49.91%    0.00%
 55  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.90%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      450.05       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      662.00       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     46920.12  33189.82    303.77  12285.27   1118.47      8.11      0.14     14.31
 REAL TIME  *     47262.43 SEC
 DISK USED  *       820.88 MB (local),        5.44 GB (total)
 SF USED    *         5.02 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy= -24984.988620031487

              CI              CI           MULTI         RHF-SCF
 -24984.96946278 -24984.99123417 -24984.64785396 -24984.77408070
 **********************************************************************************************************************************
 Molpro calculation terminated
