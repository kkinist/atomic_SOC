
 Working directory              : /wrk/irikura/molpro.VCjzU5uXkb/
 Global scratch directory       : /wrk/irikura/molpro.VCjzU5uXkb/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.VCjzU5uXkb/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    7
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.04 sec
 ***,Pb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Pb};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,charge=-1,sym=2,spin=3}
 
 NTRIP=3
 NSING=5
 
                                                                                 ! add 7p to active space
 {multi
     closed,6,3
     occ,7,6
     wf,charge=0,sym=1,spin=2;state,NTRIP;
     wf,charge=0,sym=1,spin=0;state,NSING;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5101.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.23 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 29-Jul-24          TIME: 12:09:14  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  10500 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Pb   ECP ECP60MDF                 selected for group  1
 Library entry PB     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry PB     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry PB     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry PB     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry PB     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  PB     22.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   22
 NUMBER OF PRIMITIVE AOS:         178
 NUMBER OF SYMMETRY AOS:          149
 NUMBER OF CONTRACTIONS:           96   (   47Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.301E-04 0.206E-02 0.100E-01 0.101E-01 0.101E-01 0.101E-01 0.101E-01 0.101E-01
         2 0.739E-02 0.739E-02 0.739E-02 0.116E-01 0.116E-01 0.116E-01 0.618E-01 0.618E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     16.515 MB (compressed) written to integral file ( 18.6%)

     Node minimum: 0.786 MB, node maximum: 4.981 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     791287.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     791287      RECORD LENGTH: 524288

 Memory used in sort:       1.35 MW

 SORT1 READ    11031004. AND WROTE      161085. INTEGRALS IN      1 RECORDS. CPU TIME:     0.27 SEC, REAL TIME:     0.31 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     28 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.09 SEC

 Node minimum:      789607.  Node maximum:      791287. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.55      4.14
 REAL TIME  *         5.88 SEC
 DISK USED  *        29.19 MB (local),      240.24 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -191.86175732    -191.86175732     0.00D+00     0.13D+00     0     0       0.01      0.03    start
   2     -191.86393108      -0.00217375     0.13D-02     0.34D-02     1     0       0.02      0.05    diag2
   3     -191.86416655      -0.00023547     0.72D-03     0.84D-03     2     0       0.02      0.07    diag2
   4     -191.86422241      -0.00005586     0.17D-03     0.65D-03     3     0       0.01      0.08    diag2
   5     -191.86422657      -0.00000416     0.45D-04     0.24D-03     4     0       0.02      0.10    diag2
   6     -191.86422675      -0.00000018     0.75D-05     0.57D-04     5     0       0.01      0.11    diag2
   7     -191.86422677      -0.00000002     0.19D-05     0.11D-04     6     0       0.02      0.13    diag2
   8     -191.86422677      -0.00000000     0.42D-06     0.44D-05     7     0       0.01      0.14    fixocc
   9     -191.86422677      -0.00000000     0.85D-07     0.13D-05     8     0       0.02      0.16    diag2
  10     -191.86422677      -0.00000000     0.71D-08     0.57D-07     0     0       0.01      0.17    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864226771912
  RHF One-electron energy            -340.689562375596
  RHF Two-electron energy             148.825335603683
  RHF Kinetic energy                   62.713168144683
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059392986323

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94907     1  1  s    1.00046
    2.1     2.00000    -0.84924     1  1  d0   0.99980
    3.1     2.00000    -0.84924     1  1  d1+  0.97859
    4.1     2.00000    -0.84924     1  1  d1-  0.97842
    5.1     2.00000    -0.84924     1  1  d2-  0.99929
    6.1     2.00000    -0.84924     1  1  d2+  0.99921
    7.1     2.00000    -0.35245     1  2  s    0.96592
    1.2     2.00000    -3.63153     1  1  pz   1.00042
    2.2     2.00000    -3.63153     1  1  py   1.00043
    3.2     2.00000    -3.63153     1  1  px   1.00062
    4.2     1.00000    -0.05143     1  2  px   0.79367
    5.2     1.00000    -0.05143     1  2  py   0.79367
    6.2     1.00000    -0.05143     1  2  pz   0.79386


 HOMO      6.2    -0.051433 =      -1.3996eV
 LUMO      8.1     0.166886 =       4.5412eV
 LUMO-HOMO         0.218319 =       5.9408eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.53       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.83      0.26      4.14
 REAL TIME  *         6.65 SEC
 DISK USED  *        30.07 MB (local),      246.45 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         5.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      83 (   40   43)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             5
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.342D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.184D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.194D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.475D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.480D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 3   5 4 6 1 3 5 4 6 2 1   3 5 2 6 4 8121415 7  11 91310 5 3 6 4 2 1
                                        5 6 3 4 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.211D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.193D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.193D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.237D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.217D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.273D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 3   1 2 810 6 5 4 7 9 6   5 4 810 9 7 3 2 1 6   810 4 5 9 7 3 1 2 9
                                        7 4 5 6 810 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    661
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9   14    0   -191.79835045    -191.81726575   -0.01891531    0.11189543 0.00055433 0.00000000  0.38E+00      0.69
   2    8   14    0   -191.81305606    -191.81533169   -0.00227564    0.11639120 0.00000444 0.00000000  0.36E-01      1.83
   3    7   12    0   -191.81534630    -191.81534657   -0.00000027    0.00096590 0.00000002 0.00000000  0.70E-03      2.57
   4    3    6    0   -191.81534657    -191.81534657   -0.00000000    0.00000013 0.00000000 0.00000000  0.15E-06      3.00

 CONVERGENCE REACHED!  Final gradient:    0.00000004 ( 0.44E-07)
                       Final energy:   -191.81534657
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.836654789448
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65688915
 One electron energy                          -335.75308446
 Two electron energy                           143.91642967
 Virial ratio                                    4.06170091
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.836654789428
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65688916
 One electron energy                          -335.75308447
 Two electron energy                           143.91642968
 Virial ratio                                    4.06170091
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.836654789401
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65688916
 One electron energy                          -335.75308447
 Two electron energy                           143.91642968
 Virial ratio                                    4.06170091
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.802561633988
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65688915
 One electron energy                          -335.75308446
 Two electron energy                           143.95052283
 Virial ratio                                    4.06115679
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.802561633986
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65688915
 One electron energy                          -335.75308446
 Two electron energy                           143.95052283
 Virial ratio                                    4.06115679
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.802561633981
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65688916
 One electron energy                          -335.75308447
 Two electron energy                           143.95052283
 Virial ratio                                    4.06115679
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.802561633973
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65688916
 One electron energy                          -335.75308447
 Two electron energy                           143.95052284
 Virial ratio                                    4.06115679
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.802561633972
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65688916
 One electron energy                          -335.75308447
 Two electron energy                           143.95052284
 Virial ratio                                    4.06115679
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.145819490157
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.854191236427
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.576329022779
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.423688590183
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     2.277851487064
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.722120173390
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 3 5   6 4 2 1 3 5 6 4 2 1   3 5 6 4 213101415 8  1211 9 7 5 3 6 4 2 1
                                        5 3 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 2 1 3 2   1 3 9 7 810 5 4 6 9   7 810 5 4 6 2 1 3 9   7 810 5 4 6 2 1 3 9
                                        7 810 5 4 6 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.17616     1  1  s    0.99987
    2.1     2.00000    -1.07668     1  1  d2-  1.00002
    3.1     2.00000    -1.07668     1  1  d2+  1.00002
    4.1     2.00000    -1.07668     1  1  d1-  1.00002
    5.1     2.00000    -1.07668     1  1  d1+  1.00002
    6.1     2.00000    -1.07668     1  1  d0   1.00002
    7.1     1.98529    -0.56299     1  2  s    0.99632
    1.2     2.00000    -3.85873     1  1  py   1.00004
    2.2     2.00000    -3.85873     1  1  px   1.00004
    3.2     2.00000    -3.85873     1  1  pz   1.00004
    4.2     0.67157    -0.06329     1  2  pz   0.97373
    5.2     0.67157    -0.06329     1  2  px   0.97373
    6.2     0.67157    -0.06329     1  2  py   0.97373
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa0          0.99631600      0.00000000     -0.00000000
 2 0aa         -0.00000000      0.99631600      0.00000000
 2 a0a          0.00000000     -0.00000000      0.99631600
 0 a2a          0.00000000     -0.00000000     -0.08575796
 0 2aa          0.00000000     -0.08575796     -0.00000000
 0 aa2         -0.08575796     -0.00000000     -0.00000000
 
 Energy:     -191.83665479   -191.83665479   -191.83665479
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.79852314      0.00000000      0.00000000      0.00000000     -0.15532067
 2 002         -0.26474992     -0.00000000     -0.00000000     -0.00000000      0.76920166
 2 ab0         -0.00000000      0.70450180      0.00000000      0.00000000      0.00000000
 2 ba0          0.00000000     -0.70450180     -0.00000000     -0.00000000     -0.00000000
 2 0ba          0.00000000      0.00000000     -0.70450180     -0.00000000     -0.00000000
 2 0ab         -0.00000000     -0.00000000      0.70450180      0.00000000      0.00000000
 2 a0b         -0.00000000     -0.00000000     -0.00000000      0.70450180     -0.00000000
 2 b0a          0.00000000      0.00000000      0.00000000     -0.70450180      0.00000000
 2 200         -0.53377322      0.00000000      0.00000000     -0.00000000     -0.61388099
 0 202          0.06873293      0.00000000      0.00000000      0.00000000     -0.01336924
 0 220         -0.02278836     -0.00000000     -0.00000000      0.00000000      0.06620908
 0 a2b          0.00000000      0.00000000      0.00000000     -0.06064003      0.00000000
 0 b2a         -0.00000000     -0.00000000     -0.00000000      0.06064003     -0.00000000
 0 2ab          0.00000000      0.00000000     -0.06064003      0.00000000      0.00000000
 0 2ba         -0.00000000     -0.00000000      0.06064003     -0.00000000     -0.00000000
 0 ba2          0.00000000      0.06064003      0.00000000      0.00000000      0.00000000
 0 ab2         -0.00000000     -0.06064003     -0.00000000     -0.00000000     -0.00000000
 0 022         -0.04594456     -0.00000000     -0.00000000     -0.00000000     -0.05283984
 
 Energy:     -191.80256163   -191.80256163   -191.80256163   -191.80256163   -191.80256163
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         7.91      3.07      0.26      4.14
 REAL TIME  *        10.47 SEC
 DISK USED  *        34.77 MB (local),      279.35 MB (total)
 SF USED    *        12.54 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8366548   2.0
    -191.8366548   2.0
    -191.8366548   2.0
    -191.8025616   6.0
    -191.8025616   6.0
    -191.8025616   6.0
    -191.8025616   6.0
    -191.8025616   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.83665479
     2      -191.83665479
     3      -191.83665479

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.74D-02
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        122064
 Number of doubly external configurations:        822378
 Total number of contracted configurations:       944979
 Total number of uncontracted configurations:    4744665

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.12 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    456247 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.83665479     0.00000000    -0.76594090  0.41D-01  0.11D+00     0.36
    1     2     2     1.00000000     0.00000000  -191.83665479     0.00000000    -0.76573720  0.41D-01  0.11D+00     0.36
    1     3     3     1.00000000     0.00000000  -191.83665479     0.00000000    -0.76583310  0.41D-01  0.11D+00     0.36
    2     1     1     1.09318161    -0.59495430  -192.43160909    -0.59495430    -0.01699652  0.25D-02  0.15D-02    10.26
    2     2     2     1.09324733    -0.59490377  -192.43155856    -0.59490377    -0.01705325  0.26D-02  0.15D-02    10.26
    2     3     3     1.09332283    -0.59484774  -192.43150253    -0.59484774    -0.01711500  0.26D-02  0.15D-02    10.26
    3     1     1     1.08645209    -0.61086023  -192.44751502    -0.01590593    -0.00031358  0.41D-04  0.38D-04    21.48
    3     2     2     1.08645012    -0.61085775  -192.44751254    -0.01595399    -0.00031615  0.41D-04  0.39D-04    21.48
    3     3     3     1.08644862    -0.61085539  -192.44751018    -0.01600765    -0.00031848  0.42D-04  0.39D-04    21.48
    4     1     1     1.08682990    -0.61118267  -192.44783746    -0.00032244    -0.00001250  0.26D-05  0.15D-05    32.10
    4     2     2     1.08682818    -0.61118254  -192.44783733    -0.00032478    -0.00001263  0.26D-05  0.15D-05    32.10
    4     3     3     1.08682703    -0.61118244  -192.44783723    -0.00032705    -0.00001272  0.26D-05  0.15D-05    32.10
    5     1     1     1.08697212    -0.61119627  -192.44785106    -0.00001360    -0.00000046  0.54D-07  0.74D-07    41.54
    5     2     2     1.08697179    -0.61119627  -192.44785106    -0.00001373    -0.00000046  0.55D-07  0.75D-07    41.54
    5     3     3     1.08697141    -0.61119626  -192.44785105    -0.00001382    -0.00000047  0.56D-07  0.76D-07    41.54
    6     1     1     1.08698143    -0.61119676  -192.44785155    -0.00000049    -0.00000002  0.22D-08  0.49D-08    49.07
    6     2     2     1.08698132    -0.61119676  -192.44785155    -0.00000050    -0.00000002  0.22D-08  0.49D-08    49.07
    6     3     3     1.08698124    -0.61119676  -192.44785155    -0.00000050    -0.00000002  0.22D-08  0.50D-08    49.07


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.5%   4.7%
 P   0.5%  29.4%  21.5%

 Initialization:   0.5%
 Other:           42.4%

 Total CPU:       49.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0          -0.0000000   0.0000000   0.9561661
 2222222222/0/          -0.0000000   0.9561661  -0.0000000
 22222222220//           0.9561660   0.0000000   0.0000000
 2222220222//2           0.0000000  -0.0000000  -0.0711946
 2222220222/2/           0.0000000  -0.0711945   0.0000000
 22222202222//          -0.0711945  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.958749   -0.000000
 2           0.000000    0.000000    0.958749
 3           0.958749    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958749    0.000000    0.000000
 2           0.000000    0.958749   -0.000000
 3           0.000000   -0.000000    0.958749


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95874901 (fixed)   0.95881288 (relaxed)   0.95874901 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084775   -0.00142821   -0.51580981
 Singles      0.01676401   -0.05056391   -0.05590133
 Pairs        0.07029116    0.00000000   -0.03948562
 Total        1.08790292   -0.05199212   -0.61119676
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83665479
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86699280
 One electron energy                 -335.32070987
 Two electron energy                  142.87285832
 Virial quotient                       -3.06119067
 Correlation energy                    -0.61119676
 !MRCI STATE 1.1 Energy              -192.447851553638

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50157753 (Davidson, fixed reference)
 Cluster corrected energies          -192.50148895 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50157753 (Davidson, rotated reference)

 Cluster corrected energies          -192.49982068 (Pople, fixed reference)
 Cluster corrected energies          -192.49972868 (Pople, relaxed reference)
 Cluster corrected energies          -192.49982068 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95874906 (fixed)   0.95881293 (relaxed)   0.95874906 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084775   -0.00142821   -0.00178909
 Singles      0.01676392   -0.05056386   -0.05590128
 Pairs        0.07029114   -0.55920470   -0.55350640
 Total        1.08790281   -0.61119676   -0.61119676
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83665479
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86698736
 One electron energy                 -335.32070265
 Two electron energy                  142.87285109
 Virial quotient                       -3.06119093
 Correlation energy                    -0.61119676
 !MRCI STATE 2.1 Energy              -192.447851553229

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50157746 (Davidson, fixed reference)
 Cluster corrected energies          -192.50148889 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50157746 (Davidson, rotated reference)

 Cluster corrected energies          -192.49982061 (Pople, fixed reference)
 Cluster corrected energies          -192.49972861 (Pople, relaxed reference)
 Cluster corrected energies          -192.49982061 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95874910 (fixed)   0.95881296 (relaxed)   0.95874910 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084775   -0.00142821   -0.51581001
 Singles      0.01676383   -0.05056379   -0.05590122
 Pairs        0.07029114    0.00000000   -0.03948553
 Total        1.08790272   -0.05199200   -0.61119676
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83665479
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86698605
 One electron energy                 -335.32070081
 Two electron energy                  142.87284926
 Virial quotient                       -3.06119099
 Correlation energy                    -0.61119676
 !MRCI STATE 3.1 Energy              -192.447851552985

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50157741 (Davidson, fixed reference)
 Cluster corrected energies          -192.50148883 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50157741 (Davidson, rotated reference)

 Cluster corrected energies          -192.49982056 (Pople, fixed reference)
 Cluster corrected energies          -192.49972855 (Pople, relaxed reference)
 Cluster corrected energies          -192.49982056 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       22.95       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        58.82     50.88      3.07      0.26      4.14
 REAL TIME  *        65.27 SEC
 DISK USED  *        56.93 MB (local),      434.48 MB (total)
 SF USED    *       237.76 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.50157753  AU                              
 SETTING HLSDIAG(2)     =      -192.50157746  AU                              
 SETTING HLSDIAG(3)     =      -192.50157741  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      613 conf      866 CSFs
 N-1 el internal:      907 conf     2099 CSFs
 N-2 el internal:      694 conf     2086 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.80256163
     2      -191.80256163
     3      -191.80256163
     4      -191.80256163
     5      -191.80256163

 Number of blocks in overlap matrix:   580   Smallest eigenvalue:  0.22D-01
 Number of N-2 electron functions:     654
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:         87134
 Number of doubly external configurations:       1128411
 Total number of contracted configurations:      1215995
 Total number of uncontracted configurations:    3677611

 Diagonal Coupling coefficients finished.               Storage:    643996 words, CPU-Time:      0.22 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    482922 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.80256163     0.00000000    -0.77485310  0.46D-01  0.12D+00     0.49
    1     2     2     1.00000000     0.00000000  -191.80256163     0.00000000    -0.77568361  0.47D-01  0.12D+00     0.49
    1     3     3     1.00000000     0.00000000  -191.80256163     0.00000000    -0.77541835  0.47D-01  0.12D+00     0.49
    1     4     4     1.00000000     0.00000000  -191.80256163     0.00000000    -0.77542061  0.47D-01  0.12D+00     0.49
    1     5     5     1.00000000     0.00000000  -191.80256163    -0.00000000    -0.77444233  0.46D-01  0.12D+00     0.49
    2     1     1     1.09839996    -0.60005905  -192.40262068    -0.60005905    -0.01786746  0.28D-02  0.17D-02    18.76
    2     2     2     1.09846193    -0.59998728  -192.40254891    -0.59998728    -0.01796030  0.28D-02  0.17D-02    18.76
    2     3     3     1.09872067    -0.59980058  -192.40236222    -0.59980058    -0.01818183  0.29D-02  0.17D-02    18.76
    2     4     4     1.09883418    -0.59975166  -192.40231329    -0.59975166    -0.01823430  0.29D-02  0.17D-02    18.76
    2     5     5     1.09884221    -0.59972500  -192.40228664    -0.59972500    -0.01827137  0.29D-02  0.18D-02    18.76
    3     1     1     1.09054267    -0.61673874  -192.41930037    -0.01667969    -0.00034876  0.53D-04  0.42D-04    38.27
    3     2     2     1.09053376    -0.61673499  -192.41929662    -0.01674771    -0.00035320  0.53D-04  0.44D-04    38.27
    3     3     3     1.09056616    -0.61673238  -192.41929402    -0.01693180    -0.00035635  0.54D-04  0.43D-04    38.27
    3     4     4     1.09056567    -0.61672817  -192.41928981    -0.01697651    -0.00036098  0.55D-04  0.45D-04    38.27
    3     5     5     1.09056524    -0.61672749  -192.41928912    -0.01700248    -0.00036165  0.55D-04  0.45D-04    38.27
    4     1     1     1.09072047    -0.61710168  -192.41966332    -0.00036295    -0.00001441  0.32D-05  0.16D-05    56.76
    4     2     2     1.09071878    -0.61710162  -192.41966325    -0.00036663    -0.00001442  0.33D-05  0.16D-05    56.76
    4     3     3     1.09072071    -0.61710141  -192.41966304    -0.00036902    -0.00001470  0.33D-05  0.17D-05    56.76
    4     4     4     1.09072115    -0.61710131  -192.41966294    -0.00037313    -0.00001479  0.33D-05  0.17D-05    56.76
    4     5     5     1.09071922    -0.61710121  -192.41966284    -0.00037372    -0.00001484  0.33D-05  0.17D-05    56.76
    5     1     1     1.09079743    -0.61711771  -192.41967935    -0.00001603    -0.00000047  0.74D-07  0.62D-07    76.37
    5     2     2     1.09079969    -0.61711770  -192.41967933    -0.00001608    -0.00000047  0.70D-07  0.64D-07    76.37
    5     3     3     1.09079611    -0.61711770  -192.41967933    -0.00001629    -0.00000048  0.76D-07  0.65D-07    76.37
    5     4     4     1.09079683    -0.61711769  -192.41967933    -0.00001639    -0.00000048  0.76D-07  0.65D-07    76.37
    5     5     5     1.09079884    -0.61711767  -192.41967931    -0.00001646    -0.00000050  0.76D-07  0.69D-07    76.37
    6     1     1     1.09079251    -0.61711820  -192.41967984    -0.00000049    -0.00000002  0.22D-08  0.23D-08    95.01
    6     2     2     1.09079228    -0.61711820  -192.41967984    -0.00000050    -0.00000002  0.21D-08  0.23D-08    95.01
    6     3     3     1.09079236    -0.61711820  -192.41967984    -0.00000051    -0.00000002  0.22D-08  0.23D-08    95.01
    6     4     4     1.09079251    -0.61711820  -192.41967984    -0.00000051    -0.00000002  0.25D-08  0.22D-08    95.01
    6     5     5     1.09079245    -0.61711820  -192.41967984    -0.00000053    -0.00000002  0.25D-08  0.23D-08    95.01


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.4%   3.1%
 P   0.7%  19.2%  26.2%

 Initialization:   0.3%
 Other:           49.6%

 Total CPU:       95.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0           0.0000000   0.9543469  -0.0000000   0.0000000   0.0000000
 2222222222/0\          -0.0000000   0.0000000   0.9543468  -0.0000000   0.0000000
 22222222220/\           0.9543467  -0.0000000   0.0000000  -0.0000000   0.0000000
 2222222222200          -0.0000000  -0.0000000  -0.0000000  -0.0445506   0.7779465
 2222222222002           0.0000000  -0.0000000   0.0000000   0.6959968  -0.3503908
 2222222222020           0.0000000   0.0000000   0.0000000  -0.6514456  -0.4275552
 22222202222/\          -0.0709604   0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220222/\2          -0.0000000  -0.0709601   0.0000000  -0.0000000  -0.0000000
 2222220222/2\           0.0000000  -0.0000000  -0.0709600   0.0000000  -0.0000000
 2222220222022          -0.0000000  -0.0000000  -0.0000000  -0.0033126   0.0578432
 2222220222220           0.0000000   0.0000000   0.0000000   0.0517504  -0.0260528

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.956916   -0.000000    0.000000
 2           0.000000    0.956916   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.000000    0.956916    0.000000
 4          -0.683660    0.000000   -0.000000   -0.000000    0.669550
 5          -0.669550    0.000000    0.000000    0.000000   -0.683660

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956916   -0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.956916    0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.956916    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.956916    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.956916


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95691633 (fixed)   0.95698121 (relaxed)   0.95691633 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00117482   -0.00205437   -0.51647257
 Singles      0.01904828   -0.05381694   -0.06004755
 Pairs        0.07185090   -0.00000000   -0.04059809
 Total        1.09207400   -0.05587131   -0.61711820
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80256163
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86614896
 One electron energy                 -335.28319239
 Two electron energy                  142.86351255
 Virial quotient                       -3.06078363
 Correlation energy                    -0.61711820
 !MRCI STATE 1.1 Energy              -192.419679837557

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47650038 (Davidson, fixed reference)
 Cluster corrected energies          -192.47640899 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47650038 (Davidson, rotated reference)

 Cluster corrected energies          -192.47549755 (Pople, fixed reference)
 Cluster corrected energies          -192.47540063 (Pople, relaxed reference)
 Cluster corrected energies          -192.47549755 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95691643 (fixed)   0.95698132 (relaxed)   0.95691643 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00117483   -0.00205437   -0.51647290
 Singles      0.01904802   -0.05381670   -0.06004740
 Pairs        0.07185092   -0.00000000   -0.04059790
 Total        1.09207377   -0.05587107   -0.61711820
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80256163
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86613694
 One electron energy                 -335.28317565
 Two electron energy                  142.86349581
 Virial quotient                       -3.06078422
 Correlation energy                    -0.61711820
 !MRCI STATE 2.1 Energy              -192.419679837218

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47650024 (Davidson, fixed reference)
 Cluster corrected energies          -192.47640885 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47650024 (Davidson, rotated reference)

 Cluster corrected energies          -192.47549740 (Pople, fixed reference)
 Cluster corrected energies          -192.47540048 (Pople, relaxed reference)
 Cluster corrected energies          -192.47549740 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95691639 (fixed)   0.95698128 (relaxed)   0.95691639 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00117483   -0.00205437   -0.51647299
 Singles      0.01904796   -0.05381656   -0.06004733
 Pairs        0.07185106   -0.00000000   -0.04059789
 Total        1.09207386   -0.05587093   -0.61711820
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80256163
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86613500
 One electron energy                 -335.28317302
 Two electron energy                  142.86349318
 Virial quotient                       -3.06078431
 Correlation energy                    -0.61711820
 !MRCI STATE 3.1 Energy              -192.419679837112

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47650029 (Davidson, fixed reference)
 Cluster corrected energies          -192.47640890 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47650029 (Davidson, rotated reference)

 Cluster corrected energies          -192.47549745 (Pople, fixed reference)
 Cluster corrected energies          -192.47540053 (Pople, relaxed reference)
 Cluster corrected energies          -192.47549745 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.68366012 (fixed)   0.95698122 (relaxed)   0.95691632 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00117484   -0.00205437   -0.15687974
 Singles      0.01904809   -0.05381654   -0.06004740
 Pairs        0.07185108   -0.39270238   -0.40019106
 Total        1.09207401   -0.44857330   -0.61711820
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80256163
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86610620
 One electron energy                 -335.28310525
 Two electron energy                  142.86342541
 Virial quotient                       -3.06078572
 Correlation energy                    -0.61711820
 !MRCI STATE 4.1 Energy              -192.419679837037

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47650039 (Davidson, fixed reference)
 Cluster corrected energies          -192.47640899 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47650039 (Davidson, rotated reference)

 Cluster corrected energies          -192.47549756 (Pople, fixed reference)
 Cluster corrected energies          -192.47540063 (Pople, relaxed reference)
 Cluster corrected energies          -192.47549756 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.68366008 (fixed)   0.95698124 (relaxed)   0.95691634 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00117486   -0.00205437   -0.88364471
 Singles      0.01904784   -0.05381613   -0.06004720
 Pairs        0.07185128    0.40097829    0.32657371
 Total        1.09207397    0.34510779   -0.61711820
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80256163
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86608788
 One electron energy                 -335.28307848
 Two electron energy                  142.86339864
 Virial quotient                       -3.06078661
 Correlation energy                    -0.61711820
 !MRCI STATE 5.1 Energy              -192.419679836098

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47650036 (Davidson, fixed reference)
 Cluster corrected energies          -192.47640896 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47650036 (Davidson, rotated reference)

 Cluster corrected energies          -192.47549753 (Pople, fixed reference)
 Cluster corrected energies          -192.47540059 (Pople, relaxed reference)
 Cluster corrected energies          -192.47549753 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       69.93       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       159.68    100.82     50.88      3.07      0.26      4.14
 REAL TIME  *       174.25 SEC
 DISK USED  *       103.91 MB (local),      763.33 MB (total)
 SF USED    *       493.90 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -192.47650038  AU                              
 SETTING HLSDIAG(5)     =      -192.47650024  AU                              
 SETTING HLSDIAG(6)     =      -192.47650029  AU                              
 SETTING HLSDIAG(7)     =      -192.47650039  AU                              
 SETTING HLSDIAG(8)     =      -192.47650036  AU                              


         HLSDIAG
    -192.5015775
    -192.5015775
    -192.5015774
    -192.4765004
    -192.4765002
    -192.4765003
    -192.4765004
    -192.4765004
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -192.447852   -192.447852   -192.447852
 Replaced energies:   -192.501578   -192.501577   -192.501577

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies:   -192.419680   -192.419680   -192.419680   -192.419680   -192.419680
 Replaced energies:   -192.476500   -192.476500   -192.476500   -192.476500   -192.476500



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.50157753

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00    2306.94      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00    2306.94       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00   -2306.94      -0.00      -0.00       0.00       0.00       0.00    2296.86
                           -0.00      -0.00    3262.52      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00   -3262.52      -0.00   -2306.94      -0.00       0.00       0.00       0.00       0.00   -2296.87

    4   1.1  1.0  0.0       0.00   -2306.94       0.00       0.00       0.00       0.00       0.00    2306.94      -0.00       0.00
                           -0.00       0.00    2306.94       0.00       0.00       0.00       0.00       0.00    2306.94      -0.00

    5   2.1  1.0  0.0    2306.94      -0.00       0.00       0.00       0.01       0.00   -2306.94      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

    6   3.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.03       0.00       0.00       0.00       0.00
                        -2306.94      -0.00      -0.00      -0.00      -0.00       0.00   -2306.94      -0.00       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00   -2306.94       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    2306.94      -0.00      -0.00       0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00    2306.94      -0.00       0.00       0.00       0.01       0.00    2296.86
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00   -3262.52       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.03      -0.00
                           -0.00      -0.00      -0.00   -2306.94      -0.00      -0.00      -0.00    3262.52       0.00    2296.87

   10   1.1  0.0  0.0       0.00    2296.86      -0.00       0.00       0.00       0.00       0.00    2296.86      -0.00    5503.80
                           -0.00       0.00    2296.87       0.00       0.00       0.00       0.00      -0.00   -2296.87       0.00

   11   2.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                         2296.87       0.00       0.00      -0.00    3248.25      -0.00   -2296.87      -0.00      -0.00      -0.00

   12   3.1  0.0  0.0   -2296.87       0.00      -0.00       0.00       0.00       0.00   -2296.87       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00   -3248.25       0.00       0.00      -0.00      -0.00

   13   4.1  0.0  0.0       0.00      -0.00   -2368.99       0.00       0.00       0.00       0.00      -0.00   -2368.99       0.00
                           -0.00    2217.34      -0.00     214.44       0.00       0.00       0.00   -2217.34       0.00      -0.00

   14   5.1  0.0  0.0      -0.00       0.00    1192.62       0.00       0.00       0.00      -0.00       0.00    1192.62       0.00
                           -0.00    1455.27       0.00   -3744.75      -0.00      -0.00       0.00   -1455.27      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0      -0.00   -2296.87       0.00      -0.00
                        -2296.87       0.00       0.00       0.00

    2   2.1  1.0  1.0      -0.00       0.00      -0.00       0.00
                           -0.00       0.00   -2217.34   -1455.27

    3   3.1  1.0  1.0      -0.00      -0.00   -2368.99    1192.62
                           -0.00      -0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      -0.00    -214.44    3744.75

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                        -3248.25       0.00      -0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00    3248.25      -0.00       0.00

    7   1.1  1.0 -1.0      -0.00   -2296.87       0.00      -0.00
                         2296.87      -0.00      -0.00      -0.00

    8   2.1  1.0 -1.0      -0.00       0.00      -0.00       0.00
                            0.00      -0.00    2217.34    1455.27

    9   3.1  1.0 -1.0      -0.00      -0.00   -2368.99    1192.62
                            0.00       0.00      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5503.83       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5503.82       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5503.80       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5503.80
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by   -192.50157753 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    3262.512       0.000       0.000

    2    1  |1 1>+              0.000       0.015       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.026       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -3262.512      -0.000       0.000       0.000   -3262.515

    1    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000   -3262.510
                                0.000       0.000    3262.512       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.015       0.000    3262.510       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.026      -0.000      -0.000
                            -3262.512      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000    3262.510      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000   -3262.510       0.000      -0.000       0.000       0.015
                               -0.000      -0.000    3262.515       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -3262.515      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000    3248.253      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |0 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    3248.252      -0.000    3248.271       0.000

    3    1  |0 0>           -3248.259       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000   -3248.251      -0.000      -0.000

    4    1  |0 0>               0.000      -0.000   -3350.254       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     214.444       0.000       0.000      -0.000    3135.796

    5    1  |0 0>              -0.000       0.000    1686.615       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -3744.751      -0.000      -0.000      -0.000    2058.059

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000       0.000      -0.000   -3248.259       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000    3248.253      -0.000       0.000      -0.000       0.000
                             3262.515       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000      -0.000   -3350.254    1686.615
                               -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000    -214.444    3744.751

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000   -3248.252       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000    3248.251      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -3248.271       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000   -3135.796   -2058.059

    3    1  |1 1>-              0.026       0.000       0.000       0.000       0.000       0.000
                                0.000   -3248.259      -0.000      -0.000       0.000      -0.000

    1    1  |0 0>               0.000    5503.798       0.000       0.000       0.000       0.000
                             3248.259       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5503.830       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5503.818       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5503.797       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5503.803
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.53130767    -0.02973014    -6525.01      0.00000000        0.00      0.0000
    2  -192.51644259    -0.01486505    -3262.50      0.01486508     3262.51      0.4045
    3  -192.51644257    -0.01486504    -3262.50      0.01486510     3262.51      0.4045
    4  -192.51644255    -0.01486502    -3262.49      0.01486512     3262.52      0.4045
    5  -192.50315130    -0.00157377     -345.40      0.02815637     6179.61      0.7662
    6  -192.50315122    -0.00157369     -345.39      0.02815645     6179.63      0.7662
    7  -192.50315075    -0.00157321     -345.28      0.02815692     6179.73      0.7662
    8  -192.50315071    -0.00157318     -345.27      0.02815696     6179.74      0.7662
    9  -192.50315070    -0.00157317     -345.27      0.02815697     6179.74      0.7662
   10  -192.46006199     0.04151554     9111.61      0.07124568    15636.62      1.9387
   11  -192.46006196     0.04151557     9111.61      0.07124571    15636.63      1.9387
   12  -192.46006190     0.04151563     9111.63      0.07124577    15636.64      1.9387
   13  -192.46006149     0.04151604     9111.72      0.07124618    15636.73      1.9387
   14  -192.46006147     0.04151606     9111.72      0.07124620    15636.73      1.9387

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000 -0.00000001  0.70710953  0.00000004  0.00000000 -0.00000000  0.00000000  0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000005 -0.00000004  0.70710739  0.00000000 -0.00000000  0.00000001 -0.55610161
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.57734906  0.00000000  0.00000000 -0.00000000  0.09502641  0.63506098  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57735275  0.00000000 -0.00000000  0.00000000  0.59748738  0.23523690  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00907517 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01973399 -0.00000000
                           0.00000000 -0.70704603 -0.00000001 -0.00000005  0.00000000 -0.00000000  0.55575633  0.00000001

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000001  0.70710403  0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000001

   1    1  |1 1>-         -0.00000000  0.00907523  0.00000000  0.00000000  0.00000000  0.00000000  0.01973375 -0.00000000
                          -0.00000000  0.70705106  0.00000001  0.00000005  0.00000000 -0.00000000  0.55574938  0.00000001

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.57734899  0.00000000 -0.00000000  0.00000000 -0.50247000  0.39982161  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000005 -0.00000004  0.70710618 -0.00000000  0.00000000 -0.00000001  0.55610255

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000001  0.61765763
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000344  0.00000000  0.00000000  0.00000000 -0.00000000  0.61726677  0.00000001
                           0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.02191813  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000268  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000061 -0.00000000 -0.00000000  0.00000000 -0.19304405  0.58671789  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000487 -0.00000000  0.00000000 -0.00000000 -0.58671689 -0.19304390 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+          0.55609944  0.00000002 -0.43674881  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000001  0.43674952  0.00000002 -0.00000001  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.45879679 -0.20938266
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.41072862  0.29264010

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00275770  0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.00000000 -0.43673953 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.55610611 -0.00000002  0.43674923 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00275771  0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.00000000 -0.43674025 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.04807020 -0.50201990

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001 -0.43675028 -0.00000002  0.00000001 -0.00000000 -0.00000000

   1    1  |0 0>          -0.00000001  0.78644711  0.00000003 -0.00000002  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000002  0.00000000  0.78643288  0.00000001 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00496577  0.00000000  0.00000000

   3    1  |0 0>           0.61765639 -0.00000003  0.78644808 -0.00000000  0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000001  0.00000001 -0.49222321  0.61336158
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.61336211  0.49222380
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.53130767     -0.02973014    -6525.01      0.00000000        0.00      0.0000
     2   1   -192.51644259     -0.01486505    -3262.50      0.01486508     3262.51      0.4045
     3   1   -192.51644257     -0.01486504    -3262.50      0.01486510     3262.51      0.4045
     4   1   -192.51644255     -0.01486502    -3262.49      0.01486512     3262.52      0.4045
     5   1   -192.50315130     -0.00157377     -345.40      0.02815637     6179.61      0.7662
     6   1   -192.50315122     -0.00157369     -345.39      0.02815645     6179.63      0.7662
     7   1   -192.50315075     -0.00157321     -345.28      0.02815692     6179.73      0.7662
     8   1   -192.50315071     -0.00157318     -345.27      0.02815696     6179.74      0.7662
     9   1   -192.50315070     -0.00157317     -345.27      0.02815697     6179.74      0.7662
    10   1   -192.46006199      0.04151554     9111.61      0.07124568    15636.62      1.9387
    11   1   -192.46006196      0.04151557     9111.61      0.07124571    15636.63      1.9387
    12   1   -192.46006190      0.04151563     9111.63      0.07124577    15636.64      1.9387
    13   1   -192.46006149      0.04151604     9111.72      0.07124618    15636.73      1.9387
    14   1   -192.46006147      0.04151606     9111.72      0.07124620    15636.73      1.9387

 E0 =   -192.50157753 is the energy of the lowest zeroth-order state
 E1 =   -192.53130767 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000 -0.00000001  0.70710953  0.00000004  0.00000000 -0.00000000  0.00000000  0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000005 -0.00000004  0.70710739  0.00000000 -0.00000000  0.00000001 -0.55610161
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.57734906  0.00000000  0.00000000 -0.00000000  0.09502641  0.63506098  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57735275  0.00000000 -0.00000000  0.00000000  0.59748738  0.23523690  0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000 -0.00907517 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01973399 -0.00000000
                                0.00000000 -0.70704603 -0.00000001 -0.00000005  0.00000000 -0.00000000  0.55575633  0.00000001

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000001  0.70710403  0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000001

  7  1     1    1  |1 1>-      -0.00000000  0.00907523  0.00000000  0.00000000  0.00000000  0.00000000  0.01973375 -0.00000000
                               -0.00000000  0.70705106  0.00000001  0.00000005  0.00000000 -0.00000000  0.55574938  0.00000001

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.57734899  0.00000000 -0.00000000  0.00000000 -0.50247000  0.39982161  0.00000000 -0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000005 -0.00000004  0.70710618 -0.00000000  0.00000000 -0.00000001  0.55610255

 10  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000001  0.61765763
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000344  0.00000000  0.00000000  0.00000000 -0.00000000  0.61726677  0.00000001
                                0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.02191813  0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000268  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000061 -0.00000000 -0.00000000  0.00000000 -0.19304405  0.58671789  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000487 -0.00000000  0.00000000 -0.00000000 -0.58671689 -0.19304390 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+       0.55609944  0.00000002 -0.43674881  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000001  0.43674952  0.00000002 -0.00000001  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.45879679 -0.20938266
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.41072862  0.29264010

  5  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00275770  0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.00000000 -0.43673953 -0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.55610611 -0.00000002  0.43674923 -0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00275771  0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.00000000 -0.43674025 -0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.04807020 -0.50201990

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001 -0.43675028 -0.00000002  0.00000001 -0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000001  0.78644711  0.00000003 -0.00000002  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000002  0.00000000  0.78643288  0.00000001 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00496577  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.61765639 -0.00000003  0.78644808 -0.00000000  0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000001  0.00000001 -0.49222321  0.61336158
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.61336211  0.49222380
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   30.92%
  3  1     3    1  |1 1>+        33.33%    0.00%    0.00%    0.00%    0.90%   40.33%    0.00%    0.00%
  4  1     1    1  |1 0>         33.33%    0.00%    0.00%    0.00%   35.70%    5.53%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   30.93%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   30.92%    0.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   25.25%   15.99%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   30.93%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   38.15%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   38.15%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.73%   34.42%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   34.42%    3.73%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+        30.92%    0.00%   19.07%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   19.08%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   21.05%    4.38%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   16.87%    8.56%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   19.07%    0.00%    0.00%
  6  1     3    1  |1 0>         30.93%    0.00%   19.07%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%   19.07%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.23%   25.20%
  9  1     3    1  |1 1>-         0.00%   19.08%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%   61.85%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   61.85%    0.00%    0.00%
 12  1     3    1  |0 0>         38.15%    0.00%   61.85%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   24.23%   37.62%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   37.62%   24.23%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       69.93       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       279.13    119.41    100.82     50.88      3.07      0.26      4.14
 REAL TIME  *       302.03 SEC
 DISK USED  *       103.91 MB (local),      763.33 MB (total)
 SF USED    *       493.90 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -192.460061474510

              CI              CI           MULTI         RHF-SCF
   -192.41967984   -192.44785155   -191.80256163   -191.86422677
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
