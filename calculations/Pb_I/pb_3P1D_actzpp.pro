
 Working directory              : /wrk/irikura/molpro.U3bLcoUJCz/
 Global scratch directory       : /wrk/irikura/molpro.U3bLcoUJCz/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.U3bLcoUJCz/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    7
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
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
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 29-Jul-24          TIME: 12:06:37  
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

     15.991 MB (compressed) written to integral file ( 19.1%)

     Node minimum: 1.311 MB, node maximum: 2.884 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     791287.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     791287      RECORD LENGTH: 524288

 Memory used in sort:       1.35 MW

 SORT1 READ    11031004. AND WROTE      161085. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     63 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.04 SEC

 Node minimum:      789607.  Node maximum:      791287. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.02      0.80
 REAL TIME  *         2.83 SEC
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
   1     -191.86175732    -191.86175732     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -191.86393108      -0.00217375     0.13D-02     0.34D-02     1     0       0.01      0.02    diag2
   3     -191.86416655      -0.00023547     0.72D-03     0.84D-03     2     0       0.01      0.03    diag2
   4     -191.86422241      -0.00005586     0.17D-03     0.65D-03     3     0       0.00      0.03    diag2
   5     -191.86422657      -0.00000416     0.45D-04     0.24D-03     4     0       0.01      0.04    diag2
   6     -191.86422675      -0.00000018     0.75D-05     0.57D-04     5     0       0.00      0.04    diag2
   7     -191.86422677      -0.00000002     0.19D-05     0.11D-04     6     0       0.01      0.05    diag2
   8     -191.86422677      -0.00000000     0.42D-06     0.44D-05     7     0       0.01      0.06    fixocc
   9     -191.86422677      -0.00000000     0.85D-07     0.13D-05     8     0       0.00      0.06    diag2
  10     -191.86422677      -0.00000000     0.71D-08     0.57D-07     0     0       0.01      0.07    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864226771912
  RHF One-electron energy            -340.689562375592
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
    3.1     2.00000    -0.84924     1  1  d1+  0.99880
    4.1     2.00000    -0.84924     1  1  d1-  0.99877
    5.1     2.00000    -0.84924     1  1  d2-  0.97087
    6.1     2.00000    -0.84924     1  1  d2+  0.97080
    7.1     2.00000    -0.35245     1  2  s    0.96592
    1.2     2.00000    -3.63153     1  1  pz   1.00060
    2.2     2.00000    -3.63153     1  1  px   1.00062
    3.2     2.00000    -3.63153     1  1  py   1.00060
    4.2     1.00000    -0.05143     1  2  px   0.79386
    5.2     1.00000    -0.05143     1  2  py   0.79386
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
 CPU TIMES  *         1.10      0.08      0.80
 REAL TIME  *         3.40 SEC
 DISK USED  *        30.07 MB (local),      246.45 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         5.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      80 (   40   40)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             5
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.166D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.548D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.620D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.209D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.212D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 3   5 4 6 1 3 5 6 4 2 1   3 5 2 6 4 8121415 7   9111310 3 5 6 4 2 1
                                        5 3 4 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.588D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.145D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.587D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.842D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.518D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.562D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.558D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.142D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.127D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 1 2 3 3   2 1 810 6 5 4 9 7 6   5 4 810 9 7 3 2 1 6   810 4 5 9 7 3 1 2 9
                                        7 4 5 610 8 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  664  ( 24 closed/active, 360 closed/virtual, 0 active/active, 280 active/virtual )
 Total number of variables:    2374
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   15   24    0   -191.80785904    -191.82479828   -0.01693924    0.09260254 0.00064232 0.00000000  0.15E+01      0.93
   2    7   12    0   -191.82420515    -191.82429328   -0.00008813    0.01886844 0.00002509 0.00000000  0.79E-01      1.61
   3    6   12    0   -191.82429333    -191.82429333   -0.00000000    0.00002362 0.00000001 0.00000000  0.14E-03      2.13

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.16E-07)
                       Final energy:   -191.82429333
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.844448165206
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.68013643
 One electron energy                          -335.74391008
 Two electron energy                           143.89946191
 Virial ratio                                    4.06068970
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.844448165205
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.68013643
 One electron energy                          -335.74391008
 Two electron energy                           143.89946191
 Virial ratio                                    4.06068970
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.844448165145
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.68013643
 One electron energy                          -335.74391006
 Two electron energy                           143.89946189
 Virial ratio                                    4.06068970
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.812200426152
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64703008
 One electron energy                          -335.60732799
 Two electron energy                           143.79512756
 Virial ratio                                    4.06179240
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.812200426151
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64703008
 One electron energy                          -335.60732799
 Two electron energy                           143.79512756
 Virial ratio                                    4.06179240
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.812200425981
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64703008
 One electron energy                          -335.60732802
 Two electron energy                           143.79512759
 Virial ratio                                    4.06179240
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.812200425973
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64703008
 One electron energy                          -335.60732802
 Two electron energy                           143.79512759
 Virial ratio                                    4.06179240
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.812200425918
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64703008
 One electron energy                          -335.60732803
 Two electron energy                           143.79512760
 Virial ratio                                    4.06179240
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000397
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999999
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.068966507854
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000161
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999997986
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.931026695726
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999858
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.932584106542
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.999999999906
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000002906
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.067422386243
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999744
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000001
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.998449385604
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999999932
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.999999999108
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.001550918031
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 3 5 4 1 1 6 2   3 5 4 1 6 2 3 5 4 1   6 2 3 5 411 7 81214  151310 9 6 2 5 3 4 1
                                        6 2 5 3 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 1 3 2 3   2 1 5 6 810 9 7 4 5   6 810 9 7 4 3 2 1 5   6 810 9 7 4 2 3 1 5
                                        6 810 9 7 4 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.18002     1  1  s    0.99978
    2.1     2.00000    -1.08099     1  1  d1-  0.99996
    3.1     2.00000    -1.08099     1  1  d0   0.99996
    4.1     2.00000    -1.08099     1  1  d2-  0.99996
    5.1     2.00000    -1.08099     1  1  d2+  0.99996
    6.1     2.00000    -1.08099     1  1  d1+  0.99996
    7.1     1.97336    -0.56553     1  2  s    1.00306
    1.2     2.00000    -3.86299     1  1  py   0.99996
    2.2     2.00000    -3.86299     1  1  pz   0.99996
    3.2     2.00000    -3.86299     1  1  px   0.99996
    4.2     0.67167    -0.06646     1  2  px   0.93518
    5.2     0.67167    -0.06646     1  2  pz   0.93518
    6.2     0.67167    -0.06646     1  2  py   0.93518
    7.2     0.00388     0.40357     1  2  px  -1.05412    1  3  px  -0.74073    1  4  px   1.46227
    8.2     0.00388     0.40357     1  2  pz  -1.05412    1  3  pz  -0.74073    1  4  pz   1.46227
    9.2     0.00388     0.40357     1  2  py  -1.05412    1  3  py  -0.74073    1  4  py   1.46227
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa0000       0.99286612      0.00000000      0.00000000
 2 0aa000      -0.00000000      0.99286612      0.00001587
 2 a0a000      -0.00000000     -0.00001587      0.99286612
 0 a2a000       0.00000000      0.00000134     -0.08352782
 0 aa2000      -0.08352782     -0.00000000      0.00000000
 0 2aa000       0.00000000     -0.08352782     -0.00000134
 
 Energy:     -191.84444817   -191.84444817   -191.84444817
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020000      -0.01594767      0.00000413      0.00002518     -0.00000000      0.80982474
 2 002000       0.70930263     -0.00006437     -0.00001202      0.00000017     -0.39110129
 2 ab0000      -0.00000017      0.00000015      0.00001266      0.70146478      0.00000000
 2 ba0000       0.00000017     -0.00000015     -0.00001266     -0.70146478     -0.00000000
 2 0ba000       0.00000014     -0.00000168     -0.70146478      0.00001266      0.00002181
 2 0ab000      -0.00000014      0.00000168      0.70146478     -0.00001266     -0.00002181
 2 a0b000       0.00006236      0.70146477     -0.00000168     -0.00000015     -0.00000235
 2 b0a000      -0.00006236     -0.70146477      0.00000168      0.00000015      0.00000235
 2 200000      -0.69335497      0.00006023     -0.00001316     -0.00000017     -0.41872346
 0 202000      -0.00133991      0.00000035      0.00000212     -0.00000000      0.06804098
 0 220000       0.05959518     -0.00000541     -0.00000101      0.00000001     -0.03286009
 0 ba2000      -0.00000001      0.00000001      0.00000106      0.05893665     -0.00000000
 0 ab2000       0.00000001     -0.00000001     -0.00000106     -0.05893665      0.00000000
 0 a2b000      -0.00000524     -0.05893665      0.00000014      0.00000001      0.00000020
 0 b2a000       0.00000524      0.05893665     -0.00000014     -0.00000001     -0.00000020
 0 2ba000      -0.00000001      0.00000014      0.05893664     -0.00000106     -0.00000183
 0 2ab000       0.00000001     -0.00000014     -0.05893664      0.00000106      0.00000183
 0 022000      -0.05825526      0.00000506     -0.00000111     -0.00000001     -0.03518089
 
 Energy:     -191.81220043   -191.81220043   -191.81220043   -191.81220043   -191.81220043
 


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
 CPU TIMES  *         3.25      2.14      0.08      0.80
 REAL TIME  *         5.97 SEC
 DISK USED  *        37.16 MB (local),      296.03 MB (total)
 SF USED    *        19.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8444482   2.0
    -191.8444482   2.0
    -191.8444482   2.0
    -191.8122004   6.0
    -191.8122004   6.0
    -191.8122004   6.0
    -191.8122004   6.0
    -191.8122004   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

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


 Number of p-space configurations:  12

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.84444817
     2      -191.84444817
     3      -191.84444817

 Number of blocks in overlap matrix:   380   Smallest eigenvalue:  0.50D-05
 Number of N-2 electron functions:     683
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       3541800
 Number of doubly external configurations:       1093080
 Total number of contracted configurations:      4673286
 Total number of uncontracted configurations:   77703006

 Diagonal Coupling coefficients finished.               Storage:  13037350 words, CPU-Time:     12.80 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    922997 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.84444817     0.00000000    -0.75553564  0.58D-01  0.92D-01    19.35
    1     2     2     1.00000000     0.00000000  -191.84444817    -0.00000000    -0.75537000  0.58D-01  0.92D-01    19.35
    1     3     3     1.00000000     0.00000000  -191.84444817     0.00000000    -0.75547120  0.58D-01  0.92D-01    19.35
    2     1     1     1.08889150    -0.58948174  -192.43392990    -0.58948174    -0.01783228  0.28D-02  0.12D-02   211.94
    2     2     2     1.08897082    -0.58942896  -192.43387713    -0.58942896    -0.01789045  0.28D-02  0.12D-02   211.94
    2     3     3     1.08900962    -0.58939942  -192.43384758    -0.58939942    -0.01792434  0.28D-02  0.12D-02   211.94
    3     1     1     1.08258629    -0.60586797  -192.45031614    -0.01638623    -0.00031579  0.34D-04  0.38D-04   423.03
    3     2     2     1.08258695    -0.60586636  -192.45031453    -0.01643740    -0.00031721  0.34D-04  0.38D-04   423.03
    3     3     3     1.08258633    -0.60586510  -192.45031326    -0.01646568    -0.00031842  0.34D-04  0.38D-04   423.03
    4     1     1     1.08289173    -0.60619492  -192.45064309    -0.00032695    -0.00001661  0.27D-05  0.29D-05   611.15
    4     2     2     1.08289207    -0.60619487  -192.45064304    -0.00032851    -0.00001665  0.27D-05  0.30D-05   611.15
    4     3     3     1.08289163    -0.60619479  -192.45064296    -0.00032969    -0.00001671  0.28D-05  0.30D-05   611.15
    5     1     1     1.08309667    -0.60621628  -192.45066445    -0.00002136    -0.00000166  0.13D-06  0.34D-06   794.31
    5     2     2     1.08309627    -0.60621628  -192.45066444    -0.00002141    -0.00000166  0.13D-06  0.34D-06   794.31
    5     3     3     1.08309603    -0.60621627  -192.45066443    -0.00002148    -0.00000166  0.13D-06  0.35D-06   794.31
    6     1     1     1.08308515    -0.60621847  -192.45066664    -0.00000219    -0.00000019  0.24D-07  0.30D-07  1027.97
    6     2     2     1.08308509    -0.60621847  -192.45066664    -0.00000219    -0.00000019  0.25D-07  0.30D-07  1027.97
    6     3     3     1.08308512    -0.60621847  -192.45066663    -0.00000220    -0.00000019  0.25D-07  0.30D-07  1027.97
    7     1     1     1.08309545    -0.60621870  -192.45066686    -0.00000023    -0.00000002  0.21D-08  0.35D-08  1215.96
    7     2     2     1.08309551    -0.60621870  -192.45066686    -0.00000023    -0.00000002  0.21D-08  0.35D-08  1215.96
    7     3     3     1.08309550    -0.60621870  -192.45066686    -0.00000023    -0.00000002  0.21D-08  0.35D-08  1215.96


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.6%
 S   1.0%  46.4%
 P   0.6%  39.4%   6.7%

 Initialization:   1.1%
 Other:            2.4%

 Total CPU:     1216.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220//000           0.9542110   0.0000000  -0.0000000
 2222222222//0000           0.0000000  -0.1030139   0.9486341
 2222222222/0/000          -0.0000000   0.9486341   0.1030139
 22222202222//000          -0.0691439  -0.0000000  -0.0000000
 2222220222/2/000          -0.0000000  -0.0687398  -0.0074646
 2222220222//2000          -0.0000000   0.0074646  -0.0687397

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.959148   -0.000000
 2          -0.103547    0.000000    0.953542
 3           0.953542    0.000000    0.103547

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959148   -0.000000    0.000000
 2          -0.000000    0.959148   -0.000000
 3           0.000000   -0.000000    0.959148


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95914773 (fixed)   0.95948886 (relaxed)   0.95914773 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00360373   -0.00816408   -0.46717797
 Singles      0.02509574   -0.10058153   -0.10652169
 Pairs        0.05829916    0.00000000   -0.03251904
 Total        1.08699863   -0.10874562   -0.60621870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.84444817
 Nuclear energy                         0.00000000
 Kinetic energy                        62.87555261
 One electron energy                 -335.29523391
 Two electron energy                  142.84456704
 Virial quotient                       -3.06081869
 Correlation energy                    -0.60621870
 !MRCI STATE 1.1 Energy              -192.450666863255

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50340706 (Davidson, fixed reference)
 Cluster corrected energies          -192.50293857 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50340706 (Davidson, rotated reference)

 Cluster corrected energies          -192.50164368 (Pople, fixed reference)
 Cluster corrected energies          -192.50115805 (Pople, relaxed reference)
 Cluster corrected energies          -192.50164368 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95354200 (fixed)   0.95948883 (relaxed)   0.95914770 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00360373   -0.00816408   -0.01219519
 Singles      0.02509583   -0.10058161   -0.10652173
 Pairs        0.05829914   -0.49456558   -0.48750177
 Total        1.08699869   -0.60331127   -0.60621870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.84444817
 Nuclear energy                         0.00000000
 Kinetic energy                        62.87555138
 One electron energy                 -335.29523307
 Two electron energy                  142.84456620
 Virial quotient                       -3.06081875
 Correlation energy                    -0.60621870
 !MRCI STATE 2.1 Energy              -192.450666863132

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50340710 (Davidson, fixed reference)
 Cluster corrected energies          -192.50293861 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50340710 (Davidson, rotated reference)

 Cluster corrected energies          -192.50164372 (Pople, fixed reference)
 Cluster corrected energies          -192.50115809 (Pople, relaxed reference)
 Cluster corrected energies          -192.50164372 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95354200 (fixed)   0.95948884 (relaxed)   0.95914770 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00360373   -0.00816408   -0.41777047
 Singles      0.02509584   -0.10058160   -0.10652174
 Pairs        0.05829911   -0.05370579   -0.08192649
 Total        1.08699869   -0.16245148   -0.60621870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.84444817
 Nuclear energy                         0.00000000
 Kinetic energy                        62.87555060
 One electron energy                 -335.29523152
 Two electron energy                  142.84456466
 Virial quotient                       -3.06081879
 Correlation energy                    -0.60621870
 !MRCI STATE 3.1 Energy              -192.450666863083

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50340710 (Davidson, fixed reference)
 Cluster corrected energies          -192.50293861 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50340710 (Davidson, rotated reference)

 Cluster corrected energies          -192.50164371 (Pople, fixed reference)
 Cluster corrected energies          -192.50115809 (Pople, relaxed reference)
 Cluster corrected energies          -192.50164371 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      110.47       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1275.45   1272.18      2.14      0.08      0.80
 REAL TIME  *      1301.88 SEC
 DISK USED  *       146.83 MB (local),        1.04 GB (total)
 SF USED    *         1.19 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.50340706  AU                              
 SETTING HLSDIAG(2)     =      -192.50340710  AU                              
 SETTING HLSDIAG(3)     =      -192.50340710  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

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


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.81220043
     2      -191.81220043
     3      -191.81220043
     4      -191.81220043
     5      -191.81220043

 Number of blocks in overlap matrix:   577   Smallest eigenvalue:  0.20D-05
 Number of N-2 electron functions:    1083
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       2060800
 Number of doubly external configurations:       1734840
 Total number of contracted configurations:      3819790
 Total number of uncontracted configurations:   45449790

 Diagonal Coupling coefficients finished.               Storage:  11984441 words, CPU-Time:     22.75 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    929556 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.81220043     0.00000000    -0.75518045  0.62D-01  0.91D-01    39.52
    1     2     2     1.00000000     0.00000000  -191.81220043    -0.00000000    -0.75597897  0.63D-01  0.91D-01    39.52
    1     3     3     1.00000000     0.00000000  -191.81220043    -0.00000000    -0.75629595  0.64D-01  0.91D-01    39.52
    1     4     4     1.00000000     0.00000000  -191.81220043     0.00000000    -0.75616757  0.63D-01  0.91D-01    39.52
    1     5     5     1.00000000     0.00000000  -191.81220043    -0.00000000    -0.75519125  0.62D-01  0.91D-01    39.52
    2     1     1     1.09170381    -0.59364553  -192.40584596    -0.59364553    -0.01820454  0.29D-02  0.13D-02   262.11
    2     2     2     1.09169985    -0.59361276  -192.40581318    -0.59361276    -0.01824245  0.29D-02  0.13D-02   262.11
    2     3     3     1.09192538    -0.59342622  -192.40562664    -0.59342622    -0.01847627  0.30D-02  0.13D-02   262.11
    2     4     4     1.09202176    -0.59339573  -192.40559616    -0.59339573    -0.01852090  0.30D-02  0.13D-02   262.11
    2     5     5     1.09211393    -0.59334933  -192.40554975    -0.59334933    -0.01856944  0.30D-02  0.13D-02   262.11
    3     1     1     1.08568274    -0.61051170  -192.42271212    -0.01686616    -0.00038673  0.41D-04  0.52D-04   484.10
    3     2     2     1.08568190    -0.61050823  -192.42270866    -0.01689547    -0.00038926  0.42D-04  0.53D-04   484.10
    3     3     3     1.08570375    -0.61050167  -192.42270210    -0.01707546    -0.00039587  0.43D-04  0.54D-04   484.10
    3     4     4     1.08571790    -0.61049989  -192.42270032    -0.01710416    -0.00039796  0.43D-04  0.54D-04   484.10
    3     5     5     1.08572164    -0.61049931  -192.42269974    -0.01714998    -0.00039842  0.43D-04  0.54D-04   484.10
    4     1     1     1.08626307    -0.61092861  -192.42312903    -0.00041691    -0.00002401  0.34D-05  0.44D-05   678.42
    4     2     2     1.08626257    -0.61092820  -192.42312863    -0.00041997    -0.00002433  0.35D-05  0.44D-05   678.42
    4     3     3     1.08626040    -0.61092770  -192.42312813    -0.00042603    -0.00002465  0.35D-05  0.45D-05   678.42
    4     4     4     1.08626254    -0.61092755  -192.42312798    -0.00042766    -0.00002473  0.35D-05  0.45D-05   678.42
    4     5     5     1.08626059    -0.61092747  -192.42312789    -0.00042815    -0.00002481  0.36D-05  0.45D-05   678.42
    5     1     1     1.08654124    -0.61095865  -192.42315908    -0.00003004    -0.00000179  0.13D-06  0.38D-06   886.51
    5     2     2     1.08654076    -0.61095863  -192.42315905    -0.00003043    -0.00000181  0.13D-06  0.38D-06   886.51
    5     3     3     1.08653913    -0.61095861  -192.42315903    -0.00003090    -0.00000183  0.14D-06  0.38D-06   886.51
    5     4     4     1.08653776    -0.61095859  -192.42315901    -0.00003103    -0.00000184  0.14D-06  0.39D-06   886.51
    5     5     5     1.08653782    -0.61095858  -192.42315900    -0.00003111    -0.00000185  0.14D-06  0.39D-06   886.51
    6     1     1     1.08653184    -0.61096082  -192.42316124    -0.00000217    -0.00000017  0.19D-07  0.31D-07  1094.92
    6     2     2     1.08653174    -0.61096081  -192.42316124    -0.00000219    -0.00000017  0.19D-07  0.32D-07  1094.92
    6     3     3     1.08653174    -0.61096081  -192.42316124    -0.00000221    -0.00000017  0.19D-07  0.31D-07  1094.92
    6     4     4     1.08653139    -0.61096081  -192.42316124    -0.00000223    -0.00000017  0.19D-07  0.32D-07  1094.92
    6     5     5     1.08653144    -0.61096081  -192.42316124    -0.00000223    -0.00000017  0.19D-07  0.32D-07  1094.92
    7     1     1     1.08654671    -0.61096101  -192.42316144    -0.00000019    -0.00000002  0.16D-08  0.32D-08  1298.73
    7     2     2     1.08654675    -0.61096101  -192.42316144    -0.00000020    -0.00000002  0.17D-08  0.32D-08  1298.73
    7     3     3     1.08654666    -0.61096101  -192.42316144    -0.00000020    -0.00000002  0.17D-08  0.32D-08  1298.73
    7     4     4     1.08654666    -0.61096101  -192.42316144    -0.00000020    -0.00000002  0.17D-08  0.32D-08  1298.73
    7     5     5     1.08654666    -0.61096101  -192.42316144    -0.00000020    -0.00000002  0.17D-08  0.33D-08  1298.73


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.4%
 S   1.3%  17.6%
 P   0.8%  52.6%  15.6%

 Initialization:   1.8%
 Other:            5.9%

 Total CPU:     1298.7 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\000          -0.0000241   0.0000015   0.9521143   0.0000000   0.0069522
 2222222222/\0000          -0.0033343   0.0002117  -0.0069523   0.0000075   0.9521085
 22222222220/\000           0.0610260   0.9501668  -0.0000000  -0.0053741   0.0000025
 2222222222200000          -0.1657237   0.0149390   0.0000001   0.7594026  -0.0005897
 2222222222002000           0.7392300  -0.0488111  -0.0000002  -0.2356475   0.0026015
 2222222222020000          -0.5735062   0.0338721   0.0000001  -0.5237548  -0.0020119
 2222220222/2\000           0.0000017  -0.0000001  -0.0688704  -0.0000000  -0.0005029
 2222220222/\2000           0.0002412  -0.0000153   0.0005029  -0.0000005  -0.0688699
 22222202222/\000          -0.0044143  -0.0687295   0.0000000   0.0003887  -0.0000002
 2222220222022000          -0.0119876   0.0010806   0.0000000   0.0549308  -0.0000427
 2222220222220000           0.0534717  -0.0035307  -0.0000000  -0.0170454   0.0001882

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.657229   -0.000024    0.061368   -0.003353   -0.693564
 2          -0.046141    0.000002    0.955491    0.000213    0.040819
 3          -0.000000    0.957449   -0.000000   -0.006991    0.000000
 4          -0.694747    0.000000   -0.005404    0.000008   -0.658829
 5           0.002317    0.006991    0.000003    0.957443   -0.002433

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957475   -0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.957475    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.957475   -0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.957475   -0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.957475


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.69356351 (fixed)   0.95777539 (relaxed)   0.95747483 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00391482   -0.00890978   -0.79798819
 Singles      0.02742724   -0.10381388   -0.11052975
 Pairs        0.05945828    0.36090686    0.29755693
 Total        1.09080035    0.24818320   -0.61096101
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81220043
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86115291
 One electron energy                 -335.17941998
 Two electron energy                  142.75625854
 Virial quotient                       -3.06108228
 Correlation energy                    -0.61096101
 !MRCI STATE 1.1 Energy              -192.423161436209

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47863691 (Davidson, fixed reference)
 Cluster corrected energies          -192.47821871 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47863691 (Davidson, rotated reference)

 Cluster corrected energies          -192.47759779 (Pople, fixed reference)
 Cluster corrected energies          -192.47715545 (Pople, relaxed reference)
 Cluster corrected energies          -192.47759779 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95549086 (fixed)   0.95777537 (relaxed)   0.95747481 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00391483   -0.00890978   -0.44765091
 Singles      0.02742746   -0.10381423   -0.11052992
 Pairs        0.05945810   -0.02124080   -0.05278019
 Total        1.09080039   -0.13396481   -0.61096101
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81220043
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86114790
 One electron energy                 -335.17941350
 Two electron energy                  142.75625206
 Virial quotient                       -3.06108253
 Correlation energy                    -0.61096101
 !MRCI STATE 2.1 Energy              -192.423161436154

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47863693 (Davidson, fixed reference)
 Cluster corrected energies          -192.47821873 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47863693 (Davidson, rotated reference)

 Cluster corrected energies          -192.47759782 (Pople, fixed reference)
 Cluster corrected energies          -192.47715547 (Pople, relaxed reference)
 Cluster corrected energies          -192.47759782 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95744932 (fixed)   0.95777541 (relaxed)   0.95747485 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00391483   -0.00890978   -0.46712366
 Singles      0.02742735   -0.10381413   -0.11052986
 Pairs        0.05945812   -0.00000006   -0.03330749
 Total        1.09080031   -0.11272398   -0.61096101
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81220043
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86114772
 One electron energy                 -335.17941356
 Two electron energy                  142.75625212
 Virial quotient                       -3.06108254
 Correlation energy                    -0.61096101
 !MRCI STATE 3.1 Energy              -192.423161435964

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47863688 (Davidson, fixed reference)
 Cluster corrected energies          -192.47821867 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47863688 (Davidson, rotated reference)

 Cluster corrected energies          -192.47759776 (Pople, fixed reference)
 Cluster corrected energies          -192.47715541 (Pople, relaxed reference)
 Cluster corrected energies          -192.47759776 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.69474694 (fixed)   0.95777541 (relaxed)   0.95747485 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00391482   -0.00890978   -0.78141806
 Singles      0.02742725   -0.10381391   -0.11052977
 Pairs        0.05945823    0.34283215    0.28098682
 Total        1.09080030    0.23010846   -0.61096101
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81220043
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86115383
 One electron energy                 -335.17942093
 Two electron energy                  142.75625949
 Virial quotient                       -3.06108224
 Correlation energy                    -0.61096101
 !MRCI STATE 4.1 Energy              -192.423161435384

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47863688 (Davidson, fixed reference)
 Cluster corrected energies          -192.47821868 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47863688 (Davidson, rotated reference)

 Cluster corrected energies          -192.47759776 (Pople, fixed reference)
 Cluster corrected energies          -192.47715542 (Pople, relaxed reference)
 Cluster corrected energies          -192.47759776 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95744343 (fixed)   0.95777541 (relaxed)   0.95747485 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00391483   -0.00890978   -0.46828423
 Singles      0.02742739   -0.10381417   -0.11052989
 Pairs        0.05945809    0.00126594   -0.03214689
 Total        1.09080031   -0.11145801   -0.61096101
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.81220043
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86115033
 One electron energy                 -335.17941634
 Two electron energy                  142.75625490
 Virial quotient                       -3.06108241
 Correlation energy                    -0.61096101
 !MRCI STATE 5.1 Energy              -192.423161435358

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47863688 (Davidson, fixed reference)
 Cluster corrected energies          -192.47821867 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47863688 (Davidson, rotated reference)

 Cluster corrected energies          -192.47759776 (Pople, fixed reference)
 Cluster corrected energies          -192.47715541 (Pople, relaxed reference)
 Cluster corrected energies          -192.47759776 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      259.75       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2706.53   1431.04   1272.18      2.14      0.08      0.80
 REAL TIME  *      2770.47 SEC
 DISK USED  *       296.12 MB (local),        2.06 GB (total)
 SF USED    *         1.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -192.47863691  AU                              
 SETTING HLSDIAG(5)     =      -192.47863693  AU                              
 SETTING HLSDIAG(6)     =      -192.47863688  AU                              
 SETTING HLSDIAG(7)     =      -192.47863688  AU                              
 SETTING HLSDIAG(8)     =      -192.47863688  AU                              


         HLSDIAG
    -192.5034071
    -192.5034071
    -192.5034071
    -192.4786369
    -192.4786369
    -192.4786369
    -192.4786369
    -192.4786369
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -192.450667   -192.450667   -192.450667
 Replaced energies:   -192.503407   -192.503407   -192.503407

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies:   -192.423161   -192.423161   -192.423161   -192.423161   -192.423161
 Replaced energies:   -192.478637   -192.478637   -192.478637   -192.478637   -192.478637



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.50340710

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00   -2253.10    -244.67       0.00       0.00       0.00      -0.06
                            0.00     346.01   -3186.37      -0.00      -0.00       0.00       0.00       0.00       0.00    -549.02

    2   2.1  1.0  1.0       0.00       0.00       0.00    2253.10      -0.00      -0.00       0.00       0.00       0.00    -406.50
                         -346.01      -0.00       0.00       0.00       0.00   -2266.35       0.00       0.00       0.00       7.77

    3   3.1  1.0  1.0       0.00       0.00       0.00     244.67       0.00      -0.00       0.00       0.00       0.00    2419.22
                         3186.37      -0.00       0.00      -0.00    2266.35       0.00       0.00       0.00       0.00       0.79

    4   1.1  1.0  0.0       0.00    2253.10     244.67       0.01       0.00       0.00       0.00   -2253.10    -244.67       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      11.05

    5   2.1  1.0  0.0   -2253.10      -0.00       0.00       0.00       0.00       0.00    2253.10      -0.00      -0.00       0.00
                            0.00      -0.00   -2266.35      -0.00       0.00       0.00       0.00       0.00   -2266.35   -2649.40

    6   3.1  1.0  0.0    -244.67      -0.00      -0.00       0.00       0.00       0.00     244.67       0.00      -0.00       0.00
                           -0.00    2266.35      -0.00      -0.00      -0.00       0.00      -0.00    2266.35       0.00    -491.05

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00    2253.10     244.67       0.01       0.00       0.00      -0.06
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00    -346.01    3186.37     549.02

    8   2.1  1.0 -1.0       0.00       0.00       0.00   -2253.10      -0.00       0.00       0.00       0.00       0.00    -406.50
                           -0.00      -0.00      -0.00       0.00      -0.00   -2266.35     346.01       0.00      -0.00      -7.77

    9   3.1  1.0 -1.0       0.00       0.00       0.00    -244.67      -0.00      -0.00       0.00       0.00       0.00    2419.22
                           -0.00      -0.00      -0.00      -0.00    2266.35      -0.00   -3186.37       0.00      -0.00      -0.79

   10   1.1  0.0  0.0      -0.06    -406.50    2419.22       0.00       0.00       0.00      -0.06    -406.50    2419.22    5436.43
                          549.02      -7.77      -0.79     -11.05    2649.40     491.05    -549.02       7.77       0.79       0.00

   11   2.1  0.0  0.0       0.00   -2195.26    -401.04       0.00       0.00       0.00       0.00   -2195.26    -401.04       0.00
                          -49.49       0.49       0.05       0.70    -497.58    3112.12      49.49      -0.49      -0.05      -0.00

   12   3.1  0.0  0.0    2230.28       0.00      -0.00       0.00       0.00       0.00    2230.28       0.00      -0.00       0.00
                           -0.00     224.58   -2219.01     -23.03      -0.00      -0.00       0.00    -224.58    2219.01      -0.00

   13   4.1  0.0  0.0       0.00      96.79    -774.75       0.00       0.00       0.00       0.00      96.79    -774.75       0.00
                        -2515.80       0.02       0.00       0.02    2441.42     247.21    2515.80      -0.02      -0.00      -0.00

   14   5.1  0.0  0.0      16.29      -0.94       8.57       0.00       0.00       0.00      16.29      -0.94       8.57       0.00
                            1.95    2218.99     224.58    3154.08       9.37       1.03      -1.95   -2218.99    -224.58      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0       0.00    2230.28       0.00      16.29
                           49.49       0.00    2515.80      -1.95

    2   2.1  1.0  1.0   -2195.26       0.00      96.79      -0.94
                           -0.49    -224.58      -0.02   -2218.99

    3   3.1  1.0  1.0    -401.04      -0.00    -774.75       8.57
                           -0.05    2219.01      -0.00    -224.58

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.70      23.03      -0.02   -3154.08

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                          497.58       0.00   -2441.42      -9.37

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                        -3112.12       0.00    -247.21      -1.03

    7   1.1  1.0 -1.0       0.00    2230.28       0.00      16.29
                          -49.49      -0.00   -2515.80       1.95

    8   2.1  1.0 -1.0   -2195.26       0.00      96.79      -0.94
                            0.49     224.58       0.02    2218.99

    9   3.1  1.0 -1.0    -401.04      -0.00    -774.75       8.57
                            0.05   -2219.01       0.00     224.58

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5436.42       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5436.43       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5436.44       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5436.43
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by   -192.50340710 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.009       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000     346.013

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -3205.097    -346.013      -0.000

    3    1  |1 1>+              0.000       0.000       0.001       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    3205.097       0.000    3186.366      -0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.009       0.000       0.000       0.000    3186.368
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000   -3186.368       0.000
                                0.000       0.000   -3205.097      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.001    -346.014      -0.000
                               -0.000    3205.097       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   -3186.368    -346.014       0.009       0.000
                                0.000     346.013   -3186.366      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000    3186.368       0.000      -0.000       0.000       0.000
                             -346.013      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000     346.014       0.000       0.000       0.000       0.000
                             3186.366      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.080    -574.876    3421.298       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -11.046    2649.405     491.055     776.434     -10.990

    2    1  |0 0>               0.005   -3104.563    -567.159       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.701    -497.578    3112.118     -69.991       0.698

    3    1  |0 0>            3154.099       0.000      -0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -23.031      -0.000      -0.000      -0.000     317.611

    4    1  |0 0>               0.000     136.887   -1095.657       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.025    2441.421     247.211   -3557.873       0.025

    5    1  |0 0>              23.031      -1.324      12.116       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    3154.078       9.370       1.026       2.763    3138.130

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000      -0.080       0.005    3154.099       0.000      23.031
                            -3186.366       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000    -574.876   -3104.563       0.000     136.887      -1.324
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    3421.298    -567.159      -0.001   -1095.657      12.116
                                0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>             346.014       0.000       0.000       0.000       0.000       0.000
                               -0.000      11.046      -0.701      23.031      -0.025   -3154.078

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000   -2649.405     497.578       0.000   -2441.421      -9.370

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -491.055   -3112.118       0.000    -247.211      -1.026

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -776.434      69.991       0.000    3557.873      -2.763

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      10.990      -0.698    -317.611      -0.025   -3138.130

    3    1  |1 1>-              0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       1.113      -0.071    3138.149      -0.003    -317.609

    1    1  |0 0>               0.000    5436.429       0.000       0.000       0.000       0.000
                               -1.113       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5436.423       0.000       0.000       0.000
                                0.071      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5436.434       0.000       0.000
                            -3138.149      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5436.435       0.000
                                0.003      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5436.434
                              317.609      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.53261409    -0.02920699    -6410.19      0.00000000        0.00      0.0000
    2  -192.51801059    -0.01460349    -3205.10      0.01460350     3205.10      0.3974
    3  -192.51801059    -0.01460349    -3205.10      0.01460350     3205.10      0.3974
    4  -192.51801058    -0.01460348    -3205.09      0.01460351     3205.10      0.3974
    5  -192.50467150    -0.00126440     -277.50      0.02794259     6132.69      0.7604
    6  -192.50467145    -0.00126435     -277.49      0.02794264     6132.70      0.7604
    7  -192.50467071    -0.00126361     -277.33      0.02794338     6132.86      0.7604
    8  -192.50467067    -0.00126357     -277.32      0.02794342     6132.87      0.7604
    9  -192.50467066    -0.00126357     -277.32      0.02794342     6132.87      0.7604
   10  -192.46276983     0.04063727     8918.85      0.06984426    15329.04      1.9006
   11  -192.46276979     0.04063731     8918.86      0.06984430    15329.05      1.9006
   12  -192.46276979     0.04063731     8918.86      0.06984430    15329.05      1.9006
   13  -192.46276901     0.04063808     8919.03      0.06984507    15329.22      1.9006
   14  -192.46276899     0.04063811     8919.03      0.06984510    15329.23      1.9006

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000 -0.00000477 -0.01525990  0.70694155 -0.00000017 -0.00000000  0.00007137 -0.55728372
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.06232911  0.70297426 -0.00000516  0.00000463 -0.06621752  0.01953551  0.55416538  0.00007055
                           0.00002842  0.00000743 -0.00000000  0.00000000 -0.00000040  0.00000451  0.00000004  0.00000000

   3    1  |1 1>+          0.57397588  0.07633726 -0.00000056  0.00000050  0.61413461 -0.17967045  0.05966223  0.00000702
                          -0.00026174  0.00000081 -0.00000000  0.00000000  0.00000370 -0.00004148  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000509  0.70694140  0.01525992  0.00002169  0.00000539  0.00002616  0.00972679

   2    1  |1 0>           0.00026174 -0.00000081  0.00000000 -0.00000000  0.00000278  0.00010204  0.00000000 -0.00000000
                           0.57397618  0.07633726 -0.00000056  0.00000050 -0.46269408 -0.44197816 -0.05976245 -0.00000707

   3    1  |1 0>           0.00002842  0.00000743 -0.00000000  0.00000000  0.00000030  0.00001107 -0.00000004 -0.00000000
                           0.06232913 -0.70297399  0.00000516 -0.00000463 -0.04977234 -0.04797048  0.55415488  0.00007055

   1    1  |1 1>-          0.00026328  0.00000000 -0.00000000 -0.00000000  0.00000092 -0.00014436 -0.00000000  0.00000000
                           0.57734997 -0.00000000  0.00000000 -0.00000000 -0.15233040  0.62530370  0.00010078  0.00000005

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000557 -0.70445852  0.06114880  0.00002158  0.00000536  0.00001830  0.06983258

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000419 -0.06114880 -0.70445837  0.00000217  0.00000058  0.00007377 -0.55297558

   1    1  |0 0>           0.00000022  0.00000002  0.00000000  0.00000000 -0.61390022 -0.01454191  0.03995926 -0.00004752
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000369 -0.00000336  0.00000000  0.00000000

   2    1  |0 0>          -0.00000002  0.00000019 -0.00000000 -0.00000000  0.04002961 -0.00251832  0.61406289  0.00008145
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000024 -0.00000058  0.00000004  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000001  0.00000022  0.00000015 -0.00000006 -0.00007901  0.61518262
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000006  0.00000000 -0.00000000 -0.00000000  0.01434767 -0.61519790 -0.00345822 -0.00000025
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00014203 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000044 -0.00000000 -0.00213496 -0.00003958  0.00003175  0.01523120
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+          0.00972677  0.00005794  0.03113816  0.43401777  0.00000020 -0.00000007
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00002485 -0.43252348  0.00004995  0.00005418 -0.04419547  0.03235409
                          -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000014 -0.00000012

   3    1  |1 1>+         -0.00002509 -0.04758682 -0.00003222  0.00000843  0.40241757 -0.29583349
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000130  0.00000112

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.55728392 -0.00004211 -0.43401776  0.03113816 -0.00003021  0.00001383

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000148 -0.00000076
                           0.00002521  0.04738940  0.00002030 -0.00000760 -0.45740285 -0.20064572

   3    1  |1 0>           0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000016 -0.00000008
                          -0.00002484 -0.43254488  0.00004866  0.00005427 -0.05016643 -0.02155951

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000018  0.00000188
                          -0.00000012  0.00019857  0.00001199 -0.00000083  0.05530846  0.49939822

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.55297535 -0.00004811 -0.43484238 -0.01589914 -0.00003005  0.00001376

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.06983257  0.00005306 -0.01589916  0.43484233 -0.00000306  0.00000142

   1    1  |0 0>          -0.00213232  0.04954406 -0.00281957  0.00017525  0.74534341 -0.25162346
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000242  0.00000095

   2    1  |0 0>           0.00010505  0.78666673  0.00009524 -0.00011055 -0.04554797  0.01997112
                          -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000015 -0.00000008

   3    1  |0 0>          -0.01523129  0.00010440  0.05066407  0.78660758 -0.00000018  0.00000014
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00001039 -0.00434445  0.00001284 -0.00000032  0.25237914  0.74672592
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000082 -0.00000281

   5    1  |0 0>           0.61517895  0.00007569  0.78660251 -0.05066375  0.00267309 -0.00091656
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.53261409     -0.02920699    -6410.19      0.00000000        0.00      0.0000
     2   1   -192.51801059     -0.01460349    -3205.10      0.01460350     3205.10      0.3974
     3   1   -192.51801059     -0.01460349    -3205.10      0.01460350     3205.10      0.3974
     4   1   -192.51801058     -0.01460348    -3205.09      0.01460351     3205.10      0.3974
     5   1   -192.50467150     -0.00126440     -277.50      0.02794259     6132.69      0.7604
     6   1   -192.50467145     -0.00126435     -277.49      0.02794264     6132.70      0.7604
     7   1   -192.50467071     -0.00126361     -277.33      0.02794338     6132.86      0.7604
     8   1   -192.50467067     -0.00126357     -277.32      0.02794342     6132.87      0.7604
     9   1   -192.50467066     -0.00126357     -277.32      0.02794342     6132.87      0.7604
    10   1   -192.46276983      0.04063727     8918.85      0.06984426    15329.04      1.9006
    11   1   -192.46276979      0.04063731     8918.86      0.06984430    15329.05      1.9006
    12   1   -192.46276979      0.04063731     8918.86      0.06984430    15329.05      1.9006
    13   1   -192.46276901      0.04063808     8919.03      0.06984507    15329.22      1.9006
    14   1   -192.46276899      0.04063811     8919.03      0.06984510    15329.23      1.9006

 E0 =   -192.50340710 is the energy of the lowest zeroth-order state
 E1 =   -192.53261409 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000 -0.00000477 -0.01525990  0.70694155 -0.00000017 -0.00000000  0.00007137 -0.55728372
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.06232911  0.70297426 -0.00000516  0.00000463 -0.06621752  0.01953551  0.55416538  0.00007055
                                0.00002842  0.00000743 -0.00000000  0.00000000 -0.00000040  0.00000451  0.00000004  0.00000000

  3  1     3    1  |1 1>+       0.57397588  0.07633726 -0.00000056  0.00000050  0.61413461 -0.17967045  0.05966223  0.00000702
                               -0.00026174  0.00000081 -0.00000000  0.00000000  0.00000370 -0.00004148  0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000509  0.70694140  0.01525992  0.00002169  0.00000539  0.00002616  0.00972679

  5  1     2    1  |1 0>        0.00026174 -0.00000081  0.00000000 -0.00000000  0.00000278  0.00010204  0.00000000 -0.00000000
                                0.57397618  0.07633726 -0.00000056  0.00000050 -0.46269408 -0.44197816 -0.05976245 -0.00000707

  6  1     3    1  |1 0>        0.00002842  0.00000743 -0.00000000  0.00000000  0.00000030  0.00001107 -0.00000004 -0.00000000
                                0.06232913 -0.70297399  0.00000516 -0.00000463 -0.04977234 -0.04797048  0.55415488  0.00007055

  7  1     1    1  |1 1>-       0.00026328  0.00000000 -0.00000000 -0.00000000  0.00000092 -0.00014436 -0.00000000  0.00000000
                                0.57734997 -0.00000000  0.00000000 -0.00000000 -0.15233040  0.62530370  0.00010078  0.00000005

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000557 -0.70445852  0.06114880  0.00002158  0.00000536  0.00001830  0.06983258

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000419 -0.06114880 -0.70445837  0.00000217  0.00000058  0.00007377 -0.55297558

 10  1     1    1  |0 0>        0.00000022  0.00000002  0.00000000  0.00000000 -0.61390022 -0.01454191  0.03995926 -0.00004752
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000369 -0.00000336  0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000002  0.00000019 -0.00000000 -0.00000000  0.04002961 -0.00251832  0.61406289  0.00008145
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000024 -0.00000058  0.00000004  0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000001  0.00000022  0.00000015 -0.00000006 -0.00007901  0.61518262
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000006  0.00000000 -0.00000000 -0.00000000  0.01434767 -0.61519790 -0.00345822 -0.00000025
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00014203 -0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000044 -0.00000000 -0.00213496 -0.00003958  0.00003175  0.01523120
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+       0.00972677  0.00005794  0.03113816  0.43401777  0.00000020 -0.00000007
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00002485 -0.43252348  0.00004995  0.00005418 -0.04419547  0.03235409
                               -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000014 -0.00000012

  3  1     3    1  |1 1>+      -0.00002509 -0.04758682 -0.00003222  0.00000843  0.40241757 -0.29583349
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000130  0.00000112

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.55728392 -0.00004211 -0.43401776  0.03113816 -0.00003021  0.00001383

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000148 -0.00000076
                                0.00002521  0.04738940  0.00002030 -0.00000760 -0.45740285 -0.20064572

  6  1     3    1  |1 0>        0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000016 -0.00000008
                               -0.00002484 -0.43254488  0.00004866  0.00005427 -0.05016643 -0.02155951

  7  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000018  0.00000188
                               -0.00000012  0.00019857  0.00001199 -0.00000083  0.05530846  0.49939822

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.55297535 -0.00004811 -0.43484238 -0.01589914 -0.00003005  0.00001376

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.06983257  0.00005306 -0.01589916  0.43484233 -0.00000306  0.00000142

 10  1     1    1  |0 0>       -0.00213232  0.04954406 -0.00281957  0.00017525  0.74534341 -0.25162346
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000242  0.00000095

 11  1     2    1  |0 0>        0.00010505  0.78666673  0.00009524 -0.00011055 -0.04554797  0.01997112
                               -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000015 -0.00000008

 12  1     3    1  |0 0>       -0.01523129  0.00010440  0.05066407  0.78660758 -0.00000018  0.00000014
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00001039 -0.00434445  0.00001284 -0.00000032  0.25237914  0.74672592
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000082 -0.00000281

 14  1     5    1  |0 0>        0.61517895  0.00007569  0.78660251 -0.05066375  0.00267309 -0.00091656
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.02%   49.98%    0.00%    0.00%    0.00%   31.06%
  2  1     2    1  |1 1>+         0.39%   49.42%    0.00%    0.00%    0.44%    0.04%   30.71%    0.00%
  3  1     3    1  |1 1>+        32.94%    0.58%    0.00%    0.00%   37.72%    3.23%    0.36%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   49.98%    0.02%    0.00%    0.00%    0.00%    0.01%
  5  1     2    1  |1 0>         32.94%    0.58%    0.00%    0.00%   21.41%   19.53%    0.36%    0.00%
  6  1     3    1  |1 0>          0.39%   49.42%    0.00%    0.00%    0.25%    0.23%   30.71%    0.00%
  7  1     1    1  |1 1>-        33.33%    0.00%    0.00%    0.00%    2.32%   39.10%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%   49.63%    0.37%    0.00%    0.00%    0.00%    0.49%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.37%   49.63%    0.00%    0.00%    0.00%   30.58%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   37.69%    0.02%    0.16%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.16%    0.00%   37.71%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.84%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%   37.85%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+         0.01%    0.00%    0.10%   18.84%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   18.71%    0.00%    0.00%    0.20%    0.10%
  3  1     3    1  |1 1>+         0.00%    0.23%    0.00%    0.00%   16.19%    8.75%
  4  1     1    1  |1 0>         31.06%    0.00%   18.84%    0.10%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.22%    0.00%    0.00%   20.92%    4.03%
  6  1     3    1  |1 0>          0.00%   18.71%    0.00%    0.00%    0.25%    0.05%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.31%   24.94%
  8  1     2    1  |1 1>-        30.58%    0.00%   18.91%    0.03%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.49%    0.00%    0.03%   18.91%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.25%    0.00%    0.00%   55.55%    6.33%
 11  1     2    1  |0 0>          0.00%   61.88%    0.00%    0.00%    0.21%    0.04%
 12  1     3    1  |0 0>          0.02%    0.00%    0.26%   61.88%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    6.37%   55.76%
 14  1     5    1  |0 0>         37.84%    0.00%   61.87%    0.26%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       36.28       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      259.75       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4545.92   1839.38   1431.04   1272.18      2.14      0.08      0.80
 REAL TIME  *      4662.78 SEC
 DISK USED  *       296.12 MB (local),        2.06 GB (total)
 SF USED    *         1.58 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -192.462768991346

              CI              CI           MULTI         RHF-SCF
   -192.42316144   -192.45066686   -191.81220043   -191.86422677
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
