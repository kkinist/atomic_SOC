
 Working directory              : /wrk/irikura/molpro.e2R4AuY3IL/
 Global scratch directory       : /wrk/irikura/molpro.e2R4AuY3IL/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.e2R4AuY3IL/

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
 NSING=6
 
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
  (32 PROC) 64 bit mpp version                                                           DATE: 29-Jul-24          TIME: 13:39:49  
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

     16.777 MB (compressed) written to integral file ( 18.3%)

     Node minimum: 1.311 MB, node maximum: 3.146 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     791287.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     791287      RECORD LENGTH: 524288

 Memory used in sort:       1.35 MW

 SORT1 READ    11031004. AND WROTE      161085. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     84 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC

 Node minimum:      789607.  Node maximum:      791287. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.06      0.84
 REAL TIME  *         3.12 SEC
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
   3     -191.86416655      -0.00023547     0.72D-03     0.84D-03     2     0       0.00      0.02    diag2
   4     -191.86422241      -0.00005586     0.17D-03     0.65D-03     3     0       0.01      0.03    diag2
   5     -191.86422657      -0.00000416     0.45D-04     0.24D-03     4     0       0.00      0.03    diag2
   6     -191.86422675      -0.00000018     0.75D-05     0.57D-04     5     0       0.01      0.04    diag2
   7     -191.86422677      -0.00000002     0.19D-05     0.11D-04     6     0       0.01      0.05    diag2
   8     -191.86422677      -0.00000000     0.42D-06     0.44D-05     7     0       0.00      0.05    fixocc
   9     -191.86422677      -0.00000000     0.85D-07     0.13D-05     8     0       0.01      0.06    diag2
  10     -191.86422677      -0.00000000     0.71D-08     0.57D-07     0     0       0.01      0.07    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864226771913
  RHF One-electron energy            -340.689562375594
  RHF Two-electron energy             148.825335603681
  RHF Kinetic energy                   62.713168144683
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059392986323

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94907     1  1  s    1.00046
    2.1     2.00000    -0.84924     1  1  d0   0.99979
    3.1     2.00000    -0.84924     1  1  d1+  0.88274    1  1  d1- -0.46473
    4.1     2.00000    -0.84924     1  1  d1+  0.43740    1  1  d1-  0.86550
    5.1     2.00000    -0.84924     1  1  d2- -0.65819    1  1  d2+  0.70959
    6.1     2.00000    -0.84924     1  1  d2-  0.72810    1  1  d2+  0.68467
    7.1     2.00000    -0.35245     1  2  s    0.96592
    1.2     2.00000    -3.63153     1  1  pz   1.00052
    2.2     2.00000    -3.63153     1  1  py   1.00052
    3.2     2.00000    -3.63153     1  1  px   1.00062
    4.2     1.00000    -0.05143     1  2  py   0.78413
    5.2     1.00000    -0.05143     1  2  px   0.78410
    6.2     1.00000    -0.05143     1  2  pz   0.79383


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
 CPU TIMES  *         1.18      0.12      0.84
 REAL TIME  *         3.71 SEC
 DISK USED  *        30.07 MB (local),      246.45 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

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
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.542D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.387D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.475D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.588D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.498D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 5 3 1 1 2 3   5 6 4 1 3 5 6 4 2 1   3 5 2 6 4 8121415 7   9111310 3 5 6 4 2 1
                                        5 6 4 3 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.137D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.137D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.228D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.143D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.106D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 1 3 3   2 1 810 6 5 4 7 9 6   5 4 810 9 7 3 2 1 6   810 5 4 9 7 3 2 1 9
                                        7 4 5 6 810 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    679
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   18    0   -191.79351340    -191.81051175   -0.01699834    0.11145739 0.00020970 0.00000000  0.37E+00      0.34
   2    9   16    0   -191.80781936    -191.80992851   -0.00210915    0.11264549 0.00000410 0.00000000  0.33E-01      0.78
   3    7   12    0   -191.80994123    -191.80994145   -0.00000022    0.00089179 0.00000002 0.00000000  0.62E-03      1.16
   4    4    8    0   -191.80994145    -191.80994145    0.00000000    0.00000011 0.00000001 0.00000000  0.12E-06      1.43

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.85E-08)
                       Final energy:   -191.80994145
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.836563504979
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65642919
 One electron energy                          -335.73607911
 Two electron energy                           143.89951560
 Virial ratio                                    4.06172193
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.836563504832
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65642921
 One electron energy                          -335.73607919
 Two electron energy                           143.89951569
 Virial ratio                                    4.06172193
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.836563504753
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65642922
 One electron energy                          -335.73607923
 Two electron energy                           143.89951572
 Virial ratio                                    4.06172193
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.802600670692
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65642919
 One electron energy                          -335.73607911
 Two electron energy                           143.93347844
 Virial ratio                                    4.06117988
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.802600670671
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65642919
 One electron energy                          -335.73607911
 Two electron energy                           143.93347844
 Virial ratio                                    4.06117988
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.802600670209
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65642921
 One electron energy                          -335.73607919
 Two electron energy                           143.93347852
 Virial ratio                                    4.06117988
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.802600669985
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65642922
 One electron energy                          -335.73607923
 Two electron energy                           143.93347856
 Virial ratio                                    4.06117988
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.802600669884
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.65642922
 One electron energy                          -335.73607925
 Two electron energy                           143.93347858
 Virial ratio                                    4.06117988
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -191.766779214622
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.64254837
 One electron energy                          -335.63618600
 Two electron energy                           143.86940679
 Virial ratio                                    4.06128637
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.894299199624
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.105700822769
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.608478789247
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.391521142298
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.497222011129
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.502778034933
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 6   4 3 5 1 4 3 5 2 6 1   2 4 6 3 511 7 812 9  14151310 6 2 4 5 3 1
                                        6 2 4 5 3 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 1 2 3 1   2 3 4 6 5 810 9 7 5   6 4 810 7 9 3 1 2 5   6 4 810 7 9 3 2 1 5
                                        6 4 810 7 9 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.17751     1  1  s    0.99989
    2.1     2.00000    -1.07802     1  1  d0   1.00007
    3.1     2.00000    -1.07802     1  1  d1-  1.00007
    4.1     2.00000    -1.07802     1  1  d1+  1.00007
    5.1     2.00000    -1.07802     1  1  d2-  1.00007
    6.1     2.00000    -1.07802     1  1  d2+  1.00007
    7.1     1.98088    -0.56321     1  2  s    0.99559
    1.2     2.00000    -3.86010     1  1  pz   1.00005
    2.2     2.00000    -3.86010     1  1  py   1.00005
    3.2     2.00000    -3.86010     1  1  px   1.00005
    4.2     0.67304    -0.06424     1  2  py   0.96500
    5.2     0.67304    -0.06424     1  2  px   0.96500
    6.2     0.67304    -0.06424     1  2  pz   0.96500
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa0          0.00000039      0.00000000      0.99633404
 2 0aa          0.00000000      0.99633404      0.00000000
 2 a0a          0.99633404      0.00000000      0.00000000
 0 a2a         -0.08554808     -0.00000000     -0.00000000
 0 2aa          0.00000000     -0.08554808      0.00000000
 0 aa2         -0.00000003      0.00000000     -0.08554808
 
 Energy:     -191.83656350   -191.83656350   -191.83656350
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020         -0.13224171      0.00000000      0.00000000      0.00000000      0.80268287      0.56936082
 2 002          0.76126463      0.00000000      0.00000000      0.00000000     -0.28681675      0.56936079
 2 ab0          0.00000000      0.00000000      0.00000000      0.70451456      0.00000000      0.00000000
 2 ba0         -0.00000000     -0.00000000     -0.00000000     -0.70451456     -0.00000000     -0.00000000
 2 0ba         -0.00000000     -0.00000000     -0.70451456     -0.00000000     -0.00000000     -0.00000000
 2 0ab          0.00000000      0.00000000      0.70451456      0.00000000      0.00000000      0.00000000
 2 a0b          0.00000000      0.70451456      0.00000000      0.00000000      0.00000000      0.00000000
 2 b0a         -0.00000000     -0.70451456     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 200         -0.62902290      0.00000000      0.00000000      0.00000000     -0.51586615      0.56936080
 0 220          0.06536435      0.00000000      0.00000000      0.00000000     -0.02462690     -0.09571630
 0 022         -0.05400970      0.00000000      0.00000000      0.00000000     -0.04429373     -0.09571630
 0 202         -0.01135465      0.00000000      0.00000000      0.00000000      0.06892064     -0.09571630
 0 a2b         -0.00000000     -0.06049163     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 0 b2a          0.00000000      0.06049163      0.00000000      0.00000000      0.00000000      0.00000000
 0 2ab          0.00000000      0.00000000     -0.06049163      0.00000000      0.00000000      0.00000000
 0 2ba         -0.00000000     -0.00000000      0.06049163     -0.00000000     -0.00000000     -0.00000000
 0 ab2          0.00000000      0.00000000      0.00000000     -0.06049163      0.00000000      0.00000000
 0 ba2         -0.00000000     -0.00000000     -0.00000000      0.06049163     -0.00000000     -0.00000000
 
 Energy:     -191.80260067   -191.80260067   -191.80260067   -191.80260067   -191.80260067   -191.76677921
 


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
 CPU TIMES  *         2.44      1.25      0.12      0.84
 REAL TIME  *         5.36 SEC
 DISK USED  *        34.77 MB (local),      279.35 MB (total)
 SF USED    *        12.54 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8365635   2.0
    -191.8365635   2.0
    -191.8365635   2.0
    -191.8026007   6.0
    -191.8026007   6.0
    -191.8026007   6.0
    -191.8026007   6.0
    -191.8026007   6.0
    -191.7667792  -0.0
                                                  


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
     1      -191.83656350
     2      -191.83656350
     3      -191.83656350

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.73D-02
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        122064
 Number of doubly external configurations:        822378
 Total number of contracted configurations:       944979
 Total number of uncontracted configurations:    4744665

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.07 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    456247 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.83656350     0.00000000    -0.76577925  0.41D-01  0.11D+00     0.19
    1     2     2     1.00000000     0.00000000  -191.83656350    -0.00000000    -0.76567115  0.41D-01  0.11D+00     0.19
    1     3     3     1.00000000     0.00000000  -191.83656350     0.00000000    -0.76592617  0.42D-01  0.11D+00     0.19
    2     1     1     1.09320919    -0.59499475  -192.43155825    -0.59499475    -0.01695726  0.25D-02  0.15D-02     4.72
    2     2     2     1.09328647    -0.59493689  -192.43150040    -0.59493689    -0.01702137  0.25D-02  0.15D-02     4.72
    2     3     3     1.09339345    -0.59486233  -192.43142584    -0.59486233    -0.01710207  0.26D-02  0.15D-02     4.72
    3     1     1     1.08652521    -0.61086459  -192.44742810    -0.01586985    -0.00031260  0.41D-04  0.38D-04     8.77
    3     2     2     1.08652342    -0.61086222  -192.44742573    -0.01592533    -0.00031495  0.41D-04  0.38D-04     8.77
    3     3     3     1.08652144    -0.61085962  -192.44742312    -0.01599729    -0.00031740  0.41D-04  0.39D-04     8.77
    4     1     1     1.08689985    -0.61118585  -192.44774935    -0.00032126    -0.00001250  0.26D-05  0.15D-05    12.82
    4     2     2     1.08689875    -0.61118576  -192.44774926    -0.00032353    -0.00001258  0.26D-05  0.15D-05    12.82
    4     3     3     1.08689793    -0.61118570  -192.44774920    -0.00032608    -0.00001263  0.26D-05  0.15D-05    12.82
    5     1     1     1.08704307    -0.61119944  -192.44776294    -0.00001359    -0.00000046  0.54D-07  0.75D-07    16.88
    5     2     2     1.08704272    -0.61119943  -192.44776294    -0.00001368    -0.00000046  0.55D-07  0.76D-07    16.88
    5     3     3     1.08704226    -0.61119943  -192.44776294    -0.00001374    -0.00000046  0.55D-07  0.76D-07    16.88
    6     1     1     1.08705258    -0.61119993  -192.44776344    -0.00000049    -0.00000002  0.22D-08  0.50D-08    20.93
    6     2     2     1.08705243    -0.61119993  -192.44776344    -0.00000050    -0.00000002  0.22D-08  0.50D-08    20.93
    6     3     3     1.08705250    -0.61119993  -192.44776344    -0.00000050    -0.00000002  0.22D-08  0.50D-08    20.93


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.4%   5.7%
 P   0.3%  31.9%  24.8%

 Initialization:   0.7%
 Other:           35.6%

 Total CPU:       20.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0          -0.0000000   0.9561492  -0.0000000
 2222222222/0/           0.0000000   0.0000000   0.9561492
 22222222220//           0.9561492   0.0000000  -0.0000000
 2222220222//2           0.0000000  -0.0710175   0.0000000
 2222220222/2/          -0.0000000  -0.0000000  -0.0710174
 22222202222//          -0.0710174  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.958719   -0.000000
 2           0.000000    0.000000    0.958719
 3           0.958719   -0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958719    0.000000   -0.000000
 2           0.000000    0.958719    0.000000
 3          -0.000000    0.000000    0.958719


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95871939 (fixed)   0.95878295 (relaxed)   0.95871939 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084409   -0.00142257   -0.51581405
 Singles      0.01680418   -0.05052555   -0.05588523
 Pairs        0.07032187    0.00000000   -0.03950065
 Total        1.08797015   -0.05194812   -0.61119993
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83656350
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86583191
 One electron energy                 -335.30778167
 Two electron energy                  142.86001824
 Virial quotient                       -3.06124579
 Correlation energy                    -0.61119993
 !MRCI STATE 1.1 Energy              -192.447763435849

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50153078 (Davidson, fixed reference)
 Cluster corrected energies          -192.50144262 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50153078 (Davidson, rotated reference)

 Cluster corrected energies          -192.49977552 (Pople, fixed reference)
 Cluster corrected energies          -192.49968394 (Pople, relaxed reference)
 Cluster corrected energies          -192.49977552 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95871945 (fixed)   0.95878301 (relaxed)   0.95871945 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084409   -0.00142257   -0.00178173
 Singles      0.01680403   -0.05052541   -0.05588513
 Pairs        0.07032189   -0.55925195   -0.55353307
 Total        1.08797000   -0.61119993   -0.61119993
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83656350
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86583364
 One electron energy                 -335.30778363
 Two electron energy                  142.86002020
 Virial quotient                       -3.06124571
 Correlation energy                    -0.61119993
 !MRCI STATE 2.1 Energy              -192.447763435594

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50153069 (Davidson, fixed reference)
 Cluster corrected energies          -192.50144254 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50153069 (Davidson, rotated reference)

 Cluster corrected energies          -192.49977543 (Pople, fixed reference)
 Cluster corrected energies          -192.49968385 (Pople, relaxed reference)
 Cluster corrected energies          -192.49977543 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95871942 (fixed)   0.95878298 (relaxed)   0.95871942 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00084409   -0.00142257   -0.51581415
 Singles      0.01680410   -0.05052549   -0.05588518
 Pairs        0.07032187    0.00000000   -0.03950060
 Total        1.08797007   -0.05194805   -0.61119993
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83656350
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86583061
 One electron energy                 -335.30777984
 Two electron energy                  142.86001641
 Virial quotient                       -3.06124586
 Correlation energy                    -0.61119993
 !MRCI STATE 3.1 Energy              -192.447763435460

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.50153073 (Davidson, fixed reference)
 Cluster corrected energies          -192.50144257 (Davidson, relaxed reference)
 Cluster corrected energies          -192.50153073 (Davidson, rotated reference)

 Cluster corrected energies          -192.49977547 (Pople, fixed reference)
 Cluster corrected energies          -192.49968389 (Pople, relaxed reference)
 Cluster corrected energies          -192.49977547 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       22.97       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        24.12     21.67      1.25      0.12      0.84
 REAL TIME  *        29.24 SEC
 DISK USED  *        56.95 MB (local),      434.61 MB (total)
 SF USED    *       237.60 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.50153078  AU                              
 SETTING HLSDIAG(2)     =      -192.50153069  AU                              
 SETTING HLSDIAG(3)     =      -192.50153073  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

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
     1      -191.80260067
     2      -191.80260067
     3      -191.80260067
     4      -191.80260067
     5      -191.80260067
     6      -191.76677921

 Number of blocks in overlap matrix:   643   Smallest eigenvalue:  0.16D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:         87134
 Number of doubly external configurations:       1394048
 Total number of contracted configurations:      1481632
 Total number of uncontracted configurations:    3677611

 Diagonal Coupling coefficients finished.               Storage:    700785 words, CPU-Time:      0.20 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    510950 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.80260067     0.00000000    -0.77279446  0.46D-01  0.12D+00     0.37
    1     2     2     1.00000000     0.00000000  -191.80260067     0.00000000    -0.77366777  0.47D-01  0.12D+00     0.37
    1     3     3     1.00000000     0.00000000  -191.80260067    -0.00000000    -0.77377116  0.47D-01  0.12D+00     0.37
    1     4     4     1.00000000     0.00000000  -191.80260067    -0.00000000    -0.77357191  0.47D-01  0.12D+00     0.37
    1     5     5     1.00000000     0.00000000  -191.80260067    -0.00000000    -0.77296664  0.46D-01  0.12D+00     0.37
    1     6     6     1.00000000     0.00000000  -191.76677921    -0.00000000    -0.76242571  0.25D-01  0.13D+00     0.37
    2     1     1     1.09825368    -0.60013425  -192.40273492    -0.60013425    -0.01792765  0.27D-02  0.17D-02    12.61
    2     2     2     1.09833865    -0.60009512  -192.40269580    -0.60009512    -0.01797129  0.28D-02  0.17D-02    12.61
    2     3     3     1.09852950    -0.59994189  -192.40254256    -0.59994189    -0.01816246  0.29D-02  0.18D-02    12.61
    2     4     4     1.09865645    -0.59986442  -192.40246509    -0.59986442    -0.01825062  0.29D-02  0.18D-02    12.61
    2     5     5     1.09868354    -0.59984612  -192.40244679    -0.59984612    -0.01827506  0.29D-02  0.18D-02    12.61
    2     6     6     1.09678408    -0.59835222  -192.36513143    -0.59835222    -0.01617895  0.25D-02  0.19D-02    12.61
    3     1     1     1.09069502    -0.61678468  -192.41938535    -0.01665043    -0.00039827  0.56D-04  0.52D-04    24.90
    3     2     2     1.09069639    -0.61678095  -192.41938162    -0.01668582    -0.00040192  0.56D-04  0.53D-04    24.90
    3     3     3     1.09071670    -0.61677874  -192.41937941    -0.01683685    -0.00040584  0.57D-04  0.54D-04    24.90
    3     4     4     1.09072702    -0.61677537  -192.41937604    -0.01691095    -0.00040929  0.58D-04  0.54D-04    24.90
    3     5     5     1.09072506    -0.61677335  -192.41937402    -0.01692723    -0.00041124  0.58D-04  0.54D-04    24.90
    3     6     6     1.09016980    -0.61366645  -192.38044566    -0.01531423    -0.00037618  0.50D-04  0.60D-04    24.90
    4     1     1     1.09089555    -0.61719199  -192.41979266    -0.00040731    -0.00001860  0.41D-05  0.21D-05    37.29
    4     2     2     1.09089669    -0.61719192  -192.41979259    -0.00041097    -0.00001863  0.41D-05  0.21D-05    37.29
    4     3     3     1.09089496    -0.61719191  -192.41979258    -0.00041317    -0.00001856  0.41D-05  0.21D-05    37.29
    4     4     4     1.09089510    -0.61719170  -192.41979237    -0.00041633    -0.00001884  0.41D-05  0.22D-05    37.29
    4     5     5     1.09089308    -0.61719160  -192.41979227    -0.00041825    -0.00001887  0.42D-05  0.22D-05    37.29
    4     6     6     1.09022616    -0.61405649  -192.38083571    -0.00039005    -0.00001969  0.46D-05  0.27D-05    37.29
    5     1     1     1.09099171    -0.61721248  -192.41981315    -0.00002049    -0.00000067  0.10D-06  0.94D-07    49.67
    5     2     2     1.09099188    -0.61721247  -192.41981314    -0.00002055    -0.00000068  0.10D-06  0.94D-07    49.67
    5     3     3     1.09099157    -0.61721247  -192.41981314    -0.00002056    -0.00000068  0.10D-06  0.95D-07    49.67
    5     4     4     1.09099439    -0.61721246  -192.41981313    -0.00002076    -0.00000068  0.10D-06  0.95D-07    49.67
    5     5     5     1.09099345    -0.61721245  -192.41981312    -0.00002085    -0.00000070  0.10D-06  0.97D-07    49.67
    5     6     6     1.09034201    -0.61407833  -192.38085754    -0.00002183    -0.00000076  0.11D-06  0.12D-06    49.67
    6     1     1     1.09098744    -0.61721318  -192.41981385    -0.00000070    -0.00000003  0.36D-08  0.37D-08    62.00
    6     2     2     1.09098731    -0.61721318  -192.41981385    -0.00000070    -0.00000003  0.36D-08  0.37D-08    62.00
    6     3     3     1.09098745    -0.61721318  -192.41981385    -0.00000071    -0.00000003  0.36D-08  0.38D-08    62.00
    6     4     4     1.09098777    -0.61721318  -192.41981385    -0.00000071    -0.00000003  0.43D-08  0.36D-08    62.00
    6     5     5     1.09098752    -0.61721318  -192.41981385    -0.00000073    -0.00000003  0.44D-08  0.36D-08    62.00
    6     6     6     1.09031853    -0.61407914  -192.38085835    -0.00000081    -0.00000003  0.75D-08  0.43D-08    62.00
    7     1     1     1.09098744    -0.61721318  -192.41981385    -0.00000000    -0.00000003  0.36D-08  0.37D-08    65.18
    7     2     2     1.09098731    -0.61721318  -192.41981385     0.00000000    -0.00000003  0.36D-08  0.37D-08    65.18
    7     3     3     1.09098745    -0.61721318  -192.41981385    -0.00000000    -0.00000003  0.36D-08  0.38D-08    65.18
    7     4     4     1.09098777    -0.61721318  -192.41981385    -0.00000000    -0.00000003  0.43D-08  0.36D-08    65.18
    7     5     5     1.09098753    -0.61721318  -192.41981385    -0.00000000    -0.00000003  0.44D-08  0.36D-08    65.18
    7     6     6     1.09031669    -0.61407918  -192.38085839    -0.00000004    -0.00000000  0.19D-09  0.22D-09    65.18


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.2%   2.6%
 P   0.4%  18.4%  36.1%

 Initialization:   0.4%
 Other:           41.5%

 Total CPU:       65.2 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\           0.0000000   0.9542781  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222222222/\0           0.9542780  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 22222222220/\          -0.0000000   0.0000000   0.9542780  -0.0000000  -0.0000000   0.0000000
 2222222222200          -0.0000000   0.0000000  -0.0000000  -0.0322106   0.7784988   0.5469089
 2222222222020          -0.0000000   0.0000000  -0.0000000   0.6903048  -0.3613541   0.5469089
 2222222222002           0.0000000   0.0000000  -0.0000000  -0.6580943  -0.4171444   0.5469089
 2222220222220           0.0000000  -0.0000000   0.0000000  -0.0487684  -0.0309125  -0.0796747
 2222220222022           0.0000000  -0.0000000   0.0000000  -0.0023870   0.0576906  -0.0796747
 2222220222202          -0.0000000  -0.0000000   0.0000000   0.0511553  -0.0267783  -0.0796746
 22222202222/\           0.0000000  -0.0000000  -0.0707176   0.0000000   0.0000000  -0.0000000
 2222220222/\2          -0.0707174   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220222/2\          -0.0000000  -0.0707172   0.0000000   0.0000000  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000   -0.000000    0.956829   -0.000000   -0.000000
 2          -0.000000    0.956829    0.000000   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.956829    0.000000    0.000000   -0.000000
 4          -0.575605   -0.000000   -0.000000    0.000000    0.764330   -0.000000
 5          -0.764330    0.000000   -0.000000   -0.000000   -0.575605    0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.957044

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956829    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.956829    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.956829    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.956829   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.956829    0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.957044


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95682943 (fixed)   0.95689472 (relaxed)   0.95682943 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00117778   -0.00205197   -0.51643999
 Singles      0.01916428   -0.05384698   -0.06013220
 Pairs        0.07193033    0.00000000   -0.04064099
 Total        1.09227238   -0.05589895   -0.61721318
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80260067
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86532723
 One electron energy                 -335.27052862
 Two electron energy                  142.85071477
 Virial quotient                       -3.06082577
 Correlation energy                    -0.61721318
 !MRCI STATE 1.1 Energy              -192.419813847836

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47676558 (Davidson, fixed reference)
 Cluster corrected energies          -192.47667357 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47676558 (Davidson, rotated reference)

 Cluster corrected energies          -192.47577004 (Pople, fixed reference)
 Cluster corrected energies          -192.47567244 (Pople, relaxed reference)
 Cluster corrected energies          -192.47577004 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95682948 (fixed)   0.95689478 (relaxed)   0.95682948 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00117778   -0.00205197   -0.51644020
 Singles      0.01916413   -0.05384681   -0.06013209
 Pairs        0.07193035   -0.00000000   -0.04064088
 Total        1.09227226   -0.05589878   -0.61721318
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80260067
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86532233
 One electron energy                 -335.27052206
 Two electron energy                  142.85070821
 Virial quotient                       -3.06082601
 Correlation energy                    -0.61721318
 !MRCI STATE 2.1 Energy              -192.419813847523

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47676550 (Davidson, fixed reference)
 Cluster corrected energies          -192.47667349 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47676550 (Davidson, rotated reference)

 Cluster corrected energies          -192.47576996 (Pople, fixed reference)
 Cluster corrected energies          -192.47567235 (Pople, relaxed reference)
 Cluster corrected energies          -192.47576996 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95682943 (fixed)   0.95689472 (relaxed)   0.95682943 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00117777   -0.00205197   -0.51644009
 Singles      0.01916413   -0.05384687   -0.06013211
 Pairs        0.07193048    0.00000000   -0.04064098
 Total        1.09227238   -0.05589884   -0.61721318
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80260067
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86532468
 One electron energy                 -335.27052454
 Two electron energy                  142.85071070
 Virial quotient                       -3.06082590
 Correlation energy                    -0.61721318
 !MRCI STATE 3.1 Energy              -192.419813847358

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47676558 (Davidson, fixed reference)
 Cluster corrected energies          -192.47667358 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47676558 (Davidson, rotated reference)

 Cluster corrected energies          -192.47577004 (Pople, fixed reference)
 Cluster corrected energies          -192.47567244 (Pople, relaxed reference)
 Cluster corrected energies          -192.47577004 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.76433042 (fixed)   0.95689458 (relaxed)   0.95682928 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00117779   -0.00205197   -0.51644013
 Singles      0.01916432   -0.05384674   -0.06013208
 Pairs        0.07193062    0.00000009   -0.04064096
 Total        1.09227272   -0.05589862   -0.61721318
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80260067
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86529814
 One electron energy                 -335.27046002
 Two electron energy                  142.85064618
 Virial quotient                       -3.06082719
 Correlation energy                    -0.61721318
 !MRCI STATE 4.1 Energy              -192.419813846407

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47676578 (Davidson, fixed reference)
 Cluster corrected energies          -192.47667378 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47676578 (Davidson, rotated reference)

 Cluster corrected energies          -192.47577026 (Pople, fixed reference)
 Cluster corrected energies          -192.47567265 (Pople, relaxed reference)
 Cluster corrected energies          -192.47577026 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.76433046 (fixed)   0.95689469 (relaxed)   0.95682938 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00117779   -0.00205197   -0.51644022
 Singles      0.01916423   -0.05384670   -0.06013203
 Pairs        0.07193046    0.00000001   -0.04064093
 Total        1.09227248   -0.05589866   -0.61721318
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.80260067
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86529330
 One electron energy                 -335.27045161
 Two electron energy                  142.85063776
 Virial quotient                       -3.06082743
 Correlation energy                    -0.61721318
 !MRCI STATE 5.1 Energy              -192.419813845972

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.47676564 (Davidson, fixed reference)
 Cluster corrected energies          -192.47667363 (Davidson, relaxed reference)
 Cluster corrected energies          -192.47676564 (Davidson, rotated reference)

 Cluster corrected energies          -192.47577010 (Pople, fixed reference)
 Cluster corrected energies          -192.47567249 (Pople, relaxed reference)
 Cluster corrected energies          -192.47577010 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95704403 (fixed)   0.95727337 (relaxed)   0.95704403 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00134448   -0.00170344   -0.00231645
 Singles      0.01155174   -0.03992597   -0.04306628
 Pairs        0.07888638   -0.57244976   -0.56869644
 Total        1.09178260   -0.61407917   -0.61407918
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.76677921
 Nuclear energy                         0.00000000
 Kinetic energy                        62.86091719
 One electron energy                 -335.15782665
 Two electron energy                  142.77696826
 Virial quotient                       -3.06042080
 Correlation energy                    -0.61407918
 !MRCI STATE 6.1 Energy              -192.380858390110

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.43722017 (Davidson, fixed reference)
 Cluster corrected energies          -192.43689895 (Davidson, relaxed reference)
 Cluster corrected energies          -192.43722017 (Davidson, rotated reference)

 Cluster corrected energies          -192.43621147 (Pople, fixed reference)
 Cluster corrected energies          -192.43587110 (Pople, relaxed reference)
 Cluster corrected energies          -192.43621147 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       91.62       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        93.45     69.31     21.67      1.25      0.12      0.84
 REAL TIME  *       106.19 SEC
 DISK USED  *       125.61 MB (local),      915.19 MB (total)
 SF USED    *       716.41 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -192.47676558  AU                              
 SETTING HLSDIAG(5)     =      -192.47676550  AU                              
 SETTING HLSDIAG(6)     =      -192.47676558  AU                              
 SETTING HLSDIAG(7)     =      -192.47676578  AU                              
 SETTING HLSDIAG(8)     =      -192.47676564  AU                              
 SETTING HLSDIAG(9)     =      -192.43722017  AU                              


         HLSDIAG
    -192.5015308
    -192.5015307
    -192.5015307
    -192.4767656
    -192.4767655
    -192.4767656
    -192.4767658
    -192.4767656
    -192.4372202
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -192.447763   -192.447763   -192.447763
 Replaced energies:   -192.501531   -192.501531   -192.501531

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -192.419814   -192.419814   -192.419814   -192.419814   -192.419814   -192.380858
 Replaced energies:   -192.476766   -192.476765   -192.476766   -192.476766   -192.476766   -192.437220



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.50153078

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -3257.51       0.00   -2303.41       0.00       0.00       0.00       0.00    2293.61

    2   2.1  1.0  1.0       0.00       0.02       0.00       0.00       0.00    2303.41       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00    2303.41       0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01       0.00   -2303.41      -0.00       0.00       0.00       0.00   -2293.60
                         3257.51       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00   -2303.41       0.00       0.00       0.00       0.00       0.00   -2303.41       0.00      -0.00

    5   2.1  1.0  0.0      -0.00       0.00   -2303.41       0.00       0.02       0.00       0.00       0.00    2303.41       0.00
                         2303.41      -0.00      -0.00      -0.00       0.00       0.00    2303.41       0.00      -0.00      -0.00

    6   3.1  1.0  0.0      -0.00    2303.41      -0.00       0.00       0.00       0.01       0.00   -2303.41      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -2303.41       0.00      -0.00       0.00    3257.51   -2293.61

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00   -2303.41       0.00       0.02       0.00      -0.00
                           -0.00      -0.00      -0.00    2303.41      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00    2303.41      -0.00       0.00       0.00       0.01   -2293.60
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00   -3257.51      -0.00       0.00      -0.00

   10   1.1  0.0  0.0       0.00      -0.00   -2293.60       0.00       0.00       0.00       0.00      -0.00   -2293.60    5435.33
                        -2293.61       0.00      -0.00       0.00       0.00       0.00    2293.61      -0.00       0.00       0.00

   11   2.1  0.0  0.0      -0.00    2293.60      -0.00       0.00       0.00       0.00      -0.00    2293.60      -0.00       0.00
                            0.00      -0.00      -0.00    3243.65      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   12   3.1  0.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00   -2293.61       0.00      -0.00      -0.00   -3243.64       0.00    2293.61      -0.00      -0.00

   13   4.1  0.0  0.0    -109.49      -0.00      -0.00       0.00       0.00       0.00    -109.49      -0.00      -0.00       0.00
                           -0.00       0.00    2346.44      -0.00   -3163.53       0.00       0.00      -0.00   -2346.44      -0.00

   14   5.1  0.0  0.0    2646.23       0.00       0.00       0.00       0.00       0.00    2646.23       0.00       0.00       0.00
                            0.00      -0.00   -1228.29       0.00   -2005.26       0.00      -0.00       0.00    1228.29      -0.00

   15   6.1  0.0  0.0   -3772.47      -0.00      -0.00       0.00       0.00       0.00   -3772.47      -0.00      -0.00       0.00
                           -0.00      -0.00   -3772.47      -0.00   -5335.09       0.00       0.00       0.00    3772.47      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00       0.00    -109.49    2646.23   -3772.47
                           -0.00       0.00       0.00      -0.00       0.00

    2   2.1  1.0  1.0    2293.60      -0.00      -0.00       0.00      -0.00
                            0.00    2293.61      -0.00       0.00       0.00

    3   3.1  1.0  1.0      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00   -2346.44    1228.29    3772.47

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                        -3243.65       0.00       0.00      -0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    3163.53    2005.26    5335.09

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00    3243.64      -0.00      -0.00      -0.00

    7   1.1  1.0 -1.0      -0.00       0.00    -109.49    2646.23   -3772.47
                            0.00      -0.00      -0.00       0.00      -0.00

    8   2.1  1.0 -1.0    2293.60      -0.00      -0.00       0.00      -0.00
                           -0.00   -2293.61       0.00      -0.00      -0.00

    9   3.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00    2346.44   -1228.29   -3772.47

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    5435.35       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    5435.33       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    5435.29       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    5435.32       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   14114.55
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -192.50153078 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -3257.515       0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.020       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    3257.515       0.000      -0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.011       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000    3257.514       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -3257.515       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.020       0.000      -0.000       0.000
                             3257.515       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.011      -0.000    3257.518
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000   -3257.514       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    3257.518       0.000       0.020
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000   -3257.518       0.000       0.000       0.000
                             3257.514       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000      -0.000   -3243.643       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000   -3243.657       0.000

    2    1  |0 0>              -0.000    3243.642      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    3243.650      -0.000      -0.000       0.000      -0.000

    3    1  |0 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000   -3243.643      -0.000   -3243.648

    4    1  |0 0>            -154.841      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -3163.535       0.000      -0.000       0.000

    5    1  |0 0>            3742.333       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -2005.258       0.000       0.000      -0.000

    6    1  |0 0>           -5335.085      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -5335.085       0.000      -0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000      -0.000       0.000    -154.841    3742.333   -5335.085
                            -3257.514       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000    3243.642      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   -3243.643      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -3243.650       0.000       0.000      -0.000       0.000

    2    1  |1 0>           -3257.518       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000    3163.535    2005.258    5335.085

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000    3243.643      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    3243.657      -0.000       0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    3243.648      -0.000       0.000       0.000

    3    1  |1 1>-              0.011       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -3318.373    1737.068    5335.083

    1    1  |0 0>               0.000    5435.334       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    5435.352       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    5435.334       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    5435.289       0.000       0.000
                             3318.373      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5435.321       0.000
                            -1737.068      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   14114.548
                            -5335.083      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.54731672    -0.04578594   -10048.85      0.00000000        0.00      0.0000
    2  -192.51637308    -0.01484230    -3257.51      0.03094364     6791.34      0.8420
    3  -192.51637307    -0.01484229    -3257.51      0.03094365     6791.35      0.8420
    4  -192.51637306    -0.01484227    -3257.50      0.03094367     6791.35      0.8420
    5  -192.50320922    -0.00167844     -368.37      0.04410750     9680.48      1.2002
    6  -192.50320919    -0.00167840     -368.37      0.04410754     9680.49      1.2002
    7  -192.50320869    -0.00167791     -368.26      0.04410803     9680.59      1.2002
    8  -192.50320862    -0.00167784     -368.24      0.04410810     9680.61      1.2002
    9  -192.50320862    -0.00167783     -368.24      0.04410810     9680.61      1.2002
   10  -192.46024533     0.04128546     9061.11      0.08707140    19109.96      2.3693
   11  -192.46024532     0.04128546     9061.11      0.08707140    19109.96      2.3693
   12  -192.46024529     0.04128549     9061.12      0.08707143    19109.97      2.3693
   13  -192.46024494     0.04128584     9061.19      0.08707178    19110.05      2.3693
   14  -192.46024488     0.04128590     9061.21      0.08707184    19110.06      2.3693
   15  -192.42111885     0.08041193    17648.38      0.12619787    27697.23      3.4340

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.53926296  0.00000000 -0.00000000 -0.00000000  0.28730462  0.57251529  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000007  0.70710454 -0.00000008 -0.00000000 -0.00000000  0.00000000  0.00000006
                          -0.00000000 -0.00000000 -0.00002386 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.70710490 -0.00000007 -0.00000005 -0.00000000 -0.00000000  0.55474598  0.00000000
                           0.00000000 -0.00001609 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000765 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00002386  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000007  0.70710902 -0.00000008  0.00000000  0.00000000 -0.00000000 -0.00000006

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.53926216 -0.00000000  0.00000000  0.00000000 -0.35215965  0.53507080  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00014933
                           0.00000000  0.00000005  0.00000008  0.70710723 -0.00000000  0.00000000  0.00000000 -0.55474278

   1    1  |1 1>-         -0.00000000  0.00001609  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000765 -0.00000000
                          -0.00000000  0.70710866 -0.00000007 -0.00000005  0.00000000  0.00000000 -0.55474079 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00014933
                          -0.00000000 -0.00000005 -0.00000008 -0.70710634 -0.00000000  0.00000000  0.00000000 -0.55474344

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.53926236 -0.00000000  0.00000000  0.00000000  0.63946467  0.03744548  0.00000000 -0.00000000

   1    1  |0 0>          -0.00000000 -0.00000256  0.00000000  0.00000000 -0.00000000 -0.00000000  0.62009641  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000855 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000235 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000006
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000 -0.00000000  0.62009684
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00016693

   4    1  |0 0>           0.00000007  0.00000000  0.00000000 -0.00000000  0.56525306 -0.25497860 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000040 -0.00000000  0.00000000  0.00000000 -0.25497754 -0.56525148 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.35719447 -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000035  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.06981015  0.50147286 -0.20622628
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.55474644  0.00000003  0.00000002  0.43847405  0.00000000 -0.00000000 -0.00000000
                          -0.00022190 -0.00000000 -0.00000000  0.00011576  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000116 -0.43847412  0.00000002  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00003831  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00022190 -0.00000000 -0.00000000  0.00011576  0.00000000 -0.00000000 -0.00000000
                           0.55474086 -0.00000003 -0.00000002 -0.43847388 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.39938453  0.31119412  0.20622649

   3    1  |1 0>          -0.00000000 -0.00007101 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000006  0.43847439 -0.00000116 -0.00000003  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00003831  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000116  0.43847463 -0.00000002 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00007101 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000006  0.43847499 -0.00000116 -0.00000003  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.46919462  0.19027883  0.20622620

   1    1  |0 0>           0.00000000  0.00000208  0.78452561 -0.00000003 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00006855 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.62009580  0.00000005  0.00000003  0.78452603  0.00000001 -0.00000000  0.00000000
                           0.00024804 -0.00000000 -0.00000000  0.00020711  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000006  0.78452525 -0.00000208 -0.00000005  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00012706  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000001  0.78083650  0.07595553  0.00000012
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000001 -0.07595593  0.78083796 -0.00000009
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000025 -0.00000001  0.93403004
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.54731672     -0.04578594   -10048.85      0.00000000        0.00      0.0000
     2   1   -192.51637308     -0.01484230    -3257.51      0.03094364     6791.34      0.8420
     3   1   -192.51637307     -0.01484229    -3257.51      0.03094365     6791.35      0.8420
     4   1   -192.51637306     -0.01484227    -3257.50      0.03094367     6791.35      0.8420
     5   1   -192.50320922     -0.00167844     -368.37      0.04410750     9680.48      1.2002
     6   1   -192.50320919     -0.00167840     -368.37      0.04410754     9680.49      1.2002
     7   1   -192.50320869     -0.00167791     -368.26      0.04410803     9680.59      1.2002
     8   1   -192.50320862     -0.00167784     -368.24      0.04410810     9680.61      1.2002
     9   1   -192.50320862     -0.00167783     -368.24      0.04410810     9680.61      1.2002
    10   1   -192.46024533      0.04128546     9061.11      0.08707140    19109.96      2.3693
    11   1   -192.46024532      0.04128546     9061.11      0.08707140    19109.96      2.3693
    12   1   -192.46024529      0.04128549     9061.12      0.08707143    19109.97      2.3693
    13   1   -192.46024494      0.04128584     9061.19      0.08707178    19110.05      2.3693
    14   1   -192.46024488      0.04128590     9061.21      0.08707184    19110.06      2.3693
    15   1   -192.42111885      0.08041193    17648.38      0.12619787    27697.23      3.4340

 E0 =   -192.50153078 is the energy of the lowest zeroth-order state
 E1 =   -192.54731672 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.53926296  0.00000000 -0.00000000 -0.00000000  0.28730462  0.57251529  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000007  0.70710454 -0.00000008 -0.00000000 -0.00000000  0.00000000  0.00000006
                               -0.00000000 -0.00000000 -0.00002386 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.70710490 -0.00000007 -0.00000005 -0.00000000 -0.00000000  0.55474598  0.00000000
                                0.00000000 -0.00001609 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000765 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00002386  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000007  0.70710902 -0.00000008  0.00000000  0.00000000 -0.00000000 -0.00000006

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.53926216 -0.00000000  0.00000000  0.00000000 -0.35215965  0.53507080  0.00000000  0.00000000

  6  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000  0.00014933
                                0.00000000  0.00000005  0.00000008  0.70710723 -0.00000000  0.00000000  0.00000000 -0.55474278

  7  1     1    1  |1 1>-      -0.00000000  0.00001609  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000765 -0.00000000
                               -0.00000000  0.70710866 -0.00000007 -0.00000005  0.00000000  0.00000000 -0.55474079 -0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000  0.00014933
                               -0.00000000 -0.00000005 -0.00000008 -0.70710634 -0.00000000  0.00000000  0.00000000 -0.55474344

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.53926236 -0.00000000  0.00000000  0.00000000  0.63946467  0.03744548  0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000000 -0.00000256  0.00000000  0.00000000 -0.00000000 -0.00000000  0.62009641  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000855 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000000  0.00000235 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000006
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000 -0.00000000  0.62009684
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00016693

 13  1     4    1  |0 0>        0.00000007  0.00000000  0.00000000 -0.00000000  0.56525306 -0.25497860 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000040 -0.00000000  0.00000000  0.00000000 -0.25497754 -0.56525148 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>        0.35719447 -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000035  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.06981015  0.50147286 -0.20622628
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.55474644  0.00000003  0.00000002  0.43847405  0.00000000 -0.00000000 -0.00000000
                               -0.00022190 -0.00000000 -0.00000000  0.00011576  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000116 -0.43847412  0.00000002  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00003831  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00022190 -0.00000000 -0.00000000  0.00011576  0.00000000 -0.00000000 -0.00000000
                                0.55474086 -0.00000003 -0.00000002 -0.43847388 -0.00000000  0.00000000  0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.39938453  0.31119412  0.20622649

  6  1     3    1  |1 0>       -0.00000000 -0.00007101 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000006  0.43847439 -0.00000116 -0.00000003  0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00003831  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000116  0.43847463 -0.00000002 -0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00007101 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000006  0.43847499 -0.00000116 -0.00000003  0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.46919462  0.19027883  0.20622620

 10  1     1    1  |0 0>        0.00000000  0.00000208  0.78452561 -0.00000003 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00006855 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.62009580  0.00000005  0.00000003  0.78452603  0.00000001 -0.00000000  0.00000000
                                0.00024804 -0.00000000 -0.00000000  0.00020711  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000006  0.78452525 -0.00000208 -0.00000005  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00012706  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000001  0.78083650  0.07595553  0.00000012
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000001 -0.07595593  0.78083796 -0.00000009
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000025 -0.00000001  0.93403004
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        29.08%    0.00%    0.00%    0.00%    8.25%   32.78%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   30.77%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>         29.08%    0.00%    0.00%    0.00%   12.40%   28.63%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   30.77%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   30.77%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   30.77%
  9  1     3    1  |1 1>-        29.08%    0.00%    0.00%    0.00%   40.89%    0.14%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   38.45%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   38.45%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   31.95%    6.50%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    6.50%   31.95%    0.00%    0.00%
 15  1     6    1  |0 0>         12.76%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.49%   25.15%    4.25%
  2  1     2    1  |1 1>+        30.77%    0.00%    0.00%   19.23%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   19.23%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         30.77%    0.00%    0.00%   19.23%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%   15.95%    9.68%    4.25%
  6  1     3    1  |1 0>          0.00%   19.23%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   19.23%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%   19.23%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   22.01%    3.62%    4.25%
 10  1     1    1  |0 0>          0.00%    0.00%   61.55%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>         38.45%    0.00%    0.00%   61.55%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%   61.55%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   60.97%    0.58%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.58%   60.97%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   87.24%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       91.62       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       148.09     54.63     69.31     21.67      1.25      0.12      0.84
 REAL TIME  *       166.09 SEC
 DISK USED  *       125.61 MB (local),      915.19 MB (total)
 SF USED    *       716.41 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=   -192.421118851529

              CI              CI           MULTI         RHF-SCF
   -192.38085839   -192.44776344   -191.76677921   -191.86422677
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
