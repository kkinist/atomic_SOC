
 Working directory              : /wrk/irikura/molpro.fSf4y2nIK9/
 Global scratch directory       : /wrk/irikura/molpro.fSf4y2nIK9/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.fSf4y2nIK9/

 id        : nistki

 Nodes     nprocs
 comp-12      3
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Br SO-CI
                                                                                 ! active space (7/8)
 memory,3000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Br};
 
 basis=cc-pwCVTZ-X2C
 
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
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 08-Jul-24          TIME: 13:09:58  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    CC-PWCVTZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry BR     S cc-pwCVTZ-X2C        selected for orbital group  1
 Library entry BR     P cc-pwCVTZ-X2C        selected for orbital group  1
 Library entry BR     D cc-pwCVTZ-X2C        selected for orbital group  1
 Library entry BR     F cc-pwCVTZ-X2C        selected for orbital group  1
 Library entry BR     G cc-pwCVTZ-X2C        selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         178
 NUMBER OF SYMMETRY AOS:          152
 NUMBER OF CONTRACTIONS:           84   (   42Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     7.864 MB (compressed) written to integral file ( 15.8%)

     Node minimum: 2.097 MB, node maximum: 2.884 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1088115.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1088115      RECORD LENGTH: 524288

 Memory used in sort:       1.65 MW

 SORT1 READ     6107234. AND WROTE      213124. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      645328. AND WROTE     3262539. INTEGRALS IN     33 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC

 Node minimum:     1086911.  Node maximum:     1088115. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 7 8 910111213
                                       1415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.119E-03 0.342E-02 0.205E-01 0.418E-01 0.418E-01 0.418E-01 0.418E-01 0.418E-01
         2 0.360E-02 0.360E-02 0.360E-02 0.167E-01 0.167E-01 0.167E-01 0.839E-01 0.839E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.97       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.95      0.81
 REAL TIME  *         2.30 SEC
 DISK USED  *        29.31 MB (local),      103.69 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   9   9

 NELEC=   36   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2604.54113413   -2604.54113413     0.00D+00     0.20D+00     0     0       0.01      0.02    start
   2    -2604.58050659      -0.03937246     0.17D-01     0.29D-01     1     0       0.01      0.03    diag
   3    -2604.59608607      -0.01557947     0.13D-01     0.45D-02     2     0       0.00      0.03    diag
   4    -2604.59617298      -0.00008691     0.51D-03     0.86D-03     3     0       0.01      0.04    diag
   5    -2604.59617817      -0.00000519     0.15D-03     0.28D-03     4     0       0.01      0.05    diag
   6    -2604.59617826      -0.00000010     0.21D-04     0.38D-04     5     0       0.00      0.05    diag
   7    -2604.59617826      -0.00000000     0.10D-05     0.33D-05     6     0       0.01      0.06    diag
   8    -2604.59617827      -0.00000000     0.85D-07     0.44D-06     7     0       0.00      0.06    fixocc
   9    -2604.59617826       0.00000000     0.54D-08     0.21D-07     0     0       0.01      0.07    diag

 Final occupancy:   9   9

 !RHF STATE 1.1 Energy              -2604.596178265000
  RHF One-electron energy           -3635.148612346741
  RHF Two-electron energy            1030.552434081741
  RHF Kinetic energy                 2786.516587164786
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.934714040556

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -497.87939     1  1  s    0.99998
    2.1     2.00000   -66.74109     1  2  s    0.99983
    3.1     2.00000    -9.83911     1  3  s    0.99964
    4.1     2.00000    -2.79833     1  1  d1+ -0.44259    1  1  d1-  0.89645
    5.1     2.00000    -2.79833     1  1  d1+  0.89645    1  1  d1-  0.44261
    6.1     2.00000    -2.79833     1  1  d0   0.98959
    7.1     2.00000    -2.79833     1  1  d2- -0.26612    1  1  d2+  0.95390
    8.1     2.00000    -2.79833     1  1  d2-  0.96371    1  1  d2+  0.26334
    9.1     2.00000    -0.69886     1  4  s    0.89075
    1.2     2.00000   -58.63892     1  1  py   0.99996
    2.2     2.00000   -58.63892     1  1  pz   0.99996
    3.2     2.00000   -58.63892     1  1  px   0.99996
    4.2     2.00000    -7.19214     1  2  py   1.00013
    5.2     2.00000    -7.19214     1  2  pz   1.00013
    6.2     2.00000    -7.19214     1  2  px   1.00013
    7.2     2.00000    -0.12619     1  3  pz   0.83246
    8.2     2.00000    -0.12619     1  3  py   0.83246
    9.2     2.00000    -0.12619     1  3  px   0.83246


 HOMO      9.2    -0.126187 =      -3.4337eV
 LUMO     10.2     0.619351 =      16.8534eV
 LUMO-HOMO         0.745538 =      20.2871eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.97       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.44       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.02      0.07      0.81
 REAL TIME  *         2.42 SEC
 DISK USED  *        29.71 MB (local),      104.91 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         3.00000000                                  
 SETTING NTRIP          =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      62 (   32   30)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.334D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.335D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.131D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.302D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.240D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 2 5 3 1 1   2 3 5 4 6 3 5 6 4 2   1 2 4 6 3 5 7 91514  1112 81013 1 2 4 6 5
                                        3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.258D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.324D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.155D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.391D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.370D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.399D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.844D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.121D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.396D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.179D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.107D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.115D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 3 2 1 2   1 3 4 5 7 9 6 810 3   2 1 810 6 4 5 9 7 3   2 1 6 7 9 4 510 8 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  732  ( 52 closed/active, 436 closed/virtual, 0 active/active, 244 active/virtual )
 Total number of variables:    12880
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   46    0  -2604.15811104   -2604.17039129   -0.01228026    0.16048668 0.00243839 0.00196925  0.40E+00      0.75
   2    8   39    0  -2604.17098479   -2604.17131122   -0.00032643    0.04815888 0.00011401 0.00061307  0.13E+00      1.45
   3   12   47    0  -2604.17131239   -2604.17131244   -0.00000005    0.00008262 0.00000000 0.00000000  0.20E-02      2.30
   4    2    4    0  -2604.17131244   -2604.17131244    0.00000000    0.00000001 0.00000000 0.00000002  0.10E-06      2.52

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.61E-08)
                       Final energy:  -2604.17131244
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2604.525212198439
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.49158820
 One electron energy                         -3622.64236504
 Two electron energy                          1018.11715284
 Virial ratio                                    1.93469696
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2604.525212198431
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.49158820
 One electron energy                         -3622.64236504
 Two electron energy                          1018.11715284
 Virial ratio                                    1.93469696
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2604.525212198425
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.49158820
 One electron energy                         -3622.64236504
 Two electron energy                          1018.11715284
 Virial ratio                                    1.93469696
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2604.059397098905
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.48872060
 One electron energy                         -3617.74579530
 Two electron energy                          1013.68639820
 Virial ratio                                    1.93453075
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy             -2604.059397098867
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.48872060
 One electron energy                         -3617.74579530
 Two electron energy                          1013.68639820
 Virial ratio                                    1.93453075
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy             -2604.059397098856
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.48872060
 One electron energy                         -3617.74579530
 Two electron energy                          1013.68639820
 Virial ratio                                    1.93453075
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy             -2604.026121797193
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.60924242
 One electron energy                         -3618.06123602
 Two electron energy                          1014.03511422
 Virial ratio                                    1.93447839
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy             -2604.026121797166
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.60924242
 One electron energy                         -3618.06123601
 Two electron energy                          1014.03511422
 Virial ratio                                    1.93447839
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy             -2604.026121797152
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.60924242
 One electron energy                         -3618.06123602
 Two electron energy                          1014.03511422
 Virial ratio                                    1.93447839
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy             -2604.026121797141
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.60924242
 One electron energy                         -3618.06123602
 Two electron energy                          1014.03511422
 Virial ratio                                    1.93447839
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy             -2604.026121797102
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.60924242
 One electron energy                         -3618.06123601
 Two electron energy                          1014.03511422
 Virial ratio                                    1.93447839
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.000000008829
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999997208
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999993964
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999999988
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.000000200935
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999799077
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.000000095787
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.362124199300
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.999999784605
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000000123206
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     2.637875797102
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999993960
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999999798047
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.000000207993
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999989559
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999999799078
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.000000211363
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.000000001351
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     0.677342382673
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.000000128992
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     3.999999873736
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     3.322657613248
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999999997211
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.000000204746
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999798043
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000010453
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999999987
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999989560
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.999999902862
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.960533418028
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.000000086403
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000000003058
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.039466589650
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 3 5 2 1 1   5 3 4 6 2 5 3 4 6 2   1 4 6 3 5 2 7101315  14 911 812 1 2 4 6 3
                                        5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 1 3 2   1 3 4 5 7 9 610 8 3   2 1 810 6 7 9 4 5 3   2 1 6 7 9 4 510 8 2
                                        1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -498.33671     1  1  s    0.99998
    2.1     2.00000   -67.19758     1  2  s    0.99985
    3.1     2.00000   -10.29518     1  3  s    0.99992
    4.1     2.00000    -3.25346     1  1  d1+  1.00009
    5.1     2.00000    -3.25346     1  1  d1-  1.00009
    6.1     2.00000    -3.25346     1  1  d2-  1.00009
    7.1     2.00000    -3.25346     1  1  d2+  1.00009
    8.1     2.00000    -3.25346     1  1  d0   1.00009
    9.1     1.99227    -1.08727     1  4  s    1.03218
   10.1     0.00743     0.39895     1  3  s   -0.37328    1  4  s   -1.83733    1  5  s   -0.28418    1  6  s    2.33893
    1.2     2.00000   -59.09471     1  1  py   0.99996
    2.2     2.00000   -59.09471     1  1  pz   0.99996
    3.2     2.00000   -59.09471     1  1  px   0.99996
    4.2     2.00000    -7.64667     1  2  py   0.99993
    5.2     2.00000    -7.64667     1  2  pz   0.99993
    6.2     2.00000    -7.64667     1  2  px   0.99993
    7.2     1.42129    -0.41118     1  3  py   1.00676
    8.2     1.42129    -0.41118     1  3  px   1.00676
    9.2     1.42129    -0.41118     1  3  pz   1.00676
   10.2     0.24548     0.31082     1  2  py  -0.44986    1  3  py  -2.01000    1  4  py   0.56902    1  5  py   2.06594
   11.2     0.24548     0.31082     1  2  px  -0.44986    1  3  px  -2.01000    1  4  px   0.56902    1  5  px   2.06594
   12.2     0.24548     0.31082     1  2  pz  -0.44986    1  3  pz  -2.01000    1  4  pz   0.56902    1  5  pz   2.06594
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 2a2000      0.98881179      0.00005225      0.00007683
 20 22a000     -0.00005222      0.98881170     -0.00044437
 20 a22000     -0.00007685      0.00044436      0.98881170
 20 2aa00b      0.05602834      0.00000296      0.00000435
 20 aa2b00     -0.05602834     -0.00000296     -0.00000435
 20 2aa0b0      0.00000296     -0.05602833      0.00002518
 20 a2ab00      0.00000296     -0.05602833      0.00002518
 20 a2a00b     -0.00000435      0.00002518      0.05602833
 20 aa20b0     -0.00000435      0.00002518      0.05602833
 
 Energy:    -2604.52521220  -2604.52521220  -2604.52521220
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 aa200a     -0.00000000     -0.00000000     -0.00000000      0.00001478     -0.08081749     -0.00006107      0.00002755
 20 2aaa00     -0.00000000      0.00000000     -0.00000000     -0.00004680      0.74153795      0.00003891     -0.00001434
 20 a2aa00      0.69985322      0.00000248     -0.00007151      0.70461390      0.00004049     -0.00012313     -0.00002637
 20 2aa0a0      0.69985322      0.00000248     -0.00007151     -0.70461390     -0.00004049      0.00012313      0.00002637
 20 a2a00a      0.00007151     -0.00031370      0.69985315     -0.00002640     -0.00000293     -0.00014140     -0.70461389
 20 aa20a0      0.00007151     -0.00031370      0.69985315      0.00002640      0.00000293      0.00014140      0.70461389
 20 2aa00a      0.00000245     -0.69985315     -0.00031371      0.00012313     -0.00001358      0.70461388     -0.00014140
 20 aa2a00     -0.00000245      0.69985315      0.00031371      0.00012313     -0.00001358      0.70461388     -0.00014140
 20 a2a0a0     -0.00000000      0.00000000      0.00000000     -0.00003202      0.66072046     -0.00002216      0.00001321
 aa 22a000     -0.11515269     -0.00000041      0.00001177     -0.00000000     -0.00000000      0.00000000      0.00000000
 aa 2a2000      0.00000040     -0.11515268     -0.00005162      0.00000000      0.00000000      0.00000000     -0.00000000
 aa a22000      0.00001177     -0.00005162      0.11515268     -0.00000000      0.00000000     -0.00000000     -0.00000000
 
 Energy:    -2604.05939710  -2604.05939710  -2604.05939710  -2604.02612180  -2604.02612180  -2604.02612180  -2604.02612180

 State:              8
 20 aa200a      0.80959427
 20 2aaa00     -0.33480714
 20 a2aa00     -0.00000883
 20 2aa0a0      0.00000883
 20 a2a00a      0.00002368
 20 aa20a0     -0.00002368
 20 2aa00a      0.00005180
 20 aa2a00      0.00005180
 20 a2a0a0      0.47478713
 aa 22a000     -0.00000000
 aa 2a2000     -0.00000000
 aa a22000      0.00000000
 
 Energy:    -2604.02612180
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.37       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.68       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.26      2.24      0.07      0.81
 REAL TIME  *         5.26 SEC
 DISK USED  *        40.13 MB (local),      136.16 MB (total)
 SF USED    *        26.68 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2604.525212   2.0
    -2604.525212   2.0
    -2604.525212   2.0
    -2604.059397   2.0
    -2604.059397   2.0
    -2604.059397   2.0
    -2604.026122   6.0
    -2604.026122   6.0
    -2604.026122   6.0
    -2604.026122   6.0
    -2604.026122   6.0
                                                  


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
 Number of external orbitals:      62 (  32  30 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.05 sec, npass=  1  Memory used:   0.73 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2604.52521220
     2     -2604.52521220
     3     -2604.52521220

 Number of blocks in overlap matrix:   340   Smallest eigenvalue:  0.52D-06
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      15533800
 Number of doubly external configurations:        834771
 Total number of contracted configurations:     16507871
 Total number of uncontracted configurations:  408892166

 Diagonal Coupling coefficients finished.               Storage:  64533711 words, CPU-Time:    248.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4725608 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.52521220    -0.00000000    -0.95482753  0.28D-01  0.60D-01   286.53
    1     2     2     1.00000000     0.00000000 -2604.52521220     0.00000000    -0.95475713  0.28D-01  0.60D-01   286.53
    1     3     3     1.00000000     0.00000000 -2604.52521220    -0.00000000    -0.95488176  0.28D-01  0.60D-01   286.53
    2     1     1     1.06147819    -0.79899316 -2605.32420536    -0.79899316    -0.01561406  0.16D-02  0.82D-03  2293.33
    2     2     2     1.06151298    -0.79897017 -2605.32418237    -0.79897017    -0.01564054  0.16D-02  0.82D-03  2293.33
    2     3     3     1.06153651    -0.79895604 -2605.32416824    -0.79895604    -0.01565379  0.16D-02  0.82D-03  2293.33
    3     1     1     1.05926364    -0.81342153 -2605.33863373    -0.01442838    -0.00039972  0.20D-04  0.48D-04  4296.72
    3     2     2     1.05926240    -0.81342075 -2605.33863295    -0.01445058    -0.00040008  0.20D-04  0.48D-04  4296.72
    3     3     3     1.05926326    -0.81342073 -2605.33863293    -0.01446469    -0.00040009  0.20D-04  0.48D-04  4296.72
    4     1     1     1.06017163    -0.81385349 -2605.33906569    -0.00043196    -0.00002783  0.12D-05  0.39D-05  6300.04
    4     2     2     1.06017138    -0.81385337 -2605.33906556    -0.00043261    -0.00002792  0.12D-05  0.40D-05  6300.04
    4     3     3     1.06017190    -0.81385335 -2605.33906555    -0.00043262    -0.00002793  0.12D-05  0.40D-05  6300.04
    5     1     1     1.06057457    -0.81388629 -2605.33909849    -0.00003280    -0.00000197  0.11D-06  0.21D-06  8295.41
    5     2     2     1.06057475    -0.81388629 -2605.33909849    -0.00003292    -0.00000197  0.11D-06  0.21D-06  8295.41
    5     3     3     1.06057489    -0.81388629 -2605.33909849    -0.00003294    -0.00000197  0.11D-06  0.21D-06  8295.41
    6     1     1     1.06058981    -0.81388845 -2605.33910065    -0.00000216    -0.00000011  0.70D-08  0.11D-07 10292.81
    6     2     2     1.06058980    -0.81388845 -2605.33910065    -0.00000216    -0.00000011  0.70D-08  0.11D-07 10292.81
    6     3     3     1.06058990    -0.81388845 -2605.33910065    -0.00000216    -0.00000011  0.69D-08  0.11D-07 10292.81
    7     1     1     1.06059319    -0.81388856 -2605.33910076    -0.00000011    -0.00000001  0.33D-09  0.80D-09 12294.18
    7     2     2     1.06059319    -0.81388856 -2605.33910076    -0.00000011    -0.00000001  0.33D-09  0.80D-09 12294.18
    7     3     3     1.06059322    -0.81388856 -2605.33910076    -0.00000011    -0.00000001  0.33D-09  0.80D-09 12294.18


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.9%
 S   0.3%  36.3%
 P   0.3%  53.0%   6.9%

 Initialization:   2.0%
 Other:            0.2%

 Total CPU:    12294.2 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222022222/000           0.0000000  -0.0000000   0.9626016
 222222202222/2000           0.7805225   0.5633706  -0.0000000
 22222220222/22000          -0.5633706   0.7805225   0.0000000
 22222220222/2/\00          -0.0000000   0.0000000  -0.0559621
 222222202222//0\0           0.0000000   0.0000000  -0.0559621

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.787090    0.000000   -0.568111
 2           0.568111   -0.000000    0.787090
 3          -0.000000    0.970701    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970701    0.000000   -0.000000
 2           0.000000    0.970701   -0.000000
 3          -0.000000   -0.000000    0.970701

 Energy contributions of internal configurations for state 3
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 30093       0.00000763    -1.17021529       22222220222221000               


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.78708955 (fixed)   0.97096434 (relaxed)   0.97070061 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00064622   -0.00084885   -1.10902234
 Singles      0.01331878   -0.07145281   -0.07754091
 Pairs        0.04731356    0.43401994    0.37267469
 Total        1.06127857    0.36171828   -0.81388856
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.52521220
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.78386727
 One electron energy                -3621.61931852
 Two electron energy                 1016.28021777
 Virial quotient                       -0.93489098
 Correlation energy                    -0.81388856
 !MRCI STATE 1.2 Energy             -2605.339100756008

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.38897468 (Davidson, fixed reference)
 Cluster corrected energies         -2605.38850553 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.38897468 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38726341 (Pople, fixed reference)
 Cluster corrected energies         -2605.38678652 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38726341 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.78708955 (fixed)   0.97096434 (relaxed)   0.97070061 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00064622   -0.00084885   -0.13346946
 Singles      0.01331879   -0.07145281   -0.07754092
 Pairs        0.04731356   -0.60131342   -0.60287818
 Total        1.06127857   -0.67361508   -0.81388856
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.52521220
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.78386686
 One electron energy                -3621.61931827
 Two electron energy                 1016.28021751
 Virial quotient                       -0.93489098
 Correlation energy                    -0.81388856
 !MRCI STATE 2.2 Energy             -2605.339100755987

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.38897468 (Davidson, fixed reference)
 Cluster corrected energies         -2605.38850553 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.38897468 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38726342 (Pople, fixed reference)
 Cluster corrected energies         -2605.38678652 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38726342 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97070060 (fixed)   0.97096432 (relaxed)   0.97070060 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00064622   -0.00084885   -0.70006283
 Singles      0.01331879   -0.07145281   -0.07754092
 Pairs        0.04731359    0.00000000   -0.03628481
 Total        1.06127860   -0.07230166   -0.81388856
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.52521220
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.78387024
 One electron energy                -3621.61932049
 Two electron energy                 1016.28021974
 Virial quotient                       -0.93489098
 Correlation energy                    -0.81388856
 !MRCI STATE 3.2 Energy             -2605.339100755851

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.38897470 (Davidson, fixed reference)
 Cluster corrected energies         -2605.38850555 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.38897470 (Davidson, rotated reference)

 Cluster corrected energies         -2605.38726344 (Pople, fixed reference)
 Cluster corrected energies         -2605.38678654 (Pople, relaxed reference)
 Cluster corrected energies         -2605.38726344 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.37       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      385.90       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     12546.47  12543.20      2.24      0.07      0.81
 REAL TIME  *     12608.84 SEC
 DISK USED  *       425.36 MB (local),        1.26 GB (total)
 SF USED    *         4.19 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2605.38897468  AU                              
 SETTING HLSDIAG(2)     =     -2605.38897468  AU                              
 SETTING HLSDIAG(3)     =     -2605.38897470  AU                              


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
 Number of external orbitals:      62 (  32  30 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2604.05939710
     2     -2604.05939710
     3     -2604.05939710
     4     -2604.02612180
     5     -2604.02612180
     6     -2604.02612180
     7     -2604.02612180
     8     -2604.02612180

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2309D-06

 Number of blocks in overlap matrix:   742   Smallest eigenvalue:  0.23D-06
 Number of N-2 electron functions:    2258
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      14059088
 Number of doubly external configurations:       2172434
 Total number of contracted configurations:     16345974
 Total number of uncontracted configurations:  382087878

 Diagonal Coupling coefficients finished.               Storage:  86460451 words, CPU-Time:   1256.94 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   7459296 words, CPU-time:      0.12 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.05939710    -0.00000000    -0.94584321  0.35D-01  0.56D-01  1352.68
    1     2     2     1.00000000     0.00000000 -2604.05939710    -0.00000000    -0.94614222  0.35D-01  0.56D-01  1352.68
    1     3     3     1.00000000     0.00000000 -2604.05939710     0.00000000    -0.94622878  0.35D-01  0.56D-01  1352.68
    1     4     4     1.00000000     0.00000000 -2604.02612180     0.00000000    -0.95984132  0.44D-01  0.57D-01  1352.68
    1     5     5     1.00000000     0.00000000 -2604.02612180     0.00000000    -0.96021731  0.44D-01  0.57D-01  1352.68
    1     6     6     1.00000000     0.00000000 -2604.02612180    -0.00000000    -0.96007850  0.45D-01  0.57D-01  1352.68
    1     7     7     1.00000000     0.00000000 -2604.02612180     0.00000000    -0.96022417  0.45D-01  0.57D-01  1352.68
    1     8     8     1.00000000     0.00000000 -2604.02612180    -0.00000000    -0.96139552  0.44D-01  0.58D-01  1352.68
    2     1     1     1.06251640    -0.78533440 -2604.84473150    -0.78533440    -0.01638653  0.19D-02  0.93D-03  7084.00
    2     2     2     1.06264942    -0.78525024 -2604.84464734    -0.78525024    -0.01648267  0.19D-02  0.94D-03  7084.00
    2     3     3     1.06268062    -0.78523657 -2604.84463367    -0.78523657    -0.01650969  0.19D-02  0.94D-03  7084.00
    2     4     4     1.06842165    -0.79024554 -2604.81636734    -0.79024554    -0.01902322  0.29D-02  0.11D-02  7084.00
    2     5     5     1.06838249    -0.79007405 -2604.81619584    -0.79007405    -0.01916050  0.30D-02  0.10D-02  7084.00
    2     6     6     1.06882687    -0.79005783 -2604.81617962    -0.79005783    -0.01928101  0.30D-02  0.11D-02  7084.00
    2     7     7     1.06852504    -0.78990877 -2604.81603057    -0.78990877    -0.01934247  0.31D-02  0.11D-02  7084.00
    2     8     8     1.06858703    -0.78989409 -2604.81601589    -0.78989409    -0.01937309  0.31D-02  0.11D-02  7084.00
    3     1     1     1.05643265    -0.80063009 -2604.86002719    -0.01529569    -0.00040788  0.20D-04  0.49D-04 12800.25
    3     2     2     1.05643041    -0.80062835 -2604.86002545    -0.01537811    -0.00040875  0.20D-04  0.49D-04 12800.25
    3     3     3     1.05642765    -0.80062710 -2604.86002420    -0.01539053    -0.00040948  0.20D-04  0.49D-04 12800.25
    3     4     4     1.05930096    -0.80781938 -2604.83394118    -0.01757385    -0.00043388  0.28D-04  0.51D-04 12800.25
    3     5     5     1.05926383    -0.80780980 -2604.83393160    -0.01773576    -0.00043901  0.28D-04  0.51D-04 12800.25
    3     6     6     1.05919215    -0.80778136 -2604.83390316    -0.01772354    -0.00045776  0.29D-04  0.54D-04 12800.25
    3     7     7     1.05918398    -0.80777679 -2604.83389859    -0.01786802    -0.00046213  0.30D-04  0.55D-04 12800.25
    3     8     8     1.05917028    -0.80777122 -2604.83389301    -0.01787712    -0.00046490  0.30D-04  0.55D-04 12800.25
    4     1     1     1.05688448    -0.80107436 -2604.86047145    -0.00044426    -0.00003092  0.15D-05  0.42D-05 18498.82
    4     2     2     1.05688149    -0.80107420 -2604.86047130    -0.00044585    -0.00003118  0.15D-05  0.42D-05 18498.82
    4     3     3     1.05688074    -0.80107382 -2604.86047092    -0.00044672    -0.00003133  0.15D-05  0.43D-05 18498.82
    4     4     4     1.05967394    -0.80828321 -2604.83440501    -0.00046383    -0.00002725  0.13D-05  0.39D-05 18498.82
    4     5     5     1.05965888    -0.80828204 -2604.83440384    -0.00047224    -0.00002850  0.14D-05  0.40D-05 18498.82
    4     6     6     1.05962726    -0.80827803 -2604.83439983    -0.00049667    -0.00003169  0.16D-05  0.45D-05 18498.82
    4     7     7     1.05962602    -0.80827753 -2604.83439933    -0.00050074    -0.00003178  0.16D-05  0.45D-05 18498.82
    4     8     8     1.05962004    -0.80827656 -2604.83439836    -0.00050535    -0.00003252  0.16D-05  0.46D-05 18498.82
    5     1     1     1.05726776    -0.80111089 -2604.86050799    -0.00003653    -0.00000235  0.14D-06  0.24D-06 24187.65
    5     2     2     1.05726793    -0.80111077 -2604.86050787    -0.00003658    -0.00000234  0.14D-06  0.24D-06 24187.65
    5     3     3     1.05726812    -0.80111075 -2604.86050785    -0.00003693    -0.00000238  0.14D-06  0.25D-06 24187.65
    5     4     4     1.05999891    -0.80831583 -2604.83443763    -0.00003262    -0.00000244  0.16D-06  0.26D-06 24187.65
    5     5     5     1.05999914    -0.80831572 -2604.83443752    -0.00003368    -0.00000212  0.13D-06  0.23D-06 24187.65
    5     6     6     1.05999780    -0.80831549 -2604.83443728    -0.00003746    -0.00000252  0.16D-06  0.27D-06 24187.65
    5     7     7     1.05999766    -0.80831548 -2604.83443728    -0.00003795    -0.00000245  0.16D-06  0.26D-06 24187.65
    5     8     8     1.05999811    -0.80831527 -2604.83443707    -0.00003871    -0.00000199  0.12D-06  0.22D-06 24187.65
    6     1     1     1.05728352    -0.80111348 -2604.86051058    -0.00000259    -0.00000012  0.75D-08  0.13D-07 29877.80
    6     2     2     1.05728331    -0.80111337 -2604.86051047    -0.00000260    -0.00000012  0.78D-08  0.13D-07 29877.80
    6     3     3     1.05728329    -0.80111336 -2604.86051046    -0.00000261    -0.00000012  0.78D-08  0.13D-07 29877.80
    6     4     4     1.06001980    -0.80831852 -2604.83444032    -0.00000269    -0.00000014  0.13D-07  0.15D-07 29877.80
    6     5     5     1.06001908    -0.80831826 -2604.83444006    -0.00000254    -0.00000014  0.13D-07  0.16D-07 29877.80
    6     6     6     1.06001924    -0.80831818 -2604.83443997    -0.00000269    -0.00000014  0.13D-07  0.15D-07 29877.80
    6     7     7     1.06002075    -0.80831806 -2604.83443986    -0.00000258    -0.00000012  0.11D-07  0.13D-07 29877.80
    6     8     8     1.06002013    -0.80831747 -2604.83443927    -0.00000220    -0.00000011  0.10D-07  0.12D-07 29877.80
    7     1     1     1.05729146    -0.80111361 -2604.86051071    -0.00000013    -0.00000001  0.43D-09  0.12D-08 35561.38
    7     2     2     1.05729137    -0.80111350 -2604.86051060    -0.00000013    -0.00000001  0.44D-09  0.12D-08 35561.38
    7     3     3     1.05729139    -0.80111349 -2604.86051059    -0.00000013    -0.00000001  0.43D-09  0.11D-08 35561.38
    7     4     4     1.06003133    -0.80831867 -2604.83444047    -0.00000015    -0.00000001  0.79D-09  0.14D-08 35561.38
    7     5     5     1.06003095    -0.80831841 -2604.83444021    -0.00000015    -0.00000001  0.81D-09  0.14D-08 35561.38
    7     6     6     1.06003094    -0.80831833 -2604.83444012    -0.00000015    -0.00000001  0.79D-09  0.13D-08 35561.38
    7     7     7     1.06003172    -0.80831819 -2604.83443999    -0.00000013    -0.00000001  0.69D-09  0.13D-08 35561.38
    7     8     8     1.06003124    -0.80831759 -2604.83443939    -0.00000012    -0.00000001  0.63D-09  0.12D-08 35561.38


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.2%  32.6%
 P   0.3%  50.3%  11.9%

 Initialization:   3.5%
 Other:            0.3%

 Total CPU:    35561.4 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222//200/           0.0000000  -0.0000000  -0.0000000   0.0000617   0.0001063   0.0000076  -0.0859418   0.7852334
 222222202222///00          -0.0000000  -0.0000000   0.0000000  -0.0001359   0.0021180  -0.0002420   0.7229988  -0.3181897
 22222220222/2/00/           0.0017837   0.0062076   0.6810620  -0.0014112   0.0004035  -0.6840921  -0.0002390  -0.0000194
 222222202222//0/0           0.6810906   0.0004193  -0.0017876   0.6840915  -0.0001029  -0.0014113   0.0001101  -0.0000417
 22222220222/2//00           0.6810912   0.0004193  -0.0017876  -0.6840912   0.0001029   0.0014113  -0.0001101   0.0000416
 22222220222//20/0           0.0017837   0.0062076   0.6810636   0.0014112  -0.0004035   0.6840905   0.0002390   0.0000195
 222222202222//00/           0.0004356  -0.6810641   0.0062064   0.0001041   0.6840903   0.0004040  -0.0021481  -0.0003277
 22222220222//2/00          -0.0004356   0.6810660  -0.0062065   0.0001041   0.6840884   0.0004040  -0.0021481  -0.0003277
 22222220222/2/0/0           0.0000000  -0.0000000   0.0000000  -0.0000742   0.0022243  -0.0002343   0.6370582   0.4670433
 222222//22222/000          -0.1046022  -0.0000644   0.0002745  -0.0000004  -0.0000000   0.0000000  -0.0000000   0.0000000
 222222//2222/2000           0.0000669  -0.1045974   0.0009532  -0.0000000   0.0000002  -0.0000000  -0.0000000   0.0000000
 222222//222/22000           0.0002739   0.0009534   0.1045971   0.0000000  -0.0000000  -0.0000001  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.972317   -0.000622    0.002546   -0.000000    0.000000   -0.000000    0.000000    0.000000
 2           0.000599    0.972280    0.008862   -0.000000   -0.000000    0.000001    0.000000   -0.000000
 3          -0.002552   -0.008860    0.972276   -0.000000    0.000000   -0.000000    0.000001   -0.000000
 4           0.000000    0.000000    0.000000    0.971084   -0.000156    0.000148    0.002003    0.000061
 5           0.000000   -0.000001    0.000000   -0.000146    0.003054    0.971082   -0.000573    0.000436
 6          -0.000000   -0.000000   -0.000001   -0.002003   -0.000337    0.000574    0.971084   -0.000024
 7          -0.000000    0.000000   -0.000000    0.000156    0.971038   -0.003049    0.000339   -0.009145
 8          -0.000000    0.000000    0.000000   -0.000059    0.009143   -0.000465    0.000028    0.971043

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.972320    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.972320   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.972320    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.971087   -0.000000   -0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.971087    0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.971087    0.000000    0.000000
 7           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.971086    0.000000
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.971087


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97231663 (fixed)   0.97248534 (relaxed)   0.97232017 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042996   -0.00077276   -0.68321681
 Singles      0.01591984   -0.07878816   -0.08654398
 Pairs        0.04139625   -0.00000001   -0.03135282
 Total        1.05774605   -0.07956093   -0.80111361
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.05939710
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.93042429
 One electron energy                -3616.88697874
 Two electron energy                 1012.02646803
 Virial quotient                       -0.93467009
 Correlation energy                    -0.80111361
 !MRCI STATE 1.2 Energy             -2604.860510709477

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2604.90677186 (Davidson, fixed reference)
 Cluster corrected energies         -2604.90648403 (Davidson, relaxed reference)
 Cluster corrected energies         -2604.90677186 (Davidson, rotated reference)

 Cluster corrected energies         -2604.90463843 (Pople, fixed reference)
 Cluster corrected energies         -2604.90435052 (Pople, relaxed reference)
 Cluster corrected energies         -2604.90463843 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97227964 (fixed)   0.97248539 (relaxed)   0.97232021 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042996   -0.00077276   -0.68321686
 Singles      0.01591979   -0.07878808   -0.08654383
 Pairs        0.04139621    0.00000000   -0.03135282
 Total        1.05774596   -0.07956085   -0.80111350
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.05939710
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.93044007
 One electron energy                -3616.88699227
 Two electron energy                 1012.02648167
 Virial quotient                       -0.93467008
 Correlation energy                    -0.80111350
 !MRCI STATE 2.2 Energy             -2604.860510603785

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2604.90677167 (Davidson, fixed reference)
 Cluster corrected energies         -2604.90648384 (Davidson, relaxed reference)
 Cluster corrected energies         -2604.90677167 (Davidson, rotated reference)

 Cluster corrected energies         -2604.90463825 (Pople, fixed reference)
 Cluster corrected energies         -2604.90435033 (Pople, relaxed reference)
 Cluster corrected energies         -2604.90463825 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.97227648 (fixed)   0.97248538 (relaxed)   0.97232020 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00042996   -0.00077277   -0.68321687
 Singles      0.01591976   -0.07878803   -0.08654375
 Pairs        0.04139626    0.00000000   -0.03135286
 Total        1.05774599   -0.07956079   -0.80111349
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.05939710
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.93043213
 One electron energy                -3616.88698449
 Two electron energy                 1012.02647390
 Virial quotient                       -0.93467009
 Correlation energy                    -0.80111349
 !MRCI STATE 3.2 Energy             -2604.860510585233

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2604.90677167 (Davidson, fixed reference)
 Cluster corrected energies         -2604.90648384 (Davidson, relaxed reference)
 Cluster corrected energies         -2604.90677167 (Davidson, rotated reference)

 Cluster corrected energies         -2604.90463825 (Pople, fixed reference)
 Cluster corrected energies         -2604.90435033 (Pople, relaxed reference)
 Cluster corrected energies         -2604.90463825 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.97108442 (fixed)   0.97121925 (relaxed)   0.97108651 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038105   -0.00086158   -0.68226371
 Singles      0.01856888   -0.08508511   -0.09438849
 Pairs        0.04148533   -0.00004508   -0.03166646
 Total        1.06043525   -0.08599176   -0.80831867
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.02612180
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.99056077
 One electron energy                -3617.09205912
 Two electron energy                 1012.25761866
 Virial quotient                       -0.93464057
 Correlation energy                    -0.80831867
 !MRCI STATE 4.2 Energy             -2604.834440467680

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2604.88329141 (Davidson, fixed reference)
 Cluster corrected energies         -2604.88305713 (Davidson, relaxed reference)
 Cluster corrected energies         -2604.88329141 (Davidson, rotated reference)

 Cluster corrected energies         -2604.88114499 (Pople, fixed reference)
 Cluster corrected energies         -2604.88090957 (Pople, relaxed reference)
 Cluster corrected energies         -2604.88114499 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97108160 (fixed)   0.97121942 (relaxed)   0.97108668 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038106   -0.00086158   -0.68200029
 Singles      0.01856870   -0.08508487   -0.09438809
 Pairs        0.04148512   -0.00032466   -0.03193003
 Total        1.06043488   -0.08627111   -0.80831841
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.02612180
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.99057152
 One electron energy                -3617.09207037
 Two electron energy                 1012.25763016
 Virial quotient                       -0.93464056
 Correlation energy                    -0.80831841
 !MRCI STATE 5.2 Energy             -2604.834440209984

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2604.88329084 (Davidson, fixed reference)
 Cluster corrected energies         -2604.88305656 (Davidson, relaxed reference)
 Cluster corrected energies         -2604.88329084 (Davidson, rotated reference)

 Cluster corrected energies         -2604.88114442 (Pople, fixed reference)
 Cluster corrected energies         -2604.88090899 (Pople, relaxed reference)
 Cluster corrected energies         -2604.88114442 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97108439 (fixed)   0.97121942 (relaxed)   0.97108668 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038106   -0.00086158   -0.68232356
 Singles      0.01856858   -0.08508470   -0.09438788
 Pairs        0.04148524    0.00001806   -0.03160689
 Total        1.06043488   -0.08592822   -0.80831833
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.02612180
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.99056013
 One electron energy                -3617.09206105
 Two electron energy                 1012.25762093
 Virial quotient                       -0.93464057
 Correlation energy                    -0.80831833
 !MRCI STATE 6.2 Energy             -2604.834440122403

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2604.88329074 (Davidson, fixed reference)
 Cluster corrected energies         -2604.88305646 (Davidson, relaxed reference)
 Cluster corrected energies         -2604.88329074 (Davidson, rotated reference)

 Cluster corrected energies         -2604.88114432 (Pople, fixed reference)
 Cluster corrected energies         -2604.88090889 (Pople, relaxed reference)
 Cluster corrected energies         -2604.88114432 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97103841 (fixed)   0.97121907 (relaxed)   0.97108632 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038107   -0.00086150   -0.68872090
 Singles      0.01856863   -0.08508459   -0.09438777
 Pairs        0.04148596    0.00680257   -0.02520952
 Total        1.06043566   -0.07914352   -0.80831819
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.02612180
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.99044214
 One electron energy                -3617.09198465
 Two electron energy                 1012.25754466
 Virial quotient                       -0.93464061
 Correlation energy                    -0.80831819
 !MRCI STATE 7.2 Energy             -2604.834439991138

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2604.88329124 (Davidson, fixed reference)
 Cluster corrected energies         -2604.88305694 (Davidson, relaxed reference)
 Cluster corrected energies         -2604.88329124 (Davidson, rotated reference)

 Cluster corrected energies         -2604.88114482 (Pople, fixed reference)
 Cluster corrected energies         -2604.88090937 (Pople, relaxed reference)
 Cluster corrected energies         -2604.88114482 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97104341 (fixed)   0.97121929 (relaxed)   0.97108657 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038101   -0.00086150   -0.00113311
 Singles      0.01856814   -0.08508387   -0.09438671
 Pairs        0.04148597   -0.72234011   -0.71279777
 Total        1.06043513   -0.80828548   -0.80831759
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.02612180
 Nuclear energy                         0.00000000
 Kinetic energy                      2786.99042629
 One electron energy                -3617.09198984
 Two electron energy                 1012.25755045
 Virial quotient                       -0.93464061
 Correlation energy                    -0.80831759
 !MRCI STATE 8.2 Energy             -2604.834439392008

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2604.88329017 (Davidson, fixed reference)
 Cluster corrected energies         -2604.88305592 (Davidson, relaxed reference)
 Cluster corrected energies         -2604.88329017 (Davidson, rotated reference)

 Cluster corrected energies         -2604.88114375 (Pople, fixed reference)
 Cluster corrected energies         -2604.88090835 (Pople, relaxed reference)
 Cluster corrected energies         -2604.88114375 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.37       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1402.70       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     53721.65  41175.17  12543.20      2.24      0.07      0.81
 REAL TIME  *     54000.82 SEC
 DISK USED  *         1.41 GB (local),        4.24 GB (total)
 SF USED    *        10.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2604.90677186  AU                              
 SETTING HLSDIAG(5)     =     -2604.90677167  AU                              
 SETTING HLSDIAG(6)     =     -2604.90677167  AU                              
 SETTING HLSDIAG(7)     =     -2604.88329141  AU                              
 SETTING HLSDIAG(8)     =     -2604.88329084  AU                              
 SETTING HLSDIAG(9)     =     -2604.88329074  AU                              
 SETTING HLSDIAG(10)    =     -2604.88329124  AU                              
 SETTING HLSDIAG(11)    =     -2604.88329017  AU                              


         HLSDIAG
    -2605.388975
    -2605.388975
    -2605.388975
    -2604.906772
    -2604.906772
    -2604.906772
    -2604.883291
    -2604.883291
    -2604.883291
    -2604.883291
    -2604.883290
                                                  

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

 Time for Seward_LS:       2.66 sec

        3455180. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      947 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      2.66 sec, REAL time:      2.70 sec


 SORTLS1 read     3854414. and wrote     3854414. SO integrals in    18 records. CPU time:      0.03 sec, REAL time:      0.06 sec
 SORTLS2 read     3854414. and wrote    19118190. SO integrals in     9 records. CPU time:      0.02 sec, REAL time:      0.07 sec

 FILE SIZES: FILE 1:   103.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   103.4 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       98.60       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1402.70       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     53725.22      3.55  41175.17  12543.20      2.24      0.07      0.81
 REAL TIME  *     54004.60 SEC
 DISK USED  *         1.41 GB (local),        4.44 GB (total)
 SF USED    *        10.88 GB
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

 Original energies:  -2605.339101  -2605.339101  -2605.339101
 Replaced energies:  -2605.388975  -2605.388975  -2605.388975

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:  -2604.860511  -2604.860511  -2604.860511  -2604.834440  -2604.834440  -2604.834440  -2604.834440  -2604.834439
 Replaced energies:  -2604.906772  -2604.906772  -2604.906772  -2604.883291  -2604.883291  -2604.883291  -2604.883291  -2604.883290

 >>> Fock matrix approximation error in all internal so: 
  -55.507829262737111       (exact)   -55.979049414361334       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   76.903387287585090       (exact)    77.556239751665046       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.24838699526751781       (exact)   0.25587602532926829       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.4175251103416113E-002  (exact)   -3.4465427887293322E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.7350725122711858E-002  (exact)    4.7752726599136472E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.86441594670585076       (exact)   0.89047860783558652       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.14568830986703329       (exact)   0.14692527358942767       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.20184382343468807       (exact)  -0.20355742909077656       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   94.839232857913260       (exact)    97.698706096273995       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   58.094918605084793       (exact)    58.592306362247349       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -80.506079429231647       (exact)   -81.195783398224080       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.20479866405664165       (exact)  -0.21074304175728309       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.25299850222276704       (exact)   0.26132191851116870       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.20102767246960276       (exact)   0.20719316105456159       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.8555202675333207E-002  (exact)    6.0254697140261486E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.14744461875803866       (exact)  -0.14935703574310144       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.14616770241946289       (exact)   0.14695079489127419       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -99.278760349093545       (exact)   -102.16029563875712       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   74.974424937613549       (exact)    77.385643830786634       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   54.095825363130828       (exact)    55.836042410666721       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.4680166919580625E-002  (exact)   -3.5686562973737637E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   54.955414365794894       (exact)    56.680903693135861       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   39.673526842212311       (exact)    40.919025948057801       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.8218052840829318E-003  (exact)   -2.9036603445434183E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   76.903311885626664       (exact)    77.567288411485833       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   55.507775643522457       (exact)    55.987024995851023       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.0660895270246429E-002  (exact)    6.2489829536371069E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.7349394397466590E-002  (exact)    4.7758236923435032E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.4175694528301458E-002  (exact)    3.4470865438195095E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -94.839513686397325       (exact)   -97.698996094382821       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.20184309564408337       (exact)  -0.20358580388681036       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.14568843317340430       (exact)  -0.14694632851781819       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.86426030005934318       (exact)   0.89031828022859416       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   80.511345528808931       (exact)    81.189858641090112       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   58.087684435998106       (exact)    58.576649429995179       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.5103396281696935E-002  (exact)    1.5541598648900538E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.19200348663695826       (exact)  -0.19784984207063749       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.24049244608901513       (exact)   0.24837732700486337       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   99.278498340656228       (exact)    102.16002631176902       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.14551770127040761       (exact)  -0.14626047102714204       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.14834109166408116       (exact)  -0.15026020730787323       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.8634911312402907E-002  (exact)    6.0336720059766522E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -61.395451814958705       (exact)   -63.356259103283648       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   85.087700442799189       (exact)    87.804532297649814       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.31173702152010757       (exact)  -0.32078539108965298       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   27.020761636283563       (exact)    27.883714315202486       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -37.446277476405655       (exact)   -38.641942959157753       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.7557414150449992E-002  (exact)   -4.8937640947463439E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.27355605043939479       (exact)   0.28088225616989554       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.11106274640789070       (exact)   0.11561728625673583       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -63.283208845432981       (exact)   -63.803021364310439       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   89.381274820660408       (exact)    90.152624002785231       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   89.380855988361319       (exact)    92.050255176514966       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   63.283128918032872       (exact)    65.199417257613121       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.18154194817599514       (exact)   0.18704704196362112       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.15253988671501559       (exact)   0.15669758971972603       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0333153626774874E-002  (exact)    1.0662248120209076E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -67.146868811487906       (exact)   -67.723127067147516       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   92.913185345377883       (exact)    93.708193891521930       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.7808745643959477E-002  (exact)    1.8376277689693635E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   92.913417859652455       (exact)    95.624122225628582       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   67.147148076325692       (exact)    69.104413000104444       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2787143324991853E-003  (exact)    1.3193814716915460E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.24314046544620427       (exact)   0.24589190296914745       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.26844094633272331       (exact)  -0.27025732397396118       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -14.401558044291471       (exact)   -14.860369248947228       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.4783900319159518E-002  (exact)    3.5136273495505944E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.2621313127579122E-002  (exact)   -4.2947102332178570E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   131.58607358227084       (exact)    135.77818157181395       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2605.38897470

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.01       0.00       0.00       0.00      -0.00   -1026.35    -491.23      -0.30       1.29    -509.50
                           -0.00    1265.77      -0.00      -0.00      -0.00    -740.80     354.56       0.22      -0.93    -367.65

    2   2.2  0.5  0.5       0.00       0.01       0.00       0.00       0.00    -740.80    -354.56      -0.22       0.93    -367.60
                        -1265.77      -0.00      -0.00       0.00       0.00    1026.35    -491.22      -0.30       1.29     509.48

    3   3.2  0.5  0.5       0.00       0.00       0.00    1026.35     740.80       0.00      -0.39     605.80      -5.52      -0.10
                            0.00       0.00      -0.00     740.80   -1026.35      -0.00      -1.59      -5.52    -605.79       1.30

    4   1.2  0.5 -0.5       0.00       0.00    1026.35       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -740.80       0.00   -1265.77       0.00       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5      -0.00       0.00     740.80       0.00       0.01       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    1026.35    1265.77       0.00       0.00       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5   -1026.35    -740.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          740.80   -1026.35       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5    -491.23    -354.56      -0.39       0.00       0.00       0.00  105831.29       0.00       0.00       0.00
                         -354.56     491.22       1.59      -0.00      -0.00      -0.00      -0.00       1.16       0.27       0.08

    8   2.2  1.5  1.5      -0.30      -0.22     605.80       0.00       0.00       0.00       0.00  105831.33       0.00       0.00
                           -0.22       0.30       5.52      -0.00      -0.00      -0.00      -1.16      -0.00    -441.23       1.94

    9   3.2  1.5  1.5       1.29       0.93      -5.52       0.00       0.00       0.00       0.00       0.00  105831.33       0.00
                            0.93      -1.29     605.79      -0.00      -0.00      -0.00      -0.27     441.23       0.00      -0.16

   10   4.2  1.5  1.5    -509.50    -367.60      -0.10       0.00       0.00       0.00       0.00       0.00       0.00  110984.65
                          367.65    -509.48      -1.30      -0.00      -0.00      -0.00      -0.08      -1.94       0.16      -0.00

   11   5.2  1.5  1.5       1.22      -1.52    -628.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.60       1.27       0.37      -0.00      -0.00      -0.00       2.32       9.13     940.54      -3.53

   12   6.2  1.5  1.5       0.92       0.94      -0.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.93       0.93    -628.29      -0.00      -0.00      -0.00       0.59    -940.54       9.13       0.36

   13   7.2  1.5  1.5     388.58    -538.54       1.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          474.53     342.39      -0.22      -0.00      -0.00      -0.00     118.16      -0.28      -3.26    -834.73

   14   8.2  1.5  1.5    -171.01     237.00       0.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          347.82     251.10      -0.02      -0.00      -0.00      -0.00   -1079.64      -0.70       2.38     -91.36

   15   1.2  1.5  0.5       0.00       0.00       0.00    -283.61    -204.71      -0.22      -0.00    -254.74       2.32       0.26
                            1.75       0.71       0.00    -204.71     283.61       0.92      -0.00       2.32     254.74      -0.30

   16   2.2  1.5  0.5       0.00       0.00       0.00      -0.17      -0.13     349.76     254.74       0.00      -0.67    -543.03
                         -404.22     570.91      -0.00      -0.13       0.17       3.19      -2.32      -0.00       0.16      -4.89

   17   3.2  1.5  0.5       0.00       0.00       0.00       0.74       0.54      -3.19      -2.32       0.67      -0.00       4.84
                          570.91     404.22      -0.00       0.54      -0.74     349.75    -254.74      -0.16      -0.00    -543.03

   18   4.2  1.5  0.5       0.00       0.00       0.00    -294.16    -212.23      -0.06      -0.26     543.03      -4.84      -0.00
                            1.15       0.97       0.07     212.26    -294.15      -0.75       0.30       4.89     543.03      -0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00       0.70      -0.88    -362.74     543.04       0.24      -3.11    -242.41
                         -424.93     587.99       0.11       0.92       0.73       0.21       0.32       1.77      -0.10       0.21

   20   6.2  1.5  0.5       0.00       0.00       0.00       0.53       0.54      -0.21       0.32      -1.12       0.20      -0.15
                          588.01     424.95       0.01      -0.54       0.53    -362.74    -543.05      -0.53       0.31    -242.41

   21   7.2  1.5  0.5       0.00       0.00       0.00     224.35    -310.92       1.14      -3.21      -5.14    -573.90       0.36
                            1.54      -1.70     -91.17     273.97     197.68      -0.13      -0.51     505.69      -4.52      -0.04

   22   8.2  1.5  0.5       0.00       0.00       0.00     -98.73     136.83       0.17       0.40       2.27     252.57      -0.80
                            0.22      -0.27     832.85     200.82     144.97      -0.01      -0.25     370.73      -3.41      -0.07

   23   1.2  1.5 -0.5    -283.61    -204.71      -0.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          204.71    -283.61      -0.92       1.75       0.71       0.00      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5      -0.17      -0.13     349.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.13      -0.17      -3.19    -404.22     570.91      -0.00      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5       0.74       0.54      -3.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.54       0.74    -349.75     570.91     404.22      -0.00      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5    -294.16    -212.23      -0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -212.26     294.15       0.75       1.15       0.97       0.07      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5       0.70      -0.88    -362.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.92      -0.73      -0.21    -424.93     587.99       0.11      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5       0.53       0.54      -0.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.54      -0.53     362.74     588.01     424.95       0.01      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5     224.35    -310.92       1.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -273.97    -197.68       0.13       1.54      -1.70     -91.17      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5     -98.73     136.83       0.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -200.82    -144.97       0.01       0.22      -0.27     832.85      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00    -491.23    -354.56      -0.39       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     354.56    -491.22      -1.59      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00      -0.30      -0.22     605.80       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.22      -0.30      -5.52      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       1.29       0.93      -5.52       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.93       1.29    -605.79      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00    -509.50    -367.60      -0.10       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -367.65     509.48       1.30      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       1.22      -1.52    -628.29       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -1.60      -1.27      -0.37      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.92       0.94      -0.37       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.93      -0.93     628.29      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00     388.58    -538.54       1.97       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -474.53    -342.39       0.22      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00    -171.01     237.00       0.30       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -347.82    -251.10       0.02      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5       1.22       0.92     388.58    -171.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.60       0.93    -474.53    -347.82      -1.75     404.22    -570.91      -1.15     424.93    -588.01

    2   2.2  0.5  0.5      -1.52       0.94    -538.54     237.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.27      -0.93    -342.39    -251.10      -0.71    -570.91    -404.22      -0.97    -587.99    -424.95

    3   3.2  0.5  0.5    -628.29      -0.37       1.97       0.30       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.37     628.29       0.22       0.02      -0.00       0.00       0.00      -0.07      -0.11      -0.01

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00    -283.61      -0.17       0.74    -294.16       0.70       0.53
                            0.00       0.00       0.00       0.00     204.71       0.13      -0.54    -212.26      -0.92       0.54

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00    -204.71      -0.13       0.54    -212.23      -0.88       0.54
                            0.00       0.00       0.00       0.00    -283.61      -0.17       0.74     294.15      -0.73      -0.53

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.22     349.76      -3.19      -0.06    -362.74      -0.21
                            0.00       0.00       0.00       0.00      -0.92      -3.19    -349.75       0.75      -0.21     362.74

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00     254.74      -2.32      -0.26     543.04       0.32
                           -2.32      -0.59    -118.16    1079.64       0.00       2.32     254.74      -0.30      -0.32     543.05

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00    -254.74       0.00       0.67     543.03       0.24      -1.12
                           -9.13     940.54       0.28       0.70      -2.32       0.00       0.16      -4.89      -1.77       0.53

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00       2.32      -0.67      -0.00      -4.84      -3.11       0.20
                         -940.54      -9.13       3.26      -2.38    -254.74      -0.16       0.00    -543.03       0.10      -0.31

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.26    -543.03       4.84      -0.00    -242.41      -0.15
                            3.53      -0.36     834.73      91.36       0.30       4.89     543.03       0.00      -0.21     242.41

   11   5.2  1.5  1.5  110984.78       0.00       0.00       0.00    -543.04      -0.24       3.11     242.41      -0.00       0.33
                            0.00    -419.86      -0.27      -0.03       0.32       1.77      -0.10       0.21      -0.00       0.05

   12   6.2  1.5  1.5       0.00  110984.80       0.00       0.00      -0.32       1.12      -0.20       0.15      -0.33      -0.00
                          419.86       0.00      -3.04      -0.39    -543.05      -0.53       0.31    -242.41      -0.05       0.00

   13   7.2  1.5  1.5       0.00       0.00  110984.69       0.00       3.21       5.14     573.90      -0.36      -0.15     195.29
                            0.27       3.04      -0.00       0.07      -0.51     505.69      -4.52      -0.04     286.65       0.21

   14   8.2  1.5  1.5       0.00       0.00       0.00  110984.93      -0.40      -2.27    -252.57       0.80      -0.25     443.74
                            0.03       0.39      -0.07      -0.00      -0.25     370.73      -3.41      -0.07    -391.00      -0.25

   15   1.2  1.5  0.5    -543.04      -0.32       3.21      -0.40  105831.29       0.00       0.00       0.00       0.00       0.00
                           -0.32     543.05       0.51       0.25      -0.00       0.39       0.09       0.03      -0.77      -0.20

   16   2.2  1.5  0.5      -0.24       1.12       5.14      -2.27       0.00  105831.33       0.00       0.00       0.00       0.00
                           -1.77       0.53    -505.69    -370.73      -0.39      -0.00    -147.08       0.65      -3.04     313.51

   17   3.2  1.5  0.5       3.11      -0.20     573.90    -252.57       0.00       0.00  105831.33       0.00       0.00       0.00
                            0.10      -0.31       4.52       3.41      -0.09     147.08       0.00      -0.05    -313.51      -3.04

   18   4.2  1.5  0.5     242.41       0.15      -0.36       0.80       0.00       0.00       0.00  110984.65       0.00       0.00
                           -0.21     242.41       0.04       0.07      -0.03      -0.65       0.05      -0.00       1.18      -0.12

   19   5.2  1.5  0.5      -0.00      -0.33      -0.15      -0.25       0.00       0.00       0.00       0.00  110984.78       0.00
                            0.00       0.05    -286.65     391.00       0.77       3.04     313.51      -1.18       0.00    -139.95

   20   6.2  1.5  0.5       0.33      -0.00     195.29     443.74       0.00       0.00       0.00       0.00       0.00  110984.80
                           -0.05      -0.00      -0.21       0.25       0.20    -313.51       3.04       0.12     139.95       0.00

   21   7.2  1.5  0.5       0.15    -195.29      -0.00       0.15       0.00       0.00       0.00       0.00       0.00       0.00
                          286.65       0.21       0.00      -1.37      39.39      -0.09      -1.09    -278.24       0.09       1.01

   22   8.2  1.5  0.5       0.25    -443.74      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -391.00      -0.25       1.37       0.00    -359.88      -0.23       0.79     -30.45       0.01       0.13

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00    -294.14       2.68       0.31    -627.05      -0.37
                           -0.00      -0.00      -0.00      -0.00      -0.00       2.68     294.14      -0.35      -0.37     627.06

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00     294.14       0.00      -0.77    -627.03      -0.27       1.29
                           -0.00      -0.00      -0.00      -0.00      -2.68      -0.00       0.19      -5.65      -2.04       0.61

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00      -2.68       0.77      -0.00       5.59       3.59      -0.23
                           -0.00      -0.00      -0.00      -0.00    -294.14      -0.19      -0.00    -627.04       0.11      -0.35

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.31     627.03      -5.59      -0.00     279.91       0.17
                           -0.00      -0.00      -0.00      -0.00       0.35       5.65     627.04      -0.00      -0.25     279.91

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00     627.05       0.27      -3.59    -279.91      -0.00      -0.38
                           -0.00      -0.00      -0.00      -0.00       0.37       2.04      -0.11       0.25       0.00       0.06

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.37      -1.29       0.23      -0.17       0.38      -0.00
                           -0.00      -0.00      -0.00      -0.00    -627.06      -0.61       0.35    -279.91      -0.06      -0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -3.70      -5.94    -662.69       0.41       0.18    -225.50
                           -0.00      -0.00      -0.00      -0.00      -0.59     583.92      -5.22      -0.05     330.99       0.24

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.46       2.62     291.65      -0.92       0.29    -512.39
                           -0.00      -0.00      -0.00      -0.00      -0.29     428.09      -3.94      -0.08    -451.48      -0.28

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

    1   1.2  0.5  0.5       0.00       0.00    -283.61      -0.17       0.74    -294.16       0.70       0.53     224.35     -98.73
                           -1.54      -0.22    -204.71      -0.13       0.54     212.26       0.92      -0.54     273.97     200.82

    2   2.2  0.5  0.5       0.00       0.00    -204.71      -0.13       0.54    -212.23      -0.88       0.54    -310.92     136.83
                            1.70       0.27     283.61       0.17      -0.74    -294.15       0.73       0.53     197.68     144.97

    3   3.2  0.5  0.5       0.00       0.00      -0.22     349.76      -3.19      -0.06    -362.74      -0.21       1.14       0.17
                           91.17    -832.85       0.92       3.19     349.75      -0.75       0.21    -362.74      -0.13      -0.01

    4   1.2  0.5 -0.5     224.35     -98.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -273.97    -200.82      -1.75     404.22    -570.91      -1.15     424.93    -588.01      -1.54      -0.22

    5   2.2  0.5 -0.5    -310.92     136.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -197.68    -144.97      -0.71    -570.91    -404.22      -0.97    -587.99    -424.95       1.70       0.27

    6   3.2  0.5 -0.5       1.14       0.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.13       0.01      -0.00       0.00       0.00      -0.07      -0.11      -0.01      91.17    -832.85

    7   1.2  1.5  1.5      -3.21       0.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.51       0.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5      -5.14       2.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -505.69    -370.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5    -573.90     252.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.52       3.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       0.36      -0.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       0.15       0.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -286.65     391.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5    -195.29    -443.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.21       0.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5      -0.00      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -1.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.37      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00      -0.00     294.14      -2.68      -0.31     627.05       0.37      -3.70       0.46
                          -39.39     359.88       0.00       2.68     294.14      -0.35      -0.37     627.06       0.59       0.29

   16   2.2  1.5  0.5       0.00       0.00    -294.14       0.00       0.77     627.03       0.27      -1.29      -5.94       2.62
                            0.09       0.23      -2.68       0.00       0.19      -5.65      -2.04       0.61    -583.92    -428.09

   17   3.2  1.5  0.5       0.00       0.00       2.68      -0.77      -0.00      -5.59      -3.59       0.23    -662.69     291.65
                            1.09      -0.79    -294.14      -0.19       0.00    -627.04       0.11      -0.35       5.22       3.94

   18   4.2  1.5  0.5       0.00       0.00       0.31    -627.03       5.59      -0.00    -279.91      -0.17       0.41      -0.92
                          278.24      30.45       0.35       5.65     627.04       0.00      -0.25     279.91       0.05       0.08

   19   5.2  1.5  0.5       0.00       0.00    -627.05      -0.27       3.59     279.91      -0.00       0.38       0.18       0.29
                           -0.09      -0.01       0.37       2.04      -0.11       0.25      -0.00       0.06    -330.99     451.48

   20   6.2  1.5  0.5       0.00       0.00      -0.37       1.29      -0.23       0.17      -0.38      -0.00    -225.50    -512.39
                           -1.01      -0.13    -627.06      -0.61       0.35    -279.91      -0.06       0.00      -0.24       0.28

   21   7.2  1.5  0.5  110984.69       0.00       3.70       5.94     662.69      -0.41      -0.18     225.50      -0.00      -0.17
                           -0.00       0.02      -0.59     583.92      -5.22      -0.05     330.99       0.24      -0.00      -1.58

   22   8.2  1.5  0.5       0.00  110984.93      -0.46      -2.62    -291.65       0.92      -0.29     512.39       0.17       0.00
                           -0.02      -0.00      -0.29     428.09      -3.94      -0.08    -451.48      -0.28       1.58      -0.00

   23   1.2  1.5 -0.5       3.70      -0.46  105831.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.59       0.29       0.00      -0.39      -0.09      -0.03       0.77       0.20      39.39    -359.88

   24   2.2  1.5 -0.5       5.94      -2.62       0.00  105831.33       0.00       0.00       0.00       0.00       0.00       0.00
                         -583.92    -428.09       0.39       0.00     147.08      -0.65       3.04    -313.51      -0.09      -0.23

   25   3.2  1.5 -0.5     662.69    -291.65       0.00       0.00  105831.33       0.00       0.00       0.00       0.00       0.00
                            5.22       3.94       0.09    -147.08      -0.00       0.05     313.51       3.04      -1.09       0.79

   26   4.2  1.5 -0.5      -0.41       0.92       0.00       0.00       0.00  110984.65       0.00       0.00       0.00       0.00
                            0.05       0.08       0.03       0.65      -0.05       0.00      -1.18       0.12    -278.24     -30.45

   27   5.2  1.5 -0.5      -0.18      -0.29       0.00       0.00       0.00       0.00  110984.78       0.00       0.00       0.00
                         -330.99     451.48      -0.77      -3.04    -313.51       1.18      -0.00     139.95       0.09       0.01

   28   6.2  1.5 -0.5     225.50     512.39       0.00       0.00       0.00       0.00       0.00  110984.80       0.00       0.00
                           -0.24       0.28      -0.20     313.51      -3.04      -0.12    -139.95      -0.00       1.01       0.13

   29   7.2  1.5 -0.5      -0.00       0.17       0.00       0.00       0.00       0.00       0.00       0.00  110984.69       0.00
                            0.00      -1.58     -39.39       0.09       1.09     278.24      -0.09      -1.01       0.00      -0.02

   30   8.2  1.5 -0.5      -0.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  110984.93
                            1.58       0.00     359.88       0.23      -0.79      30.45      -0.01      -0.13       0.02       0.00

   31   1.2  1.5 -1.5       0.00       0.00      -0.00    -254.74       2.32       0.26    -543.04      -0.32       3.21      -0.40
                           -0.00      -0.00      -0.00       2.32     254.74      -0.30      -0.32     543.05       0.51       0.25

   32   2.2  1.5 -1.5       0.00       0.00     254.74       0.00      -0.67    -543.03      -0.24       1.12       5.14      -2.27
                           -0.00      -0.00      -2.32      -0.00       0.16      -4.89      -1.77       0.53    -505.69    -370.73

   33   3.2  1.5 -1.5       0.00       0.00      -2.32       0.67      -0.00       4.84       3.11      -0.20     573.90    -252.57
                           -0.00      -0.00    -254.74      -0.16      -0.00    -543.03       0.10      -0.31       4.52       3.41

   34   4.2  1.5 -1.5       0.00       0.00      -0.26     543.03      -4.84      -0.00     242.41       0.15      -0.36       0.80
                           -0.00      -0.00       0.30       4.89     543.03      -0.00      -0.21     242.41       0.04       0.07

   35   5.2  1.5 -1.5       0.00       0.00     543.04       0.24      -3.11    -242.41      -0.00      -0.33      -0.15      -0.25
                           -0.00      -0.00       0.32       1.77      -0.10       0.21       0.00       0.05    -286.65     391.00

   36   6.2  1.5 -1.5       0.00       0.00       0.32      -1.12       0.20      -0.15       0.33      -0.00     195.29     443.74
                           -0.00      -0.00    -543.05      -0.53       0.31    -242.41      -0.05      -0.00      -0.21       0.25

   37   7.2  1.5 -1.5       0.00       0.00      -3.21      -5.14    -573.90       0.36       0.15    -195.29      -0.00       0.15
                           -0.00      -0.00      -0.51     505.69      -4.52      -0.04     286.65       0.21       0.00      -1.37

   38   8.2  1.5 -1.5       0.00       0.00       0.40       2.27     252.57      -0.80       0.25    -443.74      -0.15       0.00
                           -0.00      -0.00      -0.25     370.73      -3.41      -0.07    -391.00      -0.25       1.37       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5    -491.23      -0.30       1.29    -509.50       1.22       0.92     388.58    -171.01
                         -354.56      -0.22       0.93     367.65       1.60      -0.93     474.53     347.82

    5   2.2  0.5 -0.5    -354.56      -0.22       0.93    -367.60      -1.52       0.94    -538.54     237.00
                          491.22       0.30      -1.29    -509.48       1.27       0.93     342.39     251.10

    6   3.2  0.5 -0.5      -0.39     605.80      -5.52      -0.10    -628.29      -0.37       1.97       0.30
                            1.59       5.52     605.79      -1.30       0.37    -628.29      -0.22      -0.02

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

   23   1.2  1.5 -0.5      -0.00     254.74      -2.32      -0.26     543.04       0.32      -3.21       0.40
                            0.00       2.32     254.74      -0.30      -0.32     543.05       0.51       0.25

   24   2.2  1.5 -0.5    -254.74       0.00       0.67     543.03       0.24      -1.12      -5.14       2.27
                           -2.32       0.00       0.16      -4.89      -1.77       0.53    -505.69    -370.73

   25   3.2  1.5 -0.5       2.32      -0.67      -0.00      -4.84      -3.11       0.20    -573.90     252.57
                         -254.74      -0.16       0.00    -543.03       0.10      -0.31       4.52       3.41

   26   4.2  1.5 -0.5       0.26    -543.03       4.84      -0.00    -242.41      -0.15       0.36      -0.80
                            0.30       4.89     543.03       0.00      -0.21     242.41       0.04       0.07

   27   5.2  1.5 -0.5    -543.04      -0.24       3.11     242.41      -0.00       0.33       0.15       0.25
                            0.32       1.77      -0.10       0.21      -0.00       0.05    -286.65     391.00

   28   6.2  1.5 -0.5      -0.32       1.12      -0.20       0.15      -0.33      -0.00    -195.29    -443.74
                         -543.05      -0.53       0.31    -242.41      -0.05       0.00      -0.21       0.25

   29   7.2  1.5 -0.5       3.21       5.14     573.90      -0.36      -0.15     195.29      -0.00      -0.15
                           -0.51     505.69      -4.52      -0.04     286.65       0.21      -0.00      -1.37

   30   8.2  1.5 -0.5      -0.40      -2.27    -252.57       0.80      -0.25     443.74       0.15       0.00
                           -0.25     370.73      -3.41      -0.07    -391.00      -0.25       1.37      -0.00

   31   1.2  1.5 -1.5  105831.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.16      -0.27      -0.08       2.32       0.59     118.16   -1079.64

   32   2.2  1.5 -1.5       0.00  105831.33       0.00       0.00       0.00       0.00       0.00       0.00
                            1.16       0.00     441.23      -1.94       9.13    -940.54      -0.28      -0.70

   33   3.2  1.5 -1.5       0.00       0.00  105831.33       0.00       0.00       0.00       0.00       0.00
                            0.27    -441.23      -0.00       0.16     940.54       9.13      -3.26       2.38

   34   4.2  1.5 -1.5       0.00       0.00       0.00  110984.65       0.00       0.00       0.00       0.00
                            0.08       1.94      -0.16       0.00      -3.53       0.36    -834.73     -91.36

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00  110984.78       0.00       0.00       0.00
                           -2.32      -9.13    -940.54       3.53      -0.00     419.86       0.27       0.03

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00  110984.80       0.00       0.00
                           -0.59     940.54      -9.13      -0.36    -419.86      -0.00       3.04       0.39

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00  110984.69       0.00
                         -118.16       0.28       3.26     834.73      -0.27      -3.04       0.00      -0.07

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00  110984.93
                         1079.64       0.70      -2.38      91.36      -0.03      -0.39       0.07       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2605.39484571    -0.00587101    -1288.54      0.00000000        0.00      0.0000
     2 -2605.39484571    -0.00587101    -1288.54      0.00000000        0.00      0.0000
     3 -2605.39484569    -0.00587099    -1288.53      0.00000002        0.00      0.0000
     4 -2605.39484569    -0.00587099    -1288.53      0.00000002        0.00      0.0000
     5 -2605.37757017     0.01140453     2503.01      0.01727554     3791.54      0.4701
     6 -2605.37757017     0.01140453     2503.01      0.01727554     3791.54      0.4701
     7 -2604.91033060     0.47864410   105050.24      0.48451511   106338.77     13.1843
     8 -2604.91033060     0.47864410   105050.24      0.48451511   106338.77     13.1843
     9 -2604.91033055     0.47864416   105050.25      0.48451516   106338.79     13.1843
    10 -2604.91033055     0.47864416   105050.25      0.48451516   106338.79     13.1843
    11 -2604.91033049     0.47864422   105050.26      0.48451522   106338.80     13.1843
    12 -2604.91033048     0.47864422   105050.26      0.48451523   106338.80     13.1843
    13 -2604.90660296     0.48237174   105868.36      0.48824275   107156.90     13.2858
    14 -2604.90660296     0.48237175   105868.36      0.48824275   107156.90     13.2858
    15 -2604.90660288     0.48237182   105868.38      0.48824283   107156.92     13.2858
    16 -2604.90660288     0.48237183   105868.38      0.48824283   107156.92     13.2858
    17 -2604.90379881     0.48517589   106483.80      0.49104690   107772.34     13.3621
    18 -2604.90379881     0.48517589   106483.80      0.49104690   107772.34     13.3621
    19 -2604.88711737     0.50185733   110144.95      0.50772834   111433.49     13.8160
    20 -2604.88711737     0.50185733   110144.95      0.50772834   111433.49     13.8160
    21 -2604.88711713     0.50185758   110145.01      0.50772858   111433.54     13.8160
    22 -2604.88711713     0.50185758   110145.01      0.50772858   111433.54     13.8160
    23 -2604.88711680     0.50185790   110145.08      0.50772891   111433.62     13.8160
    24 -2604.88711680     0.50185791   110145.08      0.50772891   111433.62     13.8160
    25 -2604.88711656     0.50185815   110145.13      0.50772915   111433.67     13.8160
    26 -2604.88711655     0.50185815   110145.13      0.50772915   111433.67     13.8160
    27 -2604.88110499     0.50786971   111464.52      0.51374072   112753.05     13.9796
    28 -2604.88110499     0.50786971   111464.52      0.51374072   112753.05     13.9796
    29 -2604.88110476     0.50786995   111464.57      0.51374095   112753.11     13.9796
    30 -2604.88110476     0.50786995   111464.57      0.51374095   112753.11     13.9796
    31 -2604.88110464     0.50787006   111464.59      0.51374107   112753.13     13.9796
    32 -2604.88110464     0.50787006   111464.59      0.51374107   112753.13     13.9796
    33 -2604.87818962     0.51078508   112104.37      0.51665609   113392.90     14.0589
    34 -2604.87818962     0.51078508   112104.37      0.51665609   113392.90     14.0589
    35 -2604.87818962     0.51078509   112104.37      0.51665609   113392.91     14.0589
    36 -2604.87818962     0.51078509   112104.37      0.51665609   113392.91     14.0589
    37 -2604.87704393     0.51193077   112355.82      0.51780178   113644.35     14.0901
    38 -2604.87704393     0.51193077   112355.82      0.51780178   113644.35     14.0901


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.000283853   0.404215434   0.709323613   0.000108798   0.000160270   0.577275185  -0.000000168   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000240229   0.028243479  -0.016094847  -0.000177734   0.000000004  -0.000000079   0.000000010   0.000000000
                        -0.000031438  -0.411534220   0.704352860  -0.000027593  -0.000160266  -0.577275189   0.000000171  -0.000000000

    3    3.2  0.5  0.5   0.124610047   0.000268421  -0.000105025   0.012573660   0.329900697  -0.000091591   0.000000000  -0.000000041
                         0.806672032   0.000222199   0.000197901  -0.011205916   0.473720476  -0.000131514   0.000000000   0.000000077

    4    1.2  0.5 -0.5  -0.273707256  -0.000192201  -0.000094569   0.616534800   0.544748717  -0.000151240  -0.000000000  -0.000000028
                        -0.297446543  -0.000208865  -0.000053805   0.350748969   0.191037888  -0.000053038  -0.000000000  -0.000000166

    5    2.2  0.5 -0.5   0.283710932  -0.000185788   0.000168134   0.334303953  -0.191037963   0.000053033   0.000000000   0.000000170
                        -0.299443047  -0.000155493   0.000063902  -0.620171701   0.544748695  -0.000151237  -0.000000000  -0.000000018

    6    3.2  0.5 -0.5  -0.000345263   0.677978875  -0.005389190   0.000006569  -0.000129952  -0.468080991  -0.000000068   0.000000000
                        -0.000047064  -0.454523915  -0.015959731  -0.000223933   0.000093794   0.337854621   0.000000052   0.000000000

    7    1.2  1.5  1.5   0.000010015   0.000059100   0.006339012  -0.000000332   0.000008326   0.000000022   0.008732842   0.000781616
                         0.000001114  -0.000151593   0.004686093   0.000000845  -0.000003218  -0.000000016  -0.006849284   0.000606840

    8    2.2  1.5  1.5  -0.000653803  -0.000001449   0.000004499  -0.000070674  -0.001867371   0.000000518  -0.000408080  -0.105154366
                        -0.004504144  -0.000001346   0.000001787   0.000061843  -0.002734254   0.000000759  -0.000474405   0.192114333

    9    3.2  1.5  1.5   0.004504041   0.000001097  -0.000015540  -0.000061841   0.002734186  -0.000000759   0.000203641  -0.189567933
                        -0.000653792  -0.000001088  -0.000011704  -0.000070681  -0.001867330   0.000000518  -0.000149998  -0.103782882

   10    4.2  1.5  1.5  -0.000010933   0.003724205  -0.000029441   0.000000174  -0.000003809   0.005344817   0.053298465  -0.000070673
                         0.000001827  -0.002495920  -0.000087991  -0.000001097   0.000003226  -0.003856570  -0.041219220  -0.000013019

   11    5.2  1.5  1.5   0.000687056  -0.000007021  -0.000000491   0.000069024   0.001884917  -0.000013571  -0.000256398  -0.047557386
                         0.004430391  -0.000010229   0.000000709  -0.000061591   0.002703244  -0.000017133  -0.000304081   0.088920547

   12    6.2  1.5  1.5  -0.004430380  -0.000008034  -0.000000969   0.000061591  -0.002703249  -0.000008932   0.000083992  -0.089313888
                         0.000687060   0.000007922  -0.000000440   0.000069028   0.001884926   0.000009295  -0.000051809  -0.047774273

   13    7.2  1.5  1.5  -0.000003957  -0.002472036  -0.000377125  -0.000001484  -0.000007923  -0.003834144  -0.041172577   0.000219086
                        -0.000011925  -0.003698974   0.000421663   0.000000168  -0.000009309  -0.005313831  -0.053235317  -0.000451332

   14    8.2  1.5  1.5  -0.000000450  -0.000357604   0.002640028   0.000000439  -0.000001096  -0.000420092  -0.002662439  -0.000237833
                        -0.000000647  -0.000438486  -0.003580917   0.000000148  -0.000001403  -0.000581332  -0.003467232   0.000266672

   15    1.2  1.5  0.5  -0.000401152  -0.000005987   0.000004791  -0.000040459   0.002184913  -0.000002545  -0.000584450  -0.355854938
                        -0.002596875  -0.000014052  -0.000011927   0.000036071   0.003137421  -0.000005646  -0.000253554   0.664370958

   16    2.2  1.5  0.5   0.000000698  -0.004358328   0.003718004  -0.000000198   0.000000912  -0.001560072   0.292630624  -0.000606801
                        -0.000001231   0.002798713   0.002775048   0.000002082   0.000002239   0.001104552  -0.221850570  -0.000035958

   17    3.2  1.5  0.5   0.000000774  -0.002974323   0.002568923  -0.000000717  -0.000006041  -0.001104584   0.233852137  -0.000329539
                         0.000010311  -0.004424891  -0.003650484  -0.000000033  -0.000008668  -0.001560110   0.307647944  -0.000012310

   18    4.2  1.5  0.5   0.000041045  -0.000000999   0.000005851   0.004451435   0.000000399  -0.000007596  -0.000056678  -0.000863839
                        -0.000083102  -0.000001029  -0.000006444  -0.000533086  -0.000000327  -0.000009040  -0.000012713   0.001578759

   19    5.2  1.5  0.5  -0.000000931   0.000033699   0.003603540  -0.000002494  -0.000000556  -0.004626288   0.076493363   0.000118731
                        -0.000000177  -0.000086219   0.002667189  -0.000013451   0.000000421   0.003343344  -0.059244868   0.000058309

   20    6.2  1.5  0.5   0.000000020  -0.000086204   0.002667292  -0.000008390  -0.000000876  -0.003343430   0.059858166  -0.000148059
                         0.000001435  -0.000033677  -0.003603671   0.000002772  -0.000001321  -0.004626399   0.077275388   0.000224697

   21    7.2  1.5  0.5  -0.000564816  -0.000001210  -0.000009923  -0.000523251  -0.000588566   0.000013529  -0.000436968   0.008483212
                         0.000034032   0.000001241  -0.000009496  -0.004418098   0.000409879  -0.000012220   0.000456614   0.004562970

   22    8.2  1.5  0.5   0.004396058   0.000001092  -0.000000506  -0.000119550   0.005377249   0.000000629   0.000048953  -0.058816892
                        -0.000684897  -0.000001335  -0.000000784  -0.000553035  -0.003744736  -0.000000692  -0.000034312  -0.031501935

   23    1.2  1.5 -0.5  -0.000014395   0.002182581  -0.000017335   0.000001733   0.000004270   0.003100072   0.596120273   0.000347424
                         0.000005110  -0.001463222  -0.000051366  -0.000012736  -0.000004486  -0.002237590  -0.461168545   0.000534648

   24    2.2  1.5 -0.5  -0.000891667   0.000000433   0.000000858  -0.004603842   0.001106641   0.000001601  -0.000144345   0.170043966
                        -0.005102244  -0.000001347  -0.000001907   0.000573526   0.001558591  -0.000001811  -0.000595818  -0.325070196

   25    3.2  1.5 -0.5  -0.005270107  -0.000008112  -0.000000640  -0.000427769   0.001558634  -0.000008569  -0.000064361  -0.342494171
                         0.000807519   0.000006412  -0.000000326  -0.004443260  -0.001106665   0.000006180  -0.000329923  -0.179730870

   26    4.2  1.5 -0.5  -0.000001434   0.000033368   0.003605522  -0.000001899   0.000010159   0.000000269   0.001375230   0.000020538
                        -0.000000039  -0.000086486   0.002664520  -0.000008494  -0.000006017   0.000000441  -0.001083999   0.000051931

   27    5.2  1.5 -0.5  -0.000040624   0.000000761  -0.000008818  -0.004451033   0.003259207  -0.000000386   0.000076469   0.045721453
                         0.000083165   0.000000565   0.000010458   0.000536386   0.004685943  -0.000000582   0.000106892  -0.085246255

   28    6.2  1.5 -0.5  -0.000083138  -0.000001069  -0.000005922  -0.000536410   0.004686061  -0.000001263   0.000197143  -0.086151553
                        -0.000040629   0.000000957  -0.000006558  -0.004451197  -0.003259283   0.000000956  -0.000183567  -0.046213900

   29    7.2  1.5 -0.5   0.000000094   0.000357421  -0.002639486   0.000013321  -0.000008723  -0.000419762   0.005847329  -0.000376694
                        -0.000001731   0.000438682   0.003581407  -0.000003347  -0.000016009  -0.000581559   0.007531331   0.000506314

   30    8.2  1.5 -0.5  -0.000000243  -0.002472701  -0.000377390   0.000000828  -0.000000365   0.003835022  -0.040831905   0.000025925
                         0.000001708  -0.003698668   0.000421583  -0.000000431  -0.000000861   0.005313235  -0.052783342  -0.000054109

   31    1.2  1.5 -1.5   0.000071529   0.000007601  -0.000000130   0.007826985   0.000000015  -0.000006792  -0.000736777  -0.005500318
                        -0.000146112   0.000006615   0.000000898  -0.000938538   0.000000023  -0.000005792  -0.000673047   0.010109961

   32    2.2  1.5 -1.5   0.000001972  -0.003757151   0.000030857   0.000004794   0.000000740   0.002667002  -0.171893732  -0.000538906
                         0.000000155   0.002568770   0.000088712   0.000000671  -0.000000545  -0.001962223   0.135491720  -0.000325929

   33    3.2  1.5 -1.5   0.000000057   0.002568709   0.000088714  -0.000019294  -0.000000545  -0.001962173   0.133885982  -0.000111747
                        -0.000001544   0.003757068  -0.000030864   0.000002488  -0.000000740  -0.002666941   0.169831897   0.000222158

   34    4.2  1.5 -1.5  -0.000685102  -0.000006058   0.000000391  -0.000069087   0.003767409   0.000002527   0.000024642  -0.031803378
                        -0.004430571  -0.000009282  -0.000001039   0.000061916   0.005408034   0.000004305   0.000067584   0.059398387

   35    5.2  1.5 -1.5   0.000012281   0.003725396  -0.000029547  -0.000000076  -0.000018476  -0.002673297  -0.079814467  -0.000342087
                        -0.000001760  -0.002494361  -0.000087678  -0.000000858   0.000011677   0.001927153   0.061666925  -0.000202184

   36    6.2  1.5 -1.5  -0.000000389  -0.002494351  -0.000087680  -0.000001060  -0.000005352   0.001927156   0.061919539  -0.000037619
                         0.000011276  -0.003725390   0.000029550  -0.000000097  -0.000011727   0.002673307   0.080132300   0.000092030

   37    7.2  1.5 -1.5   0.004395833  -0.000011455   0.000001207  -0.000119279  -0.005376618   0.000010557   0.000408787  -0.059338926
                        -0.000685593   0.000005163   0.000000880  -0.000552973   0.003745589  -0.000006163  -0.000291141  -0.031773560

   38    8.2  1.5 -1.5   0.000564796  -0.000000781  -0.000000455   0.000523965  -0.000588803   0.000001498  -0.000224394  -0.003764446
                        -0.000033765   0.000000108  -0.000000088   0.004417939   0.000409556  -0.000000962   0.000281139  -0.001998153


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000000000  -0.000000193   0.000000082   0.000000000  -0.000008050  -0.005586925   0.003186734  -0.000011978
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000000   0.000000020   0.000000006  -0.000000000   0.000001594  -0.000100660  -0.000176339   0.000011298
                         0.000000000  -0.000000199   0.000000080   0.000000000   0.000008244  -0.005551435  -0.003241751  -0.000014569

    3    3.2  0.5  0.5   0.000000036   0.000000000   0.000000000  -0.000000098   0.000093824   0.000005631  -0.000006616  -0.004449633
                         0.000000010  -0.000000001  -0.000000000   0.000000027   0.000063283  -0.000015464  -0.000009500   0.004643009

    4    1.2  0.5 -0.5  -0.000000113   0.000000000  -0.000000000   0.000000077  -0.002022369   0.000002963   0.000001398   0.000349057
                        -0.000000157   0.000000000  -0.000000000   0.000000025  -0.005209048   0.000007529  -0.000011858  -0.003165912

    5    2.2  0.5 -0.5  -0.000000149  -0.000000000   0.000000000   0.000000030  -0.005212650  -0.000008305  -0.000015689   0.003202915
                         0.000000132  -0.000000000   0.000000000  -0.000000073   0.001909179   0.000001522   0.000009526   0.000541537

    6    3.2  0.5 -0.5  -0.000000000  -0.000000029   0.000000084   0.000000000  -0.000012280  -0.000087627   0.005109418   0.000008713
                         0.000000001  -0.000000023   0.000000057   0.000000000   0.000010829  -0.000060805  -0.003905388   0.000007645

    7    1.2  1.5  1.5   0.000024716   0.475583398  -0.055823995  -0.000091216  -0.000089484   0.618278034   0.010057149   0.000380838
                        -0.000178051   0.384722878  -0.037343643  -0.000295401   0.000094166   0.437821243  -0.007536978   0.000685232

    8    2.2  1.5  1.5  -0.073076793  -0.001326634   0.000022882  -0.656541239   0.006343239   0.000773223  -0.000437886  -0.305500421
                        -0.019325220   0.001309595  -0.000039017   0.190078811   0.004363150  -0.000778679  -0.000654856   0.313017323

    9    3.2  1.5  1.5  -0.017190541   0.000773242  -0.000096848   0.190551969  -0.004363885  -0.000574553   0.000623826  -0.313018170
                         0.065366769   0.001115257  -0.000076706   0.658233902   0.006344607  -0.000756627  -0.000424299  -0.305503713

   10    4.2  1.5  1.5   0.000084172  -0.000931279   0.000215061  -0.000037334  -0.000178863  -0.001268512   0.073723448  -0.000022273
                        -0.000174819  -0.000747700   0.000145071  -0.000176247   0.000159137  -0.000871912  -0.056332507  -0.000011918

   11    5.2  1.5  1.5   0.008894203   0.000391339  -0.000043143   0.102463819   0.001355331   0.000071279  -0.000285306  -0.064152206
                         0.002452303  -0.000438003   0.000070254  -0.028592974   0.000913168  -0.000208791  -0.000362302   0.067019182

   12    6.2  1.5  1.5   0.003409187  -0.000014081  -0.000033553  -0.028366500  -0.000911999   0.000225529   0.000004555  -0.067019996
                        -0.012485629  -0.000174465  -0.000008987  -0.101681049   0.001353945   0.000083201   0.000046378  -0.064152701

   13    7.2  1.5  1.5  -0.000185837   0.010471448  -0.000944103  -0.000349609   0.000151772   0.004960451  -0.056096414   0.000310204
                        -0.000088103  -0.012957450   0.001415520   0.000077859   0.000174723  -0.006979714  -0.073418172  -0.000371204

   14    8.2  1.5  1.5   0.000075948  -0.102645615   0.009971308   0.000462363   0.000006573  -0.053390553  -0.005216810  -0.000163646
                        -0.000003138   0.126886234  -0.014905412  -0.000255203   0.000009843   0.075399508  -0.006792049   0.000075878

   15    1.2  1.5  0.5  -0.013386071   0.000265873  -0.000148991   0.002921934   0.003684566   0.000671689   0.000271694  -0.174727784
                        -0.003573908  -0.000370221   0.000250918  -0.000845597   0.002483172  -0.001718708   0.000861601   0.182320661

   16    2.2  1.5  0.5   0.000404441  -0.419992385   0.049825818   0.000908894  -0.001012235   0.352422977   0.409825742   0.001165641
                        -0.000520859  -0.333679048   0.032725317   0.001854162   0.000889901   0.244680163  -0.307453895   0.001683307

   17    3.2  1.5  0.5   0.001180297  -0.325116963   0.031068249   0.001423044  -0.000804640   0.254360061   0.298645663   0.000816473
                         0.000459380   0.409743600  -0.047443762  -0.000845085  -0.000936270  -0.366102035   0.398293078  -0.000394156

   18    4.2  1.5  0.5   0.117882740   0.000352461   0.000260854   0.106820214  -0.077351558  -0.000116190  -0.000187465  -0.001115221
                         0.032306838  -0.000278193  -0.000251282  -0.029898698  -0.051234452   0.000135774  -0.000143772   0.001193522

   19    5.2  1.5  0.5   0.000171470  -0.022581716   0.002802934   0.000150997  -0.000141729  -0.075683893  -0.001231506  -0.000111142
                        -0.000500386  -0.018301113   0.001880682   0.000553366   0.000243226  -0.053661078   0.000922144  -0.000193773

   20    6.2  1.5  0.5  -0.000020154  -0.016118881   0.001459426  -0.000202326   0.000167603  -0.053661294   0.000923248  -0.000203239
                         0.000076163   0.019915916  -0.002184151  -0.000019426   0.000069633   0.075684054   0.001232990   0.000121865

   21    7.2  1.5  0.5   0.025370025   0.000278587  -0.000295767   0.035827415  -0.051029658   0.000231100  -0.000126493  -0.006105910
                        -0.092502181   0.000339655  -0.000302257   0.128066968   0.077038507   0.000197718   0.000175195  -0.005869879

   22    8.2  1.5  0.5   0.003088841   0.000182152  -0.000068359   0.003988441  -0.004660071  -0.000188357  -0.000151532   0.066712700
                        -0.011330290   0.000116869  -0.000051266   0.014280952   0.007073269  -0.000053559   0.000115059   0.063932028

   23    1.2  1.5 -0.5   0.000154166  -0.010327372   0.002399902   0.000060809   0.001356135   0.003439321  -0.200635733   0.000825018
                        -0.000441156  -0.008468416   0.001639707   0.000277655  -0.001248348   0.002388642   0.153356615   0.000364365

   24    2.2  1.5 -0.5   0.516594369  -0.000175931   0.001459532  -0.054968609  -0.355072104   0.000461848  -0.001535506  -0.351455918
                         0.146429872   0.000618622  -0.001493586   0.014851230  -0.239893697  -0.001274583  -0.001345310   0.373375041

   25    3.2  1.5 -0.5  -0.142978846   0.001062101   0.001090924  -0.013982333   0.249700196  -0.001169955   0.000483737   0.362264852
                         0.503176943   0.000698146   0.001257527  -0.052058462  -0.369903951  -0.000408792  -0.000761750   0.340795213

   26    4.2  1.5 -0.5   0.000019665   0.095479735   0.091631872  -0.000167943  -0.000084808  -0.075728026  -0.001236006  -0.000121618
                        -0.000450559   0.077226624   0.061384094  -0.000318768   0.000157565  -0.053607683   0.000917822  -0.000203580

   27    5.2  1.5 -0.5   0.028116897  -0.000304146   0.000318731  -0.003130439   0.077385409   0.000175498   0.000178949   0.001118932
                         0.007676062   0.000427478  -0.000482051   0.000878840   0.051174007  -0.000219817   0.000132353  -0.001188581

   28    6.2  1.5 -0.5  -0.006751284   0.000047768  -0.000198527  -0.000662252  -0.051174077   0.000125252  -0.000143991   0.001190020
                         0.024664650  -0.000061157  -0.000044023  -0.002377479   0.077385667   0.000131033   0.000187085   0.001120276

   29    7.2  1.5 -0.5  -0.000445482  -0.059876275   0.074274148   0.000370829  -0.000268017   0.053383817   0.005211378   0.000189377
                        -0.000027673   0.074058852  -0.110907120  -0.000191858  -0.000144061  -0.075415631   0.006795097  -0.000105715

   30    8.2  1.5 -0.5  -0.000202823  -0.007322221   0.008268715   0.000079107   0.000117856   0.004965674  -0.056105804   0.000131512
                        -0.000080485   0.009028139  -0.012358538  -0.000026794   0.000154753  -0.006977371  -0.073405907  -0.000137851

   31    1.2  1.5 -1.5   0.590289553   0.000133526   0.000195671  -0.061641548   0.631666962  -0.000055642   0.000626954   0.009144593
                         0.161725043  -0.000126746  -0.000263434   0.017210460   0.418249091   0.000118398   0.000455470  -0.009705899

   32    2.2  1.5 -1.5   0.000284549   0.060956075   0.564175110   0.000008077  -0.000439525  -0.005998791   0.345075460   0.000602993
                        -0.001863681   0.050218646   0.385251415   0.000038839   0.001001652  -0.004082052  -0.268774916   0.000508556

   33    3.2  1.5 -1.5   0.001383569  -0.045383945  -0.386186199  -0.000110588  -0.000913827  -0.004083062  -0.268778039   0.000490534
                        -0.000022841   0.054948119   0.565570417   0.000039842  -0.000269331   0.005999967  -0.345076645  -0.000571895

   34    4.2  1.5 -1.5  -0.001193790   0.000093186   0.000089778   0.000261220  -0.001350185  -0.000083200  -0.000009535   0.064185441
                        -0.000331486  -0.000170071  -0.000154547  -0.000074063  -0.000918916   0.000225590  -0.000023609  -0.066995627

   35    5.2  1.5 -1.5  -0.000128057  -0.007659669  -0.088362953  -0.000018054  -0.000167239  -0.001265035   0.073743094   0.000328416
                         0.000578335  -0.006177290  -0.059093563  -0.000076898   0.000141539  -0.000878745  -0.056296798   0.000324021

   36    6.2  1.5 -1.5  -0.000152411   0.008450459   0.058654398  -0.000034131   0.000159090  -0.000877876  -0.056297206  -0.000045398
                         0.000092021  -0.010428934  -0.087720035  -0.000001643   0.000178846   0.001263435  -0.073743967  -0.000009817

   37    7.2  1.5 -1.5  -0.004400946   0.000180734   0.000306788  -0.000427227  -0.004664161  -0.000219456  -0.000403287   0.066725844
                         0.016031912   0.000100696   0.000182758  -0.001538945   0.007069238  -0.000078164   0.000266651   0.063923982

   38    8.2  1.5 -1.5   0.043149042  -0.000044032  -0.000362598   0.004596295   0.051012200  -0.000011498   0.000093725   0.006102262
                        -0.157495388  -0.000066312  -0.000391097   0.016461360  -0.077038964  -0.000002478  -0.000152788   0.005874951


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.002755588  -0.000002320   0.000000463   0.000000001   0.000000141  -0.000000002  -0.000000001   0.000000235
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000009   0.000000000   0.000000004   0.000000000  -0.000000035  -0.000000002   0.000000000  -0.000000173
                         0.002755585   0.000002321  -0.000000462  -0.000000001   0.000000148  -0.000000001  -0.000000001   0.000000228

    3    3.2  0.5  0.5   0.000001218  -0.001447262   0.000000001   0.000000013  -0.000000001  -0.000000018   0.000000094  -0.000000000
                         0.000001975  -0.002345114   0.000000001   0.000000024   0.000000001   0.000000075  -0.000000034   0.000000000

    4    1.2  0.5 -0.5   0.000002143  -0.002545861  -0.000000000   0.000000414   0.000000002   0.000000117  -0.000000189  -0.000000001
                         0.000000888  -0.001054450  -0.000000000   0.000000206  -0.000000001  -0.000000078  -0.000000141  -0.000000000

    5    2.2  0.5 -0.5  -0.000000888   0.001054441   0.000000000  -0.000000203   0.000000001  -0.000000112   0.000000003  -0.000000000
                         0.000002144  -0.002545862  -0.000000001   0.000000415  -0.000000002  -0.000000104   0.000000286   0.000000001

    6    3.2  0.5 -0.5   0.002234487   0.000001881  -0.000000022   0.000000001   0.000000057  -0.000000001   0.000000000   0.000000055
                        -0.001612818  -0.000001358   0.000000016  -0.000000001   0.000000053  -0.000000000   0.000000000   0.000000084

    7    1.2  1.5  1.5  -0.000001311   0.001272635   0.000001320   0.000000001  -0.000001148  -0.000000000   0.000000001   0.000006572
                         0.000000516  -0.000412428  -0.000000942  -0.000000000  -0.000001063   0.000000004   0.000000025   0.000009947

    8    2.2  1.5  1.5   0.000216145  -0.256765129   0.000000015   0.000000112   0.000000086   0.000001943  -0.000000225  -0.000000001
                         0.000357621  -0.424668886   0.000000025   0.000000205  -0.000000089  -0.000008331   0.000000071   0.000000009

    9    3.2  1.5  1.5  -0.000357618   0.424666465  -0.000000023   0.000000226  -0.000000071  -0.000007289  -0.000000342  -0.000000008
                         0.000216144  -0.256764590   0.000000016  -0.000000122  -0.000000070  -0.000001680  -0.000000956  -0.000000016

   10    4.2  1.5  1.5  -0.044294342   0.000008468   0.575608533   0.000312799  -0.005529805   0.001116794  -0.000053823   0.042020691
                         0.031960606  -0.000006202  -0.412152037  -0.000223526  -0.005107574   0.000466072   0.000001469   0.063577903

   11    5.2  1.5  1.5   0.000120201  -0.014357513   0.001050505  -0.007038137  -0.005589034  -0.129455169   0.090055352  -0.000068184
                         0.000155317  -0.023233969   0.001782419  -0.013275420   0.005629058   0.535209183  -0.032331992   0.000075951

   12    6.2  1.5  1.5   0.000060670   0.023234117  -0.001199027  -0.002072156   0.005062621   0.495547034   0.008855649  -0.000118683
                        -0.000069277  -0.014357676   0.000676342   0.001096338   0.005076116   0.119874670   0.024328245  -0.000036452

   13    7.2  1.5  1.5   0.031769863   0.000079923   0.408557857   0.000314827   0.015378733   0.000363293  -0.000161523   0.034131526
                         0.044030767   0.000105052   0.570592020   0.000468837  -0.016660090  -0.001188861   0.000096645  -0.022481037

   14    8.2  1.5  1.5   0.003480451   0.000010459   0.021197141   0.000003586   0.033781866  -0.000154064  -0.000888498  -0.427983680
                         0.004816330   0.000014768   0.029634169   0.000013483  -0.036515260   0.000584691  -0.000019927   0.282935735

   15    1.2  1.5  0.5  -0.000543877   0.300932848   0.000000012  -0.000000296  -0.000000001   0.000000224   0.000001886  -0.000000012
                        -0.001126287   0.487624916   0.000000019  -0.000000560   0.000000003  -0.000000924  -0.000000678   0.000000017

   16    2.2  1.5  0.5  -0.233834095  -0.000011599  -0.000002251  -0.000000002   0.000002179  -0.000000049   0.000000015  -0.000006614
                         0.165556941   0.000439688   0.000001583   0.000000000   0.000001981  -0.000000012   0.000000007  -0.000009903

   17    3.2  1.5  0.5  -0.165555912  -0.000929299  -0.000001480   0.000000001   0.000001887  -0.000000002   0.000000007  -0.000005388
                        -0.233831204  -0.001476736  -0.000002110   0.000000002  -0.000002079   0.000000028  -0.000000011   0.000003689

   18    4.2  1.5  0.5   0.000062949  -0.000003659   0.000125738   0.012928943   0.004789435   0.113156261   0.213772407   0.000539404
                         0.000074911   0.000002166   0.000046012   0.024347500  -0.004841318  -0.469353826  -0.076693365  -0.000029486

   19    5.2  1.5  0.5   0.038337383   0.000026026  -0.023713083  -0.000189021  -0.008501969   0.001367053  -0.000485533   0.341766232
                        -0.027705720  -0.000019474   0.016891992   0.000125937  -0.007987674   0.000423847  -0.000002522   0.517499727

   20    6.2  1.5  0.5   0.027705814   0.000022882   0.029728125  -0.000116593  -0.055873759  -0.000001076   0.000478647   0.341222065
                         0.038337447   0.000032548   0.041607353  -0.000193874   0.060437449  -0.000587014   0.000170623  -0.225195417

   21    7.2  1.5  0.5  -0.000115021   0.005056958   0.000046340   0.009165680   0.004443455   0.427498204  -0.103211187  -0.000601177
                         0.000102950  -0.003120824   0.000070881  -0.004868422   0.004482929   0.103074854  -0.287737073  -0.001459254

   22    8.2  1.5  0.5   0.000021319  -0.046203563   0.000334852   0.017916661  -0.000478339  -0.013051811   0.050734169  -0.000195150
                        -0.000009650   0.028514060  -0.000191610  -0.009492867  -0.000407637  -0.003171152   0.141147511  -0.000030125

   23    1.2  1.5 -0.5   0.464622653   0.000933466  -0.000000520  -0.000000019   0.000000685   0.000000003   0.000000001  -0.000001134
                        -0.335357117  -0.000832446   0.000000373   0.000000011   0.000000631   0.000000002  -0.000000021  -0.000001717

   24    2.2  1.5 -0.5   0.000157534   0.152685144  -0.000000002   0.000001312  -0.000000034  -0.000000715  -0.000011277  -0.000000016
                        -0.000410662   0.242435008  -0.000000001   0.000002424   0.000000037   0.000002859   0.000003987  -0.000000003

   25    3.2  1.5 -0.5  -0.001423656   0.242432990   0.000000002   0.000002263  -0.000000017  -0.000002732  -0.000002142   0.000000001
                         0.001008737  -0.152682891  -0.000000002  -0.000001228  -0.000000022  -0.000000686  -0.000006283  -0.000000013

   26    4.2  1.5 -0.5  -0.000002551  -0.000086823   0.022446363  -0.000132232   0.354413629  -0.006669146   0.000414254  -0.125314930
                        -0.000003402   0.000045121  -0.016043490  -0.000014155   0.327785424  -0.001372396   0.000346659  -0.189503389

   27    5.2  1.5 -0.5   0.000016593  -0.024817644  -0.000112317   0.013688649   0.000903445   0.002665563   0.583372238   0.000389608
                         0.000027951  -0.040267097  -0.000196250   0.025680868  -0.001112059  -0.011450572  -0.209685520   0.000289199

   28    6.2  1.5 -0.5   0.000033595  -0.040267217  -0.000190922  -0.045106939   0.000326977   0.080147174   0.138576406  -0.000484951
                        -0.000021315   0.024817671   0.000121650   0.023962685   0.000492033   0.019339922   0.385156836  -0.000148807

   29    7.2  1.5 -0.5   0.003477865   0.000066872   0.006038879  -0.000072066   0.298621716  -0.001211773  -0.001355156   0.254868830
                         0.004818390   0.000139128   0.008451342   0.000042694  -0.322893685   0.006196228   0.000808703  -0.168558673

   30    8.2  1.5 -0.5  -0.031775919  -0.000016004   0.011830221  -0.000214435  -0.009069436   0.000172110  -0.000173293  -0.125715386
                        -0.044024139  -0.000017074   0.016518107  -0.000321554   0.009840059  -0.000602175  -0.000093380   0.083023324

   31    1.2  1.5 -1.5  -0.001017955  -0.000001017  -0.000000001   0.000000758   0.000000002  -0.000000369  -0.000011313   0.000000016
                        -0.000868023  -0.000000984  -0.000000001   0.000001426   0.000000003   0.000001534   0.000004064  -0.000000019

   32    2.2  1.5 -1.5   0.399725901   0.000336541  -0.000000191   0.000000024  -0.000006294   0.000000122  -0.000000005  -0.000000139
                        -0.294093858  -0.000247692   0.000000134  -0.000000015  -0.000005910   0.000000027   0.000000008  -0.000000194

   33    3.2  1.5 -1.5  -0.294091838  -0.000247690  -0.000000150  -0.000000014   0.000005194  -0.000000021   0.000000017  -0.000000836
                        -0.399724492  -0.000336539  -0.000000213  -0.000000024  -0.000005504   0.000000099  -0.000000008   0.000000554

   34    4.2  1.5 -1.5  -0.000005451  -0.028693063  -0.000180480   0.331504191  -0.000671727  -0.001766501  -0.071614335  -0.000042545
                        -0.000008971  -0.046477648  -0.000339631   0.625537176   0.001006021   0.007307220   0.025712978  -0.000033142

   35    5.2  1.5 -1.5   0.022155503   0.000170485   0.012233773   0.001735275   0.404530626  -0.007772209   0.000008722   0.052791236
                        -0.015971648  -0.000097500  -0.008756808  -0.001126122   0.373579038  -0.001584777   0.000100789   0.079874344

   36    6.2  1.5 -1.5  -0.015971714   0.000029543   0.001361468  -0.000772690  -0.345906112   0.001397766   0.000117163   0.021972668
                        -0.022155701   0.000087220   0.001898996  -0.001139156   0.374584194  -0.007032674   0.000041852  -0.014386106

   37    7.2  1.5 -1.5  -0.000114039   0.046200560  -0.000490735   0.620091937  -0.000962632   0.022028067  -0.013841707  -0.000070678
                         0.000066473  -0.028522536   0.000279247  -0.328620250  -0.000786596   0.005333171  -0.038365149  -0.000173088

   38    8.2  1.5 -1.5  -0.000015315   0.005058559  -0.000009611   0.032217893   0.000454031   0.048473436   0.173357939  -0.000723229
                         0.000009642  -0.003117930   0.000010854  -0.017094819   0.000403070   0.011678372   0.483012775  -0.000515549


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000000241  -0.000000000  -0.000000003   0.000000019   0.000000002  -0.000000858  -0.000000995   0.000000002
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000049   0.000000001   0.000000000  -0.000000015   0.000000001  -0.000000519   0.000000308  -0.000000002
                         0.000000219   0.000000000   0.000000003   0.000000018   0.000000001   0.000000415  -0.000001048  -0.000000000

    3    3.2  0.5  0.5  -0.000000000   0.000000249  -0.000000173   0.000000002  -0.000000020  -0.000000000   0.000000001  -0.000000207
                        -0.000000000  -0.000000007  -0.000000190  -0.000000001  -0.000000128   0.000000000  -0.000000001  -0.000000053

    4    1.2  0.5 -0.5  -0.000000000   0.000000206  -0.000000005  -0.000000001   0.000000331   0.000000001   0.000000001   0.000000518
                         0.000000000  -0.000000126   0.000000019   0.000000003   0.000000789   0.000000002   0.000000002   0.000000851

    5    2.2  0.5 -0.5   0.000000000   0.000000157   0.000000022  -0.000000003  -0.000000191   0.000000001  -0.000000001   0.000000740
                        -0.000000000   0.000000161  -0.000000009  -0.000000001   0.000000636   0.000000001  -0.000000001  -0.000000803

    6    3.2  0.5 -0.5   0.000000216  -0.000000000  -0.000000002   0.000000135  -0.000000000  -0.000000123  -0.000000153   0.000000000
                        -0.000000124  -0.000000000   0.000000001   0.000000219   0.000000000   0.000000030  -0.000000150  -0.000000001

    7    1.2  1.5  1.5  -0.000002400   0.000000000   0.000161717  -0.008697952   0.000356198  -0.044846037  -0.097938175   0.000084593
                         0.000001374  -0.000000007  -0.000316702  -0.014127423  -0.000031178   0.010897633  -0.095851078  -0.000104018

    8    2.2  1.5  1.5   0.000000011  -0.000003816   0.108980535  -0.000162385   0.008644486  -0.000168928  -0.000205680  -0.000278768
                         0.000000017   0.000000090   0.117370059   0.000103202   0.058408570  -0.000424123   0.000100960  -0.000380427

    9    3.2  1.5  1.5   0.000000019  -0.000000055   0.119580072  -0.000088072  -0.038155959  -0.000434525   0.000247871   0.008091514
                        -0.000000013  -0.000002947  -0.110963673  -0.000102098   0.005344523   0.000189899   0.000242785  -0.031275386

   10    4.2  1.5  1.5   0.073831496   0.000001942   0.001527351   0.004356238   0.000487755   0.261969564  -0.065655906  -0.000204751
                        -0.042270178   0.000123470  -0.001158342   0.007107713  -0.000265838  -0.063735755  -0.064142450   0.000791990

   11    5.2  1.5  1.5  -0.000158449   0.173664089   0.309508627   0.001208817  -0.057668525  -0.001044901   0.000186527   0.174121970
                        -0.000265743  -0.005282250   0.339948235  -0.000945075  -0.372237883  -0.002659006  -0.000220490   0.044986061

   12    6.2  1.5  1.5   0.000317588   0.008610247   0.321773144   0.000925958   0.428391322  -0.001382129   0.001068631  -0.022811957
                        -0.000230872   0.286529042  -0.292874189   0.001232780  -0.066258537   0.000384307   0.000938342   0.088542903

   13    7.2  1.5  1.5  -0.064591695  -0.000295985  -0.001486466   0.014425171   0.000262332  -0.069055066  -0.013812439   0.000055912
                        -0.112780018   0.000046470  -0.002025643  -0.008866885   0.001771508  -0.283804336   0.014156310   0.000105338

   14    8.2  1.5  1.5  -0.072689270   0.000122435   0.000017883  -0.066564810  -0.000012259   0.044979463  -0.463821571  -0.000124088
                        -0.126742553  -0.000071283   0.000145338   0.040983693  -0.001981760   0.185240034   0.473936907  -0.000300230

   15    1.2  1.5  0.5  -0.000000008   0.000005448  -0.003465618  -0.000475592   0.025751036   0.000086171  -0.000166873  -0.054776170
                        -0.000000018  -0.000000157  -0.003791704   0.000360853   0.167016981  -0.000114093   0.000061056  -0.014172820

   16    2.2  1.5  0.5  -0.000004739   0.000000002  -0.000186116   0.006303285  -0.000263032  -0.043378792   0.105947605  -0.000029033
                         0.000002642  -0.000000002   0.000143613   0.009937474   0.000138349   0.009418298   0.102522839  -0.000177093

   17    3.2  1.5  0.5  -0.000003662  -0.000000019  -0.000219266   0.014406122  -0.000079818  -0.029005753   0.061990521   0.000351443
                        -0.000006485   0.000000000  -0.000320590  -0.008992080   0.000082388  -0.120902007  -0.065241325   0.000150995

   18    4.2  1.5  0.5   0.000367731  -0.016410936   0.383476111   0.000148013  -0.017195715  -0.000832367  -0.000260225  -0.375498282
                         0.000577752   0.000465228   0.420616308  -0.000192128  -0.111233025  -0.002099901  -0.000027388  -0.097016941

   19    5.2  1.5  0.5   0.232009624   0.000004478  -0.000036894  -0.000639034  -0.000710356   0.342161876  -0.172947471  -0.000549693
                        -0.133188312  -0.000068006   0.000092161  -0.001038530  -0.000014340  -0.083601556  -0.169151665   0.002383969

   20    6.2  1.5  0.5   0.263513686   0.000201180   0.000240266  -0.021522085   0.000196962   0.100965178   0.015983976  -0.000070380
                         0.459551330   0.000102114   0.000269366   0.013233429  -0.000707865   0.413797917  -0.016627643  -0.000279564

   21    7.2  1.5  0.5  -0.000528572   0.001123063  -0.340205957  -0.000294080  -0.204037350  -0.000866027   0.000054333  -0.119367332
                         0.000443007   0.038374550   0.310160328  -0.000328796   0.031496394   0.000400618   0.000306791   0.461996603

   22    8.2  1.5  0.5   0.000365082   0.020676378  -0.043353892   0.000596098   0.246172713   0.000194008   0.000504163  -0.035818804
                        -0.000345856   0.698589368   0.039479305   0.000783300  -0.037942471  -0.000166675   0.000481625   0.138626980

   23    1.2  1.5 -0.5  -0.000004863   0.000000002  -0.000473421  -0.002729733  -0.000074018  -0.163905826   0.041074373  -0.000035435
                         0.000002790   0.000000019   0.000354745  -0.004444989   0.000123550   0.039914972   0.040160287  -0.000170775

   24    2.2  1.5 -0.5  -0.000000003  -0.000005344  -0.007757909   0.000190919  -0.007971016  -0.000028980   0.000168277   0.142324520
                        -0.000000000   0.000000221  -0.008736211  -0.000141115  -0.044422254   0.000291830  -0.000068096   0.037617820

   25    3.2  1.5 -0.5   0.000000016   0.000000264   0.012495572  -0.000249733  -0.122371489  -0.000044870  -0.000312829  -0.023944811
                        -0.000000010   0.000007381  -0.011257025  -0.000301770   0.019303790   0.000104684  -0.000224085   0.087422270

   26    4.2  1.5 -0.5   0.014469457   0.000012389   0.000224284   0.298730553  -0.002285124   0.110879459   0.276476185  -0.000158306
                        -0.008312325  -0.000683762  -0.000087608   0.484952583   0.000032680  -0.026954129   0.270504841  -0.000203489

   27    5.2  1.5 -0.5  -0.000040380   0.268003912   0.000869402   0.000087818   0.053593927   0.000289917  -0.001758268  -0.232472154
                        -0.000056769  -0.007686967   0.000950523  -0.000000379   0.349368425   0.000668305   0.001707502  -0.060108166

   28    6.2  1.5 -0.5  -0.000117338  -0.015434968  -0.018437738   0.000201584   0.421121335   0.000578900   0.000280881  -0.005417573
                         0.000191377  -0.529120003   0.016835512   0.000315072  -0.064736483  -0.000453687  -0.000080861   0.020156362

   29    7.2  1.5 -0.5   0.019215347  -0.000681863   0.000232572   0.391513122   0.000039597   0.049471042  -0.333220976   0.000287419
                         0.033516070  -0.000101763   0.000371366  -0.241176172  -0.000952536   0.203293069   0.340576164  -0.000114316

   30    8.2  1.5 -0.5   0.347326805   0.000491514  -0.000583754   0.049965583  -0.000080042  -0.058762878  -0.101051020   0.000669201
                         0.606314932   0.000104031  -0.000781267  -0.030817764   0.000238522  -0.241248833   0.103283104   0.000180397

   31    1.2  1.5 -1.5   0.000000004   0.000002775  -0.011083804   0.000348327   0.006950435   0.000105866  -0.000044927   0.132924607
                         0.000000006  -0.000000082  -0.012151444  -0.000067890   0.044929422   0.000338633   0.000126000   0.034323065

   32    2.2  1.5 -1.5  -0.000003248  -0.000000000   0.000142742  -0.082734076   0.000462062   0.057396047  -0.000596216   0.000020656
                         0.000001887   0.000000020  -0.000126693  -0.137090133  -0.000006319  -0.014342523  -0.000161097   0.000225993

   33    3.2  1.5 -1.5   0.000001468  -0.000000023  -0.000073136   0.139644941  -0.000009275  -0.009565086  -0.022811962  -0.000335445
                         0.000002499  -0.000000002  -0.000111549  -0.084335397   0.000479966  -0.037026795   0.023332208  -0.000086842

   34    4.2  1.5 -1.5  -0.000062131  -0.085160899   0.005544022   0.001541220  -0.041213038  -0.000060883   0.000576686   0.087513143
                        -0.000105705   0.002541575   0.006054768  -0.001154609  -0.266919155   0.000547926  -0.000590441   0.022682160

   35    5.2  1.5 -1.5   0.150804096  -0.000003140  -0.001229356  -0.241456793   0.002865365  -0.364820728   0.130175755   0.000091485
                        -0.086223445  -0.000307631   0.000893451  -0.391384530  -0.000050107   0.088560074   0.127370893  -0.000277829

   36    6.2  1.5 -1.5  -0.142335888  -0.000392343   0.000922379   0.370056325   0.000173002   0.102333488   0.065293318  -0.001343631
                        -0.248730025  -0.000030292   0.001218718  -0.228378516   0.001445052   0.421079342  -0.066643014  -0.000424934

   37    7.2  1.5 -1.5  -0.000276397  -0.003856784  -0.012354179   0.001543532   0.288773321   0.001735889   0.000117067  -0.004598716
                         0.000114587  -0.129897396   0.011283737   0.001995227  -0.044580867  -0.000434015  -0.000010819   0.017687024

   38    8.2  1.5 -1.5   0.000143231  -0.004234763   0.057259976  -0.000135128  -0.185088970  -0.001821038  -0.000317350  -0.166060064
                        -0.000004433  -0.145546643  -0.052227862  -0.000059733   0.028666496   0.000738518   0.000052613   0.643064598


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5  -0.007430057  -0.000014663  -0.006289311  -0.000056858  -0.000003626  -0.008911213
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.003612310  -0.000000133  -0.004266134  -0.000028103   0.000000002  -0.000000962
                        -0.007791489   0.000017229   0.001676469   0.000040791   0.000003626   0.008910894

    3    3.2  0.5  0.5  -0.000009123   0.004751691  -0.000046489   0.005109339  -0.005333198   0.000002168
                         0.000022166   0.002707050  -0.000088714   0.006218493  -0.007144448   0.000002906

    4    1.2  0.5 -0.5  -0.000001164   0.000249148   0.000039205  -0.004248788  -0.008501517   0.000003459
                        -0.000011420   0.006600911   0.000050094  -0.005751018  -0.002670929   0.000001087

    5    2.2  0.5 -0.5   0.000011914   0.006014340   0.000005334  -0.003697595   0.002669916  -0.000001088
                        -0.000004415  -0.005691873   0.000050481  -0.003539025  -0.008501501   0.000003458

    6    3.2  0.5 -0.5   0.002404432  -0.000025915  -0.008949157  -0.000095550   0.000002939   0.007229383
                         0.002714349   0.000018539   0.001201956   0.000034335  -0.000002123  -0.005217476

    7    1.2  1.5  1.5   0.097469007  -0.000115612   0.059442300   0.000094602   0.000151474   0.000007422
                         0.112805494   0.000086762  -0.007238514  -0.000037955  -0.000064338  -0.000005381

    8    2.2  1.5  1.5  -0.000028853   0.045046090  -0.000398694   0.048146486  -0.036071962   0.000014662
                         0.000279903   0.026209445  -0.000853873   0.059699073  -0.049252756   0.000020024

    9    3.2  1.5  1.5  -0.000466233  -0.026206945   0.000693324  -0.059697560   0.049250457  -0.000020046
                        -0.000384923   0.045041857  -0.000416265   0.048144881  -0.036070337   0.000014673

   10    4.2  1.5  1.5  -0.108107272   0.001384013   0.402395470   0.004838398  -0.000200416   0.359800768
                        -0.122129864  -0.001292665  -0.053991859  -0.002059570   0.000195348  -0.259585787

   11    5.2  1.5  1.5   0.000079548  -0.213657697   0.001857185  -0.229821927   0.132908607  -0.000932202
                        -0.000670627  -0.121556309   0.002695391  -0.279383180   0.177827883  -0.001175100

   12    6.2  1.5  1.5   0.001265252   0.121556443  -0.004798022   0.279369382  -0.177834278  -0.000579535
                         0.000621177  -0.213663429   0.002342033  -0.229818612   0.132913701   0.000606925

   13    7.2  1.5  1.5  -0.154810572  -0.000110966  -0.051524784  -0.000677601  -0.000584172  -0.258043553
                         0.136373462  -0.000856815  -0.382424393  -0.003390744  -0.000657726  -0.357669494

   14    8.2  1.5  1.5   0.292125494  -0.000026473  -0.025502198  -0.000395656  -0.000080169  -0.028286724
                        -0.252107334  -0.000022835  -0.204710112  -0.001100637  -0.000097377  -0.039148167

   15    1.2  1.5  0.5  -0.000010877   0.026163918  -0.000260466   0.028126364   0.042146703  -0.000052843
                        -0.000016739   0.014904944  -0.000841980   0.034229578   0.056460481  -0.000110905

   16    2.2  1.5  0.5   0.083046851  -0.000282075  -0.064346347  -0.000876316   0.000014254  -0.028723794
                         0.094717926   0.000201868   0.007840629   0.000314310   0.000043053   0.020334405

   17    3.2  1.5  0.5   0.034475740  -0.000278901  -0.016819643  -0.000517202  -0.000118896  -0.020339804
                        -0.030655331  -0.000315117  -0.132874920  -0.001306323  -0.000159881  -0.028730996

   18    4.2  1.5  0.5   0.000597837  -0.316510168  -0.000619990   0.158347003   0.000038194  -0.000511437
                        -0.000461634  -0.175205464  -0.001674591   0.188030506  -0.000006705  -0.000608694

   19    5.2  1.5  0.5   0.265274535  -0.000577094   0.161738587   0.001298975  -0.000078783  -0.311526503
                         0.307379537   0.001018263  -0.019594661  -0.000846489   0.000055859   0.225109592

   20    6.2  1.5  0.5   0.307276909   0.000670774  -0.019626743  -0.000742280  -0.000088176  -0.225138085
                        -0.265183826   0.000304851  -0.161976296  -0.001096923  -0.000129295  -0.311565464

   21    7.2  1.5  0.5  -0.000579142  -0.160957597  -0.002277682   0.217297822  -0.038684920   0.000915784
                        -0.000937266   0.291403446   0.000833111  -0.182405517   0.028877525  -0.000826864

   22    8.2  1.5  0.5  -0.001104511  -0.139981721   0.003739896  -0.257374016   0.353667734  -0.000000935
                        -0.000554045   0.246738957  -0.002006261   0.211019691  -0.264006403  -0.000009301

   23    1.2  1.5 -0.5  -0.013240172   0.000047074   0.049263489   0.000795165   0.000083655   0.057131897
                        -0.014947509  -0.000106116  -0.006614868  -0.000442526  -0.000089968  -0.041232327

   24    2.2  1.5 -0.5  -0.000090172   0.119342013  -0.000364668   0.023637658   0.021308344   0.000026503
                         0.000227558   0.067069840  -0.000691143   0.027765123   0.028008687  -0.000036802

   25    3.2  1.5 -0.5   0.000287766  -0.008429444  -0.001385644   0.108081678   0.028015990  -0.000161350
                         0.000153614   0.014193176   0.000663453  -0.090069519  -0.021313593   0.000116894

   26    4.2  1.5 -0.5   0.265397871  -0.000365121   0.161805677   0.001128473   0.000670366   0.000034423
                         0.307081064   0.000637588  -0.019758714  -0.000703192  -0.000427418   0.000017849

   27    5.2  1.5 -0.5  -0.000955405   0.316770824   0.000635608  -0.158475192   0.229732660  -0.000058418
                         0.000771893   0.175065193   0.001798329  -0.187852905   0.308133041  -0.000076904

   28    6.2  1.5 -0.5  -0.000402387  -0.174973716  -0.001679607   0.188011439   0.308171892  -0.000122875
                        -0.000648946   0.316609930   0.000586400  -0.158605384  -0.229761282   0.000096922

   29    7.2  1.5 -0.5  -0.291988777  -0.000923342   0.025486282   0.001076023  -0.000625847  -0.028250988
                         0.252089255  -0.000364729   0.204595363   0.001761910  -0.001063334  -0.039144763

   30    8.2  1.5 -0.5  -0.154699389  -0.000980380  -0.051565076  -0.001415035   0.000003680   0.258277906
                         0.136275512  -0.001238407  -0.382207217  -0.004100041  -0.000008593   0.357872265

   31    1.2  1.5 -1.5   0.000025230  -0.116262611  -0.000137481   0.058184825   0.000005465  -0.000125226
                        -0.000062243  -0.064342206  -0.000275208   0.069055309   0.000007354  -0.000106781

   32    2.2  1.5 -1.5   0.023149372  -0.000316937  -0.085172052  -0.000871709   0.000019989   0.049175907
                         0.025658325   0.000139308   0.012230328   0.000378013  -0.000014709  -0.036176607

   33    3.2  1.5 -1.5   0.025655237   0.000484037   0.012230581   0.000182745  -0.000014727  -0.036174902
                        -0.023146646   0.000414188   0.085169358   0.000726217  -0.000020007  -0.049173670

   34    4.2  1.5 -1.5  -0.000678303   0.213738474  -0.002141189   0.229758073   0.265453956   0.000132651
                         0.001201253   0.121689078  -0.004826802   0.279572145   0.355493134   0.000246436

   35    5.2  1.5 -1.5  -0.108009093   0.000770297   0.402287775   0.003348339  -0.001241553  -0.180097678
                        -0.122073913  -0.000215196  -0.053793859  -0.000832339   0.000841669   0.129815774

   36    6.2  1.5 -1.5  -0.122078567  -0.001229487  -0.053786222  -0.001919299  -0.000370979   0.129820349
                         0.108010313  -0.001494048  -0.402278562  -0.004951170  -0.000752724   0.180104456

   37    7.2  1.5 -1.5  -0.000690000  -0.140061216   0.002537764  -0.257467210  -0.353383009   0.000754452
                         0.000021357   0.246910410  -0.001983779   0.211182358   0.263882921  -0.000452395

   38    8.2  1.5 -1.5  -0.000098852   0.160936263   0.001569851  -0.217392354  -0.038719979   0.000105670
                        -0.000058577  -0.291517101  -0.000813866   0.182504808   0.028870021  -0.000068871


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.000%  16.339%  50.314%   0.000%   0.000%  33.325%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%  17.016%  49.637%   0.000%   0.000%  33.325%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  66.625%   0.000%   0.000%   0.028%  33.325%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5  16.339%   0.000%   0.000%  50.314%  33.325%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5  17.016%   0.000%   0.000%  49.637%  33.325%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%  66.625%   0.028%   0.000%   0.000%  33.325%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.012%   0.000%   0.000%  37.419%
    8    2.2  1.5  1.5   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   4.797%   0.571%   0.000%
    9    3.2  1.5  1.5   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   4.671%   0.457%   0.000%
   10    4.2  1.5  1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.004%   0.454%   0.000%   0.000%   0.000%
   11    5.2  1.5  1.5   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   1.017%   0.009%   0.000%
   12    6.2  1.5  1.5   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   1.026%   0.017%   0.000%
   13    7.2  1.5  1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.004%   0.453%   0.000%   0.000%   0.028%
   14    8.2  1.5  1.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   2.664%
   15    1.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%  56.802%   0.019%   0.000%
   16    2.2  1.5  0.5   0.000%   0.003%   0.002%   0.000%   0.000%   0.000%  13.485%   0.000%   0.000%  28.774%
   17    3.2  1.5  0.5   0.000%   0.003%   0.002%   0.000%   0.000%   0.000%  14.933%   0.000%   0.000%  27.359%
   18    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   1.494%   0.000%
   19    5.2  1.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.003%   0.936%   0.000%   0.000%   0.084%
   20    6.2  1.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.003%   0.955%   0.000%   0.000%   0.066%
   21    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.009%   0.920%   0.000%
   22    8.2  1.5  0.5   0.002%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.445%   0.014%   0.000%
   23    1.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%  56.804%   0.000%   0.000%   0.018%
   24    2.2  1.5 -0.5   0.003%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%  13.459%  28.831%   0.000%
   25    3.2  1.5 -0.5   0.003%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%  14.961%  27.363%   0.000%
   26    4.2  1.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.508%
   27    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.003%   0.000%   0.000%   0.936%   0.085%   0.000%
   28    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.003%   0.000%   0.000%   0.956%   0.065%   0.000%
   29    7.2  1.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.009%   0.000%   0.000%   0.907%
   30    8.2  1.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.004%   0.445%   0.000%   0.000%   0.014%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.013%  37.460%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   4.791%   0.000%   0.000%   0.624%
   33    3.2  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   4.677%   0.000%   0.000%   0.508%
   34    4.2  1.5 -1.5   0.002%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.454%   0.000%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   1.017%   0.000%   0.000%   0.010%
   36    6.2  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   1.026%   0.000%   0.000%   0.018%
   37    7.2  1.5 -1.5   0.002%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.453%   0.028%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.002%   2.667%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.001%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.001%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.451%   0.000%   0.000%  57.396%   0.016%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%  46.718%   0.006%   0.000%   0.000%  19.131%   0.000%  24.627%   0.000%   0.000%
    9    3.2  1.5  1.5   0.000%  46.958%   0.006%   0.000%   0.000%  19.131%   0.000%  24.627%   0.000%   0.000%
   10    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.861%   0.000%   0.298%   0.000%  50.119%   0.000%
   11    5.2  1.5  1.5   0.000%   1.132%   0.000%   0.000%   0.000%   0.861%   0.000%   0.075%   0.000%   0.023%
   12    6.2  1.5  1.5   0.000%   1.114%   0.000%   0.000%   0.000%   0.861%   0.000%   0.075%   0.000%   0.001%
   13    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.007%   0.854%   0.000%   0.295%   0.000%  49.249%   0.000%
   14    8.2  1.5  1.5   0.032%   0.000%   0.000%   0.854%   0.007%   0.000%   0.004%   0.000%   0.133%   0.000%
   15    1.2  1.5  0.5   0.000%   0.001%   0.002%   0.000%   0.000%   6.377%   0.000%  32.834%   0.000%   0.000%
   16    2.2  1.5  0.5   0.355%   0.000%   0.000%  18.407%  26.249%   0.000%   8.209%   0.000%   0.000%   0.000%
   17    3.2  1.5  0.5   0.322%   0.000%   0.000%  19.873%  24.783%   0.000%   8.209%   0.000%   0.000%   0.000%
   18    4.2  1.5  0.5   0.000%   1.230%   0.861%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.076%
   19    5.2  1.5  0.5   0.001%   0.000%   0.000%   0.861%   0.000%   0.000%   0.224%   0.000%   0.085%   0.000%
   20    6.2  1.5  0.5   0.001%   0.000%   0.000%   0.861%   0.000%   0.000%   0.224%   0.000%   0.261%   0.000%
   21    7.2  1.5  0.5   0.000%   1.768%   0.854%   0.000%   0.000%   0.007%   0.000%   0.004%   0.000%   0.011%
   22    8.2  1.5  0.5   0.000%   0.022%   0.007%   0.000%   0.000%   0.854%   0.000%   0.295%   0.000%   0.041%
   23    1.2  1.5 -0.5   0.001%   0.000%   0.000%   0.002%   6.377%   0.000%  32.834%   0.000%   0.000%   0.000%
   24    2.2  1.5 -0.5   0.000%   0.324%  18.363%   0.000%   0.000%  26.293%   0.000%   8.209%   0.000%   0.000%
   25    3.2  1.5 -0.5   0.000%   0.291%  19.918%   0.000%   0.000%  24.738%   0.000%   8.209%   0.000%   0.000%
   26    4.2  1.5 -0.5   1.216%   0.000%   0.000%   0.861%   0.000%   0.000%   0.000%   0.000%   0.076%   0.000%
   27    5.2  1.5 -0.5   0.000%   0.001%   0.861%   0.000%   0.000%   0.000%   0.000%   0.224%   0.000%   0.085%
   28    6.2  1.5 -0.5   0.000%   0.001%   0.861%   0.000%   0.000%   0.000%   0.000%   0.224%   0.000%   0.261%
   29    7.2  1.5 -0.5   1.782%   0.000%   0.000%   0.854%   0.007%   0.000%   0.004%   0.000%   0.011%   0.000%
   30    8.2  1.5 -0.5   0.022%   0.000%   0.000%   0.007%   0.854%   0.000%   0.295%   0.000%   0.041%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.410%  57.394%   0.000%   0.000%   0.018%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5  46.671%   0.000%   0.000%   0.005%  19.132%   0.000%  24.627%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5  46.901%   0.000%   0.000%   0.005%  19.132%   0.000%  24.627%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.861%   0.000%   0.298%   0.000%  50.119%
   35    5.2  1.5 -1.5   1.130%   0.000%   0.000%   0.000%   0.861%   0.000%   0.075%   0.000%   0.023%   0.000%
   36    6.2  1.5 -1.5   1.114%   0.000%   0.000%   0.000%   0.861%   0.000%   0.075%   0.000%   0.001%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.007%   0.000%   0.000%   0.854%   0.000%   0.295%   0.000%  49.251%
   38    8.2  1.5 -1.5   0.000%   0.029%   0.854%   0.000%   0.000%   0.007%   0.000%   0.004%   0.000%   0.133%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.028%   0.000%   0.213%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.565%   0.000%   0.349%   0.000%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.661%   0.000%   0.148%   0.000%
   10    4.2  1.5  1.5   0.006%   0.000%   0.000%   0.581%   0.724%   0.000%   0.000%   0.007%   0.000%   7.269%
   11    5.2  1.5  1.5   0.006%  30.321%   0.916%   0.000%   0.000%   3.019%  21.136%   0.000%  14.189%   0.001%
   12    6.2  1.5  1.5   0.005%  25.994%   0.067%   0.000%   0.000%   8.217%  18.931%   0.000%  18.791%   0.000%
   13    7.2  1.5  1.5   0.051%   0.000%   0.000%   0.167%   1.689%   0.000%   0.001%   0.029%   0.000%   8.531%
   14    8.2  1.5  1.5   0.247%   0.000%   0.000%  26.322%   2.135%   0.000%   0.000%   0.611%   0.000%   3.634%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   2.856%   0.000%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.197%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.029%   0.000%   1.546%
   18    4.2  1.5  0.5   0.005%  23.310%   5.158%   0.000%   0.000%   0.027%  32.397%   0.000%   1.267%   0.001%
   19    5.2  1.5  0.5   0.014%   0.000%   0.000%  38.461%   7.157%   0.000%   0.000%   0.000%   0.000%  12.406%
   20    6.2  1.5  0.5   0.677%   0.000%   0.000%  16.715%  28.063%   0.000%   0.000%   0.064%   0.000%  18.142%
   21    7.2  1.5  0.5   0.004%  19.338%   9.345%   0.000%   0.000%   0.147%  21.194%   0.000%   4.262%   0.000%
   22    8.2  1.5  0.5   0.000%   0.018%   2.250%   0.000%   0.000%  48.845%   0.344%   0.000%   6.204%   0.000%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   2.846%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.204%   0.000%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.028%   0.000%   1.535%   0.000%
   26    4.2  1.5 -0.5  23.305%   0.005%   0.000%   5.162%   0.028%   0.000%   0.000%  32.442%   0.001%   1.302%
   27    5.2  1.5 -0.5   0.000%   0.014%  38.429%   0.000%   0.000%   7.189%   0.000%   0.000%  12.493%   0.000%
   28    6.2  1.5 -0.5   0.000%   0.680%  16.755%   0.000%   0.000%  28.021%   0.062%   0.000%  18.153%   0.000%
   29    7.2  1.5 -0.5  19.344%   0.004%   0.000%   9.337%   0.149%   0.000%   0.000%  21.145%   0.000%   4.378%
   30    8.2  1.5 -0.5   0.018%   0.000%   0.000%   2.270%  48.825%   0.000%   0.000%   0.345%   0.000%   6.165%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.027%   0.000%   0.207%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.564%   0.000%   0.350%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.661%   0.000%   0.146%
   34    4.2  1.5 -1.5   0.000%   0.006%   0.579%   0.000%   0.000%   0.726%   0.007%   0.000%   7.294%   0.000%
   35    5.2  1.5 -1.5  30.321%   0.006%   0.000%   0.917%   3.018%   0.000%   0.000%  21.148%   0.001%  14.094%
   36    6.2  1.5 -1.5  25.996%   0.005%   0.000%   0.069%   8.213%   0.000%   0.000%  18.910%   0.000%  18.778%
   37    7.2  1.5 -1.5   0.000%   0.051%   0.166%   0.000%   0.000%   1.689%   0.028%   0.001%   8.538%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.249%  26.335%   0.000%   0.000%   2.120%   0.601%   0.000%   3.508%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.006%   0.000%   0.004%   0.000%   0.000%   0.008%
    2    2.2  0.5  0.5   0.000%   0.000%   0.007%   0.000%   0.002%   0.000%   0.000%   0.008%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.006%   0.008%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.005%   0.008%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.007%   0.000%   0.003%   0.008%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.008%   0.000%   0.000%   0.008%
    7    1.2  1.5  1.5   1.878%   0.000%   2.223%   0.000%   0.359%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.272%   0.000%   0.588%   0.373%   0.000%
    9    3.2  1.5  1.5   0.000%   0.104%   0.000%   0.272%   0.000%   0.588%   0.373%   0.000%
   10    4.2  1.5  1.5   0.842%   0.000%   2.660%   0.000%  16.484%   0.003%   0.000%  19.684%
   11    5.2  1.5  1.5   0.000%   3.234%   0.000%   6.043%   0.001%  13.087%   4.929%   0.000%
   12    6.2  1.5  1.5   0.000%   0.836%   0.000%   6.043%   0.003%  13.086%   4.929%   0.000%
   13    7.2  1.5  1.5   0.039%   0.000%   4.256%   0.000%  14.890%   0.001%   0.000%  19.451%
   14    8.2  1.5  1.5  43.975%   0.000%  14.890%   0.000%   4.256%   0.000%   0.000%   0.233%
   15    1.2  1.5  0.5   0.000%   0.320%   0.000%   0.091%   0.000%   0.196%   0.496%   0.000%
   16    2.2  1.5  0.5   2.174%   0.000%   1.587%   0.000%   0.420%   0.000%   0.000%   0.124%
   17    3.2  1.5  0.5   0.810%   0.000%   0.213%   0.000%   1.794%   0.000%   0.000%   0.124%
   18    4.2  1.5  0.5   0.000%  15.041%   0.000%  13.088%   0.000%   6.043%   0.000%   0.000%
   19    5.2  1.5  0.5   5.852%   0.001%  16.485%   0.000%   2.654%   0.000%   0.000%  14.772%
   20    6.2  1.5  0.5   0.053%   0.000%  16.474%   0.000%   2.662%   0.000%   0.000%  14.776%
   21    7.2  1.5  0.5   0.000%  22.769%   0.000%  11.082%   0.001%   8.049%   0.233%   0.000%
   22    8.2  1.5  0.5   0.000%   2.050%   0.000%   8.047%   0.002%  11.077%  19.478%   0.000%
   23    1.2  1.5 -0.5   0.330%   0.000%   0.040%   0.000%   0.247%   0.000%   0.000%   0.496%
   24    2.2  1.5 -0.5   0.000%   2.167%   0.000%   1.874%   0.000%   0.133%   0.124%   0.000%
   25    3.2  1.5 -0.5   0.000%   0.822%   0.000%   0.027%   0.000%   1.979%   0.124%   0.000%
   26    4.2  1.5 -0.5  14.961%   0.000%  16.473%   0.000%   2.657%   0.000%   0.000%   0.000%
   27    5.2  1.5 -0.5   0.001%   5.766%   0.000%  13.099%   0.000%   6.040%  14.772%   0.000%
   28    6.2  1.5 -0.5   0.000%   0.044%   0.000%  13.086%   0.000%   6.050%  14.776%   0.000%
   29    7.2  1.5 -0.5  22.703%   0.000%  14.881%   0.000%   4.251%   0.000%   0.000%   0.233%
   30    8.2  1.5 -0.5   2.088%   0.000%   4.250%   0.000%  14.874%   0.002%   0.000%  19.478%
   31    1.2  1.5 -1.5   0.000%   1.885%   0.000%   1.766%   0.000%   0.815%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.119%   0.000%   0.740%   0.000%   0.000%   0.373%
   33    3.2  1.5 -1.5   0.106%   0.000%   0.119%   0.000%   0.740%   0.000%   0.000%   0.373%
   34    4.2  1.5 -1.5   0.000%   0.817%   0.000%   6.049%   0.003%  13.095%  19.684%   0.000%
   35    5.2  1.5 -1.5   3.317%   0.000%   2.657%   0.000%  16.473%   0.001%   0.000%   4.929%
   36    6.2  1.5 -1.5   0.870%   0.000%   2.657%   0.000%  16.472%   0.003%   0.000%   4.929%
   37    7.2  1.5 -1.5   0.000%   0.033%   0.000%   8.058%   0.001%  11.089%  19.451%   0.000%
   38    8.2  1.5 -1.5   0.000%  44.111%   0.000%  11.088%   0.000%   8.057%   0.233%   0.000%


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
              1      24       98.60       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1402.70       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    522073.96 468348.74      3.55  41175.17  12543.20      2.24      0.07      0.81
 REAL TIME  *    525256.80 SEC
 DISK USED  *         1.41 GB (local),        4.44 GB (total)
 SF USED    *        10.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-X2C energy=  -2604.877043929110

              CI              CI           MULTI         RHF-SCF
  -2604.83443939  -2605.33910076  -2604.02612180  -2604.59617826
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
