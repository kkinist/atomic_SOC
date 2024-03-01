
 Working directory              : /wrk/irikura/molpro.8d5xpMeGcu/
 Global scratch directory       : /wrk/irikura/molpro.8d5xpMeGcu/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.8d5xpMeGcu/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,P SO-CI
                                                                                 ! Active space (5,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={P};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=15,sym=2,spin=3}
 
 {multi
     wf,sym=2,spin=3;state,1;
 weight,99
     wf,sym=2,spin=1;state,8;
 weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=2,spin=3;state,1; save,5203.2}
 hlsdiag(1) = energd
 {ci;wf,sym=2,spin=1;state,8; save,5201.2}
 hlsdiag(2) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   P SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 12:27:49  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry P      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry P      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry P      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry P      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  P      15.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   15
 NUMBER OF PRIMITIVE AOS:         114
 NUMBER OF SYMMETRY AOS:          100
 NUMBER OF CONTRACTIONS:           75   (   33Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     7.078 MB (compressed) written to integral file ( 18.8%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     36 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      172985.  Node maximum:      175449. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.230E-02 0.590E-02 0.603E-01 0.157E+00 0.157E+00 0.157E+00 0.157E+00 0.157E+00
         2 0.138E-01 0.138E-01 0.138E-01 0.280E-01 0.280E-01 0.280E-01 0.114E+00 0.114E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.64      0.42
 REAL TIME  *         1.20 SEC
 DISK USED  *        29.14 MB (local),      400.71 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   3   3

 NELEC=   15   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -341.51802701    -341.51802701     0.00D+00     0.13D+00     0     0       0.00      0.00    start
   2     -341.53077011      -0.01274310     0.28D-02     0.10D-01     1     0       0.01      0.01    diag2
   3     -341.53134336      -0.00057324     0.11D-02     0.18D-02     2     0       0.00      0.01    diag2
   4     -341.53146093      -0.00011757     0.31D-03     0.10D-02     3     0       0.00      0.01    diag2
   5     -341.53147416      -0.00001323     0.10D-03     0.53D-03     4     0       0.00      0.01    diag2
   6     -341.53147429      -0.00000013     0.14D-04     0.88D-04     5     0       0.00      0.01    diag2
   7     -341.53147429      -0.00000000     0.13D-05     0.65D-05     6     0       0.00      0.01    diag2
   8     -341.53147429      -0.00000000     0.19D-06     0.92D-06     7     0       0.01      0.02    fixocc
   9     -341.53147429      -0.00000000     0.18D-07     0.17D-06     0     0       0.00      0.02    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -341.531474290428
  RHF One-electron energy            -472.611808947982
  RHF Two-electron energy             131.080334657554
  RHF Kinetic energy                  346.610689773001
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.985346050677

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -80.19046     1  1  s    0.99929
    2.1     2.00000    -7.54795     1  2  s    1.00034
    3.1     2.00000    -0.69981     1  3  s    1.00789
    1.2     2.00000    -5.40012     1  1  pz   0.99975
    2.2     2.00000    -5.40012     1  1  px   0.99979
    3.2     2.00000    -5.40012     1  1  py   0.99975
    4.2     1.00000    -0.39133     1  2  px   1.00829
    5.2     1.00000    -0.39133     1  2  py   1.00817
    6.2     1.00000    -0.39133     1  2  pz   1.00817


 HOMO      6.2    -0.391332 =     -10.6487eV
 LUMO      4.1     0.078268 =       2.1298eV
 LUMO-HOMO         0.469600 =      12.7785eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.47       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.82      0.18      0.42
 REAL TIME  *         2.19 SEC
 DISK USED  *        29.72 MB (local),      407.67 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              11   (12 determinants, 24 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 4 5 3 2 1   6 4 3 5 2 6 4 3 5 2   1 6 4 3 5 2 1 6 4 5   3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.136D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.705D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.132D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.149D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.149D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 1 2 3   1 210 8 6 5 4 7 9 8  10 5 4 6 7 9 3 1 2 5   4 610 8 7 9 3 1 2 3
                                        1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.92523
 Weight factors for state symmetry  2:    0.00935   0.00935   0.00935   0.00935   0.00935   0.00935   0.00935   0.00935
 
 Number of orbital rotations:  317  ( 11 closed/active, 168 closed/virtual, 0 active/active, 138 active/virtual )
 Total number of variables:    414
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0   -341.52549107    -341.52549734   -0.00000627    0.00213022 0.00000001 0.00000000  0.37E-02      0.14
   2    3    6    0   -341.52549735    -341.52549735   -0.00000000    0.00000431 0.00000001 0.00000000  0.35E-05      0.25

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.78E-08)
                       Final energy:   -341.52549735
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -341.531468382524
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.60549510
 One electron energy                          -472.59576047
 Two electron energy                           131.06429209
 Virial ratio                                    1.98536080
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -341.460905973730
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.60549510
 One electron energy                          -472.59576047
 Two electron energy                           131.13485450
 Virial ratio                                    1.98515722
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -341.460905973703
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.60549510
 One electron energy                          -472.59576047
 Two electron energy                           131.13485450
 Virial ratio                                    1.98515722
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -341.460905973338
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.60549510
 One electron energy                          -472.59576047
 Two electron energy                           131.13485450
 Virial ratio                                    1.98515722
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -341.460905973326
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.60549510
 One electron energy                          -472.59576047
 Two electron energy                           131.13485450
 Virial ratio                                    1.98515722
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -341.460905973235
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.60549510
 One electron energy                          -472.59576047
 Two electron energy                           131.13485450
 Virial ratio                                    1.98515722
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -341.436105555323
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.57755160
 One electron energy                          -472.51940903
 Two electron energy                           131.08330348
 Virial ratio                                    1.98516509
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -341.436105554796
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.57755160
 One electron energy                          -472.51940903
 Two electron energy                           131.08330348
 Virial ratio                                    1.98516509
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -341.436105554778
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.57755160
 One electron energy                          -472.51940903
 Two electron energy                           131.08330348
 Virial ratio                                    1.98516509
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.951786882146
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000002
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000091232
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999999882381
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.048210056004
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999999992
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999994
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000000465
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.049000818762
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000044
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999999908756
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000117617
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     2.951002343977
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000000000006
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999999555
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.999212299092
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999999999954
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000012
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000002
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.000787600018
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.000000000008
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999999980
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 4 6 2 1   6 4 2 5 3 5 3 4 6 2   1 5 3 4 6 2 1 5 3 4   6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 6 810 5 4 7 9 7   910 8 4 5 6 1 2 3 9   710 8 4 5 6 1 2 3 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -80.19205     1  1  s    0.99930
    2.1     2.00000    -7.54919     1  2  s    1.00031
    3.1     1.99842    -0.70055     1  3  s    1.00846
    1.2     2.00000    -5.40157     1  1  pz   0.99981
    2.2     2.00000    -5.40157     1  1  px   0.99981
    3.2     2.00000    -5.40157     1  1  py   0.99981
    4.2     1.00053    -0.15780     1  2  pz   1.00448
    5.2     1.00053    -0.15780     1  2  py   1.00448
    6.2     1.00053    -0.15780     1  2  px   1.00448
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa          1.00000000
 
 Energy:     -341.53146838
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 baa         -0.01145790      0.00000000     -0.00000000      0.00000000      0.81641618     -0.00000000     -0.00000000
 2 aab          0.71276610      0.00000000      0.00000001      0.00000002     -0.39828526      0.00000000      0.00000000
 2 0a2          0.00000001      0.00000271     -0.70710680     -0.00012331      0.00000000     -0.00000022      0.69707611
 2 02a          0.00000002     -0.00000059      0.00012331     -0.70710680      0.00000000     -0.00000199      0.00000176
 2 a02          0.00000000     -0.70710678     -0.00000271      0.00000059      0.00000000      0.69707614      0.00000022
 2 a20         -0.00000000      0.70710678      0.00000271     -0.00000059     -0.00000000      0.69707614      0.00000022
 2 20a         -0.00000002      0.00000059     -0.00012331      0.70710674     -0.00000000     -0.00000199      0.00000176
 2 2a0         -0.00000001     -0.00000271      0.70710674      0.00012331     -0.00000000     -0.00000022      0.69707617
 2 aba         -0.70130820     -0.00000000     -0.00000001     -0.00000002     -0.41813092     -0.00000000     -0.00000000
 0 22a          0.00000000      0.00000000     -0.00000000      0.00000001      0.00000000      0.00000048     -0.00000042
 0 2a2          0.00000000      0.00000000      0.00000001      0.00000000     -0.00000000      0.00000005     -0.16783837
 0 a22          0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.16783836     -0.00000005
 
 Energy:     -341.46090597   -341.46090597   -341.46090597   -341.46090597   -341.46090597   -341.43610556   -341.43610555

 State:              8
 2 baa          0.00000000
 2 aab          0.00000000
 2 0a2         -0.00000176
 2 02a          0.69707611
 2 a02          0.00000199
 2 a20          0.00000199
 2 20a          0.69707616
 2 2a0         -0.00000176
 2 aba         -0.00000000
 0 22a         -0.16783837
 0 2a2          0.00000042
 0 a22         -0.00000048
 
 Energy:     -341.43610555
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.67       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.12      0.29      0.18      0.42
 REAL TIME  *         2.59 SEC
 DISK USED  *        31.13 MB (local),      424.61 MB (total)
 SF USED    *         4.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -341.5314684  -0.0
    -341.4609060   6.0
    -341.4609060   6.0
    -341.4609060   6.0
    -341.4609060   6.0
    -341.4609060   6.0
    -341.4361056   2.0
    -341.4361056   2.0
    -341.4361056   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 15
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:        1 conf        1 CSFs
 N elec internal:       46 conf       46 CSFs
 N-1 el internal:       83 conf      188 CSFs
 N-2 el internal:       33 conf      223 CSFs

 Number of electrons in valence space:                     13
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.01 sec, npass=  1  Memory used:   0.19 MW


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -341.53146838

 Number of blocks in overlap matrix:    58   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      58
 Number of N-1 electron functions:     188

 Number of internal configurations:                   22
 Number of singly external configurations:          6216
 Number of doubly external configurations:         63318
 Total number of contracted configurations:        69556
 Total number of uncontracted configurations:     247333

 Diagonal Coupling coefficients finished.               Storage:    190710 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    239691 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -341.53146838    -0.00000000    -0.38142713  0.44D-01  0.39D-01     0.03
    2     1     1     1.06743427    -0.34359666  -341.87506504    -0.34359666    -0.00441830  0.13D-02  0.49D-03     0.07
    3     1     1     1.05584552    -0.34797030  -341.87943868    -0.00437364    -0.00005126  0.62D-05  0.69D-05     0.11
    4     1     1     1.05569005    -0.34802452  -341.87949290    -0.00005422    -0.00000085  0.23D-06  0.14D-06     0.14
    5     1     1     1.05575357    -0.34802542  -341.87949380    -0.00000090    -0.00000003  0.83D-08  0.45D-08     0.17
    6     1     1     1.05574837    -0.34802545  -341.87949383    -0.00000003    -0.00000000  0.20D-09  0.15D-09     0.20


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   5.0%
 P   0.0%  20.0%  25.0%

 Initialization:  15.0%
 Other:           35.0%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222///           0.9732317


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97323167 (fixed)   0.97323167 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001638   -0.00011671   -0.00011594
 Singles      0.02533591   -0.04871054   -0.05448925
 Pairs        0.03041337   -0.29919820   -0.29342025
 Total        1.05576566   -0.34802545   -0.34802545
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.53146838
 Nuclear energy                         0.00000000
 Kinetic energy                       346.85487668
 One electron energy                 -472.40121728
 Two electron energy                  130.52172345
 Virial quotient                       -0.98565572
 Correlation energy                    -0.34802545
 !CI(SD) STATE 1.2 Energy            -341.879493833233

 Properties without orbital relaxation:

 !CI(SD) STATE 1.2 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.89890170 (Davidson, fixed reference)
 Cluster corrected energies          -341.89890170 (Davidson, relaxed reference)

 Cluster corrected energies          -341.89554907 (Pople, fixed reference)
 Cluster corrected energies          -341.89554907 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.40       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.39      0.26      0.29      0.18      0.42
 REAL TIME  *         2.92 SEC
 DISK USED  *        31.86 MB (local),      433.37 MB (total)
 SF USED    *        10.08 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -341.89890170  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 15
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:       10 conf       11 CSFs
 N elec internal:       96 conf      148 CSFs
 N-1 el internal:      183 conf      503 CSFs
 N-2 el internal:      192 conf      834 CSFs

 Number of electrons in valence space:                     13
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -341.46090597
     2      -341.46090597
     3      -341.46090597
     4      -341.46090597
     5      -341.46090597
     6      -341.43610556
     7      -341.43610555
     8      -341.43610555

 Number of blocks in overlap matrix:   224   Smallest eigenvalue:  0.14D-01
 Number of N-2 electron functions:     369
 Number of N-1 electron functions:     503

 Number of internal configurations:                   83
 Number of singly external configurations:         16662
 Number of doubly external configurations:        403521
 Total number of contracted configurations:       420266
 Total number of uncontracted configurations:     923405

 Diagonal Coupling coefficients finished.               Storage:    268056 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    276338 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -341.46090597     0.00000000    -0.39133933  0.50D-01  0.38D-01     0.05
    1     2     2     1.00000000     0.00000000  -341.46090597    -0.00000000    -0.39062013  0.49D-01  0.38D-01     0.05
    1     3     3     1.00000000     0.00000000  -341.46090597    -0.00000000    -0.39037248  0.48D-01  0.38D-01     0.05
    1     4     4     1.00000000     0.00000000  -341.46090597     0.00000000    -0.39018924  0.48D-01  0.38D-01     0.05
    1     5     5     1.00000000     0.00000000  -341.46090597     0.00000000    -0.39079109  0.48D-01  0.38D-01     0.05
    1     6     6     1.00000000     0.00000000  -341.43610556     0.00000000    -0.37834617  0.28D-01  0.49D-01     0.05
    1     7     7     1.00000000     0.00000000  -341.43610555    -0.00000000    -0.37857481  0.28D-01  0.49D-01     0.05
    1     8     8     1.00000000     0.00000000  -341.43610555     0.00000000    -0.37848435  0.28D-01  0.49D-01     0.05
    2     1     1     1.07144362    -0.35608125  -341.81698723    -0.35608125    -0.00663058  0.16D-02  0.11D-02     2.22
    2     2     2     1.07153920    -0.35605296  -341.81695894    -0.35605296    -0.00666687  0.16D-02  0.11D-02     2.22
    2     3     3     1.07175672    -0.35603632  -341.81694229    -0.35603632    -0.00670462  0.17D-02  0.11D-02     2.22
    2     4     4     1.07200235    -0.35591806  -341.81682403    -0.35591806    -0.00682231  0.17D-02  0.11D-02     2.22
    2     5     5     1.07247873    -0.35579106  -341.81669703    -0.35579106    -0.00698784  0.18D-02  0.11D-02     2.22
    2     6     6     1.06573533    -0.34919960  -341.78530515    -0.34919960    -0.00542774  0.17D-02  0.77D-03     2.22
    2     7     7     1.06562691    -0.34918356  -341.78528912    -0.34918356    -0.00544249  0.17D-02  0.79D-03     2.22
    2     8     8     1.06573207    -0.34915869  -341.78526425    -0.34915869    -0.00546834  0.17D-02  0.79D-03     2.22
    3     1     1     1.06499633    -0.36213407  -341.82304005    -0.00605282    -0.00017218  0.27D-04  0.32D-04     4.29
    3     2     2     1.06506679    -0.36213191  -341.82303788    -0.00607895    -0.00017366  0.26D-04  0.32D-04     4.29
    3     3     3     1.06498127    -0.36212908  -341.82303506    -0.00609276    -0.00017536  0.27D-04  0.33D-04     4.29
    3     4     4     1.06493041    -0.36212843  -341.82303440    -0.00621037    -0.00017542  0.27D-04  0.33D-04     4.29
    3     5     5     1.06491906    -0.36212828  -341.82303425    -0.00633722    -0.00017584  0.27D-04  0.33D-04     4.29
    3     6     6     1.06014141    -0.35427020  -341.79037575    -0.00507060    -0.00013317  0.10D-04  0.31D-04     4.29
    3     7     7     1.06017091    -0.35426947  -341.79037503    -0.00508591    -0.00013296  0.10D-04  0.31D-04     4.29
    3     8     8     1.06014799    -0.35426863  -341.79037419    -0.00510994    -0.00013380  0.10D-04  0.31D-04     4.29
    4     1     1     1.06613119    -0.36232239  -341.82322836    -0.00018831    -0.00000784  0.84D-06  0.21D-05     6.38
    4     2     2     1.06611730    -0.36232222  -341.82322819    -0.00019031    -0.00000798  0.96D-06  0.21D-05     6.38
    4     3     3     1.06613244    -0.36232210  -341.82322807    -0.00019302    -0.00000802  0.84D-06  0.21D-05     6.38
    4     4     4     1.06612264    -0.36232174  -341.82322772    -0.00019332    -0.00000830  0.94D-06  0.21D-05     6.38
    4     5     5     1.06612034    -0.36232173  -341.82322771    -0.00019345    -0.00000833  0.95D-06  0.22D-05     6.38
    4     6     6     1.06122940    -0.35442026  -341.79052582    -0.00015007    -0.00000616  0.75D-06  0.16D-05     6.38
    4     7     7     1.06123114    -0.35441998  -341.79052553    -0.00015050    -0.00000636  0.77D-06  0.17D-05     6.38
    4     8     8     1.06123221    -0.35441993  -341.79052549    -0.00015130    -0.00000638  0.78D-06  0.17D-05     6.38
    5     1     1     1.06654100    -0.36233165  -341.82323762    -0.00000926    -0.00000044  0.48D-07  0.11D-06     8.45
    5     2     2     1.06653859    -0.36233163  -341.82323760    -0.00000941    -0.00000046  0.53D-07  0.11D-06     8.45
    5     3     3     1.06654539    -0.36233163  -341.82323760    -0.00000953    -0.00000046  0.46D-07  0.11D-06     8.45
    5     4     4     1.06654702    -0.36233160  -341.82323758    -0.00000986    -0.00000048  0.50D-07  0.11D-06     8.45
    5     5     5     1.06654640    -0.36233160  -341.82323757    -0.00000987    -0.00000048  0.51D-07  0.11D-06     8.45
    5     6     6     1.06151681    -0.35442754  -341.79053310    -0.00000728    -0.00000042  0.70D-07  0.92D-07     8.45
    5     7     7     1.06151958    -0.35442752  -341.79053308    -0.00000755    -0.00000044  0.73D-07  0.95D-07     8.45
    5     8     8     1.06151929    -0.35442752  -341.79053308    -0.00000759    -0.00000044  0.73D-07  0.96D-07     8.45
    6     1     1     1.06652726    -0.36233217  -341.82323815    -0.00000053    -0.00000002  0.33D-08  0.57D-08    10.52
    6     2     2     1.06652733    -0.36233217  -341.82323815    -0.00000054    -0.00000003  0.35D-08  0.59D-08    10.52
    6     3     3     1.06652742    -0.36233217  -341.82323815    -0.00000055    -0.00000003  0.32D-08  0.59D-08    10.52
    6     4     4     1.06652811    -0.36233217  -341.82323815    -0.00000057    -0.00000003  0.34D-08  0.63D-08    10.52
    6     5     5     1.06652815    -0.36233217  -341.82323814    -0.00000057    -0.00000003  0.34D-08  0.63D-08    10.52
    6     6     6     1.06149667    -0.35442802  -341.79053358    -0.00000048    -0.00000002  0.23D-08  0.53D-08    10.52
    6     7     7     1.06149687    -0.35442802  -341.79053358    -0.00000050    -0.00000002  0.25D-08  0.55D-08    10.52
    6     8     8     1.06149675    -0.35442802  -341.79053358    -0.00000050    -0.00000002  0.25D-08  0.55D-08    10.52


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.0%   0.7%
 P   0.8%  13.9%  34.5%

 Initialization:   0.1%
 Other:           49.9%

 Total CPU:       10.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//\           0.8558375   0.4529199  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 22222/\/          -0.4529199   0.8558375  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 22222/02          -0.0000000   0.0000000   0.6846876  -0.0000000  -0.0000000   0.6775145  -0.0000000   0.0000000
 22222/20          -0.0000000   0.0000000  -0.6846876  -0.0000000  -0.0000000   0.6775146  -0.0000000  -0.0000000
 222222/0           0.0000000   0.0000000   0.0000000  -0.6846875   0.0000000   0.0000000   0.6775147   0.0000000
 2222220/           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.6846874  -0.0000000  -0.0000000   0.6775147
 222220/2           0.0000000   0.0000000   0.0000000   0.6846873   0.0000000   0.0000000   0.6775143   0.0000000
 2222202/           0.0000000   0.0000000  -0.0000000  -0.0000000   0.6846873   0.0000000  -0.0000000   0.6775144
 202222/2          -0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0000000  -0.0000000  -0.1548454  -0.0000000
 2022222/          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000001   0.0000000   0.0000000  -0.1548453
 20222/22           0.0000000  -0.0000000   0.0000001   0.0000000   0.0000000  -0.1548453   0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222//\  13.1    -0.0028251  -0.0766183  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2\222//\  12.1    -0.0000000  -0.0000000  -0.0000000   0.0687268   0.0000000  -0.0000000  -0.0075536  -0.0000000
 2\222//\  11.1     0.0000000   0.0000000  -0.0000000   0.0000000  -0.0687265  -0.0000000  -0.0000000   0.0075542
 2/222\/\  15.1    -0.0000000   0.0000000  -0.0534383  -0.0000000  -0.0000000   0.0087230  -0.0000000  -0.0000000
 2/222\/\  14.1     0.0528172  -0.0178457   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 2\222//\   9.1    -0.0019132  -0.0519046  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968042   -0.000000   -0.000000    0.000000    0.022095   -0.000000    0.000000    0.000000
 2          -0.022095    0.000000    0.000000    0.000000    0.968042    0.000000    0.000000    0.000000
 3           0.000000    0.968294   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000    0.968294   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000    0.968294   -0.000000   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.970547    0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.970547   -0.000000
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.970547

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968295    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.968295   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.968294   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.968294   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.968294   -0.000000    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.970547   -0.000000   -0.000000
 7           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970547    0.000000
 8           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970547


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.96804242 (fixed)   0.96829454 (relaxed)   0.96829454 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003009   -0.00019592   -0.28489473
 Singles      0.03244516   -0.05848594   -0.06585824
 Pairs        0.03408411   -0.00000000   -0.01157920
 Total        1.06655936   -0.05868185   -0.36233217
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46090597
 Nuclear energy                         0.00000000
 Kinetic energy                       346.82237187
 One electron energy                 -472.27747010
 Two electron energy                  130.45423195
 Virial quotient                       -0.98558590
 Correlation energy                    -0.36233217
 !MRCI STATE 1.2 Energy              -341.823238148532

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84735475 (Davidson, fixed reference)
 Cluster corrected energies          -341.84735475 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84735475 (Davidson, rotated reference)

 Cluster corrected energies          -341.84425434 (Pople, fixed reference)
 Cluster corrected energies          -341.84425434 (Pople, relaxed reference)
 Cluster corrected energies          -341.84425434 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96804240 (fixed)   0.96829451 (relaxed)   0.96829451 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003010   -0.00019592   -0.28489485
 Singles      0.03244484   -0.05848580   -0.06585798
 Pairs        0.03408449   -0.00000000   -0.01157934
 Total        1.06655942   -0.05868171   -0.36233217
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46090597
 Nuclear energy                         0.00000000
 Kinetic energy                       346.82237187
 One electron energy                 -472.27747768
 Two electron energy                  130.45423953
 Virial quotient                       -0.98558590
 Correlation energy                    -0.36233217
 !MRCI STATE 2.2 Energy              -341.823238147172

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84735477 (Davidson, fixed reference)
 Cluster corrected energies          -341.84735477 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84735477 (Davidson, rotated reference)

 Cluster corrected energies          -341.84425436 (Pople, fixed reference)
 Cluster corrected energies          -341.84425436 (Pople, relaxed reference)
 Cluster corrected energies          -341.84425436 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96829447 (fixed)   0.96829447 (relaxed)   0.96829447 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003009   -0.00019592   -0.28489446
 Singles      0.03244570   -0.05848618   -0.06585866
 Pairs        0.03408372    0.00000000   -0.01157906
 Total        1.06655952   -0.05868210   -0.36233217
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46090597
 Nuclear energy                         0.00000000
 Kinetic energy                       346.82240510
 One electron energy                 -472.27749959
 Two electron energy                  130.45426145
 Virial quotient                       -0.98558580
 Correlation energy                    -0.36233217
 !MRCI STATE 3.2 Energy              -341.823238147033

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84735480 (Davidson, fixed reference)
 Cluster corrected energies          -341.84735480 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84735480 (Davidson, rotated reference)

 Cluster corrected energies          -341.84425439 (Pople, fixed reference)
 Cluster corrected energies          -341.84425439 (Pople, relaxed reference)
 Cluster corrected energies          -341.84425439 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96829416 (fixed)   0.96829416 (relaxed)   0.96829416 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003009   -0.00019592   -0.28489366
 Singles      0.03244674   -0.05848683   -0.06585916
 Pairs        0.03408338    0.00000000   -0.01157935
 Total        1.06656021   -0.05868275   -0.36233217
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46090597
 Nuclear energy                         0.00000000
 Kinetic energy                       346.82240840
 One electron energy                 -472.27750945
 Two electron energy                  130.45427130
 Virial quotient                       -0.98558579
 Correlation energy                    -0.36233217
 !MRCI STATE 4.2 Energy              -341.823238145141

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84735505 (Davidson, fixed reference)
 Cluster corrected energies          -341.84735505 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84735505 (Davidson, rotated reference)

 Cluster corrected energies          -341.84425462 (Pople, fixed reference)
 Cluster corrected energies          -341.84425462 (Pople, relaxed reference)
 Cluster corrected energies          -341.84425462 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96829414 (fixed)   0.96829414 (relaxed)   0.96829414 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003009   -0.00019592   -0.28489373
 Singles      0.03244666   -0.05848675   -0.06585911
 Pairs        0.03408349    0.00000001   -0.01157933
 Total        1.06656025   -0.05868266   -0.36233217
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46090597
 Nuclear energy                         0.00000000
 Kinetic energy                       346.82241218
 One electron energy                 -472.27751304
 Two electron energy                  130.45427490
 Virial quotient                       -0.98558578
 Correlation energy                    -0.36233217
 !MRCI STATE 5.2 Energy              -341.823238144860

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84735506 (Davidson, fixed reference)
 Cluster corrected energies          -341.84735506 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84735506 (Davidson, rotated reference)

 Cluster corrected energies          -341.84425463 (Pople, fixed reference)
 Cluster corrected energies          -341.84425463 (Pople, relaxed reference)
 Cluster corrected energies          -341.84425463 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.97054744 (fixed)   0.97058179 (relaxed)   0.97054744 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011014   -0.00023354   -0.30044172
 Singles      0.01752039   -0.03551405   -0.03930321
 Pairs        0.04398305    0.00000000   -0.01468309
 Total        1.06161358   -0.03574758   -0.35442802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.43610556
 Nuclear energy                         0.00000000
 Kinetic energy                       346.79521554
 One electron energy                 -472.18052872
 Two electron energy                  130.38999514
 Virial quotient                       -0.98556877
 Correlation energy                    -0.35442802
 !MRCI STATE 6.2 Energy              -341.790533579543

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.81237116 (Davidson, fixed reference)
 Cluster corrected energies          -341.81234453 (Davidson, relaxed reference)
 Cluster corrected energies          -341.81237116 (Davidson, rotated reference)

 Cluster corrected energies          -341.80950021 (Pople, fixed reference)
 Cluster corrected energies          -341.80947611 (Pople, relaxed reference)
 Cluster corrected energies          -341.80950021 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.97054735 (fixed)   0.97058169 (relaxed)   0.97054735 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011014   -0.00023354   -0.30044169
 Singles      0.01752056   -0.03551402   -0.03930328
 Pairs        0.04398308    0.00000000   -0.01468305
 Total        1.06161378   -0.03574756   -0.35442802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.43610555
 Nuclear energy                         0.00000000
 Kinetic energy                       346.79522113
 One electron energy                 -472.18053969
 Two electron energy                  130.39000611
 Virial quotient                       -0.98556875
 Correlation energy                    -0.35442802
 !MRCI STATE 7.2 Energy              -341.790533578056

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.81237123 (Davidson, fixed reference)
 Cluster corrected energies          -341.81234460 (Davidson, relaxed reference)
 Cluster corrected energies          -341.81237123 (Davidson, rotated reference)

 Cluster corrected energies          -341.80950027 (Pople, fixed reference)
 Cluster corrected energies          -341.80947618 (Pople, relaxed reference)
 Cluster corrected energies          -341.80950027 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97054740 (fixed)   0.97058175 (relaxed)   0.97054740 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011014   -0.00023354   -0.00025675
 Singles      0.01752048   -0.03551405   -0.03930329
 Pairs        0.04398304   -0.31868044   -0.31486798
 Total        1.06161366   -0.35442803   -0.35442802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.43610555
 Nuclear energy                         0.00000000
 Kinetic energy                       346.79521903
 One electron energy                 -472.18053682
 Two electron energy                  130.39000324
 Virial quotient                       -0.98556876
 Correlation energy                    -0.35442802
 !MRCI STATE 8.2 Energy              -341.790533577872

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.81237118 (Davidson, fixed reference)
 Cluster corrected energies          -341.81234455 (Davidson, relaxed reference)
 Cluster corrected energies          -341.81237118 (Davidson, rotated reference)

 Cluster corrected energies          -341.80950023 (Pople, fixed reference)
 Cluster corrected energies          -341.80947614 (Pople, relaxed reference)
 Cluster corrected energies          -341.80950023 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       27.77       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        12.63     11.24      0.26      0.29      0.18      0.42
 REAL TIME  *        16.99 SEC
 DISK USED  *        58.23 MB (local),      749.86 MB (total)
 SF USED    *       266.35 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -341.84735475  AU                              
 SETTING HLSDIAG(3)     =      -341.84735477  AU                              
 SETTING HLSDIAG(4)     =      -341.84735480  AU                              
 SETTING HLSDIAG(5)     =      -341.84735505  AU                              
 SETTING HLSDIAG(6)     =      -341.84735506  AU                              
 SETTING HLSDIAG(7)     =      -341.81237116  AU                              
 SETTING HLSDIAG(8)     =      -341.81237123  AU                              
 SETTING HLSDIAG(9)     =      -341.81237118  AU                              


         HLSDIAG
    -341.8989017
    -341.8473547
    -341.8473548
    -341.8473548
    -341.8473551
    -341.8473551
    -341.8123712
    -341.8123712
    -341.8123712
                                                  

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

 Time for Seward_LS:       0.66 sec

 CPU time:      0.66 sec, REAL time:      0.70 sec


 SORTLS1 read     2508011. and wrote     2508011. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.04 sec
 SORTLS2 read     2508011. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    31.9 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    31.9 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.42       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       27.77       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        13.95      1.28     11.24      0.26      0.29      0.18      0.42
 REAL TIME  *        18.58 SEC
 DISK USED  *        58.27 MB (local),      939.36 MB (total)
 SF USED    *       266.35 MB
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
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -341.879494
 Replaced energies:   -341.898902

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -341.823238   -341.823238   -341.823238   -341.823238   -341.823238   -341.790534   -341.790534   -341.790534
 Replaced energies:   -341.847355   -341.847355   -341.847355   -341.847355   -341.847355   -341.812371   -341.812371   -341.812371



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -341.89890170

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

    2   1.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     206.13

    3   1.2  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00   11313.25       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.58       0.00      -0.00       5.39

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   11313.24       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.02       0.00      -0.00     146.09

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00   11313.24       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.58       0.02      -0.00      -0.00      -0.00      -0.00

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   11313.18       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.30       0.00

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   11313.18       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.30      -0.00       0.00

   10   6.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   18991.26
                           -0.00    -206.13       0.00      -0.00      -5.39    -146.09       0.00      -0.00      -0.00       0.00

   11   7.2  0.5  0.5    -178.53       0.00    -103.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00    -126.60      -0.00

   12   8.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          178.53      -0.00    -103.07      -0.00      -0.00      -0.00       0.00     126.60      -0.00      -0.00

   13   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.31      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.27       0.00

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.50       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.52       0.00

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.29       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.29       0.00       0.00

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.31       0.50      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.29       0.00       0.00    -126.62

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.29       0.00      -0.00    -126.62
                           -0.00       0.00       0.00      -0.00       0.27      -0.52      -0.00      -0.00       0.00      -0.00

   18   6.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     126.62       0.00
                           -0.00      -0.00    -206.13       0.00      -0.00      -0.00      -0.00     126.62       0.00      -0.00

   19   7.2  0.5 -0.5       0.00    -103.07       0.00    -178.53     123.84     -77.72      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00    -126.62      -0.00      -0.00       0.52

   20   8.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00     126.62       0.00       0.00       0.52
                           -0.00     103.07      -0.00    -178.53     129.22      68.39      -0.00       0.00       0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5    -178.53      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -178.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -103.07      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -103.07

    3   1.2  1.5 -0.5    -103.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     103.07      -0.00       0.00      -0.00      -0.00      -0.00     206.13      -0.00       0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -178.53      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     178.53

    5   1.2  0.5  0.5       0.00       0.00      -0.00       0.00      -0.00       0.31       0.00       0.00     123.84       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.27       0.00       0.00    -129.22

    6   2.2  0.5  0.5       0.00       0.00      -0.00       0.00      -0.00       0.50      -0.00      -0.00     -77.72      -0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.52       0.00       0.00     -68.39

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.29      -0.00      -0.00     126.62
                           -0.00      -0.00      -0.00       0.00      -0.00       0.29       0.00       0.00     126.62       0.00

    8   4.2  0.5  0.5       0.00       0.00      -0.31      -0.50       0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00    -126.60       0.00      -0.00      -0.29      -0.00       0.00    -126.62       0.00      -0.00

    9   5.2  0.5  0.5       0.00       0.00      -0.00       0.00      -0.29      -0.00      -0.00     126.62      -0.00       0.00
                          126.60       0.00       0.27      -0.52      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   10   6.2  0.5  0.5       0.00       0.00      -0.00       0.00       0.00       0.00    -126.62       0.00       0.00       0.52
                            0.00       0.00      -0.00      -0.00      -0.00     126.62       0.00       0.00      -0.52      -0.00

   11   7.2  0.5  0.5   18991.24       0.00    -123.84      77.72       0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.52      -0.00      -0.00    -126.62      -0.00      -0.00       0.52       0.00      -0.00

   12   8.2  0.5  0.5       0.00   18991.25      -0.00       0.00    -126.62      -0.00      -0.00      -0.52       0.00       0.00
                            0.52       0.00     129.22      68.39      -0.00       0.00       0.00       0.00       0.00      -0.00

   13   1.2  0.5 -0.5    -123.84      -0.00   11313.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -129.22      -0.00      -0.00      -0.58      -0.00       0.00      -5.39       0.00      -0.00

   14   2.2  0.5 -0.5      77.72       0.00       0.00   11313.24       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -68.39       0.00      -0.00       0.02      -0.00       0.00    -146.09       0.00      -0.00

   15   3.2  0.5 -0.5       0.00    -126.62       0.00       0.00   11313.24       0.00       0.00       0.00       0.00       0.00
                          126.62       0.00       0.58      -0.02       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00   11313.18       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.30      -0.00      -0.00     126.60

   17   5.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00   11313.18       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.30       0.00      -0.00    -126.60      -0.00

   18   6.2  0.5 -0.5      -0.00      -0.52       0.00       0.00       0.00       0.00       0.00   18991.26       0.00       0.00
                           -0.52      -0.00       5.39     146.09      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18991.24       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     126.60       0.00       0.00       0.52

   20   8.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18991.25
                            0.00       0.00       0.00       0.00      -0.00    -126.60       0.00       0.00      -0.52      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -341.89891700    -0.00001530       -3.36      0.00000000        0.00      0.0000
     2  -341.89891700    -0.00001530       -3.36      0.00000000        0.00      0.0000
     3  -341.89891700    -0.00001529       -3.36      0.00000000        0.00      0.0000
     4  -341.89891700    -0.00001529       -3.36      0.00000000        0.00      0.0000
     5  -341.84740646     0.05149524    11301.90      0.05151054    11305.26      1.4017
     6  -341.84740646     0.05149524    11301.90      0.05151054    11305.26      1.4017
     7  -341.84740624     0.05149546    11301.95      0.05151076    11305.30      1.4017
     8  -341.84740624     0.05149546    11301.95      0.05151076    11305.30      1.4017
     9  -341.84735233     0.05154937    11313.78      0.05156467    11317.14      1.4031
    10  -341.84735233     0.05154937    11313.78      0.05156467    11317.14      1.4031
    11  -341.84735220     0.05154951    11313.81      0.05156480    11317.17      1.4031
    12  -341.84735220     0.05154951    11313.81      0.05156480    11317.17      1.4031
    13  -341.84735213     0.05154957    11313.82      0.05156487    11317.18      1.4032
    14  -341.84735213     0.05154957    11313.82      0.05156487    11317.18      1.4032
    15  -341.81236645     0.08653525    18992.29      0.08655054    18995.65      2.3552
    16  -341.81236645     0.08653525    18992.29      0.08655054    18995.65      2.3552
    17  -341.81231084     0.08659087    19004.50      0.08660616    19007.86      2.3567
    18  -341.81231084     0.08659087    19004.50      0.08660616    19007.86      2.3567
    19  -341.81231076     0.08659094    19004.51      0.08660623    19007.87      2.3567
    20  -341.81231076     0.08659094    19004.51      0.08660623    19007.87      2.3567


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.000002358   0.999911155   0.000886188   0.000014505   0.000002241   0.000010339   0.000821448   0.000001061
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000886302   0.000000003  -0.016365442   0.999777225  -0.000802196   0.000173907   0.000000014  -0.000010568
                         0.000002150  -0.000000000   0.000002035  -0.000104725   0.000022462  -0.000004870   0.000000000  -0.000000238

    3    1.2  1.5 -0.5  -0.000000003  -0.000886307   0.999777231   0.016365442   0.000173976   0.000802511  -0.000010570  -0.000000014
                        -0.000000000   0.000000000  -0.000000236   0.000000317   0.000000001   0.000000001  -0.000000000   0.000000000

    4    1.2  1.5 -1.5   0.999908213  -0.000002358  -0.000014505   0.000886186  -0.000010335   0.000002241  -0.000001061   0.000821239
                        -0.002425412   0.000000006   0.000000002  -0.000000093   0.000000289  -0.000000063  -0.000000024   0.000018513

    5    1.2  0.5  0.5  -0.000210263   0.000000000  -0.000000124   0.000007564   0.014760613  -0.003199959  -0.000814759   0.630850849
                         0.000000510  -0.000000000   0.000000000  -0.000000001  -0.000413323   0.000089627  -0.000018367   0.014221102

    6    2.2  0.5  0.5   0.000007566  -0.000000000  -0.000003441   0.000210207   0.615132783  -0.133354169   0.000019547  -0.015122115
                        -0.000000018  -0.000000000   0.000000000  -0.000000022  -0.017224398   0.003734686   0.000000432  -0.000340905

    7    3.2  0.5  0.5  -0.000000510   0.000000000   0.000000000  -0.000000000  -0.000221682   0.000048058   0.000018389  -0.014238230
                        -0.000210399   0.000000000   0.000000003  -0.000000192  -0.007917223   0.001716352  -0.000815741   0.631610614

    8    4.2  0.5  0.5   0.000000000   0.000105518  -0.000181979  -0.000002979   0.115345532   0.532062880  -0.324072790  -0.000418534
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000678   0.000000628  -0.000000010   0.000000008

    9    5.2  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000678  -0.000000628   0.000000010  -0.000000008
                        -0.000000000  -0.000105198  -0.000182165  -0.000002982   0.117099003   0.540151329   0.309974086   0.000400354

   10    6.2  0.5  0.5  -0.000000023   0.000000000  -0.000000022   0.000001137   0.000821161  -0.000178049   0.000000012  -0.000008711
                        -0.000009622   0.000000000  -0.000177667   0.010853796   0.029326037  -0.006357569  -0.000000498   0.000386454

   11    7.2  0.5  0.5   0.000000022   0.009396956   0.005435713   0.000088978  -0.003250886  -0.014995608  -0.025804849  -0.000033328
                        -0.000000000   0.000000000  -0.000000001   0.000000002  -0.000000019  -0.000000017   0.000000000  -0.000000000

   12    8.2  0.5  0.5   0.000000000  -0.000000000   0.000000001  -0.000000002   0.000000019   0.000000017  -0.000000000   0.000000000
                        -0.000000022  -0.009406578   0.005419048   0.000088705  -0.003109024  -0.014341222   0.026191356   0.000033826

   13    1.2  0.5 -0.5   0.000000000   0.000210264  -0.000007564  -0.000000124   0.003201214   0.014766399  -0.631011120  -0.000814966
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000029   0.000000027  -0.000000000   0.000000000

   14    2.2  0.5 -0.5  -0.000000000  -0.000007566  -0.000210207  -0.000003441   0.133406455   0.615373887   0.015125957   0.000019552
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000778   0.000000721  -0.000000011   0.000000009

   15    3.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000210400  -0.000000192  -0.000000003   0.001717025   0.007920326   0.631771078   0.000815948

   16    4.2  0.5 -0.5   0.000105518  -0.000000000   0.000002979  -0.000181979  -0.531854418   0.115300324   0.000418427  -0.323990479
                        -0.000000256   0.000000000  -0.000000000   0.000000019   0.014892517  -0.003229080   0.000009440  -0.007303621

   17    5.2  0.5 -0.5   0.000000255  -0.000000000  -0.000000000   0.000000019   0.015118904  -0.003278158  -0.000009015   0.006985898
                         0.000105198  -0.000000000  -0.000002982   0.000182165   0.539939697  -0.117053108   0.000400252  -0.309895355

   18    6.2  0.5 -0.5   0.000000000  -0.000000000   0.000000003  -0.000000003   0.000000037   0.000000034  -0.000000001   0.000000000
                        -0.000000000  -0.000009622   0.010853796   0.000177667  -0.006360062  -0.029337531   0.000386552   0.000000498

   19    7.2  0.5 -0.5   0.009396928  -0.000000022  -0.000088978   0.005435713   0.014989732  -0.003249612   0.000033320  -0.025798295
                        -0.000022794   0.000000000   0.000000011  -0.000000569  -0.000419729   0.000091007   0.000000751  -0.000581564

   20    8.2  0.5 -0.5   0.000022817  -0.000000000   0.000000011  -0.000000568  -0.000401413   0.000087037  -0.000000763   0.000590275
                         0.009406550  -0.000000022   0.000088705  -0.005419048  -0.014335603   0.003107805   0.000033818  -0.026184704


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000592  -0.000000983  -0.000000000  -0.000000006  -0.000000433   0.000000067  -0.000004393   0.000000117
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000000131  -0.000000079  -0.000001717  -0.000000000  -0.000000004  -0.000000029   0.000000044   0.000001661
                         0.000000009  -0.000000005   0.000001642   0.000000000   0.000000003   0.000000018  -0.000000058  -0.000002186

    3    1.2  1.5 -0.5  -0.000000079  -0.000000131  -0.000000000   0.000002376   0.000000034  -0.000000005  -0.000002746   0.000000073
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    4    1.2  1.5 -1.5   0.000000981  -0.000000590   0.000000004   0.000000000   0.000000057   0.000000365   0.000000071   0.000002658
                         0.000000064  -0.000000039  -0.000000004  -0.000000000  -0.000000036  -0.000000234  -0.000000093  -0.000003498

    5    1.2  0.5  0.5   0.232353084  -0.139854172   0.020092623   0.000000112   0.093547285   0.603631010  -0.000000121  -0.000004540
                         0.015215196  -0.009158084  -0.019217507  -0.000000048  -0.059961747  -0.386914010   0.000000159   0.000005976

    6    2.2  0.5  0.5  -0.030325787   0.018253203   0.560346574   0.000003123  -0.002112432  -0.013630849   0.000000087   0.000003277
                        -0.001985826   0.001195276  -0.535941193  -0.000001336   0.001354022   0.008737070  -0.000000115  -0.000004314

    7    3.2  0.5  0.5  -0.020157097   0.012132633   0.014455344   0.000000036  -0.056668613  -0.365664465  -0.000000164  -0.000006143
                         0.307821457  -0.185278863   0.015113603   0.000000085  -0.088409613  -0.570479240  -0.000000124  -0.000004667

    8    4.2  0.5  0.5  -0.317609040  -0.527674210   0.000001909  -0.465505757  -0.044512352   0.006898271  -0.000001664   0.000000044
                         0.000000004   0.000000001  -0.000000716   0.000000185   0.000000000   0.000000001  -0.000000000   0.000000000

    9    5.2  0.5  0.5   0.000000004   0.000000001   0.000000654  -0.000000169   0.000000000   0.000000001   0.000000000  -0.000000000
                         0.332584141   0.552553774   0.000001745  -0.425291349   0.032754484  -0.005076104   0.000006055  -0.000000161

   10    6.2  0.5  0.5   0.000000300  -0.000000181   0.000057066   0.000000000   0.000000087   0.000000564   0.012233985   0.459457068
                        -0.000004585   0.000002760   0.000059664   0.000000000   0.000000136   0.000000880   0.009294087   0.349057425

   11    7.2  0.5  0.5   0.000023672   0.000039328   0.000000000  -0.000042652   0.000013597  -0.000002107   0.577446731  -0.015375531
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000080  -0.000000227

   12    8.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000080   0.000000227
                        -0.000020854  -0.000034646   0.000000000  -0.000043397  -0.000014707   0.000002279   0.576979123  -0.015363080

   13    1.2  0.5 -0.5   0.140153701   0.232850720  -0.000000114   0.027803347   0.716988736  -0.111114831  -0.000007505   0.000000200
                        -0.000000002  -0.000000000   0.000000042  -0.000000011  -0.000000004  -0.000000020  -0.000000000   0.000000000

   14    2.2  0.5 -0.5  -0.018292296  -0.030390737  -0.000003180   0.775384579  -0.016190628   0.002509132   0.000005417  -0.000000144
                         0.000000000   0.000000000   0.000001193  -0.000000308   0.000000000   0.000000000  -0.000000000   0.000000000

   15    3.2  0.5 -0.5  -0.000000002  -0.000000000   0.000000032  -0.000000008   0.000000003   0.000000019  -0.000000000   0.000000000
                        -0.185675679  -0.308480725   0.000000086  -0.020913583   0.677611293  -0.105012339   0.000007715  -0.000000205

   16    4.2  0.5 -0.5   0.526546493  -0.316930263   0.336406685   0.000001875   0.005807636   0.037474837   0.000000027   0.000001006
                         0.034479887  -0.020753574  -0.321754800  -0.000000802  -0.003722567  -0.024020534  -0.000000035  -0.000001325

   17    5.2  0.5 -0.5  -0.036105595   0.021732094  -0.293958842  -0.000000733   0.002739257   0.017675548   0.000000128   0.000004821
                         0.551372886  -0.331873360  -0.307344970  -0.000001713   0.004273558   0.027575918   0.000000098   0.000003663

   18    6.2  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000080  -0.000000227
                         0.000002766   0.000004595   0.000000000  -0.000082561  -0.000001045   0.000000162  -0.577011164   0.015363933

   19    7.2  0.5 -0.5  -0.000039244   0.000023621   0.000030823   0.000000000  -0.000001774  -0.000011448  -0.009301103  -0.349320917
                        -0.000002570   0.000001547  -0.000029481  -0.000000000   0.000001137   0.000007338   0.012243220   0.459803897

   20    8.2  0.5 -0.5   0.000002264  -0.000001363  -0.000029996  -0.000000000  -0.000001230  -0.000007937   0.012233306   0.459431554
                        -0.000034572   0.000020809  -0.000031362  -0.000000000  -0.000001919  -0.000012382   0.009293571   0.349038042


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.013057257  -0.000009049   0.002392934  -0.000065005
                         0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000000404  -0.000581880  -0.000195253  -0.007187836
                         0.000001609  -0.002321871   0.000295938   0.010894085

    3    1.2  1.5 -0.5  -0.002393673  -0.000001659  -0.013051669   0.000354546
                         0.000000001  -0.000000001   0.000000004   0.000000003

    4    1.2  1.5 -1.5   0.000002200  -0.003174105   0.000035799   0.001317839
                         0.000008777  -0.012665584  -0.000054259  -0.001997356

    5    1.2  0.5  0.5  -0.000003826   0.005520470  -0.000075293  -0.002771672
                        -0.000015266   0.022028246   0.000114116   0.004200827

    6    2.2  0.5  0.5   0.000000850  -0.001223820  -0.000339580  -0.012500904
                         0.000003383  -0.004883396   0.000514687   0.018946719

    7    3.2  0.5  0.5   0.000015380  -0.022193179  -0.000095074  -0.003499842
                        -0.000003854   0.005561804  -0.000062729  -0.002309168

    8    4.2  0.5  0.5  -0.007805899  -0.000005410   0.021902099  -0.000594967
                        -0.000000001   0.000000002  -0.000000006  -0.000000005

    9    5.2  0.5  0.5   0.000000001  -0.000000002   0.000000006   0.000000005
                         0.015070707   0.000010444   0.017709637  -0.000481078

   10    6.2  0.5  0.5   0.000099003  -0.142909363   0.018190705   0.669638197
                        -0.000024886   0.035814282   0.012001847   0.441822263

   11    7.2  0.5  0.5   0.768339566   0.000532453   0.273675786  -0.007434294
                        -0.000000022   0.000000037  -0.000000125  -0.000000099

   12    8.2  0.5  0.5   0.000000022  -0.000000037   0.000000125   0.000000099
                        -0.621626308  -0.000430797   0.528407406  -0.014354142

   13    1.2  0.5 -0.5  -0.022709452  -0.000015738   0.005032804  -0.000136717
                        -0.000000000   0.000000000  -0.000000000  -0.000000000

   14    2.2  0.5 -0.5   0.005034411   0.000003488   0.022699136  -0.000616618
                        -0.000000001   0.000000002  -0.000000007  -0.000000006

   15    3.2  0.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.022879486   0.000015856  -0.004192988   0.000113904

   16    4.2  0.5 -0.5   0.000001313  -0.001897547   0.000327657   0.012061958
                         0.000005248  -0.007571748  -0.000496615  -0.018281442

   17    5.2  0.5 -0.5  -0.000010130   0.014618637  -0.000401553  -0.014782039
                         0.000002541  -0.003663556  -0.000264936  -0.009753079

   18    6.2  0.5 -0.5   0.000000045  -0.000000073   0.000000250   0.000000197
                         0.147328710   0.000102083   0.802260698  -0.021793257

   19    7.2  0.5 -0.5  -0.000129470   0.186776633   0.004094142   0.150719189
                        -0.000516473   0.745292008  -0.006205379  -0.228434153

   20    8.2  0.5 -0.5   0.000417883  -0.602979637  -0.011981301  -0.441055883
                        -0.000104687   0.151111962  -0.007905049  -0.291005318


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%  99.982%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.027%  99.955%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%  99.955%   0.027%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5  99.982%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.022%   0.001%   0.000%  39.818%   5.422%   1.964%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  37.869%   1.780%   0.000%   0.023%   0.092%   0.033%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%  39.913%   9.516%   3.448%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   1.330%  28.309%  10.502%   0.000%  10.088%  27.844%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   1.371%  29.176%   9.608%   0.000%  11.061%  30.532%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.012%   0.086%   0.004%   0.000%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.000%   0.009%   0.003%   0.000%   0.001%   0.022%   0.067%   0.000%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.009%   0.003%   0.000%   0.001%   0.021%   0.069%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.022%  39.818%   0.000%   1.964%   5.422%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   1.780%  37.869%   0.023%   0.000%   0.033%   0.092%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%  39.913%   0.000%   3.448%   9.516%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  28.309%   1.330%   0.000%  10.502%  27.844%  10.088%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  29.176%   1.371%   0.000%   9.608%  30.532%  11.061%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.012%   0.000%   0.004%   0.086%   0.000%   0.000%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.009%   0.000%   0.000%   0.003%   0.022%   0.001%   0.000%   0.067%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.009%   0.000%   0.000%   0.003%   0.021%   0.001%   0.000%   0.069%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.001%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.017%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.017%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.001%
    5    1.2  0.5  0.5   0.077%   0.000%   1.235%  51.407%   0.000%   0.000%   0.000%   0.052%   0.000%   0.003%
    6    2.2  0.5  0.5  60.122%   0.000%   0.001%   0.026%   0.000%   0.000%   0.000%   0.003%   0.000%   0.052%
    7    3.2  0.5  0.5   0.044%   0.000%   1.103%  45.916%   0.000%   0.000%   0.000%   0.052%   0.000%   0.002%
    8    4.2  0.5  0.5   0.000%  21.670%   0.198%   0.005%   0.000%   0.000%   0.006%   0.000%   0.048%   0.000%
    9    5.2  0.5  0.5   0.000%  18.087%   0.107%   0.003%   0.000%   0.000%   0.023%   0.000%   0.031%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.024%  33.294%   0.000%   2.171%   0.047%  64.362%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.344%   0.024%  59.035%   0.000%   7.490%   0.006%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.290%   0.024%  38.642%   0.000%  27.921%   0.021%
   13    1.2  0.5 -0.5   0.000%   0.077%  51.407%   1.235%   0.000%   0.000%   0.052%   0.000%   0.003%   0.000%
   14    2.2  0.5 -0.5   0.000%  60.122%   0.026%   0.001%   0.000%   0.000%   0.003%   0.000%   0.052%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.044%  45.916%   1.103%   0.000%   0.000%   0.052%   0.000%   0.002%   0.000%
   16    4.2  0.5 -0.5  21.670%   0.000%   0.005%   0.198%   0.000%   0.000%   0.000%   0.006%   0.000%   0.048%
   17    5.2  0.5 -0.5  18.087%   0.000%   0.003%   0.107%   0.000%   0.000%   0.000%   0.023%   0.000%   0.031%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.294%   0.024%   2.171%   0.000%  64.362%   0.047%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.024%  33.344%   0.000%  59.035%   0.006%   7.490%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.024%  33.290%   0.000%  38.642%   0.021%  27.921%


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
              1      24       30.42       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       27.77       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        30.96     17.01      1.28     11.24      0.26      0.29      0.18      0.42
 REAL TIME  *        38.59 SEC
 DISK USED  *        58.27 MB (local),      939.36 MB (total)
 SF USED    *       266.35 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -341.812310764802

              CI              CI           MULTI         RHF-SCF
   -341.79053358   -341.87949383   -341.43610555   -341.53147429
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
