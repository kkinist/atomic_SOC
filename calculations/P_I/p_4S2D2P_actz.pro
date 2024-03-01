
 Working directory              : /wrk/irikura/molpro.y8sPKCuKyX/
 Global scratch directory       : /wrk/irikura/molpro.y8sPKCuKyX/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.y8sPKCuKyX/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
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
     wf,sym=2,spin=1;state,8;
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
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   P SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 12:21:51  
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

     6.816 MB (compressed) written to integral file ( 19.6%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     24 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         0.59      0.40
 REAL TIME  *         1.15 SEC
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
   1     -341.51802701    -341.51802701     0.00D+00     0.13D+00     0     0       0.01      0.01    start
   2     -341.53077011      -0.01274310     0.28D-02     0.10D-01     1     0       0.00      0.01    diag2
   3     -341.53134336      -0.00057324     0.11D-02     0.18D-02     2     0       0.00      0.01    diag2
   4     -341.53146093      -0.00011757     0.31D-03     0.10D-02     3     0       0.00      0.01    diag2
   5     -341.53147416      -0.00001323     0.10D-03     0.53D-03     4     0       0.00      0.01    diag2
   6     -341.53147429      -0.00000013     0.14D-04     0.88D-04     5     0       0.00      0.01    diag2
   7     -341.53147429      -0.00000000     0.13D-05     0.65D-05     6     0       0.01      0.02    diag2
   8     -341.53147429      -0.00000000     0.19D-06     0.92D-06     7     0       0.00      0.02    fixocc
   9     -341.53147429      -0.00000000     0.18D-07     0.17D-06     0     0       0.00      0.02    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -341.531474290429
  RHF One-electron energy            -472.611808947983
  RHF Two-electron energy             131.080334657554
  RHF Kinetic energy                  346.610689773002
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
    2.2     2.00000    -5.40012     1  1  px   0.99980
    3.2     2.00000    -5.40012     1  1  py   0.99975
    4.2     1.00000    -0.39133     1  2  px   1.00829
    5.2     1.00000    -0.39133     1  2  py   1.00819
    6.2     1.00000    -0.39133     1  2  pz   1.00819


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
 CPU TIMES  *         0.87      0.27      0.40
 REAL TIME  *         2.16 SEC
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
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.114D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.407D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.120D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.136D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.136D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 1 2 3   1 210 8 6 5 4 7 9 8  10 5 4 6 7 9 3 1 2 5   4 610 8 7 9 3 1 2 3
                                        1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  317  ( 11 closed/active, 168 closed/virtual, 0 active/active, 138 active/virtual )
 Total number of variables:    414
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -341.46034045    -341.46117596   -0.00083550    0.02533006 0.00003605 0.00000000  0.42E-01      0.13
   2    5   10    0   -341.46117924    -341.46117927   -0.00000004    0.00014909 0.00000001 0.00000000  0.27E-03      0.29
   3    2    4    0   -341.46117927    -341.46117927    0.00000000    0.00000002 0.00000000 0.00000000  0.34E-07      0.35

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.37E-08)
                       Final energy:   -341.46117927
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -341.530639907858
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.55010254
 One electron energy                          -472.41890523
 Two electron energy                           130.88826533
 Virial ratio                                    1.98551591
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -341.461666404935
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.55010254
 One electron energy                          -472.41890523
 Two electron energy                           130.95723883
 Virial ratio                                    1.98531688
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -341.461666404905
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.55010254
 One electron energy                          -472.41890523
 Two electron energy                           130.95723883
 Virial ratio                                    1.98531688
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -341.461666404889
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.55010254
 One electron energy                          -472.41890523
 Two electron energy                           130.95723883
 Virial ratio                                    1.98531688
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -341.461666404885
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.55010254
 One electron energy                          -472.41890523
 Two electron energy                           130.95723883
 Virial ratio                                    1.98531688
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -341.461666404862
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.55010254
 One electron energy                          -472.41890523
 Two electron energy                           130.95723883
 Virial ratio                                    1.98531688
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -341.437213837265
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.52144393
 One electron energy                          -472.34080424
 Two electron energy                           130.90359041
 Virial ratio                                    1.98532781
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -341.437213837243
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.52144393
 One electron energy                          -472.34080424
 Two electron energy                           130.90359041
 Virial ratio                                    1.98532781
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -341.437213837204
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.52144393
 One electron energy                          -472.34080424
 Two electron energy                           130.90359041
 Virial ratio                                    1.98532781
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.143445818924
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000022736
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000007541
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.856554181076
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.999999943524
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999999993
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999999962
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000000073
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     3.572408233666
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     3.999999970479
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000019685
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.427591766334
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     1.000000028429
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.000000009984
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999999662
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999999939
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     2.284145947410
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000006784
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     3.999999972774
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.715854052590
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000000028047
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999990022
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.000000000376
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999999989
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 3 5 6 2 1   6 5 3 4 2 4 5 3 6 2   1 4 5 3 6 2 1 4 5 3   6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 3 1 2   3 1 6 810 5 7 9 4 4  10 8 5 6 7 9 3 1 2 4   5 7 910 8 6 3 1 2 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -80.20950     1  1  s    0.99930
    2.1     2.00000    -7.56512     1  2  s    1.00038
    3.1     1.98184    -0.70656     1  3  s    1.01490
    1.2     2.00000    -5.41754     1  1  pz   0.99989
    2.2     2.00000    -5.41754     1  1  py   0.99989
    3.2     2.00000    -5.41754     1  1  px   0.99989
    4.2     1.00605    -0.16677     1  2  py   0.96444
    5.2     1.00605    -0.16677     1  2  px   0.96444
    6.2     1.00605    -0.16677     1  2  pz   0.96444
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa          1.00000000
 
 Energy:     -341.53063991
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aba          0.80172254      0.00000011     -0.00000019     -0.15462094      0.00000000      0.00000000      0.00000000
 2 baa         -0.26695560     -0.00000047      0.00000095      0.77162256      0.00000000     -0.00000000     -0.00000000
 2 02a         -0.00000000      0.00003363     -0.70710678      0.00000087     -0.00003545     -0.00006966      0.69740844
 2 0a2          0.00000000     -0.00006156      0.00003544      0.00000000     -0.70710678     -0.00000178     -0.00000431
 2 a20         -0.00000001      0.70710678      0.00003363      0.00000043     -0.00006155      0.69740844      0.00006966
 2 20a          0.00000000     -0.00003363      0.70710678     -0.00000087      0.00003545     -0.00006966      0.69740845
 2 a02          0.00000001     -0.70710678     -0.00003363     -0.00000043      0.00006155      0.69740845      0.00006966
 2 2a0         -0.00000000      0.00006156     -0.00003544     -0.00000000      0.70710678     -0.00000178     -0.00000431
 2 aab         -0.53476694      0.00000036     -0.00000075     -0.61700161     -0.00000000     -0.00000000     -0.00000000
 0 2a2         -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000042      0.00000102
 0 22a          0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00001649     -0.16505427
 0 a22          0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.16505427     -0.00001649
 
 Energy:     -341.46166640   -341.46166640   -341.46166640   -341.46166640   -341.46166640   -341.43721384   -341.43721384

 State:              8
 2 aba          0.00000000
 2 baa         -0.00000000
 2 02a          0.00000431
 2 0a2          0.69740845
 2 a20          0.00000178
 2 20a          0.00000431
 2 a02          0.00000178
 2 2a0          0.69740845
 2 aab          0.00000000
 0 2a2         -0.16505428
 0 22a         -0.00000102
 0 a22         -0.00000042
 
 Energy:     -341.43721384
 


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
 CPU TIMES  *         1.32      0.45      0.27      0.40
 REAL TIME  *         2.73 SEC
 DISK USED  *        31.13 MB (local),      424.61 MB (total)
 SF USED    *         4.14 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -341.5306399  -0.0
    -341.4616664   6.0
    -341.4616664   6.0
    -341.4616664   6.0
    -341.4616664   6.0
    -341.4616664   6.0
    -341.4372138   2.0
    -341.4372138   2.0
    -341.4372138   2.0
                                                  


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

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.19 MW


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -341.53063991

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
    1     1     1     1.00000000     0.00000000  -341.53063991    -0.00000000    -0.38135580  0.44D-01  0.39D-01     0.04
    2     1     1     1.06799827    -0.34425464  -341.87489455    -0.34425464    -0.00412422  0.11D-02  0.47D-03     0.07
    3     1     1     1.05671144    -0.34836262  -341.87900253    -0.00410798    -0.00004535  0.52D-05  0.61D-05     0.10
    4     1     1     1.05655748    -0.34841070  -341.87905061    -0.00004809    -0.00000072  0.20D-06  0.11D-06     0.13
    5     1     1     1.05661396    -0.34841146  -341.87905137    -0.00000076    -0.00000002  0.65D-08  0.38D-08     0.17
    6     1     1     1.05660722    -0.34841149  -341.87905139    -0.00000002    -0.00000000  0.16D-09  0.13D-09     0.21


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.8%
 S   0.0%  19.0%
 P   0.0%  19.0%   9.5%

 Initialization:  14.3%
 Other:           33.3%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222///           0.9728385


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97283855 (fixed)   0.97283855 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001124   -0.00010591   -0.00010395
 Singles      0.02591136   -0.04851178   -0.05445612
 Pairs        0.03069649   -0.29979380   -0.29385142
 Total        1.05661910   -0.34841149   -0.34841149
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.53063991
 Nuclear energy                         0.00000000
 Kinetic energy                       346.83106604
 One electron energy                 -472.32676059
 Two electron energy                  130.44770920
 Virial quotient                       -0.98572211
 Correlation energy                    -0.34841149
 !CI(SD) STATE 1.2 Energy            -341.879051393268

 Properties without orbital relaxation:

 !CI(SD) STATE 1.2 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.89877814 (Davidson, fixed reference)
 Cluster corrected energies          -341.89877814 (Davidson, relaxed reference)

 Cluster corrected energies          -341.89537879 (Pople, fixed reference)
 Cluster corrected energies          -341.89537879 (Pople, relaxed reference)



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
 CPU TIMES  *         1.58      0.25      0.45      0.27      0.40
 REAL TIME  *         3.04 SEC
 DISK USED  *        31.86 MB (local),      433.37 MB (total)
 SF USED    *         9.80 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -341.89877814  AU                              


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
     1      -341.46166640
     2      -341.46166640
     3      -341.46166640
     4      -341.46166640
     5      -341.46166640
     6      -341.43721384
     7      -341.43721384
     8      -341.43721384

 Number of blocks in overlap matrix:   242   Smallest eigenvalue:  0.14D-01
 Number of N-2 electron functions:     369
 Number of N-1 electron functions:     503

 Number of internal configurations:                   83
 Number of singly external configurations:         16662
 Number of doubly external configurations:        403521
 Total number of contracted configurations:       420266
 Total number of uncontracted configurations:     923405

 Diagonal Coupling coefficients finished.               Storage:    268020 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    276338 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -341.46166640     0.00000000    -0.39009819  0.48D-01  0.39D-01     0.05
    1     2     2     1.00000000     0.00000000  -341.46166640     0.00000000    -0.38933835  0.47D-01  0.38D-01     0.05
    1     3     3     1.00000000     0.00000000  -341.46166640    -0.00000000    -0.38914245  0.46D-01  0.39D-01     0.05
    1     4     4     1.00000000     0.00000000  -341.46166640     0.00000000    -0.38938720  0.46D-01  0.39D-01     0.05
    1     5     5     1.00000000     0.00000000  -341.46166640     0.00000000    -0.38885831  0.46D-01  0.38D-01     0.05
    1     6     6     1.00000000     0.00000000  -341.43721384    -0.00000000    -0.37704924  0.26D-01  0.49D-01     0.05
    1     7     7     1.00000000     0.00000000  -341.43721384    -0.00000000    -0.37738973  0.25D-01  0.50D-01     0.05
    1     8     8     1.00000000     0.00000000  -341.43721384    -0.00000000    -0.37697902  0.26D-01  0.49D-01     0.05
    2     1     1     1.07074597    -0.35575567  -341.81742207    -0.35575567    -0.00625021  0.14D-02  0.10D-02     2.43
    2     2     2     1.07069678    -0.35574283  -341.81740923    -0.35574283    -0.00625919  0.14D-02  0.10D-02     2.43
    2     3     3     1.07067064    -0.35572266  -341.81738907    -0.35572266    -0.00626564  0.15D-02  0.10D-02     2.43
    2     4     4     1.07117711    -0.35556287  -341.81722928    -0.35556287    -0.00645417  0.16D-02  0.10D-02     2.43
    2     5     5     1.07176881    -0.35542800  -341.81709441    -0.35542800    -0.00663634  0.17D-02  0.10D-02     2.43
    2     6     6     1.06421078    -0.34886166  -341.78607550    -0.34886166    -0.00498303  0.14D-02  0.74D-03     2.43
    2     7     7     1.06406792    -0.34880065  -341.78601449    -0.34880065    -0.00503874  0.14D-02  0.75D-03     2.43
    2     8     8     1.06401554    -0.34879057  -341.78600441    -0.34879057    -0.00504760  0.14D-02  0.75D-03     2.43
    3     1     1     1.06464650    -0.36146875  -341.82313515    -0.00571308    -0.00016144  0.24D-04  0.31D-04     4.49
    3     2     2     1.06475888    -0.36146713  -341.82313353    -0.00572430    -0.00016313  0.23D-04  0.31D-04     4.49
    3     3     3     1.06462445    -0.36146462  -341.82313102    -0.00574196    -0.00016440  0.25D-04  0.31D-04     4.49
    3     4     4     1.06459735    -0.36146318  -341.82312958    -0.00590030    -0.00016527  0.24D-04  0.32D-04     4.49
    3     5     5     1.06465006    -0.36146183  -341.82312823    -0.00603383    -0.00016625  0.24D-04  0.32D-04     4.49
    3     6     6     1.05947880    -0.35353094  -341.79074478    -0.00466928    -0.00012366  0.89D-05  0.29D-04     4.49
    3     7     7     1.05941233    -0.35352679  -341.79074062    -0.00472613    -0.00012687  0.89D-05  0.30D-04     4.49
    3     8     8     1.05939273    -0.35352630  -341.79074013    -0.00473573    -0.00012717  0.89D-05  0.30D-04     4.49
    4     1     1     1.06583245    -0.36164632  -341.82331273    -0.00017757    -0.00000739  0.86D-06  0.19D-05     6.52
    4     2     2     1.06581898    -0.36164613  -341.82331253    -0.00017900    -0.00000757  0.98D-06  0.19D-05     6.52
    4     3     3     1.06582174    -0.36164583  -341.82331223    -0.00018121    -0.00000777  0.96D-06  0.20D-05     6.52
    4     4     4     1.06583625    -0.36164580  -341.82331221    -0.00018262    -0.00000776  0.86D-06  0.20D-05     6.52
    4     5     5     1.06582660    -0.36164576  -341.82331216    -0.00018393    -0.00000782  0.93D-06  0.20D-05     6.52
    4     6     6     1.06052238    -0.35367099  -341.79088483    -0.00014005    -0.00000614  0.87D-06  0.16D-05     6.52
    4     7     7     1.06052154    -0.35367091  -341.79088474    -0.00014412    -0.00000620  0.85D-06  0.16D-05     6.52
    4     8     8     1.06052074    -0.35367088  -341.79088472    -0.00014458    -0.00000622  0.85D-06  0.16D-05     6.52
    5     1     1     1.06623310    -0.36165507  -341.82332148    -0.00000875    -0.00000042  0.48D-07  0.10D-06     8.73
    5     2     2     1.06623319    -0.36165507  -341.82332147    -0.00000894    -0.00000043  0.50D-07  0.10D-06     8.73
    5     3     3     1.06623759    -0.36165505  -341.82332145    -0.00000922    -0.00000044  0.48D-07  0.11D-06     8.73
    5     4     4     1.06624094    -0.36165504  -341.82332145    -0.00000924    -0.00000044  0.46D-07  0.11D-06     8.73
    5     5     5     1.06623980    -0.36165504  -341.82332144    -0.00000928    -0.00000045  0.47D-07  0.11D-06     8.73
    5     6     6     1.06080907    -0.35367827  -341.79089211    -0.00000728    -0.00000042  0.74D-07  0.89D-07     8.73
    5     7     7     1.06080978    -0.35367827  -341.79089210    -0.00000736    -0.00000042  0.75D-07  0.91D-07     8.73
    5     8     8     1.06080975    -0.35367826  -341.79089210    -0.00000738    -0.00000043  0.76D-07  0.91D-07     8.73
    6     1     1     1.06621710    -0.36165557  -341.82332198    -0.00000050    -0.00000002  0.29D-08  0.57D-08    10.76
    6     2     2     1.06621746    -0.36165557  -341.82332197    -0.00000050    -0.00000002  0.29D-08  0.59D-08    10.76
    6     3     3     1.06621801    -0.36165557  -341.82332197    -0.00000052    -0.00000002  0.30D-08  0.61D-08    10.76
    6     4     4     1.06621781    -0.36165557  -341.82332197    -0.00000052    -0.00000002  0.29D-08  0.61D-08    10.76
    6     5     5     1.06621801    -0.36165557  -341.82332197    -0.00000053    -0.00000003  0.29D-08  0.62D-08    10.76
    6     6     6     1.06078580    -0.35367874  -341.79089258    -0.00000047    -0.00000002  0.23D-08  0.54D-08    10.76
    6     7     7     1.06078586    -0.35367874  -341.79089258    -0.00000048    -0.00000002  0.23D-08  0.55D-08    10.76
    6     8     8     1.06078565    -0.35367874  -341.79089258    -0.00000048    -0.00000002  0.23D-08  0.55D-08    10.76


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.0%   0.6%
 P   0.7%  13.6%  32.9%

 Initialization:   0.2%
 Other:           51.8%

 Total CPU:       10.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//\           0.8282652   0.5018485   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 22222/\/          -0.5018485   0.8282650   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222220/          -0.0000000   0.0000000  -0.6847900  -0.0000000   0.0000000   0.6779799   0.0000000   0.0000000
 222222/0          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.6847900  -0.0000000  -0.0000000   0.6779799
 22222/02           0.0000000   0.0000000  -0.0000000  -0.6847900   0.0000000  -0.0000000   0.6779799   0.0000000
 22222/20           0.0000000   0.0000000  -0.0000000   0.6847899   0.0000000  -0.0000000   0.6779796   0.0000000
 222220/2          -0.0000000   0.0000000  -0.0000000   0.0000000   0.6847898  -0.0000000  -0.0000000   0.6779799
 2222202/          -0.0000000   0.0000000   0.6847898  -0.0000000   0.0000000   0.6779797   0.0000000   0.0000000
 2022222/           0.0000000  -0.0000000  -0.0000001   0.0000000  -0.0000000  -0.1528307  -0.0000000  -0.0000000
 20222/22          -0.0000000  -0.0000000   0.0000000  -0.0000002  -0.0000000   0.0000000  -0.1528305  -0.0000000
 202222/2           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000001   0.0000000   0.0000000  -0.1528302

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222//\  13.1    -0.0000000   0.0000000  -0.0678528  -0.0000000   0.0000000   0.0075029  -0.0000000  -0.0000000
 2\222//\  11.1     0.0000000  -0.0000000   0.0000000  -0.0000000   0.0678525  -0.0000000  -0.0000000  -0.0075030
 2\222//\  12.1    -0.0235384   0.0650738  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2/222\/\  14.1    -0.0000000   0.0000000  -0.0000000   0.0527665   0.0000000   0.0000000   0.0086660  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.921679    0.000000    0.000000    0.297292    0.000000    0.000000   -0.000000   -0.000000
 2           0.297292   -0.000000    0.000000    0.921679   -0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.968439    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000    0.968439   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.968439    0.000000    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.970883   -0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.970883    0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.970883

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968440    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.968439    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.968439    0.000000    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.968439    0.000000    0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.968439    0.000000    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.970883    0.000000    0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.970883    0.000000
 8          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.970883


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.92167921 (fixed)   0.96843957 (relaxed)   0.96843957 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002142   -0.00016622   -0.28558945
 Singles      0.03182332   -0.05715643   -0.06439921
 Pairs        0.03439520    0.00000000   -0.01166690
 Total        1.06623994   -0.05732265   -0.36165557
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46166640
 Nuclear energy                         0.00000000
 Kinetic energy                       346.80044347
 One electron energy                 -472.20535667
 Two electron energy                  130.38203470
 Virial quotient                       -0.98564846
 Correlation energy                    -0.36165557
 !MRCI STATE 1.2 Energy              -341.823321975204

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84727802 (Davidson, fixed reference)
 Cluster corrected energies          -341.84727802 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84727802 (Davidson, rotated reference)

 Cluster corrected energies          -341.84419374 (Pople, fixed reference)
 Cluster corrected energies          -341.84419374 (Pople, relaxed reference)
 Cluster corrected energies          -341.84419374 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.92167910 (fixed)   0.96843941 (relaxed)   0.96843941 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002142   -0.00016622   -0.28558920
 Singles      0.03182359   -0.05715660   -0.06439931
 Pairs        0.03439529   -0.00000000   -0.01166706
 Total        1.06624029   -0.05732282   -0.36165557
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46166640
 Nuclear energy                         0.00000000
 Kinetic energy                       346.80044780
 One electron energy                 -472.20535775
 Two electron energy                  130.38203577
 Virial quotient                       -0.98564844
 Correlation energy                    -0.36165557
 !MRCI STATE 2.2 Energy              -341.823321974349

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84727815 (Davidson, fixed reference)
 Cluster corrected energies          -341.84727815 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84727815 (Davidson, rotated reference)

 Cluster corrected energies          -341.84419386 (Pople, fixed reference)
 Cluster corrected energies          -341.84419386 (Pople, relaxed reference)
 Cluster corrected energies          -341.84419386 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96843916 (fixed)   0.96843916 (relaxed)   0.96843916 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002142   -0.00016622   -0.28558845
 Singles      0.03182485   -0.05715725   -0.06440000
 Pairs        0.03439457    0.00000000   -0.01166712
 Total        1.06624084   -0.05732347   -0.36165557
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46166640
 Nuclear energy                         0.00000000
 Kinetic energy                       346.80047783
 One electron energy                 -472.20539050
 Two electron energy                  130.38206853
 Virial quotient                       -0.98564836
 Correlation energy                    -0.36165557
 !MRCI STATE 3.2 Energy              -341.823321973205

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84727834 (Davidson, fixed reference)
 Cluster corrected energies          -341.84727834 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84727834 (Davidson, rotated reference)

 Cluster corrected energies          -341.84419404 (Pople, fixed reference)
 Cluster corrected energies          -341.84419404 (Pople, relaxed reference)
 Cluster corrected energies          -341.84419404 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96843925 (fixed)   0.96843925 (relaxed)   0.96843925 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002142   -0.00016622   -0.28558847
 Singles      0.03182496   -0.05715728   -0.06440026
 Pairs        0.03439427   -0.00000000   -0.01166684
 Total        1.06624064   -0.05732350   -0.36165557
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46166640
 Nuclear energy                         0.00000000
 Kinetic energy                       346.80048254
 One electron energy                 -472.20538622
 Two electron energy                  130.38206425
 Virial quotient                       -0.98564835
 Correlation energy                    -0.36165557
 !MRCI STATE 4.2 Energy              -341.823321972801

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84727827 (Davidson, fixed reference)
 Cluster corrected energies          -341.84727827 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84727827 (Davidson, rotated reference)

 Cluster corrected energies          -341.84419397 (Pople, fixed reference)
 Cluster corrected energies          -341.84419397 (Pople, relaxed reference)
 Cluster corrected energies          -341.84419397 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.96843916 (fixed)   0.96843916 (relaxed)   0.96843916 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002142   -0.00016622   -0.28558838
 Singles      0.03182499   -0.05715730   -0.06440020
 Pairs        0.03439443   -0.00000003   -0.01166699
 Total        1.06624084   -0.05732354   -0.36165557
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46166640
 Nuclear energy                         0.00000000
 Kinetic energy                       346.80048511
 One electron energy                 -472.20539020
 Two electron energy                  130.38206823
 Virial quotient                       -0.98564834
 Correlation energy                    -0.36165557
 !MRCI STATE 5.2 Energy              -341.823321972646

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84727834 (Davidson, fixed reference)
 Cluster corrected energies          -341.84727834 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84727834 (Davidson, rotated reference)

 Cluster corrected energies          -341.84419404 (Pople, fixed reference)
 Cluster corrected energies          -341.84419404 (Pople, relaxed reference)
 Cluster corrected energies          -341.84419404 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97088300 (fixed)   0.97091213 (relaxed)   0.97088300 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008868   -0.00019610   -0.30095040
 Singles      0.01666033   -0.03443789   -0.03801656
 Pairs        0.04413086    0.00000000   -0.01471178
 Total        1.06087987   -0.03463398   -0.35367874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.43721384
 Nuclear energy                         0.00000000
 Kinetic energy                       346.77324263
 One electron energy                 -472.10703831
 Two electron energy                  130.31614573
 Virial quotient                       -0.98563225
 Correlation energy                    -0.35367874
 !MRCI STATE 6.2 Energy              -341.790892581869

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.81242450 (Davidson, fixed reference)
 Cluster corrected energies          -341.81240198 (Davidson, relaxed reference)
 Cluster corrected energies          -341.81242450 (Davidson, rotated reference)

 Cluster corrected energies          -341.80958446 (Pople, fixed reference)
 Cluster corrected energies          -341.80956411 (Pople, relaxed reference)
 Cluster corrected energies          -341.80958446 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97088297 (fixed)   0.97091210 (relaxed)   0.97088297 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008868   -0.00019610   -0.30095036
 Singles      0.01666034   -0.03443791   -0.03801664
 Pairs        0.04413090    0.00000000   -0.01471174
 Total        1.06087993   -0.03463401   -0.35367874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.43721384
 Nuclear energy                         0.00000000
 Kinetic energy                       346.77323924
 One electron energy                 -472.10702669
 Two electron energy                  130.31613411
 Virial quotient                       -0.98563226
 Correlation energy                    -0.35367874
 !MRCI STATE 7.2 Energy              -341.790892581087

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.81242452 (Davidson, fixed reference)
 Cluster corrected energies          -341.81240200 (Davidson, relaxed reference)
 Cluster corrected energies          -341.81242452 (Davidson, rotated reference)

 Cluster corrected energies          -341.80958448 (Pople, fixed reference)
 Cluster corrected energies          -341.80956413 (Pople, relaxed reference)
 Cluster corrected energies          -341.80958448 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97088306 (fixed)   0.97091220 (relaxed)   0.97088306 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008869   -0.00019610   -0.00021441
 Singles      0.01666013   -0.03443784   -0.03801659
 Pairs        0.04413091   -0.31904481   -0.31544775
 Total        1.06087973   -0.35367875   -0.35367874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.43721384
 Nuclear energy                         0.00000000
 Kinetic energy                       346.77323835
 One electron energy                 -472.10702547
 Two electron energy                  130.31613289
 Virial quotient                       -0.98563227
 Correlation energy                    -0.35367874
 !MRCI STATE 8.2 Energy              -341.790892580961

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.81242445 (Davidson, fixed reference)
 Cluster corrected energies          -341.81240193 (Davidson, relaxed reference)
 Cluster corrected energies          -341.81242445 (Davidson, rotated reference)

 Cluster corrected energies          -341.80958441 (Pople, fixed reference)
 Cluster corrected energies          -341.80956406 (Pople, relaxed reference)
 Cluster corrected energies          -341.80958441 (Pople, rotated reference)



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
 CPU TIMES  *        13.05     11.46      0.25      0.45      0.27      0.40
 REAL TIME  *        17.32 SEC
 DISK USED  *        58.23 MB (local),      749.86 MB (total)
 SF USED    *       266.35 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -341.84727802  AU                              
 SETTING HLSDIAG(3)     =      -341.84727815  AU                              
 SETTING HLSDIAG(4)     =      -341.84727834  AU                              
 SETTING HLSDIAG(5)     =      -341.84727827  AU                              
 SETTING HLSDIAG(6)     =      -341.84727834  AU                              
 SETTING HLSDIAG(7)     =      -341.81242450  AU                              
 SETTING HLSDIAG(8)     =      -341.81242452  AU                              
 SETTING HLSDIAG(9)     =      -341.81242445  AU                              


         HLSDIAG
    -341.8987781
    -341.8472780
    -341.8472781
    -341.8472783
    -341.8472783
    -341.8472783
    -341.8124245
    -341.8124245
    -341.8124244
                                                  

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

 Time for Seward_LS:       0.64 sec

 CPU time:      0.64 sec, REAL time:      0.70 sec


 SORTLS1 read     2508011. and wrote     2508011. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.04 sec
 SORTLS2 read     2508011. and wrote    12192876. SO integrals in    36 records. CPU time:      0.00 sec, REAL time:      0.02 sec

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
 CPU TIMES  *        14.64      1.53     11.46      0.25      0.45      0.27      0.40
 REAL TIME  *        19.06 SEC
 DISK USED  *        58.27 MB (local),      939.35 MB (total)
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

 Original energies:   -341.879051
 Replaced energies:   -341.898778

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -341.823322   -341.823322   -341.823322   -341.823322   -341.823322   -341.790893   -341.790893   -341.790893
 Replaced energies:   -341.847278   -341.847278   -341.847278   -341.847278   -341.847278   -341.812424   -341.812425   -341.812424



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -341.89877814

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

    2   1.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00     204.46

    3   1.2  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00   11302.97       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.29       0.00      -0.00    -124.02

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   11302.94       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.49       0.00       0.00     -75.14

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   11302.90       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.29      -0.49       0.00      -0.00      -0.00       0.00

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   11302.91       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.29       0.00

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   11302.90       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.29      -0.00       0.00

   10   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18952.43
                           -0.00    -204.46       0.00      -0.00     124.02      75.14      -0.00      -0.00      -0.00      -0.00

   11   7.2  0.5  0.5    -177.07       0.00    -102.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00     125.58       0.00

   12   8.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          177.09      -0.00    -102.24      -0.00       0.00       0.00      -0.00     125.58       0.00       0.00

   13   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.57       0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.28      -0.00

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.02      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.51       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.29       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.28       0.00      -0.00

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.57      -0.02       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.28      -0.00      -0.00    -125.59

   17   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.29      -0.00      -0.00     125.58
                           -0.00      -0.00      -0.00       0.00      -0.28      -0.51      -0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -125.58      -0.00
                           -0.00      -0.00    -204.46       0.00       0.00      -0.00       0.00     125.59      -0.00      -0.00

   19   7.2  0.5 -0.5       0.00    -102.23       0.00    -177.07      -3.07     144.97      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00    -125.59       0.00       0.00       0.47

   20   8.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00     125.58      -0.00      -0.00       0.47
                           -0.00     102.24      -0.00    -177.09    -127.10      69.84      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5    -177.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -177.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -102.23      -0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -102.24

    3   1.2  1.5 -0.5    -102.23      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     102.24      -0.00       0.00       0.00      -0.00       0.00     204.46       0.00       0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -177.07      -0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     177.09

    5   1.2  0.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.57      -0.00       0.00      -3.07      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.28      -0.00      -0.00     127.10

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.02       0.00      -0.00     144.97       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.51       0.00       0.00     -69.84

    7   3.2  0.5  0.5       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.29      -0.00      -0.00     125.58
                           -0.00       0.00       0.00       0.00       0.00       0.28       0.00      -0.00     125.59       0.00

    8   4.2  0.5  0.5       0.00       0.00       0.57       0.02      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                            0.00    -125.58       0.00      -0.00      -0.28       0.00      -0.00    -125.59      -0.00      -0.00

    9   5.2  0.5  0.5       0.00       0.00       0.00      -0.00       0.29       0.00      -0.00    -125.58      -0.00      -0.00
                         -125.58      -0.00      -0.28      -0.51      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   10   6.2  0.5  0.5       0.00       0.00      -0.00       0.00       0.00      -0.00     125.58      -0.00      -0.00       0.47
                           -0.00      -0.00       0.00      -0.00       0.00     125.59      -0.00       0.00      -0.47       0.00

   11   7.2  0.5  0.5   18952.43       0.00       3.07    -144.97       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.47       0.00      -0.00    -125.59       0.00       0.00       0.47       0.00      -0.00

   12   8.2  0.5  0.5       0.00   18952.44       0.00      -0.00    -125.58       0.00       0.00      -0.47      -0.00      -0.00
                            0.47      -0.00    -127.10      69.84      -0.00       0.00       0.00      -0.00       0.00      -0.00

   13   1.2  0.5 -0.5       3.07       0.00   11302.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     127.10      -0.00       0.00       0.29      -0.00       0.00     124.02       0.00       0.00

   14   2.2  0.5 -0.5    -144.97      -0.00       0.00   11302.94       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -69.84      -0.00       0.00      -0.49      -0.00      -0.00      75.14       0.00       0.00

   15   3.2  0.5 -0.5       0.00    -125.58       0.00       0.00   11302.90       0.00       0.00       0.00       0.00       0.00
                          125.59       0.00      -0.29       0.49      -0.00       0.00       0.00      -0.00       0.00      -0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   11302.91       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.29      -0.00      -0.00     125.58

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   11302.90       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.29       0.00      -0.00     125.58       0.00

   18   6.2  0.5 -0.5       0.00      -0.47       0.00       0.00       0.00       0.00       0.00   18952.43       0.00       0.00
                           -0.47       0.00    -124.02     -75.14       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   18952.43       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -125.58      -0.00      -0.00       0.47

   20   8.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18952.44
                            0.00       0.00      -0.00      -0.00       0.00    -125.58      -0.00      -0.00      -0.47       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -341.89879322    -0.00001508       -3.31      0.00000000        0.00      0.0000
     2  -341.89879322    -0.00001508       -3.31      0.00000000        0.00      0.0000
     3  -341.89879322    -0.00001508       -3.31      0.00000000        0.00      0.0000
     4  -341.89879322    -0.00001508       -3.31      0.00000000        0.00      0.0000
     5  -341.84732908     0.05144905    11291.76      0.05146413    11295.07      1.4004
     6  -341.84732908     0.05144905    11291.76      0.05146413    11295.07      1.4004
     7  -341.84732893     0.05144921    11291.80      0.05146429    11295.11      1.4004
     8  -341.84732893     0.05144921    11291.80      0.05146429    11295.11      1.4004
     9  -341.84727571     0.05150242    11303.48      0.05151751    11306.79      1.4019
    10  -341.84727571     0.05150242    11303.48      0.05151751    11306.79      1.4019
    11  -341.84727561     0.05150253    11303.50      0.05151761    11306.81      1.4019
    12  -341.84727561     0.05150253    11303.50      0.05151761    11306.81      1.4019
    13  -341.84727552     0.05150261    11303.52      0.05151769    11306.83      1.4019
    14  -341.84727552     0.05150261    11303.52      0.05151769    11306.83      1.4019
    15  -341.81242019     0.08635795    18953.38      0.08637303    18956.69      2.3503
    16  -341.81242019     0.08635795    18953.38      0.08637303    18956.69      2.3503
    17  -341.81236470     0.08641344    18965.56      0.08642852    18968.87      2.3518
    18  -341.81236470     0.08641344    18965.56      0.08642852    18968.87      2.3518
    19  -341.81236468     0.08641346    18965.56      0.08642854    18968.87      2.3518
    20  -341.81236468     0.08641346    18965.56      0.08642854    18968.87      2.3518


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.865231542  -0.001729377   0.012156255   0.501047762  -0.000542264  -0.000052739   0.000018591   0.000601752
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.001001760  -0.501194204   0.864978740  -0.020985827  -0.000058082   0.000597202   0.000425073  -0.000013132
                         0.000000001   0.000000662   0.000000021  -0.000000001  -0.000004380   0.000045032   0.000340500  -0.000010519

    3    1.2  1.5 -0.5  -0.501194199   0.001001760   0.020985827   0.864978743  -0.000598897  -0.000058246  -0.000016826  -0.000544635
                        -0.000000001   0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000   0.000000000   0.000000000

    4    1.2  1.5 -1.5   0.001729377   0.865231539   0.501047767  -0.012156255  -0.000052589   0.000540729  -0.000469652   0.000014510
                        -0.000000002  -0.000001141   0.000000013  -0.000000000  -0.000003965   0.000040774  -0.000376209   0.000011623

    5    1.2  0.5  0.5   0.000000364   0.000182100  -0.000099677   0.000002418  -0.017402718   0.178936803   0.471031760  -0.014552153
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.001312259   0.013492711   0.377314367  -0.011656837

    6    2.2  0.5  0.5  -0.000000199  -0.000099723  -0.000182018   0.000004416  -0.058314260   0.599594074  -0.140897784   0.004352927
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.004397178   0.045212249  -0.112864456   0.003486854

    7    3.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.003092692  -0.031799420   0.293426626  -0.009065184
                        -0.000000359  -0.000179745  -0.000103862   0.000002520  -0.041014558   0.421716494  -0.366308004   0.011316797

    8    4.2  0.5  0.5   0.000180058  -0.000000360  -0.000002507  -0.000103319  -0.193372929  -0.018806722  -0.018607220  -0.602288110
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000030   0.000000012   0.000000008   0.000000028

    9    5.2  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000030   0.000000012   0.000000008   0.000000028
                        -0.000000268   0.000000001   0.000005035   0.000207525   0.615869283   0.059897126   0.004127313   0.133594889

   10    6.2  0.5  0.5  -0.000000000  -0.000000007  -0.000000000   0.000000000  -0.000161279   0.001658288   0.012535375  -0.000387271
                        -0.000010810  -0.005408217   0.009333683  -0.000226451   0.002138840  -0.021991804  -0.015648912   0.000483461

   11    7.2  0.5  0.5   0.005381467  -0.000010756   0.000226825   0.009349119   0.028317563   0.002754059  -0.000282888  -0.009156676
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000001

   12    8.2  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000   0.000000001
                        -0.010790830   0.000021568  -0.000000375  -0.000015440  -0.006263169  -0.000609132   0.000902306   0.029206296

   13    1.2  0.5 -0.5  -0.000182100   0.000000364   0.000002418   0.000099677   0.179444791   0.017452124   0.018645295   0.603520547
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000029  -0.000000012  -0.000000008  -0.000000027

   14    2.2  0.5 -0.5   0.000099723  -0.000000199   0.000004416   0.000182018   0.601296267   0.058479809  -0.005577286  -0.180528588
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000018  -0.000000007  -0.000000005  -0.000000016

   15    3.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000179745   0.000000359  -0.000002520  -0.000103862  -0.422913708  -0.041130994   0.014499912   0.469340749

   16    4.2  0.5 -0.5   0.000000360   0.000180058  -0.000103319   0.000002507  -0.018753482   0.192825513   0.470069875  -0.014522437
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.001414113   0.014539986   0.376543862  -0.011633033

   17    5.2  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.004503753  -0.046308025  -0.083522063   0.002580356
                         0.000000001   0.000000268  -0.000207525   0.000005035  -0.059727564   0.614125834   0.104267249  -0.003221253

   18    6.2  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000002   0.000000001   0.000000000   0.000000002
                        -0.005408217   0.000010810   0.000226451   0.009333684   0.022054237   0.002144912   0.000619446   0.020050538

   19    7.2  0.5 -0.5   0.000010756   0.005381467   0.009349119  -0.000226825   0.002746263  -0.028237400   0.007146543  -0.000220787
                        -0.000000000  -0.000000007   0.000000000  -0.000000000   0.000207082  -0.002129234   0.005724652  -0.000176858

   20    8.2  0.5 -0.5   0.000000000   0.000000014  -0.000000000  -0.000000000  -0.000045801   0.000470935  -0.018259453   0.000564112
                         0.000021568   0.010790830   0.000015440  -0.000000375   0.000607408  -0.006245438   0.022794739  -0.000704225


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5  -0.000000000  -0.000000690  -0.000001329   0.000000003   0.000000425   0.000000297  -0.000009220   0.000000300
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.000000002  -0.000000000   0.000000001   0.000000490  -0.000001090   0.000001559   0.000000097   0.000002979
                         0.000000007  -0.000000000  -0.000000001  -0.000000311   0.000000165  -0.000000237  -0.000000009  -0.000000280

    3    1.2  1.5 -0.5   0.000000000  -0.000000007  -0.000000580   0.000000001  -0.000001577  -0.000001103   0.000002992  -0.000000097
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    4    1.2  1.5 -1.5  -0.000000228  -0.000000000   0.000000003   0.000001122   0.000000294  -0.000000420  -0.000000299  -0.000009179
                         0.000000651   0.000000000  -0.000000002  -0.000000712  -0.000000045   0.000000064   0.000000028   0.000000864

    5    1.2  0.5  0.5   0.026513101   0.000000000  -0.000326422  -0.133454187  -0.428189021   0.612157462  -0.000000409  -0.000012556
                        -0.075759304   0.000000000   0.000207277   0.084743146   0.064992359  -0.092915881   0.000000038   0.000001181

    6    2.2  0.5  0.5  -0.028821329  -0.000000000   0.001553965   0.635323453  -0.094582800   0.135219643   0.000000355   0.000010916
                         0.082354900  -0.000000000  -0.000986766  -0.403429140   0.014356181  -0.020524216  -0.000000033  -0.000001027

    7    3.2  0.5  0.5   0.610979531  -0.000000003  -0.000532417  -0.217673294  -0.010364262   0.014817196   0.000000056   0.000001734
                         0.213821422   0.000000002  -0.000838454  -0.342793653  -0.068282843   0.097620092   0.000000600   0.000018432

    8    4.2  0.5  0.5   0.000000002   0.518870117  -0.170339942   0.000416642   0.449104799   0.314137711  -0.000014983   0.000000488
                         0.000000003  -0.000000001  -0.000000000   0.000000000   0.000000002  -0.000000002   0.000000000   0.000000000

    9    5.2  0.5  0.5  -0.000000003   0.000000001   0.000000000  -0.000000001   0.000000001  -0.000000001   0.000000000   0.000000000
                         0.000000002   0.545621478  -0.463364636   0.001133364  -0.240731776  -0.168385930  -0.000003530   0.000000115

   10    6.2  0.5  0.5  -0.000005842   0.000000000  -0.000000026  -0.000010593   0.000005874  -0.000008397  -0.001760749  -0.054065130
                        -0.000002045  -0.000000000  -0.000000041  -0.000016682   0.000038697  -0.000055322  -0.018716501  -0.574712085

   11    7.2  0.5  0.5   0.000000000   0.000014874   0.000052446  -0.000000128   0.000012983   0.000009081   0.577465924  -0.018806187
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000065  -0.000000022

   12    8.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000065   0.000000022
                        -0.000000000  -0.000021646  -0.000035285   0.000000086   0.000045455   0.000031795   0.576417052  -0.018772028

   13    1.2  0.5 -0.5  -0.000000000  -0.080264667  -0.158086751   0.000386672   0.619168894   0.433093343   0.000012612  -0.000000411
                        -0.000000001   0.000000000  -0.000000000   0.000000000   0.000000002  -0.000000002  -0.000000000  -0.000000000

   14    2.2  0.5 -0.5   0.000000000   0.087252499   0.752589503  -0.001840792   0.136768401   0.095666117  -0.000010964   0.000000357
                         0.000000000  -0.000000000   0.000000001  -0.000000001   0.000000000  -0.000000001  -0.000000000  -0.000000000

   15    3.2  0.5 -0.5  -0.000000003   0.000000002  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000002   0.647314134   0.406065451  -0.000993214  -0.098738198  -0.069064930   0.000018514  -0.000000603

   16    4.2  0.5 -0.5   0.171393672   0.000000002   0.000351722   0.143798125   0.310580434  -0.444019163  -0.000000486  -0.000014917
                        -0.489745248   0.000000003  -0.000223343  -0.091311526  -0.047141225   0.067395130   0.000000046   0.000001403

   17    5.2  0.5 -0.5  -0.514995019   0.000000003  -0.000607546  -0.248388790   0.025268915  -0.036125531   0.000000011   0.000000331
                        -0.180230207  -0.000000002  -0.000956766  -0.391164664   0.166479138  -0.238005743   0.000000114   0.000003514

   18    6.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000065  -0.000000022
                         0.000000000  -0.000006190   0.000019761  -0.000000048   0.000055956   0.000039140  -0.577249529   0.018799140

   19    7.2  0.5 -0.5   0.000004913   0.000000000  -0.000000108  -0.000044274   0.000008979  -0.000012836   0.018723517   0.574927529
                        -0.000014039   0.000000000   0.000000069   0.000028114  -0.000001363   0.000001948  -0.001761409  -0.054085398

   20    8.2  0.5 -0.5   0.000020431  -0.000000000  -0.000000046  -0.000018915  -0.000004771   0.000006821  -0.001758210  -0.053987161
                         0.000007150   0.000000000  -0.000000073  -0.000029787  -0.000031435   0.000044940  -0.018689509  -0.573883267


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.010948156   0.000077621   0.007363415   0.000076399
                         0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000006035   0.000851348   0.000038707  -0.003730731
                        -0.000051848  -0.007313309   0.000106794  -0.010292637

    3    1.2  1.5 -0.5  -0.007362695   0.000052198  -0.010947910  -0.000113592
                        -0.000000007   0.000000000  -0.000000010   0.000000002

    4    1.2  1.5 -1.5   0.000008975   0.001265944  -0.000026034   0.002509233
                        -0.000077100  -0.010874718  -0.000071826   0.006922690

    5    1.2  0.5  0.5  -0.000000896  -0.000126531  -0.000081782   0.007882377
                         0.000007704   0.001087014  -0.000225635   0.021746541

    6    2.2  0.5  0.5  -0.000018962  -0.002674575   0.000003876  -0.000373493
                         0.000162889   0.022975199   0.000010689  -0.001030450

    7    3.2  0.5  0.5  -0.000135326  -0.019087298  -0.000126050   0.012148894
                        -0.000015754  -0.002221984   0.000045689  -0.004403550

    8    4.2  0.5  0.5   0.001585078  -0.000011235   0.023102352   0.000239701
                         0.000000010  -0.000000001   0.000000015  -0.000000002

    9    5.2  0.5  0.5   0.000000010  -0.000000001   0.000000015  -0.000000002
                        -0.020798449   0.000147455  -0.010178586  -0.000105611

   10    6.2  0.5  0.5  -0.003208229  -0.452526934   0.006600155  -0.636114631
                        -0.000373453  -0.052679001  -0.002392222   0.230569966

   11    7.2  0.5  0.5   0.813671442  -0.005768740  -0.055450826  -0.000575258
                         0.000000201  -0.000000011   0.000000300  -0.000000048

   12    8.2  0.5  0.5  -0.000000201   0.000000011  -0.000000300   0.000000048
                        -0.358912508   0.002544689   0.733142959   0.007606772

   13    1.2  0.5 -0.5  -0.001094353   0.000007756  -0.023131016  -0.000239999
                        -0.000000010   0.000000001  -0.000000015   0.000000002

   14    2.2  0.5 -0.5  -0.023130351   0.000163989   0.001096049   0.000011370
                        -0.000000006   0.000000000  -0.000000009   0.000000001

   15    3.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.019216196  -0.000136240  -0.012922340  -0.000134075

   16    4.2  0.5 -0.5  -0.000001299  -0.000183274  -0.000081681   0.007872609
                         0.000011160   0.001574447  -0.000225355   0.021719592

   17    5.2  0.5 -0.5  -0.000146466  -0.020658940   0.000099291  -0.009569358
                        -0.000017050  -0.002404931  -0.000035987   0.003468574

   18    6.2  0.5 -0.5  -0.000000402   0.000000023  -0.000000599   0.000000097
                         0.455582815  -0.003229892   0.676612396   0.007020311

   19    7.2  0.5 -0.5  -0.000667033  -0.094085271   0.000196076  -0.018895713
                         0.005730046   0.808213572   0.000540810  -0.052132009

   20    8.2  0.5 -0.5  -0.002527618  -0.356504993  -0.007151497   0.689261751
                        -0.000294256  -0.041501536   0.002592116  -0.249833622


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  74.863%   0.000%   0.015%  25.105%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%  25.120%  74.819%   0.044%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5  25.120%   0.000%   0.044%  74.819%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%  74.863%  25.105%   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.030%   3.220%  36.424%   0.035%   0.644%   0.000%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.342%  36.156%   3.259%   0.003%   0.761%   0.000%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.169%  17.886%  22.028%   0.021%  41.902%   0.000%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   3.739%   0.035%   0.035%  36.275%   0.000%  26.923%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  37.929%   0.359%   0.002%   1.785%   0.000%  29.770%
   10    6.2  0.5  0.5   0.000%   0.003%   0.009%   0.000%   0.000%   0.049%   0.040%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.003%   0.000%   0.000%   0.009%   0.080%   0.001%   0.000%   0.008%   0.000%   0.000%
   12    8.2  0.5  0.5   0.012%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.085%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   3.220%   0.030%   0.035%  36.424%   0.000%   0.644%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  36.156%   0.342%   0.003%   3.259%   0.000%   0.761%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  17.886%   0.169%   0.021%  22.028%   0.000%  41.902%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.035%   3.739%  36.275%   0.035%  26.923%   0.000%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.359%  37.929%   1.785%   0.002%  29.770%   0.000%
   18    6.2  0.5 -0.5   0.003%   0.000%   0.000%   0.009%   0.049%   0.000%   0.000%   0.040%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.003%   0.009%   0.000%   0.001%   0.080%   0.008%   0.000%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.000%   0.012%   0.000%   0.000%   0.000%   0.004%   0.085%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%   0.005%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.012%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.012%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%   0.005%
    5    1.2  0.5  0.5   0.000%   2.499%  18.757%  38.337%   0.000%   0.000%   0.000%   0.000%   0.000%   0.054%
    6    2.2  0.5  0.5   0.000%  56.639%   0.915%   1.871%   0.000%   0.000%   0.000%   0.054%   0.000%   0.000%
    7    3.2  0.5  0.5   0.000%  16.489%   0.477%   0.975%   0.000%   0.000%   0.000%   0.037%   0.000%   0.017%
    8    4.2  0.5  0.5   2.902%   0.000%  20.170%   9.868%   0.000%   0.000%   0.000%   0.000%   0.053%   0.000%
    9    5.2  0.5  0.5  21.471%   0.000%   5.795%   2.835%   0.000%   0.000%   0.043%   0.000%   0.010%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.035%  33.322%   0.001%  20.756%   0.005%  45.780%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.347%   0.035%  66.206%   0.003%   0.307%   0.000%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  33.226%   0.035%  12.882%   0.001%  53.750%   0.006%
   13    1.2  0.5 -0.5   2.499%   0.000%  38.337%  18.757%   0.000%   0.000%   0.000%   0.000%   0.054%   0.000%
   14    2.2  0.5 -0.5  56.639%   0.000%   1.871%   0.915%   0.000%   0.000%   0.054%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5  16.489%   0.000%   0.975%   0.477%   0.000%   0.000%   0.037%   0.000%   0.017%   0.000%
   16    4.2  0.5 -0.5   0.000%   2.902%   9.868%  20.170%   0.000%   0.000%   0.000%   0.000%   0.000%   0.053%
   17    5.2  0.5 -0.5   0.000%  21.471%   2.835%   5.795%   0.000%   0.000%   0.000%   0.043%   0.000%   0.010%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  33.322%   0.035%  20.756%   0.001%  45.780%   0.005%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.035%  33.347%   0.003%  66.206%   0.000%   0.307%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.035%  33.226%   0.001%  12.882%   0.006%  53.750%


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
 CPU TIMES  *        31.97     17.32      1.53     11.46      0.25      0.45      0.27      0.40
 REAL TIME  *        39.41 SEC
 DISK USED  *        58.27 MB (local),      939.35 MB (total)
 SF USED    *       266.35 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -341.812364680627

              CI              CI           MULTI         RHF-SCF
   -341.79089258   -341.87905139   -341.43721384   -341.53147429
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
