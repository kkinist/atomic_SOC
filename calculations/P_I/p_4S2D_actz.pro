
 Working directory              : /wrk/irikura/molpro.YoDya0blv0/
 Global scratch directory       : /wrk/irikura/molpro.YoDya0blv0/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.YoDya0blv0/

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
     wf,sym=2,spin=1;state,5;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=2,spin=3;state,1; save,5203.2}
 hlsdiag(1) = energd
 {ci;wf,sym=2,spin=1;state,5; save,5201.2}
 hlsdiag(2) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   P SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 12:16:39  
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
 CPU TIMES  *         0.60      0.38
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
   1     -341.51802701    -341.51802701     0.00D+00     0.13D+00     0     0       0.00      0.00    start
   2     -341.53077011      -0.01274310     0.28D-02     0.10D-01     1     0       0.01      0.01    diag2
   3     -341.53134336      -0.00057324     0.11D-02     0.18D-02     2     0       0.00      0.01    diag2
   4     -341.53146093      -0.00011757     0.31D-03     0.10D-02     3     0       0.00      0.01    diag2
   5     -341.53147416      -0.00001323     0.10D-03     0.53D-03     4     0       0.00      0.01    diag2
   6     -341.53147429      -0.00000013     0.14D-04     0.88D-04     5     0       0.00      0.01    diag2
   7     -341.53147429      -0.00000000     0.13D-05     0.65D-05     6     0       0.01      0.02    diag2
   8     -341.53147429      -0.00000000     0.19D-06     0.92D-06     7     0       0.00      0.02    fixocc
   9     -341.53147429      -0.00000000     0.18D-07     0.17D-06     0     0       0.00      0.02    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -341.531474290428
  RHF One-electron energy            -472.611808947981
  RHF Two-electron energy             131.080334657553
  RHF Kinetic energy                  346.610689772999
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
    5.2     1.00000    -0.39133     1  2  py   1.00822
    6.2     1.00000    -0.39133     1  2  pz   1.00822


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
 CPU TIMES  *         0.67      0.07      0.38
 REAL TIME  *         2.08 SEC
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
 Number of states:             5
 Number of CSFs:              11   (12 determinants, 24 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 4 5 3 2 1   6 4 3 5 2 6 4 3 5 2   1 6 4 3 5 2 1 6 4 5   3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.115D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.367D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.122D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.116D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.116D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 1 2 3   1 210 8 6 5 4 7 9 8  10 5 4 6 7 9 3 1 2 5   4 610 8 7 9 3 1 2 3
                                        1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  317  ( 11 closed/active, 168 closed/virtual, 0 active/active, 138 active/virtual )
 Total number of variables:    378
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -341.47255115    -341.47317756   -0.00062642    0.02119917 0.00000440 0.00000000  0.36E-01      0.12
   2    4    8    0   -341.47317985    -341.47317987   -0.00000002    0.00012077 0.00000022 0.00000000  0.21E-03      0.24
   3    5   10    0   -341.47317987    -341.47317987   -0.00000000    0.00000010 0.00000001 0.00000000  0.25E-06      0.35

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.13E-07)
                       Final energy:   -341.47317987
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -341.530840628552
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.55269332
 One electron energy                          -472.43385334
 Two electron energy                           130.90301271
 Virial ratio                                    1.98550912
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -341.461647718262
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.55269332
 One electron energy                          -472.43385334
 Two electron energy                           130.97220562
 Virial ratio                                    1.98530946
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -341.461647718233
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.55269332
 One electron energy                          -472.43385334
 Two electron energy                           130.97220562
 Virial ratio                                    1.98530946
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -341.461647718096
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.55269332
 One electron energy                          -472.43385334
 Two electron energy                           130.97220562
 Virial ratio                                    1.98530946
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -341.461647718053
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.55269332
 One electron energy                          -472.43385334
 Two electron energy                           130.97220562
 Virial ratio                                    1.98530946
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -341.461647718044
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.55269332
 One electron energy                          -472.43385334
 Two electron energy                           130.97220562
 Virial ratio                                    1.98530946
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.422206155883
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000149
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999999652
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000000483
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     2.577778223267
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.630700400148
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000006
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000306
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.999999999503
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.369311492497
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.947093443969
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999999999845
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000041
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000014
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.052910284237
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 6 3 5 2 1   4 6 2 5 3 4 6 5 3 2   1 4 6 2 5 3 1 4 6 5   3 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 1 3 3 1 2 3   1 2 6 4 5 810 7 9 4   6 510 8 7 9 3 1 2 4   5 610 8 7 9 3 1 2 3
                                        1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -80.20650     1  1  s    0.99930
    2.1     2.00000    -7.56259     1  2  s    1.00046
    3.1     2.00000    -0.70801     1  3  s    1.01190
    1.2     2.00000    -5.41460     1  1  px   0.99987
    2.2     2.00000    -5.41460     1  1  pz   0.99987
    3.2     2.00000    -5.41460     1  1  py   0.99987
    4.2     1.00000    -0.16469     1  2  py   0.97052
    5.2     1.00000    -0.16469     1  2  px   0.97052
    6.2     1.00000    -0.16469     1  2  pz   0.97052
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa          1.00000000
 
 Energy:     -341.53084063
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 2 aab         -0.09390293      0.00000071     -0.00000031     -0.00000007      0.81107885
 2 baa          0.74936635     -0.00000028      0.00000013      0.00000003     -0.32421711
 2 2a0         -0.00000000      0.00000496      0.70710679      0.00000714      0.00000027
 2 a20         -0.00000000      0.00000086     -0.00000714      0.70710679      0.00000006
 2 20a          0.00000000      0.70710678     -0.00000496     -0.00000086     -0.00000062
 2 02a         -0.00000000     -0.70710678      0.00000496      0.00000086      0.00000062
 2 a02          0.00000000     -0.00000086      0.00000714     -0.70710677     -0.00000006
 2 0a2          0.00000000     -0.00000496     -0.70710677     -0.00000714     -0.00000027
 2 aba         -0.65546343     -0.00000042      0.00000019      0.00000004     -0.48686175
 
 Energy:     -341.46164772   -341.46164772   -341.46164772   -341.46164772   -341.46164772
 


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
 CPU TIMES  *         1.03      0.35      0.07      0.38
 REAL TIME  *         2.53 SEC
 DISK USED  *        31.13 MB (local),      424.61 MB (total)
 SF USED    *         4.25 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -341.5308406  -0.0
    -341.4616477   6.0
    -341.4616477   6.0
    -341.4616477   6.0
    -341.4616477   6.0
    -341.4616477   6.0
                                                  


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
     1      -341.53084063

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
    1     1     1     1.00000000     0.00000000  -341.53084063     0.00000000    -0.38120820  0.44D-01  0.39D-01     0.03
    2     1     1     1.06779447    -0.34412818  -341.87496881    -0.34412818    -0.00413727  0.11D-02  0.48D-03     0.06
    3     1     1     1.05653821    -0.34824985  -341.87909048    -0.00412167    -0.00004589  0.52D-05  0.62D-05     0.09
    4     1     1     1.05639668    -0.34829852  -341.87913915    -0.00004866    -0.00000072  0.20D-06  0.11D-06     0.14
    5     1     1     1.05645442    -0.34829929  -341.87913991    -0.00000077    -0.00000002  0.66D-08  0.39D-08     0.18
    6     1     1     1.05644790    -0.34829931  -341.87913994    -0.00000003    -0.00000000  0.17D-09  0.13D-09     0.22


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.5%
 S   0.0%  13.6%
 P   4.5%  22.7%  13.6%

 Initialization:   9.1%
 Other:           31.8%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222///           0.9729116


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97291162 (fixed)   0.97291162 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001181   -0.00010584   -0.00010408
 Singles      0.02578682   -0.04845980   -0.05437130
 Pairs        0.03066175   -0.29973367   -0.29382394
 Total        1.05646038   -0.34829931   -0.34829931
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.53084063
 Nuclear energy                         0.00000000
 Kinetic energy                       346.83324780
 One electron energy                 -472.33494917
 Two electron energy                  130.45580924
 Virial quotient                       -0.98571617
 Correlation energy                    -0.34829931
 !CI(SD) STATE 1.2 Energy            -341.879139938887

 Properties without orbital relaxation:

 !CI(SD) STATE 1.2 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.89880505 (Davidson, fixed reference)
 Cluster corrected energies          -341.89880505 (Davidson, relaxed reference)

 Cluster corrected energies          -341.89541477 (Pople, fixed reference)
 Cluster corrected energies          -341.89541477 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.36       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.34      0.28      0.35      0.07      0.38
 REAL TIME  *         2.90 SEC
 DISK USED  *        31.83 MB (local),      432.95 MB (total)
 SF USED    *         9.98 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -341.89880505  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

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
     1      -341.46164772
     2      -341.46164772
     3      -341.46164772
     4      -341.46164772
     5      -341.46164772

 Number of blocks in overlap matrix:   181   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     211
 Number of N-1 electron functions:     503

 Number of internal configurations:                   83
 Number of singly external configurations:         16662
 Number of doubly external configurations:        230847
 Total number of contracted configurations:       247592
 Total number of uncontracted configurations:     923405

 Diagonal Coupling coefficients finished.               Storage:    239440 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    258168 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -341.46164772    -0.00000000    -0.39248753  0.46D-01  0.42D-01     0.03
    1     2     2     1.00000000     0.00000000  -341.46164772    -0.00000000    -0.39207408  0.46D-01  0.41D-01     0.03
    1     3     3     1.00000000     0.00000000  -341.46164772    -0.00000000    -0.39224663  0.46D-01  0.41D-01     0.03
    1     4     4     1.00000000     0.00000000  -341.46164772    -0.00000000    -0.39258062  0.47D-01  0.41D-01     0.03
    1     5     5     1.00000000     0.00000000  -341.46164772    -0.00000000    -0.39337568  0.48D-01  0.42D-01     0.03
    2     1     1     1.07205014    -0.35564173  -341.81728945    -0.35564173    -0.00569862  0.14D-02  0.83D-03     0.67
    2     2     2     1.07213680    -0.35561610  -341.81726382    -0.35561610    -0.00573893  0.14D-02  0.83D-03     0.67
    2     3     3     1.07218998    -0.35556883  -341.81721654    -0.35556883    -0.00577088  0.14D-02  0.86D-03     0.67
    2     4     4     1.07259227    -0.35545907  -341.81710679    -0.35545907    -0.00591927  0.15D-02  0.84D-03     0.67
    2     5     5     1.07322020    -0.35521163  -341.81685934    -0.35521163    -0.00619790  0.16D-02  0.90D-03     0.67
    3     1     1     1.06423170    -0.36097438  -341.82262209    -0.00533265    -0.00010379  0.18D-04  0.16D-04     1.28
    3     2     2     1.06427003    -0.36097432  -341.82262203    -0.00535822    -0.00010424  0.18D-04  0.16D-04     1.28
    3     3     3     1.06420909    -0.36097351  -341.82262123    -0.00540468    -0.00010441  0.19D-04  0.16D-04     1.28
    3     4     4     1.06425110    -0.36097058  -341.82261830    -0.00551151    -0.00010720  0.19D-04  0.17D-04     1.28
    3     5     5     1.06425138    -0.36096991  -341.82261762    -0.00575828    -0.00010739  0.19D-04  0.18D-04     1.28
    4     1     1     1.06487139    -0.36108563  -341.82273335    -0.00011125    -0.00000308  0.60D-06  0.71D-06     1.90
    4     2     2     1.06486216    -0.36108545  -341.82273317    -0.00011114    -0.00000323  0.62D-06  0.78D-06     1.90
    4     3     3     1.06485801    -0.36108540  -341.82273312    -0.00011189    -0.00000325  0.70D-06  0.71D-06     1.90
    4     4     4     1.06485270    -0.36108530  -341.82273302    -0.00011473    -0.00000333  0.71D-06  0.74D-06     1.90
    4     5     5     1.06484009    -0.36108499  -341.82273270    -0.00011508    -0.00000359  0.81D-06  0.78D-06     1.90
    5     1     1     1.06513079    -0.36108908  -341.82273680    -0.00000346    -0.00000013  0.20D-07  0.30D-07     2.49
    5     2     2     1.06512937    -0.36108907  -341.82273679    -0.00000362    -0.00000014  0.23D-07  0.32D-07     2.49
    5     3     3     1.06513080    -0.36108907  -341.82273679    -0.00000367    -0.00000014  0.23D-07  0.31D-07     2.49
    5     4     4     1.06513013    -0.36108906  -341.82273678    -0.00000376    -0.00000014  0.24D-07  0.32D-07     2.49
    5     5     5     1.06513094    -0.36108904  -341.82273676    -0.00000406    -0.00000016  0.30D-07  0.34D-07     2.49
    6     1     1     1.06514394    -0.36108923  -341.82273695    -0.00000015    -0.00000000  0.82D-09  0.10D-08     3.10
    6     2     2     1.06514373    -0.36108923  -341.82273695    -0.00000015    -0.00000001  0.93D-09  0.11D-08     3.10
    6     3     3     1.06514406    -0.36108923  -341.82273695    -0.00000016    -0.00000001  0.94D-09  0.10D-08     3.10
    6     4     4     1.06514395    -0.36108923  -341.82273695    -0.00000017    -0.00000001  0.95D-09  0.11D-08     3.10
    6     5     5     1.06514393    -0.36108923  -341.82273694    -0.00000018    -0.00000001  0.11D-08  0.12D-08     3.10


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.6%   1.3%
 P   1.3%  17.7%  25.2%

 Initialization:   0.3%
 Other:           53.5%

 Total CPU:        3.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//\           0.0000000   0.8145079   0.0000000   0.0000000   0.5247819
 22222/\/          -0.0000000  -0.5247820   0.0000000   0.0000000   0.8145079
 222220/2           0.0000000  -0.0000000  -0.6851377  -0.0000000   0.0000000
 2222202/          -0.0000000   0.0000000  -0.0000000  -0.6851375  -0.0000000
 22222/02           0.6851356  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 22222/20          -0.6851338  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220/           0.0000000   0.0000000   0.0000000   0.6851319  -0.0000000
 222222/0           0.0000000   0.0000000   0.6851317   0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222//\  15.1    -0.0000000   0.0000000   0.0000000   0.0675127  -0.0000000
 2\222//\  12.1    -0.0000000   0.0000000  -0.0675123  -0.0000000  -0.0000000
 2\222//\  14.1    -0.0000000  -0.0250654   0.0000000  -0.0000000   0.0641616
 2/222\/\  11.1    -0.0526651  -0.0000000   0.0000000  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000   -0.000000    0.968927    0.000000
 2          -0.427640   -0.000000    0.000000   -0.000000    0.869450
 3           0.000000    0.000000    0.968927   -0.000000    0.000000
 4           0.000000    0.968927    0.000000   -0.000000    0.000000
 5           0.869450    0.000000   -0.000000   -0.000000    0.427640

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968927    0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.968927    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.968927    0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.968927    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.968927


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96892678 (fixed)   0.96892678 (relaxed)   0.96892678 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002251   -0.00016868   -0.28575164
 Singles      0.03110983   -0.05672387   -0.06380107
 Pairs        0.03403558    0.00000000   -0.01153651
 Total        1.06516792   -0.05689255   -0.36108923
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46164772
 Nuclear energy                         0.00000000
 Kinetic energy                       346.80081277
 One electron energy                 -472.21297042
 Two electron energy                  130.39023347
 Virial quotient                       -0.98564572
 Correlation energy                    -0.36108923
 !MRCI STATE 1.2 Energy              -341.822736946107

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84626838 (Davidson, fixed reference)
 Cluster corrected energies          -341.84626838 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84626838 (Davidson, rotated reference)

 Cluster corrected energies          -341.84322391 (Pople, fixed reference)
 Cluster corrected energies          -341.84322391 (Pople, relaxed reference)
 Cluster corrected energies          -341.84322391 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.86945016 (fixed)   0.96892688 (relaxed)   0.96892688 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002251   -0.00016868   -0.02948624
 Singles      0.03110974   -0.05672387   -0.06380107
 Pairs        0.03403546   -0.27296569   -0.26780192
 Total        1.06516771   -0.32985825   -0.36108923
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46164772
 Nuclear energy                         0.00000000
 Kinetic energy                       346.80078942
 One electron energy                 -472.21296174
 Two electron energy                  130.39022479
 Virial quotient                       -0.98564579
 Correlation energy                    -0.36108923
 !MRCI STATE 2.2 Energy              -341.822736945703

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84626830 (Davidson, fixed reference)
 Cluster corrected energies          -341.84626830 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84626830 (Davidson, rotated reference)

 Cluster corrected energies          -341.84322384 (Pople, fixed reference)
 Cluster corrected energies          -341.84322384 (Pople, relaxed reference)
 Cluster corrected energies          -341.84322384 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96892673 (fixed)   0.96892673 (relaxed)   0.96892673 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002251   -0.00016868   -0.28575173
 Singles      0.03110966   -0.05672375   -0.06380098
 Pairs        0.03403587    0.00000000   -0.01153652
 Total        1.06516804   -0.05689243   -0.36108923
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46164772
 Nuclear energy                         0.00000000
 Kinetic energy                       346.80081914
 One electron energy                 -472.21298568
 Two electron energy                  130.39024874
 Virial quotient                       -0.98564570
 Correlation energy                    -0.36108923
 !MRCI STATE 3.2 Energy              -341.822736945633

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84626842 (Davidson, fixed reference)
 Cluster corrected energies          -341.84626842 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84626842 (Davidson, rotated reference)

 Cluster corrected energies          -341.84322395 (Pople, fixed reference)
 Cluster corrected energies          -341.84322395 (Pople, relaxed reference)
 Cluster corrected energies          -341.84322395 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96892678 (fixed)   0.96892678 (relaxed)   0.96892678 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002251   -0.00016868   -0.28575186
 Singles      0.03110953   -0.05672364   -0.06380090
 Pairs        0.03403588    0.00000000   -0.01153647
 Total        1.06516793   -0.05689232   -0.36108923
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46164772
 Nuclear energy                         0.00000000
 Kinetic energy                       346.80082563
 One electron energy                 -472.21299365
 Two electron energy                  130.39025671
 Virial quotient                       -0.98564568
 Correlation energy                    -0.36108923
 !MRCI STATE 4.2 Energy              -341.822736945498

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84626838 (Davidson, fixed reference)
 Cluster corrected energies          -341.84626838 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84626838 (Davidson, rotated reference)

 Cluster corrected energies          -341.84322391 (Pople, fixed reference)
 Cluster corrected energies          -341.84322391 (Pople, relaxed reference)
 Cluster corrected energies          -341.84322391 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.86945011 (fixed)   0.96892679 (relaxed)   0.96892679 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002251   -0.00016868   -0.15970758
 Singles      0.03110938   -0.05672358   -0.06380092
 Pairs        0.03403602   -0.13425839   -0.13758073
 Total        1.06516790   -0.19115065   -0.36108923
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46164772
 Nuclear energy                         0.00000000
 Kinetic energy                       346.80080109
 One electron energy                 -472.21298225
 Two electron energy                  130.39024531
 Virial quotient                       -0.98564575
 Correlation energy                    -0.36108923
 !MRCI STATE 5.2 Energy              -341.822736944819

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84626837 (Davidson, fixed reference)
 Cluster corrected energies          -341.84626837 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84626837 (Davidson, rotated reference)

 Cluster corrected energies          -341.84322391 (Pople, fixed reference)
 Cluster corrected energies          -341.84322391 (Pople, relaxed reference)
 Cluster corrected energies          -341.84322391 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       11.08       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.64      3.30      0.28      0.35      0.07      0.38
 REAL TIME  *         7.13 SEC
 DISK USED  *        41.54 MB (local),      549.57 MB (total)
 SF USED    *       100.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -341.84626838  AU                              
 SETTING HLSDIAG(3)     =      -341.84626830  AU                              
 SETTING HLSDIAG(4)     =      -341.84626842  AU                              
 SETTING HLSDIAG(5)     =      -341.84626838  AU                              
 SETTING HLSDIAG(6)     =      -341.84626837  AU                              


         HLSDIAG
    -341.8988051
    -341.8462684
    -341.8462683
    -341.8462684
    -341.8462684
    -341.8462684
                                                  

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

 Time for Seward_LS:       0.65 sec

 CPU time:      0.65 sec, REAL time:      0.69 sec


 SORTLS1 read     2508011. and wrote     2508011. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.05 sec
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

              2       7       11.08       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.12      1.44      3.30      0.28      0.35      0.07      0.38
 REAL TIME  *         8.76 SEC
 DISK USED  *        41.58 MB (local),      739.07 MB (total)
 SF USED    *       100.33 MB
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

 Original energies:   -341.879140
 Replaced energies:   -341.898805

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   5

 Original energies:   -341.822737   -341.822737   -341.822737   -341.822737   -341.822737
 Replaced energies:   -341.846268   -341.846268   -341.846268   -341.846268   -341.846268



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -341.89880505

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

    3   1.2  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00   11530.47       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.29       0.00      -0.00       0.00

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   11530.48       0.00       0.00       0.00       0.58
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.31       0.00      -0.00

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   11530.46       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.29      -0.00       0.00      -0.00      -0.00       0.00

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   11530.47       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.31       0.00      -0.00       0.48       0.29

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11530.47       0.03
                           -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.48       0.00       0.00

   10   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.58       0.00      -0.00       0.03   11530.47
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.29      -0.00      -0.00

   11   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.58       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.27      -0.00      -0.00       0.00

   12   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.28       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.27       0.00      -0.00       0.51      -0.29

   13   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.28      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.29       0.00       0.00       0.00       0.00       0.00

   14   5.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.03       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.51      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00

    5   1.2  0.5  0.5      -0.58      -0.00       0.00      -0.03
                            0.00      -0.00      -0.29      -0.00

    6   2.2  0.5  0.5       0.00      -0.00       0.00       0.00
                            0.00      -0.27      -0.00      -0.00

    7   3.2  0.5  0.5       0.00      -0.00       0.28      -0.00
                            0.27      -0.00      -0.00       0.51

    8   4.2  0.5  0.5      -0.00      -0.28      -0.00       0.00
                            0.00       0.00      -0.00       0.00

    9   5.2  0.5  0.5      -0.00       0.00      -0.00      -0.00
                            0.00      -0.51      -0.00      -0.00

   10   1.2  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.29      -0.00       0.00

   11   2.2  0.5 -0.5   11530.48       0.00       0.00       0.00
                           -0.00      -0.00      -0.31      -0.00

   12   3.2  0.5 -0.5       0.00   11530.46       0.00       0.00
                            0.00      -0.00       0.00       0.00

   13   4.2  0.5 -0.5       0.00       0.00   11530.47       0.00
                            0.31      -0.00       0.00      -0.48

   14   5.2  0.5 -0.5       0.00       0.00       0.00   11530.47
                            0.00      -0.00       0.48      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -341.89880505     0.00000000        0.00      0.00000000        0.00      0.0000
     2  -341.89880505     0.00000000        0.00      0.00000000        0.00      0.0000
     3  -341.89880505     0.00000000        0.00      0.00000000        0.00      0.0000
     4  -341.89880505     0.00000000        0.00      0.00000000        0.00      0.0000
     5  -341.84627236     0.05253269    11529.59      0.05253269    11529.59      1.4295
     6  -341.84627236     0.05253269    11529.59      0.05253269    11529.59      1.4295
     7  -341.84627227     0.05253278    11529.61      0.05253278    11529.61      1.4295
     8  -341.84627227     0.05253278    11529.61      0.05253278    11529.61      1.4295
     9  -341.84626578     0.05253927    11531.04      0.05253927    11531.04      1.4297
    10  -341.84626578     0.05253927    11531.04      0.05253927    11531.04      1.4297
    11  -341.84626577     0.05253928    11531.04      0.05253928    11531.04      1.4297
    12  -341.84626577     0.05253928    11531.04      0.05253928    11531.04      1.4297
    13  -341.84626569     0.05253936    11531.06      0.05253936    11531.06      1.4297
    14  -341.84626569     0.05253936    11531.06      0.05253936    11531.06      1.4297


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.927483121   0.008124372   0.232919661   0.292331124  -0.000000007  -0.000000015  -0.000000050   0.000000007
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.002068203  -0.373303007   0.727415134  -0.575767148   0.000000045  -0.000000021  -0.000000001  -0.000000004
                        -0.000000281   0.000032880   0.000010412  -0.000008320  -0.000000000   0.000000000   0.000000000   0.000000000

    3    1.2  1.5 -0.5  -0.373775539  -0.001547121   0.575814903   0.727135923   0.000000021   0.000000045  -0.000000004   0.000000001
                         0.000000007   0.000000000  -0.000000011  -0.000000014   0.000000000   0.000000000  -0.000000000   0.000000000

    4    1.2  1.5 -1.5  -0.007913364   0.927620031   0.291621371  -0.233027427  -0.000000015   0.000000007  -0.000000007  -0.000000050
                        -0.000084293   0.009876387   0.003134872  -0.002504804   0.000000000  -0.000000000   0.000000000   0.000000000

    5    1.2  0.5  0.5  -0.000000040  -0.000000000  -0.000000032  -0.000000040   0.251316103   0.525086726  -0.248377039   0.033678994
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000004   0.000000007  -0.000000006   0.000000001

    6    2.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.507131812   0.242722553   0.037209993   0.274417579
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000192833  -0.000092294  -0.000014317  -0.000105586

    7    3.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000001  -0.000000005   0.000000000
                        -0.000000110  -0.000000001   0.000000010   0.000000012  -0.221118806  -0.461994068  -0.373390156   0.050630300

    8    4.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000026526   0.000012696   0.000032535   0.000239939
                         0.000000000  -0.000000010   0.000000020  -0.000000016  -0.069747118   0.033382244   0.084562265   0.623632811

    9    5.2  0.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.249835401   0.119575791  -0.076297589  -0.562682189
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000094991  -0.000045465   0.000029355   0.000216485

   10    1.2  0.5 -0.5   0.000000000  -0.000000040  -0.000000040   0.000000032   0.525086688  -0.251316085  -0.033678992  -0.248377021
                         0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000199660   0.000095561   0.000012959   0.000095567

   11    2.2  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.242722571   0.507131848  -0.274417599   0.037209996
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000004   0.000000008  -0.000000006   0.000000001

   12    3.2  0.5 -0.5   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000175664  -0.000084076   0.000019479   0.000143654
                        -0.000000001   0.000000110  -0.000000012   0.000000010   0.461994034  -0.221118790   0.050630296   0.373390128

   13    4.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000003   0.000000006  -0.000000001   0.000000000
                        -0.000000010  -0.000000000   0.000000016   0.000000020  -0.033382246  -0.069747123   0.623632857  -0.084562271

   14    5.2  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.119575799   0.249835419   0.562682230  -0.076297594
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000003  -0.000000003   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.2  1.5  1.5   0.000000086  -0.000000007   0.000000032   0.000000026  -0.000000005  -0.000000019
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000000002   0.000000029   0.000000012  -0.000000015   0.000000031  -0.000000007
                        -0.000000000  -0.000000006  -0.000000007   0.000000009   0.000000001  -0.000000000

    3    1.2  1.5 -0.5  -0.000000030   0.000000002  -0.000000017  -0.000000014  -0.000000007  -0.000000031
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    4    1.2  1.5 -1.5  -0.000000007  -0.000000085  -0.000000022   0.000000028   0.000000019  -0.000000004
                         0.000000001   0.000000017   0.000000013  -0.000000017   0.000000001  -0.000000000

    5    1.2  0.5  0.5   0.307272015  -0.025397852   0.275007322   0.220083032  -0.143567029  -0.598799229
                        -0.000000001   0.000000003  -0.000000005   0.000000005  -0.000000005  -0.000000004

    6    2.2  0.5  0.5   0.002636997   0.031903300   0.092153999  -0.115152108   0.737922363  -0.176922942
                        -0.000520924  -0.006302325  -0.055837532   0.069772436   0.023402182  -0.005610860

    7    3.2  0.5  0.5   0.000000003  -0.000000006   0.000000003  -0.000000003  -0.000000001  -0.000000001
                         0.717943884  -0.059342313   0.176836440   0.141518776   0.037173231   0.155044668

    8    4.2  0.5  0.5  -0.000139826  -0.001691665  -0.247691617   0.309505932   0.003473427  -0.000832782
                        -0.000707820  -0.008563456  -0.408789072   0.510807171  -0.109524801   0.026259470

    9    5.2  0.5  0.5   0.050132407   0.606519227  -0.244723230   0.305796778   0.077140230  -0.018495003
                        -0.009903382  -0.119814600   0.148281587  -0.185286977   0.002446395  -0.000586543

   10    1.2  0.5 -0.5  -0.024916339  -0.301446501  -0.188226640   0.235200802   0.598498334  -0.143494887
                         0.004922086   0.059549129   0.114049430  -0.142511788   0.018980543  -0.004550737

   11    2.2  0.5 -0.5   0.032519837  -0.002687957   0.134641007   0.107750589   0.177011890   0.738293353
                         0.000000000   0.000000000  -0.000000002   0.000000002   0.000000006   0.000000005

   12    3.2  0.5 -0.5   0.011500499   0.139137087   0.073336575  -0.091638568  -0.004914555   0.001178304
                         0.058217254   0.704332515   0.121034336  -0.151239872   0.154966758  -0.037154552

   13    4.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000011  -0.000000010  -0.000000001  -0.000000001
                         0.008728945  -0.000721499   0.597258644   0.477974521   0.026272672   0.109579864

   14    5.2  0.5 -0.5   0.618240335  -0.051101225  -0.357551300  -0.286141378   0.018504302   0.077179012
                        -0.000000003   0.000000005   0.000000007  -0.000000006   0.000000001   0.000000001


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  86.022%   0.007%   5.425%   8.546%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%  13.936%  52.913%  33.151%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5  13.971%   0.000%  33.156%  52.873%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.006%  86.058%   8.505%   5.431%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   6.316%  27.572%   6.169%   0.113%   9.442%   0.065%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  25.718%   5.891%   0.138%   7.531%   0.001%   0.106%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   4.889%  21.344%  13.942%   0.256%  51.544%   0.352%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.486%   0.111%   0.715%  38.892%   0.000%   0.008%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   6.242%   1.430%   0.582%  31.661%   0.261%  38.222%
   10    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  27.572%   6.316%   0.113%   6.169%   0.065%   9.442%
   11    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   5.891%  25.718%   7.531%   0.138%   0.106%   0.001%
   12    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  21.344%   4.889%   0.256%  13.942%   0.352%  51.544%
   13    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.111%   0.486%  38.892%   0.715%   0.008%   0.000%
   14    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   1.430%   6.242%  31.661%   0.582%  38.222%   0.261%

   Nr   State  S   Sz      11       12       13       14

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   7.563%   4.844%   2.061%  35.856%
    6    2.2  0.5  0.5   1.161%   1.813%  54.508%   3.133%
    7    3.2  0.5  0.5   3.127%   2.003%   0.138%   2.404%
    8    4.2  0.5  0.5  22.846%  35.672%   1.201%   0.069%
    9    5.2  0.5  0.5   8.188%  12.784%   0.596%   0.034%
   10    1.2  0.5 -0.5   4.844%   7.563%  35.856%   2.061%
   11    2.2  0.5 -0.5   1.813%   1.161%   3.133%  54.508%
   12    3.2  0.5 -0.5   2.003%   3.127%   2.404%   0.138%
   13    4.2  0.5 -0.5  35.672%  22.846%   0.069%   1.201%
   14    5.2  0.5 -0.5  12.784%   8.188%   0.034%   0.596%


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

              2       7       11.08       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.41      4.29      1.44      3.30      0.28      0.35      0.07      0.38
 REAL TIME  *        14.15 SEC
 DISK USED  *        41.58 MB (local),      739.07 MB (total)
 SF USED    *       100.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -341.846265686817

              CI              CI           MULTI         RHF-SCF
   -341.82273694   -341.87913994   -341.46164772   -341.53147429
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
