
 Working directory              : /wrk/irikura/molpro.28531DeG1y/
 Global scratch directory       : /wrk/irikura/molpro.28531DeG1y/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.28531DeG1y/

 id        : nistki

 Nodes     nprocs
 comp-2       9
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,I SO-CI
                                                                                 ! active space (7/4)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={I};
 
 
 basis={spdfg,i,aug-cc-pwCVTZ-DK3;C; spdf,1,even,nprim=1,ratio=3.0}
 
 set,dkho=101
 
 rhf
 
 {multi
     closed,14,9
     wf,sym=2,spin=1;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! KLM-shell uncorrelated
 core,8,6
 
 {ci;wf,sym=2,spin=1;state,3; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   I SO-CI                                                                                                                                                       
  (64 PROC) 64 bit mpp version                                                           DATE: 26-Jul-24          TIME: 09:37:09  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry I      S AUG-CC-PWCVTZ-DK     selected for orbital group  1
 Even tempered I  S diffuse               selected for group 1    nprim= 1    centre=  0.015    ratio= 3.000    dratio= 1.000
 Library entry I      P AUG-CC-PWCVTZ-DK     selected for orbital group  1
 Even tempered I  P diffuse               selected for group 1    nprim= 1    centre=  0.011    ratio= 3.000    dratio= 1.000
 Library entry I      D AUG-CC-PWCVTZ-DK     selected for orbital group  1
 Even tempered I  D diffuse               selected for group 1    nprim= 1    centre=  0.026    ratio= 3.000    dratio= 1.000
 Library entry I      F AUG-CC-PWCVTZ-DK     selected for orbital group  1
 Even tempered I  F diffuse               selected for group 1    nprim= 1    centre=  0.062    ratio= 3.000    dratio= 1.000
 Library entry I      G AUG-CC-PWCVTZ-DK     selected for orbital group  1


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

   1  I      53.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   53
 NUMBER OF PRIMITIVE AOS:         260
 NUMBER OF SYMMETRY AOS:          223
 NUMBER OF CONTRACTIONS:          125   (   60Ag  +   65Au  )
 NUMBER OF INNER CORE ORBITALS:    14   (    8Ag  +    6Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     36.176 MB (compressed) written to integral file ( 14.1%)

     Node minimum: 1.835 MB, node maximum: 8.126 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1748943.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1748943      RECORD LENGTH: 524288

 Memory used in sort:       2.31 MW

 SORT1 READ    32049457. AND WROTE      341868. INTEGRALS IN      1 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.13 SEC
 SORT2 READ     3154914. AND WROTE    15753000. INTEGRALS IN    117 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.04 SEC

 Node minimum:     1746738.  Node maximum:     1755762. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910

 Eigenvalues of metric

         1 0.196E-04 0.581E-03 0.929E-02 0.109E-01 0.109E-01 0.109E-01 0.109E-01 0.109E-01
         2 0.187E-02 0.187E-02 0.187E-02 0.561E-02 0.561E-02 0.561E-02 0.648E-01 0.648E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.42       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.25      2.11
 REAL TIME  *         2.98 SEC
 DISK USED  *        29.78 MB (local),      342.78 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:  15  12
 Initial beta  occupancy:  15  11

 NELEC=   53   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -7108.06143347   -7108.06143347     0.00D+00     0.21D+00     0     0       0.01      0.03    start
   2    -7112.02985337      -3.96841990     0.24D-01     0.15D+00     1     0       0.01      0.04    diag2
   3    -7112.53167641      -0.50182303     0.29D-01     0.29D-01     2     0       0.02      0.06    diag2
   4    -7112.69528844      -0.16361203     0.96D-02     0.22D-01     3     0       0.01      0.07    diag2
   5    -7112.70788605      -0.01259762     0.21D-02     0.13D-01     4     0       0.01      0.08    diag2
   6    -7112.70803222      -0.00014617     0.27D-03     0.21D-02     5     0       0.01      0.09    diag2
   7    -7112.70803548      -0.00000326     0.48D-04     0.21D-03     6     0       0.02      0.11    diag2
   8    -7112.70803552      -0.00000004     0.55D-05     0.23D-04     7     0       0.01      0.12    fixocc
   9    -7112.70803553      -0.00000001     0.17D-05     0.79D-05     8     0       0.01      0.13    diag2
  10    -7112.70803553      -0.00000000     0.14D-06     0.50D-06     9     0       0.01      0.14    diag2/orth
  11    -7112.70803553      -0.00000000     0.16D-07     0.54D-07     0     0       0.02      0.16    diag

 Final alpha occupancy:  15  12
 Final beta  occupancy:  15  11

 !RHF STATE 1.2 Energy              -7112.708035529778
  RHF One-electron energy           -9751.982749007144
  RHF Two-electron energy            2639.274713477366
  RHF Kinetic energy                 8346.953200919963
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.852132252850

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1224.95871     1  1  s    0.98122    1  3  s   -0.30817    1  4  s   -0.32384    1  6  s    0.29284
    2.1     2.00000  -192.92536     1  2  s    1.09192    1  4  s    0.26046
    3.1     2.00000   -40.50930     1  3  s    0.84606
    4.1     2.00000   -23.93370     1  1  d0   0.49999    1  1  d2+  0.86573
    5.1     2.00000   -23.93219     1  1  d2-  0.99964
    6.1     2.00000   -23.93219     1  1  d1-  0.99989
    7.1     2.00000   -23.92764     1  1  d0   0.86596    1  1  d2+ -0.49979
    8.1     2.00000   -23.92764     1  1  d1+  0.99984
    9.1     2.00000    -7.75745     1  4  s    1.07814
   10.1     2.00000    -2.31132     1  2  d0   0.49947    1  2  d2+  0.86482
   11.1     2.00000    -2.30718     1  2  d2-  0.99920
   12.1     2.00000    -2.30718     1  2  d1-  0.99945
   13.1     2.00000    -2.29474     1  2  d0   0.86706    1  2  d2+ -0.50043
   14.1     2.00000    -2.29474     1  2  d1+  1.00111
   15.1     2.00000    -0.87646     1  5  s    1.01643
    1.2     2.00000  -173.03138     1  1  py   0.99989
    2.2     2.00000  -173.03031     1  1  px   0.99988
    3.2     2.00000  -173.03031     1  1  pz   0.99997
    4.2     2.00000   -33.89199     1  2  py   0.99990
    5.2     2.00000   -33.88770     1  2  px   1.00053
    6.2     2.00000   -33.88770     1  2  pz   1.00062
    7.2     2.00000    -5.59067     1  3  py   0.99614
    8.2     2.00000    -5.58134     1  3  px   1.00102
    9.2     2.00000    -5.58134     1  3  pz   1.00110
   10.2     2.00000    -0.39159     1  4  pz   1.01004
   11.2     2.00000    -0.39159     1  4  px   1.00996
   12.2     1.00000    -0.44991     1  4  py   1.07550


 HOMO     12.2    -0.449909 =     -12.2426eV
 LUMO     16.1     0.022905 =       0.6233eV
 LUMO-HOMO         0.472814 =      12.8659eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.42       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.64       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.41      0.16      2.11
 REAL TIME  *         3.24 SEC
 DISK USED  *        31.25 MB (local),      356.01 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  23 (   14    9)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      98 (   45   53)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 4 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.387D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.998D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.377D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.252D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.128D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.372D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.310D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.395D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.274D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.152D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.373D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.144D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.120D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 6 2 4 1 5   3 6 2 4 1 1 5 6 3 2   4 1 5 3 6 2 4 1 5 6   3 2 4 1 5 6 3 4 2 5
                                        3 6 2 4101311 714 8  1512 9 1 5 3 6 2 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.129D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.128D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.150D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.158D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.149D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.255D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.178D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.281D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.550D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 3   1 2 2 3 1 2 3 1 910   7 5 8 4 6 2 3 1 9 7  10 8 5 6 4 9 710 8 5
                                        4 6 2 3 1 9 710 5 8   4 6 2 1 3 9 710 5 8   4 6 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33333   0.33333   0.33333
 
 Number of orbital rotations:  1352  ( 41 closed/active, 1107 closed/virtual, 0 active/active, 204 active/virtual )
 Total number of variables:    1361
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0  -7112.70517929   -7112.70573678   -0.00055749    0.04073882 0.00002288 0.00000000  0.25E-01      0.76
   2    3    3    0  -7112.70573690   -7112.70573690   -0.00000000    0.00006562 0.00000000 0.00000000  0.41E-04      1.37

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.26E-08)
                       Final energy:  -7112.70573690
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                     -7112.705736902692
 Nuclear energy                                  0.00000000
 Kinetic energy                               8346.95074135
 One electron energy                         -9751.97503775
 Two electron energy                          2639.26930085
 Virial ratio                                    1.85213223
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                     -7112.705736902657
 Nuclear energy                                  0.00000000
 Kinetic energy                               8346.95074135
 One electron energy                         -9751.97503776
 Two electron energy                          2639.26930086
 Virial ratio                                    1.85213223
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                     -7112.705736902601
 Nuclear energy                                  0.00000000
 Kinetic energy                               8346.95074135
 One electron energy                         -9751.97503777
 Two electron energy                          2639.26930087
 Virial ratio                                    1.85213223
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.000000051313
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999969878
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999978810
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999969898
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000000198004
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999832045
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999999978789
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999832118
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.000000189145
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 5 3 2 1 6   4 2 3 5 1 1 4 6 3 5   2 1 2 3 5 6 4 1 2 3   5 4 6 1 3 5 6 4 2 3
                                        5 6 4 2 7 812111310   91514 1 2 5 3 6 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 3 1 3 2 1 3   1 2 1 2 3 1 2 3 7 9   4 5 810 6 3 1 2 6 8  10 9 7 5 4 6 9 7 5 4
                                       10 8 3 2 1 510 8 4 6   9 7 3 2 1 9 710 8 5   4 6 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1224.95890     1  1  s    0.98122    1  3  s   -0.30817    1  4  s   -0.32384    1  6  s    0.29284
    2.1     2.00000  -192.92554     1  2  s    1.09192    1  4  s    0.26046
    3.1     2.00000   -40.50949     1  3  s    0.84606
    4.1     2.00000   -23.93086     1  1  d1-  0.99996
    5.1     2.00000   -23.93086     1  1  d1+  0.99996
    6.1     2.00000   -23.93086     1  1  d2+  0.99996
    7.1     2.00000   -23.93086     1  1  d2-  0.99996
    8.1     2.00000   -23.93086     1  1  d0   0.99996
    9.1     2.00000    -7.75763     1  4  s    1.07815
   10.1     2.00000    -2.30322     1  2  d1-  1.00009
   11.1     2.00000    -2.30322     1  2  d1+  1.00009
   12.1     2.00000    -2.30322     1  2  d0   1.00009
   13.1     2.00000    -2.30322     1  2  d2-  1.00009
   14.1     2.00000    -2.30322     1  2  d2+  1.00009
   15.1     2.00000    -0.87657     1  5  s    1.01617
    1.2     2.00000  -173.03085     1  1  px   0.99997
    2.2     2.00000  -173.03085     1  1  py   0.99997
    3.2     2.00000  -173.03085     1  1  pz   0.99997
    4.2     2.00000   -33.88932     1  2  py   1.00041
    5.2     2.00000   -33.88932     1  2  pz   1.00041
    6.2     2.00000   -33.88932     1  2  px   1.00041
    7.2     2.00000    -5.58462     1  3  pz   0.99949
    8.2     2.00000    -5.58462     1  3  py   0.99949
    9.2     2.00000    -5.58462     1  3  px   0.99949
   10.2     1.66667    -0.34388     1  4  pz   1.02241
   11.2     1.66667    -0.34388     1  4  px   1.02241
   12.2     1.66667    -0.34388     1  4  py   1.02241
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 2 2a2          0.99999997      0.00017356     -0.00014557
 2 a22          0.00014564     -0.00040973      0.99999991
 2 22a         -0.00017350      0.99999990      0.00040982
 
 Energy:    -7112.70573690  -7112.70573690  -7112.70573690
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       63.62       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.01       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.59      1.18      0.16      2.11
 REAL TIME  *         5.25 SEC
 DISK USED  *        64.72 MB (local),      657.31 MB (total)
 SF USED    *        82.14 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -7112.705737   2.0
    -7112.705737   2.0
    -7112.705737   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 53
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:        3 conf        3 CSFs
 N elec internal:       13 conf       13 CSFs
 N-1 el internal:       91 conf      169 CSFs
 N-2 el internal:      232 conf      962 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  5


 Number of core orbitals:          14 (   8   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      98 (  45  53 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.08 sec, npass=  1  Memory used:   0.95 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -7112.70573690
     2     -7112.70573690
     3     -7112.70573690

 Number of blocks in overlap matrix:   434   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     497
 Number of N-1 electron functions:     169

 Number of internal configurations:                    6
 Number of singly external configurations:          8285
 Number of doubly external configurations:       1194606
 Total number of contracted configurations:      1202897
 Total number of uncontracted configurations:    2314643

 Diagonal Coupling coefficients finished.               Storage:    301205 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    522229 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -7112.70573690     0.00000000    -0.92897470  0.20D-01  0.14D+00     0.20
    1     2     2     1.00000000     0.00000000 -7112.70573690    -0.00000000    -0.92900864  0.20D-01  0.14D+00     0.20
    1     3     3     1.00000000     0.00000000 -7112.70573690    -0.00000000    -0.92882058  0.20D-01  0.14D+00     0.20
    2     1     1     1.09948577    -0.73565662 -7113.44139352    -0.73565662    -0.01781108  0.15D-02  0.23D-02     3.72
    2     2     2     1.09954226    -0.73561862 -7113.44135552    -0.73561862    -0.01785687  0.15D-02  0.24D-02     3.72
    2     3     3     1.09955688    -0.73561225 -7113.44134915    -0.73561225    -0.01786341  0.15D-02  0.24D-02     3.72
    3     1     1     1.08969583    -0.75227760 -7113.45801450    -0.01662098    -0.00026669  0.20D-04  0.33D-04     7.10
    3     2     2     1.08970162    -0.75227597 -7113.45801288    -0.01665736    -0.00026853  0.21D-04  0.33D-04     7.10
    3     3     3     1.08970237    -0.75227589 -7113.45801280    -0.01666364    -0.00026860  0.20D-04  0.33D-04     7.10
    4     1     1     1.08938268    -0.75254457 -7113.45828147    -0.00026697    -0.00000672  0.11D-05  0.67D-06    10.47
    4     2     2     1.08938260    -0.75254450 -7113.45828140    -0.00026852    -0.00000679  0.11D-05  0.68D-06    10.47
    4     3     3     1.08938256    -0.75254450 -7113.45828140    -0.00026860    -0.00000679  0.11D-05  0.68D-06    10.47
    5     1     1     1.08934455    -0.75255137 -7113.45828827    -0.00000680    -0.00000021  0.25D-07  0.26D-07    13.83
    5     2     2     1.08934470    -0.75255137 -7113.45828827    -0.00000687    -0.00000021  0.26D-07  0.26D-07    13.83
    5     3     3     1.08934470    -0.75255137 -7113.45828827    -0.00000687    -0.00000021  0.26D-07  0.26D-07    13.83
    6     1     1     1.08933637    -0.75255159 -7113.45828849    -0.00000022    -0.00000001  0.61D-09  0.82D-09    17.19
    6     2     2     1.08933635    -0.75255159 -7113.45828849    -0.00000022    -0.00000001  0.61D-09  0.83D-09    17.19
    6     3     3     1.08933635    -0.75255159 -7113.45828849    -0.00000022    -0.00000001  0.61D-09  0.83D-09    17.19


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.1%   0.2%
 P   0.4%  11.2%  26.8%

 Initialization:   1.0%
 Other:           60.3%

 Total CPU:       17.2 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222/           0.0000000   0.0000000   0.9581180
 22222222222/2           0.0000000   0.9581180   0.0000000
 2222222222/22           0.9581180   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.958118
 2           0.958118    0.000000    0.000000
 3           0.000000    0.958118    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958118    0.000000    0.000000
 2           0.000000    0.958118    0.000000
 3           0.000000    0.000000    0.958118


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95811798 (fixed)   0.95811798 (relaxed)   0.95811798 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000003    0.00000000   -0.00000002
 Singles      0.00836869   -0.02464286   -0.02840323
 Pairs        0.08096768   -0.72790872   -0.72414834
 Total        1.08933640   -0.75255159   -0.75255159
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7112.70573690
 Nuclear energy                         0.00000000
 Kinetic energy                      8347.29121824
 One electron energy                -9751.50899232
 Two electron energy                 2638.05070383
 Virial quotient                       -0.85218763
 Correlation energy                    -0.75255159
 !MRCI STATE 1.2 Energy             -7113.458288489893

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7113.52551874 (Davidson, fixed reference)
 Cluster corrected energies         -7113.52551874 (Davidson, relaxed reference)
 Cluster corrected energies         -7113.52551874 (Davidson, rotated reference)

 Cluster corrected energies         -7113.52482593 (Pople, fixed reference)
 Cluster corrected energies         -7113.52482593 (Pople, relaxed reference)
 Cluster corrected energies         -7113.52482593 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95811799 (fixed)   0.95811799 (relaxed)   0.95811799 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000003    0.00000000   -0.66821304
 Singles      0.00836868   -0.02464284   -0.02840322
 Pairs        0.08096768   -0.00000000   -0.05593533
 Total        1.08933638   -0.02464284   -0.75255159
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7112.70573690
 Nuclear energy                         0.00000000
 Kinetic energy                      8347.29121179
 One electron energy                -9751.50898663
 Two electron energy                 2638.05069814
 Virial quotient                       -0.85218763
 Correlation energy                    -0.75255159
 !MRCI STATE 2.2 Energy             -7113.458288489891

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7113.52551873 (Davidson, fixed reference)
 Cluster corrected energies         -7113.52551873 (Davidson, relaxed reference)
 Cluster corrected energies         -7113.52551873 (Davidson, rotated reference)

 Cluster corrected energies         -7113.52482592 (Pople, fixed reference)
 Cluster corrected energies         -7113.52482592 (Pople, relaxed reference)
 Cluster corrected energies         -7113.52482592 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95811799 (fixed)   0.95811799 (relaxed)   0.95811799 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000003    0.00000000   -0.66821304
 Singles      0.00836868   -0.02464284   -0.02840322
 Pairs        0.08096768    0.00000000   -0.05593533
 Total        1.08933638   -0.02464284   -0.75255159
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7112.70573690
 Nuclear energy                         0.00000000
 Kinetic energy                      8347.29121171
 One electron energy                -9751.50898625
 Two electron energy                 2638.05069776
 Virial quotient                       -0.85218763
 Correlation energy                    -0.75255159
 !MRCI STATE 3.2 Energy             -7113.458288489874

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7113.52551873 (Davidson, fixed reference)
 Cluster corrected energies         -7113.52551873 (Davidson, relaxed reference)
 Cluster corrected energies         -7113.52551873 (Davidson, rotated reference)

 Cluster corrected energies         -7113.52482592 (Pople, fixed reference)
 Cluster corrected energies         -7113.52482592 (Pople, relaxed reference)
 Cluster corrected energies         -7113.52482592 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       63.62       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       29.11       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        21.13     17.53      1.18      0.16      2.11
 REAL TIME  *        24.57 SEC
 DISK USED  *        92.82 MB (local),      910.20 MB (total)
 SF USED    *       305.55 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -7113.52551874  AU                              
 SETTING HLSDIAG(2)     =     -7113.52551873  AU                              
 SETTING HLSDIAG(3)     =     -7113.52551873  AU                              


         HLSDIAG
    -7113.525519
    -7113.525519
    -7113.525519
                                                  


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

 Time for Seward_LS:      22.34 sec

       18294646. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     4694 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     22.34 sec, REAL time:     22.47 sec


 SORTLS1 read    19182974. and wrote    19182974. SO integrals in    81 records. CPU time:      0.11 sec, REAL time:      0.22 sec
 SORTLS2 read    19182974. and wrote    93027900. SO integrals in    27 records. CPU time:      0.05 sec, REAL time:      0.18 sec

 FILE SIZES: FILE 1:   374.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   374.4 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:  -7113.458288  -7113.458288  -7113.458288
 Replaced energies:  -7113.525519  -7113.525519  -7113.525519



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -7113.52551874

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00    2900.73       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00   -2900.73

    2   2.2  0.5  0.5       0.00       0.00       0.00   -2900.73      -0.00      -0.00
                           -0.00      -0.00    2900.73       0.00      -0.00      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00   -2900.73       0.00    2900.73       0.00      -0.00

    4   1.2  0.5 -0.5      -0.00   -2900.73      -0.00       0.00       0.00       0.00
                            0.00      -0.00   -2900.73       0.00      -0.00       0.00

    5   2.2  0.5 -0.5    2900.73      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00   -2900.73

    6   3.2  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00
                         2900.73       0.00       0.00      -0.00    2900.73      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -7113.53873545    -0.01321671    -2900.73      0.00000000        0.00      0.0000
     2 -7113.53873545    -0.01321671    -2900.73      0.00000000        0.00      0.0000
     3 -7113.53873544    -0.01321670    -2900.73      0.00000001        0.00      0.0000
     4 -7113.53873544    -0.01321670    -2900.73      0.00000001        0.00      0.0000
     5 -7113.49908530     0.02643344     5801.47      0.03965015     8702.20      1.0789
     6 -7113.49908530     0.02643344     5801.47      0.03965015     8702.20      1.0789


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6

    1    1.2  0.5  0.5   0.815762400   0.012783476  -0.028996753  -0.013939386   0.000000000   0.577350129
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.006823076   0.435406502  -0.016326143   0.033961696   0.577350337   0.000000000
                         0.000267294  -0.017057074   0.298707700  -0.621372648  -0.000000012  -0.000000000

    3    3.2  0.5  0.5   0.000233115  -0.014875958  -0.312626305   0.650326171  -0.000000012   0.000000000
                         0.005950598  -0.379730352  -0.017086877   0.035544177  -0.577350342   0.000000000

    4    1.2  0.5 -0.5  -0.012773678   0.815137150   0.000760734  -0.001582482  -0.577350129   0.000000000
                         0.000500410  -0.031933043  -0.013918612   0.028953539   0.000000012  -0.000000000

    5    2.2  0.5 -0.5  -0.435740479  -0.006828309  -0.622300060  -0.299153528   0.000000000   0.577350337
                        -0.000000000  -0.000000000   0.000000001  -0.000000002  -0.000000000   0.000000000

    6    3.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000001  -0.000000002  -0.000000000  -0.000000000
                        -0.380021624  -0.005955162   0.651296796   0.313092906   0.000000000   0.577350342


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6

    1    1.2  0.5  0.5  66.547%   0.016%   0.084%   0.019%   0.000%  33.333%
    2    2.2  0.5  0.5   0.005%  18.987%   8.949%  38.726%  33.333%   0.000%
    3    3.2  0.5  0.5   0.004%  14.442%   9.803%  42.419%  33.333%   0.000%
    4    1.2  0.5 -0.5   0.016%  66.547%   0.019%   0.084%  33.333%   0.000%
    5    2.2  0.5 -0.5  18.987%   0.005%  38.726%   8.949%   0.000%  33.333%
    6    3.2  0.5 -0.5  14.442%   0.004%  42.419%   9.803%   0.000%  33.333%


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
              1      24      357.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       29.11       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        50.54     29.40     17.53      1.18      0.16      2.11
 REAL TIME  *        55.69 SEC
 DISK USED  *        92.91 MB (local),        1.84 GB (total)
 SF USED    *       429.50 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -7113.499085302083

              CI           MULTI         RHF-SCF
  -7113.45828849  -7112.70573690  -7112.70803553
 **********************************************************************************************************************************
 Molpro calculation terminated
