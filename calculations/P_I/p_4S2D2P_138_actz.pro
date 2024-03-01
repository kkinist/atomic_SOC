
 Working directory              : /wrk/irikura/molpro.FeJLs0ARnk/
 Global scratch directory       : /wrk/irikura/molpro.FeJLs0ARnk/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.FeJLs0ARnk/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,P SO-CI
                                                                                 ! Active space (13/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={P};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=15,sym=2,spin=3}
 
 {multi
     closed,1,0
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
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   P SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 12:47:43  
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

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     36 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

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
 CPU TIMES  *         0.61      0.41
 REAL TIME  *         1.14 SEC
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
   2     -341.53077011      -0.01274310     0.28D-02     0.10D-01     1     0       0.00      0.00    diag2
   3     -341.53134336      -0.00057324     0.11D-02     0.18D-02     2     0       0.01      0.01    diag2
   4     -341.53146093      -0.00011757     0.31D-03     0.10D-02     3     0       0.00      0.01    diag2
   5     -341.53147416      -0.00001323     0.10D-03     0.53D-03     4     0       0.00      0.01    diag2
   6     -341.53147429      -0.00000013     0.14D-04     0.88D-04     5     0       0.00      0.01    diag2
   7     -341.53147429      -0.00000000     0.13D-05     0.65D-05     6     0       0.01      0.02    diag2
   8     -341.53147429      -0.00000000     0.19D-06     0.92D-06     7     0       0.00      0.02    fixocc
   9     -341.53147429      -0.00000000     0.18D-07     0.17D-06     0     0       0.00      0.02    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -341.531474290429
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
    2.2     2.00000    -5.40012     1  1  px   0.99980
    3.2     2.00000    -5.40012     1  1  py   0.99975
    4.2     1.00000    -0.39133     1  2  px   1.00829
    5.2     1.00000    -0.39133     1  2  py   1.00816
    6.2     1.00000    -0.39133     1  2  pz   1.00816


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
 CPU TIMES  *         0.67      0.05      0.41
 REAL TIME  *         2.15 SEC
 DISK USED  *        29.72 MB (local),      407.67 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:  13    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:              26   (26 determinants, 56 intermediate states)

 State symmetry 2

 Number of active electrons:  13    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             8
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 4 5 3 2 1   6 4 3 5 2 6 4 3 5 2   1 6 4 3 5 2 1 6 4 5   3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.128D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.559D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.154D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.154D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 1 2 3   1 210 8 6 5 4 7 9 8  10 5 4 6 7 9 3 1 2 5   4 610 8 9 7 3 1 2 3
                                        1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  308  ( 2 closed/active, 30 closed/virtual, 0 active/active, 276 active/virtual )
 Total number of variables:    1294
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -341.46053865    -341.46135293   -0.00081428    0.02460858 0.00000058 0.00000000  0.42E-01      0.18
   2    6   12    0   -341.46135610    -341.46135614   -0.00000003    0.00014409 0.00000012 0.00000000  0.26E-03      0.44
   3   23   44    0   -341.46135614    -341.46135614    0.00000000    0.00000017 0.00000000 0.00000000  0.55E-07      0.94

 CONVERGENCE REACHED!  Final gradient:    0.00000041 ( 0.41E-06)
                       Final energy:   -341.46135614
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -341.530782783732
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.56692277
 One electron energy                          -472.42942807
 Two electron energy                           130.89864529
 Virial ratio                                    1.98546849
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -341.461838771196
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.54985300
 One electron energy                          -472.42025425
 Two electron energy                           130.95841548
 Virial ratio                                    1.98531809
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -341.461838771167
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.54985300
 One electron energy                          -472.42025425
 Two electron energy                           130.95841548
 Virial ratio                                    1.98531809
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -341.461838771138
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.54985300
 One electron energy                          -472.42025425
 Two electron energy                           130.95841548
 Virial ratio                                    1.98531809
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -341.461838771135
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.54985300
 One electron energy                          -472.42025425
 Two electron energy                           130.95841548
 Virial ratio                                    1.98531809
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -341.461838771115
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.54985300
 One electron energy                          -472.42025425
 Two electron energy                           130.95841548
 Virial ratio                                    1.98531809
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -341.437409535664
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.51677939
 One electron energy                          -472.33986842
 Two electron energy                           130.90245889
 Virial ratio                                    1.98534163
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -341.437409535637
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.51677939
 One electron energy                          -472.33986842
 Two electron energy                           130.90245889
 Virial ratio                                    1.98534163
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -341.437409535608
 Nuclear energy                                  0.00000000
 Kinetic energy                                346.51677939
 One electron energy                          -472.33986842
 Two electron energy                           130.90245889
 Virial ratio                                    1.98534163
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.336607869719
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000889821
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     1.000000668524
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.663914516587
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.999986893650
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999942825
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999729622
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.000000589642
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.870007463936
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000005424626
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999978369558
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     2.129053335362
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     1.000012107778
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999971612727
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000010167021
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.999999465688
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.793384666346
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999993685553
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000020961917
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.207032148051
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000000998572
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.000028444449
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999990103357
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999944670
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 6 4 2 1   5 3 6 4 2 5 3 6 4 2   1 5 3 6 4 2 1 5 3 6   4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 2 1 3 2   1 3 7 9 810 5 6 4 7   910 8 5 6 4 2 1 3 7   910 8 5 6 4 2 1 3 2
                                        1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -79.57742     1  1  s    0.99490
    2.1     2.00000    -8.19692     1  2  s    0.99590
    3.1     1.98186    -0.70648     1  3  s    1.01485
    1.2     1.99999    -5.41738     1  1  px   0.99990
    2.2     1.99999    -5.41738     1  1  pz   0.99990
    3.2     1.99999    -5.41738     1  1  py   0.99990
    4.2     1.00606    -0.16670     1  2  pz   0.96451
    5.2     1.00606    -0.16670     1  2  px   0.96451
    6.2     1.00606    -0.16670     1  2  py   0.96451
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 22 222aaa      0.99999318
 
 Energy:     -341.53078278
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 22 222baa     -0.18556760     -0.00000324     -0.00000004      0.79512299     -0.00000004     -0.00000000      0.00000000
 22 222aba      0.78138051      0.00000154     -0.00000010     -0.23685524      0.00000004      0.00000000     -0.00000000
 22 2220a2      0.00000002     -0.00038513     -0.00033329     -0.00000003     -0.70710089      0.00016676      0.00036228
 22 2222a0     -0.00000002      0.00038513      0.00033329      0.00000003      0.70710089      0.00016676      0.00036228
 22 22202a     -0.00000011      0.00095082     -0.70710036     -0.00000005      0.00033278      0.00371579      0.69740246
 22 22220a      0.00000011     -0.00095082      0.70710035      0.00000005     -0.00033278      0.00371579      0.69740246
 22 222a20     -0.00000056      0.70710033      0.00095064      0.00000275     -0.00038558      0.69740253     -0.00371588
 22 222a02      0.00000056     -0.70710033     -0.00095064     -0.00000275      0.00038558      0.69740253     -0.00371588
 22 222aab     -0.59581291      0.00000170      0.00000014     -0.55826775      0.00000001     -0.00000000      0.00000000
 20 2222a2     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00003945     -0.00008569
 20 222a22      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.16496257      0.00087895
 20 22222a     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00087893     -0.16496256
 
 Energy:     -341.46183877   -341.46183877   -341.46183877   -341.46183877   -341.46183877   -341.43740954   -341.43740954

 State:              8
 22 222baa     -0.00000000
 22 222aba     -0.00000000
 22 2220a2      0.69741234
 22 2222a0      0.69741234
 22 22202a     -0.00036316
 22 22220a     -0.00036316
 22 222a20     -0.00016483
 22 222a02     -0.00016483
 22 222aab      0.00000000
 20 2222a2     -0.16496489
 20 222a22      0.00003899
 20 22222a      0.00008590
 
 Energy:     -341.43740954
 


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
 CPU TIMES  *         1.67      1.00      0.05      0.41
 REAL TIME  *         3.29 SEC
 DISK USED  *        31.13 MB (local),      424.61 MB (total)
 SF USED    *         5.53 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -341.5307828  -0.0
    -341.4618388   6.0
    -341.4618388   6.0
    -341.4618388   6.0
    -341.4618388   6.0
    -341.4618388   6.0
    -341.4374095   2.0
    -341.4374095   2.0
    -341.4374095   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 15
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:       26 conf       26 CSFs
 N elec internal:       56 conf       56 CSFs
 N-1 el internal:      238 conf      448 CSFs
 N-2 el internal:      414 conf     1982 CSFs

 Number of electrons in valence space:                     13
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -341.53078278

 Number of blocks in overlap matrix:    28   Smallest eigenvalue:  0.71D+00
 Number of N-2 electron functions:      64
 Number of N-1 electron functions:     448

 Number of internal configurations:                   26
 Number of singly external configurations:         14736
 Number of doubly external configurations:         70104
 Total number of contracted configurations:        84866
 Total number of uncontracted configurations:    2156516

 Diagonal Coupling coefficients finished.               Storage:    207479 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    241387 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -341.53078278    -0.00000000    -0.37671957  0.44D-01  0.39D-01     0.01
    2     1     1     1.06813267    -0.34033847  -341.87112125    -0.34033847    -0.00415698  0.11D-02  0.47D-03     0.07
    3     1     1     1.05679606    -0.34447738  -341.87526017    -0.00413891    -0.00004659  0.53D-05  0.62D-05     0.13
    4     1     1     1.05664054    -0.34452685  -341.87530963    -0.00004947    -0.00000074  0.21D-06  0.11D-06     0.20
    5     1     1     1.05669970    -0.34452763  -341.87531042    -0.00000078    -0.00000002  0.68D-08  0.39D-08     0.25
    6     1     1     1.05669270    -0.34452766  -341.87531044    -0.00000003    -0.00000000  0.18D-09  0.14D-09     0.31


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   3.2%  35.5%  16.1%

 Initialization:   3.2%
 Other:           41.9%

 Total CPU:        0.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222///           0.9727990


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97280156 (fixed)   0.97280467 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000639    0.00000000   -0.00000208
 Singles      0.02606036   -0.04856974   -0.05446016
 Pairs        0.03063271   -0.29595792   -0.29006541
 Total        1.05669946   -0.34452766   -0.34452766
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.53078278
 Nuclear energy                         0.00000000
 Kinetic energy                       346.84096054
 One electron energy                 -472.33212384
 Two electron energy                  130.45681340
 Virial quotient                       -0.98568321
 Correlation energy                    -0.34452766
 !MRCI STATE 1.2 Energy              -341.875310441164

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.89484497 (Davidson, fixed reference)
 Cluster corrected energies          -341.89484265 (Davidson, relaxed reference)

 Cluster corrected energies          -341.89147953 (Pople, fixed reference)
 Cluster corrected energies          -341.89147754 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.52       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.05      0.37      1.00      0.05      0.41
 REAL TIME  *         3.77 SEC
 DISK USED  *        31.98 MB (local),      434.79 MB (total)
 SF USED    *        13.94 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -341.89484265  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 15
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:       68 conf       94 CSFs
 N elec internal:      112 conf      168 CSFs
 N-1 el internal:      266 conf      714 CSFs
 N-2 el internal:      504 conf     2520 CSFs

 Number of electrons in valence space:                     13
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -341.46183877
     2      -341.46183877
     3      -341.46183877
     4      -341.46183877
     5      -341.46183877
     6      -341.43740954
     7      -341.43740954
     8      -341.43740954

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4861D-06

 Number of blocks in overlap matrix:    12   Smallest eigenvalue:  0.27D-06
 Number of N-2 electron functions:     503
 Number of N-1 electron functions:     714

 Number of internal configurations:                   94
 Number of singly external configurations:         23640
 Number of doubly external configurations:        550653
 Total number of contracted configurations:       574387
 Total number of uncontracted configurations:    2760400

 Diagonal Coupling coefficients finished.               Storage:    364284 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    291596 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -341.46183877    -0.00000000    -0.33633929  0.48D-01  0.12D-01     0.15
    1     2     2     1.00000000     0.00000000  -341.46183877    -0.00000000    -0.34116715  0.47D-01  0.14D-01     0.15
    1     3     3     1.00000000     0.00000000  -341.46183877    -0.00000000    -0.34096344  0.46D-01  0.14D-01     0.15
    1     4     4     1.00000000     0.00000000  -341.46183877     0.00000000    -0.33589794  0.47D-01  0.12D-01     0.15
    1     5     5     1.00000000     0.00000000  -341.46183877    -0.00000000    -0.34067430  0.46D-01  0.14D-01     0.15
    1     6     6     1.00000000     0.00000000  -341.43740954    -0.00000000    -0.31843725  0.25D-01  0.15D-01     0.15
    1     7     7     1.00000000     0.00000000  -341.43740954     0.00000000    -0.31872644  0.26D-01  0.15D-01     0.15
    1     8     8     1.00000000     0.00000000  -341.43740954    -0.00000000    -0.31845607  0.26D-01  0.15D-01     0.15
    2     1     1     1.05567777    -0.32904974  -341.79088851    -0.32904974    -0.01004838  0.13D-02  0.86D-03     6.83
    2     2     2     1.05576856    -0.32885180  -341.79069057    -0.32885180    -0.01007543  0.13D-02  0.86D-03     6.83
    2     3     3     1.05638375    -0.32870949  -341.79054826    -0.32870949    -0.01016990  0.14D-02  0.86D-03     6.83
    2     4     4     1.05500689    -0.32559257  -341.78743134    -0.32559257    -0.01015184  0.14D-02  0.84D-03     6.83
    2     5     5     1.05590416    -0.32538936  -341.78722813    -0.32538936    -0.01032461  0.16D-02  0.84D-03     6.83
    2     6     6     1.03869729    -0.31192881  -341.74933834    -0.31192881    -0.00996099  0.12D-02  0.73D-03     6.83
    2     7     7     1.03862909    -0.31179142  -341.74920096    -0.31179142    -0.00991564  0.12D-02  0.73D-03     6.83
    2     8     8     1.03868857    -0.31177011  -341.74917964    -0.31177011    -0.00995475  0.12D-02  0.73D-03     6.83
    3     1     1     1.05224479    -0.34527811  -341.80711688    -0.01622837    -0.00445460  0.49D-03  0.43D-03    13.25
    3     2     2     1.05218172    -0.34519559  -341.80703437    -0.01634379    -0.00446914  0.49D-03  0.43D-03    13.25
    3     3     3     1.05191110    -0.34511876  -341.80695753    -0.01640928    -0.00446983  0.50D-03  0.43D-03    13.25
    3     4     4     1.05037886    -0.34381622  -341.80565499    -0.01822366    -0.00517387  0.83D-03  0.43D-03    13.25
    3     5     5     1.04988497    -0.34367944  -341.80551822    -0.01829008    -0.00517039  0.83D-03  0.42D-03    13.25
    3     6     6     1.03954909    -0.33253095  -341.76994048    -0.02060214    -0.00615848  0.80D-03  0.44D-03    13.25
    3     7     7     1.03961346    -0.33251786  -341.76992739    -0.02072644    -0.00615388  0.81D-03  0.44D-03    13.25
    3     8     8     1.03953060    -0.33248980  -341.76989933    -0.02071969    -0.00615061  0.82D-03  0.44D-03    13.25
    4     1     1     1.06171279    -0.35397644  -341.81581521    -0.00869832    -0.00150601  0.98D-04  0.12D-03    19.62
    4     2     2     1.06152026    -0.35395780  -341.81579657    -0.00876221    -0.00151468  0.94D-04  0.12D-03    19.62
    4     3     3     1.06217304    -0.35357983  -341.81541860    -0.00846107    -0.00164111  0.66D-04  0.20D-03    19.62
    4     4     4     1.06215252    -0.35355914  -341.81539792    -0.00974292    -0.00164431  0.66D-04  0.21D-03    19.62
    4     5     5     1.06200587    -0.35355810  -341.81539687    -0.00987866    -0.00164518  0.66D-04  0.20D-03    19.62
    4     6     6     1.05276289    -0.34370120  -341.78111074    -0.01117025    -0.00219989  0.79D-04  0.31D-03    19.62
    4     7     7     1.05276207    -0.34368432  -341.78109386    -0.01116647    -0.00221022  0.80D-04  0.31D-03    19.62
    4     8     8     1.05272603    -0.34365543  -341.78106497    -0.01116564    -0.00223091  0.84D-04  0.31D-03    19.62
    5     1     1     1.06305154    -0.35606246  -341.81790124    -0.00208603    -0.00055867  0.38D-04  0.57D-04    25.93
    5     2     2     1.06315317    -0.35605072  -341.81788949    -0.00209292    -0.00056453  0.42D-04  0.57D-04    25.93
    5     3     3     1.06372940    -0.35582900  -341.81766777    -0.00224917    -0.00062949  0.87D-04  0.52D-04    25.93
    5     4     4     1.06371962    -0.35582881  -341.81766758    -0.00226967    -0.00063396  0.88D-04  0.53D-04    25.93
    5     5     5     1.06381228    -0.35582518  -341.81766395    -0.00226708    -0.00063647  0.91D-04  0.53D-04    25.93
    5     6     6     1.05406769    -0.34676798  -341.78417751    -0.00306678    -0.00083244  0.11D-03  0.58D-04    25.93
    5     7     7     1.05409105    -0.34675869  -341.78416822    -0.00307437    -0.00083503  0.12D-03  0.58D-04    25.93
    5     8     8     1.05412147    -0.34672934  -341.78413888    -0.00307391    -0.00083557  0.12D-03  0.57D-04    25.93
    6     1     1     1.06223888    -0.35693481  -341.81877359    -0.00087235    -0.00027364  0.36D-04  0.18D-04    32.25
    6     2     2     1.06223094    -0.35693037  -341.81876914    -0.00087965    -0.00027403  0.35D-04  0.18D-04    32.25
    6     3     3     1.06205554    -0.35681753  -341.81865630    -0.00098853    -0.00030343  0.39D-04  0.21D-04    32.25
    6     4     4     1.06206160    -0.35681677  -341.81865554    -0.00098795    -0.00030407  0.39D-04  0.22D-04    32.25
    6     5     5     1.06207252    -0.35681311  -341.81865189    -0.00098794    -0.00030562  0.40D-04  0.22D-04    32.25
    6     6     6     1.05374059    -0.34823750  -341.78564703    -0.00146952    -0.00046683  0.45D-04  0.32D-04    32.25
    6     7     7     1.05370374    -0.34823055  -341.78564009    -0.00147186    -0.00046841  0.45D-04  0.32D-04    32.25
    6     8     8     1.05368636    -0.34821498  -341.78562451    -0.00148563    -0.00047501  0.46D-04  0.33D-04    32.25
    7     1     1     1.06464242    -0.35737393  -341.81921270    -0.00043912    -0.00014298  0.13D-04  0.12D-04    38.52
    7     2     2     1.06462924    -0.35737077  -341.81920954    -0.00044040    -0.00014438  0.12D-04  0.12D-04    38.52
    7     3     3     1.06423910    -0.35728483  -341.81912360    -0.00046730    -0.00018076  0.46D-05  0.19D-04    38.52
    7     4     4     1.06425772    -0.35728397  -341.81912274    -0.00046720    -0.00018129  0.46D-05  0.20D-04    38.52
    7     5     5     1.06424879    -0.35728019  -341.81911897    -0.00046708    -0.00018263  0.44D-05  0.20D-04    38.52
    7     6     6     1.05704523    -0.34895251  -341.78636204    -0.00071501    -0.00027492  0.66D-05  0.32D-04    38.52
    7     7     7     1.05703557    -0.34894882  -341.78635836    -0.00071827    -0.00027681  0.64D-05  0.32D-04    38.52
    7     8     8     1.05699684    -0.34893913  -341.78634866    -0.00072415    -0.00028038  0.63D-05  0.32D-04    38.52
    8     1     1     1.06520359    -0.35756023  -341.81939901    -0.00018630    -0.00007665  0.23D-05  0.84D-05    44.81
    8     2     2     1.06520106    -0.35755830  -341.81939707    -0.00018753    -0.00007743  0.24D-05  0.85D-05    44.81
    8     3     3     1.06519317    -0.35750880  -341.81934757    -0.00022397    -0.00009149  0.91D-05  0.84D-05    44.81
    8     4     4     1.06518920    -0.35750827  -341.81934704    -0.00022430    -0.00009142  0.91D-05  0.84D-05    44.81
    8     5     5     1.06518627    -0.35750505  -341.81934382    -0.00022485    -0.00009184  0.93D-05  0.84D-05    44.81
    8     6     6     1.05835194    -0.34928970  -341.78669924    -0.00033720    -0.00012670  0.12D-04  0.11D-04    44.81
    8     7     7     1.05835390    -0.34928737  -341.78669691    -0.00033855    -0.00012720  0.12D-04  0.11D-04    44.81
    8     8     8     1.05833536    -0.34928048  -341.78669002    -0.00034136    -0.00012852  0.12D-04  0.11D-04    44.81
    9     1     1     1.06504654    -0.35766557  -341.81950434    -0.00010533    -0.00004443  0.42D-05  0.34D-05    51.10
    9     2     2     1.06504049    -0.35766436  -341.81950313    -0.00010605    -0.00004478  0.42D-05  0.34D-05    51.10
    9     3     3     1.06490155    -0.35763763  -341.81947640    -0.00012883    -0.00005270  0.51D-05  0.43D-05    51.10
    9     4     4     1.06490216    -0.35763704  -341.81947581    -0.00012877    -0.00005296  0.51D-05  0.43D-05    51.10
    9     5     5     1.06490226    -0.35763464  -341.81947341    -0.00012959    -0.00005384  0.52D-05  0.44D-05    51.10
    9     6     6     1.05842641    -0.34947995  -341.78688949    -0.00019025    -0.00007948  0.57D-05  0.69D-05    51.10
    9     7     7     1.05841515    -0.34947850  -341.78688804    -0.00019113    -0.00007993  0.57D-05  0.69D-05    51.10
    9     8     8     1.05840769    -0.34947420  -341.78688374    -0.00019372    -0.00008166  0.58D-05  0.71D-05    51.10
   10     1     1     1.06560942    -0.35773182  -341.81957060    -0.00006626    -0.00002884  0.16D-05  0.25D-05    57.35
   10     2     2     1.06559764    -0.35773059  -341.81956936    -0.00006623    -0.00002937  0.15D-05  0.26D-05    57.35
   10     3     3     1.06541531    -0.35771154  -341.81955031    -0.00007391    -0.00003580  0.31D-06  0.40D-05    57.35
   10     4     4     1.06541171    -0.35771111  -341.81954988    -0.00007407    -0.00003596  0.29D-06  0.40D-05    57.35
   10     5     5     1.06540546    -0.35770942  -341.81954819    -0.00007478    -0.00003650  0.27D-06  0.40D-05    57.35
   10     6     6     1.05920050    -0.34959268  -341.78700222    -0.00011273    -0.00005349  0.95D-06  0.59D-05    57.35
   10     7     7     1.05919290    -0.34959176  -341.78700129    -0.00011325    -0.00005386  0.94D-06  0.59D-05    57.35
   10     8     8     1.05917741    -0.34958919  -341.78699873    -0.00011499    -0.00005463  0.94D-06  0.61D-05    57.35
   11     1     1     1.06584287    -0.35776772  -341.81960649    -0.00003589    -0.00001682  0.30D-06  0.19D-05    63.48
   11     2     2     1.06584107    -0.35776676  -341.81960553    -0.00003617    -0.00001706  0.34D-06  0.19D-05    63.48
   11     3     3     1.06580874    -0.35775570  -341.81959447    -0.00004416    -0.00002011  0.16D-05  0.20D-05    63.48
   11     4     4     1.06580592    -0.35775543  -341.81959420    -0.00004432    -0.00002016  0.16D-05  0.20D-05    63.48
   11     5     5     1.06580185    -0.35775430  -341.81959307    -0.00004488    -0.00002038  0.17D-05  0.20D-05    63.48
   11     6     6     1.05976183    -0.34965759  -341.78706713    -0.00006491    -0.00002744  0.17D-05  0.26D-05    63.48
   11     7     7     1.05976021    -0.34965701  -341.78706655    -0.00006526    -0.00002757  0.18D-05  0.26D-05    63.48
   11     8     8     1.05974854    -0.34965551  -341.78706504    -0.00006631    -0.00002780  0.18D-05  0.26D-05    63.48
   12     1     1     1.06585612    -0.35779042  -341.81962920    -0.00002271    -0.00001082  0.71D-06  0.97D-06    69.59
   12     2     2     1.06585289    -0.35778978  -341.81962855    -0.00002302    -0.00001100  0.72D-06  0.98D-06    69.59
   12     3     3     1.06579309    -0.35778287  -341.81962164    -0.00002717    -0.00001301  0.60D-06  0.13D-05    69.59
   12     4     4     1.06579549    -0.35778263  -341.81962140    -0.00002720    -0.00001309  0.60D-06  0.13D-05    69.59
   12     5     5     1.06579267    -0.35778182  -341.81962059    -0.00002752    -0.00001336  0.60D-06  0.14D-05    69.59
   12     6     6     1.05991446    -0.34969604  -341.78710557    -0.00003844    -0.00001906  0.76D-06  0.21D-05    69.59
   12     7     7     1.05991037    -0.34969565  -341.78710518    -0.00003863    -0.00001917  0.74D-06  0.21D-05    69.59
   12     8     8     1.05990630    -0.34969478  -341.78710432    -0.00003927    -0.00001951  0.76D-06  0.21D-05    69.59
   13     1     1     1.06602236    -0.35780534  -341.81964412    -0.00001492    -0.00000747  0.13D-06  0.73D-06    75.66
   13     2     2     1.06601463    -0.35780479  -341.81964356    -0.00001501    -0.00000767  0.11D-06  0.73D-06    75.66
   13     3     3     1.06592180    -0.35779978  -341.81963855    -0.00001691    -0.00000902  0.67D-07  0.98D-06    75.66
   13     4     4     1.06592047    -0.35779962  -341.81963839    -0.00001699    -0.00000908  0.69D-07  0.98D-06    75.66
   13     5     5     1.06591599    -0.35779907  -341.81963784    -0.00001725    -0.00000925  0.77D-07  0.10D-05    75.66
   13     6     6     1.06011616    -0.34972119  -341.78713073    -0.00002515    -0.00001309  0.18D-06  0.15D-05    75.66
   13     7     7     1.06011250    -0.34972094  -341.78713047    -0.00002529    -0.00001318  0.18D-06  0.15D-05    75.66
   13     8     8     1.06010713    -0.34972045  -341.78712999    -0.00002567    -0.00001335  0.18D-06  0.15D-05    75.66
   14     1     1     1.06611445    -0.35781451  -341.81965328    -0.00000917    -0.00000451  0.10D-06  0.47D-06    81.72
   14     2     2     1.06611128    -0.35781407  -341.81965284    -0.00000928    -0.00000463  0.12D-06  0.48D-06    81.72
   14     3     3     1.06608716    -0.35781110  -341.81964987    -0.00001132    -0.00000549  0.32D-06  0.56D-06    81.72
   14     4     4     1.06608397    -0.35781099  -341.81964976    -0.00001137    -0.00000551  0.31D-06  0.56D-06    81.72
   14     5     5     1.06608076    -0.35781061  -341.81964938    -0.00001154    -0.00000559  0.32D-06  0.56D-06    81.72
   14     6     6     1.06034387    -0.34973739  -341.78714692    -0.00001620    -0.00000736  0.29D-06  0.73D-06    81.72
   14     7     7     1.06034241    -0.34973722  -341.78714675    -0.00001628    -0.00000741  0.29D-06  0.73D-06    81.72
   14     8     8     1.06033715    -0.34973692  -341.78714645    -0.00001646    -0.00000743  0.29D-06  0.74D-06    81.72
   15     1     1     1.06613663    -0.35782047  -341.81965924    -0.00000596    -0.00000311  0.89D-07  0.31D-06    87.82
   15     2     2     1.06613415    -0.35782015  -341.81965892    -0.00000608    -0.00000319  0.86D-07  0.32D-06    87.82
   15     3     3     1.06611726    -0.35781810  -341.81965687    -0.00000700    -0.00000373  0.34D-07  0.44D-06    87.82
   15     4     4     1.06611761    -0.35781801  -341.81965678    -0.00000702    -0.00000375  0.34D-07  0.44D-06    87.82
   15     5     5     1.06611567    -0.35781774  -341.81965651    -0.00000712    -0.00000383  0.32D-07  0.45D-06    87.82
   15     6     6     1.06045876    -0.34974699  -341.78715653    -0.00000960    -0.00000532  0.67D-07  0.63D-06    87.82
   15     7     7     1.06045688    -0.34974686  -341.78715640    -0.00000965    -0.00000535  0.65D-07  0.64D-06    87.82
   15     8     8     1.06045648    -0.34974674  -341.78715627    -0.00000982    -0.00000539  0.68D-07  0.66D-06    87.82
   16     1     1     1.06620384    -0.35782449  -341.81966326    -0.00000402    -0.00000217  0.87D-08  0.22D-06    93.94
   16     2     2     1.06619935    -0.35782424  -341.81966301    -0.00000409    -0.00000225  0.89D-08  0.22D-06    93.94
   16     3     3     1.06615547    -0.35782281  -341.81966158    -0.00000471    -0.00000260  0.47D-07  0.27D-06    93.94
   16     4     4     1.06615570    -0.35782275  -341.81966152    -0.00000474    -0.00000262  0.48D-07  0.27D-06    93.94
   16     5     5     1.06615315    -0.35782257  -341.81966134    -0.00000483    -0.00000267  0.52D-07  0.28D-06    93.94
   16     6     6     1.06053159    -0.34975381  -341.78716334    -0.00000681    -0.00000373  0.53D-07  0.41D-06    93.94
   16     7     7     1.06052957    -0.34975373  -341.78716326    -0.00000686    -0.00000375  0.54D-07  0.41D-06    93.94
   16     8     8     1.06052859    -0.34975371  -341.78716324    -0.00000697    -0.00000377  0.53D-07  0.42D-06    93.94
   17     1     1     1.06625477    -0.35782717  -341.81966594    -0.00000268    -0.00000136  0.29D-07  0.14D-06   100.03
   17     2     2     1.06625153    -0.35782697  -341.81966574    -0.00000273    -0.00000142  0.29D-07  0.14D-06   100.03
   17     3     3     1.06623116    -0.35782608  -341.81966485    -0.00000327    -0.00000169  0.42D-07  0.18D-06   100.03
   17     4     4     1.06622942    -0.35782603  -341.81966480    -0.00000329    -0.00000170  0.42D-07  0.18D-06   100.03
   17     5     5     1.06622708    -0.35782591  -341.81966468    -0.00000334    -0.00000173  0.41D-07  0.18D-06   100.03
   17     6     6     1.06062097    -0.34975838  -341.78716792    -0.00000458    -0.00000223  0.34D-07  0.24D-06   100.03
   17     7     7     1.06061930    -0.34975833  -341.78716787    -0.00000461    -0.00000223  0.34D-07  0.24D-06   100.03
   17     8     8     1.06061995    -0.34975833  -341.78716786    -0.00000462    -0.00000224  0.33D-07  0.24D-06   100.03
   18     1     1     1.06626742    -0.35782891  -341.81966768    -0.00000174    -0.00000098  0.54D-08  0.10D-06   106.11
   18     2     2     1.06626550    -0.35782876  -341.81966753    -0.00000178    -0.00000101  0.47D-08  0.11D-06   106.11
   18     3     3     1.06626123    -0.35782812  -341.81966689    -0.00000204    -0.00000115  0.50D-08  0.14D-06   106.11
   18     4     4     1.06626069    -0.35782808  -341.81966685    -0.00000205    -0.00000116  0.50D-08  0.14D-06   106.11
   18     5     5     1.06625959    -0.35782799  -341.81966676    -0.00000208    -0.00000118  0.53D-08  0.14D-06   106.11
   18     6     6     1.06069182    -0.34976117  -341.78717070    -0.00000278    -0.00000161  0.83D-08  0.19D-06   106.11
   18     7     7     1.06069250    -0.34976114  -341.78717068    -0.00000281    -0.00000162  0.82D-08  0.20D-06   106.11
   18     8     8     1.06069098    -0.34976112  -341.78717066    -0.00000279    -0.00000162  0.85D-08  0.19D-06   106.11
   19     1     1     1.06629104    -0.35783012  -341.81966889    -0.00000121    -0.00000068  0.54D-08  0.70D-07   112.22
   19     2     2     1.06628856    -0.35783001  -341.81966878    -0.00000125    -0.00000072  0.60D-08  0.69D-07   112.22
   19     3     3     1.06627113    -0.35782958  -341.81966835    -0.00000146    -0.00000083  0.14D-07  0.86D-07   112.22
   19     4     4     1.06627137    -0.35782955  -341.81966833    -0.00000147    -0.00000083  0.14D-07  0.87D-07   112.22
   19     5     5     1.06627010    -0.35782949  -341.81966827    -0.00000150    -0.00000085  0.14D-07  0.88D-07   112.22
   19     6     6     1.06072761    -0.34976324  -341.78717277    -0.00000207    -0.00000117  0.10D-07  0.13D-06   112.22
   19     7     7     1.06072813    -0.34976322  -341.78717276    -0.00000207    -0.00000118  0.10D-07  0.13D-06   112.22
   19     8     8     1.06072713    -0.34976319  -341.78717273    -0.00000207    -0.00000119  0.10D-07  0.13D-06   112.22
   20     1     1     1.06632114    -0.35783096  -341.81966973    -0.00000084    -0.00000045  0.41D-08  0.44D-07   118.62
   20     2     2     1.06631842    -0.35783088  -341.81966965    -0.00000087    -0.00000047  0.37D-08  0.46D-07   118.62
   20     3     3     1.06630374    -0.35783059  -341.81966936    -0.00000101    -0.00000056  0.28D-08  0.61D-07   118.62
   20     4     4     1.06630306    -0.35783057  -341.81966934    -0.00000102    -0.00000056  0.27D-08  0.61D-07   118.62
   20     5     5     1.06630165    -0.35783053  -341.81966930    -0.00000103    -0.00000057  0.26D-08  0.61D-07   118.62
   20     6     6     1.06076277    -0.34976464  -341.78717418    -0.00000141    -0.00000071  0.26D-08  0.80D-07   118.62
   20     7     7     1.06076205    -0.34976461  -341.78717415    -0.00000139    -0.00000073  0.26D-08  0.81D-07   118.62
   20     8     8     1.06076136    -0.34976459  -341.78717413    -0.00000140    -0.00000073  0.25D-08  0.81D-07   118.62
   21     1     1     1.06633306    -0.35783151  -341.81967028    -0.00000055    -0.00000032  0.12D-08  0.34D-07   124.80
   21     2     2     1.06633144    -0.35783145  -341.81967022    -0.00000057    -0.00000034  0.14D-08  0.35D-07   124.80
   21     3     3     1.06632856    -0.35783124  -341.81967001    -0.00000065    -0.00000038  0.37D-08  0.43D-07   124.80
   21     4     4     1.06632801    -0.35783123  -341.81967000    -0.00000066    -0.00000038  0.37D-08  0.44D-07   124.80
   21     5     5     1.06632733    -0.35783120  -341.81966997    -0.00000067    -0.00000039  0.38D-08  0.44D-07   124.80
   21     6     6     1.06080441    -0.34976552  -341.78717506    -0.00000088    -0.00000052  0.19D-08  0.63D-07   124.80
   21     7     7     1.06080242    -0.34976550  -341.78717503    -0.00000088    -0.00000052  0.20D-08  0.61D-07   124.80
   21     8     8     1.06080195    -0.34976548  -341.78717502    -0.00000089    -0.00000053  0.20D-08  0.61D-07   124.80
   22     1     1     1.06634066    -0.35783191  -341.81967068    -0.00000040    -0.00000023  0.17D-08  0.23D-07   131.04
   22     2     2     1.06633929    -0.35783186  -341.81967063    -0.00000041    -0.00000024  0.16D-08  0.23D-07   131.04
   22     3     3     1.06633331    -0.35783172  -341.81967049    -0.00000048    -0.00000028  0.18D-08  0.30D-07   131.04
   22     4     4     1.06633332    -0.35783171  -341.81967048    -0.00000048    -0.00000028  0.18D-08  0.30D-07   131.04
   22     5     5     1.06633270    -0.35783169  -341.81967046    -0.00000049    -0.00000029  0.18D-08  0.30D-07   131.04
   22     6     6     1.06082581    -0.34976619  -341.78717572    -0.00000066    -0.00000039  0.14D-08  0.44D-07   131.04
   22     7     7     1.06082495    -0.34976616  -341.78717569    -0.00000066    -0.00000040  0.14D-08  0.43D-07   131.04
   22     8     8     1.06082451    -0.34976615  -341.78717568    -0.00000067    -0.00000040  0.13D-08  0.44D-07   131.04
   23     1     1     1.06635495    -0.35783218  -341.81967096    -0.00000028    -0.00000015  0.31D-09  0.15D-07   137.21
   23     2     2     1.06635311    -0.35783215  -341.81967092    -0.00000029    -0.00000016  0.29D-09  0.15D-07   137.21
   23     3     3     1.06634482    -0.35783205  -341.81967082    -0.00000033    -0.00000019  0.50D-09  0.20D-07   137.21
   23     4     4     1.06634461    -0.35783205  -341.81967082    -0.00000033    -0.00000019  0.51D-09  0.20D-07   137.21
   23     5     5     1.06634390    -0.35783203  -341.81967080    -0.00000034    -0.00000019  0.53D-09  0.20D-07   137.21
   23     6     6     1.06083979    -0.34976664  -341.78717618    -0.00000045    -0.00000024  0.47D-09  0.27D-07   137.21
   23     7     7     1.06083850    -0.34976661  -341.78717614    -0.00000045    -0.00000025  0.44D-09  0.27D-07   137.21
   23     8     8     1.06083811    -0.34976660  -341.78717614    -0.00000045    -0.00000025  0.44D-09  0.27D-07   137.21
   24     1     1     1.06636512    -0.35783237  -341.81967114    -0.00000018    -0.00000011  0.76D-09  0.11D-07   143.32
   24     2     2     1.06636378    -0.35783234  -341.81967111    -0.00000019    -0.00000012  0.79D-09  0.12D-07   143.32
   24     3     3     1.06636094    -0.35783227  -341.81967105    -0.00000022    -0.00000013  0.10D-08  0.15D-07   143.32
   24     4     4     1.06636061    -0.35783227  -341.81967104    -0.00000022    -0.00000013  0.99D-09  0.15D-07   143.32
   24     5     5     1.06636021    -0.35783226  -341.81967103    -0.00000023    -0.00000013  0.10D-08  0.15D-07   143.32
   24     6     6     1.06086164    -0.34976693  -341.78717647    -0.00000029    -0.00000017  0.36D-09  0.21D-07   143.32
   24     7     7     1.06085918    -0.34976690  -341.78717644    -0.00000030    -0.00000018  0.38D-09  0.20D-07   143.32
   24     8     8     1.06085889    -0.34976690  -341.78717643    -0.00000030    -0.00000018  0.37D-09  0.20D-07   143.32
   25     1     1     1.06636899    -0.35783250  -341.81967128    -0.00000014    -0.00000008  0.23D-09  0.80D-08   149.37
   25     2     2     1.06636812    -0.35783248  -341.81967126    -0.00000014    -0.00000009  0.21D-09  0.80D-08   149.37
   25     3     3     1.06636593    -0.35783244  -341.81967121    -0.00000016    -0.00000010  0.26D-09  0.10D-07   149.37
   25     4     4     1.06636583    -0.35783243  -341.81967120    -0.00000016    -0.00000010  0.27D-09  0.11D-07   149.37
   25     5     5     1.06636553    -0.35783243  -341.81967120    -0.00000017    -0.00000010  0.28D-09  0.11D-07   149.37
   25     6     6     1.06087543    -0.34976715  -341.78717669    -0.00000022    -0.00000013  0.32D-09  0.15D-07   149.37
   25     7     7     1.06087394    -0.34976713  -341.78717666    -0.00000023    -0.00000014  0.29D-09  0.15D-07   149.37
   25     8     8     1.06087373    -0.34976712  -341.78717666    -0.00000023    -0.00000014  0.29D-09  0.15D-07   149.37
   26     1     1     1.06636969    -0.35783255  -341.81967132    -0.00000005    -0.00000007  0.24D-09  0.70D-08   154.06
   26     2     2     1.06636962    -0.35783255  -341.81967132    -0.00000006    -0.00000007  0.24D-09  0.70D-08   154.06
   26     3     3     1.06636924    -0.35783254  -341.81967131    -0.00000011    -0.00000007  0.26D-09  0.70D-08   154.06
   26     4     4     1.06636899    -0.35783250  -341.81967128    -0.00000007    -0.00000008  0.23D-09  0.80D-08   154.06
   26     5     5     1.06636812    -0.35783248  -341.81967126    -0.00000006    -0.00000009  0.21D-09  0.80D-08   154.06
   26     6     6     1.06093505    -0.34976760  -341.78717714    -0.00000045    -0.00000006  0.66D-09  0.67D-08   154.06
   26     7     7     1.06093497    -0.34976760  -341.78717714    -0.00000048    -0.00000006  0.71D-09  0.67D-08   154.06
   26     8     8     1.06088206    -0.34976730  -341.78717684    -0.00000018    -0.00000008  0.18D-09  0.94D-08   154.06


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.3%
 P   0.4%   7.4%  67.1%

 Initialization:   0.1%
 Other:           24.6%

 Total CPU:      154.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222/\/          -0.0000001  -0.0000013   0.0008448   0.0462300   0.9672665   0.0000000   0.0000000  -0.0000000
 22222//\          -0.0000035  -0.0000276  -0.0000370   0.9672664  -0.0462300  -0.0000000   0.0000000   0.0000000
 222222/0          -0.0000008   0.6847414  -0.0000000   0.0000195  -0.0000000   0.6779872   0.0000217   0.0000000
 22222/20           0.6847414   0.0000008  -0.0000000   0.0000025  -0.0000001  -0.0000217   0.6779872   0.0000000
 2222202/           0.0000000  -0.0000000   0.6847411  -0.0000024  -0.0005979  -0.0000000  -0.0000000   0.6780049
 2222220/          -0.0000000  -0.0000000  -0.6847411   0.0000024   0.0005979  -0.0000000   0.0000000   0.6780048
 222220/2           0.0000008  -0.6847410  -0.0000000  -0.0000195  -0.0000000   0.6779871   0.0000217   0.0000000
 22222/02          -0.6847410  -0.0000008   0.0000000  -0.0000025   0.0000001  -0.0000217   0.6779872  -0.0000000
 20222/22          -0.0000003  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000049  -0.1523302   0.0000000
 202222/2           0.0000000  -0.0000004  -0.0000000  -0.0000000   0.0000000  -0.1523301  -0.0000049   0.0000000
 2022222/          -0.0000000  -0.0000000   0.0000001  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1523274

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222//\  13.1     0.0000001  -0.0680535   0.0000000  -0.0000019   0.0000000  -0.0075345  -0.0000002  -0.0000000
 2\222//\  14.1    -0.0000000  -0.0000000  -0.0680534   0.0000002   0.0000594  -0.0000000   0.0000000   0.0075323
 2\222//\  15.1     0.0000001   0.0000012  -0.0000559  -0.0410617  -0.0638720  -0.0000000   0.0000000  -0.0000000
 2/222\/\  12.1     0.0529319   0.0000001  -0.0000000   0.0000002  -0.0000000  -0.0000003   0.0087015   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000003    0.968378    0.000000   -0.000002   -0.000001    0.000000   -0.000000    0.000000
 2          -0.000019    0.000001    0.000000   -0.000020    0.968378   -0.000000   -0.000000    0.000000
 3          -0.000604   -0.000000    0.968378    0.000592    0.000000    0.000000   -0.000000   -0.000000
 4           0.675350    0.000004   -0.000003    0.694016    0.000028   -0.000000   -0.000000    0.000000
 5          -0.694016   -0.000000   -0.000846    0.675350    0.000000   -0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000031   -0.000000    0.970822
 7          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.970822    0.000000    0.000031
 8           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.970846    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968378    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.968378   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.968378   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.968378   -0.000000    0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.968379   -0.000000    0.000000   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.970822    0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.970822    0.000000
 8           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970846


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96837800 (fixed)   0.96838065 (relaxed)   0.96837800 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000548   -0.00000000   -0.28179463
 Singles      0.03204102   -0.05733562   -0.06451709
 Pairs        0.03432903   -0.00000000   -0.01152083
 Total        1.06637553   -0.05733562   -0.35783255
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46183877
 Nuclear energy                         0.00000000
 Kinetic energy                       346.81056693
 One electron energy                 -472.21053153
 Two electron energy                  130.39086021
 Virial quotient                       -0.98560916
 Correlation energy                    -0.35783255
 !MRCI STATE 1.2 Energy              -341.819671321736

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84342265 (Davidson, fixed reference)
 Cluster corrected energies          -341.84342056 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84342265 (Davidson, rotated reference)

 Cluster corrected energies          -341.84036663 (Pople, fixed reference)
 Cluster corrected energies          -341.84036472 (Pople, relaxed reference)
 Cluster corrected energies          -341.84036663 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96837803 (fixed)   0.96838069 (relaxed)   0.96837803 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000548   -0.00000000   -0.28179440
 Singles      0.03204117   -0.05733573   -0.06451715
 Pairs        0.03432881   -0.00000015   -0.01152100
 Total        1.06637546   -0.05733587   -0.35783255
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46183877
 Nuclear energy                         0.00000000
 Kinetic energy                       346.81056740
 One electron energy                 -472.21053267
 Two electron energy                  130.39086135
 Virial quotient                       -0.98560916
 Correlation energy                    -0.35783255
 !MRCI STATE 2.2 Energy              -341.819671319499

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84342262 (Davidson, fixed reference)
 Cluster corrected energies          -341.84342053 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84342262 (Davidson, rotated reference)

 Cluster corrected energies          -341.84036660 (Pople, fixed reference)
 Cluster corrected energies          -341.84036470 (Pople, relaxed reference)
 Cluster corrected energies          -341.84036660 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96837783 (fixed)   0.96838085 (relaxed)   0.96837820 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000548   -0.00000000   -0.28179460
 Singles      0.03204121   -0.05733576   -0.06451719
 Pairs        0.03432840    0.00000000   -0.01152075
 Total        1.06637509   -0.05733576   -0.35783254
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46183877
 Nuclear energy                         0.00000000
 Kinetic energy                       346.81056884
 One electron energy                 -472.21053483
 Two electron energy                  130.39086352
 Virial quotient                       -0.98560915
 Correlation energy                    -0.35783254
 !MRCI STATE 3.2 Energy              -341.819671314987

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84342248 (Davidson, fixed reference)
 Cluster corrected energies          -341.84342039 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84342248 (Davidson, rotated reference)

 Cluster corrected energies          -341.84036647 (Pople, fixed reference)
 Cluster corrected energies          -341.84036457 (Pople, relaxed reference)
 Cluster corrected energies          -341.84036647 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.69401630 (fixed)   0.96838097 (relaxed)   0.96837832 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000548   -0.00000000   -0.28179451
 Singles      0.03204189   -0.05733589   -0.06451732
 Pairs        0.03432746   -0.00000000   -0.01152067
 Total        1.06637483   -0.05733589   -0.35783250
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46183877
 Nuclear energy                         0.00000000
 Kinetic energy                       346.81055701
 One electron energy                 -472.21054538
 Two electron energy                  130.39087410
 Virial quotient                       -0.98560919
 Correlation energy                    -0.35783250
 !MRCI STATE 4.2 Energy              -341.819671275322

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84342235 (Davidson, fixed reference)
 Cluster corrected energies          -341.84342026 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84342235 (Davidson, rotated reference)

 Cluster corrected energies          -341.84036635 (Pople, fixed reference)
 Cluster corrected energies          -341.84036445 (Pople, relaxed reference)
 Cluster corrected energies          -341.84036635 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.69401634 (fixed)   0.96838137 (relaxed)   0.96837871 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000548   -0.00000000   -0.28179445
 Singles      0.03204232   -0.05733618   -0.06451754
 Pairs        0.03432617    0.00000000   -0.01152049
 Total        1.06637396   -0.05733618   -0.35783248
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.46183877
 Nuclear energy                         0.00000000
 Kinetic energy                       346.81056212
 One electron energy                 -472.21055149
 Two electron energy                  130.39088023
 Virial quotient                       -0.98560917
 Correlation energy                    -0.35783248
 !MRCI STATE 5.2 Energy              -341.819671255073

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.84342201 (Davidson, fixed reference)
 Cluster corrected energies          -341.84341992 (Davidson, relaxed reference)
 Cluster corrected energies          -341.84342201 (Davidson, rotated reference)

 Cluster corrected energies          -341.84036604 (Pople, fixed reference)
 Cluster corrected energies          -341.84036414 (Pople, relaxed reference)
 Cluster corrected energies          -341.84036604 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97082177 (fixed)   0.97085775 (relaxed)   0.97082177 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007413    0.00000000   -0.00002444
 Singles      0.01677713   -0.03452565   -0.03807202
 Pairs        0.04416243   -0.31524195   -0.31167114
 Total        1.06101369   -0.34976760   -0.34976760
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.43740954
 Nuclear energy                         0.00000000
 Kinetic energy                       346.78249709
 One electron energy                 -472.11112995
 Two electron energy                  130.32395281
 Virial quotient                       -0.98559524
 Correlation energy                    -0.34976760
 !MRCI STATE 6.2 Energy              -341.787177139292

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.80851775 (Davidson, fixed reference)
 Cluster corrected energies          -341.80849024 (Davidson, relaxed reference)
 Cluster corrected energies          -341.80851775 (Davidson, rotated reference)

 Cluster corrected energies          -341.80570462 (Pople, fixed reference)
 Cluster corrected energies          -341.80567976 (Pople, relaxed reference)
 Cluster corrected energies          -341.80570462 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97082180 (fixed)   0.97085779 (relaxed)   0.97082180 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007413    0.00000000   -0.29712892
 Singles      0.01677711   -0.03452561   -0.03807201
 Pairs        0.04416238   -0.00001009   -0.01456667
 Total        1.06101362   -0.03453570   -0.34976760
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.43740954
 Nuclear energy                         0.00000000
 Kinetic energy                       346.78250056
 One electron energy                 -472.11113443
 Two electron energy                  130.32395729
 Virial quotient                       -0.98559523
 Correlation energy                    -0.34976760
 !MRCI STATE 7.2 Energy              -341.787177139168

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.80851773 (Davidson, fixed reference)
 Cluster corrected energies          -341.80849022 (Davidson, relaxed reference)
 Cluster corrected energies          -341.80851773 (Davidson, rotated reference)

 Cluster corrected energies          -341.80570460 (Pople, fixed reference)
 Cluster corrected energies          -341.80567973 (Pople, relaxed reference)
 Cluster corrected energies          -341.80570460 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97084596 (fixed)   0.97088200 (relaxed)   0.97084596 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007424    0.00000000   -0.29715189
 Singles      0.01677564   -0.03452676   -0.03807192
 Pairs        0.04411094   -0.00000000   -0.01454349
 Total        1.06096082   -0.03452676   -0.34976730
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -341.43740954
 Nuclear energy                         0.00000000
 Kinetic energy                       346.78262942
 One electron energy                 -472.11132921
 Two electron energy                  130.32415237
 Virial quotient                       -0.98559486
 Correlation energy                    -0.34976730
 !MRCI STATE 8.2 Energy              -341.787176838320

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -341.80849894 (Davidson, fixed reference)
 Cluster corrected energies          -341.80847139 (Davidson, relaxed reference)
 Cluster corrected energies          -341.80849894 (Davidson, rotated reference)

 Cluster corrected energies          -341.80568759 (Pople, fixed reference)
 Cluster corrected energies          -341.80566269 (Pople, relaxed reference)
 Cluster corrected energies          -341.80568759 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       37.85       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       157.57    155.52      0.37      1.00      0.05      0.41
 REAL TIME  *       177.11 SEC
 DISK USED  *        68.32 MB (local),      870.85 MB (total)
 SF USED    *       364.30 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -341.84342265  AU                              
 SETTING HLSDIAG(3)     =      -341.84342262  AU                              
 SETTING HLSDIAG(4)     =      -341.84342248  AU                              
 SETTING HLSDIAG(5)     =      -341.84342235  AU                              
 SETTING HLSDIAG(6)     =      -341.84342201  AU                              
 SETTING HLSDIAG(7)     =      -341.80851775  AU                              
 SETTING HLSDIAG(8)     =      -341.80851773  AU                              
 SETTING HLSDIAG(9)     =      -341.80849894  AU                              


         HLSDIAG
    -341.8948426
    -341.8434226
    -341.8434226
    -341.8434225
    -341.8434223
    -341.8434220
    -341.8085178
    -341.8085177
    -341.8084989
                                                  

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

 Time for Seward_LS:       0.70 sec

        2402996. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.70 sec, REAL time:      0.73 sec


 SORTLS1 read     2508011. and wrote     2508011. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.04 sec
 SORTLS2 read     2508011. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    72.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    72.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       37.85       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       159.19      1.56    155.52      0.37      1.00      0.05      0.41
 REAL TIME  *       178.87 SEC
 DISK USED  *        68.35 MB (local),        1.04 GB (total)
 SF USED    *       364.30 MB
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

 Original energies:   -341.875310
 Replaced energies:   -341.894843

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   8

 Original energies:   -341.819671   -341.819671   -341.819671   -341.819671   -341.819671   -341.787177   -341.787177   -341.787177
 Replaced energies:   -341.843423   -341.843423   -341.843422   -341.843422   -341.843422   -341.808518   -341.808518   -341.808499



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -341.89484265

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00     177.05

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.01

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00    -102.22

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00   11285.39       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.52       0.34       0.00

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00   11285.39       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.31      -0.00      -0.00       0.00

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00   11285.42       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.31      -0.00      -0.00       0.00    -125.61

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   11285.45       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.52       0.00       0.00       0.00       0.00       0.00

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   11285.52       0.00
                            0.00      -0.00      -0.00      -0.00      -0.34       0.00      -0.00      -0.00       0.00       0.11

   10   6.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   18946.12
                         -177.05      -0.01     102.22      -0.00      -0.00      -0.00     125.61      -0.00      -0.11      -0.00

   11   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01     204.44       0.00      -0.00      -0.00      -0.00       0.11      78.43     122.00       0.00

   12   8.2  0.5  0.5     177.07       0.00     102.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     125.61       0.00       0.00      -0.00      -0.40

   13   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.31       0.00       0.00       0.00    -125.62
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.32      -0.00      -0.00       0.00

   14   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.31       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.55      -0.29       0.00

   15   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.03      -0.63      -0.00
                           -0.00       0.00       0.00      -0.00      -0.32       0.00       0.00      -0.00       0.00       0.12

   16   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.03       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.55       0.00       0.00      -0.00     -66.44

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.63       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.29      -0.00       0.00      -0.00     128.92

   18   6.2  0.5 -0.5       0.00      -0.00       0.00      -0.00     125.62       0.00       0.00       0.00      -0.00       0.00
                           -0.00    -102.22      -0.01     177.05      -0.00      -0.00      -0.12      66.44    -128.92       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00    -125.62      -0.00      -0.00      -0.00      -0.39
                           -0.00      -0.00     204.44       0.01      -0.00      -0.00     125.60       0.00      -0.11       0.00

   20   8.2  0.5 -0.5       0.00     102.23       0.00     177.07      -0.00      -0.00      -0.01     144.89      -6.92      -0.00
                           -0.00      -0.00      -0.00       0.00    -125.61      -0.00      -0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5       0.00     177.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     102.23
                         -204.44       0.00       0.00      -0.00      -0.00       0.00      -0.00     102.22       0.00       0.00

    3   1.2  1.5 -0.5       0.00     102.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.01    -204.44       0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     177.07
                            0.00       0.00      -0.00       0.00       0.00      -0.00       0.00    -177.05      -0.01      -0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00      -0.31      -0.00      -0.00      -0.00     125.62       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.32      -0.00      -0.00       0.00       0.00     125.61

    6   2.2  0.5  0.5       0.00       0.00       0.31       0.00       0.00       0.00       0.00       0.00    -125.62      -0.00
                            0.00    -125.61       0.00       0.00      -0.00      -0.55      -0.29       0.00       0.00       0.00

    7   3.2  0.5  0.5       0.00       0.00       0.00      -0.00       0.00       0.03       0.63       0.00      -0.00      -0.01
                           -0.11      -0.00      -0.32       0.00      -0.00      -0.00       0.00       0.12    -125.60       0.00

    8   4.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.03       0.00       0.00       0.00      -0.00     144.89
                          -78.43      -0.00       0.00       0.55       0.00      -0.00      -0.00     -66.44      -0.00       0.00

    9   5.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.63      -0.00      -0.00      -0.00      -0.00      -6.92
                         -122.00       0.00       0.00       0.29      -0.00       0.00       0.00     128.92       0.11      -0.00

   10   6.2  0.5  0.5       0.00       0.00    -125.62      -0.00      -0.00      -0.00       0.00       0.00      -0.39      -0.00
                           -0.00       0.40      -0.00      -0.00      -0.12      66.44    -128.92      -0.00      -0.00       0.00

   11   7.2  0.5  0.5   18946.13       0.00      -0.00     125.62       0.00       0.00       0.00       0.39       0.00       0.00
                            0.00       0.00      -0.00      -0.00     125.60       0.00      -0.11       0.00      -0.00      -0.40

   12   8.2  0.5  0.5       0.00   18950.25       0.00       0.00       0.01    -144.89       6.92       0.00      -0.00      -0.00
                           -0.00      -0.00    -125.61      -0.00      -0.00      -0.00       0.00      -0.00       0.40      -0.00

   13   1.2  0.5 -0.5      -0.00       0.00   11285.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     125.61      -0.00      -0.00      -0.00       0.52      -0.34      -0.00      -0.00      -0.00

   14   2.2  0.5 -0.5     125.62       0.00       0.00   11285.39       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.31       0.00       0.00      -0.00      -0.00     125.61

   15   3.2  0.5 -0.5       0.00       0.01       0.00       0.00   11285.42       0.00       0.00       0.00       0.00       0.00
                         -125.60       0.00       0.00       0.31       0.00       0.00      -0.00     125.61       0.11       0.00

   16   4.2  0.5 -0.5       0.00    -144.89       0.00       0.00       0.00   11285.45       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.52      -0.00      -0.00      -0.00      -0.00      -0.00      78.43       0.00

   17   5.2  0.5 -0.5       0.00       6.92       0.00       0.00       0.00       0.00   11285.52       0.00       0.00       0.00
                            0.11      -0.00       0.34      -0.00       0.00       0.00      -0.00      -0.11     122.00      -0.00

   18   6.2  0.5 -0.5       0.39       0.00       0.00       0.00       0.00       0.00       0.00   18946.12       0.00       0.00
                           -0.00       0.00       0.00       0.00    -125.61       0.00       0.11       0.00       0.00      -0.40

   19   7.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   18946.13       0.00
                            0.00      -0.40       0.00       0.00      -0.11     -78.43    -122.00      -0.00      -0.00      -0.00

   20   8.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   18950.25
                            0.40       0.00       0.00    -125.61      -0.00      -0.00       0.00       0.40       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -341.89485773    -0.00001508       -3.31      0.00000000        0.00      0.0000
     2  -341.89485773    -0.00001508       -3.31      0.00000000        0.00      0.0000
     3  -341.89485773    -0.00001508       -3.31      0.00000000        0.00      0.0000
     4  -341.89485773    -0.00001508       -3.31      0.00000000        0.00      0.0000
     5  -341.84347357     0.05136908    11274.21      0.05138416    11277.52      1.3982
     6  -341.84347357     0.05136908    11274.21      0.05138416    11277.52      1.3982
     7  -341.84347344     0.05136921    11274.24      0.05138429    11277.55      1.3982
     8  -341.84347344     0.05136921    11274.24      0.05138429    11277.55      1.3982
     9  -341.84341974     0.05142290    11286.02      0.05143798    11289.33      1.3997
    10  -341.84341974     0.05142290    11286.02      0.05143798    11289.33      1.3997
    11  -341.84341963     0.05142302    11286.05      0.05143810    11289.36      1.3997
    12  -341.84341963     0.05142302    11286.05      0.05143810    11289.36      1.3997
    13  -341.84341936     0.05142329    11286.11      0.05143837    11289.42      1.3997
    14  -341.84341936     0.05142329    11286.11      0.05143837    11289.42      1.3997
    15  -341.80850910     0.08633354    18948.02      0.08634862    18951.33      2.3497
    16  -341.80850910     0.08633354    18948.02      0.08634862    18951.33      2.3497
    17  -341.80845762     0.08638502    18959.32      0.08640010    18962.63      2.3511
    18  -341.80845762     0.08638502    18959.32      0.08640010    18962.63      2.3511
    19  -341.80844391     0.08639874    18962.33      0.08641382    18965.64      2.3514
    20  -341.80844391     0.08639874    18962.33      0.08641382    18965.64      2.3514


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.000316040   0.172065293  -0.000265643   0.984996743   0.000651448   0.000355069   0.000329055  -0.000016326
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.915703289   0.001741640  -0.169381410  -0.000056114   0.000155990  -0.000286076  -0.000034040  -0.000683508
                         0.362908615   0.000655272  -0.030273659  -0.000006191   0.000023417  -0.000042986   0.000014243   0.000286568

    3    1.2  1.5 -0.5  -0.001860547   0.984995012   0.000056328  -0.172065562   0.000289287   0.000157737  -0.000741150   0.000036900
                        -0.000032449  -0.000032078   0.000003777   0.000005594  -0.000000008   0.000000018  -0.000000005  -0.000000026

    4    1.2  1.5 -1.5   0.159963026   0.000293811   0.969636848   0.000261501   0.000351129  -0.000644219   0.000015056   0.000303464
                         0.063390014   0.000116431   0.173271367   0.000046729   0.000052751  -0.000096783  -0.000006312  -0.000127228

    5    1.2  0.5  0.5  -0.000013234  -0.000000024  -0.000036039  -0.000000010   0.041173983  -0.075542171  -0.004951371  -0.099798152
                         0.000033395   0.000000062   0.000201674   0.000000055  -0.274060140   0.502818663  -0.011809546  -0.238037456

    6    2.2  0.5  0.5  -0.000000010  -0.000000006  -0.000000004   0.000000001   0.000013907  -0.000027770   0.000003145   0.000014974
                         0.000000367  -0.000195330   0.000000017  -0.000071492   0.449358077   0.244960899  -0.373473229   0.018617251

    7    3.2  0.5  0.5  -0.000000178   0.000159605  -0.000000083  -0.000133379   0.058869750   0.031951941   0.629477073  -0.030812266
                         0.000000044  -0.000000006  -0.000000021   0.000000001   0.000011281  -0.000022881  -0.000007217  -0.000193731

    8    4.2  0.5  0.5   0.000131000   0.000000247   0.000150606   0.000000040  -0.294705711   0.540647884   0.004459184   0.088829981
                         0.000051916   0.000000089   0.000026913   0.000000005  -0.044255192   0.081235547  -0.001869189  -0.037244837

    9    5.2  0.5  0.5   0.000142235   0.000000132  -0.000138708   0.000000077   0.045314228  -0.083337112   0.027914582   0.571958973
                         0.000056371   0.000000102  -0.000024788  -0.000000006   0.006827219  -0.012510586  -0.011913296  -0.239787336

   10    6.2  0.5  0.5  -0.000000300  -0.000000173   0.000000031   0.000000030   0.000000175  -0.000000382   0.000000106   0.000000817
                         0.000007402  -0.003707094  -0.000002845   0.010134967  -0.015428507  -0.008407666  -0.024103248   0.001199021

   11    7.2  0.5  0.5   0.003916875   0.000007072  -0.000326743  -0.000000067  -0.000861013   0.001580574  -0.000523665  -0.010535980
                        -0.009883192  -0.000018916   0.001828131   0.000000930   0.005735137  -0.010519079  -0.001252295  -0.025129886

   12    8.2  0.5  0.5   0.000012993  -0.006922907   0.000002179  -0.008277128   0.026051632   0.014200493  -0.003144558   0.000158377
                         0.000000175   0.000000173  -0.000000020  -0.000000030  -0.000000148   0.000000332  -0.000000089  -0.000000479

   13    1.2  0.5 -0.5   0.000000000   0.000000001   0.000000000   0.000000001  -0.000002041  -0.000001012   0.000000297  -0.000000173
                        -0.000000066   0.000035922  -0.000000055   0.000204869  -0.508461629  -0.277135810  -0.258111413   0.012805524

   14    2.2  0.5 -0.5  -0.000071966  -0.000000126  -0.000012575   0.000000001   0.036365419  -0.066773122   0.007184486   0.144405023
                         0.000181589   0.000000344   0.000070378   0.000000017  -0.242246566   0.444369252   0.017175139   0.344426251

   15    3.2  0.5 -0.5   0.000148377   0.000000149  -0.000131299   0.000000085   0.031593955  -0.058218118   0.028341029   0.580524169
                         0.000058805   0.000000106  -0.000023464  -0.000000006   0.004769602  -0.008734892  -0.012092119  -0.243378461

   16    4.2  0.5 -0.5   0.000000262  -0.000140912   0.000000040  -0.000152991   0.546716882   0.298010029  -0.096322081   0.004835100
                         0.000000009   0.000000004   0.000000002   0.000000000  -0.000012095   0.000019204  -0.000002428  -0.000000309

   17    5.2  0.5 -0.5   0.000000160  -0.000152998   0.000000075   0.000140905  -0.084270926  -0.045825646  -0.620189515   0.030349844
                        -0.000000046   0.000000006   0.000000020  -0.000000001  -0.000009318   0.000019296   0.000007350   0.000193699

   18    6.2  0.5 -0.5  -0.001365879  -0.000002448   0.001782878   0.000000470  -0.001249471   0.002291979   0.000462844   0.009319534
                         0.003446291   0.000006993  -0.009976918  -0.000002806   0.008314305  -0.015257315   0.001106087   0.022228649

   19    7.2  0.5 -0.5  -0.000000394  -0.000000346   0.000000098   0.000000060   0.000000255  -0.000000589   0.000000193   0.000001257
                         0.000020191  -0.010631059  -0.000000927   0.001857101   0.010637163   0.005799409  -0.027249184   0.001357375

   20    8.2  0.5 -0.5  -0.006435919  -0.000012143  -0.008148061  -0.000002141   0.014042952  -0.025762501  -0.000146245  -0.002899965
                        -0.002550606  -0.000004624  -0.001456005  -0.000000403   0.002109384  -0.003870535   0.000060794   0.001215914


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000000147   0.000000831  -0.000000226   0.000001739  -0.000002166  -0.000000181  -0.000001297  -0.001571605
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.000000708   0.000000125   0.000000243   0.000000032   0.000000217  -0.000002587   0.000737829  -0.000000609
                         0.000001145  -0.000000203  -0.000000931  -0.000000121   0.000000138  -0.000001646  -0.000520708   0.000000430

    3    1.2  1.5 -0.5  -0.000000239  -0.000001346  -0.000000125   0.000000962   0.000003067   0.000000257  -0.000000746  -0.000903067
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    4    1.2  1.5 -1.5   0.000000437  -0.000000077   0.000000439   0.000000057  -0.000000153   0.000001827   0.001284043  -0.000001059
                        -0.000000707   0.000000125  -0.000001683  -0.000000219  -0.000000097   0.000001163  -0.000906187   0.000000748

    5    1.2  0.5  0.5   0.514916624  -0.091246940   0.407471343   0.052967430   0.008860119  -0.105863195   0.001590461  -0.000001312
                         0.318133074  -0.056420424   0.106268999   0.013828380  -0.013938983   0.166381243   0.002253662  -0.000001863

    6    2.2  0.5  0.5   0.000069405  -0.000016164  -0.000004558  -0.000001557  -0.000002433   0.000021990  -0.000000071  -0.000000000
                         0.104203529   0.587978554   0.060065256  -0.461935099  -0.154822216  -0.012998576   0.000002326   0.002751115

    7    3.2  0.5  0.5   0.088251817   0.496607845  -0.002344029   0.018181150   0.583687298   0.048505720  -0.000000098   0.000007372
                        -0.000411401   0.000074522  -0.000001017  -0.000002584   0.000017638  -0.000224662   0.000000074  -0.000000000

    8    4.2  0.5  0.5  -0.005390671   0.000951269  -0.194226213  -0.025258359   0.000065166  -0.000544065   0.002594513  -0.000002142
                         0.008721014  -0.001553981   0.744720250   0.096828781   0.000021381  -0.000346355  -0.001831011   0.000001589

    9    5.2  0.5  0.5   0.054385349  -0.009740387  -0.000464183  -0.000058228  -0.053677122   0.647841080  -0.000129272   0.000000099
                        -0.088053406   0.015601133   0.001778026   0.000231551  -0.034503154   0.412170662   0.000091230  -0.000000075

   10    6.2  0.5  0.5  -0.000000002   0.000000001  -0.000000001  -0.000000000   0.000000001  -0.000000009  -0.000011641   0.000000008
                        -0.000008738  -0.000049308   0.000004795  -0.000036889   0.000123308   0.000010337   0.000501743   0.628106699

   11    7.2  0.5  0.5  -0.000038351   0.000006795   0.000035370   0.000004598  -0.000005081   0.000060689   0.361923088  -0.000298610
                        -0.000023695   0.000004201   0.000009225   0.000001199   0.000008011  -0.000095379   0.512835635  -0.000402982

   12    8.2  0.5  0.5   0.000000783   0.000004416  -0.000009798   0.000075367  -0.000011484  -0.000000952   0.000379326   0.459852199
                         0.000000001   0.000000000   0.000000001  -0.000000000  -0.000000001   0.000000005   0.000000057   0.000000001

   13    1.2  0.5 -0.5   0.000036990  -0.000007047  -0.000014006   0.000000455  -0.000000619   0.000007390  -0.000000002  -0.000000012
                         0.107281251   0.605266704  -0.054742785   0.421100933  -0.197204803  -0.016516564  -0.000002279  -0.002758362

   14    2.2  0.5 -0.5  -0.500214029   0.088611620   0.446983580   0.058122316  -0.006959289   0.083113079   0.001586292  -0.000001399
                        -0.309038356   0.054830295   0.116574929   0.015153590   0.010978696  -0.130622107   0.002247734  -0.000001859

   15    3.2  0.5 -0.5   0.260962620  -0.046736730   0.004590675   0.000590553   0.040803645  -0.492466097  -0.000006023  -0.000000123
                        -0.422513749   0.074861409  -0.017592042  -0.002268418   0.026228188  -0.313317738   0.000004250  -0.000000004

   16    4.2  0.5 -0.5   0.001822008   0.010252581  -0.100068963   0.769631128  -0.000644956  -0.000066458   0.000002666   0.003175547
                         0.000007536  -0.000002034   0.000005237  -0.000003065   0.000000157  -0.000016943   0.000000064  -0.000000010

   17    5.2  0.5 -0.5  -0.018391929  -0.103494774  -0.000238751   0.001837618   0.767842900   0.063809197  -0.000000125  -0.000158221
                         0.000086113  -0.000015711  -0.000002091  -0.000000459   0.000023244  -0.000295559  -0.000000004   0.000000001

   18    6.2  0.5 -0.5   0.000041947  -0.000007433   0.000035695   0.000004640   0.000005541  -0.000066195   0.362166107  -0.000298816
                         0.000025916  -0.000004595   0.000009310   0.000001209  -0.000008727   0.000104034   0.513180023  -0.000403226

   19    7.2  0.5 -0.5  -0.000000002   0.000000001  -0.000000000   0.000000000   0.000000002  -0.000000014   0.000011613   0.000000013
                        -0.000007988  -0.000045081  -0.000004752   0.000036553   0.000113050   0.000009487  -0.000501426  -0.627685200

   20    8.2  0.5 -0.5   0.000002321  -0.000000411   0.000019020   0.000002474  -0.000000800   0.000009690  -0.375711579   0.000309887
                        -0.000003757   0.000000667  -0.000072928  -0.000009480  -0.000000515   0.000006164   0.265150626  -0.000218766


   Nr   State  S   Sz       17            18            19            20

    1    1.2  1.5  1.5  -0.000008162  -0.006598339  -0.000042725   0.011318684
                        -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.007536154  -0.000009318   0.006518557   0.000024608
                        -0.008591478   0.000010627  -0.000476426  -0.000001798

    3    1.2  1.5 -0.5   0.000014134   0.011428347  -0.000024673   0.006535944
                         0.000000003   0.000000000   0.000000000   0.000000000

    4    1.2  1.5 -1.5  -0.004351119   0.000005382   0.011288573   0.000042611
                         0.004960427  -0.000006136  -0.000825055  -0.000003114

    5    1.2  0.5  0.5  -0.008694197   0.000010754   0.001445475   0.000005456
                        -0.007626253   0.000009447   0.019778432   0.000074682

    6    2.2  0.5  0.5  -0.000000027   0.000000000  -0.000000648  -0.000000002
                        -0.000014286  -0.011564119   0.000074940  -0.019833337

    7    3.2  0.5  0.5   0.000041910   0.023127590  -0.000000879   0.000001245
                        -0.000015164   0.000000019   0.000000064   0.000000000

    8    4.2  0.5  0.5   0.000727916  -0.000000978   0.022814290   0.000086119
                        -0.000829914   0.000000697  -0.001667368  -0.000006859

    9    5.2  0.5  0.5   0.015233754  -0.000039034  -0.001088683  -0.000004108
                        -0.017367038   0.000021482   0.000079568   0.000000300

   10    6.2  0.5  0.5  -0.000017081   0.000000023  -0.000000765  -0.000000003
                         0.000858809   0.706405103   0.001215437  -0.324751794

   11    7.2  0.5  0.5   0.531303958  -0.000657208   0.023678770   0.000089378
                         0.466041852  -0.000553630   0.323977784   0.001212674

   12    8.2  0.5  0.5  -0.000000303  -0.000193790  -0.003349807   0.887422027
                         0.000000075  -0.000000001   0.000000007  -0.000000002

   13    1.2  0.5 -0.5  -0.000000011   0.000000002  -0.000000002   0.000000083
                        -0.000014315  -0.011564982  -0.000074881   0.019831181

   14    2.2  0.5 -0.5   0.008693548  -0.000010722   0.001445713   0.000006109
                         0.007625685  -0.000009441   0.019780575   0.000074693

   15    3.2  0.5 -0.5   0.015250930  -0.000039036   0.000001241   0.000000881
                        -0.017386621   0.000021507  -0.000000091  -0.000000000

   16    4.2  0.5 -0.5  -0.000001169  -0.001103910   0.000086390  -0.022875138
                         0.000000275  -0.000000042   0.000000563   0.000000074

   17    5.2  0.5 -0.5  -0.000041890  -0.023101543  -0.000004119   0.001091587
                         0.000015179  -0.000000018  -0.000000000  -0.000000002

   18    6.2  0.5 -0.5  -0.531053520   0.000656890   0.023672189   0.000089360
                        -0.465822206   0.000553480   0.323887874   0.001212147

   19    7.2  0.5 -0.5  -0.000017179   0.000000000   0.000000744  -0.000000006
                         0.000859146   0.706738215  -0.001215963   0.324841944

   20    8.2  0.5 -0.5  -0.000127789   0.000000256   0.885061266   0.003340896
                         0.000145686  -0.000000178  -0.064687014  -0.000244172


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%   2.961%   0.000%  97.022%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5  97.022%   0.000%   2.961%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%  97.022%   0.000%   2.961%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   2.961%   0.000%  97.022%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   7.680%  25.853%   0.016%   6.662%  36.635%   1.151%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  20.192%   6.001%  13.948%   0.035%   1.086%  34.572%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.347%   0.102%  39.624%   0.095%   0.779%  24.662%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   8.881%  29.890%   0.002%   0.928%   0.011%   0.000%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.210%   0.710%   0.092%  38.464%   1.071%   0.034%
   10    6.2  0.5  0.5   0.000%   0.001%   0.000%   0.010%   0.024%   0.007%   0.058%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.011%   0.000%   0.000%   0.000%   0.003%   0.011%   0.000%   0.074%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.005%   0.000%   0.007%   0.068%   0.020%   0.001%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  25.853%   7.680%   6.662%   0.016%   1.151%  36.635%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   6.001%  20.192%   0.035%  13.948%  34.572%   1.086%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.102%   0.347%   0.095%  39.624%  24.662%   0.779%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  29.890%   8.881%   0.928%   0.002%   0.000%   0.011%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.710%   0.210%  38.464%   0.092%   0.034%   1.071%
   18    6.2  0.5 -0.5   0.001%   0.000%   0.010%   0.000%   0.007%   0.024%   0.000%   0.058%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.011%   0.000%   0.000%   0.011%   0.003%   0.074%   0.000%   0.000%   0.000%
   20    8.2  0.5 -0.5   0.005%   0.000%   0.007%   0.000%   0.020%   0.068%   0.000%   0.001%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.013%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.004%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.004%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.013%   0.000%
    5    1.2  0.5  0.5  17.733%   0.300%   0.027%   3.889%   0.001%   0.000%   0.013%   0.000%   0.039%   0.000%
    6    2.2  0.5  0.5   0.361%  21.338%   2.397%   0.017%   0.000%   0.001%   0.000%   0.013%   0.000%   0.039%
    7    3.2  0.5  0.5   0.001%   0.033%  34.069%   0.235%   0.000%   0.000%   0.000%   0.053%   0.000%   0.000%
    8    4.2  0.5  0.5  59.233%   1.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.052%   0.000%
    9    5.2  0.5  0.5   0.000%   0.000%   0.407%  58.958%   0.000%   0.000%   0.053%   0.000%   0.000%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  39.452%   0.000%  49.901%   0.000%  10.546%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  39.399%   0.000%  49.948%   0.000%  10.552%   0.000%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  21.146%   0.000%   0.000%   0.001%  78.752%
   13    1.2  0.5 -0.5   0.300%  17.733%   3.889%   0.027%   0.000%   0.001%   0.000%   0.013%   0.000%   0.039%
   14    2.2  0.5 -0.5  21.338%   0.361%   0.017%   2.397%   0.001%   0.000%   0.013%   0.000%   0.039%   0.000%
   15    3.2  0.5 -0.5   0.033%   0.001%   0.235%  34.069%   0.000%   0.000%   0.053%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   1.001%  59.233%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.052%
   17    5.2  0.5 -0.5   0.000%   0.000%  58.958%   0.407%   0.000%   0.000%   0.000%   0.053%   0.000%   0.000%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  39.452%   0.000%  49.901%   0.000%  10.546%   0.000%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  39.399%   0.000%  49.948%   0.000%  10.552%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  21.146%   0.000%   0.000%   0.000%  78.752%   0.001%


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
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       37.85       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       292.06    132.87      1.56    155.52      0.37      1.00      0.05      0.41
 REAL TIME  *       318.87 SEC
 DISK USED  *        68.35 MB (local),        1.04 GB (total)
 SF USED    *       364.30 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -341.808443907967

              CI              CI           MULTI         RHF-SCF
   -341.78717684   -341.87531044   -341.43740954   -341.53147429
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
