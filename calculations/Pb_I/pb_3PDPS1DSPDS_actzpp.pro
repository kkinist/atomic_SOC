
 Working directory              : /wrk/irikura/molpro.lfApdtFoez/
 Global scratch directory       : /wrk/irikura/molpro.lfApdtFoez/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.lfApdtFoez/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.02 sec
 ***,Pb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Pb};
 
 basis=aug-cc-pwCVTZ-PP
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,charge=-1,sym=2,spin=3}
 
 NTRIP=12
 NSING=15
 
                                                                                 ! add 7p to active space
 {multi
     closed,6,3
     occ,7,9
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-May-24          TIME: 09:40:15  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

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

     17.564 MB (compressed) written to integral file ( 18.8%)

     Node minimum: 0.786 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.08 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     48 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.77      0.58
 REAL TIME  *         1.58 SEC
 DISK USED  *        29.19 MB (local),      406.70 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -191.86175732    -191.86175732     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -191.86393108      -0.00217375     0.13D-02     0.34D-02     1     0       0.00      0.01    diag2
   3     -191.86416655      -0.00023547     0.72D-03     0.84D-03     2     0       0.01      0.02    diag2
   4     -191.86422241      -0.00005586     0.17D-03     0.65D-03     3     0       0.00      0.02    diag2
   5     -191.86422657      -0.00000416     0.45D-04     0.24D-03     4     0       0.01      0.03    diag2
   6     -191.86422675      -0.00000018     0.75D-05     0.57D-04     5     0       0.00      0.03    diag2
   7     -191.86422677      -0.00000002     0.19D-05     0.11D-04     6     0       0.00      0.03    diag2
   8     -191.86422677      -0.00000000     0.42D-06     0.44D-05     7     0       0.01      0.04    fixocc
   9     -191.86422677      -0.00000000     0.85D-07     0.13D-05     8     0       0.00      0.04    diag2
  10     -191.86422677      -0.00000000     0.71D-08     0.57D-07     0     0       0.00      0.04    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864226771913
  RHF One-electron energy            -340.689562375593
  RHF Two-electron energy             148.825335603680
  RHF Kinetic energy                   62.713168144682
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059392986323

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94907     1  1  s    1.00046
    2.1     2.00000    -0.84924     1  1  d0   0.99980
    3.1     2.00000    -0.84924     1  1  d1+  0.51667    1  1  d1-  0.85562
    4.1     2.00000    -0.84924     1  1  d1+  0.85515    1  1  d1- -0.51668
    5.1     2.00000    -0.84924     1  1  d2-  0.98087
    6.1     2.00000    -0.84924     1  1  d2+  0.98134
    7.1     2.00000    -0.35245     1  2  s    0.96592
    1.2     2.00000    -3.63153     1  1  pz   0.99314
    2.2     2.00000    -3.63153     1  1  px   0.78563    1  1  py  -0.60766
    3.2     2.00000    -3.63153     1  1  px   0.61104    1  1  py   0.79230
    4.2     1.00000    -0.05143     1  2  py   0.79386
    5.2     1.00000    -0.05143     1  2  px   0.79386
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
 CPU TIMES  *         0.83      0.05      0.58
 REAL TIME  *         2.45 SEC
 DISK USED  *        30.07 MB (local),      417.35 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =        15.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      80 (   40   40)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            12
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            15
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.288D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.390D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.394D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.194D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.181D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 3   5 4 6 1 5 3 4 6 2 1   3 5 2 6 4 8121415 7   9111310 5 3 4 6 2 1
                                        5 4 6 3 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.145D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.481D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.440D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.475D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.487D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.145D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.494D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.358D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 1 3 3   2 1 810 6 5 4 9 7 6   5 4 810 7 9 3 1 2 6   810 4 5 9 7 3 1 2 9
                                        7 4 5 6 810 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704
 Weight factors for state symmetry  2:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
 
 Number of orbital rotations:  664  ( 24 closed/active, 360 closed/virtual, 0 active/active, 280 active/virtual )
 Total number of variables:    6199
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   16   18    0   -191.68292032    -191.70633884   -0.02341852    0.15565920 0.00382026 0.00000000  0.45E+00      0.64
   2    6   10    0   -191.70695145    -191.70836657   -0.00141512    0.09649867 0.00000454 0.00000000  0.20E-01      1.09
   3    5   10    0   -191.70837194    -191.70837199   -0.00000006    0.00054278 0.00000004 0.00000000  0.34E-03      1.51
   4    5   10    0   -191.70837199    -191.70837199    0.00000000    0.00000005 0.00000001 0.00000000  0.34E-07      1.84

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.16E-07)
                       Final energy:   -191.70837199
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.835160570578
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88886720
 One electron energy                          -336.38802597
 Two electron energy                           144.55286540
 Virial ratio                                    4.05038346
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.835160570495
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88886721
 One electron energy                          -336.38802597
 Two electron energy                           144.55286540
 Virial ratio                                    4.05038346
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.835160570452
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88886721
 One electron energy                          -336.38802597
 Two electron energy                           144.55286540
 Virial ratio                                    4.05038346
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -191.665228030485
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.44217166
 One electron energy                          -332.08659472
 Two electron energy                           140.42136669
 Virial ratio                                    4.06948370
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -191.665228030478
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.44217166
 One electron energy                          -332.08659472
 Two electron energy                           140.42136669
 Virial ratio                                    4.06948370
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -191.665228030415
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.44217166
 One electron energy                          -332.08659471
 Two electron energy                           140.42136668
 Virial ratio                                    4.06948370
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -191.665228030384
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.44217165
 One electron energy                          -332.08659470
 Two electron energy                           140.42136667
 Virial ratio                                    4.06948370
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -191.665228030373
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.44217165
 One electron energy                          -332.08659470
 Two electron energy                           140.42136667
 Virial ratio                                    4.06948370
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -191.659657780582
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.53004153
 One electron energy                          -332.52743683
 Two electron energy                           140.86777905
 Virial ratio                                    4.06508125
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -191.659657780526
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.53004153
 One electron energy                          -332.52743684
 Two electron energy                           140.86777906
 Virial ratio                                    4.06508125
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -191.659657780448
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.53004153
 One electron energy                          -332.52743686
 Two electron energy                           140.86777908
 Virial ratio                                    4.06508125
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -191.657576754285
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.44200273
 One electron energy                          -332.08526045
 Two electron energy                           140.42768370
 Virial ratio                                    4.06936947
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.801237233936
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.84202017
 One electron energy                          -336.12154408
 Two electron energy                           144.32030685
 Virial ratio                                    4.05211762
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.801237233922
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.84202017
 One electron energy                          -336.12154408
 Two electron energy                           144.32030685
 Virial ratio                                    4.05211762
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.801237233878
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.84202017
 One electron energy                          -336.12154408
 Two electron energy                           144.32030684
 Virial ratio                                    4.05211762
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.801237233807
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.84202017
 One electron energy                          -336.12154409
 Two electron energy                           144.32030685
 Virial ratio                                    4.05211762
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.801237233803
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.84202017
 One electron energy                          -336.12154408
 Two electron energy                           144.32030685
 Virial ratio                                    4.05211762
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -191.767764840955
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.77456791
 One electron energy                          -335.69815532
 Two electron energy                           143.93039048
 Virial ratio                                    4.05486396
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -191.670331816179
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.44227804
 One electron energy                          -332.08743665
 Two electron energy                           140.41710483
 Virial ratio                                    4.06956021
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -191.670331816091
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.44227804
 One electron energy                          -332.08743664
 Two electron energy                           140.41710482
 Virial ratio                                    4.06956021
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -191.670331816056
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.44227803
 One electron energy                          -332.08743663
 Two electron energy                           140.41710481
 Virial ratio                                    4.06956021
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -191.648108874028
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.58113837
 One electron energy                          -332.81191401
 Two electron energy                           141.16380514
 Virial ratio                                    4.06239410
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -191.648108873992
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.58113837
 One electron energy                          -332.81191402
 Two electron energy                           141.16380514
 Virial ratio                                    4.06239410
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -191.648108873883
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.58113838
 One electron energy                          -332.81191403
 Two electron energy                           141.16380516
 Virial ratio                                    4.06239410
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -191.648108873690
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.58113838
 One electron energy                          -332.81191405
 Two electron energy                           141.16380518
 Virial ratio                                    4.06239410
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -191.648108873674
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.58113838
 One electron energy                          -332.81191405
 Two electron energy                           141.16380518
 Virial ratio                                    4.06239410
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -191.632380970555
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64186960
 One electron energy                          -333.15702708
 Two electron energy                           141.52464611
 Virial ratio                                    4.05917403
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
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
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.622409619229
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999999997456
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     4.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000065482
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.377578160012
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>    -0.000000000000
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.147614733050
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.999999999989
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000046
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.852395309552
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.000000000000
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999999999999
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     2.317174951899
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000000000165
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     4.000000000000
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     1.000000000115
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     1.682825352143
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000001794
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999998713
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.487892747789
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000002875
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.999999979889
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.512115375766
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000000048
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.999999999961
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.579263546232
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999997997
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000724
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.420752796707
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.999999999901
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.000000000100
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     3.551544108561
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     3.999999999910
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     1.000000000000
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     1.000000000122
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     0.448455697618
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999998206
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000001287
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.889697632982
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999999999669
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999954629
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.110306464222
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999952
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.000000000040
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     2.273121720718
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000002014
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999999230
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.726851893741
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000000099
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999999901
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.131280939540
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     0.999999999924
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     1.000000000000
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     3.999999999763
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     3.868718950238
 !MCSCF expec    <15.1 Singlet|LZLZ|15.1 Singlet>    -0.000000000000
 
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
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     6.000000000000
 !MCSCF expec    <13.1 Singlet|L**2|13.1 Singlet>     6.000000000000
 !MCSCF expec    <14.1 Singlet|L**2|14.1 Singlet>     6.000000000000
 !MCSCF expec    <15.1 Singlet|L**2|15.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 3 5   6 2 4 1 3 5 6 4 2 1   3 5 6 4 213101415 8  1211 7 9 5 3 6 4 2 1
                                        5 3 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 1 3 2 2   1 3 7 9 810 5 6 4 7   9 810 5 6 4 2 1 3 7   9 810 5 6 4 2 1 3 9
                                        7 810 5 6 4 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.27266     1  1  s    0.99928
    2.1     2.00000    -1.17312     1  1  d2-  1.00073
    3.1     2.00000    -1.17312     1  1  d2+  1.00073
    4.1     2.00000    -1.17312     1  1  d1-  1.00073
    5.1     2.00000    -1.17312     1  1  d1+  1.00073
    6.1     2.00000    -1.17312     1  1  d0   1.00073
    7.1     1.97163    -0.64097     1  2  s    1.02360
    1.2     2.00000    -3.95536     1  1  py   0.99946
    2.2     2.00000    -3.95536     1  1  px   0.99946
    3.2     2.00000    -3.95536     1  1  pz   0.99946
    4.2     0.45366    -0.10152     1  2  pz   1.12650
    5.2     0.45366    -0.10152     1  2  px   1.12650
    6.2     0.45366    -0.10152     1  2  py   1.12650
    7.2     0.22246     0.03762     1  4  px  -0.46326    1  7  px   1.32288
    8.2     0.22246     0.03762     1  4  pz  -0.46326    1  7  pz   1.32288
    9.2     0.22246     0.03762     1  4  py  -0.46326    1  7  py   1.32288
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aa0000       0.98215951      0.00004160     -0.00000028      0.00000000     -0.00000000      0.00000000     -0.00000021
 2 a0a000       0.00000028     -0.00000022      0.98215951     -0.00000000     -0.00000000     -0.00000025     -0.00000000
 2 0aa000      -0.00004160      0.98215947      0.00000022      0.00000000     -0.00000004      0.00000000      0.00000000
 2 a000a0      -0.00000000     -0.00000000      0.00000000     -0.13454836      0.00000098      0.00000004      0.00018711
 2 00a00a       0.00000000      0.00000000      0.00000000      0.75922394      0.00010505     -0.00000021     -0.00005704
 2 00a0a0      -0.00000003      0.00000002     -0.11290413      0.00000019      0.00000038      0.70169219      0.00000000
 2 a0000a       0.00000003     -0.00000002      0.11290449      0.00000019      0.00000038      0.70169218      0.00000000
 2 00aa00       0.00000478     -0.11290443     -0.00000002     -0.00010394      0.70169218     -0.00000038     -0.00000531
 2 0a000a      -0.00000478      0.11290449      0.00000002     -0.00010394      0.70169218     -0.00000038     -0.00000531
 2 0a00a0      -0.11290413     -0.00000478      0.00000003     -0.00000910      0.00000530     -0.00000000      0.70169217
 2 a00a00       0.11290443      0.00000478     -0.00000003     -0.00000910      0.00000530     -0.00000000      0.70169216
 2 0a0a00       0.00000000      0.00000000     -0.00000000     -0.62467557     -0.00010604      0.00000017     -0.00013006
 0 aa2000      -0.09215465     -0.00000390      0.00000003     -0.00000000      0.00000000     -0.00000000      0.00000002
 0 a2a000      -0.00000003      0.00000002     -0.09215465      0.00000000      0.00000000      0.00000002      0.00000000
 0 2aa000       0.00000390     -0.09215464     -0.00000002     -0.00000000      0.00000000     -0.00000000     -0.00000000
 0 a020a0       0.00000000      0.00000000     -0.00000000      0.01116490     -0.00000015     -0.00000000     -0.00001618
 0 a200a0       0.00000000      0.00000000     -0.00000000      0.01206927     -0.00000002     -0.00000000     -0.00001613
 0 20a00a      -0.00000000     -0.00000000      0.00000000     -0.06571255     -0.00000911      0.00000002      0.00000482
 0 02a00a      -0.00000000     -0.00000000     -0.00000000     -0.06539226     -0.00000904      0.00000002      0.00000503
 0 02a0a0       0.00000000     -0.00000000      0.00881753     -0.00000002     -0.00000003     -0.06081432     -0.00000000
 0 a2000a      -0.00000000      0.00000000     -0.00881756     -0.00000002     -0.00000003     -0.06081432     -0.00000000
 0 0a20a0       0.00881753      0.00000037     -0.00000000      0.00000079     -0.00000046      0.00000000     -0.06081432
 0 a02a00      -0.00881756     -0.00000037      0.00000000      0.00000079     -0.00000046      0.00000000     -0.06081432
 0 20aa00      -0.00000037      0.00881756      0.00000000      0.00000901     -0.06081431      0.00000003      0.00000046
 0 2a000a       0.00000037     -0.00881756     -0.00000000      0.00000901     -0.06081431      0.00000003      0.00000046
 0 0a200a       0.00000088     -0.02074569     -0.00000000      0.00000894     -0.06035576      0.00000003      0.00000046
 0 02aa00      -0.00000088      0.02074569      0.00000000      0.00000894     -0.06035576      0.00000003      0.00000046
 0 20a0a0       0.00000001     -0.00000000      0.02074569     -0.00000002     -0.00000003     -0.06035576     -0.00000000
 0 a0200a      -0.00000001      0.00000000     -0.02074569     -0.00000002     -0.00000003     -0.06035576     -0.00000000
 0 2a00a0       0.02074569      0.00000088     -0.00000001      0.00000078     -0.00000046      0.00000000     -0.06035576
 0 a20a00      -0.02074569     -0.00000088      0.00000001      0.00000078     -0.00000046      0.00000000     -0.06035576
 0 2a0a00       0.00000000     -0.00000000     -0.00000000      0.05422736      0.00000919     -0.00000001      0.00001115
 0 0a2a00      -0.00000000     -0.00000000      0.00000000      0.05364328      0.00000912     -0.00000001      0.00001131
 
 Energy:     -191.83516057   -191.83516057   -191.83516057   -191.66522803   -191.66522803   -191.66522803   -191.66522803

 State:              8               9              10              11              12
 2 aa0000       0.00000000     -0.16096740     -0.00000006      0.00000111     -0.00000000
 2 a0a000      -0.00000000      0.00000006     -0.16096744     -0.00000000     -0.00000000
 2 0aa000       0.00000000     -0.00000111      0.00000000     -0.16096765      0.00000000
 2 a000a0       0.79899474     -0.00000000     -0.00000000     -0.00000000      0.57283705
 2 00a00a      -0.28297508      0.00000000      0.00000000      0.00000000      0.57283704
 2 00a0a0       0.00000000      0.00000024     -0.69254897     -0.00000000      0.00000000
 2 a0000a       0.00000000     -0.00000024      0.69254893      0.00000000      0.00000000
 2 00aa00      -0.00001837     -0.00000479      0.00000000     -0.69254893      0.00000000
 2 0a000a      -0.00001837      0.00000479     -0.00000000      0.69254892      0.00000000
 2 0a00a0      -0.00016585     -0.69254898     -0.00000024      0.00000479      0.00000000
 2 a00a00      -0.00016585      0.69254894      0.00000024     -0.00000479      0.00000000
 2 0a0a00      -0.51601967     -0.00000000      0.00000000     -0.00000000      0.57283704
 0 aa2000      -0.00000000      0.01803570      0.00000001     -0.00000012      0.00000000
 0 a2a000      -0.00000000     -0.00000001      0.01803571      0.00000000     -0.00000000
 0 2aa000      -0.00000000      0.00000012     -0.00000000      0.01803572     -0.00000000
 0 a020a0      -0.06906242     -0.00000000      0.00000000      0.00000000     -0.04998819
 0 a200a0      -0.06891012     -0.00000000      0.00000000      0.00000000     -0.04998819
 0 20a00a       0.02400276     -0.00000000     -0.00000000     -0.00000000     -0.04998818
 0 02a00a       0.02486213      0.00000000     -0.00000000     -0.00000000     -0.04998819
 0 02a0a0      -0.00000000     -0.00000002      0.06020722      0.00000000     -0.00000000
 0 a2000a      -0.00000000      0.00000002     -0.06020722     -0.00000000     -0.00000000
 0 0a20a0       0.00001437      0.06020722      0.00000002     -0.00000042     -0.00000000
 0 a02a00       0.00001437     -0.06020722     -0.00000002      0.00000042     -0.00000000
 0 20aa00       0.00000159      0.00000042     -0.00000000      0.06020721     -0.00000000
 0 2a000a       0.00000159     -0.00000042      0.00000000     -0.06020721     -0.00000000
 0 0a200a       0.00000158     -0.00000039      0.00000000     -0.05676921     -0.00000000
 0 02aa00       0.00000158      0.00000039     -0.00000000      0.05676921     -0.00000000
 0 20a0a0      -0.00000000     -0.00000002      0.05676921      0.00000000     -0.00000000
 0 a0200a      -0.00000000      0.00000002     -0.05676922     -0.00000000     -0.00000000
 0 2a00a0       0.00001427      0.05676921      0.00000002     -0.00000039     -0.00000000
 0 a20a00       0.00001427     -0.05676922     -0.00000002      0.00000039     -0.00000000
 0 2a0a00       0.04420029      0.00000000     -0.00000000      0.00000000     -0.04998818
 0 0a2a00       0.04490736      0.00000000     -0.00000000      0.00000000     -0.04998819
 
 Energy:     -191.66522803   -191.65965778   -191.65965778   -191.65965778   -191.65757675
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 020000       0.77613734     -0.00000063      0.00000031     -0.00000014     -0.15192826      0.54074563     -0.00000000
 2 002000      -0.25649493      0.00000090      0.00000005      0.00000004      0.74811877      0.54074562     -0.00000000
 2 ab0000       0.00000042      0.68491136     -0.00001763     -0.00000018     -0.00000068     -0.00000000      0.00000000
 2 ba0000      -0.00000042     -0.68491136      0.00001763      0.00000018      0.00000068      0.00000000     -0.00000000
 2 a0b000       0.00000012      0.00000018     -0.00000267      0.68491135      0.00000000     -0.00000000      0.00000000
 2 b0a000      -0.00000012     -0.00000018      0.00000267     -0.68491135     -0.00000000      0.00000000     -0.00000000
 2 0ab000      -0.00000030      0.00001763      0.68491132      0.00000267     -0.00000015     -0.00000000     -0.00000003
 2 0ba000       0.00000030     -0.00001763     -0.68491132     -0.00000267      0.00000015      0.00000000      0.00000003
 2 200000      -0.51964246     -0.00000027     -0.00000036      0.00000009     -0.59619058      0.54074571      0.00000000
 2 b000a0       0.08613848      0.00000004      0.00000006     -0.00000002      0.09882748     -0.12447880     -0.00000000
 2 a000b0      -0.08613848     -0.00000004     -0.00000006      0.00000002     -0.09882748      0.12447880      0.00000000
 2 00b00a       0.04251796     -0.00000015     -0.00000001     -0.00000001     -0.12401213     -0.12447900      0.00000000
 2 00a00b      -0.04251796      0.00000015      0.00000001      0.00000001      0.12401213      0.12447900     -0.00000000
 2 00b0a0      -0.00000002     -0.00000003      0.00000044     -0.11353428     -0.00000000     -0.00000000     -0.00000009
 2 00a0b0       0.00000002      0.00000003     -0.00000044      0.11353428      0.00000000      0.00000000      0.00000009
 2 0a00b0       0.00000007      0.11353428     -0.00000292     -0.00000003     -0.00000011     -0.00000000      0.00000494
 2 0b00a0      -0.00000007     -0.11353428      0.00000292      0.00000003      0.00000011      0.00000000     -0.00000494
 2 00ba00       0.00000005     -0.00000292     -0.11353448     -0.00000044      0.00000002     -0.00000000      0.49622172
 2 00ab00      -0.00000005      0.00000292      0.11353448      0.00000044     -0.00000002      0.00000000     -0.49622172
 2 0a000b      -0.00000005      0.00000292      0.11353452      0.00000044     -0.00000002      0.00000000      0.49622172
 2 0b000a       0.00000005     -0.00000292     -0.11353452     -0.00000044      0.00000002     -0.00000000     -0.49622172
 2 a00b00       0.00000007      0.11353448     -0.00000292     -0.00000003     -0.00000011      0.00000000     -0.00000494
 2 b00a00      -0.00000007     -0.11353448      0.00000292      0.00000003      0.00000011     -0.00000000      0.00000494
 2 a0000b       0.00000002      0.00000003     -0.00000044      0.11353452      0.00000000     -0.00000000     -0.00000009
 2 b0000a      -0.00000002     -0.00000003      0.00000044     -0.11353452     -0.00000000      0.00000000      0.00000009
 2 0b0a00      -0.12865659      0.00000010     -0.00000005      0.00000002      0.02518442     -0.12447897     -0.00000000
 2 0a0b00       0.12865659     -0.00000010      0.00000005     -0.00000002     -0.02518442      0.12447897      0.00000000
 0 220000      -0.02401929      0.00000008      0.00000000      0.00000000      0.07005709     -0.09873382      0.00000000
 0 202000       0.07268087     -0.00000006      0.00000003     -0.00000001     -0.01422721     -0.09873382      0.00000000
 0 022000      -0.04866157     -0.00000003     -0.00000003      0.00000001     -0.05582987     -0.09873382      0.00000000
 0 ab2000      -0.00000004     -0.06413807      0.00000165      0.00000002      0.00000006     -0.00000000     -0.00000000
 0 ba2000       0.00000004      0.06413807     -0.00000165     -0.00000002     -0.00000006      0.00000000      0.00000000
 0 b2a000       0.00000001      0.00000002     -0.00000025      0.06413807      0.00000000      0.00000000      0.00000000
 0 a2b000      -0.00000001     -0.00000002      0.00000025     -0.06413807     -0.00000000     -0.00000000     -0.00000000
 0 2ab000       0.00000003     -0.00000165     -0.06413806     -0.00000025      0.00000001      0.00000000      0.00000000
 0 2ba000      -0.00000003      0.00000165      0.06413806      0.00000025     -0.00000001     -0.00000000     -0.00000000
 
 Energy:     -191.80123723   -191.80123723   -191.80123723   -191.80123723   -191.80123723   -191.76776484   -191.67033182

 State:              8               9              10              11              12              13              14
 2 020000       0.00000000     -0.00000000      0.12107558      0.00000329     -0.00000001     -0.00000105      0.14207462
 2 002000       0.00000000     -0.00000000      0.06250246      0.00000190     -0.00000000      0.00000113     -0.17589190
 2 ab0000      -0.00000000     -0.00000015      0.00000455     -0.16165804     -0.00000010     -0.00000061     -0.00000013
 2 ba0000       0.00000000      0.00000015     -0.00000455      0.16165804      0.00000010      0.00000061      0.00000013
 2 a0b000      -0.00000018      0.00000000     -0.00000001      0.00000010     -0.16165807     -0.00000001     -0.00000000
 2 b0a000       0.00000018     -0.00000000      0.00000001     -0.00000010      0.16165807      0.00000001      0.00000000
 2 0ab000      -0.00000000     -0.00000000     -0.00000013      0.00000061      0.00000001     -0.16165822     -0.00000108
 2 0ba000       0.00000000      0.00000000      0.00000013     -0.00000061     -0.00000001      0.16165822      0.00000108
 2 200000       0.00000000     -0.00000000     -0.18357769     -0.00000520      0.00000001     -0.00000007      0.03381716
 2 b000a0      -0.00000000     -0.00000000     -0.54850008     -0.00001553      0.00000003     -0.00000022      0.10104014
 2 a000b0       0.00000000      0.00000000      0.54850008      0.00001553     -0.00000003      0.00000022     -0.10104014
 2 00b00a      -0.00000000     -0.00000000      0.18674668      0.00000569     -0.00000001      0.00000337     -0.52553500
 2 00a00b       0.00000000      0.00000000     -0.18674668     -0.00000569      0.00000001     -0.00000337      0.52553500
 2 00b0a0       0.49622172     -0.00000008     -0.00000003      0.00000029     -0.48300732     -0.00000003     -0.00000000
 2 00a0b0      -0.49622172      0.00000008      0.00000003     -0.00000029      0.48300732      0.00000003      0.00000000
 2 0a00b0      -0.00000008     -0.49622172     -0.00001360      0.48300732      0.00000029      0.00000182      0.00000039
 2 0b00a0       0.00000008      0.49622172      0.00001360     -0.48300732     -0.00000029     -0.00000182     -0.00000039
 2 00ba00       0.00000009      0.00000494     -0.00000040      0.00000182      0.00000003     -0.48300728     -0.00000324
 2 00ab00      -0.00000009     -0.00000494      0.00000040     -0.00000182     -0.00000003      0.48300728      0.00000324
 2 0a000b       0.00000009      0.00000494      0.00000040     -0.00000182     -0.00000003      0.48300727      0.00000324
 2 0b000a      -0.00000009     -0.00000494     -0.00000040      0.00000182      0.00000003     -0.48300727     -0.00000324
 2 a00b00       0.00000008      0.49622172     -0.00001360      0.48300728      0.00000029      0.00000182      0.00000039
 2 b00a00      -0.00000008     -0.49622172      0.00001360     -0.48300728     -0.00000029     -0.00000182     -0.00000039
 2 a0000b       0.49622172     -0.00000008      0.00000003     -0.00000029      0.48300727      0.00000003      0.00000000
 2 b0000a      -0.49622172      0.00000008     -0.00000003      0.00000029     -0.48300727     -0.00000003     -0.00000000
 2 0b0a00      -0.00000000     -0.00000000      0.36175332      0.00000984     -0.00000002     -0.00000315      0.42449489
 2 0a0b00       0.00000000      0.00000000     -0.36175332     -0.00000984      0.00000002      0.00000315     -0.42449489
 0 220000      -0.00000000      0.00000000      0.00664724      0.00000020     -0.00000000      0.00000012     -0.01870646
 0 202000      -0.00000000      0.00000000      0.01287661      0.00000035     -0.00000000     -0.00000011      0.01510994
 0 022000      -0.00000000      0.00000000     -0.01952391     -0.00000055      0.00000000     -0.00000001      0.00359654
 0 ab2000       0.00000000      0.00000001     -0.00000048      0.01719268      0.00000001      0.00000006      0.00000001
 0 ba2000      -0.00000000     -0.00000001      0.00000048     -0.01719268     -0.00000001     -0.00000006     -0.00000001
 0 b2a000      -0.00000002      0.00000000     -0.00000000      0.00000001     -0.01719268     -0.00000000     -0.00000000
 0 a2b000       0.00000002     -0.00000000      0.00000000     -0.00000001      0.01719268      0.00000000      0.00000000
 0 2ab000       0.00000000      0.00000000      0.00000001     -0.00000006     -0.00000000      0.01719269      0.00000012
 0 2ba000      -0.00000000     -0.00000000     -0.00000001      0.00000006      0.00000000     -0.01719269     -0.00000012
 
 Energy:     -191.67033182   -191.67033182   -191.64810887   -191.64810887   -191.64810887   -191.64810887   -191.64810887

 State:             15
 2 020000      -0.17249588
 2 002000      -0.17249593
 2 ab0000      -0.00000000
 2 ba0000       0.00000000
 2 a0b000       0.00000000
 2 b0a000      -0.00000000
 2 0ab000      -0.00000000
 2 0ba000       0.00000000
 2 200000      -0.17249564
 2 b000a0      -0.38528407
 2 a000b0       0.38528407
 2 00b00a      -0.38528403
 2 00a00b       0.38528403
 2 00b0a0      -0.00000000
 2 00a0b0       0.00000000
 2 0a00b0       0.00000000
 2 0b00a0      -0.00000000
 2 00ba00      -0.00000000
 2 00ab00       0.00000000
 2 0a000b       0.00000000
 2 0b000a      -0.00000000
 2 a00b00       0.00000000
 2 b00a00      -0.00000000
 2 a0000b      -0.00000000
 2 b0000a       0.00000000
 2 0b0a00      -0.38528403
 2 0a0b00       0.38528403
 0 220000       0.03371461
 0 202000       0.03371462
 0 022000       0.03371464
 0 ab2000       0.00000000
 0 ba2000      -0.00000000
 0 b2a000      -0.00000000
 0 a2b000       0.00000000
 0 2ab000       0.00000000
 0 2ba000      -0.00000000
 
 Energy:     -191.63238097
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.74      1.90      0.05      0.58
 REAL TIME  *         4.69 SEC
 DISK USED  *        37.16 MB (local),      502.34 MB (total)
 SF USED    *        19.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8351606   2.0
    -191.8351606   2.0
    -191.8351606   2.0
    -191.6652280   6.0
    -191.6652280   6.0
    -191.6652280   6.0
    -191.6652280   6.0
    -191.6652280   6.0
    -191.6596578   2.0
    -191.6596578   2.0
    -191.6596578   2.0
    -191.6575768  -0.0
    -191.8012372   6.0
    -191.8012372   6.0
    -191.8012372   6.0
    -191.8012372   6.0
    -191.8012372   6.0
    -191.7677648  -0.0
    -191.6703318   2.0
    -191.6703318   2.0
    -191.6703318   2.0
    -191.6481089   6.0
    -191.6481089   6.0
    -191.6481089   6.0
    -191.6481089   6.0
    -191.6481089   6.0
    -191.6323810  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 22
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:       90 conf      120 CSFs
 N elec internal:    18284 conf    76944 CSFs
 N-1 el internal:    12821 conf    88545 CSFs
 N-2 el internal:     4717 conf    46537 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      80 (  40  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.83516057
     2      -191.83516057
     3      -191.83516057
     4      -191.66522803
     5      -191.66522803
     6      -191.66522803
     7      -191.66522803
     8      -191.66522803
     9      -191.65965778
    10      -191.65965778
    11      -191.65965778
    12      -191.65757675

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1103D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1748D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1699D-06

 Number of blocks in overlap matrix:  1217   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    2455
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3541800
 Number of doubly external configurations:       3931560
 Total number of contracted configurations:      7511766
 Total number of uncontracted configurations:   77703006

 Diagonal Coupling coefficients finished.               Storage:  25420021 words, CPU-Time:     78.45 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1325241 words, CPU-time:      0.17 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.83516057     0.00000000    -0.77117943  0.53D-01  0.11D+00    90.27
    1     2     2     1.00000000     0.00000000  -191.83516057     0.00000000    -0.77111639  0.53D-01  0.11D+00    90.27
    1     3     3     1.00000000     0.00000000  -191.83516057     0.00000000    -0.77116975  0.53D-01  0.11D+00    90.27
    1     4     4     1.00000000     0.00000000  -191.66522803     0.00000000    -0.73677221  0.42D-01  0.98D-01    90.27
    1     5     5     1.00000000     0.00000000  -191.66522803     0.00000000    -0.73649162  0.42D-01  0.98D-01    90.27
    1     6     6     1.00000000     0.00000000  -191.66522803    -0.00000000    -0.73656912  0.42D-01  0.98D-01    90.27
    1     7     7     1.00000000     0.00000000  -191.66522803     0.00000000    -0.73658182  0.42D-01  0.98D-01    90.27
    1     8     8     1.00000000     0.00000000  -191.66522803     0.00000000    -0.73683053  0.42D-01  0.98D-01    90.27
    1     9     9     1.00000000     0.00000000  -191.65965778     0.00000000    -0.74165853  0.44D-01  0.99D-01    90.27
    1    10    10     1.00000000     0.00000000  -191.65965778     0.00000000    -0.74166036  0.44D-01  0.99D-01    90.27
    1    11    11     1.00000000     0.00000000  -191.65965778     0.00000000    -0.74164887  0.44D-01  0.99D-01    90.27
    1    12    12     1.00000000     0.00000000  -191.65757675     0.00000000    -0.73731229  0.42D-01  0.98D-01    90.27
    2     1     1     1.09512431    -0.59512709  -192.43028766    -0.59512709    -0.01882558  0.33D-02  0.16D-02   437.56
    2     2     2     1.09514073    -0.59512566  -192.43028623    -0.59512566    -0.01883738  0.33D-02  0.15D-02   437.56
    2     3     3     1.09522597    -0.59505101  -192.43021158    -0.59505101    -0.01890972  0.34D-02  0.15D-02   437.56
    2     4     4     1.08698894    -0.58377103  -192.24899906    -0.58377103    -0.01584198  0.24D-02  0.12D-02   437.56
    2     5     5     1.08702097    -0.58374743  -192.24897546    -0.58374743    -0.01586927  0.24D-02  0.12D-02   437.56
    2     6     6     1.08690328    -0.58374362  -192.24897165    -0.58374362    -0.01587842  0.24D-02  0.12D-02   437.56
    2     7     7     1.08693447    -0.58372834  -192.24895637    -0.58372834    -0.01589665  0.24D-02  0.12D-02   437.56
    2     8     8     1.08695073    -0.58371517  -192.24894320    -0.58371517    -0.01591007  0.24D-02  0.12D-02   437.56
    2     9     9     1.08761857    -0.58466241  -192.24432019    -0.58466241    -0.01646788  0.27D-02  0.13D-02   437.56
    2    10    10     1.08761926    -0.58465984  -192.24431762    -0.58465984    -0.01647361  0.27D-02  0.13D-02   437.56
    2    11    11     1.08763340    -0.58464546  -192.24430324    -0.58464546    -0.01648838  0.27D-02  0.13D-02   437.56
    2    12    12     1.08717806    -0.58394948  -192.24152623    -0.58394948    -0.01609116  0.25D-02  0.12D-02   437.56
    3     1     1     1.08641903    -0.61271661  -192.44787718    -0.01758951    -0.00044607  0.70D-04  0.56D-04   786.58
    3     2     2     1.08641514    -0.61271351  -192.44787408    -0.01758784    -0.00044763  0.69D-04  0.57D-04   786.58
    3     3     3     1.08641883    -0.61270825  -192.44786882    -0.01765724    -0.00045272  0.71D-04  0.57D-04   786.58
    3     4     4     1.08182359    -0.59864981  -192.26387784    -0.01487878    -0.00031606  0.37D-04  0.37D-04   786.58
    3     5     5     1.08182558    -0.59864949  -192.26387752    -0.01490206    -0.00031668  0.37D-04  0.38D-04   786.58
    3     6     6     1.08182381    -0.59864865  -192.26387668    -0.01490503    -0.00031715  0.37D-04  0.38D-04   786.58
    3     7     7     1.08184523    -0.59864744  -192.26387547    -0.01491910    -0.00031837  0.37D-04  0.39D-04   786.58
    3     8     8     1.08184432    -0.59864661  -192.26387464    -0.01493144    -0.00031915  0.37D-04  0.39D-04   786.58
    3     9     9     1.08186165    -0.60008053  -192.25973832    -0.01541813    -0.00033535  0.43D-04  0.39D-04   786.58
    3    10    10     1.08186221    -0.60007983  -192.25973761    -0.01541999    -0.00033546  0.43D-04  0.39D-04   786.58
    3    11    11     1.08186058    -0.60007927  -192.25973705    -0.01543381    -0.00033621  0.43D-04  0.39D-04   786.58
    3    12    12     1.08193036    -0.59907110  -192.25664785    -0.01512162    -0.00033340  0.38D-04  0.43D-04   786.58
    4     1     1     1.08645015    -0.61318722  -192.44834779    -0.00047061    -0.00002332  0.36D-05  0.33D-05  1134.86
    4     2     2     1.08644692    -0.61318669  -192.44834726    -0.00047318    -0.00002370  0.36D-05  0.34D-05  1134.86
    4     3     3     1.08644689    -0.61318650  -192.44834707    -0.00047825    -0.00002389  0.37D-05  0.34D-05  1134.86
    4     4     4     1.08259067    -0.59898548  -192.26421351    -0.00033567    -0.00001524  0.27D-05  0.23D-05  1134.86
    4     5     5     1.08259146    -0.59898537  -192.26421340    -0.00033588    -0.00001526  0.26D-05  0.23D-05  1134.86
    4     6     6     1.08258585    -0.59898529  -192.26421332    -0.00033664    -0.00001549  0.27D-05  0.23D-05  1134.86
    4     7     7     1.08259039    -0.59898521  -192.26421324    -0.00033777    -0.00001529  0.27D-05  0.23D-05  1134.86
    4     8     8     1.08258559    -0.59898507  -192.26421310    -0.00033847    -0.00001553  0.27D-05  0.23D-05  1134.86
    4     9     9     1.08253991    -0.60043393  -192.26009171    -0.00035340    -0.00001619  0.30D-05  0.23D-05  1134.86
    4    10    10     1.08253957    -0.60043370  -192.26009148    -0.00035386    -0.00001627  0.30D-05  0.23D-05  1134.86
    4    11    11     1.08253947    -0.60043368  -192.26009146    -0.00035441    -0.00001627  0.30D-05  0.23D-05  1134.86
    4    12    12     1.08279746    -0.59942772  -192.25700447    -0.00035662    -0.00001778  0.26D-05  0.32D-05  1134.86
    5     1     1     1.08657420    -0.61321349  -192.44837406    -0.00002627    -0.00000110  0.79D-07  0.19D-06  1482.76
    5     2     2     1.08657430    -0.61321344  -192.44837401    -0.00002676    -0.00000113  0.81D-07  0.19D-06  1482.76
    5     3     3     1.08657349    -0.61321344  -192.44837401    -0.00002695    -0.00000113  0.81D-07  0.19D-06  1482.76
    5     4     4     1.08280290    -0.59900361  -192.26423164    -0.00001813    -0.00000087  0.48D-07  0.21D-06  1482.76
    5     5     5     1.08280338    -0.59900354  -192.26423157    -0.00001817    -0.00000086  0.50D-07  0.21D-06  1482.76
    5     6     6     1.08280349    -0.59900347  -192.26423150    -0.00001818    -0.00000087  0.50D-07  0.21D-06  1482.76
    5     7     7     1.08280277    -0.59900345  -192.26423148    -0.00001824    -0.00000088  0.49D-07  0.21D-06  1482.76
    5     8     8     1.08280314    -0.59900333  -192.26423136    -0.00001826    -0.00000087  0.50D-07  0.21D-06  1482.76
    5     9     9     1.08272422    -0.60045275  -192.26011053    -0.00001882    -0.00000096  0.69D-07  0.23D-06  1482.76
    5    10    10     1.08272404    -0.60045263  -192.26011041    -0.00001893    -0.00000098  0.69D-07  0.23D-06  1482.76
    5    11    11     1.08272401    -0.60045260  -192.26011038    -0.00001892    -0.00000097  0.69D-07  0.23D-06  1482.76
    5    12    12     1.08308062    -0.59944934  -192.25702609    -0.00002162    -0.00000121  0.64D-07  0.31D-06  1482.76
    6     1     1     1.08656977    -0.61321474  -192.44837531    -0.00000125    -0.00000007  0.84D-08  0.12D-07  1833.38
    6     2     2     1.08656956    -0.61321473  -192.44837530    -0.00000129    -0.00000008  0.88D-08  0.13D-07  1833.38
    6     3     3     1.08656952    -0.61321473  -192.44837530    -0.00000129    -0.00000008  0.88D-08  0.13D-07  1833.38
    6     4     4     1.08281491    -0.59900472  -192.26423275    -0.00000110    -0.00000009  0.88D-08  0.19D-07  1833.38
    6     5     5     1.08281537    -0.59900464  -192.26423267    -0.00000109    -0.00000009  0.92D-08  0.19D-07  1833.38
    6     6     6     1.08281524    -0.59900457  -192.26423260    -0.00000110    -0.00000009  0.93D-08  0.19D-07  1833.38
    6     7     7     1.08281476    -0.59900456  -192.26423259    -0.00000111    -0.00000009  0.89D-08  0.19D-07  1833.38
    6     8     8     1.08281511    -0.59900443  -192.26423246    -0.00000110    -0.00000009  0.92D-08  0.19D-07  1833.38
    6     9     9     1.08273137    -0.60045396  -192.26011174    -0.00000121    -0.00000011  0.13D-07  0.24D-07  1833.38
    6    10    10     1.08273117    -0.60045386  -192.26011164    -0.00000123    -0.00000012  0.14D-07  0.25D-07  1833.38
    6    11    11     1.08273116    -0.60045382  -192.26011160    -0.00000122    -0.00000011  0.13D-07  0.25D-07  1833.38
    6    12    12     1.08309993    -0.59945090  -192.25702766    -0.00000156    -0.00000012  0.14D-07  0.24D-07  1833.38
    7     1     1     1.08657809    -0.61321482  -192.44837539    -0.00000009    -0.00000001  0.49D-09  0.10D-08  2177.58
    7     2     2     1.08657806    -0.61321482  -192.44837539    -0.00000009    -0.00000001  0.51D-09  0.10D-08  2177.58
    7     3     3     1.08657811    -0.61321482  -192.44837539    -0.00000009    -0.00000001  0.51D-09  0.10D-08  2177.58
    7     4     4     1.08282111    -0.59900482  -192.26423285    -0.00000011    -0.00000001  0.88D-09  0.17D-08  2177.58
    7     5     5     1.08282097    -0.59900474  -192.26423277    -0.00000011    -0.00000001  0.85D-09  0.17D-08  2177.58
    7     6     6     1.08282086    -0.59900468  -192.26423271    -0.00000011    -0.00000001  0.86D-09  0.17D-08  2177.58
    7     7     7     1.08282097    -0.59900467  -192.26423270    -0.00000011    -0.00000001  0.89D-09  0.17D-08  2177.58
    7     8     8     1.08282075    -0.59900454  -192.26423257    -0.00000011    -0.00000001  0.86D-09  0.17D-08  2177.58
    7     9     9     1.08273722    -0.60045410  -192.26011188    -0.00000014    -0.00000001  0.13D-08  0.24D-08  2177.58
    7    10    10     1.08273706    -0.60045400  -192.26011178    -0.00000015    -0.00000001  0.13D-08  0.25D-08  2177.58
    7    11    11     1.08273703    -0.60045396  -192.26011174    -0.00000014    -0.00000001  0.13D-08  0.24D-08  2177.58
    7    12    12     1.08310718    -0.59945105  -192.25702780    -0.00000015    -0.00000001  0.11D-08  0.19D-08  2177.58


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.6%
 S   1.0%  12.9%
 P   0.4%  48.7%  25.9%

 Initialization:   3.7%
 Other:            5.7%

 Total CPU:     2177.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//000          -0.0000000   0.9481217   0.0000000  -0.0000000  -0.0000000   0.0000003   0.0000000  -0.0000000
                            0.0000073  -0.1174413  -0.0000383   0.0000000
 2222222222//0000           0.0008077  -0.0000000   0.9481214  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000004
                            0.0000016   0.0000383  -0.1174411  -0.0000000
 2222222222/0/000           0.9481214   0.0000000  -0.0008077  -0.0000000  -0.0000006  -0.0000000  -0.0000000   0.0000000
                           -0.1174412  -0.0000073  -0.0000016  -0.0000000
 22222222220/0/00           0.0000000  -0.0000000   0.0000000  -0.0982756  -0.0000016  -0.0006356   0.7733350   0.0000109
                           -0.0000000  -0.0000000  -0.0000000   0.5510816
 222222222200/00/           0.0000000   0.0000000   0.0000000   0.7188741   0.0000006   0.0001576  -0.3015698   0.0000077
                           -0.0000000   0.0000000  -0.0000000   0.5510646
 2222222222/0000/           0.0831610   0.0000000  -0.0000708  -0.0000000   0.6751233   0.0000000   0.0000014  -0.0000000
                            0.6701531   0.0000419   0.0000091   0.0000000
 222222222200//00           0.0000000  -0.0831610  -0.0000000   0.0000895  -0.0000000   0.6751227   0.0005662   0.0000000
                            0.0000419  -0.6701535  -0.0002185   0.0000000
 2222222222/00/00           0.0000708  -0.0000000   0.0831609  -0.0000118  -0.0000000  -0.0000000  -0.0000110   0.6751223
                           -0.0000091  -0.0002185   0.6701542   0.0000000
 22222222220/00/0          -0.0000708   0.0000000  -0.0831606  -0.0000118   0.0000000   0.0000000  -0.0000110   0.6751202
                            0.0000091   0.0002185  -0.6701564  -0.0000000
 22222222220/000/          -0.0000000   0.0831610   0.0000000   0.0000895   0.0000000   0.6751193   0.0005662   0.0000000
                           -0.0000419   0.6701570   0.0002185  -0.0000000
 222222222200/0/0          -0.0831607  -0.0000000   0.0000708  -0.0000000   0.6751190  -0.0000000   0.0000014   0.0000000
                           -0.6701575  -0.0000419  -0.0000091  -0.0000000
 2222222222/000/0           0.0000000   0.0000000   0.0000000  -0.6205959   0.0000010   0.0004780  -0.4717894  -0.0000186
                           -0.0000000   0.0000000   0.0000000   0.5510643
 22222202222//000           0.0000000  -0.0763045  -0.0000000   0.0000000   0.0000000   0.0000004   0.0000000   0.0000000
                           -0.0000008   0.0121590   0.0000040  -0.0000000
 2222220222/2/000          -0.0763045  -0.0000000   0.0000650  -0.0000000   0.0000001   0.0000000   0.0000000  -0.0000000
                            0.0121592   0.0000008   0.0000002  -0.0000000
 2222220222//2000          -0.0000650   0.0000000  -0.0763045   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                           -0.0000002  -0.0000040   0.0121590   0.0000000
 22222202220/2/00          -0.0000000   0.0000000   0.0000000   0.0067465   0.0000001   0.0000469  -0.0570151  -0.0000008
                            0.0000000   0.0000000   0.0000000  -0.0411689
 22222202222/0/00           0.0000000   0.0000000  -0.0000000   0.0077283   0.0000001   0.0000467  -0.0568901  -0.0000008
                            0.0000000   0.0000000   0.0000000  -0.0411693
 222222022202/00/          -0.0000000  -0.0000000  -0.0000000  -0.0531313  -0.0000000  -0.0000112   0.0217494  -0.0000006
                            0.0000000  -0.0000000   0.0000000  -0.0411672
 222222022220/00/          -0.0000000  -0.0000000  -0.0000000  -0.0527479  -0.0000000  -0.0000120   0.0226653  -0.0000006
                            0.0000000  -0.0000000   0.0000000  -0.0411666

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000816   -0.000000    0.958023   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000031   -0.036558
             0.000000    0.000000
 2          -0.000000    0.958023    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.036558    0.000000
 3           0.958023    0.000000   -0.000816    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.036558    0.000031
            -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.699753    0.000127   -0.000000   -0.000017   -0.657201    0.000000   -0.000000
            -0.000000    0.000002
 5          -0.000000    0.000000    0.000000    0.000001   -0.000000    0.959983   -0.000000    0.000001   -0.000000    0.000003
             0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.000458    0.959983   -0.000000   -0.000000    0.000674   -0.000000    0.000000
            -0.000003    0.000000
 7          -0.000000    0.000000   -0.000000   -0.657201    0.000805    0.000002   -0.000016   -0.699753    0.000000    0.000000
            -0.000000   -0.000014
 8           0.000000    0.000000   -0.000000    0.000002    0.000000    0.000000    0.959983   -0.000023    0.000002   -0.000000
             0.000000   -0.000000
 9          -0.000001   -0.000002    0.037688    0.000000   -0.000000   -0.000003    0.000000    0.000000   -0.000013    0.959299
            -0.000060   -0.000000
 10         -0.000012    0.037688    0.000002    0.000000    0.000003   -0.000000   -0.000000    0.000000   -0.000313    0.000060
             0.959299    0.000000
 11          0.037688    0.000012    0.000001   -0.000000    0.000000    0.000000   -0.000002    0.000000    0.959299    0.000013
             0.000313   -0.000000
 12          0.000000   -0.000000    0.000000   -0.000011    0.000000   -0.000000   -0.000000   -0.000009    0.000000    0.000000
            -0.000000    0.959854

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958721   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000540    0.000000
             0.000000    0.000000
 2          -0.000000    0.958721    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000540
             0.000000   -0.000000
 3          -0.000000    0.000000    0.958721    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000540    0.000000
 4           0.000000   -0.000000    0.000000    0.959983   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.959983   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.959983    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.959983   -0.000000   -0.000000   -0.000000
             0.000000    0.000000
 8           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.959983    0.000000    0.000000
             0.000000    0.000000
 9           0.000540   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.960039   -0.000000
             0.000000    0.000000
 10          0.000000    0.000540   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.960039
            -0.000000    0.000000
 11          0.000000    0.000000    0.000540   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.960039    0.000000
 12          0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.959854


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95802312 (fixed)   0.95881906 (relaxed)   0.95872059 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00127864   -0.00222656   -0.50738248
 Singles      0.01927038   -0.06198329   -0.06782976
 Pairs        0.06741841   -0.00000000   -0.03800259
 Total        1.08796743   -0.06420985   -0.61321482
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83489779
 Nuclear energy                         0.00000000
 Kinetic energy                        62.95748126
 One electron energy                 -335.66662357
 Two electron energy                  143.21824818
 Virial quotient                       -3.05679915
 Correlation energy                    -0.61347760
 !MRCI STATE 1.1 Energy              -192.448375394593

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50234144 (Davidson, fixed reference)
 Cluster corrected energies          -192.50220435 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50234144 (Davidson, rotated reference)

 Cluster corrected energies          -192.50057957 (Pople, fixed reference)
 Cluster corrected energies          -192.50043717 (Pople, relaxed reference)
 Cluster corrected energies          -192.50057957 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95802348 (fixed)   0.95881907 (relaxed)   0.95872060 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00127864   -0.00222656   -0.50738241
 Singles      0.01927041   -0.06198339   -0.06782979
 Pairs        0.06741835   -0.00000000   -0.03800263
 Total        1.08796740   -0.06420995   -0.61321482
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83489779
 Nuclear energy                         0.00000000
 Kinetic energy                        62.95748432
 One electron energy                 -335.66662659
 Two electron energy                  143.21825120
 Virial quotient                       -3.05679900
 Correlation energy                    -0.61347760
 !MRCI STATE 2.1 Energy              -192.448375393056

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50234142 (Davidson, fixed reference)
 Cluster corrected energies          -192.50220433 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50234142 (Davidson, rotated reference)

 Cluster corrected energies          -192.50057955 (Pople, fixed reference)
 Cluster corrected energies          -192.50043715 (Pople, relaxed reference)
 Cluster corrected energies          -192.50057955 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95802311 (fixed)   0.95881905 (relaxed)   0.95872058 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00127864   -0.00222656   -0.50738238
 Singles      0.01927045   -0.06198338   -0.06782979
 Pairs        0.06741836   -0.00000000   -0.03800264
 Total        1.08796745   -0.06420995   -0.61321482
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83489779
 Nuclear energy                         0.00000000
 Kinetic energy                        62.95748292
 One electron energy                 -335.66662609
 Two electron energy                  143.21825070
 Virial quotient                       -3.05679907
 Correlation energy                    -0.61347760
 !MRCI STATE 3.1 Energy              -192.448375391596

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50234145 (Davidson, fixed reference)
 Cluster corrected energies          -192.50220436 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50234145 (Davidson, rotated reference)

 Cluster corrected energies          -192.50057958 (Pople, fixed reference)
 Cluster corrected energies          -192.50043718 (Pople, relaxed reference)
 Cluster corrected energies          -192.50057958 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.69975340 (fixed)   0.96013865 (relaxed)   0.95998319 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211147   -0.00371435   -0.49417936
 Singles      0.01968732   -0.06403102   -0.06987194
 Pairs        0.06330866   -0.00000088   -0.03495353
 Total        1.08510746   -0.06774624   -0.59900482
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66522803
 Nuclear energy                         0.00000000
 Kinetic energy                        62.74153221
 One electron energy                 -331.85778126
 Two electron energy                  139.59354840
 Virial quotient                       -3.06438536
 Correlation energy                    -0.59900482
 !MRCI STATE 4.1 Energy              -192.264232854898

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.31521263 (Davidson, fixed reference)
 Cluster corrected energies          -192.31500216 (Davidson, relaxed reference)
 Cluster corrected energies          -192.31521263 (Davidson, rotated reference)

 Cluster corrected energies          -192.31342989 (Pople, fixed reference)
 Cluster corrected energies          -192.31321233 (Pople, relaxed reference)
 Cluster corrected energies          -192.31342989 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95998327 (fixed)   0.96013870 (relaxed)   0.95998327 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211142   -0.00371436   -0.49418038
 Singles      0.01968722   -0.06403077   -0.06987183
 Pairs        0.06330861   -0.00000000   -0.03495252
 Total        1.08510726   -0.06774513   -0.59900474
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66522803
 Nuclear energy                         0.00000000
 Kinetic energy                        62.74151608
 One electron energy                 -331.85775780
 Two electron energy                  139.59352502
 Virial quotient                       -3.06438615
 Correlation energy                    -0.59900474
 !MRCI STATE 5.1 Energy              -192.264232774003

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.31521243 (Davidson, fixed reference)
 Cluster corrected energies          -192.31500200 (Davidson, relaxed reference)
 Cluster corrected energies          -192.31521243 (Davidson, rotated reference)

 Cluster corrected energies          -192.31342968 (Pople, fixed reference)
 Cluster corrected energies          -192.31321217 (Pople, relaxed reference)
 Cluster corrected energies          -192.31342968 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95998296 (fixed)   0.96013875 (relaxed)   0.95998330 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211147   -0.00371436   -0.49418039
 Singles      0.01968716   -0.06403076   -0.06987176
 Pairs        0.06330857   -0.00000001   -0.03495253
 Total        1.08510719   -0.06774512   -0.59900468
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66522803
 Nuclear energy                         0.00000000
 Kinetic energy                        62.74151561
 One electron energy                 -331.85775828
 Two electron energy                  139.59352557
 Virial quotient                       -3.06438617
 Correlation energy                    -0.59900468
 !MRCI STATE 6.1 Energy              -192.264232711898

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.31521232 (Davidson, fixed reference)
 Cluster corrected energies          -192.31500187 (Davidson, relaxed reference)
 Cluster corrected energies          -192.31521232 (Davidson, rotated reference)

 Cluster corrected energies          -192.31342958 (Pople, fixed reference)
 Cluster corrected energies          -192.31321204 (Pople, relaxed reference)
 Cluster corrected energies          -192.31342958 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.69975313 (fixed)   0.96013871 (relaxed)   0.95998327 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211143   -0.00371434   -0.49418728
 Singles      0.01968725   -0.06403094   -0.06987181
 Pairs        0.06330859    0.00000772   -0.03494558
 Total        1.08510727   -0.06773755   -0.59900467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66522803
 Nuclear energy                         0.00000000
 Kinetic energy                        62.74153264
 One electron energy                 -331.85778169
 Two electron energy                  139.59354898
 Virial quotient                       -3.06438534
 Correlation energy                    -0.59900467
 !MRCI STATE 7.1 Energy              -192.264232701908

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.31521236 (Davidson, fixed reference)
 Cluster corrected energies          -192.31500191 (Davidson, relaxed reference)
 Cluster corrected energies          -192.31521236 (Davidson, rotated reference)

 Cluster corrected energies          -192.31342962 (Pople, fixed reference)
 Cluster corrected energies          -192.31321208 (Pople, relaxed reference)
 Cluster corrected energies          -192.31342962 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95998335 (fixed)   0.96013880 (relaxed)   0.95998335 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211145   -0.00371436   -0.49418041
 Singles      0.01968708   -0.06403064   -0.06987162
 Pairs        0.06330854   -0.00000000   -0.03495250
 Total        1.08510708   -0.06774500   -0.59900454
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66522803
 Nuclear energy                         0.00000000
 Kinetic energy                        62.74151574
 One electron energy                 -331.85775810
 Two electron energy                  139.59352553
 Virial quotient                       -3.06438616
 Correlation energy                    -0.59900454
 !MRCI STATE 8.1 Energy              -192.264232565667

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.31521209 (Davidson, fixed reference)
 Cluster corrected energies          -192.31500164 (Davidson, relaxed reference)
 Cluster corrected energies          -192.31521209 (Davidson, rotated reference)

 Cluster corrected energies          -192.31342934 (Pople, fixed reference)
 Cluster corrected energies          -192.31321181 (Pople, relaxed reference)
 Cluster corrected energies          -192.31342934 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95929925 (fixed)   0.96020933 (relaxed)   0.96003915 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00207228   -0.00358539   -0.49580459
 Singles      0.01937888   -0.06375987   -0.06948638
 Pairs        0.06352979    0.00000000   -0.03516313
 Total        1.08498095   -0.06734526   -0.60045410
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65992056
 Nuclear energy                         0.00000000
 Kinetic energy                        62.77401906
 One electron energy                 -332.07000275
 Two electron energy                  139.80989087
 Virial quotient                       -3.06273383
 Correlation energy                    -0.60019132
 !MRCI STATE 9.1 Energy              -192.260111881371

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.31111671 (Davidson, fixed reference)
 Cluster corrected energies          -192.31088590 (Davidson, relaxed reference)
 Cluster corrected energies          -192.31111671 (Davidson, rotated reference)

 Cluster corrected energies          -192.30932787 (Pople, fixed reference)
 Cluster corrected energies          -192.30908934 (Pople, relaxed reference)
 Cluster corrected energies          -192.30932787 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95929927 (fixed)   0.96020940 (relaxed)   0.96003922 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00207227   -0.00358539   -0.49580461
 Singles      0.01937880   -0.06375983   -0.06948626
 Pairs        0.06352971   -0.00000000   -0.03516313
 Total        1.08498079   -0.06734522   -0.60045400
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65992056
 Nuclear energy                         0.00000000
 Kinetic energy                        62.77402131
 One electron energy                 -332.07000645
 Two electron energy                  139.80989466
 Virial quotient                       -3.06273372
 Correlation energy                    -0.60019122
 !MRCI STATE 10.1 Energy             -192.260111782198

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.31111650 (Davidson, fixed reference)
 Cluster corrected energies          -192.31088570 (Davidson, relaxed reference)
 Cluster corrected energies          -192.31111650 (Davidson, rotated reference)

 Cluster corrected energies          -192.30932766 (Pople, fixed reference)
 Cluster corrected energies          -192.30908914 (Pople, relaxed reference)
 Cluster corrected energies          -192.30932766 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95929928 (fixed)   0.96020942 (relaxed)   0.96003924 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00207227   -0.00358539   -0.49580468
 Singles      0.01937875   -0.06375973   -0.06948617
 Pairs        0.06352973    0.00000000   -0.03516311
 Total        1.08498075   -0.06734511   -0.60045396
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65992056
 Nuclear energy                         0.00000000
 Kinetic energy                        62.77402007
 One electron energy                 -332.07000617
 Two electron energy                  139.80989443
 Virial quotient                       -3.06273378
 Correlation energy                    -0.60019118
 !MRCI STATE 11.1 Energy             -192.260111739671

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.31111644 (Davidson, fixed reference)
 Cluster corrected energies          -192.31088563 (Davidson, relaxed reference)
 Cluster corrected energies          -192.31111644 (Davidson, rotated reference)

 Cluster corrected energies          -192.30932759 (Pople, fixed reference)
 Cluster corrected energies          -192.30908907 (Pople, relaxed reference)
 Cluster corrected energies          -192.30932759 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95985398 (fixed)   0.96000592 (relaxed)   0.95985399 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211652   -0.00372185   -0.00459793
 Singles      0.01952427   -0.06393294   -0.06968012
 Pairs        0.06375881   -0.53179626   -0.52517299
 Total        1.08539960   -0.59945105   -0.59945105
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65757675
 Nuclear energy                         0.00000000
 Kinetic energy                        62.74318330
 One electron energy                 -331.85898395
 Two electron energy                  139.60195615
 Virial quotient                       -3.06418989
 Correlation energy                    -0.59945105
 !MRCI STATE 12.1 Energy             -192.257027802456

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.30822068 (Davidson, fixed reference)
 Cluster corrected energies          -192.30801475 (Davidson, relaxed reference)
 Cluster corrected energies          -192.30822068 (Davidson, rotated reference)

 Cluster corrected energies          -192.30644261 (Pople, fixed reference)
 Cluster corrected energies          -192.30622964 (Pople, relaxed reference)
 Cluster corrected energies          -192.30644261 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      705.17       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3486.20   3483.45      1.90      0.05      0.58
 REAL TIME  *      3578.57 SEC
 DISK USED  *       741.54 MB (local),        8.75 GB (total)
 SF USED    *         7.36 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.50234144  AU                              
 SETTING HLSDIAG(2)     =      -192.50234142  AU                              
 SETTING HLSDIAG(3)     =      -192.50234145  AU                              
 SETTING HLSDIAG(4)     =      -192.31521263  AU                              
 SETTING HLSDIAG(5)     =      -192.31521243  AU                              
 SETTING HLSDIAG(6)     =      -192.31521232  AU                              
 SETTING HLSDIAG(7)     =      -192.31521236  AU                              
 SETTING HLSDIAG(8)     =      -192.31521209  AU                              
 SETTING HLSDIAG(9)     =      -192.31111671  AU                              
 SETTING HLSDIAG(10)    =      -192.31111650  AU                              
 SETTING HLSDIAG(11)    =      -192.31111644  AU                              
 SETTING HLSDIAG(12)    =      -192.30822068  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 22
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      111 conf      126 CSFs
 N elec internal:    18620 conf    47824 CSFs
 N-1 el internal:    13496 conf    51520 CSFs
 N-2 el internal:     5716 conf    27166 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      80 (  40  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.80123723
     2      -191.80123723
     3      -191.80123723
     4      -191.80123723
     5      -191.80123723
     6      -191.76776484
     7      -191.67033182
     8      -191.67033182
     9      -191.67033182
    10      -191.64810887
    11      -191.64810887
    12      -191.64810887
    13      -191.64810887
    14      -191.64810887
    15      -191.63238097

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3701D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4026D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3620D-06

 Number of blocks in overlap matrix:  1440   Smallest eigenvalue:  0.36D-06
 Number of N-2 electron functions:    2650
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2060800
 Number of doubly external configurations:       4245680
 Total number of contracted configurations:      6330630
 Total number of uncontracted configurations:   45449790

 Diagonal Coupling coefficients finished.               Storage:  21821162 words, CPU-Time:     61.78 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1285265 words, CPU-time:      0.18 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.80123723     0.00000000    -0.77421922  0.59D-01  0.11D+00    73.66
    1     2     2     1.00000000     0.00000000  -191.80123723     0.00000000    -0.77536707  0.61D-01  0.11D+00    73.66
    1     3     3     1.00000000     0.00000000  -191.80123723     0.00000000    -0.77523861  0.60D-01  0.11D+00    73.66
    1     4     4     1.00000000     0.00000000  -191.80123723    -0.00000000    -0.77532489  0.61D-01  0.11D+00    73.66
    1     5     5     1.00000000     0.00000000  -191.80123723     0.00000000    -0.77421395  0.59D-01  0.11D+00    73.66
    1     6     6     1.00000000     0.00000000  -191.76776484     0.00000000    -0.75535377  0.38D-01  0.11D+00    73.66
    1     7     7     1.00000000     0.00000000  -191.67033182     0.00000000    -0.73563717  0.42D-01  0.98D-01    73.66
    1     8     8     1.00000000     0.00000000  -191.67033182    -0.00000000    -0.73571817  0.42D-01  0.98D-01    73.66
    1     9     9     1.00000000     0.00000000  -191.67033182    -0.00000000    -0.73570678  0.42D-01  0.98D-01    73.66
    1    10    10     1.00000000     0.00000000  -191.64810887     0.00000000    -0.74618431  0.47D-01  0.10D+00    73.66
    1    11    11     1.00000000     0.00000000  -191.64810887     0.00000000    -0.74684085  0.48D-01  0.10D+00    73.66
    1    12    12     1.00000000     0.00000000  -191.64810887     0.00000000    -0.74680995  0.48D-01  0.10D+00    73.66
    1    13    13     1.00000000     0.00000000  -191.64810887    -0.00000000    -0.74674295  0.48D-01  0.10D+00    73.66
    1    14    14     1.00000000     0.00000000  -191.64810887     0.00000000    -0.74612044  0.47D-01  0.10D+00    73.66
    1    15    15     1.00000000     0.00000000  -191.63238097     0.00000000    -0.74761844  0.49D-01  0.10D+00    73.66
    2     1     1     1.09902375    -0.59982658  -192.40106382    -0.59982658    -0.01957368  0.34D-02  0.17D-02   373.61
    2     2     2     1.09900599    -0.59978130  -192.40101854    -0.59978130    -0.01962999  0.35D-02  0.17D-02   373.61
    2     3     3     1.09961311    -0.59948950  -192.40072674    -0.59948950    -0.01993462  0.37D-02  0.17D-02   373.61
    2     4     4     1.09972177    -0.59941191  -192.40064914    -0.59941191    -0.02001922  0.37D-02  0.17D-02   373.61
    2     5     5     1.09971362    -0.59938427  -192.40062150    -0.59938427    -0.02005066  0.37D-02  0.17D-02   373.61
    2     6     6     1.09238456    -0.59654681  -192.36431165    -0.59654681    -0.01752442  0.33D-02  0.17D-02   373.61
    2     7     7     1.08685598    -0.58365893  -192.25399075    -0.58365893    -0.01569919  0.23D-02  0.12D-02   373.61
    2     8     8     1.08689152    -0.58364527  -192.25397709    -0.58364527    -0.01571649  0.23D-02  0.12D-02   373.61
    2     9     9     1.08690130    -0.58363231  -192.25396412    -0.58363231    -0.01573004  0.23D-02  0.12D-02   373.61
    2    10    10     1.08901573    -0.58696195  -192.23507083    -0.58696195    -0.01691915  0.28D-02  0.13D-02   373.61
    2    11    11     1.08903620    -0.58695246  -192.23506133    -0.58695246    -0.01693483  0.28D-02  0.13D-02   373.61
    2    12    12     1.08947178    -0.58671809  -192.23482696    -0.58671809    -0.01719431  0.31D-02  0.13D-02   373.61
    2    13    13     1.08952513    -0.58668126  -192.23479013    -0.58668126    -0.01723952  0.31D-02  0.13D-02   373.61
    2    14    14     1.08953230    -0.58667998  -192.23478886    -0.58667998    -0.01724254  0.31D-02  0.13D-02   373.61
    2    15    15     1.09224520    -0.58779929  -192.22018026    -0.58779929    -0.01755649  0.38D-02  0.14D-02   373.61
    3     1     1     1.09039955    -0.61806572  -192.41930296    -0.01823914    -0.00052801  0.79D-04  0.74D-04   673.39
    3     2     2     1.09039104    -0.61806196  -192.41929919    -0.01828065    -0.00053107  0.79D-04  0.75D-04   673.39
    3     3     3     1.09045030    -0.61804911  -192.41928635    -0.01855961    -0.00054513  0.82D-04  0.77D-04   673.39
    3     4     4     1.09045135    -0.61804451  -192.41928174    -0.01863260    -0.00054906  0.83D-04  0.78D-04   673.39
    3     5     5     1.09043657    -0.61804439  -192.41928162    -0.01866012    -0.00054935  0.83D-04  0.78D-04   673.39
    3     6     6     1.08764844    -0.61325414  -192.38101898    -0.01670733    -0.00051988  0.54D-04  0.94D-04   673.39
    3     7     7     1.08181500    -0.59841702  -192.26874884    -0.01475809    -0.00030480  0.34D-04  0.35D-04   673.39
    3     8     8     1.08181816    -0.59841655  -192.26874836    -0.01477128    -0.00030542  0.34D-04  0.35D-04   673.39
    3     9     9     1.08181601    -0.59841626  -192.26874808    -0.01478396    -0.00030568  0.34D-04  0.35D-04   673.39
    3    10    10     1.08306438    -0.60278087  -192.25088975    -0.01581892    -0.00038524  0.51D-04  0.52D-04   673.39
    3    11    11     1.08306877    -0.60277979  -192.25088867    -0.01582733    -0.00038640  0.51D-04  0.52D-04   673.39
    3    12    12     1.08309973    -0.60276673  -192.25087561    -0.01604864    -0.00039899  0.52D-04  0.55D-04   673.39
    3    13    13     1.08310272    -0.60276527  -192.25087414    -0.01608401    -0.00040117  0.52D-04  0.56D-04   673.39
    3    14    14     1.08310082    -0.60276415  -192.25087303    -0.01608417    -0.00040134  0.52D-04  0.56D-04   673.39
    3    15    15     1.08448406    -0.60435208  -192.23673305    -0.01655279    -0.00046224  0.62D-04  0.74D-04   673.39
    4     1     1     1.09055467    -0.61864027  -192.41987750    -0.00057454    -0.00003435  0.45D-05  0.57D-05   975.08
    4     2     2     1.09055241    -0.61864001  -192.41987724    -0.00057805    -0.00003455  0.45D-05  0.57D-05   975.08
    4     3     3     1.09054806    -0.61863966  -192.41987690    -0.00059055    -0.00003494  0.45D-05  0.58D-05   975.08
    4     4     4     1.09054593    -0.61863950  -192.41987674    -0.00059499    -0.00003510  0.45D-05  0.58D-05   975.08
    4     5     5     1.09054505    -0.61863935  -192.41987658    -0.00059496    -0.00003517  0.45D-05  0.58D-05   975.08
    4     6     6     1.08894755    -0.61382619  -192.38159103    -0.00057205    -0.00003705  0.32D-05  0.74D-05   975.08
    4     7     7     1.08255881    -0.59874109  -192.26907291    -0.00032407    -0.00001411  0.27D-05  0.17D-05   975.08
    4     8     8     1.08255888    -0.59874106  -192.26907288    -0.00032451    -0.00001410  0.27D-05  0.17D-05   975.08
    4     9     9     1.08255864    -0.59874100  -192.26907282    -0.00032474    -0.00001413  0.27D-05  0.17D-05   975.08
    4    10    10     1.08383155    -0.60319691  -192.25130578    -0.00041603    -0.00002468  0.42D-05  0.46D-05   975.08
    4    11    11     1.08382855    -0.60319683  -192.25130571    -0.00041704    -0.00002553  0.44D-05  0.48D-05   975.08
    4    12    12     1.08383153    -0.60319670  -192.25130558    -0.00042997    -0.00002468  0.42D-05  0.46D-05   975.08
    4    13    13     1.08382880    -0.60319669  -192.25130557    -0.00043142    -0.00002550  0.44D-05  0.48D-05   975.08
    4    14    14     1.08382737    -0.60319641  -192.25130528    -0.00043226    -0.00002565  0.45D-05  0.48D-05   975.08
    4    15    15     1.08514432    -0.60486000  -192.23724097    -0.00050793    -0.00003487  0.60D-05  0.71D-05   975.08
    5     1     1     1.09070673    -0.61868087  -192.41991810    -0.00004060    -0.00000186  0.12D-06  0.36D-06  1276.51
    5     2     2     1.09070684    -0.61868085  -192.41991808    -0.00004085    -0.00000188  0.12D-06  0.36D-06  1276.51
    5     3     3     1.09070342    -0.61868084  -192.41991807    -0.00004118    -0.00000189  0.13D-06  0.37D-06  1276.51
    5     4     4     1.09070461    -0.61868083  -192.41991806    -0.00004133    -0.00000190  0.13D-06  0.37D-06  1276.51
    5     5     5     1.09070406    -0.61868080  -192.41991804    -0.00004146    -0.00000191  0.13D-06  0.37D-06  1276.51
    5     6     6     1.08948045    -0.61387037  -192.38163521    -0.00004418    -0.00000238  0.15D-06  0.49D-06  1276.51
    5     7     7     1.08272912    -0.59875745  -192.26908927    -0.00001636    -0.00000065  0.51D-07  0.13D-06  1276.51
    5     8     8     1.08272920    -0.59875742  -192.26908923    -0.00001636    -0.00000066  0.50D-07  0.13D-06  1276.51
    5     9     9     1.08272913    -0.59875739  -192.26908920    -0.00001638    -0.00000066  0.51D-07  0.13D-06  1276.51
    5    10    10     1.08409275    -0.60322865  -192.25133753    -0.00003174    -0.00000221  0.15D-06  0.55D-06  1276.51
    5    11    11     1.08409263    -0.60322853  -192.25133741    -0.00003170    -0.00000223  0.15D-06  0.55D-06  1276.51
    5    12    12     1.08409190    -0.60322843  -192.25133730    -0.00003173    -0.00000224  0.15D-06  0.56D-06  1276.51
    5    13    13     1.08409566    -0.60322787  -192.25133675    -0.00003118    -0.00000214  0.15D-06  0.53D-06  1276.51
    5    14    14     1.08409555    -0.60322766  -192.25133654    -0.00003125    -0.00000214  0.15D-06  0.53D-06  1276.51
    5    15    15     1.08543173    -0.60490412  -192.23728509    -0.00004411    -0.00000329  0.24D-06  0.79D-06  1276.51
    6     1     1     1.09069479    -0.61868306  -192.41992029    -0.00000219    -0.00000015  0.16D-07  0.27D-07  1573.32
    6     2     2     1.09069575    -0.61868305  -192.41992029    -0.00000220    -0.00000014  0.15D-07  0.26D-07  1573.32
    6     3     3     1.09069503    -0.61868305  -192.41992029    -0.00000221    -0.00000015  0.16D-07  0.27D-07  1573.32
    6     4     4     1.09069605    -0.61868305  -192.41992028    -0.00000222    -0.00000014  0.15D-07  0.26D-07  1573.32
    6     5     5     1.09069460    -0.61868305  -192.41992028    -0.00000225    -0.00000015  0.17D-07  0.28D-07  1573.32
    6     6     6     1.08950243    -0.61387330  -192.38163814    -0.00000293    -0.00000019  0.22D-07  0.32D-07  1573.32
    6     7     7     1.08273112    -0.59875822  -192.26909004    -0.00000077    -0.00000005  0.51D-08  0.11D-07  1573.32
    6     8     8     1.08273108    -0.59875820  -192.26909001    -0.00000078    -0.00000005  0.52D-08  0.12D-07  1573.32
    6     9     9     1.08273101    -0.59875816  -192.26908998    -0.00000078    -0.00000005  0.51D-08  0.11D-07  1573.32
    6    10    10     1.08410140    -0.60323158  -192.25134045    -0.00000292    -0.00000027  0.36D-07  0.49D-07  1573.32
    6    11    11     1.08410137    -0.60323148  -192.25134036    -0.00000295    -0.00000028  0.36D-07  0.50D-07  1573.32
    6    12    12     1.08410112    -0.60323139  -192.25134027    -0.00000296    -0.00000028  0.36D-07  0.50D-07  1573.32
    6    13    13     1.08410109    -0.60323074  -192.25133961    -0.00000287    -0.00000026  0.32D-07  0.46D-07  1573.32
    6    14    14     1.08410078    -0.60323053  -192.25133941    -0.00000287    -0.00000026  0.32D-07  0.46D-07  1573.32
    6    15    15     1.08543916    -0.60490841  -192.23728938    -0.00000429    -0.00000041  0.48D-07  0.81D-07  1573.32
    7     1     1     1.09071026    -0.61868322  -192.41992046    -0.00000017    -0.00000001  0.12D-08  0.26D-08  1873.64
    7     2     2     1.09071023    -0.61868322  -192.41992046    -0.00000017    -0.00000001  0.12D-08  0.26D-08  1873.64
    7     3     3     1.09071021    -0.61868322  -192.41992045    -0.00000017    -0.00000001  0.12D-08  0.26D-08  1873.64
    7     4     4     1.09071029    -0.61868322  -192.41992045    -0.00000017    -0.00000001  0.12D-08  0.25D-08  1873.64
    7     5     5     1.09071027    -0.61868321  -192.41992045    -0.00000017    -0.00000001  0.11D-08  0.25D-08  1873.64
    7     6     6     1.08951864    -0.61387352  -192.38163836    -0.00000022    -0.00000002  0.16D-08  0.30D-08  1873.64
    7     7     7     1.08273491    -0.59875829  -192.26909010    -0.00000006    -0.00000001  0.48D-09  0.11D-08  1873.64
    7     8     8     1.08273487    -0.59875826  -192.26909008    -0.00000006    -0.00000001  0.50D-09  0.11D-08  1873.64
    7     9     9     1.08273487    -0.59875823  -192.26909004    -0.00000006    -0.00000001  0.49D-09  0.11D-08  1873.64
    7    10    10     1.08411508    -0.60323190  -192.25134077    -0.00000032    -0.00000003  0.28D-08  0.57D-08  1873.64
    7    11    11     1.08411479    -0.60323181  -192.25134068    -0.00000032    -0.00000003  0.29D-08  0.58D-08  1873.64
    7    12    12     1.08411468    -0.60323172  -192.25134059    -0.00000033    -0.00000003  0.29D-08  0.58D-08  1873.64
    7    13    13     1.08411430    -0.60323104  -192.25133991    -0.00000030    -0.00000003  0.26D-08  0.52D-08  1873.64
    7    14    14     1.08411393    -0.60323084  -192.25133971    -0.00000030    -0.00000003  0.26D-08  0.52D-08  1873.64
    7    15    15     1.08546181    -0.60490890  -192.23728987    -0.00000049    -0.00000005  0.51D-08  0.12D-07  1873.64
    8     1     1     1.09071026    -0.61868322  -192.41992046    -0.00000000    -0.00000001  0.12D-08  0.26D-08  1992.64
    8     2     2     1.09071023    -0.61868322  -192.41992046    -0.00000000    -0.00000001  0.12D-08  0.26D-08  1992.64
    8     3     3     1.09071021    -0.61868322  -192.41992045    -0.00000000    -0.00000001  0.12D-08  0.26D-08  1992.64
    8     4     4     1.09071029    -0.61868322  -192.41992045    -0.00000000    -0.00000001  0.12D-08  0.25D-08  1992.64
    8     5     5     1.09071027    -0.61868321  -192.41992045    -0.00000000    -0.00000001  0.11D-08  0.25D-08  1992.64
    8     6     6     1.08951889    -0.61387352  -192.38163836    -0.00000000    -0.00000001  0.14D-08  0.27D-08  1992.64
    8     7     7     1.08273491    -0.59875829  -192.26909010    -0.00000000    -0.00000001  0.48D-09  0.11D-08  1992.64
    8     8     8     1.08273487    -0.59875826  -192.26909008     0.00000000    -0.00000001  0.50D-09  0.11D-08  1992.64
    8     9     9     1.08273487    -0.59875823  -192.26909004    -0.00000000    -0.00000001  0.49D-09  0.11D-08  1992.64
    8    10    10     1.08411508    -0.60323190  -192.25134077    -0.00000000    -0.00000003  0.28D-08  0.57D-08  1992.64
    8    11    11     1.08411479    -0.60323181  -192.25134068    -0.00000000    -0.00000003  0.29D-08  0.58D-08  1992.64
    8    12    12     1.08411468    -0.60323172  -192.25134059    -0.00000000    -0.00000003  0.29D-08  0.58D-08  1992.64
    8    13    13     1.08411430    -0.60323104  -192.25133991    -0.00000000    -0.00000003  0.26D-08  0.52D-08  1992.64
    8    14    14     1.08411393    -0.60323084  -192.25133971    -0.00000000    -0.00000003  0.26D-08  0.52D-08  1992.64
    8    15    15     1.08546749    -0.60490896  -192.23728994    -0.00000007    -0.00000000  0.47D-09  0.12D-08  1992.64


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   1.0%  11.7%
 P   0.5%  41.0%  32.3%

 Initialization:   3.2%
 Other:            8.4%

 Total CPU:     1992.6 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0000           0.9397017  -0.0032257   0.0008155   0.0000072  -0.0000003   0.0000000  -0.0000000  -0.0000000
                            0.0000000  -0.1593015   0.0000076  -0.0000023   0.0000012  -0.0000010  -0.0000000
 22222222220/\000           0.0032231   0.9396971   0.0030045  -0.0005806   0.0000048  -0.0000000  -0.0000000  -0.0000008
                            0.0000000  -0.0000076  -0.1593017   0.0000171   0.0000000   0.0000012  -0.0000000
 2222222222/0\000          -0.0008259  -0.0029972   0.9396755   0.0071217  -0.0003410   0.0000000  -0.0000000  -0.0000000
                           -0.0000004   0.0000023  -0.0000171  -0.1593014  -0.0000020   0.0000014   0.0000000
 2222222222002000          -0.0000002  -0.0001137   0.0015570  -0.1696670   0.7482720   0.5292317  -0.0000000  -0.0000000
                           -0.0000000   0.0000011  -0.0000009  -0.0000015   0.0328602  -0.1258511  -0.1322851
 222222222200/00\          -0.0000000  -0.0000194   0.0002657  -0.0289520   0.1276850   0.1356238   0.0000000   0.0000000
                            0.0000000  -0.0000063   0.0000055   0.0000090  -0.1941002   0.7433926   0.5335912
 22222222220/0\00           0.0000001   0.0000805  -0.0009616   0.1250513  -0.0387683   0.1356234  -0.0000000   0.0000000
                            0.0000000   0.0000071  -0.0000015  -0.0000113   0.7408377  -0.2035987   0.5336049
 2222222222020000           0.0000008   0.0004720  -0.0056351   0.7328377  -0.2271940   0.5292318   0.0000000  -0.0000000
                           -0.0000000  -0.0000012   0.0000002   0.0000019  -0.1254179   0.0344673  -0.1322873
 22222222220/000\           0.0003889   0.1133848   0.0003625  -0.0000701   0.0000006   0.0000000   0.0000672   0.6752216
                           -0.0000986   0.0000316   0.6653727  -0.0000712  -0.0000000  -0.0000049   0.0000000
 2222222222/0000\          -0.0000997  -0.0003616   0.1133821   0.0008593  -0.0000411   0.0000000   0.0000382   0.0000986
                            0.6752194  -0.0000095   0.0000712   0.6653751   0.0000085  -0.0000058  -0.0000000
 22222222220/00\0           0.1133850  -0.0003892   0.0000984   0.0000009  -0.0000000   0.0000000  -0.6752193   0.0000672
                            0.0000382   0.6653751  -0.0000316   0.0000095  -0.0000052   0.0000043   0.0000000
 2222222222/00\00           0.1133853  -0.0003892   0.0000984   0.0000009  -0.0000000   0.0000000   0.6752180  -0.0000672
                           -0.0000382   0.6653764  -0.0000316   0.0000095  -0.0000052   0.0000043   0.0000000
 222222222200/0\0          -0.0000996  -0.0003616   0.1133817   0.0008593  -0.0000411   0.0000000  -0.0000382  -0.0000986
                           -0.6752180  -0.0000095   0.0000712   0.6653767   0.0000085  -0.0000058  -0.0000000
 222222222200/\00           0.0003889   0.1133846   0.0003625  -0.0000701   0.0000006   0.0000000  -0.0000672  -0.6752157
                            0.0000986   0.0000316   0.6653789  -0.0000712  -0.0000000  -0.0000049   0.0000000
 2222222222200000          -0.0000006  -0.0003583   0.0040780  -0.5631708  -0.5210780   0.5292317   0.0000000  -0.0000000
                            0.0000000   0.0000001   0.0000007  -0.0000004   0.0925608   0.0913806  -0.1322858
 2222222222/000\0          -0.0000001  -0.0000611   0.0006959  -0.0960992  -0.0889163   0.1356234  -0.0000000   0.0000000
                           -0.0000000  -0.0000008  -0.0000040   0.0000023  -0.5467496  -0.5397832   0.5335973
 2222220222220000          -0.0000000  -0.0000091   0.0001252  -0.0136447   0.0601759  -0.0833864   0.0000000  -0.0000000
                           -0.0000000   0.0000001  -0.0000001  -0.0000001   0.0031858  -0.0122024   0.0230051
 2222220222022000          -0.0000000  -0.0000288   0.0003280  -0.0452901  -0.0419051  -0.0833864  -0.0000000  -0.0000000
                            0.0000000   0.0000000   0.0000001  -0.0000000   0.0089745   0.0088607   0.0230050
 2222220222202000           0.0000001   0.0000380  -0.0004532   0.0589347  -0.0182710  -0.0833864  -0.0000000  -0.0000000
                            0.0000000  -0.0000001   0.0000000   0.0000002  -0.0121609   0.0033422   0.0230048
 2222220222/\2000          -0.0755705   0.0002594  -0.0000656  -0.0000006   0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0000000   0.0154460  -0.0000007   0.0000002  -0.0000001   0.0000001   0.0000000
 22222202222/\000          -0.0002592  -0.0755703  -0.0002416   0.0000467  -0.0000004   0.0000000   0.0000000   0.0000001
                            0.0000000   0.0000007   0.0154459  -0.0000017  -0.0000000  -0.0000001   0.0000000
 2222220222/2\000           0.0000664   0.0002410  -0.0755685  -0.0005727   0.0000274  -0.0000000  -0.0000000   0.0000000
                            0.0000001  -0.0000002   0.0000017   0.0154460   0.0000002  -0.0000001  -0.0000000
 222222022202/00\           0.0000000   0.0000082  -0.0001002   0.0126599  -0.0118032  -0.0018080   0.0000000  -0.0000000
                           -0.0000000   0.0000004  -0.0000004  -0.0000006   0.0120399  -0.0545130  -0.0418441
 22222202220/2\00          -0.0000000  -0.0000070   0.0000866  -0.0107855   0.0135376  -0.0018080   0.0000000   0.0000000
                           -0.0000000  -0.0000005   0.0000001   0.0000008  -0.0543536   0.0127373  -0.0418446
 222222022220/00\          -0.0000000  -0.0000040   0.0000421  -0.0063308  -0.0161095  -0.0018080  -0.0000000  -0.0000000
                           -0.0000000   0.0000005  -0.0000004  -0.0000007   0.0161467  -0.0534404  -0.0418439
 22222202222/0\00          -0.0000000  -0.0000106   0.0001236  -0.0165516  -0.0050625  -0.0018079  -0.0000000   0.0000000
                            0.0000000  -0.0000005   0.0000001   0.0000008  -0.0532294   0.0168291  -0.0418446

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000001    0.954886    0.003275   -0.000839    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.059009    0.000052   -0.000202    0.000000    0.000000
 2           0.000610   -0.003278    0.954881   -0.003046    0.000059   -0.000000    0.000000   -0.000000    0.000000    0.000032
             0.000203    0.000188   -0.059009    0.000021   -0.000000
 3          -0.007231    0.000829    0.003053    0.954859   -0.000423    0.000000    0.000000    0.000000    0.000000   -0.000366
            -0.000051   -0.059008   -0.000189   -0.000257    0.000000
 4           0.949479    0.000007   -0.000590    0.007237    0.101267   -0.000000   -0.000000    0.000000    0.000000    0.049857
            -0.000000   -0.000447    0.000036    0.031564   -0.000000
 5          -0.101268   -0.000000    0.000005   -0.000346    0.949507    0.000000    0.000000    0.000000    0.000000    0.031565
             0.000000    0.000021   -0.000000   -0.049858    0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.955261    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000   -0.059775
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000096    0.000054    0.960023   -0.000000
            -0.000001    0.000000    0.000000    0.000000   -0.000000
 8          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.960023    0.000140   -0.000096   -0.000000
             0.000000    0.000000    0.000004    0.000000    0.000000
 9           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000140    0.960023   -0.000054   -0.000000
            -0.000000    0.000001   -0.000000    0.000000    0.000000
 10          0.000001    0.061636    0.000003   -0.000001   -0.000000   -0.000000   -0.000000    0.000000    0.000001   -0.000003
             0.957427   -0.000014    0.000045   -0.000009   -0.000000
 11         -0.000000   -0.000003    0.061636    0.000007    0.000000   -0.000000   -0.000004   -0.000000    0.000000   -0.000004
            -0.000045    0.000102    0.957427    0.000006   -0.000000
 12         -0.000001    0.000001   -0.000007    0.061636    0.000000    0.000000   -0.000000   -0.000001   -0.000000    0.000005
             0.000014    0.957427   -0.000102    0.000014    0.000000
 13          0.061468   -0.000000   -0.000000    0.000001    0.004547   -0.000000    0.000000   -0.000000    0.000000   -0.791919
            -0.000007    0.000012   -0.000000   -0.538081   -0.000007
 14         -0.004547    0.000000   -0.000000   -0.000001    0.061468    0.000000    0.000000   -0.000000   -0.000000   -0.538081
             0.000006   -0.000008   -0.000007    0.791919    0.000006
 15          0.000001    0.000000    0.000000   -0.000000   -0.000000    0.062185   -0.000000   -0.000000    0.000000   -0.000002
             0.000000   -0.000000    0.000000   -0.000010    0.956797

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956713    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.001231
             0.000004   -0.000001   -0.000000    0.000000    0.000000
 2           0.000000    0.956713   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000004
             0.001231   -0.000004    0.000001    0.000000   -0.000000
 3          -0.000000   -0.000000    0.956713    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000001
             0.000004    0.001231   -0.000009    0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.956713   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000001    0.000009    0.001230    0.000040    0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.956713    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000040    0.001230   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957129   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.001154
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.960023    0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.960023   -0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000
 9          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.960023   -0.000000
             0.000000   -0.000000    0.000000    0.000000   -0.000000
 10          0.001231   -0.000004    0.000001    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.959408
             0.000000   -0.000000   -0.000000   -0.000000    0.000000
 11          0.000004    0.001231    0.000004   -0.000001    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.959409    0.000000   -0.000000   -0.000000   -0.000000
 12         -0.000001   -0.000004    0.001231    0.000009   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.959409    0.000000    0.000000   -0.000000
 13         -0.000000    0.000001   -0.000009    0.001230   -0.000040    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.959409   -0.000000    0.000000
 14          0.000000    0.000000    0.000000    0.000040    0.001230    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.959409   -0.000000
 15          0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.001154    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.958815


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95488600 (fixed)   0.95681262 (relaxed)   0.95671276 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00167646   -0.00299850   -0.50666388
 Singles      0.02228141   -0.06617047   -0.07317850
 Pairs        0.06858093   -0.00000000   -0.03884084
 Total        1.09253880   -0.06916897   -0.61868322
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80063018
 Nuclear energy                         0.00000000
 Kinetic energy                        62.94097420
 One electron energy                 -335.51830303
 Two electron energy                  143.09838257
 Virial quotient                       -3.05714875
 Correlation energy                    -0.61929028
 !MRCI STATE 1.1 Energy              -192.419920458729

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47722884 (Davidson, fixed reference)
 Cluster corrected energies          -192.47708761 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47722884 (Davidson, rotated reference)

 Cluster corrected energies          -192.47624005 (Pople, fixed reference)
 Cluster corrected energies          -192.47609017 (Pople, relaxed reference)
 Cluster corrected energies          -192.47624005 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95488132 (fixed)   0.95681264 (relaxed)   0.95671277 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00167646   -0.00299850   -0.50666386
 Singles      0.02228142   -0.06617051   -0.07317850
 Pairs        0.06858089    0.00000000   -0.03884085
 Total        1.09253876   -0.06916901   -0.61868322
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80063018
 Nuclear energy                         0.00000000
 Kinetic energy                        62.94097393
 One electron energy                 -335.51830236
 Two electron energy                  143.09838190
 Virial quotient                       -3.05714876
 Correlation energy                    -0.61929028
 !MRCI STATE 2.1 Energy              -192.419920456495

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47722881 (Davidson, fixed reference)
 Cluster corrected energies          -192.47708759 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47722881 (Davidson, rotated reference)

 Cluster corrected energies          -192.47624003 (Pople, fixed reference)
 Cluster corrected energies          -192.47609015 (Pople, relaxed reference)
 Cluster corrected energies          -192.47624003 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95485929 (fixed)   0.95681265 (relaxed)   0.95671278 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00167646   -0.00299850   -0.50666383
 Singles      0.02228145   -0.06617056   -0.07317853
 Pairs        0.06858083   -0.00000000   -0.03884086
 Total        1.09253874   -0.06916906   -0.61868322
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80063018
 Nuclear energy                         0.00000000
 Kinetic energy                        62.94097478
 One electron energy                 -335.51830365
 Two electron energy                  143.09838320
 Virial quotient                       -3.05714872
 Correlation energy                    -0.61929028
 !MRCI STATE 3.1 Energy              -192.419920454159

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47722880 (Davidson, fixed reference)
 Cluster corrected energies          -192.47708757 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47722880 (Davidson, rotated reference)

 Cluster corrected energies          -192.47624001 (Pople, fixed reference)
 Cluster corrected energies          -192.47609013 (Pople, relaxed reference)
 Cluster corrected energies          -192.47624001 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.94947927 (fixed)   0.95681261 (relaxed)   0.95671275 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00167645   -0.00299849   -0.50666398
 Singles      0.02228128   -0.06617041   -0.07317846
 Pairs        0.06858108    0.00000006   -0.03884078
 Total        1.09253881   -0.06916884   -0.61868322
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80063017
 Nuclear energy                         0.00000000
 Kinetic energy                        62.94098311
 One electron energy                 -335.51831648
 Two electron energy                  143.09839603
 Virial quotient                       -3.05714831
 Correlation energy                    -0.61929028
 !MRCI STATE 4.1 Energy              -192.419920453029

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47722884 (Davidson, fixed reference)
 Cluster corrected energies          -192.47708762 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47722884 (Davidson, rotated reference)

 Cluster corrected energies          -192.47624006 (Pople, fixed reference)
 Cluster corrected energies          -192.47609018 (Pople, relaxed reference)
 Cluster corrected energies          -192.47624006 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.94950693 (fixed)   0.95681262 (relaxed)   0.95671276 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00167645   -0.00299850   -0.50666401
 Singles      0.02228123   -0.06617034   -0.07317842
 Pairs        0.06858111    0.00000002   -0.03884078
 Total        1.09253879   -0.06916881   -0.61868321
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80063017
 Nuclear energy                         0.00000000
 Kinetic energy                        62.94098235
 One electron energy                 -335.51831593
 Two electron energy                  143.09839548
 Virial quotient                       -3.05714835
 Correlation energy                    -0.61929028
 !MRCI STATE 5.1 Energy              -192.419920448184

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47722882 (Davidson, fixed reference)
 Cluster corrected energies          -192.47708760 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47722882 (Davidson, rotated reference)

 Cluster corrected energies          -192.47624004 (Pople, fixed reference)
 Cluster corrected energies          -192.47609016 (Pople, relaxed reference)
 Cluster corrected energies          -192.47624004 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95526094 (fixed)   0.95740158 (relaxed)   0.95712862 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00190059   -0.00273133   -0.56107713
 Singles      0.01502237   -0.05259084   -0.05662345
 Pairs        0.07466666    0.05001657    0.00382706
 Total        1.09158962   -0.00530561   -0.61387352
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.76721626
 Nuclear energy                         0.00000000
 Kinetic energy                        62.91154754
 One electron energy                 -335.20215622
 Two electron energy                  142.82051786
 Virial quotient                       -3.05797021
 Correlation energy                    -0.61442210
 !MRCI STATE 6.1 Energy              -192.381638361475

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.43791305 (Davidson, fixed reference)
 Cluster corrected energies          -192.43753066 (Davidson, relaxed reference)
 Cluster corrected energies          -192.43791305 (Davidson, rotated reference)

 Cluster corrected energies          -192.43689668 (Pople, fixed reference)
 Cluster corrected energies          -192.43649165 (Pople, relaxed reference)
 Cluster corrected energies          -192.43689668 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96002290 (fixed)   0.96018075 (relaxed)   0.96002290 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00210833   -0.00370900   -0.49389794
 Singles      0.01988111   -0.06413268   -0.07007551
 Pairs        0.06302824    0.00000000   -0.03478484
 Total        1.08501767   -0.06784167   -0.59875829
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67033182
 Nuclear energy                         0.00000000
 Kinetic energy                        62.74048082
 One electron energy                 -331.85797242
 Two electron energy                  139.58888231
 Virial quotient                       -3.06451413
 Correlation energy                    -0.59875829
 !MRCI STATE 7.1 Energy              -192.269090104100

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.31999514 (Davidson, fixed reference)
 Cluster corrected energies          -192.31978156 (Davidson, relaxed reference)
 Cluster corrected energies          -192.31999514 (Davidson, rotated reference)

 Cluster corrected energies          -192.31879284 (Pople, fixed reference)
 Cluster corrected energies          -192.31856909 (Pople, relaxed reference)
 Cluster corrected energies          -192.31879284 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96002291 (fixed)   0.96018076 (relaxed)   0.96002292 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00210832   -0.00370899   -0.49389787
 Singles      0.01988113   -0.06413274   -0.07007553
 Pairs        0.06302818   -0.00000000   -0.03478487
 Total        1.08501763   -0.06784174   -0.59875826
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67033182
 Nuclear energy                         0.00000000
 Kinetic energy                        62.74048153
 One electron energy                 -331.85797280
 Two electron energy                  139.58888272
 Virial quotient                       -3.06451410
 Correlation energy                    -0.59875826
 !MRCI STATE 8.1 Energy              -192.269090078354

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.31999509 (Davidson, fixed reference)
 Cluster corrected energies          -192.31978151 (Davidson, relaxed reference)
 Cluster corrected energies          -192.31999509 (Davidson, rotated reference)

 Cluster corrected energies          -192.31879278 (Pople, fixed reference)
 Cluster corrected energies          -192.31856904 (Pople, relaxed reference)
 Cluster corrected energies          -192.31879278 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96002291 (fixed)   0.96018076 (relaxed)   0.96002292 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00210832   -0.00370899   -0.49389784
 Singles      0.01988112   -0.06413274   -0.07007551
 Pairs        0.06302818   -0.00000000   -0.03478488
 Total        1.08501763   -0.06784173   -0.59875823
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67033182
 Nuclear energy                         0.00000000
 Kinetic energy                        62.74048196
 One electron energy                 -331.85797254
 Two electron energy                  139.58888249
 Virial quotient                       -3.06451408
 Correlation energy                    -0.59875823
 !MRCI STATE 9.1 Energy              -192.269090044978

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.31999505 (Davidson, fixed reference)
 Cluster corrected energies          -192.31978147 (Davidson, relaxed reference)
 Cluster corrected energies          -192.31999505 (Davidson, rotated reference)

 Cluster corrected energies          -192.31879275 (Pople, fixed reference)
 Cluster corrected energies          -192.31856900 (Pople, relaxed reference)
 Cluster corrected energies          -192.31879275 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95742732 (fixed)   0.95957218 (relaxed)   0.95940842 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211501   -0.00369191   -0.49718286
 Singles      0.01982781   -0.06436430   -0.07024803
 Pairs        0.06446518   -0.00000000   -0.03580100
 Total        1.08640799   -0.06805621   -0.60323190
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.64871593
 Nuclear energy                         0.00000000
 Kinetic energy                        62.79295537
 One electron energy                 -332.19494501
 Two electron energy                  139.94360424
 Virial quotient                       -3.06167053
 Correlation energy                    -0.60262484
 !MRCI STATE 10.1 Energy             -192.251340770145

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.30341237 (Davidson, fixed reference)
 Cluster corrected energies          -192.30318893 (Davidson, relaxed reference)
 Cluster corrected energies          -192.30341237 (Davidson, rotated reference)

 Cluster corrected energies          -192.30224351 (Pople, fixed reference)
 Cluster corrected energies          -192.30200887 (Pople, relaxed reference)
 Cluster corrected energies          -192.30224351 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95742743 (fixed)   0.95957231 (relaxed)   0.95940853 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211503   -0.00369191   -0.49718301
 Singles      0.01982761   -0.06436420   -0.07024787
 Pairs        0.06446509    0.00000000   -0.03580093
 Total        1.08640773   -0.06805611   -0.60323181
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.64871593
 Nuclear energy                         0.00000000
 Kinetic energy                        62.79295420
 One electron energy                 -332.19494435
 Two electron energy                  139.94360367
 Virial quotient                       -3.06167058
 Correlation energy                    -0.60262475
 !MRCI STATE 11.1 Energy             -192.251340681077

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.30341212 (Davidson, fixed reference)
 Cluster corrected energies          -192.30318866 (Davidson, relaxed reference)
 Cluster corrected energies          -192.30341212 (Davidson, rotated reference)

 Cluster corrected energies          -192.30224325 (Pople, fixed reference)
 Cluster corrected energies          -192.30200859 (Pople, relaxed reference)
 Cluster corrected energies          -192.30224325 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95742746 (fixed)   0.95957236 (relaxed)   0.95940856 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211507   -0.00369191   -0.49718308
 Singles      0.01982753   -0.06436409   -0.07024771
 Pairs        0.06446505   -0.00000000   -0.03580093
 Total        1.08640766   -0.06805600   -0.60323172
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.64871593
 Nuclear energy                         0.00000000
 Kinetic energy                        62.79295613
 One electron energy                 -332.19495008
 Two electron energy                  139.94360949
 Virial quotient                       -3.06167049
 Correlation energy                    -0.60262466
 !MRCI STATE 12.1 Energy             -192.251340592361

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.30341198 (Davidson, fixed reference)
 Cluster corrected energies          -192.30318849 (Davidson, relaxed reference)
 Cluster corrected energies          -192.30341198 (Davidson, rotated reference)

 Cluster corrected energies          -192.30224310 (Pople, fixed reference)
 Cluster corrected energies          -192.30200842 (Pople, relaxed reference)
 Cluster corrected energies          -192.30224310 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.79191933 (fixed)   0.95957252 (relaxed)   0.95940872 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211510   -0.00369191   -0.49718693
 Singles      0.01982697   -0.06436349   -0.07024671
 Pairs        0.06446524    0.00000407   -0.03579740
 Total        1.08640731   -0.06805133   -0.60323104
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.64871594
 Nuclear energy                         0.00000000
 Kinetic energy                        62.79293015
 One electron energy                 -332.19494326
 Two electron energy                  139.94360334
 Virial quotient                       -3.06167174
 Correlation energy                    -0.60262398
 !MRCI STATE 13.1 Energy             -192.251339913152

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.30341103 (Davidson, fixed reference)
 Cluster corrected energies          -192.30318753 (Davidson, relaxed reference)
 Cluster corrected energies          -192.30341103 (Davidson, rotated reference)

 Cluster corrected energies          -192.30224215 (Pople, fixed reference)
 Cluster corrected energies          -192.30200745 (Pople, relaxed reference)
 Cluster corrected energies          -192.30224215 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.79191945 (fixed)   0.95957269 (relaxed)   0.95940885 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00211517   -0.00369191   -0.49718010
 Singles      0.01982661   -0.06436317   -0.07024627
 Pairs        0.06446523   -0.00000366   -0.03580447
 Total        1.08640701   -0.06805874   -0.60323084
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.64871594
 Nuclear energy                         0.00000000
 Kinetic energy                        62.79292826
 One electron energy                 -332.19494708
 Two electron energy                  139.94360737
 Virial quotient                       -3.06167183
 Correlation energy                    -0.60262377
 !MRCI STATE 14.1 Energy             -192.251339709416

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.30341063 (Davidson, fixed reference)
 Cluster corrected energies          -192.30318708 (Davidson, relaxed reference)
 Cluster corrected energies          -192.30341063 (Davidson, rotated reference)

 Cluster corrected energies          -192.30224174 (Pople, fixed reference)
 Cluster corrected energies          -192.30200699 (Pople, relaxed reference)
 Cluster corrected energies          -192.30224174 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95679737 (fixed)   0.95900985 (relaxed)   0.95881536 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00210497   -0.00352098   -0.00502236
 Singles      0.01895715   -0.06133202   -0.06692896
 Pairs        0.06669025   -0.53938718   -0.53295765
 Total        1.08775236   -0.60424017   -0.60490896
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.63292955
 Nuclear energy                         0.00000000
 Kinetic energy                        62.82535249
 One electron energy                 -332.42439497
 Two electron energy                  140.18710504
 Virial quotient                       -3.05986807
 Correlation energy                    -0.60436039
 !MRCI STATE 15.1 Energy             -192.237289935070

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.29032399 (Davidson, fixed reference)
 Cluster corrected energies          -192.29005736 (Davidson, relaxed reference)
 Cluster corrected energies          -192.29032399 (Davidson, rotated reference)

 Cluster corrected energies          -192.28919370 (Pople, fixed reference)
 Cluster corrected energies          -192.28891310 (Pople, relaxed reference)
 Cluster corrected energies          -192.28919370 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1447.04       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6738.44   3252.23   3483.45      1.90      0.05      0.58
 REAL TIME  *      6932.19 SEC
 DISK USED  *         1.45 GB (local),       17.44 GB (total)
 SF USED    *         7.72 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -192.47722884  AU                              
 SETTING HLSDIAG(14)    =      -192.47722881  AU                              
 SETTING HLSDIAG(15)    =      -192.47722880  AU                              
 SETTING HLSDIAG(16)    =      -192.47722884  AU                              
 SETTING HLSDIAG(17)    =      -192.47722882  AU                              
 SETTING HLSDIAG(18)    =      -192.43791305  AU                              
 SETTING HLSDIAG(19)    =      -192.31999514  AU                              
 SETTING HLSDIAG(20)    =      -192.31999509  AU                              
 SETTING HLSDIAG(21)    =      -192.31999505  AU                              
 SETTING HLSDIAG(22)    =      -192.30341237  AU                              
 SETTING HLSDIAG(23)    =      -192.30341212  AU                              
 SETTING HLSDIAG(24)    =      -192.30341198  AU                              
 SETTING HLSDIAG(25)    =      -192.30341103  AU                              
 SETTING HLSDIAG(26)    =      -192.30341063  AU                              
 SETTING HLSDIAG(27)    =      -192.29032399  AU                              


         HLSDIAG
    -192.5023414
    -192.5023414
    -192.5023415
    -192.3152126
    -192.3152124
    -192.3152123
    -192.3152124
    -192.3152121
    -192.3111167
    -192.3111165
    -192.3111164
    -192.3082207
    -192.4772288
    -192.4772288
    -192.4772288
    -192.4772288
    -192.4772288
    -192.4379130
    -192.3199951
    -192.3199951
    -192.3199950
    -192.3034124
    -192.3034121
    -192.3034120
    -192.3034110
    -192.3034106
    -192.2903240
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -192.448375   -192.448375   -192.448375   -192.264233   -192.264233   -192.264233   -192.264233   -192.264233
                      -192.260112   -192.260112   -192.260112   -192.257028
 Replaced energies:   -192.502341   -192.502341   -192.502341   -192.315213   -192.315212   -192.315212   -192.315212   -192.315212
                      -192.311117   -192.311117   -192.311116   -192.308221

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies:   -192.419920   -192.419920   -192.419920   -192.419920   -192.419920   -192.381638   -192.269090   -192.269090
                      -192.269090   -192.251341   -192.251341   -192.251341   -192.251340   -192.251340   -192.237290
 Replaced energies:   -192.477229   -192.477229   -192.477229   -192.477229   -192.477229   -192.437913   -192.319995   -192.319995
                      -192.319995   -192.303412   -192.303412   -192.303412   -192.303411   -192.303411   -192.290324



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.50234145

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    3454.95       0.02       0.84       0.00       0.02    -985.80       0.74       0.28

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -906.19       0.00       0.70    -688.87      -0.03      -0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3454.95      -0.00      -0.00      -0.00     985.80       0.00       0.00       0.84     856.12       0.05

    4   4.1  1.0  1.0       0.00       0.00       0.00   41070.03       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02     906.19       0.00      -0.00       0.04    2581.59       2.62       0.00      -0.13    1562.88

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   41070.07       0.00       0.00       0.00       0.00       0.00
                           -0.84      -0.00    -985.80      -0.04      -0.00       0.01      -0.03    2132.88       0.02       0.55

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   41070.10       0.00       0.00       0.00       0.00
                           -0.00      -0.70      -0.00   -2581.59      -0.01      -0.00    3395.92       0.01       0.00      -1.20

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   41070.09       0.00       0.00       0.00
                           -0.02     688.87      -0.00      -2.62       0.03   -3395.92       0.00       0.00      -0.10    1188.05

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41070.15       0.00       0.00
                          985.80       0.03      -0.84      -0.00   -2132.88      -0.01      -0.00       0.00    1700.18       0.15

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41968.98       0.00
                           -0.74       0.00    -856.12       0.13      -0.02      -0.00       0.10   -1700.18      -0.00      -0.73

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41969.03
                           -0.28      -0.00      -0.05   -1562.88      -0.55       1.20   -1188.05      -0.15       0.73       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          856.12      -0.00      -0.74      -0.51    1700.17       0.00      -0.38      -0.02   -2252.42      -0.14

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1597.12       0.00      -0.00       0.00      -0.06      -0.00       0.00      -0.17    2794.87

   13   1.1  1.0  0.0       0.00    2443.02       0.00      -0.54       0.00     697.06       0.85       0.00       0.04    -605.37
                            0.00      -2.08      -0.00     101.47       0.00       1.25    -798.50      -0.01      -0.00       0.52

   14   2.1  1.0  0.0   -2443.02      -0.00       2.08       0.00    -697.06       0.00      -0.00      -0.00     605.37       0.04
                            2.08      -0.00    2443.02      -0.01       0.00      -0.00      -0.01     697.06       0.01       0.20

   15   3.1  1.0  0.0      -0.00      -2.08      -0.00    -742.24      -0.00      -0.76     311.35      -0.01      -0.00       0.52
                            0.00   -2443.02      -0.00       0.01      -0.00     697.06       1.26       0.00      -0.04     605.37

   16   4.1  1.0  0.0       0.54      -0.00     742.24       0.00      -0.20       0.00      -0.03   -1166.83      -0.18      -0.42
                         -101.47       0.01      -0.01       0.00   -2992.30      -0.03      -0.01      -0.20    -175.00       0.01

   17   5.1  1.0  0.0      -0.00     697.06       0.00       0.20      -0.00    1508.18       1.26       0.01      -0.08    1202.21
                           -0.00      -0.00       0.00    2992.30       0.00      -0.72     380.26       0.06      -0.00      -0.00

   18   6.1  1.0  0.0    -697.06      -0.00       0.76      -0.00   -1508.18       0.00      -0.00       2.49   -1202.20      -0.08
                           -1.25       0.00    -697.06       0.03       0.72      -0.00       0.02   -1508.18      -1.12       0.39

   19   7.1  1.0  0.0      -0.85       0.00    -311.35       0.03      -1.26       0.00       0.00   -2781.54      -1.00       0.18
                          798.50       0.01      -1.26       0.01    -380.26      -0.02      -0.00      -1.26    1377.14       0.11

   20   8.1  1.0  0.0      -0.00       0.00       0.01    1166.83      -0.01      -2.49    2781.54      -0.00      -0.00      -0.00
                            0.01    -697.06      -0.00       0.20      -0.06    1508.18       1.26       0.00       0.09   -1202.20

   21   9.1  1.0  0.0      -0.04    -605.37       0.00       0.18       0.08    1202.20       1.00       0.00      -0.00    1592.69
                            0.00      -0.01       0.04     175.00       0.00       1.12   -1377.14      -0.09      -0.00       0.02

   22  10.1  1.0  0.0     605.37      -0.04      -0.52       0.42   -1202.21       0.08      -0.18       0.00   -1592.69      -0.00
                           -0.52      -0.20    -605.37      -0.01       0.00      -0.39      -0.11    1202.20      -0.02      -0.00

   23  11.1  1.0  0.0       0.20      -0.01      -0.00   -1280.12      -0.39      -0.26     536.96      -0.01      -0.52       0.02
                           -0.00     605.37      -0.20       0.16       0.00    1202.21       0.99       0.39       0.10   -1592.69

   24  12.1  1.0  0.0      -0.96       0.00   -1129.33      -0.00       0.00       0.00       0.00      -0.04       0.03       0.64
                        -1129.31      -0.00       0.96      -0.00      -0.01       0.00      -0.00      -0.00   -1976.24      -0.12

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0       8.26       2.12      -0.01    -585.05       2.60       1.91   -1394.66      -0.03      -1.80      -0.46
                            0.00    2407.08       8.26       1.22       0.00    -756.20      -0.47       2.59       0.03    -523.44

   38   2.1  0.0  0.0    2407.06       7.68      -1.64       2.01     756.20       2.41       4.79       0.95    -523.44      -1.70
                            0.34      -8.26    2407.07       4.77       0.28       2.59       0.60     756.20       0.38       1.97

   39   3.1  0.0  0.0       7.69   -2407.01      -5.65      -0.61       2.42    -756.18      -1.84     -11.05      -1.71     523.42
                           20.42       2.09       7.68   -1500.29      -2.87      -0.30    -190.66       2.39      -4.44      -0.45

   40   4.1  0.0  0.0      -0.96     -18.24     614.65      -0.03      -0.47      -5.73      -0.04    1474.92       0.32       4.01
                        -2654.85       0.02       0.77     -11.37     447.83      -0.00      -1.44      -0.47     577.30       0.03

   41   5.1  0.0  0.0      -2.30       0.87   -2710.77      -0.01       0.00       0.27      -0.00     334.46      -0.01      -0.38
                          823.06      -0.00      -0.69       0.54    1444.58       0.00       0.07       0.00    -178.98      -0.01

   42   6.1  0.0  0.0       3.30      -0.00    3877.44      -0.00       0.00       0.00      -0.00      -0.00       0.01       0.21
                         3877.43       0.00      -3.30      -0.00      -0.00      -0.00      -0.00       0.00    -651.17      -0.04

   43   7.1  0.0  0.0       0.07      -0.04      -0.00    1603.05       0.15       0.27    -672.43       0.02       0.12      -0.07
                           -0.00     702.47      -0.07      -0.21       0.00   -1505.49      -1.16      -0.15      -0.07    1196.41

   44   8.1  0.0  0.0     702.47      -0.10      -0.60      -0.16    1505.50      -0.22       0.07      -0.00    1196.42      -0.10
                           -0.60      -0.07    -702.48      -0.01       0.00       0.15       0.28   -1505.49       0.02       0.27

   45   9.1  0.0  0.0      -0.10    -702.47       0.00      -0.29      -0.22   -1505.49      -1.22      -0.00      -0.10   -1196.42
                            0.00      -0.04       0.10    -219.16      -0.00      -1.33    1724.56       0.24       0.00      -0.07

   46  10.1  0.0  0.0      -0.03      -0.01      -0.01    -911.39       0.06       1.96   -2172.61      -0.04       0.08       0.02
                            0.01    -698.25      -0.03      -0.12      -0.01   -1178.02      -0.98       0.06      -0.12    1618.08

   47  11.1  0.0  0.0    -698.25       0.07       0.60       0.04    1178.01      -0.13       0.11       0.00    1618.07      -0.07
                           -0.60       0.03    -698.25      -0.27       0.02       0.06      -0.05    1178.03      -0.02      -0.60

   48  12.1  0.0  0.0       0.07     698.25       0.01      -0.17      -0.13   -1178.01      -1.02      -0.02      -0.07   -1618.08
                           -0.01      -0.01       0.07   -2337.23       0.01       0.54    -297.02      -0.17       0.03       0.02

   49  13.1  0.0  0.0      -0.17       0.01    -203.68      -0.03      -0.00      -0.02      -0.02    2279.61      -0.01      -0.17
                          777.47       0.01      -0.66      -0.03     624.34       0.01      -0.00      -0.00   -1801.62      -0.13

   50  14.1  0.0  0.0       0.67      -0.01     780.12      -0.02      -0.01       0.01      -0.02     595.20       0.01       0.60
                         -213.67      -0.00       0.19       0.02    2271.80      -0.01       0.01      -0.01     495.14       0.04

   51  15.1  0.0  0.0      -1.22       0.00   -1428.21       0.00      -0.00      -0.00      -0.00       0.02      -0.04      -0.88
                        -1428.19      -0.00       1.22       0.00      -0.00       0.00      -0.00      -0.00    2709.85       0.17


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00       0.00   -2443.02      -0.00       0.54      -0.00    -697.06      -0.85      -0.00
                         -856.12       0.00      -0.00      -2.08      -0.00     101.47       0.00       1.25    -798.50      -0.01

    2   2.1  1.0  1.0       0.00       0.00    2443.02      -0.00      -2.08      -0.00     697.06      -0.00       0.00       0.00
                            0.00   -1597.12       2.08       0.00    2443.02      -0.01       0.00      -0.00      -0.01     697.06

    3   3.1  1.0  1.0       0.00       0.00       0.00       2.08      -0.00     742.24       0.00       0.76    -311.35       0.01
                            0.74      -0.00       0.00   -2443.02       0.00       0.01      -0.00     697.06       1.26       0.00

    4   4.1  1.0  1.0       0.00       0.00      -0.54       0.00    -742.24       0.00       0.20      -0.00       0.03    1166.83
                            0.51       0.00    -101.47       0.01      -0.01      -0.00   -2992.30      -0.03      -0.01      -0.20

    5   5.1  1.0  1.0       0.00       0.00       0.00    -697.06      -0.00      -0.20      -0.00   -1508.18      -1.26      -0.01
                        -1700.17      -0.00      -0.00      -0.00       0.00    2992.30      -0.00      -0.72     380.26       0.06

    6   6.1  1.0  1.0       0.00       0.00     697.06       0.00      -0.76       0.00    1508.18       0.00       0.00      -2.49
                           -0.00       0.06      -1.25       0.00    -697.06       0.03       0.72       0.00       0.02   -1508.18

    7   7.1  1.0  1.0       0.00       0.00       0.85      -0.00     311.35      -0.03       1.26      -0.00       0.00    2781.54
                            0.38       0.00     798.50       0.01      -1.26       0.01    -380.26      -0.02       0.00      -1.26

    8   8.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.01   -1166.83       0.01       2.49   -2781.54      -0.00
                            0.02      -0.00       0.01    -697.06      -0.00       0.20      -0.06    1508.18       1.26      -0.00

    9   9.1  1.0  1.0       0.00       0.00       0.04     605.37      -0.00      -0.18      -0.08   -1202.20      -1.00      -0.00
                         2252.42       0.17       0.00      -0.01       0.04     175.00       0.00       1.12   -1377.14      -0.09

   10  10.1  1.0  1.0       0.00       0.00    -605.37       0.04       0.52      -0.42    1202.21      -0.08       0.18      -0.00
                            0.14   -2794.87      -0.52      -0.20    -605.37      -0.01       0.00      -0.39      -0.11    1202.20

   11  11.1  1.0  1.0   41969.04       0.00      -0.20       0.01       0.00    1280.12       0.39       0.26    -536.96       0.01
                           -0.00      -0.91      -0.00     605.37      -0.20       0.16       0.00    1202.21       0.99       0.39

   12  12.1  1.0  1.0       0.00   42604.59       0.96      -0.00    1129.33       0.00      -0.00      -0.00      -0.00       0.04
                            0.91       0.00   -1129.31      -0.00       0.96      -0.00      -0.01       0.00      -0.00      -0.00

   13   1.1  1.0  0.0      -0.20       0.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1129.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0       0.01      -0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                         -605.37       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0       0.00    1129.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.20      -0.96      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0    1280.12       0.00       0.00       0.00       0.00   41070.03       0.00       0.00       0.00       0.00
                           -0.16       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0       0.39      -0.00       0.00       0.00       0.00       0.00   41070.07       0.00       0.00       0.00
                           -0.00       0.01      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0       0.26      -0.00       0.00       0.00       0.00       0.00       0.00   41070.10       0.00       0.00
                        -1202.21      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0    -536.96      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   41070.09       0.00
                           -0.99       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0       0.01       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00   41070.15
                           -0.39       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0       0.52      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.10    1976.24      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0      -0.02      -0.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1592.69       0.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0       0.00    1976.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0   -1976.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00    2443.02       0.00      -0.54       0.00     697.06       0.85       0.00
                           -0.00      -0.00       0.00      -2.08      -0.00     101.47       0.00       1.25    -798.50      -0.01

   26   2.1  1.0 -1.0       0.00       0.00   -2443.02      -0.00       2.08       0.00    -697.06       0.00      -0.00      -0.00
                           -0.00      -0.00       2.08      -0.00    2443.02      -0.01       0.00      -0.00      -0.01     697.06

   27   3.1  1.0 -1.0       0.00       0.00      -0.00      -2.08      -0.00    -742.24      -0.00      -0.76     311.35      -0.01
                           -0.00      -0.00       0.00   -2443.02      -0.00       0.01      -0.00     697.06       1.26       0.00

   28   4.1  1.0 -1.0       0.00       0.00       0.54      -0.00     742.24       0.00      -0.20       0.00      -0.03   -1166.83
                           -0.00      -0.00    -101.47       0.01      -0.01       0.00   -2992.30      -0.03      -0.01      -0.20

   29   5.1  1.0 -1.0       0.00       0.00      -0.00     697.06       0.00       0.20      -0.00    1508.18       1.26       0.01
                           -0.00      -0.00      -0.00      -0.00       0.00    2992.30       0.00      -0.72     380.26       0.06

   30   6.1  1.0 -1.0       0.00       0.00    -697.06      -0.00       0.76      -0.00   -1508.18       0.00      -0.00       2.49
                           -0.00      -0.00      -1.25       0.00    -697.06       0.03       0.72      -0.00       0.02   -1508.18

   31   7.1  1.0 -1.0       0.00       0.00      -0.85       0.00    -311.35       0.03      -1.26       0.00       0.00   -2781.54
                           -0.00      -0.00     798.50       0.01      -1.26       0.01    -380.26      -0.02      -0.00      -1.26

   32   8.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.01    1166.83      -0.01      -2.49    2781.54      -0.00
                           -0.00      -0.00       0.01    -697.06      -0.00       0.20      -0.06    1508.18       1.26       0.00

   33   9.1  1.0 -1.0       0.00       0.00      -0.04    -605.37       0.00       0.18       0.08    1202.20       1.00       0.00
                           -0.00      -0.00       0.00      -0.01       0.04     175.00       0.00       1.12   -1377.14      -0.09

   34  10.1  1.0 -1.0       0.00       0.00     605.37      -0.04      -0.52       0.42   -1202.21       0.08      -0.18       0.00
                           -0.00      -0.00      -0.52      -0.20    -605.37      -0.01       0.00      -0.39      -0.11    1202.20

   35  11.1  1.0 -1.0       0.00       0.00       0.20      -0.01      -0.00   -1280.12      -0.39      -0.26     536.96      -0.01
                           -0.00      -0.00      -0.00     605.37      -0.20       0.16       0.00    1202.21       0.99       0.39

   36  12.1  1.0 -1.0       0.00       0.00      -0.96       0.00   -1129.33      -0.00       0.00       0.00       0.00      -0.04
                           -0.00      -0.00   -1129.31      -0.00       0.96      -0.00      -0.01       0.00      -0.00      -0.00

   37   1.1  0.0  0.0      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.97       0.00    3404.12       0.00       0.09      -4.44   -1069.43      -0.01       5.84      -0.94

   38   2.1  0.0  0.0      -0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -523.43      -0.00     -11.68       1.84      10.87   -1294.40       3.67      -2.20    1702.70      -3.41

   39   3.1  0.0  0.0       1.40      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.67      -0.00       0.05     -20.89   -3404.03      -4.16      -0.93      11.57       5.44    1069.40

   40   4.1  0.0  0.0    -133.66      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.33      -0.00       0.00    2885.28     -25.80       0.61      -0.01   -1452.53      -2.27       8.10

   41   5.1  0.0  0.0     589.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00      -0.00    2669.63       1.24       0.20       0.00    1569.96       1.33      -0.39

   42   6.1  0.0  0.0    -651.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00      -0.00    5483.52       0.00      -0.00      -0.00       0.00       0.00      -0.00

   43   7.1  0.0  0.0      -0.00   -2466.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.27      -0.14    -993.44      -0.00       0.90      -0.19    2129.08       0.00      -0.14      -0.12

   44   8.1  0.0  0.0       0.02       0.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1196.41      -0.36       0.10      -0.00       0.14   -1957.15      -0.21       1.51   -1487.76      -0.37

   45   9.1  0.0  0.0      -0.39       0.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.17   -2466.04       0.90      -0.00     993.45       0.32      -0.12      -0.00       0.25   -2129.08

   46  10.1  0.0  0.0       0.02      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.60      -0.00    -987.48      -0.00       0.83      -0.10   -1665.95      -0.03       0.12      -0.02

   47  11.1  0.0  0.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1618.09       0.00       0.05      -0.01       0.11   -2016.43       0.07      -1.94    2652.49       0.19

   48  12.1  0.0  0.0      -0.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.17       0.00       0.83       0.00     987.48       0.19      -0.02       0.05      -0.31    1665.96

   49  13.1  0.0  0.0     471.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02      -0.00       0.01    -811.41       0.01      -0.31       0.01   -2340.90      -1.96       0.02

   50  14.1  0.0  0.0   -1807.78      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00      -0.01    -801.11      -0.01       0.33      -0.01    2371.07       1.97      -0.01

   51  15.1  0.0  0.0    2709.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04       0.00       0.00   -2019.78      -0.00      -0.00       0.00      -0.05      -0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0      -0.04     605.37       0.20      -0.96       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.52       0.00    1129.31       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0    -605.37      -0.04      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.20    -605.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00      -0.52      -0.00   -1129.33       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04     605.37       0.20      -0.96       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0       0.18       0.42   -1280.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -175.00       0.01      -0.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0       0.08   -1202.21      -0.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0    1202.20       0.08      -0.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.12       0.39   -1202.21      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0       1.00      -0.18     536.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1377.14       0.11      -0.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0       0.00       0.00      -0.01      -0.04       0.00       0.00       0.00       0.00       0.00       0.00
                            0.09   -1202.20      -0.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00   -1592.69      -0.52       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.02      -0.10    1976.24       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0    1592.69      -0.00       0.02       0.64       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00    1592.69       0.12       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0       0.52      -0.02       0.00   -1976.27       0.00       0.00       0.00       0.00       0.00       0.00
                            0.10   -1592.69      -0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0      -0.03      -0.64    1976.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1976.24      -0.12      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   -2443.02      -0.00       0.54      -0.00    -697.06
                            0.00       0.00       0.00       0.00      -0.00      -2.08      -0.00     101.47       0.00       1.25

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00    2443.02      -0.00      -2.08      -0.00     697.06      -0.00
                            0.00       0.00       0.00       0.00       2.08       0.00    2443.02      -0.01       0.00      -0.00

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       2.08      -0.00     742.24       0.00       0.76
                            0.00       0.00       0.00       0.00       0.00   -2443.02       0.00       0.01      -0.00     697.06

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.54       0.00    -742.24       0.00       0.20      -0.00
                            0.00       0.00       0.00       0.00    -101.47       0.01      -0.01      -0.00   -2992.30      -0.03

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00    -697.06      -0.00      -0.20      -0.00   -1508.18
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    2992.30      -0.00      -0.72

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00     697.06       0.00      -0.76       0.00    1508.18       0.00
                            0.00       0.00       0.00       0.00      -1.25       0.00    -697.06       0.03       0.72       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.85      -0.00     311.35      -0.03       1.26      -0.00
                            0.00       0.00       0.00       0.00     798.50       0.01      -1.26       0.01    -380.26      -0.02

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01   -1166.83       0.01       2.49
                            0.00       0.00       0.00       0.00       0.01    -697.06      -0.00       0.20      -0.06    1508.18

   21   9.1  1.0  0.0   41968.98       0.00       0.00       0.00       0.04     605.37      -0.00      -0.18      -0.08   -1202.20
                            0.00       0.00       0.00       0.00       0.00      -0.01       0.04     175.00       0.00       1.12

   22  10.1  1.0  0.0       0.00   41969.03       0.00       0.00    -605.37       0.04       0.52      -0.42    1202.21      -0.08
                           -0.00       0.00       0.00       0.00      -0.52      -0.20    -605.37      -0.01       0.00      -0.39

   23  11.1  1.0  0.0       0.00       0.00   41969.04       0.00      -0.20       0.01       0.00    1280.12       0.39       0.26
                           -0.00      -0.00       0.00       0.00      -0.00     605.37      -0.20       0.16       0.00    1202.21

   24  12.1  1.0  0.0       0.00       0.00       0.00   42604.59       0.96      -0.00    1129.33       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00   -1129.31      -0.00       0.96      -0.00      -0.01       0.00

   25   1.1  1.0 -1.0       0.04    -605.37      -0.20       0.96       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.52       0.00    1129.31      -0.00       0.00   -3454.95      -0.02      -0.84      -0.00

   26   2.1  1.0 -1.0     605.37       0.04       0.01      -0.00       0.00       0.01       0.00       0.00       0.00       0.00
                            0.01       0.20    -605.37       0.00      -0.00       0.00      -0.00     906.19      -0.00      -0.70

   27   3.1  1.0 -1.0      -0.00       0.52       0.00    1129.33       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04     605.37       0.20      -0.96    3454.95       0.00       0.00       0.00    -985.80      -0.00

   28   4.1  1.0 -1.0      -0.18      -0.42    1280.12       0.00       0.00       0.00       0.00   41070.03       0.00       0.00
                         -175.00       0.01      -0.16       0.00       0.02    -906.19      -0.00       0.00      -0.04   -2581.59

   29   5.1  1.0 -1.0      -0.08    1202.21       0.39      -0.00       0.00       0.00       0.00       0.00   41070.07       0.00
                           -0.00      -0.00      -0.00       0.01       0.84       0.00     985.80       0.04       0.00      -0.01

   30   6.1  1.0 -1.0   -1202.20      -0.08       0.26      -0.00       0.00       0.00       0.00       0.00       0.00   41070.10
                           -1.12       0.39   -1202.21      -0.00       0.00       0.70       0.00    2581.59       0.01       0.00

   31   7.1  1.0 -1.0      -1.00       0.18    -536.96      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1377.14       0.11      -0.99       0.00       0.02    -688.87       0.00       2.62      -0.03    3395.92

   32   8.1  1.0 -1.0      -0.00      -0.00       0.01       0.04       0.00       0.00       0.00       0.00       0.00       0.00
                            0.09   -1202.20      -0.39       0.00    -985.80      -0.03       0.84       0.00    2132.88       0.01

   33   9.1  1.0 -1.0      -0.00    1592.69       0.52      -0.03       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.02      -0.10    1976.24       0.74      -0.00     856.12      -0.13       0.02       0.00

   34  10.1  1.0 -1.0   -1592.69      -0.00      -0.02      -0.64       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02      -0.00    1592.69       0.12       0.28       0.00       0.05    1562.88       0.55      -1.20

   35  11.1  1.0 -1.0      -0.52       0.02       0.00    1976.27       0.00       0.00       0.00       0.00       0.00       0.00
                            0.10   -1592.69       0.00       0.03    -856.12       0.00       0.74       0.51   -1700.17      -0.00

   36  12.1  1.0 -1.0       0.03       0.64   -1976.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1976.24      -0.12      -0.03      -0.00       0.00   -1597.12      -0.00       0.00      -0.00       0.06

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       8.26       2.12      -0.01    -585.05       2.60       1.91
                         -740.25      -0.05      -0.66       0.00      -0.00   -2407.08      -8.26      -1.22      -0.00     756.20

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00    2407.06       7.68      -1.64       2.01     756.20       2.41
                            2.54      -0.40      -2.36       0.03      -0.34       8.26   -2407.07      -4.77      -0.28      -2.59

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       7.69   -2407.01      -5.65      -0.61       2.42    -756.18
                           -0.65       4.30     740.23       0.00     -20.42      -2.09      -7.68    1500.29       2.87       0.30

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.96     -18.24     614.65      -0.03      -0.47      -5.73
                            0.03    -627.41       5.41      -0.00    2654.85      -0.02      -0.77      11.37    -447.83       0.00

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00      -2.30       0.87   -2710.77      -0.01       0.00       0.27
                            0.04    -580.51      -0.46       0.00    -823.06       0.00       0.69      -0.54   -1444.58      -0.00

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00       3.30      -0.00    3877.44      -0.00       0.00       0.00
                            0.06    -920.89      -0.30       0.00   -3877.43      -0.00       3.30       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.07      -0.04      -0.00    1603.05       0.15       0.27
                        -1692.00      -0.11       0.07      -0.35       0.00    -702.47       0.07       0.21      -0.00    1505.49

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00     702.47      -0.10      -0.60      -0.16    1505.50      -0.22
                            0.17      -0.00       0.25   -3487.57       0.60       0.07     702.48       0.01      -0.00      -0.15

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.10    -702.47       0.00      -0.29      -0.22   -1505.49
                            0.07      -0.55    1691.99       0.51      -0.00       0.04      -0.10     219.16       0.00       1.33

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.03      -0.01      -0.01    -911.39       0.06       1.96
                         2288.32       0.15       0.06       0.00      -0.01     698.25       0.03       0.12       0.01    1178.02

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00    -698.25       0.07       0.60       0.04    1178.01      -0.13
                           -0.11       0.01      -0.24       0.06       0.60      -0.03     698.25       0.27      -0.02      -0.06

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.07     698.25       0.01      -0.17      -0.13   -1178.01
                            0.06       0.74   -2288.32      -0.00       0.01       0.01      -0.07    2337.23      -0.01      -0.54

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.17       0.01    -203.68      -0.03      -0.00      -0.02
                           -0.14    1880.29       0.58      -0.00    -777.47      -0.01       0.66       0.03    -624.34      -0.01

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.67      -0.01     780.12      -0.02      -0.01       0.01
                           -0.10    1856.43       0.63      -0.00     213.67       0.00      -0.19      -0.02   -2271.80       0.01

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00      -1.22       0.00   -1428.21       0.00      -0.00      -0.00
                           -0.24    3832.33       1.25      -0.00    1428.19       0.00      -1.22      -0.00       0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       8.26    2407.06       7.69      -0.96
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.34     -20.42    2654.85

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.12       7.68   -2407.01     -18.24
                            0.00       0.00       0.00       0.00       0.00       0.00   -2407.08       8.26      -2.09      -0.02

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -1.64      -5.65     614.65
                            0.00       0.00       0.00       0.00       0.00       0.00      -8.26   -2407.07      -7.68      -0.77

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -585.05       2.01      -0.61      -0.03
                            0.00       0.00       0.00       0.00       0.00       0.00      -1.22      -4.77    1500.29      11.37

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.60     756.20       2.42      -0.47
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.28       2.87    -447.83

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.91       2.41    -756.18      -5.73
                            0.00       0.00       0.00       0.00       0.00       0.00     756.20      -2.59       0.30       0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   -1394.66       4.79      -1.84      -0.04
                            0.00       0.00       0.00       0.00       0.00       0.00       0.47      -0.60     190.66       1.44

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.03       0.95     -11.05    1474.92
                            0.00       0.00       0.00       0.00       0.00       0.00      -2.59    -756.20      -2.39       0.47

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -1.80    -523.44      -1.71       0.32
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.03      -0.38       4.44    -577.30

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.46      -1.70     523.42       4.01
                            0.00       0.00       0.00       0.00       0.00       0.00     523.44      -1.97       0.45      -0.03

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.10       1.40    -133.66
                            0.00       0.00       0.00       0.00       0.00       0.00       1.97     523.43       1.67      -0.33

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.02       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0      -0.85      -0.00      -0.04     605.37       0.20      -0.96       0.00       0.00       0.00       0.00
                         -798.50      -0.01      -0.00       0.52       0.00    1129.31   -3404.12      11.68      -0.05      -0.00

   14   2.1  1.0  0.0       0.00       0.00    -605.37      -0.04      -0.01       0.00       0.00       0.00       0.00       0.00
                           -0.01     697.06       0.01       0.20    -605.37       0.00      -0.00      -1.84      20.89   -2885.28

   15   3.1  1.0  0.0    -311.35       0.01       0.00      -0.52      -0.00   -1129.33       0.00       0.00       0.00       0.00
                            1.26       0.00      -0.04     605.37       0.20      -0.96      -0.09     -10.87    3404.03      25.80

   16   4.1  1.0  0.0       0.03    1166.83       0.18       0.42   -1280.12      -0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.20    -175.00       0.01      -0.16       0.00       4.44    1294.40       4.16      -0.61

   17   5.1  1.0  0.0      -1.26      -0.01       0.08   -1202.21      -0.39       0.00       0.00       0.00       0.00       0.00
                          380.26       0.06      -0.00      -0.00      -0.00       0.01    1069.43      -3.67       0.93       0.01

   18   6.1  1.0  0.0       0.00      -2.49    1202.20       0.08      -0.26       0.00       0.00       0.00       0.00       0.00
                            0.02   -1508.18      -1.12       0.39   -1202.21      -0.00       0.01       2.20     -11.57    1452.53

   19   7.1  1.0  0.0       0.00    2781.54       1.00      -0.18     536.96       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.26    1377.14       0.11      -0.99       0.00      -5.84   -1702.70      -5.44       2.27

   20   8.1  1.0  0.0   -2781.54      -0.00       0.00       0.00      -0.01      -0.04       0.00       0.00       0.00       0.00
                            1.26      -0.00       0.09   -1202.20      -0.39       0.00       0.94       3.41   -1069.40      -8.10

   21   9.1  1.0  0.0      -1.00      -0.00      -0.00   -1592.69      -0.52       0.03       0.00       0.00       0.00       0.00
                        -1377.14      -0.09       0.00       0.02      -0.10    1976.24     740.25      -2.54       0.65      -0.03

   22  10.1  1.0  0.0       0.18      -0.00    1592.69      -0.00       0.02       0.64       0.00       0.00       0.00       0.00
                           -0.11    1202.20      -0.02       0.00    1592.69       0.12       0.05       0.40      -4.30     627.41

   23  11.1  1.0  0.0    -536.96       0.01       0.52      -0.02       0.00   -1976.27       0.00       0.00       0.00       0.00
                            0.99       0.39       0.10   -1592.69      -0.00       0.03       0.66       2.36    -740.23      -5.41

   24  12.1  1.0  0.0      -0.00       0.04      -0.03      -0.64    1976.27       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -1976.24      -0.12      -0.03       0.00      -0.00      -0.03      -0.00       0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       8.26    2407.06       7.69      -0.96
                           -0.02     985.80      -0.74      -0.28     856.12      -0.00       0.00       0.34      20.42   -2654.85

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.12       7.68   -2407.01     -18.24
                          688.87       0.03       0.00      -0.00      -0.00    1597.12    2407.08      -8.26       2.09       0.02

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -1.64      -5.65     614.65
                           -0.00      -0.84    -856.12      -0.05      -0.74       0.00       8.26    2407.07       7.68       0.77

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -585.05       2.01      -0.61      -0.03
                           -2.62      -0.00       0.13   -1562.88      -0.51      -0.00       1.22       4.77   -1500.29     -11.37

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.60     756.20       2.42      -0.47
                            0.03   -2132.88      -0.02      -0.55    1700.17       0.00       0.00       0.28      -2.87     447.83

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.91       2.41    -756.18      -5.73
                        -3395.92      -0.01      -0.00       1.20       0.00      -0.06    -756.20       2.59      -0.30      -0.00

   31   7.1  1.0 -1.0   41070.09       0.00       0.00       0.00       0.00       0.00   -1394.66       4.79      -1.84      -0.04
                           -0.00      -0.00       0.10   -1188.05      -0.38      -0.00      -0.47       0.60    -190.66      -1.44

   32   8.1  1.0 -1.0       0.00   41070.15       0.00       0.00       0.00       0.00      -0.03       0.95     -11.05    1474.92
                            0.00      -0.00   -1700.18      -0.15      -0.02       0.00       2.59     756.20       2.39      -0.47

   33   9.1  1.0 -1.0       0.00       0.00   41968.98       0.00       0.00       0.00      -1.80    -523.44      -1.71       0.32
                           -0.10    1700.18       0.00       0.73   -2252.42      -0.17       0.03       0.38      -4.44     577.30

   34  10.1  1.0 -1.0       0.00       0.00       0.00   41969.03       0.00       0.00      -0.46      -1.70     523.42       4.01
                         1188.05       0.15      -0.73      -0.00      -0.14    2794.87    -523.44       1.97      -0.45       0.03

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   41969.04       0.00      -0.00      -0.10       1.40    -133.66
                            0.38       0.02    2252.42       0.14       0.00       0.91      -1.97    -523.43      -1.67       0.33

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   42604.59      -0.02       0.00      -0.00      -0.00
                            0.00      -0.00       0.17   -2794.87      -0.91      -0.00       0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0   -1394.66      -0.03      -1.80      -0.46      -0.00      -0.02    5511.58       0.00       0.00       0.00
                            0.47      -2.59      -0.03     523.44       1.97      -0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       4.79       0.95    -523.44      -1.70      -0.10       0.00       0.00    5511.59       0.00       0.00
                           -0.60    -756.20      -0.38      -1.97     523.43       0.00      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0      -1.84     -11.05      -1.71     523.42       1.40      -0.00       0.00       0.00    5511.59       0.00
                          190.66      -2.39       4.44       0.45       1.67       0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0      -0.04    1474.92       0.32       4.01    -133.66      -0.00       0.00       0.00       0.00    5511.58
                            1.44       0.47    -577.30      -0.03      -0.33       0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0      -0.00     334.46      -0.01      -0.38     589.46       0.00       0.00       0.00       0.00       0.00
                           -0.07      -0.00     178.98       0.01       0.01       0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0      -0.00      -0.00       0.01       0.21    -651.17      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     651.17       0.04       0.01       0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0    -672.43       0.02       0.12      -0.07      -0.00   -2466.08       0.00       0.00       0.00       0.00
                            1.16       0.15       0.07   -1196.41      -0.27       0.14      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0       0.07      -0.00    1196.42      -0.10       0.02       0.25       0.00       0.00       0.00       0.00
                           -0.28    1505.49      -0.02      -0.27    1196.41       0.36      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0      -1.22      -0.00      -0.10   -1196.42      -0.39       0.14       0.00       0.00       0.00       0.00
                        -1724.56      -0.24      -0.00       0.07      -0.17    2466.04      -0.00      -0.00      -0.00      -0.00

   46  10.1  0.0  0.0   -2172.61      -0.04       0.08       0.02       0.02      -0.03       0.00       0.00       0.00       0.00
                            0.98      -0.06       0.12   -1618.08      -0.60       0.00      -0.00      -0.00      -0.00      -0.00

   47  11.1  0.0  0.0       0.11       0.00    1618.07      -0.07       0.01       0.00       0.00       0.00       0.00       0.00
                            0.05   -1178.03       0.02       0.60   -1618.09      -0.00      -0.00      -0.00      -0.00      -0.00

   48  12.1  0.0  0.0      -1.02      -0.02      -0.07   -1618.08      -0.55       0.00       0.00       0.00       0.00       0.00
                          297.02       0.17      -0.03      -0.02       0.17      -0.00      -0.00      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0      -0.02    2279.61      -0.01      -0.17     471.99       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    1801.62       0.13       0.02       0.00      -0.00      -0.00      -0.00      -0.00

   50  14.1  0.0  0.0      -0.02     595.20       0.01       0.60   -1807.78      -0.00       0.00       0.00       0.00       0.00
                           -0.01       0.01    -495.14      -0.04       0.01       0.00      -0.00      -0.00      -0.00      -0.00

   51  15.1  0.0  0.0      -0.00       0.02      -0.04      -0.88    2709.88       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00   -2709.85      -0.17      -0.04      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.0  1.0      -2.30       3.30       0.07     702.47      -0.10      -0.03    -698.25       0.07      -0.17       0.67
                         -823.06   -3877.43       0.00       0.60      -0.00      -0.01       0.60       0.01    -777.47     213.67

    2   2.1  1.0  1.0       0.87      -0.00      -0.04      -0.10    -702.47      -0.01       0.07     698.25       0.01      -0.01
                            0.00      -0.00    -702.47       0.07       0.04     698.25      -0.03       0.01      -0.01       0.00

    3   3.1  1.0  1.0   -2710.77    3877.44      -0.00      -0.60       0.00      -0.01       0.60       0.01    -203.68     780.12
                            0.69       3.30       0.07     702.48      -0.10       0.03     698.25      -0.07       0.66      -0.19

    4   4.1  1.0  1.0      -0.01      -0.00    1603.05      -0.16      -0.29    -911.39       0.04      -0.17      -0.03      -0.02
                           -0.54       0.00       0.21       0.01     219.16       0.12       0.27    2337.23       0.03      -0.02

    5   5.1  1.0  1.0       0.00       0.00       0.15    1505.50      -0.22       0.06    1178.01      -0.13      -0.00      -0.01
                        -1444.58       0.00      -0.00      -0.00       0.00       0.01      -0.02      -0.01    -624.34   -2271.80

    6   6.1  1.0  1.0       0.27       0.00       0.27      -0.22   -1505.49       1.96      -0.13   -1178.01      -0.02       0.01
                           -0.00       0.00    1505.49      -0.15       1.33    1178.02      -0.06      -0.54      -0.01       0.01

    7   7.1  1.0  1.0      -0.00      -0.00    -672.43       0.07      -1.22   -2172.61       0.11      -1.02      -0.02      -0.02
                           -0.07       0.00       1.16      -0.28   -1724.56       0.98       0.05     297.02       0.00      -0.01

    8   8.1  1.0  1.0     334.46      -0.00       0.02      -0.00      -0.00      -0.04       0.00      -0.02    2279.61     595.20
                           -0.00      -0.00       0.15    1505.49      -0.24      -0.06   -1178.03       0.17       0.00       0.01

    9   9.1  1.0  1.0      -0.01       0.01       0.12    1196.42      -0.10       0.08    1618.07      -0.07      -0.01       0.01
                          178.98     651.17       0.07      -0.02      -0.00       0.12       0.02      -0.03    1801.62    -495.14

   10  10.1  1.0  1.0      -0.38       0.21      -0.07      -0.10   -1196.42       0.02      -0.07   -1618.08      -0.17       0.60
                            0.01       0.04   -1196.41      -0.27       0.07   -1618.08       0.60      -0.02       0.13      -0.04

   11  11.1  1.0  1.0     589.46    -651.17      -0.00       0.02      -0.39       0.02       0.01      -0.55     471.99   -1807.78
                            0.01       0.01      -0.27    1196.41      -0.17      -0.60   -1618.09       0.17       0.02       0.01

   12  12.1  1.0  1.0       0.00      -0.00   -2466.08       0.25       0.14      -0.03       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.14       0.36    2466.04       0.00      -0.00      -0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     993.44      -0.10      -0.90     987.48      -0.05      -0.83      -0.01       0.01

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2669.63   -5483.52       0.00       0.00       0.00       0.00       0.01      -0.00     811.41     801.11

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.24      -0.00      -0.90      -0.14    -993.45      -0.83      -0.11    -987.48      -0.01       0.01

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.20       0.00       0.19    1957.15      -0.32       0.10    2016.43      -0.19       0.31      -0.33

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00   -2129.08       0.21       0.12    1665.95      -0.07       0.02      -0.01       0.01

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1569.96      -0.00      -0.00      -1.51       0.00       0.03       1.94      -0.05    2340.90   -2371.07

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.33      -0.00       0.14    1487.76      -0.25      -0.12   -2652.49       0.31       1.96      -1.97

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.39       0.00       0.12       0.37    2129.08       0.02      -0.19   -1665.96      -0.02       0.01

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      -0.06    1692.00      -0.17      -0.07   -2288.32       0.11      -0.06       0.14       0.10

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          580.51     920.89       0.11       0.00       0.55      -0.15      -0.01      -0.74   -1880.29   -1856.43

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.46       0.30      -0.07      -0.25   -1691.99      -0.06       0.24    2288.32      -0.58      -0.63

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.35    3487.57      -0.51      -0.00      -0.06       0.00       0.00       0.00

   25   1.1  1.0 -1.0      -2.30       3.30       0.07     702.47      -0.10      -0.03    -698.25       0.07      -0.17       0.67
                          823.06    3877.43      -0.00      -0.60       0.00       0.01      -0.60      -0.01     777.47    -213.67

   26   2.1  1.0 -1.0       0.87      -0.00      -0.04      -0.10    -702.47      -0.01       0.07     698.25       0.01      -0.01
                           -0.00       0.00     702.47      -0.07      -0.04    -698.25       0.03      -0.01       0.01      -0.00

   27   3.1  1.0 -1.0   -2710.77    3877.44      -0.00      -0.60       0.00      -0.01       0.60       0.01    -203.68     780.12
                           -0.69      -3.30      -0.07    -702.48       0.10      -0.03    -698.25       0.07      -0.66       0.19

   28   4.1  1.0 -1.0      -0.01      -0.00    1603.05      -0.16      -0.29    -911.39       0.04      -0.17      -0.03      -0.02
                            0.54      -0.00      -0.21      -0.01    -219.16      -0.12      -0.27   -2337.23      -0.03       0.02

   29   5.1  1.0 -1.0       0.00       0.00       0.15    1505.50      -0.22       0.06    1178.01      -0.13      -0.00      -0.01
                         1444.58      -0.00       0.00       0.00      -0.00      -0.01       0.02       0.01     624.34    2271.80

   30   6.1  1.0 -1.0       0.27       0.00       0.27      -0.22   -1505.49       1.96      -0.13   -1178.01      -0.02       0.01
                            0.00      -0.00   -1505.49       0.15      -1.33   -1178.02       0.06       0.54       0.01      -0.01

   31   7.1  1.0 -1.0      -0.00      -0.00    -672.43       0.07      -1.22   -2172.61       0.11      -1.02      -0.02      -0.02
                            0.07      -0.00      -1.16       0.28    1724.56      -0.98      -0.05    -297.02      -0.00       0.01

   32   8.1  1.0 -1.0     334.46      -0.00       0.02      -0.00      -0.00      -0.04       0.00      -0.02    2279.61     595.20
                            0.00       0.00      -0.15   -1505.49       0.24       0.06    1178.03      -0.17      -0.00      -0.01

   33   9.1  1.0 -1.0      -0.01       0.01       0.12    1196.42      -0.10       0.08    1618.07      -0.07      -0.01       0.01
                         -178.98    -651.17      -0.07       0.02       0.00      -0.12      -0.02       0.03   -1801.62     495.14

   34  10.1  1.0 -1.0      -0.38       0.21      -0.07      -0.10   -1196.42       0.02      -0.07   -1618.08      -0.17       0.60
                           -0.01      -0.04    1196.41       0.27      -0.07    1618.08      -0.60       0.02      -0.13       0.04

   35  11.1  1.0 -1.0     589.46    -651.17      -0.00       0.02      -0.39       0.02       0.01      -0.55     471.99   -1807.78
                           -0.01      -0.01       0.27   -1196.41       0.17       0.60    1618.09      -0.17      -0.02      -0.01

   36  12.1  1.0 -1.0       0.00      -0.00   -2466.08       0.25       0.14      -0.03       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.14      -0.36   -2466.04      -0.00       0.00       0.00      -0.00      -0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5511.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14140.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   40020.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   40020.40       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   40020.41       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   43659.89       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   43659.94       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43659.97       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43660.18       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   43660.27
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51

    1   1.1  1.0  1.0      -1.22
                         1428.19

    2   2.1  1.0  1.0       0.00
                            0.00

    3   3.1  1.0  1.0   -1428.21
                           -1.22

    4   4.1  1.0  1.0       0.00
                           -0.00

    5   5.1  1.0  1.0      -0.00
                            0.00

    6   6.1  1.0  1.0      -0.00
                           -0.00

    7   7.1  1.0  1.0      -0.00
                            0.00

    8   8.1  1.0  1.0       0.02
                            0.00

    9   9.1  1.0  1.0      -0.04
                        -2709.85

   10  10.1  1.0  1.0      -0.88
                           -0.17

   11  11.1  1.0  1.0    2709.88
                           -0.04

   12  12.1  1.0  1.0       0.00
                           -0.00

   13   1.1  1.0  0.0       0.00
                           -0.00

   14   2.1  1.0  0.0       0.00
                         2019.78

   15   3.1  1.0  0.0       0.00
                            0.00

   16   4.1  1.0  0.0       0.00
                            0.00

   17   5.1  1.0  0.0       0.00
                           -0.00

   18   6.1  1.0  0.0       0.00
                            0.05

   19   7.1  1.0  0.0       0.00
                            0.00

   20   8.1  1.0  0.0       0.00
                           -0.00

   21   9.1  1.0  0.0       0.00
                            0.24

   22  10.1  1.0  0.0       0.00
                        -3832.33

   23  11.1  1.0  0.0       0.00
                           -1.25

   24  12.1  1.0  0.0       0.00
                            0.00

   25   1.1  1.0 -1.0      -1.22
                        -1428.19

   26   2.1  1.0 -1.0       0.00
                           -0.00

   27   3.1  1.0 -1.0   -1428.21
                            1.22

   28   4.1  1.0 -1.0       0.00
                            0.00

   29   5.1  1.0 -1.0      -0.00
                           -0.00

   30   6.1  1.0 -1.0      -0.00
                            0.00

   31   7.1  1.0 -1.0      -0.00
                           -0.00

   32   8.1  1.0 -1.0       0.02
                           -0.00

   33   9.1  1.0 -1.0      -0.04
                         2709.85

   34  10.1  1.0 -1.0      -0.88
                            0.17

   35  11.1  1.0 -1.0    2709.88
                            0.04

   36  12.1  1.0 -1.0       0.00
                            0.00

   37   1.1  0.0  0.0       0.00
                            0.00

   38   2.1  0.0  0.0       0.00
                            0.00

   39   3.1  0.0  0.0       0.00
                            0.00

   40   4.1  0.0  0.0       0.00
                            0.00

   41   5.1  0.0  0.0       0.00
                            0.00

   42   6.1  0.0  0.0       0.00
                            0.00

   43   7.1  0.0  0.0       0.00
                            0.00

   44   8.1  0.0  0.0       0.00
                            0.00

   45   9.1  0.0  0.0       0.00
                            0.00

   46  10.1  0.0  0.0       0.00
                            0.00

   47  11.1  0.0  0.0       0.00
                            0.00

   48  12.1  0.0  0.0       0.00
                            0.00

   49  13.1  0.0  0.0       0.00
                            0.00

   50  14.1  0.0  0.0       0.00
                            0.00

   51  15.1  0.0  0.0   46532.46
                            0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 51)

    The diagonal matrixelements are shifted by   -192.50234145 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.002       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   41070.029       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   41070.074       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   41070.098       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   41070.089       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   41070.148
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -2.943      -0.000     143.505       0.002       1.768   -1129.247      -0.016

    2    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                2.943       0.000    3454.952      -0.017       0.000      -0.000      -0.016     985.794

    3    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000   -3454.952       0.000       0.009      -0.000     985.792       1.789       0.000

    4    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                             -143.505       0.017      -0.009       0.000   -4231.747      -0.037      -0.009      -0.283

    5    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.002      -0.000       0.000    4231.747       0.000      -1.012     537.763       0.083

    6    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -1.768       0.000    -985.792       0.037       1.012       0.000       0.035   -2132.893

    7    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                             1129.247       0.016      -1.789       0.009    -537.763      -0.035       0.000      -1.789

    8    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.016    -985.794      -0.000       0.283      -0.083    2132.893       1.789       0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.012       0.053     247.483       0.004       1.578   -1947.577      -0.134

   10    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               -0.729      -0.279    -856.126      -0.014       0.000      -0.554      -0.150    1700.174

   11    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     856.123      -0.279       0.229       0.000    1700.177       1.400       0.554

   12    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                            -1597.090      -0.000       1.361      -0.000      -0.011       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    3454.955       0.017       0.840       0.000       0.016    -985.795

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    -906.190       0.001       0.698    -688.865      -0.027

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3454.955      -0.000      -0.000      -0.000     985.796       0.000       0.002       0.840

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.017     906.190       0.000      -0.000       0.037    2581.592       2.616       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.840      -0.001    -985.796      -0.037      -0.000       0.007      -0.035    2132.876

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.698      -0.000   -2581.592      -0.007      -0.000    3395.919       0.010

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.016     688.865      -0.002      -2.616       0.035   -3395.919       0.000       0.004

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              985.795       0.027      -0.840      -0.000   -2132.876      -0.010      -0.004       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.741       0.000    -856.122       0.127      -0.023      -0.000       0.102   -1700.177

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.279      -0.000      -0.053   -1562.880      -0.552       1.204   -1188.046      -0.153

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              856.124      -0.000      -0.741      -0.510    1700.166       0.000      -0.384      -0.023

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1597.116       0.000      -0.000       0.000      -0.060      -0.000       0.000

    1    1  |0 0>              11.676       2.992      -0.009    -827.382       3.672       2.704   -1972.341      -0.045
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            3404.103      10.858      -2.318       2.841    1069.425       3.405       6.775       1.337
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              10.877   -3404.027      -7.987      -0.860       3.419   -1069.404      -2.608     -15.633
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -1.363     -25.799     869.252      -0.044      -0.661      -8.105      -0.056    2085.852
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -3.248       1.235   -3833.603      -0.008       0.005       0.388      -0.007     472.991
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               4.672      -0.000    5483.522      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.099      -0.056      -0.000    2267.057       0.214       0.376    -950.962       0.024
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>             993.441      -0.145      -0.846      -0.226    2129.096      -0.311       0.099      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>              -0.145    -993.445       0.000      -0.411      -0.311   -2129.082      -1.732      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>              -0.047      -0.014      -0.009   -1288.897       0.086       2.772   -3072.528      -0.053
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>            -987.476       0.106       0.849       0.061    1665.964      -0.178       0.149       0.006
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.106     987.473       0.013      -0.239      -0.178   -1665.960      -1.441      -0.034
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>              -0.245       0.013    -288.041      -0.046      -0.000      -0.021      -0.029    3223.849
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |0 0>               0.947      -0.009    1103.250      -0.023      -0.012       0.015      -0.034     841.735
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |0 0>              -1.721       0.000   -2019.787       0.000      -0.000      -0.000      -0.000       0.029
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -2.943      -0.000     143.505

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       2.943       0.000    3454.952      -0.017

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000   -3454.952       0.000       0.009

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000    -143.505       0.017      -0.009       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.002      -0.000       0.000    4231.747

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -1.768       0.000    -985.792       0.037

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1129.247       0.016      -1.789       0.009

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.016    -985.794      -0.000       0.283

    9    1  |1 1>+          41968.981       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.012       0.053     247.483

   10    1  |1 1>+              0.000   41969.025       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.729      -0.279    -856.126      -0.014

   11    1  |1 1>+              0.000       0.000   41969.040       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     856.123      -0.279       0.229

   12    1  |1 1>+              0.000       0.000       0.000   42604.585       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000   -1597.090      -0.000       1.361      -0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.000       0.002       0.000       0.000       0.000
                               -0.000       0.729       0.000    1597.090       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.006       0.000       0.000
                                0.012       0.279    -856.123       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.053     856.126       0.279      -1.361      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000   41070.029
                             -247.483       0.014      -0.229       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.004      -0.000      -0.000       0.011      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.578       0.554   -1700.177      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             1947.577       0.150      -1.400       0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.134   -1700.174      -0.554       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.030      -0.141    2794.828      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.030       0.000    2252.401       0.175      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.141   -2252.401       0.000       0.038      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -2794.828      -0.175      -0.038       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   -3454.953      -0.000       0.763
                                0.741       0.279    -856.124       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000    3454.953       0.000      -2.943      -0.000
                               -0.000       0.000       0.000   -1597.116      -0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       2.943       0.000    1049.686
                              856.122       0.053       0.741      -0.000      -0.000      -0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -0.763       0.000   -1049.686       0.000
                               -0.127    1562.880       0.510       0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -985.792      -0.001      -0.283
                                0.023       0.552   -1700.166      -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000     985.797       0.000      -1.070       0.000
                                0.000      -1.204      -0.000       0.060       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       1.202      -0.002     440.313      -0.042
                               -0.102    1188.046       0.384       0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.011   -1650.150
                             1700.177       0.153       0.023      -0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.053     856.126      -0.000      -0.250
                               -0.000      -0.734    2252.418       0.175      -0.000      -0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000    -856.121       0.053       0.729      -0.590
                                0.734       0.000       0.141   -2794.867      -0.000       0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      -0.279       0.012       0.000    1810.359
                            -2252.418      -0.141      -0.000      -0.911      -0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       1.361      -0.000    1597.114       0.000
                               -0.175    2794.867       0.911       0.000       0.000      -0.000       0.000      -0.000

    1    1  |0 0>              -2.539      -0.651      -0.000      -0.028       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    3404.123       0.003       0.092      -4.440

    2    1  |0 0>            -740.251      -2.407      -0.137       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -11.676       1.836      10.868   -1294.400

    3    1  |0 0>              -2.413     740.228       1.976      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.054     -20.893   -3404.030      -4.156

    4    1  |0 0>               0.460       5.672    -189.018      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.004    2885.277     -25.799       0.607

    5    1  |0 0>              -0.015      -0.540     833.622       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    2669.627       1.235       0.202

    6    1  |0 0>               0.012       0.300    -920.890      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    5483.523       0.000      -0.000

    7    1  |0 0>               0.168      -0.096      -0.000   -3487.566       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -993.443      -0.000       0.903      -0.195

    8    1  |0 0>            1691.992      -0.141       0.023       0.347       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.099      -0.000       0.145   -1957.148

    9    1  |0 0>              -0.141   -1691.997      -0.552       0.197       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.903      -0.000     993.445       0.323

   10    1  |0 0>               0.109       0.033       0.022      -0.046       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -987.476      -0.001       0.827      -0.096

   11    1  |0 0>            2288.300      -0.102       0.012       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.047      -0.006       0.106   -2016.426

   12    1  |0 0>              -0.102   -2288.316      -0.777       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.827       0.003     987.476       0.187

   13    1  |0 0>              -0.009      -0.247     667.488       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.008    -811.408       0.013      -0.310

   14    1  |0 0>               0.018       0.853   -2556.591      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.006    -801.111      -0.009       0.329

   15    1  |0 0>              -0.052      -1.249    3832.351       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -2019.777      -0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.002       1.768   -1129.247      -0.016      -0.000       0.729       0.000    1597.090

    2    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.016     985.794       0.012       0.279    -856.123       0.000

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000     985.792       1.789       0.000      -0.053     856.126       0.279      -1.361

    4    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                            -4231.747      -0.037      -0.009      -0.283    -247.483       0.014      -0.229       0.000

    5    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -1.012     537.763       0.083      -0.004      -0.000      -0.000       0.011

    6    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                1.012       0.000       0.035   -2132.893      -1.578       0.554   -1700.177      -0.000

    7    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                             -537.763      -0.035       0.000      -1.789    1947.577       0.150      -1.400       0.000

    8    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.083    2132.893       1.789       0.000       0.134   -1700.174      -0.554       0.000

    9    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.004       1.578   -1947.577      -0.134       0.000       0.030      -0.141    2794.828

   10    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.554      -0.150    1700.174      -0.030       0.000    2252.401       0.175

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000    1700.177       1.400       0.554       0.141   -2252.401       0.000       0.038

   12    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.011       0.000      -0.000      -0.000   -2794.828      -0.175      -0.038       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           41070.074       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   41070.098       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   41070.089       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   41070.148       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   41968.981       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   41969.025       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   41969.040       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   42604.585
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-             -0.000    -985.797      -1.202      -0.000      -0.053     856.121       0.279      -1.361
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-            985.792      -0.000       0.002       0.000    -856.126      -0.053      -0.012       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    3    1  |1 1>-              0.001       1.070    -440.313       0.011       0.000      -0.729      -0.000   -1597.114
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.283      -0.000       0.042    1650.150       0.250       0.590   -1810.359      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000   -2132.887      -1.789      -0.008       0.106   -1700.184      -0.556       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 1>-           2132.887       0.000       0.005      -3.518    1700.163       0.106      -0.374       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-              1.789      -0.005       0.000    3933.691       1.416      -0.251     759.381       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.008       3.518   -3933.691       0.000       0.000       0.000      -0.019      -0.060
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 1>-             -0.106   -1700.163      -1.416      -0.000       0.000   -2252.409      -0.734       0.038
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 1>-           1700.184      -0.106       0.251      -0.000    2252.409       0.000       0.030       0.911
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   11    1  |1 1>-              0.556       0.374    -759.381       0.019       0.734      -0.030       0.000   -2794.867
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-             -0.000      -0.000      -0.000       0.060      -0.038      -0.911    2794.867       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1069.435      -0.006       5.838      -0.940    -740.249      -0.047      -0.661       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.667      -2.199    1702.696      -3.406       2.541      -0.398      -2.361       0.028

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.928      11.571       5.436    1069.404      -0.653       4.302     740.234       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.008   -1452.528      -2.270       8.105       0.033    -627.412       5.406      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1569.961       1.325      -0.388       0.036    -580.510      -0.458       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.003       0.000      -0.000       0.058    -920.889      -0.300       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             2129.079       0.000      -0.144      -0.121   -1691.997      -0.106       0.073      -0.347

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.209       1.507   -1487.764      -0.369       0.168      -0.000       0.247   -3487.568

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.121      -0.000       0.252   -2129.079       0.073      -0.552    1691.990       0.509

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1665.952      -0.034       0.122      -0.024    2288.317       0.146       0.064       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.074      -1.940    2652.493       0.186      -0.109       0.014      -0.245       0.058

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.024       0.051      -0.311    1665.964       0.064       0.738   -2288.318      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.013   -2340.895      -1.963       0.021      -0.135    1880.293       0.584      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.011    2371.075       1.969      -0.014      -0.101    1856.429       0.625      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.048      -0.000       0.000      -0.239    3832.330       1.249      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    3454.955       0.017       0.840       0.000       0.016    -985.795

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    -906.190       0.001       0.698    -688.865      -0.027

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3454.955      -0.000      -0.000      -0.000     985.796       0.000       0.002       0.840

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.017     906.190       0.000      -0.000       0.037    2581.592       2.616       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.840      -0.001    -985.796      -0.037      -0.000       0.007      -0.035    2132.876

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.698      -0.000   -2581.592      -0.007      -0.000    3395.919       0.010

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.016     688.865      -0.002      -2.616       0.035   -3395.919       0.000       0.004

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              985.795       0.027      -0.840      -0.000   -2132.876      -0.010      -0.004       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.741       0.000    -856.122       0.127      -0.023      -0.000       0.102   -1700.177

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.279      -0.000      -0.053   -1562.880      -0.552       1.204   -1188.046      -0.153

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              856.124      -0.000      -0.741      -0.510    1700.166       0.000      -0.384      -0.023

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1597.116       0.000      -0.000       0.000      -0.060      -0.000       0.000

    1    1  |1 0>               0.000    3454.953       0.000      -0.763       0.000     985.797       1.202       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 0>           -3454.953       0.000       2.943       0.000    -985.792       0.000      -0.002      -0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>              -0.000      -2.943       0.000   -1049.686      -0.001      -1.070     440.313      -0.011
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.763      -0.000    1049.686       0.000      -0.283       0.000      -0.042   -1650.150
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 0>              -0.000     985.792       0.001       0.283       0.000    2132.887       1.789       0.008
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>            -985.797      -0.000       1.070      -0.000   -2132.887       0.000      -0.005       3.518
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>              -1.202       0.002    -440.313       0.042      -1.789       0.005       0.000   -3933.691
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 0>              -0.000       0.000       0.011    1650.150      -0.008      -3.518    3933.691       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>              -0.053    -856.126       0.000       0.250       0.106    1700.163       1.416       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>             856.121      -0.053      -0.729       0.590   -1700.184       0.106      -0.251       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 0>               0.279      -0.012      -0.000   -1810.359      -0.556      -0.374     759.381      -0.019
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

   12    1  |1 0>              -1.361       0.000   -1597.114      -0.000       0.000       0.000       0.000      -0.060
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.002       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   41070.029       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   41070.074       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   41070.098       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   41070.089       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   41070.148
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006    3404.121      11.676       1.723       0.001   -1069.431      -0.660       3.668

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.482     -11.685    3404.108       6.749       0.394       3.669       0.846    1069.427

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               28.879       2.954      10.859   -2121.731      -4.057      -0.421    -269.629       3.378

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3754.531       0.026       1.095     -16.080     633.325      -0.004      -2.042      -0.661

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1163.979      -0.001      -0.974       0.770    2042.947       0.000       0.102       0.006

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             5483.520       0.000      -4.672      -0.000      -0.002      -0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     993.447      -0.099      -0.300       0.000   -2129.086      -1.648      -0.212

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.846      -0.099    -993.451      -0.008       0.000       0.212       0.391   -2129.083

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.056       0.145    -309.937      -0.005      -1.884    2438.892       0.345

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.011    -987.470      -0.047      -0.174      -0.014   -1665.968      -1.391       0.079

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.843       0.047    -987.470      -0.383       0.024       0.079      -0.072    1665.979

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.017      -0.014       0.106   -3305.347       0.018       0.767    -420.045      -0.243

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1099.502       0.008      -0.937      -0.042     882.951       0.013      -0.004      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -302.179      -0.006       0.265       0.029    3212.816      -0.011       0.010      -0.012

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -2019.767      -0.000       1.721       0.000      -0.003       0.000      -0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000      11.676    3404.103      10.877      -1.363
                                0.741       0.279    -856.124       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       2.992      10.858   -3404.027     -25.799
                               -0.000       0.000       0.000   -1597.116       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.009      -2.318      -7.987     869.252
                              856.122       0.053       0.741      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000    -827.382       2.841      -0.860      -0.044
                               -0.127    1562.880       0.510       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       3.672    1069.425       3.419      -0.661
                                0.023       0.552   -1700.166      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       2.704       3.405   -1069.404      -8.105
                                0.000      -1.204      -0.000       0.060       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000   -1972.341       6.775      -2.608      -0.056
                               -0.102    1188.046       0.384       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.045       1.337     -15.633    2085.852
                             1700.177       0.153       0.023      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -2.539    -740.251      -2.413       0.460
                               -0.000      -0.734    2252.418       0.175       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.651      -2.407     740.228       5.672
                                0.734       0.000       0.141   -2794.867       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.137       1.976    -189.018
                            -2252.418      -0.141      -0.000      -0.911       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.028       0.000      -0.000      -0.000
                               -0.175    2794.867       0.911       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.053    -856.121      -0.279       1.361       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -3404.123      11.676      -0.054      -0.004

    2    1  |1 0>             856.126       0.053       0.012      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.003      -1.836      20.893   -2885.277

    3    1  |1 0>              -0.000       0.729       0.000    1597.114       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.092     -10.868    3404.030      25.799

    4    1  |1 0>              -0.250      -0.590    1810.359       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       4.440    1294.400       4.156      -0.607

    5    1  |1 0>              -0.106    1700.184       0.556      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000    1069.435      -3.667       0.928       0.008

    6    1  |1 0>           -1700.163      -0.106       0.374      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.006       2.199     -11.571    1452.528

    7    1  |1 0>              -1.416       0.251    -759.381      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -5.838   -1702.696      -5.436       2.270

    8    1  |1 0>              -0.000      -0.000       0.019       0.060       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.940       3.406   -1069.404      -8.105

    9    1  |1 0>               0.000    2252.409       0.734      -0.038       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000     740.249      -2.541       0.653      -0.033

   10    1  |1 0>           -2252.409       0.000      -0.030      -0.911       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.047       0.398      -4.302     627.412

   11    1  |1 0>              -0.734       0.030       0.000    2794.867       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.661       2.361    -740.234      -5.406

   12    1  |1 0>               0.038       0.911   -2794.867       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.028      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.006      -0.482     -28.879    3754.531

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -3404.121      11.685      -2.954      -0.026

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -11.676   -3404.108     -10.859      -1.095

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.723      -6.749    2121.731      16.080

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.001      -0.394       4.057    -633.325

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1069.431      -3.669       0.421       0.004

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.660      -0.846     269.629       2.042

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -3.668   -1069.427      -3.378       0.661

    9    1  |1 1>-          41968.981       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.047      -0.536       6.278    -816.427

   10    1  |1 1>-              0.000   41969.025       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     740.252      -2.782       0.642      -0.045

   11    1  |1 1>-              0.000       0.000   41969.040       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       2.780     740.248       2.367      -0.468

   12    1  |1 1>-              0.000       0.000       0.000   42604.585       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.001       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5511.583       0.000       0.000       0.000
                                0.047    -740.252      -2.780       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5511.587       0.000       0.000
                                0.536       2.782    -740.248      -0.000      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5511.591       0.000
                               -6.278      -0.642      -2.367      -0.001      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5511.582
                              816.427       0.045       0.468      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -253.114      -0.016      -0.007      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -920.889      -0.058      -0.012      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.106    1691.983       0.383      -0.198      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.023       0.383   -1691.977      -0.509      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.096       0.247   -3487.514      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.167    2288.312       0.855      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.026      -0.855    2288.319       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.039       0.033      -0.245       0.004      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -2547.879      -0.177      -0.035      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              700.228       0.059      -0.008      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             3832.300       0.239       0.052       0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |1 1>+             -3.248       4.672       0.099     993.441      -0.145      -0.047    -987.476       0.106
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              1.235      -0.000      -0.056      -0.145    -993.445      -0.014       0.106     987.473
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+          -3833.603    5483.522      -0.000      -0.846       0.000      -0.009       0.849       0.013
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.008      -0.000    2267.057      -0.226      -0.411   -1288.897       0.061      -0.239
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.005       0.000       0.214    2129.096      -0.311       0.086    1665.964      -0.178
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.388       0.000       0.376      -0.311   -2129.082       2.772      -0.178   -1665.960
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.007      -0.000    -950.962       0.099      -1.732   -3072.528       0.149      -1.441
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+            472.991      -0.000       0.024      -0.000      -0.000      -0.053       0.006      -0.034
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.015       0.012       0.168    1691.992      -0.141       0.109    2288.300      -0.102
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.540       0.300      -0.096      -0.141   -1691.997       0.033      -0.102   -2288.316
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+            833.622    -920.890      -0.000       0.023      -0.552       0.022       0.012      -0.777
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000      -0.000   -3487.566       0.347       0.197      -0.046       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     993.443      -0.099      -0.903     987.476      -0.047      -0.827

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -2669.627   -5483.523       0.000       0.000       0.000       0.001       0.006      -0.003

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.235      -0.000      -0.903      -0.145    -993.445      -0.827      -0.106    -987.476

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.202       0.000       0.195    1957.148      -0.323       0.096    2016.426      -0.187

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000   -2129.079       0.209       0.121    1665.952      -0.074       0.024

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1569.961      -0.003      -0.000      -1.507       0.000       0.034       1.940      -0.051

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.325      -0.000       0.144    1487.764      -0.252      -0.122   -2652.493       0.311

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.388       0.000       0.121       0.369    2129.079       0.024      -0.186   -1665.964

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.036      -0.058    1691.997      -0.168      -0.073   -2288.317       0.109      -0.064

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              580.510     920.889       0.106       0.000       0.552      -0.146      -0.014      -0.738

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.458       0.300      -0.073      -0.247   -1691.990      -0.064       0.245    2288.318

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.347    3487.568      -0.509      -0.000      -0.058       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1163.979   -5483.520       0.000       0.846      -0.000      -0.011       0.843       0.017

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000    -993.447       0.099       0.056     987.470      -0.047       0.014

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.974       4.672       0.099     993.451      -0.145       0.047     987.470      -0.106

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.770       0.000       0.300       0.008     309.937       0.174       0.383    3305.347

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -2042.947       0.002      -0.000      -0.000       0.005       0.014      -0.024      -0.018

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    2129.086      -0.212       1.884    1665.968      -0.079      -0.767

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.102       0.000       1.648      -0.391   -2438.892       1.391       0.072     420.045

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.006      -0.000       0.212    2129.083      -0.345      -0.079   -1665.979       0.243

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              253.114     920.889       0.106      -0.023      -0.000       0.167       0.026      -0.039

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.016       0.058   -1691.983      -0.383       0.096   -2288.312       0.855      -0.033

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.007       0.012      -0.383    1691.977      -0.247      -0.855   -2288.319       0.245

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.198       0.509    3487.514       0.000      -0.000      -0.004

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5511.585       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14140.401       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   40020.390       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   40020.402       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   40020.410       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000   43659.886       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   43659.942       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   43659.973
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       49          50          51

    1    1  |1 1>+             -0.245       0.947      -1.721
                                0.000       0.000       0.000

    2    1  |1 1>+              0.013      -0.009       0.000
                                0.000       0.000       0.000

    3    1  |1 1>+           -288.041    1103.250   -2019.787
                                0.000       0.000       0.000

    4    1  |1 1>+             -0.046      -0.023       0.000
                                0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.012      -0.000
                                0.000       0.000       0.000

    6    1  |1 1>+             -0.021       0.015      -0.000
                                0.000       0.000       0.000

    7    1  |1 1>+             -0.029      -0.034      -0.000
                                0.000       0.000       0.000

    8    1  |1 1>+           3223.849     841.735       0.029
                                0.000       0.000       0.000

    9    1  |1 1>+             -0.009       0.018      -0.052
                                0.000       0.000       0.000

   10    1  |1 1>+             -0.247       0.853      -1.249
                                0.000       0.000       0.000

   11    1  |1 1>+            667.488   -2556.591    3832.351
                                0.000       0.000       0.000

   12    1  |1 1>+              0.000      -0.000       0.000
                                0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000
                               -0.008       0.006      -0.000

    2    1  |1 0>               0.000       0.000       0.000
                              811.408     801.111    2019.777

    3    1  |1 0>               0.000       0.000       0.000
                               -0.013       0.009       0.000

    4    1  |1 0>               0.000       0.000       0.000
                                0.310      -0.329       0.000

    5    1  |1 0>               0.000       0.000       0.000
                               -0.013       0.011      -0.000

    6    1  |1 0>               0.000       0.000       0.000
                             2340.895   -2371.075       0.048

    7    1  |1 0>               0.000       0.000       0.000
                                1.963      -1.969       0.000

    8    1  |1 0>               0.000       0.000       0.000
                               -0.021       0.014      -0.000

    9    1  |1 0>               0.000       0.000       0.000
                                0.135       0.101       0.239

   10    1  |1 0>               0.000       0.000       0.000
                            -1880.293   -1856.429   -3832.330

   11    1  |1 0>               0.000       0.000       0.000
                               -0.584      -0.625      -1.249

   12    1  |1 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000
                            -1099.502     302.179    2019.767

    2    1  |1 1>-              0.000       0.000       0.000
                               -0.008       0.006       0.000

    3    1  |1 1>-              0.000       0.000       0.000
                                0.937      -0.265      -1.721

    4    1  |1 1>-              0.000       0.000       0.000
                                0.042      -0.029      -0.000

    5    1  |1 1>-              0.000       0.000       0.000
                             -882.951   -3212.816       0.003

    6    1  |1 1>-              0.000       0.000       0.000
                               -0.013       0.011      -0.000

    7    1  |1 1>-              0.000       0.000       0.000
                                0.004      -0.010       0.000

    8    1  |1 1>-              0.000       0.000       0.000
                                0.000       0.012       0.000

    9    1  |1 1>-              0.000       0.000       0.000
                             2547.879    -700.228   -3832.300

   10    1  |1 1>-              0.000       0.000       0.000
                                0.177      -0.059      -0.239

   11    1  |1 1>-              0.000       0.000       0.000
                                0.035       0.008      -0.052

   12    1  |1 1>-              0.000       0.000       0.000
                                0.000       0.000      -0.000

    1    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   13    1  |0 0>           43660.181       0.000       0.000
                                0.000       0.000       0.000

   14    1  |0 0>               0.000   43660.269       0.000
                               -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000   46532.456
                               -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.55193215    -0.04959069   -10883.90      0.00000000        0.00      0.0000
    2  -192.51902718    -0.01668572    -3662.09      0.03290497     7221.81      0.8954
    3  -192.51902716    -0.01668571    -3662.09      0.03290498     7221.81      0.8954
    4  -192.51902716    -0.01668571    -3662.09      0.03290499     7221.81      0.8954
    5  -192.50542985    -0.00308839     -677.82      0.04650230    10206.08      1.2654
    6  -192.50542983    -0.00308837     -677.82      0.04650232    10206.08      1.2654
    7  -192.50542897    -0.00308752     -677.63      0.04650317    10206.27      1.2654
    8  -192.50542897    -0.00308752     -677.63      0.04650318    10206.27      1.2654
    9  -192.50542897    -0.00308752     -677.63      0.04650318    10206.27      1.2654
   10  -192.45993783     0.04240362     9306.52      0.09199431    20190.42      2.5033
   11  -192.45993782     0.04240363     9306.52      0.09199433    20190.42      2.5033
   12  -192.45993780     0.04240365     9306.53      0.09199434    20190.42      2.5033
   13  -192.45993697     0.04240448     9306.71      0.09199517    20190.61      2.5033
   14  -192.45993696     0.04240450     9306.71      0.09199519    20190.61      2.5033
   15  -192.42160873     0.08073272    17718.78      0.13032341    28602.68      3.5463
   16  -192.35497420     0.14736725    32343.37      0.19695794    43227.27      5.3595
   17  -192.35497414     0.14736732    32343.39      0.19695801    43227.29      5.3595
   18  -192.35497409     0.14736736    32343.40      0.19695805    43227.30      5.3595
   19  -192.34639760     0.15594385    34225.72      0.20553455    45109.62      5.5929
   20  -192.34490969     0.15743176    34552.28      0.20702246    45436.18      5.6334
   21  -192.34490965     0.15743180    34552.29      0.20702250    45436.19      5.6334
   22  -192.34490954     0.15743192    34552.31      0.20702261    45436.21      5.6334
   23  -192.34367390     0.15866755    34823.50      0.20825824    45707.40      5.6670
   24  -192.34367390     0.15866756    34823.50      0.20825825    45707.40      5.6670
   25  -192.34367386     0.15866759    34823.51      0.20825828    45707.41      5.6670
   26  -192.34367351     0.15866794    34823.59      0.20825864    45707.49      5.6670
   27  -192.34367344     0.15866802    34823.60      0.20825871    45707.50      5.6670
   28  -192.30030762     0.20203383    44341.30      0.25162453    55225.20      6.8471
   29  -192.30030756     0.20203389    44341.31      0.25162458    55225.21      6.8471
   30  -192.30030749     0.20203396    44341.33      0.25162465    55225.23      6.8471
   31  -192.29737688     0.20496457    44984.52      0.25455527    55868.42      6.9268
   32  -192.29737681     0.20496465    44984.54      0.25455534    55868.44      6.9268
   33  -192.29737675     0.20496470    44984.55      0.25455540    55868.45      6.9268
   34  -192.29737652     0.20496494    44984.60      0.25455563    55868.50      6.9268
   35  -192.29737645     0.20496500    44984.62      0.25455570    55868.52      6.9268
   36  -192.29577621     0.20656524    45335.83      0.25615594    56219.73      6.9704
   37  -192.29577621     0.20656525    45335.83      0.25615594    56219.73      6.9704
   38  -192.29577608     0.20656538    45335.86      0.25615607    56219.76      6.9704
   39  -192.29577603     0.20656542    45335.87      0.25615612    56219.77      6.9704
   40  -192.29577599     0.20656546    45335.88      0.25615615    56219.78      6.9704
   41  -192.29577589     0.20656556    45335.90      0.25615625    56219.80      6.9704
   42  -192.29577588     0.20656558    45335.90      0.25615627    56219.80      6.9704
   43  -192.29282679     0.20951467    45983.15      0.25910536    56867.05      7.0506
   44  -192.29282677     0.20951468    45983.16      0.25910537    56867.06      7.0506
   45  -192.29282677     0.20951469    45983.16      0.25910538    56867.06      7.0506
   46  -192.28660755     0.21573390    47348.12      0.26532460    58232.02      7.2199
   47  -192.28660740     0.21573406    47348.15      0.26532475    58232.05      7.2199
   48  -192.28660727     0.21573418    47348.18      0.26532487    58232.08      7.2199
   49  -192.28660682     0.21573463    47348.28      0.26532533    58232.18      7.2199
   50  -192.28660649     0.21573496    47348.35      0.26532566    58232.25      7.2199
   51  -192.27376586     0.22857559    50166.54      0.27816629    61050.44      7.5693

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00045773  0.70548345  0.00020838  0.00006028  0.00051837  0.00015066 -0.54591071 -0.00310289
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000002 -0.00020855  0.70548082  0.00191627 -0.00005723  0.00009626 -0.00303284  0.54582134
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

   3    1  |1 1>+          0.53728751 -0.00060102 -0.00000015 -0.00000005  0.60560270  0.17501446  0.00046811  0.00003524
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000144 -0.00004824  0.01698008 -0.00000029  0.00000076  0.00015543 -0.00044411
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.01594650 -0.00000471 -0.00000135  0.00000013  0.00000009 -0.03000096 -0.00017052
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000471 -0.01594643 -0.00003959 -0.00000314  0.00000529 -0.00016700  0.02999697
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000057  0.00000598 -0.00712377 -0.00000028  0.00000035  0.00037036 -0.00104301
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000004  0.00000000 -0.00000000  0.00000018  0.01665889 -0.05764477 -0.00000015  0.00001189
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000042 -0.00836772 -0.00000195 -0.00000071 -0.00000003 -0.00000000 -0.00253247 -0.00001455
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00001004  0.00000195 -0.00836774 -0.00002273 -0.00000118  0.00000018 -0.00001423  0.00253218
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.03080369 -0.00000011 -0.00000273 -0.00000001  0.00280918  0.00081182 -0.00000002  0.00000098
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000425 -0.00013628  0.05017142 -0.00000000  0.00000000  0.00000001 -0.00000002
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00005954  0.00251731 -0.70548000  0.00000004 -0.00000602  0.00365866 -0.01100384

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                          -0.53728738  0.00000000 -0.00000002 -0.00000001  0.15123444  0.61197489  0.00000299 -0.00009214

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                          -0.00000002 -0.00020860  0.70548024  0.00251729  0.00005721 -0.00009624  0.00302971 -0.54581057

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.01465865 -0.00000461 -0.00000125  0.00000789 -0.00000181 -0.03631246 -0.00020692

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000137  0.00004331 -0.01594638  0.00000000  0.00000033 -0.00020102  0.00057917

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000009  0.00001129  0.00000000  0.00000000  0.05825139 -0.01439537 -0.00003508  0.00000844

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.01114433 -0.00000355 -0.00000099  0.00004864 -0.00001221  0.04776654  0.00027102

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000515  0.01594637  0.00004331 -0.00000314  0.00000529 -0.00016653  0.02999600

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000192 -0.00000071 -0.00002262  0.00836774 -0.00000004 -0.00000021  0.00001696 -0.00004886

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.03080368 -0.00000000  0.00000273  0.00000053  0.00070165  0.00283870  0.00000001  0.00000039

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00001004  0.00000247 -0.00836770 -0.00002262  0.00000049  0.00000048  0.00001407 -0.00253210

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.05017158  0.00001482  0.00000429  0.00000000  0.00000000  0.00000070  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000
                          -0.53728741  0.00060102  0.00000018  0.00000005  0.45436845 -0.43695988  0.00046513  0.00012738

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00000000 -0.00005974 -0.00191629  0.70548110  0.00000000 -0.00000594  0.00365607 -0.01053887

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00045773  0.70548418  0.00020839  0.00006031 -0.00038953  0.00037069  0.54590969  0.00310280

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000041  0.00232127  0.00000842  0.00000624 -0.00001050  0.00033013 -0.05951347

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000009 -0.00000000  0.00000004  0.00000000  0.04159246  0.04324947  0.00000033 -0.00000326

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000135 -0.00002830  0.01594651 -0.00000000  0.00000033 -0.00020100  0.00059341

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000566 -0.01826584 -0.00003624  0.00000088 -0.00000124  0.00004136 -0.00756247

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.01594643 -0.00000497 -0.00000136 -0.00000013 -0.00000009  0.03000095  0.00016936

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.03080373  0.00000011 -0.00000000  0.00000052  0.00210755 -0.00202697 -0.00000004  0.00000058

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000192  0.00000344  0.00002273 -0.00836766  0.00000013 -0.00000015  0.00001613 -0.00004889

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000042 -0.00836774 -0.00000246 -0.00000344  0.00000002 -0.00000003  0.00253254  0.00001438

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00001483 -0.05017181 -0.00013628 -0.00000000 -0.00000000  0.00000000 -0.00000010

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000035 -0.00000030 -0.00000637  0.00639336 -0.01272385
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

   2    1  |0 0>           0.00000000  0.00000050  0.00000000  0.00000000 -0.00020188  0.00035068  0.63100132  0.00161602
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000065 -0.00000000  0.00244460 -0.00396407 -0.00148430  0.63088799
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

   4    1  |0 0>           0.00000011  0.00000000 -0.00000000 -0.00000000 -0.30491105  0.55246493 -0.00041545  0.00464968
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000

   5    1  |0 0>           0.00000002  0.00000000  0.00000000  0.00000000  0.55247905  0.30492083  0.00000786 -0.00022482
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000

   6    1  |0 0>          -0.35660485  0.00000000  0.00000000  0.00000000 -0.00000003  0.00000016  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000605 -0.00008738  0.03285534 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.03285548 -0.00000490 -0.00000606 -0.00000000 -0.00000000 -0.00000008 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000492  0.03285534  0.00008738  0.00000000 -0.00000000 -0.00000000  0.00000005
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000011  0.00000017  0.00000013 -0.00011663  0.00033406
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000009 -0.00000000  0.00000000 -0.00000003 -0.00000002 -0.01729165 -0.00010015
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000157 -0.00000294  0.00009791 -0.01728881
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |0 0>          -0.00000058 -0.00000000  0.00000000 -0.00000000  0.00884201 -0.01486096 -0.00000002  0.00000333
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |0 0>           0.00000042 -0.00000000 -0.00000000  0.00000000 -0.01486086 -0.00884198  0.00000003  0.00000016
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |0 0>           0.06286978  0.00000000  0.00000000  0.00000000  0.00000015 -0.00000002 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.00359680  0.00193330  0.44782249  0.00107875  0.00005216 -0.00044343  0.00017555 -0.00000012
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.01055926  0.00021231  0.00107782 -0.44782683  0.00008111 -0.00001090 -0.00000001 -0.00000006
                           0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000055 -0.00000570 -0.00038842  0.00002255  0.06064191 -0.51354160  0.20606138  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.02320697  0.01012673 -0.00004373  0.00000643  0.00000036 -0.00000004  0.00000000 -0.49120119
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001

   5    1  |1 1>+          0.00019755 -0.00005656 -0.01308937 -0.00003153 -0.00000001  0.00000017 -0.00000000  0.00007949
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00053082 -0.00002780 -0.00003141  0.01308963 -0.00000237  0.00000032 -0.00000000 -0.00006485
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.05532176  0.02414043 -0.00010430  0.00002217  0.00000019 -0.00000017 -0.00000000  0.20604905
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000092  0.00000029 -0.00000000 -0.00000463 -0.02599801 -0.00307004  0.00000000 -0.00000523
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00001668  0.00010235  0.02370720  0.00005859 -0.00000002  0.00000005 -0.00000025  0.00000114
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00004899  0.00001125  0.00005854 -0.02370731  0.00000325  0.00000829 -0.00000609  0.00000061
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000003 -0.00000021 -0.00000003 -0.00000649  0.00321033 -0.02718642  0.01867516  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000080  0.00000034 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.17648573
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.54580727 -0.44782410  0.00193289  0.00017387  0.00000433  0.00000403  0.00000000  0.00067932

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00000486 -0.00000684 -0.00000344 -0.00006755 -0.41441938 -0.30928849 -0.20606152  0.00000000

   3    1  |1 0>           0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01102422  0.00016921 -0.00107946  0.44782673 -0.00008113  0.00001090 -0.00000001 -0.00000064

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00023924 -0.00006840 -0.01584282 -0.00003839 -0.00000209  0.00000299 -0.00000000  0.00007347

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                          -0.02999584 -0.01308954  0.00005648 -0.00000607  0.00000013  0.00000012 -0.00000000  0.46130454

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000024 -0.00000003 -0.00001507 -0.00000338 -0.01565765  0.02098010  0.00000007 -0.00000006

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00031479  0.00008994  0.02084017  0.00004998 -0.00001311  0.00001732 -0.00000000  0.00005683

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00058029 -0.00000621 -0.00003144  0.01308955 -0.00000237  0.00000032  0.00000000 -0.00004281

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00253217 -0.02370719  0.00010237 -0.00001131  0.00000160  0.00000124  0.00000117 -0.00657500

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000020 -0.00000184 -0.00000016 -0.00001131 -0.02193899 -0.01637340 -0.01867512 -0.00000041

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00004895 -0.00001156 -0.00005706  0.02370736 -0.00001145 -0.00000476 -0.00000609  0.00000052

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000035  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00003058

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000
                          -0.00000541  0.00000113 -0.00038497  0.00009010  0.47506121 -0.20425341 -0.20606122 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.54581739 -0.44782420  0.00193382 -0.00020765  0.00000440  0.00000402 -0.00000000 -0.00067918

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00359677 -0.00193332 -0.44782257 -0.00107880 -0.00040521  0.00017994  0.00017555 -0.00000012

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00115530  0.00001057  0.00006228 -0.02596984  0.00000470 -0.00000063  0.00000000 -0.00006742

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000041  0.00000032  0.00000030  0.00000129  0.01034043  0.02405004 -0.00000001  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.02999555 -0.01308935  0.00005651  0.00000014  0.00000013  0.00000012  0.00000000 -0.46130148

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00017146 -0.00000941  0.00000778 -0.00330023  0.00000062 -0.00000003 -0.00000000 -0.00033785

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00019769  0.00005651  0.01308938  0.00003102  0.00000001 -0.00000017 -0.00000000  0.00007993

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000017  0.00000163  0.00000013  0.00000482  0.02514936 -0.01081309 -0.01867516 -0.00000041

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00253203 -0.02370714  0.00011010 -0.00001097  0.00000180 -0.00000046 -0.00000117  0.00657045

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00001586 -0.00011008 -0.02370709 -0.00005711  0.00000031  0.00000017 -0.00000025  0.00000328

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001638

   1    1  |0 0>           0.63087519  0.77204283 -0.00068421 -0.00031415 -0.00000663 -0.00000709 -0.00000000  0.00000030
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00636204  0.00068397  0.77204273 -0.00060391  0.00049378 -0.00006726 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.01273911  0.00031464  0.00060749  0.77201987 -0.00592736  0.00091297 -0.00000000  0.00000000
                           0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00010342  0.00000784 -0.00049343  0.00599093  0.76772990 -0.08125040  0.00000004 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000127  0.00000764  0.00001469 -0.00028408  0.08125501  0.76775300  0.00000001 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000012 -0.00000003  0.93288921 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000006 -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.50934226
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001

   8    1  |0 0>           0.00000000  0.00000000  0.00000015  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00013894
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00001844
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.01728872  0.02639530 -0.00011273  0.00001187 -0.00000008 -0.00000044  0.00000000 -0.00000140
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00011471  0.00011270  0.02639518  0.00006641  0.00000006 -0.00000016 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00033472 -0.00001215 -0.00006635  0.02639544 -0.00000508  0.00000092 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.00000004  0.00000002 -0.00000009  0.00000516  0.02614543 -0.00362725 -0.00000035  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |0 0>          -0.00000021  0.00000044  0.00000014 -0.00000021  0.00362723  0.02614536  0.00000028 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000016 -0.00000020  0.03588181  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00067956  0.00000008 -0.00003291  0.00000298 -0.02748228 -0.00000263 -0.00000166 -0.00000661
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000008 -0.00067964  0.00000000 -0.00000104  0.00000263 -0.02748163  0.00001820  0.01588418
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000058 -0.00000000 -0.03863467 -0.00000000  0.00002341  0.00000000  0.00000063 -0.00000048
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00008512  0.00010676 -0.00000001 -0.19746560 -0.00002144 -0.00001716  0.23877409 -0.00031451
                          -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000

   5    1  |1 1>+         -0.46130571 -0.00005631  0.00000000  0.00001996 -0.18544211 -0.00001775  0.00003100  0.00012838
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00005632  0.46130332  0.00000000 -0.00005031  0.00001775 -0.18546140 -0.00086262 -0.30861246
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00003469  0.00036778  0.00000000  0.08286945  0.00000862 -0.00015866  0.56917881 -0.00091098
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000001  0.00000432 -0.00000210  0.00000000  0.00000000  0.00002974 -0.00002279
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00657470 -0.00000121  0.00000690 -0.00005409  0.49814799  0.00001658  0.00003056  0.00014003
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000121  0.00657805  0.00016664  0.00001876 -0.00001657  0.49813299 -0.00033535 -0.29269958
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000009  0.00000214 -0.51114028  0.00000003  0.00000673  0.00016240 -0.00001167 -0.00008656
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00003058 -0.00001637 -0.00000002 -0.49717015 -0.00005399  0.00001873  0.00002836 -0.00000002
                           0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000012 -0.00000064 -0.00000000 -0.02748235 -0.00000298 -0.00002238 -0.01588277  0.00000467

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.03863431 -0.00000000  0.00000000  0.00000000  0.00000073 -0.00000083

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000008 -0.00067945  0.00000000  0.00002238  0.00000263 -0.02748172 -0.00000467 -0.01588394

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.42405220 -0.00004369  0.00000000  0.00001851 -0.17046377 -0.00001956  0.00003898  0.00016079

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000
                           0.00008061 -0.00004280  0.00000001  0.18544385  0.00002041 -0.00000699 -0.30862147  0.00035361

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00032661  0.00000004  0.00000923 -0.00000001  0.00013133  0.00000001 -0.00001012  0.00000279

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.32235691 -0.00003180  0.00000001  0.00001446 -0.12962650 -0.00001545 -0.00005192 -0.00019934

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00004360 -0.46129965 -0.00000000  0.00000698 -0.00002286  0.18545784 -0.00035359 -0.30861843

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000001  0.00000000
                          -0.00000114  0.00000052 -0.00003192  0.49814652  0.00005409 -0.00002549  0.29267825 -0.00033931

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000214  0.51114594  0.00003110  0.00000002 -0.00016240  0.00000469 -0.00008021

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000080  0.00657556  0.00016664  0.00002552 -0.00004769  0.49813494  0.00033930  0.29269466

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.17648751 -0.00002154 -0.00000000 -0.00005399  0.49716981  0.00004760 -0.00000000 -0.00000001

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000058  0.00000000  0.03863410  0.00000000 -0.00002341 -0.00000000 -0.00000010  0.00000035

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000012  0.00000006  0.00000000  0.02748103  0.00000299 -0.00000104 -0.01588509  0.00001820

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00067924  0.00000008 -0.00003291  0.00000299 -0.02748098 -0.00000263  0.00000166  0.00000661

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00001626 -0.06715394  0.00000000 -0.00002357  0.00000066  0.02699876  0.00066061  0.61231323

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000111  0.00000710  0.00000000  0.00000000  0.00000044 -0.00002641  0.00002526

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000001 -0.00000000
                          -0.00007989 -0.00039147 -0.00000000 -0.18546493 -0.00002016  0.00018157 -0.30861245  0.00020712

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00005701  0.52841959  0.00000000 -0.00016355  0.00002336 -0.21243227 -0.00016967  0.07781632

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.46129891 -0.00004884  0.00000000  0.00002013 -0.18546615 -0.00002076 -0.00003219 -0.00011638

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000009  0.00000000  0.51115311  0.00003110 -0.00000672  0.00000000 -0.00001636 -0.00000634

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000001  0.00000000
                           0.00000328 -0.00000061  0.00003192 -0.49812221 -0.00021649  0.00001875  0.29271651 -0.00033533

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00657117 -0.00000080  0.00000691 -0.00021649  0.49812186  0.00004770  0.00006490 -0.00012187

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00002154 -0.17647902  0.00000001 -0.00001873  0.00004760 -0.49717388  0.00000001  0.00000133

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000188  0.00000001 -0.00000000 -0.04908530  0.00001317
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000054  0.00000000  0.00000000  0.00000001  0.00000185  0.00000000  0.00017344 -0.00013634
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000030 -0.00000000 -0.00000000  0.00000001  0.00000021  0.00001365  0.04908424
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000040 -0.00000000 -0.00000000  0.00000000  0.00000093  0.00037051
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000062  0.00000000 -0.00000000  0.00000000  0.00000192 -0.00001947
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.03866358 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00013895 -0.00001841 -0.00000001 -0.37468505 -0.00007798  0.00003533  0.00001802 -0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.50934347  0.00013654  0.00000000  0.00007798 -0.37468308  0.00001883 -0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00013654  0.50934503 -0.00000000  0.00003533  0.00001884  0.37468079 -0.00000000  0.00000037
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00001985  0.00000000  0.00000000  0.50425603 -0.00057058
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000

  11    1  |0 0>           0.00000195  0.00000000  0.00000000 -0.00000000 -0.00001881 -0.00000001 -0.00007662 -0.00026370
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00000148 -0.00000000 -0.00000001  0.00000000 -0.00000242 -0.00057053 -0.50425295
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |0 0>          -0.00000000  0.00000000 -0.00001058  0.00000000 -0.00000000 -0.00000000 -0.00001243  0.00000821
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |0 0>           0.00000000  0.00000000  0.00000984  0.00000000  0.00000000 -0.00000000 -0.00001676  0.00002190
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |0 0>           0.00000000  0.00000000  0.45849227 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.01588289 -0.00001518  0.00000361  0.00000970  0.03108721 -0.00000733  0.00000074  0.01520896
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000661 -0.00000025  0.00000067  0.00000088 -0.00000734 -0.03108733 -0.00000296 -0.00000275
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00001350 -0.01772949  0.00469513 -0.00000001 -0.00002648  0.00000001  0.00000050 -0.00001272
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00002478  0.00000353 -0.00001863  0.24255716 -0.00007571 -0.00002331  0.20077808 -0.00000970
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.30862160  0.00000151  0.00000752  0.00007131  0.22779230 -0.00005375 -0.00001355 -0.25947786
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00012846  0.00000489 -0.00001305  0.00005963 -0.00005376 -0.22778810 -0.00037754  0.00004700
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00005835  0.00001241 -0.00002927 -0.10175211  0.00003219 -0.00019394  0.47860192 -0.00002365
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00001531  0.15799926  0.59667194  0.00000258 -0.00000000 -0.00000000  0.00000988 -0.00001681
                          -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.29267668 -0.00000299  0.00000830  0.00013180  0.42228397 -0.00007326  0.00002152  0.44529909
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00014007 -0.00010187  0.00001581  0.00001199 -0.00007327 -0.42228279 -0.00008665 -0.00005280
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000451  0.32672720 -0.08651321  0.00000000  0.00000568 -0.00013768  0.00001460  0.00001304
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.04482077 -0.00001399  0.00000128 -0.00000399 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000166 -0.00000042  0.00000054  0.03108740 -0.00000971 -0.00002560 -0.01520890  0.00000074

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000041 -0.00479981  0.01770194  0.00000000 -0.00000000  0.00000000  0.00000021 -0.00000037

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000661  0.00000025 -0.00000067 -0.00002560 -0.00000733 -0.03108745  0.00001592  0.00000275

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.37354704  0.00008084  0.00003053  0.00006536  0.20939841 -0.00005340 -0.00001518 -0.31411257

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00003309 -0.00000813  0.00001057 -0.22778384  0.00007076 -0.00000648 -0.25950262  0.00001168

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00035572  0.59573485  0.16150628 -0.00000005 -0.00016128  0.00000004 -0.00001354 -0.00031943

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.49136845  0.00049725  0.00012348  0.00004921  0.15918817 -0.00004129  0.00001941  0.41318779

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00012691  0.00000492 -0.00001306 -0.00000646  0.00006002  0.22778244  0.00005048  0.00004824

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00003040  0.00000218  0.00001036  0.42228724 -0.00013180  0.00001772 -0.44528933  0.00002153

  10    1  |1 0>          -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000755  0.08842647 -0.32620688  0.00002637  0.00000002  0.00013768 -0.00002179 -0.00001092

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00012179  0.00002418 -0.00009396  0.00001770 -0.00009964 -0.42228333  0.00008062  0.00008062

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00002921 -0.00000000 -0.00000000 -0.00001399 -0.04482157  0.00001057 -0.00000000 -0.00000903

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00001391 -0.01293163 -0.01300729  0.00000001  0.00002648 -0.00000001  0.00000029 -0.00001234

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000165 -0.00000042  0.00000054 -0.03108761  0.00000970 -0.00000088 -0.01520838  0.00000074

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01588517  0.00001109  0.00001147  0.00000970  0.03108787 -0.00000734 -0.00000074 -0.01520774

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00024937 -0.00000974  0.00002593  0.00002927  0.00000383  0.03315834 -0.00013460 -0.00009776

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000846  0.43773724 -0.43516942 -0.00000000  0.00000000  0.00000055 -0.00001205  0.00000224

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00003211 -0.00000813  0.00001056  0.22778910 -0.00007105  0.00022093 -0.25950769  0.00001257

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00002730 -0.00000032  0.00000239  0.00019845 -0.00006536 -0.26093763 -0.00023040 -0.00001608

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.30861415 -0.00000150 -0.00000752  0.00007110  0.22778094 -0.00005743  0.00001253  0.25948780

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000304  0.23827358  0.23968874  0.00002638 -0.00000572  0.00000000  0.00003640  0.00002395

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00006504  0.00002260  0.00000495 -0.42228057 -0.00000588 -0.00001198 -0.44528681  0.00016671

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.29271661  0.00000179 -0.00000390 -0.00000588  0.42228267 -0.00009964 -0.00016669 -0.44528629

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000127 -0.00001057 -0.04482310  0.00000000 -0.00000000

   1    1  |0 0>          -0.00017347 -0.00000127  0.00000173  0.00000027  0.00000000  0.00000000 -0.05626234 -0.00019024
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.04908518  0.00001513  0.00002897 -0.00000000  0.00000012 -0.00000000  0.00019045 -0.05626205
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00013653 -0.00018891 -0.00031922 -0.00000000  0.00000000  0.00000013 -0.00005978 -0.00019006
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00003165  0.02274596  0.04349528 -0.00000000  0.00000000  0.00000000 -0.00000102  0.00003274
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000008 -0.04349684  0.02274685  0.00000000 -0.00000000  0.00000000  0.00000155  0.00000006
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000075 -0.00000014  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.68297139 -0.00014518  0.00005809  0.00000662 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00001861  0.00000000  0.00000000  0.00014519  0.68297115 -0.00006143 -0.00000000 -0.00000465
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00005808  0.00006145  0.68297272  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00007632  0.00000849 -0.00001909 -0.00000205 -0.00000000  0.00000000 -0.44243781  0.00000038
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.50425456  0.00000079 -0.00001416 -0.00000000  0.00000573 -0.00000001 -0.00000037 -0.44243312
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00026379  0.00001502 -0.00001789 -0.00000000 -0.00000000  0.00000160 -0.00009239 -0.00003274
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |0 0>          -0.00001194 -0.24803233 -0.43902882 -0.00000000  0.00000000  0.00000000 -0.00000094 -0.00001536
                           0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |0 0>          -0.00000764  0.43902600 -0.24803113  0.00000000 -0.00000000  0.00000000  0.00000899  0.00000553
                          -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |0 0>          -0.00000000 -0.00001274 -0.00000405  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+          0.00000275  0.00000414 -0.00001417 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.01520849  0.00000077  0.00000016  0.00000000 -0.00000000 -0.00000033 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000010  0.00548708 -0.01667971 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000048
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000464  0.00000631  0.00000808  0.73536603 -0.00000874 -0.00000565 -0.13901648  0.00009499
                          -0.00000000 -0.00000000 -0.00000000  0.00000017 -0.00000000  0.00000000 -0.00000001  0.00000000

   5    1  |1 1>+         -0.00004696  0.00000911 -0.00000077  0.00000558  0.71138428 -0.00008950  0.00000003 -0.00007069
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.25946872 -0.00001321 -0.00000279 -0.00004673  0.00009919  0.72859571 -0.00085575  0.00000877
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000007  0.00000000  0.00000000

   7    1  |1 1>+         -0.00012449  0.00000252  0.00001517 -0.01389537 -0.00000432  0.00089890  0.61077467 -0.00011373
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000005 -0.00000000

   8    1  |1 1>+          0.00002685 -0.49298738 -0.16215774 -0.00005152  0.00000999 -0.00000354  0.00010471  0.57737917
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

   9    1  |1 1>+          0.00005281 -0.00001776  0.00000789 -0.00000000 -0.00001400 -0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.44529413 -0.00002970  0.00016402  0.00000001 -0.00000001 -0.00001897 -0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00014223  0.16068483 -0.48845584 -0.00000001 -0.00000002 -0.00000000  0.00000001  0.00001398
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000319 -0.00000000 -0.00000001 -0.00000249 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00001592  0.00000018 -0.00000040 -0.00000022 -0.00000000  0.00000000 -0.00000043  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000074 -0.01170194 -0.01309182 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000103

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01520817 -0.00000078 -0.00000016  0.00000000  0.00000000  0.00000081 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00005234 -0.00004035  0.00004498 -0.00001268 -0.69875502  0.00010034 -0.00001119 -0.00010643

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000015  0.00000000 -0.00000000 -0.00000002 -0.00000000
                          -0.00005050  0.00000301 -0.00000679  0.66627652 -0.00001202  0.00010712  0.29902102  0.00002373

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00001596 -0.38698338  0.34584236  0.00006418  0.00014408  0.00000350 -0.00009712 -0.57734811

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00007908 -0.00033904  0.00029126 -0.00001638 -0.07315840  0.00004469 -0.00002313 -0.00071360

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000
                          -0.25945848 -0.00001323 -0.00000278 -0.00002392  0.00005208  0.23058257  0.00016061 -0.00005578

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00008062  0.00002656  0.00001231 -0.00000012 -0.00000000  0.00000000 -0.00000646  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00016674 -0.34266975 -0.38338187 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00002983

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.44529116 -0.00013441 -0.00012976 -0.00000000  0.00000002  0.00002763 -0.00000001  0.00000001

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000440 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000084  0.01718897 -0.00358791 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000056

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000296  0.00000018 -0.00000040  0.00000016 -0.00000000  0.00000000  0.00000012 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000275 -0.00001411  0.00000301 -0.00000000  0.00000038 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000000 -0.00000000
                           0.51490554  0.00002623  0.00000551 -0.00000186  0.00008566  0.53009313 -0.00006143 -0.00001633

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00001098  0.10607788  0.50807334 -0.00006415  0.00000999 -0.00000278  0.00009713  0.57732298

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000006  0.00000000
                          -0.00017367  0.00000300 -0.00000678 -0.12296049 -0.00000549  0.00058243  0.71987032 -0.00013471

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000
                           0.06544469  0.00000355  0.00000176 -0.00015636 -0.00001826 -0.36739634  0.00103999 -0.00005725

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00005706 -0.00000908  0.00000074  0.00001858 -0.01793401 -0.00003705  0.00002551  0.00025843

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00002451  0.50334928 -0.10507311 -0.00000000 -0.00000002 -0.00000000 -0.00000001 -0.00001822

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00008662  0.00003660 -0.00001821  0.00000757 -0.00000001  0.00000001  0.00000347 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00008065  0.00002241 -0.00000272  0.00000000  0.00001615 -0.00000000  0.00000000 -0.00000001

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000348  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000211 -0.00000001  0.00000000

   1    1  |0 0>          -0.00006043  0.00000059 -0.00000148  0.00000063  0.00000001  0.00000000 -0.00000010  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00018960 -0.00003404 -0.00000323 -0.00000000  0.00000177  0.00000001  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.05626072  0.00042918  0.00002064  0.00000000  0.00000000 -0.00000320 -0.00000000 -0.00000002
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00042931 -0.05600864 -0.00532738 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000264
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00002009  0.00532738 -0.05601028 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000227
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000010  0.00000004  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000389 -0.00000000  0.00000000  0.00000699  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.00000001 -0.00000001  0.00000000  0.00000032 -0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000035  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000299 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00009239  0.00000149 -0.00000892  0.00000095 -0.00000000  0.00000001 -0.00000162  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00003274  0.00001568 -0.00000456  0.00000000  0.00000877 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.44243333  0.00002843  0.00000124  0.00000001 -0.00000001 -0.00001850 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |0 0>           0.00002845 -0.44154555 -0.02759628 -0.00000000  0.00000001  0.00000000  0.00000001  0.00001827
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |0 0>          -0.00000053  0.02759472 -0.44154116 -0.00000001 -0.00000001  0.00000000  0.00000001  0.00001643
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |0 0>           0.00000000 -0.00000381  0.00000214  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000012
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |1 1>+         -0.00000000  0.00000019 -0.00000164 -0.02387531  0.00000111  0.00000204 -0.03042387  0.00000110
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000133  0.00000000  0.00000058  0.00000111  0.02387562 -0.00000006  0.00000110  0.03042370
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00002034 -0.00000000  0.00000002  0.00002566  0.00000051
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00008502 -0.00001409 -0.02740940  0.00000189 -0.00000276 -0.04242625 -0.00000285 -0.00000736
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000350 -0.16516219  0.00000175  0.02574471 -0.00000120 -0.00000347  0.05484655 -0.00000198
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.05000004  0.00003345 -0.00000663 -0.00000120 -0.02575083  0.00009056 -0.00000197 -0.05484512
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00027975 -0.00002142  0.01150224 -0.00000074 -0.00002187 -0.10114528 -0.00000668 -0.00004619
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00004766 -0.00020412 -0.00000029 -0.00000000 -0.00000000  0.00000068  0.00000371  0.00000259
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000001  0.00001169 -0.00001867 -0.27096275 -0.00000427 -0.00003118  0.46418890  0.00001228
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00003244  0.00000001  0.00000659 -0.00000427  0.27097126  0.00000088  0.00001228 -0.46419117
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000001 -0.00000001 -0.00000000 -0.00000366  0.00008834 -0.00000028  0.00001024 -0.00015919
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.84684622 -0.00005835 -0.00002059 -0.00000087  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000011 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.02387536 -0.00000164  0.00001976  0.03042377  0.00000204 -0.00002586

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000086  0.00000090  0.00000098

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000005  0.00000000 -0.00001976  0.00000112  0.02387574 -0.00002586 -0.00000110 -0.03042368

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00004358 -0.11857963  0.00000163  0.02365943 -0.00000155 -0.00000446  0.06637703 -0.00000143

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00008194 -0.00002634  0.02574688 -0.00000181 -0.00000063  0.05484166  0.00000387  0.00000010

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00004778  0.00076702 -0.00000000 -0.00001823  0.00000000  0.00000148  0.00006699 -0.00000010

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00011361 -0.65240551  0.00000129  0.01799442 -0.00000126  0.00000598 -0.08731966  0.00000404

   8    1  |1 0>          -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.69295995  0.00012980  0.00000063  0.00000191  0.02575482  0.00000011 -0.00000224 -0.05484578

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.27096589 -0.00001867 -0.00001025 -0.46419393 -0.00003118 -0.00000715

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001 -0.00000001  0.00001692 -0.00000000 -0.00008835 -0.00004214 -0.00001373 -0.00016621

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001210 -0.00000000  0.00001026  0.00001265  0.27097425 -0.00000716  0.00001671  0.46419281

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000163  0.00005835  0.84684601 -0.00003955 -0.00000000 -0.00000204  0.00000001

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00002034  0.00000000 -0.00000085  0.00002476 -0.00000046

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.02387580  0.00000165  0.00000058  0.03042344  0.00000204  0.00000006

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000017 -0.00000165 -0.02387577  0.00000112 -0.00000204  0.03042352 -0.00000110

   4    1  |1 1>-         -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.23776228  0.00006259 -0.00000332 -0.00000028  0.00374601  0.00000707  0.00000488  0.10880900

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00004624 -0.00020410 -0.00000000 -0.00000000  0.00000006 -0.00000159 -0.00000115 -0.00000271

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00088662 -0.00002223 -0.02573675  0.00000177  0.00002486  0.05484331  0.00000368 -0.00002593

   7    1  |1 1>-         -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.67880386  0.00009288 -0.00002230 -0.00000180 -0.02948413  0.00004597  0.00000140  0.01382805

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00011980  0.73008675  0.00000177  0.02573804 -0.00000162  0.00000368 -0.05484744  0.00000411

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00001693  0.00000366 -0.00000000  0.00004187  0.00002396  0.00000703

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001 -0.00000000 -0.27097578  0.00010702  0.00000659 -0.46419860  0.00012016 -0.00000088

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00001221 -0.00010702 -0.27097867  0.00001265 -0.00012016 -0.46419591  0.00001671

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                          -0.00000640  0.00000000  0.00002059  0.00003955  0.84684529  0.00000000 -0.00000001  0.00000033

   1    1  |0 0>           0.00000000 -0.00000001 -0.00000069 -0.00000000  0.00000000 -0.01296661 -0.00004534  0.00001137
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000001 -0.00000148  0.00000000 -0.00000100  0.00000000  0.00004538 -0.01296618  0.00004182
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000299 -0.00000000 -0.00000000 -0.00000000 -0.00000020 -0.00001122 -0.00004192 -0.01296590
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000045  0.00000756 -0.00009852
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000007  0.00000445
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.36421440  0.00006134  0.00002948  0.00000155  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000001  0.00001299  0.00006134  0.36421515  0.00003616 -0.00000000 -0.00000204  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000092 -0.00000001  0.00002948 -0.00003617  0.36421245  0.00000000  0.00000000 -0.00000009
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000001 -0.00000000 -0.00000616  0.00000000  0.00000000  0.74093086  0.00008496 -0.00000916
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00000816 -0.00000000 -0.00000857  0.00000000 -0.00008496  0.74093484  0.00005263
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00001923  0.00000000 -0.00000000 -0.00000000 -0.00000234  0.00000917 -0.00005263  0.74093559
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001420  0.00002560  0.00002366
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>          -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00001043 -0.00000447  0.00000845
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     49          50          51

   1    1  |1 1>+         -0.00000766  0.00002872 -0.00002256
                          -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000056 -0.00000064  0.00000000
                          -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.01022956  0.03360843 -0.02648584
                          -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000070 -0.00000019  0.00000000
                          -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000189 -0.00000015 -0.00000000
                          -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000100  0.00000114  0.00000000
                           0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000098  0.00000035 -0.00000000
                          -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.10494836  0.03194451  0.00000134
                           0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00001813  0.00000564 -0.00000359
                          -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00004239  0.00017686 -0.00008673
                           0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.15607028 -0.51274845  0.26602085
                           0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000001  0.00000000
                           0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00000081 -0.00000026 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                           0.02399065  0.02566375  0.02648558

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000
                           0.00000056  0.00000064  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000
                           0.00000834 -0.00001012  0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000
                          -0.00000146 -0.00000047 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000
                           0.08013897 -0.07491838  0.00000224

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000
                           0.00007023 -0.00006259  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000
                           0.00000101  0.00000114 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                           0.00003524  0.00002848  0.00001662

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000
                          -0.36602047 -0.39153959 -0.26601786

  11    1  |1 0>           0.00000000  0.00000000  0.00000000
                          -0.00012783 -0.00013734 -0.00008673

  12    1  |1 0>           0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                          -0.03422108  0.00794523  0.02648519

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                          -0.00000081 -0.00000026  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                           0.00002810 -0.00000685 -0.00002256

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                          -0.00000199 -0.00000227 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000
                          -0.02480701 -0.10686255 -0.00000002

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                          -0.00000146 -0.00000047 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000
                          -0.00000031 -0.00000051  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                           0.00000189  0.00000015  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000
                           0.52209764 -0.12121349 -0.26601200

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                           0.00004498 -0.00000355 -0.00001662

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                           0.00002309 -0.00000035 -0.00000360

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000

   1    1  |0 0>           0.00000033  0.00000011  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000786 -0.00000049 -0.00000000
                          -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00009855  0.00000269  0.00000000
                           0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.01293061 -0.00093907 -0.00000004
                          -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00093893 -0.01293052  0.00000005
                           0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000033 -0.00000020 -0.03249359
                           0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00001377 -0.00001099  0.00000000
                           0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00002575  0.00000344 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00002329 -0.00000939 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>           0.74035976  0.02968639 -0.00000009
                           0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>          -0.02968759  0.74036447  0.00000033
                          -0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>          -0.00000218  0.00000101  0.88574529
                          -0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.55193215     -0.04959069   -10883.90      0.00000000        0.00      0.0000
     2   1   -192.51902718     -0.01668572    -3662.09      0.03290497     7221.81      0.8954
     3   1   -192.51902716     -0.01668571    -3662.09      0.03290498     7221.81      0.8954
     4   1   -192.51902716     -0.01668571    -3662.09      0.03290499     7221.81      0.8954
     5   1   -192.50542985     -0.00308839     -677.82      0.04650230    10206.08      1.2654
     6   1   -192.50542983     -0.00308837     -677.82      0.04650232    10206.08      1.2654
     7   1   -192.50542897     -0.00308752     -677.63      0.04650317    10206.27      1.2654
     8   1   -192.50542897     -0.00308752     -677.63      0.04650318    10206.27      1.2654
     9   1   -192.50542897     -0.00308752     -677.63      0.04650318    10206.27      1.2654
    10   1   -192.45993783      0.04240362     9306.52      0.09199431    20190.42      2.5033
    11   1   -192.45993782      0.04240363     9306.52      0.09199433    20190.42      2.5033
    12   1   -192.45993780      0.04240365     9306.53      0.09199434    20190.42      2.5033
    13   1   -192.45993697      0.04240448     9306.71      0.09199517    20190.61      2.5033
    14   1   -192.45993696      0.04240450     9306.71      0.09199519    20190.61      2.5033
    15   1   -192.42160873      0.08073272    17718.78      0.13032341    28602.68      3.5463
    16   1   -192.35497420      0.14736725    32343.37      0.19695794    43227.27      5.3595
    17   1   -192.35497414      0.14736732    32343.39      0.19695801    43227.29      5.3595
    18   1   -192.35497409      0.14736736    32343.40      0.19695805    43227.30      5.3595
    19   1   -192.34639760      0.15594385    34225.72      0.20553455    45109.62      5.5929
    20   1   -192.34490969      0.15743176    34552.28      0.20702246    45436.18      5.6334
    21   1   -192.34490965      0.15743180    34552.29      0.20702250    45436.19      5.6334
    22   1   -192.34490954      0.15743192    34552.31      0.20702261    45436.21      5.6334
    23   1   -192.34367390      0.15866755    34823.50      0.20825824    45707.40      5.6670
    24   1   -192.34367390      0.15866756    34823.50      0.20825825    45707.40      5.6670
    25   1   -192.34367386      0.15866759    34823.51      0.20825828    45707.41      5.6670
    26   1   -192.34367351      0.15866794    34823.59      0.20825864    45707.49      5.6670
    27   1   -192.34367344      0.15866802    34823.60      0.20825871    45707.50      5.6670
    28   1   -192.30030762      0.20203383    44341.30      0.25162453    55225.20      6.8471
    29   1   -192.30030756      0.20203389    44341.31      0.25162458    55225.21      6.8471
    30   1   -192.30030749      0.20203396    44341.33      0.25162465    55225.23      6.8471
    31   1   -192.29737688      0.20496457    44984.52      0.25455527    55868.42      6.9268
    32   1   -192.29737681      0.20496465    44984.54      0.25455534    55868.44      6.9268
    33   1   -192.29737675      0.20496470    44984.55      0.25455540    55868.45      6.9268
    34   1   -192.29737652      0.20496494    44984.60      0.25455563    55868.50      6.9268
    35   1   -192.29737645      0.20496500    44984.62      0.25455570    55868.52      6.9268
    36   1   -192.29577621      0.20656524    45335.83      0.25615594    56219.73      6.9704
    37   1   -192.29577621      0.20656525    45335.83      0.25615594    56219.73      6.9704
    38   1   -192.29577608      0.20656538    45335.86      0.25615607    56219.76      6.9704
    39   1   -192.29577603      0.20656542    45335.87      0.25615612    56219.77      6.9704
    40   1   -192.29577599      0.20656546    45335.88      0.25615615    56219.78      6.9704
    41   1   -192.29577589      0.20656556    45335.90      0.25615625    56219.80      6.9704
    42   1   -192.29577588      0.20656558    45335.90      0.25615627    56219.80      6.9704
    43   1   -192.29282679      0.20951467    45983.15      0.25910536    56867.05      7.0506
    44   1   -192.29282677      0.20951468    45983.16      0.25910537    56867.06      7.0506
    45   1   -192.29282677      0.20951469    45983.16      0.25910538    56867.06      7.0506
    46   1   -192.28660755      0.21573390    47348.12      0.26532460    58232.02      7.2199
    47   1   -192.28660740      0.21573406    47348.15      0.26532475    58232.05      7.2199
    48   1   -192.28660727      0.21573418    47348.18      0.26532487    58232.08      7.2199
    49   1   -192.28660682      0.21573463    47348.28      0.26532533    58232.18      7.2199
    50   1   -192.28660649      0.21573496    47348.35      0.26532566    58232.25      7.2199
    51   1   -192.27376586      0.22857559    50166.54      0.27816629    61050.44      7.5693

 E0 =   -192.50234145 is the energy of the lowest zeroth-order state
 E1 =   -192.55193215 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00045773  0.70548345  0.00020838  0.00006028  0.00051837  0.00015066 -0.54591071 -0.00310289
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000002 -0.00020855  0.70548082  0.00191627 -0.00005723  0.00009626 -0.00303284  0.54582134
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

  3  1     3    1  |1 1>+       0.53728751 -0.00060102 -0.00000015 -0.00000005  0.60560270  0.17501446  0.00046811  0.00003524
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.00000144 -0.00004824  0.01698008 -0.00000029  0.00000076  0.00015543 -0.00044411
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000000 -0.01594650 -0.00000471 -0.00000135  0.00000013  0.00000009 -0.03000096 -0.00017052
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000000  0.00000471 -0.01594643 -0.00003959 -0.00000314  0.00000529 -0.00016700  0.02999697
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000000  0.00000057  0.00000598 -0.00712377 -0.00000028  0.00000035  0.00037036 -0.00104301
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000004  0.00000000 -0.00000000  0.00000018  0.01665889 -0.05764477 -0.00000015  0.00001189
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00000042 -0.00836772 -0.00000195 -0.00000071 -0.00000003 -0.00000000 -0.00253247 -0.00001455
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00001004  0.00000195 -0.00836774 -0.00002273 -0.00000118  0.00000018 -0.00001423  0.00253218
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.03080369 -0.00000011 -0.00000273 -0.00000001  0.00280918  0.00081182 -0.00000002  0.00000098
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000000 -0.00000425 -0.00013628  0.05017142 -0.00000000  0.00000000  0.00000001 -0.00000002
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00005954  0.00251731 -0.70548000  0.00000004 -0.00000602  0.00365866 -0.01100384

 14  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                               -0.53728738  0.00000000 -0.00000002 -0.00000001  0.15123444  0.61197489  0.00000299 -0.00009214

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                               -0.00000002 -0.00020860  0.70548024  0.00251729  0.00005721 -0.00009624  0.00302971 -0.54581057

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.01465865 -0.00000461 -0.00000125  0.00000789 -0.00000181 -0.03631246 -0.00020692

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000137  0.00004331 -0.01594638  0.00000000  0.00000033 -0.00020102  0.00057917

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000009  0.00001129  0.00000000  0.00000000  0.05825139 -0.01439537 -0.00003508  0.00000844

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.01114433 -0.00000355 -0.00000099  0.00004864 -0.00001221  0.04776654  0.00027102

 20  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000515  0.01594637  0.00004331 -0.00000314  0.00000529 -0.00016653  0.02999600

 21  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000192 -0.00000071 -0.00002262  0.00836774 -0.00000004 -0.00000021  0.00001696 -0.00004886

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.03080368 -0.00000000  0.00000273  0.00000053  0.00070165  0.00283870  0.00000001  0.00000039

 23  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00001004  0.00000247 -0.00836770 -0.00002262  0.00000049  0.00000048  0.00001407 -0.00253210

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.05017158  0.00001482  0.00000429  0.00000000  0.00000000  0.00000070  0.00000000

 25  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000
                               -0.53728741  0.00060102  0.00000018  0.00000005  0.45436845 -0.43695988  0.00046513  0.00012738

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00000000 -0.00005974 -0.00191629  0.70548110  0.00000000 -0.00000594  0.00365607 -0.01053887

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00045773  0.70548418  0.00020839  0.00006031 -0.00038953  0.00037069  0.54590969  0.00310280

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000041  0.00232127  0.00000842  0.00000624 -0.00001050  0.00033013 -0.05951347

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000009 -0.00000000  0.00000004  0.00000000  0.04159246  0.04324947  0.00000033 -0.00000326

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000135 -0.00002830  0.01594651 -0.00000000  0.00000033 -0.00020100  0.00059341

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000566 -0.01826584 -0.00003624  0.00000088 -0.00000124  0.00004136 -0.00756247

 32  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.01594643 -0.00000497 -0.00000136 -0.00000013 -0.00000009  0.03000095  0.00016936

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.03080373  0.00000011 -0.00000000  0.00000052  0.00210755 -0.00202697 -0.00000004  0.00000058

 34  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000192  0.00000344  0.00002273 -0.00836766  0.00000013 -0.00000015  0.00001613 -0.00004889

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000042 -0.00836774 -0.00000246 -0.00000344  0.00000002 -0.00000003  0.00253254  0.00001438

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00001483 -0.05017181 -0.00013628 -0.00000000 -0.00000000  0.00000000 -0.00000010

 37  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000035 -0.00000030 -0.00000637  0.00639336 -0.01272385
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

 38  1     2    1  |0 0>        0.00000000  0.00000050  0.00000000  0.00000000 -0.00020188  0.00035068  0.63100132  0.00161602
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000065 -0.00000000  0.00244460 -0.00396407 -0.00148430  0.63088799
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

 40  1     4    1  |0 0>        0.00000011  0.00000000 -0.00000000 -0.00000000 -0.30491105  0.55246493 -0.00041545  0.00464968
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000002  0.00000000  0.00000000  0.00000000  0.55247905  0.30492083  0.00000786 -0.00022482
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.35660485  0.00000000  0.00000000  0.00000000 -0.00000003  0.00000016  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000 -0.00000605 -0.00008738  0.03285534 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000000 -0.03285548 -0.00000490 -0.00000606 -0.00000000 -0.00000000 -0.00000008 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000 -0.00000492  0.03285534  0.00008738  0.00000000 -0.00000000 -0.00000000  0.00000005
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000011  0.00000017  0.00000013 -0.00011663  0.00033406
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00000000  0.00000009 -0.00000000  0.00000000 -0.00000003 -0.00000002 -0.01729165 -0.00010015
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000157 -0.00000294  0.00009791 -0.01728881
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00000058 -0.00000000  0.00000000 -0.00000000  0.00884201 -0.01486096 -0.00000002  0.00000333
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>        0.00000042 -0.00000000 -0.00000000  0.00000000 -0.01486086 -0.00884198  0.00000003  0.00000016
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>        0.06286978  0.00000000  0.00000000  0.00000000  0.00000015 -0.00000002 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.00359680  0.00193330  0.44782249  0.00107875  0.00005216 -0.00044343  0.00017555 -0.00000012
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.01055926  0.00021231  0.00107782 -0.44782683  0.00008111 -0.00001090 -0.00000001 -0.00000006
                                0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000055 -0.00000570 -0.00038842  0.00002255  0.06064191 -0.51354160  0.20606138  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.02320697  0.01012673 -0.00004373  0.00000643  0.00000036 -0.00000004  0.00000000 -0.49120119
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001

  5  1     5    1  |1 1>+       0.00019755 -0.00005656 -0.01308937 -0.00003153 -0.00000001  0.00000017 -0.00000000  0.00007949
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00053082 -0.00002780 -0.00003141  0.01308963 -0.00000237  0.00000032 -0.00000000 -0.00006485
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.05532176  0.02414043 -0.00010430  0.00002217  0.00000019 -0.00000017 -0.00000000  0.20604905
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000092  0.00000029 -0.00000000 -0.00000463 -0.02599801 -0.00307004  0.00000000 -0.00000523
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00001668  0.00010235  0.02370720  0.00005859 -0.00000002  0.00000005 -0.00000025  0.00000114
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00004899  0.00001125  0.00005854 -0.02370731  0.00000325  0.00000829 -0.00000609  0.00000061
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00000003 -0.00000021 -0.00000003 -0.00000649  0.00321033 -0.02718642  0.01867516  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000080  0.00000034 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.17648573
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.54580727 -0.44782410  0.00193289  0.00017387  0.00000433  0.00000403  0.00000000  0.00067932

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00000486 -0.00000684 -0.00000344 -0.00006755 -0.41441938 -0.30928849 -0.20606152  0.00000000

 15  1     3    1  |1 0>        0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01102422  0.00016921 -0.00107946  0.44782673 -0.00008113  0.00001090 -0.00000001 -0.00000064

 16  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00023924 -0.00006840 -0.01584282 -0.00003839 -0.00000209  0.00000299 -0.00000000  0.00007347

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                               -0.02999584 -0.01308954  0.00005648 -0.00000607  0.00000013  0.00000012 -0.00000000  0.46130454

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000024 -0.00000003 -0.00001507 -0.00000338 -0.01565765  0.02098010  0.00000007 -0.00000006

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00031479  0.00008994  0.02084017  0.00004998 -0.00001311  0.00001732 -0.00000000  0.00005683

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00058029 -0.00000621 -0.00003144  0.01308955 -0.00000237  0.00000032  0.00000000 -0.00004281

 21  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00253217 -0.02370719  0.00010237 -0.00001131  0.00000160  0.00000124  0.00000117 -0.00657500

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000020 -0.00000184 -0.00000016 -0.00001131 -0.02193899 -0.01637340 -0.01867512 -0.00000041

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00004895 -0.00001156 -0.00005706  0.02370736 -0.00001145 -0.00000476 -0.00000609  0.00000052

 24  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000035  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00003058

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000
                               -0.00000541  0.00000113 -0.00038497  0.00009010  0.47506121 -0.20425341 -0.20606122 -0.00000000

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.54581739 -0.44782420  0.00193382 -0.00020765  0.00000440  0.00000402 -0.00000000 -0.00067918

 27  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00359677 -0.00193332 -0.44782257 -0.00107880 -0.00040521  0.00017994  0.00017555 -0.00000012

 28  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00115530  0.00001057  0.00006228 -0.02596984  0.00000470 -0.00000063  0.00000000 -0.00006742

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000041  0.00000032  0.00000030  0.00000129  0.01034043  0.02405004 -0.00000001  0.00000000

 30  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.02999555 -0.01308935  0.00005651  0.00000014  0.00000013  0.00000012  0.00000000 -0.46130148

 31  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00017146 -0.00000941  0.00000778 -0.00330023  0.00000062 -0.00000003 -0.00000000 -0.00033785

 32  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00019769  0.00005651  0.01308938  0.00003102  0.00000001 -0.00000017 -0.00000000  0.00007993

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000017  0.00000163  0.00000013  0.00000482  0.02514936 -0.01081309 -0.01867516 -0.00000041

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00253203 -0.02370714  0.00011010 -0.00001097  0.00000180 -0.00000046 -0.00000117  0.00657045

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00001586 -0.00011008 -0.02370709 -0.00005711  0.00000031  0.00000017 -0.00000025  0.00000328

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001638

 37  1     1    1  |0 0>        0.63087519  0.77204283 -0.00068421 -0.00031415 -0.00000663 -0.00000709 -0.00000000  0.00000030
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00636204  0.00068397  0.77204273 -0.00060391  0.00049378 -0.00006726 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.01273911  0.00031464  0.00060749  0.77201987 -0.00592736  0.00091297 -0.00000000  0.00000000
                                0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00010342  0.00000784 -0.00049343  0.00599093  0.76772990 -0.08125040  0.00000004 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000127  0.00000764  0.00001469 -0.00028408  0.08125501  0.76775300  0.00000001 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000012 -0.00000003  0.93288921 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000006 -0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.50934226
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001

 44  1     8    1  |0 0>        0.00000000  0.00000000  0.00000015  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00013894
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00001844
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.01728872  0.02639530 -0.00011273  0.00001187 -0.00000008 -0.00000044  0.00000000 -0.00000140
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00011471  0.00011270  0.02639518  0.00006641  0.00000006 -0.00000016 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00033472 -0.00001215 -0.00006635  0.02639544 -0.00000508  0.00000092 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00000004  0.00000002 -0.00000009  0.00000516  0.02614543 -0.00362725 -0.00000035  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000021  0.00000044  0.00000014 -0.00000021  0.00362723  0.02614536  0.00000028 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000016 -0.00000020  0.03588181  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00067956  0.00000008 -0.00003291  0.00000298 -0.02748228 -0.00000263 -0.00000166 -0.00000661
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000008 -0.00067964  0.00000000 -0.00000104  0.00000263 -0.02748163  0.00001820  0.01588418
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000058 -0.00000000 -0.03863467 -0.00000000  0.00002341  0.00000000  0.00000063 -0.00000048
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00008512  0.00010676 -0.00000001 -0.19746560 -0.00002144 -0.00001716  0.23877409 -0.00031451
                               -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000

  5  1     5    1  |1 1>+      -0.46130571 -0.00005631  0.00000000  0.00001996 -0.18544211 -0.00001775  0.00003100  0.00012838
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00005632  0.46130332  0.00000000 -0.00005031  0.00001775 -0.18546140 -0.00086262 -0.30861246
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00003469  0.00036778  0.00000000  0.08286945  0.00000862 -0.00015866  0.56917881 -0.00091098
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000

  8  1     8    1  |1 1>+      -0.00000000  0.00000001  0.00000432 -0.00000210  0.00000000  0.00000000  0.00002974 -0.00002279
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00657470 -0.00000121  0.00000690 -0.00005409  0.49814799  0.00001658  0.00003056  0.00014003
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00000121  0.00657805  0.00016664  0.00001876 -0.00001657  0.49813299 -0.00033535 -0.29269958
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.00000009  0.00000214 -0.51114028  0.00000003  0.00000673  0.00016240 -0.00001167 -0.00008656
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00003058 -0.00001637 -0.00000002 -0.49717015 -0.00005399  0.00001873  0.00002836 -0.00000002
                                0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000012 -0.00000064 -0.00000000 -0.02748235 -0.00000298 -0.00002238 -0.01588277  0.00000467

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.03863431 -0.00000000  0.00000000  0.00000000  0.00000073 -0.00000083

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000008 -0.00067945  0.00000000  0.00002238  0.00000263 -0.02748172 -0.00000467 -0.01588394

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.42405220 -0.00004369  0.00000000  0.00001851 -0.17046377 -0.00001956  0.00003898  0.00016079

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000
                                0.00008061 -0.00004280  0.00000001  0.18544385  0.00002041 -0.00000699 -0.30862147  0.00035361

 18  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00032661  0.00000004  0.00000923 -0.00000001  0.00013133  0.00000001 -0.00001012  0.00000279

 19  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.32235691 -0.00003180  0.00000001  0.00001446 -0.12962650 -0.00001545 -0.00005192 -0.00019934

 20  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00004360 -0.46129965 -0.00000000  0.00000698 -0.00002286  0.18545784 -0.00035359 -0.30861843

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000001  0.00000000
                               -0.00000114  0.00000052 -0.00003192  0.49814652  0.00005409 -0.00002549  0.29267825 -0.00033931

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000214  0.51114594  0.00003110  0.00000002 -0.00016240  0.00000469 -0.00008021

 23  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000080  0.00657556  0.00016664  0.00002552 -0.00004769  0.49813494  0.00033930  0.29269466

 24  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.17648751 -0.00002154 -0.00000000 -0.00005399  0.49716981  0.00004760 -0.00000000 -0.00000001

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000058  0.00000000  0.03863410  0.00000000 -0.00002341 -0.00000000 -0.00000010  0.00000035

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000012  0.00000006  0.00000000  0.02748103  0.00000299 -0.00000104 -0.01588509  0.00001820

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00067924  0.00000008 -0.00003291  0.00000299 -0.02748098 -0.00000263  0.00000166  0.00000661

 28  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00001626 -0.06715394  0.00000000 -0.00002357  0.00000066  0.02699876  0.00066061  0.61231323

 29  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000111  0.00000710  0.00000000  0.00000000  0.00000044 -0.00002641  0.00002526

 30  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000001 -0.00000000
                               -0.00007989 -0.00039147 -0.00000000 -0.18546493 -0.00002016  0.00018157 -0.30861245  0.00020712

 31  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00005701  0.52841959  0.00000000 -0.00016355  0.00002336 -0.21243227 -0.00016967  0.07781632

 32  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.46129891 -0.00004884  0.00000000  0.00002013 -0.18546615 -0.00002076 -0.00003219 -0.00011638

 33  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000009  0.00000000  0.51115311  0.00003110 -0.00000672  0.00000000 -0.00001636 -0.00000634

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000001  0.00000000
                                0.00000328 -0.00000061  0.00003192 -0.49812221 -0.00021649  0.00001875  0.29271651 -0.00033533

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00657117 -0.00000080  0.00000691 -0.00021649  0.49812186  0.00004770  0.00006490 -0.00012187

 36  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00002154 -0.17647902  0.00000001 -0.00001873  0.00004760 -0.49717388  0.00000001  0.00000133

 37  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000188  0.00000001 -0.00000000 -0.04908530  0.00001317
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000054  0.00000000  0.00000000  0.00000001  0.00000185  0.00000000  0.00017344 -0.00013634
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000000 -0.00000030 -0.00000000 -0.00000000  0.00000001  0.00000021  0.00001365  0.04908424
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000040 -0.00000000 -0.00000000  0.00000000  0.00000093  0.00037051
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000062  0.00000000 -0.00000000  0.00000000  0.00000192 -0.00001947
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000000  0.03866358 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00013895 -0.00001841 -0.00000001 -0.37468505 -0.00007798  0.00003533  0.00001802 -0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.50934347  0.00013654  0.00000000  0.00007798 -0.37468308  0.00001883 -0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00013654  0.50934503 -0.00000000  0.00003533  0.00001884  0.37468079 -0.00000000  0.00000037
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00001985  0.00000000  0.00000000  0.50425603 -0.00057058
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000

 47  1    11    1  |0 0>        0.00000195  0.00000000  0.00000000 -0.00000000 -0.00001881 -0.00000001 -0.00007662 -0.00026370
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000000  0.00000148 -0.00000000 -0.00000001  0.00000000 -0.00000242 -0.00057053 -0.50425295
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.00000000  0.00000000 -0.00001058  0.00000000 -0.00000000 -0.00000000 -0.00001243  0.00000821
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00000000  0.00000000  0.00000984  0.00000000  0.00000000 -0.00000000 -0.00001676  0.00002190
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000000  0.00000000  0.45849227 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.01588289 -0.00001518  0.00000361  0.00000970  0.03108721 -0.00000733  0.00000074  0.01520896
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000661 -0.00000025  0.00000067  0.00000088 -0.00000734 -0.03108733 -0.00000296 -0.00000275
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00001350 -0.01772949  0.00469513 -0.00000001 -0.00002648  0.00000001  0.00000050 -0.00001272
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00002478  0.00000353 -0.00001863  0.24255716 -0.00007571 -0.00002331  0.20077808 -0.00000970
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.30862160  0.00000151  0.00000752  0.00007131  0.22779230 -0.00005375 -0.00001355 -0.25947786
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00012846  0.00000489 -0.00001305  0.00005963 -0.00005376 -0.22778810 -0.00037754  0.00004700
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00005835  0.00001241 -0.00002927 -0.10175211  0.00003219 -0.00019394  0.47860192 -0.00002365
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00001531  0.15799926  0.59667194  0.00000258 -0.00000000 -0.00000000  0.00000988 -0.00001681
                               -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.29267668 -0.00000299  0.00000830  0.00013180  0.42228397 -0.00007326  0.00002152  0.44529909
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00014007 -0.00010187  0.00001581  0.00001199 -0.00007327 -0.42228279 -0.00008665 -0.00005280
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.00000451  0.32672720 -0.08651321  0.00000000  0.00000568 -0.00013768  0.00001460  0.00001304
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.04482077 -0.00001399  0.00000128 -0.00000399 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000166 -0.00000042  0.00000054  0.03108740 -0.00000971 -0.00002560 -0.01520890  0.00000074

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000041 -0.00479981  0.01770194  0.00000000 -0.00000000  0.00000000  0.00000021 -0.00000037

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000661  0.00000025 -0.00000067 -0.00002560 -0.00000733 -0.03108745  0.00001592  0.00000275

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.37354704  0.00008084  0.00003053  0.00006536  0.20939841 -0.00005340 -0.00001518 -0.31411257

 17  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00003309 -0.00000813  0.00001057 -0.22778384  0.00007076 -0.00000648 -0.25950262  0.00001168

 18  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00035572  0.59573485  0.16150628 -0.00000005 -0.00016128  0.00000004 -0.00001354 -0.00031943

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.49136845  0.00049725  0.00012348  0.00004921  0.15918817 -0.00004129  0.00001941  0.41318779

 20  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00012691  0.00000492 -0.00001306 -0.00000646  0.00006002  0.22778244  0.00005048  0.00004824

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00003040  0.00000218  0.00001036  0.42228724 -0.00013180  0.00001772 -0.44528933  0.00002153

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000755  0.08842647 -0.32620688  0.00002637  0.00000002  0.00013768 -0.00002179 -0.00001092

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00012179  0.00002418 -0.00009396  0.00001770 -0.00009964 -0.42228333  0.00008062  0.00008062

 24  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00002921 -0.00000000 -0.00000000 -0.00001399 -0.04482157  0.00001057 -0.00000000 -0.00000903

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00001391 -0.01293163 -0.01300729  0.00000001  0.00002648 -0.00000001  0.00000029 -0.00001234

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000165 -0.00000042  0.00000054 -0.03108761  0.00000970 -0.00000088 -0.01520838  0.00000074

 27  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01588517  0.00001109  0.00001147  0.00000970  0.03108787 -0.00000734 -0.00000074 -0.01520774

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00024937 -0.00000974  0.00002593  0.00002927  0.00000383  0.03315834 -0.00013460 -0.00009776

 29  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000846  0.43773724 -0.43516942 -0.00000000  0.00000000  0.00000055 -0.00001205  0.00000224

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00003211 -0.00000813  0.00001056  0.22778910 -0.00007105  0.00022093 -0.25950769  0.00001257

 31  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00002730 -0.00000032  0.00000239  0.00019845 -0.00006536 -0.26093763 -0.00023040 -0.00001608

 32  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.30861415 -0.00000150 -0.00000752  0.00007110  0.22778094 -0.00005743  0.00001253  0.25948780

 33  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000304  0.23827358  0.23968874  0.00002638 -0.00000572  0.00000000  0.00003640  0.00002395

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00006504  0.00002260  0.00000495 -0.42228057 -0.00000588 -0.00001198 -0.44528681  0.00016671

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.29271661  0.00000179 -0.00000390 -0.00000588  0.42228267 -0.00009964 -0.00016669 -0.44528629

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000127 -0.00001057 -0.04482310  0.00000000 -0.00000000

 37  1     1    1  |0 0>       -0.00017347 -0.00000127  0.00000173  0.00000027  0.00000000  0.00000000 -0.05626234 -0.00019024
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.04908518  0.00001513  0.00002897 -0.00000000  0.00000012 -0.00000000  0.00019045 -0.05626205
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00013653 -0.00018891 -0.00031922 -0.00000000  0.00000000  0.00000013 -0.00005978 -0.00019006
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00003165  0.02274596  0.04349528 -0.00000000  0.00000000  0.00000000 -0.00000102  0.00003274
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000008 -0.04349684  0.02274685  0.00000000 -0.00000000  0.00000000  0.00000155  0.00000006
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000075 -0.00000014  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.68297139 -0.00014518  0.00005809  0.00000662 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00001861  0.00000000  0.00000000  0.00014519  0.68297115 -0.00006143 -0.00000000 -0.00000465
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00005808  0.00006145  0.68297272  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00007632  0.00000849 -0.00001909 -0.00000205 -0.00000000  0.00000000 -0.44243781  0.00000038
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>        0.50425456  0.00000079 -0.00001416 -0.00000000  0.00000573 -0.00000001 -0.00000037 -0.44243312
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00026379  0.00001502 -0.00001789 -0.00000000 -0.00000000  0.00000160 -0.00009239 -0.00003274
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.00001194 -0.24803233 -0.43902882 -0.00000000  0.00000000  0.00000000 -0.00000094 -0.00001536
                                0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00000764  0.43902600 -0.24803113  0.00000000 -0.00000000  0.00000000  0.00000899  0.00000553
                               -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000000 -0.00001274 -0.00000405  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+       0.00000275  0.00000414 -0.00001417 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.01520849  0.00000077  0.00000016  0.00000000 -0.00000000 -0.00000033 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000010  0.00548708 -0.01667971 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000048
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000464  0.00000631  0.00000808  0.73536603 -0.00000874 -0.00000565 -0.13901648  0.00009499
                               -0.00000000 -0.00000000 -0.00000000  0.00000017 -0.00000000  0.00000000 -0.00000001  0.00000000

  5  1     5    1  |1 1>+      -0.00004696  0.00000911 -0.00000077  0.00000558  0.71138428 -0.00008950  0.00000003 -0.00007069
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.25946872 -0.00001321 -0.00000279 -0.00004673  0.00009919  0.72859571 -0.00085575  0.00000877
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000007  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00012449  0.00000252  0.00001517 -0.01389537 -0.00000432  0.00089890  0.61077467 -0.00011373
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000005 -0.00000000

  8  1     8    1  |1 1>+       0.00002685 -0.49298738 -0.16215774 -0.00005152  0.00000999 -0.00000354  0.00010471  0.57737917
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

  9  1     9    1  |1 1>+       0.00005281 -0.00001776  0.00000789 -0.00000000 -0.00001400 -0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.44529413 -0.00002970  0.00016402  0.00000001 -0.00000001 -0.00001897 -0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00014223  0.16068483 -0.48845584 -0.00000001 -0.00000002 -0.00000000  0.00000001  0.00001398
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000319 -0.00000000 -0.00000001 -0.00000249 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00001592  0.00000018 -0.00000040 -0.00000022 -0.00000000  0.00000000 -0.00000043  0.00000000

 14  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000074 -0.01170194 -0.01309182 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000103

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01520817 -0.00000078 -0.00000016  0.00000000  0.00000000  0.00000081 -0.00000000 -0.00000000

 16  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00005234 -0.00004035  0.00004498 -0.00001268 -0.69875502  0.00010034 -0.00001119 -0.00010643

 17  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000015  0.00000000 -0.00000000 -0.00000002 -0.00000000
                               -0.00005050  0.00000301 -0.00000679  0.66627652 -0.00001202  0.00010712  0.29902102  0.00002373

 18  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00001596 -0.38698338  0.34584236  0.00006418  0.00014408  0.00000350 -0.00009712 -0.57734811

 19  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00007908 -0.00033904  0.00029126 -0.00001638 -0.07315840  0.00004469 -0.00002313 -0.00071360

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000
                               -0.25945848 -0.00001323 -0.00000278 -0.00002392  0.00005208  0.23058257  0.00016061 -0.00005578

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00008062  0.00002656  0.00001231 -0.00000012 -0.00000000  0.00000000 -0.00000646  0.00000000

 22  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00016674 -0.34266975 -0.38338187 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00002983

 23  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.44529116 -0.00013441 -0.00012976 -0.00000000  0.00000002  0.00002763 -0.00000001  0.00000001

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000440 -0.00000000 -0.00000000  0.00000000

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000084  0.01718897 -0.00358791 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000056

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000296  0.00000018 -0.00000040  0.00000016 -0.00000000  0.00000000  0.00000012 -0.00000000

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000275 -0.00001411  0.00000301 -0.00000000  0.00000038 -0.00000000  0.00000000  0.00000000

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000000 -0.00000000
                                0.51490554  0.00002623  0.00000551 -0.00000186  0.00008566  0.53009313 -0.00006143 -0.00001633

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00001098  0.10607788  0.50807334 -0.00006415  0.00000999 -0.00000278  0.00009713  0.57732298

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000006  0.00000000
                               -0.00017367  0.00000300 -0.00000678 -0.12296049 -0.00000549  0.00058243  0.71987032 -0.00013471

 31  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000
                                0.06544469  0.00000355  0.00000176 -0.00015636 -0.00001826 -0.36739634  0.00103999 -0.00005725

 32  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00005706 -0.00000908  0.00000074  0.00001858 -0.01793401 -0.00003705  0.00002551  0.00025843

 33  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00002451  0.50334928 -0.10507311 -0.00000000 -0.00000002 -0.00000000 -0.00000001 -0.00001822

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00008662  0.00003660 -0.00001821  0.00000757 -0.00000001  0.00000001  0.00000347 -0.00000000

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00008065  0.00002241 -0.00000272  0.00000000  0.00001615 -0.00000000  0.00000000 -0.00000001

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000348  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000211 -0.00000001  0.00000000

 37  1     1    1  |0 0>       -0.00006043  0.00000059 -0.00000148  0.00000063  0.00000001  0.00000000 -0.00000010  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00018960 -0.00003404 -0.00000323 -0.00000000  0.00000177  0.00000001  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.05626072  0.00042918  0.00002064  0.00000000  0.00000000 -0.00000320 -0.00000000 -0.00000002
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00042931 -0.05600864 -0.00532738 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000264
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00002009  0.00532738 -0.05601028 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000227
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000 -0.00000010  0.00000004  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000389 -0.00000000  0.00000000  0.00000699  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000000  0.00000001 -0.00000001  0.00000000  0.00000032 -0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000035  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000299 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00009239  0.00000149 -0.00000892  0.00000095 -0.00000000  0.00000001 -0.00000162  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00003274  0.00001568 -0.00000456  0.00000000  0.00000877 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.44243333  0.00002843  0.00000124  0.00000001 -0.00000001 -0.00001850 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00002845 -0.44154555 -0.02759628 -0.00000000  0.00000001  0.00000000  0.00000001  0.00001827
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00000053  0.02759472 -0.44154116 -0.00000001 -0.00000001  0.00000000  0.00000001  0.00001643
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.00000000 -0.00000381  0.00000214  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000012
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |1 1>+      -0.00000000  0.00000019 -0.00000164 -0.02387531  0.00000111  0.00000204 -0.03042387  0.00000110
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000133  0.00000000  0.00000058  0.00000111  0.02387562 -0.00000006  0.00000110  0.03042370
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00002034 -0.00000000  0.00000002  0.00002566  0.00000051
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00008502 -0.00001409 -0.02740940  0.00000189 -0.00000276 -0.04242625 -0.00000285 -0.00000736
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000350 -0.16516219  0.00000175  0.02574471 -0.00000120 -0.00000347  0.05484655 -0.00000198
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.05000004  0.00003345 -0.00000663 -0.00000120 -0.02575083  0.00009056 -0.00000197 -0.05484512
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00027975 -0.00002142  0.01150224 -0.00000074 -0.00002187 -0.10114528 -0.00000668 -0.00004619
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00004766 -0.00020412 -0.00000029 -0.00000000 -0.00000000  0.00000068  0.00000371  0.00000259
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000001  0.00001169 -0.00001867 -0.27096275 -0.00000427 -0.00003118  0.46418890  0.00001228
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00003244  0.00000001  0.00000659 -0.00000427  0.27097126  0.00000088  0.00001228 -0.46419117
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000001 -0.00000001 -0.00000000 -0.00000366  0.00008834 -0.00000028  0.00001024 -0.00015919
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00000000  0.84684622 -0.00005835 -0.00002059 -0.00000087  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000011 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.02387536 -0.00000164  0.00001976  0.03042377  0.00000204 -0.00002586

 14  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000086  0.00000090  0.00000098

 15  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000005  0.00000000 -0.00001976  0.00000112  0.02387574 -0.00002586 -0.00000110 -0.03042368

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00004358 -0.11857963  0.00000163  0.02365943 -0.00000155 -0.00000446  0.06637703 -0.00000143

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00008194 -0.00002634  0.02574688 -0.00000181 -0.00000063  0.05484166  0.00000387  0.00000010

 18  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00004778  0.00076702 -0.00000000 -0.00001823  0.00000000  0.00000148  0.00006699 -0.00000010

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00011361 -0.65240551  0.00000129  0.01799442 -0.00000126  0.00000598 -0.08731966  0.00000404

 20  1     8    1  |1 0>       -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.69295995  0.00012980  0.00000063  0.00000191  0.02575482  0.00000011 -0.00000224 -0.05484578

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.27096589 -0.00001867 -0.00001025 -0.46419393 -0.00003118 -0.00000715

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001 -0.00000001  0.00001692 -0.00000000 -0.00008835 -0.00004214 -0.00001373 -0.00016621

 23  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001210 -0.00000000  0.00001026  0.00001265  0.27097425 -0.00000716  0.00001671  0.46419281

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000163  0.00005835  0.84684601 -0.00003955 -0.00000000 -0.00000204  0.00000001

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00002034  0.00000000 -0.00000085  0.00002476 -0.00000046

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.02387580  0.00000165  0.00000058  0.03042344  0.00000204  0.00000006

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000017 -0.00000165 -0.02387577  0.00000112 -0.00000204  0.03042352 -0.00000110

 28  1     4    1  |1 1>-      -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.23776228  0.00006259 -0.00000332 -0.00000028  0.00374601  0.00000707  0.00000488  0.10880900

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00004624 -0.00020410 -0.00000000 -0.00000000  0.00000006 -0.00000159 -0.00000115 -0.00000271

 30  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00088662 -0.00002223 -0.02573675  0.00000177  0.00002486  0.05484331  0.00000368 -0.00002593

 31  1     7    1  |1 1>-      -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.67880386  0.00009288 -0.00002230 -0.00000180 -0.02948413  0.00004597  0.00000140  0.01382805

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00011980  0.73008675  0.00000177  0.02573804 -0.00000162  0.00000368 -0.05484744  0.00000411

 33  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00001693  0.00000366 -0.00000000  0.00004187  0.00002396  0.00000703

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001 -0.00000000 -0.27097578  0.00010702  0.00000659 -0.46419860  0.00012016 -0.00000088

 35  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00001221 -0.00010702 -0.27097867  0.00001265 -0.00012016 -0.46419591  0.00001671

 36  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                               -0.00000640  0.00000000  0.00002059  0.00003955  0.84684529  0.00000000 -0.00000001  0.00000033

 37  1     1    1  |0 0>        0.00000000 -0.00000001 -0.00000069 -0.00000000  0.00000000 -0.01296661 -0.00004534  0.00001137
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000001 -0.00000148  0.00000000 -0.00000100  0.00000000  0.00004538 -0.01296618  0.00004182
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000299 -0.00000000 -0.00000000 -0.00000000 -0.00000020 -0.00001122 -0.00004192 -0.01296590
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000045  0.00000756 -0.00009852
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000007  0.00000445
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000000  0.00000000 -0.36421440  0.00006134  0.00002948  0.00000155  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000001  0.00001299  0.00006134  0.36421515  0.00003616 -0.00000000 -0.00000204  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000092 -0.00000001  0.00002948 -0.00003617  0.36421245  0.00000000  0.00000000 -0.00000009
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00000001 -0.00000000 -0.00000616  0.00000000  0.00000000  0.74093086  0.00008496 -0.00000916
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00000000 -0.00000816 -0.00000000 -0.00000857  0.00000000 -0.00008496  0.74093484  0.00005263
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>       -0.00001923  0.00000000 -0.00000000 -0.00000000 -0.00000234  0.00000917 -0.00005263  0.74093559
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001420  0.00002560  0.00002366
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00001043 -0.00000447  0.00000845
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51

  1  1     1    1  |1 1>+      -0.00000766  0.00002872 -0.00002256
                               -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000056 -0.00000064  0.00000000
                               -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.01022956  0.03360843 -0.02648584
                               -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000070 -0.00000019  0.00000000
                               -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000189 -0.00000015 -0.00000000
                               -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00000100  0.00000114  0.00000000
                                0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000098  0.00000035 -0.00000000
                               -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.10494836  0.03194451  0.00000134
                                0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00001813  0.00000564 -0.00000359
                               -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00004239  0.00017686 -0.00008673
                                0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.15607028 -0.51274845  0.26602085
                                0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00000001  0.00000000
                                0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00000081 -0.00000026 -0.00000000

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                                0.02399065  0.02566375  0.02648558

 15  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000
                                0.00000056  0.00000064  0.00000000

 16  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000
                                0.00000834 -0.00001012  0.00000000

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000
                               -0.00000146 -0.00000047 -0.00000000

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000
                                0.08013897 -0.07491838  0.00000224

 19  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000
                                0.00007023 -0.00006259  0.00000000

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000
                                0.00000101  0.00000114 -0.00000000

 21  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                                0.00003524  0.00002848  0.00001662

 22  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000
                               -0.36602047 -0.39153959 -0.26601786

 23  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000
                               -0.00012783 -0.00013734 -0.00008673

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                               -0.03422108  0.00794523  0.02648519

 26  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                               -0.00000081 -0.00000026  0.00000000

 27  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                                0.00002810 -0.00000685 -0.00002256

 28  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                               -0.00000199 -0.00000227 -0.00000000

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000
                               -0.02480701 -0.10686255 -0.00000002

 30  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                               -0.00000146 -0.00000047 -0.00000000

 31  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000
                               -0.00000031 -0.00000051  0.00000000

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                                0.00000189  0.00000015  0.00000000

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000
                                0.52209764 -0.12121349 -0.26601200

 34  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                                0.00004498 -0.00000355 -0.00001662

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                                0.00002309 -0.00000035 -0.00000360

 36  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000

 37  1     1    1  |0 0>        0.00000033  0.00000011  0.00000000
                               -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000786 -0.00000049 -0.00000000
                               -0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00009855  0.00000269  0.00000000
                                0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.01293061 -0.00093907 -0.00000004
                               -0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00093893 -0.01293052  0.00000005
                                0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000033 -0.00000020 -0.03249359
                                0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00001377 -0.00001099  0.00000000
                                0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00002575  0.00000344 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00002329 -0.00000939 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.74035976  0.02968639 -0.00000009
                                0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.02968759  0.74036447  0.00000033
                               -0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000218  0.00000101  0.88574529
                               -0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   49.77%    0.00%    0.00%    0.00%    0.00%   29.80%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   49.77%    0.00%    0.00%    0.00%    0.00%   29.79%
  3  1     3    1  |1 1>+        28.87%    0.00%    0.00%    0.00%   36.68%    3.06%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.09%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.09%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.33%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.25%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%   49.77%    0.00%    0.00%    0.00%    0.01%
 14  1     2    1  |1 0>         28.87%    0.00%    0.00%    0.00%    2.29%   37.45%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%   49.77%    0.00%    0.00%    0.00%    0.00%   29.79%
 16  1     4    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.34%    0.02%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.09%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.25%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-        28.87%    0.00%    0.00%    0.00%   20.65%   19.09%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%   49.77%    0.00%    0.00%    0.00%    0.01%
 27  1     3    1  |1 1>-         0.00%   49.77%    0.00%    0.00%    0.00%    0.00%   29.80%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.35%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.17%    0.19%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.01%
 32  1     8    1  |1 1>-         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.09%    0.00%
 33  1     9    1  |1 1>-         0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.25%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.82%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.80%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    9.30%   30.52%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   30.52%    9.30%    0.00%    0.00%
 42  1     6    1  |0 0>         12.72%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.11%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.02%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.01%    0.00%    0.00%
 51  1    15    1  |0 0>          0.40%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.00%    0.00%   20.05%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.01%    0.00%    0.00%   20.05%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.37%   26.37%    4.25%    0.00%
  4  1     4    1  |1 1>+         0.05%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%   24.13%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.31%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    4.25%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.03%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.11%
 13  1     1    1  |1 0>         29.79%   20.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%   17.17%    9.57%    4.25%    0.00%
 15  1     3    1  |1 0>          0.01%    0.00%    0.00%   20.05%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.09%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%   21.28%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.04%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.03%    0.03%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   22.57%    4.17%    4.25%    0.00%
 26  1     2    1  |1 1>-        29.79%   20.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%   20.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.06%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.09%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%   21.28%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.06%    0.01%    0.03%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>         39.80%   59.61%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%   59.60%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.02%    0.00%    0.00%   59.60%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   58.94%    0.66%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.66%   58.94%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   87.03%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.94%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.03%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.03%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    3.90%    0.00%    0.00%    5.70%    0.00%
  5  1     5    1  |1 1>+        21.28%    0.00%    0.00%    0.00%    3.44%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%   21.28%    0.00%    0.00%    0.00%    3.44%    0.00%    9.52%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.69%    0.00%    0.00%   32.40%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   24.82%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   24.81%    0.00%    8.57%
 11  1    11    1  |1 1>+         0.00%    0.00%   26.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%   24.72%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.03%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.03%
 16  1     4    1  |1 0>         17.98%    0.00%    0.00%    0.00%    2.91%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    3.44%    0.00%    0.00%    9.52%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>         10.39%    0.00%    0.00%    0.00%    1.68%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%   21.28%    0.00%    0.00%    0.00%    3.44%    0.00%    9.52%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%   24.81%    0.00%    0.00%    8.57%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%   26.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   24.81%    0.00%    8.57%
 24  1    12    1  |1 0>          3.11%    0.00%    0.00%    0.00%   24.72%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.03%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.45%    0.00%    0.00%    0.00%    0.07%    0.00%   37.49%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    3.44%    0.00%    0.00%    9.52%    0.00%
 31  1     7    1  |1 1>-         0.00%   27.92%    0.00%    0.00%    0.00%    4.51%    0.00%    0.61%
 32  1     8    1  |1 1>-        21.28%    0.00%    0.00%    0.00%    3.44%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%   26.13%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%   24.81%    0.00%    0.00%    8.57%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   24.81%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    3.11%    0.00%    0.00%    0.00%   24.72%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.24%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.24%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   14.04%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>         25.94%    0.00%    0.00%    0.00%   14.04%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%   25.94%    0.00%    0.00%    0.00%   14.04%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.43%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.43%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   21.02%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.03%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.02%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    5.88%    0.00%    0.00%    4.03%    0.00%
  5  1     5    1  |1 1>+         9.52%    0.00%    0.00%    0.00%    5.19%    0.00%    0.00%    6.73%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    5.19%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    1.04%    0.00%    0.00%   22.91%    0.00%
  8  1     8    1  |1 1>+         0.00%    2.50%   35.60%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         8.57%    0.00%    0.00%    0.00%   17.83%    0.00%    0.00%   19.83%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   17.83%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%   10.68%    0.75%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.20%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.02%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%
 16  1     4    1  |1 0>         13.95%    0.00%    0.00%    0.00%    4.38%    0.00%    0.00%    9.87%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    5.19%    0.00%    0.00%    6.73%    0.00%
 18  1     6    1  |1 0>          0.00%   35.49%    2.61%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>         24.14%    0.00%    0.00%    0.00%    2.53%    0.00%    0.00%   17.07%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    5.19%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%   17.83%    0.00%    0.00%   19.83%    0.00%
 22  1    10    1  |1 0>          0.00%    0.78%   10.64%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   17.83%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.20%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.02%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.02%    0.00%
 27  1     3    1  |1 1>-         0.03%    0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.02%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.11%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%   19.16%   18.94%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    5.19%    0.00%    0.00%    6.73%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    6.81%    0.00%    0.00%
 32  1     8    1  |1 1>-         9.52%    0.00%    0.00%    0.00%    5.19%    0.00%    0.00%    6.73%
 33  1     9    1  |1 1>-         0.00%    5.68%    5.75%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%   17.83%    0.00%    0.00%   19.83%    0.00%
 35  1    11    1  |1 1>-         8.57%    0.00%    0.00%    0.00%   17.83%    0.00%    0.00%   19.83%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.20%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.32%    0.00%
 38  1     2    1  |0 0>          0.24%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.32%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.05%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.19%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   46.64%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   46.64%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   46.65%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   19.58%    0.00%
 47  1    11    1  |0 0>         25.43%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   19.57%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    6.15%   19.27%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%   19.27%    6.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%   54.08%    0.00%    0.00%    1.93%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.61%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         6.73%    0.00%    0.00%    0.00%    0.00%   53.09%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%   37.30%    0.00%
  8  1     8    1  |1 1>+         0.00%   24.30%    2.63%    0.00%    0.00%    0.00%    0.00%   33.34%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+        19.83%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    2.58%   23.86%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.01%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   48.83%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%   44.39%    0.00%    0.00%    8.94%    0.00%
 18  1     6    1  |1 0>          0.00%   14.98%   11.96%    0.00%    0.00%    0.00%    0.00%   33.33%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.54%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          6.73%    0.00%    0.00%    0.00%    0.00%    5.32%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%   11.74%   14.70%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>         19.83%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-        26.51%    0.00%    0.00%    0.00%    0.00%   28.10%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    1.13%   25.81%    0.00%    0.00%    0.00%    0.00%   33.33%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    1.51%    0.00%    0.00%   51.82%    0.00%
 31  1     7    1  |1 1>-         0.43%    0.00%    0.00%    0.00%    0.00%   13.50%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%   25.34%    1.10%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.31%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.31%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>         19.57%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%   19.50%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.08%   19.50%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.09%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.09%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.08%    0.00%    0.00%    0.18%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    2.73%    0.00%    0.07%    0.00%    0.00%    0.30%    0.00%
  6  1     6    1  |1 1>+         0.25%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.30%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    1.02%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    7.34%    0.00%    0.00%   21.55%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    7.34%    0.00%    0.00%   21.55%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%   71.71%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.06%    0.00%    0.00%    0.09%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.09%
 16  1     4    1  |1 0>          0.00%    1.41%    0.00%    0.06%    0.00%    0.00%    0.44%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.07%    0.00%    0.00%    0.30%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%   42.56%    0.00%    0.03%    0.00%    0.00%    0.76%    0.00%
 20  1     8    1  |1 0>         48.02%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.30%
 21  1     9    1  |1 0>          0.00%    0.00%    7.34%    0.00%    0.00%   21.55%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    7.34%    0.00%    0.00%   21.55%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%   71.71%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.06%    0.00%    0.00%    0.09%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.09%    0.00%
 28  1     4    1  |1 1>-         5.65%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.18%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.07%    0.00%    0.00%    0.30%    0.00%    0.00%
 31  1     7    1  |1 1>-        46.08%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.02%
 32  1     8    1  |1 1>-         0.00%   53.30%    0.00%    0.07%    0.00%    0.00%    0.30%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    7.34%    0.00%    0.00%   21.55%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    7.34%    0.00%    0.00%   21.55%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   71.71%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%   13.27%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%   13.27%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   13.27%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   54.90%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   54.90%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   54.90%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.01%    0.11%    0.07%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         1.10%    0.10%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         2.44%   26.29%    7.08%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.06%    0.07%    0.07%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.64%    0.56%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%
 22  1    10    1  |1 0>         13.40%   15.33%    7.08%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.12%    0.01%    0.07%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.06%    1.14%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-        27.26%    1.47%    7.08%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.02%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.02%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.11%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%
 49  1    13    1  |0 0>         54.81%    0.09%    0.00%
 50  1    14    1  |0 0>          0.09%   54.81%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   78.45%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1447.04       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     72237.64  65499.18   3252.23   3483.45      1.90      0.05      0.58
 REAL TIME  *     73108.92 SEC
 DISK USED  *         1.45 GB (local),       17.44 GB (total)
 SF USED    *         7.72 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -192.273765861429

              CI              CI           MULTI         RHF-SCF
   -192.23728994   -192.25702780   -191.64810887   -191.86422677
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
