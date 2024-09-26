
 Working directory              : /wrk/irikura/molpro.DF4ebKucOC/
 Global scratch directory       : /wrk/irikura/molpro.DF4ebKucOC/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.DF4ebKucOC/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Se SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Se};
 
 basis=AWCVQZ-PP
 
 NT=3
 NS=6
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,6,3
     occ,7,6
     wf,charge=0,sym=PAR,spin=2;state,NT;
     wf,charge=0,sym=PAR,spin=0;state,NS;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=PAR,spin=2;state,NT; save,5302.2}
 hlsdiag = energd4
                                                                                 !hlsdiag(1) = energd
 {ci;wf,sym=PAR,spin=0;state,NS; save,5102.2}
 hlsdiag(NT+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.16 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Se SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-Sep-24          TIME: 11:36:14  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AWCVQZ-PP
 SETTING NT             =         3.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Se   ECP ECP10MDF                 selected for group  1
 Library entry SE     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SE     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SE     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SE     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SE     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SE     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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

   1  SE     24.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   24
 NUMBER OF PRIMITIVE AOS:         300
 NUMBER OF SYMMETRY AOS:          232
 NUMBER OF CONTRACTIONS:          166   (   86Ag  +   80Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 2 3 4 5 6   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9
                                       101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011  12131415161718192021


 Eigenvalues of metric

         1 0.142E-03 0.114E-02 0.311E-02 0.100E-01 0.100E-01 0.100E-01 0.100E-01 0.100E-01
         2 0.251E-03 0.251E-03 0.251E-03 0.190E-02 0.190E-02 0.190E-02 0.257E-01 0.257E-01


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     92.013 MB (compressed) written to integral file ( 13.3%)

     Node minimum: 3.146 MB, node maximum: 10.748 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4051422.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4051422      RECORD LENGTH: 524288

 Memory used in sort:       4.61 MW

 SORT1 READ    86907878. AND WROTE      723489. INTEGRALS IN      3 RECORDS. CPU TIME:     0.39 SEC, REAL TIME:     0.40 SEC
 SORT2 READ     8938352. AND WROTE    48612351. INTEGRALS IN    348 RECORDS. CPU TIME:     0.12 SEC, REAL TIME:     0.13 SEC

 Node minimum:     4048764.  Node maximum:     4053420. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.35       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.03      1.79
 REAL TIME  *         2.90 SEC
 DISK USED  *        29.71 MB (local),      556.16 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -356.92592242    -356.92592242     0.00D+00     0.69D-01     0     0       0.02      0.05    start
   2     -365.43831797      -8.51239555     0.27D+00     0.30D+00     1     0       0.03      0.08    diag2
   3     -371.45373388      -6.01541591     0.21D+00     0.25D+00     2     0       0.02      0.10    diag2
   4     -371.54790620      -0.09417232     0.19D-01     0.42D-01     3     0       0.02      0.12    diag2
   5     -371.54893295      -0.00102676     0.11D-02     0.37D-02     4     0       0.03      0.15    diag2
   6     -371.54894974      -0.00001679     0.16D-03     0.27D-03     5     0       0.03      0.18    diag2
   7     -371.54894994      -0.00000020     0.28D-04     0.18D-04     6     0       0.02      0.20    diag2
   8     -371.54894995      -0.00000000     0.15D-05     0.31D-05     7     0       0.03      0.23    fixocc
   9     -371.54894995      -0.00000000     0.17D-06     0.34D-06     0     0       0.02      0.25    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -371.548949948585
  RHF One-electron energy            -646.953904329698
  RHF Two-electron energy             275.404954381113
  RHF Kinetic energy                  263.616158664754
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.409431621455

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -9.29366     1  1  s    1.00036
    2.1     2.00000    -2.97817     1  1  d0   1.00041
    3.1     2.00000    -2.97817     1  1  d1+  0.99575
    4.1     2.00000    -2.97817     1  1  d1-  0.99575
    5.1     2.00000    -2.97817     1  1  d2-  0.96065    1  1  d2+  0.27923
    6.1     2.00000    -2.97817     1  1  d2- -0.27923    1  1  d2+  0.96065
    7.1     2.00000    -1.19195     1  1  s   -0.37784    1  4  s    0.52331    1  5  s    0.64866
    1.2     2.00000    -7.17190     1  1  py   1.00036
    2.2     2.00000    -7.17190     1  1  px   1.00036
    3.2     2.00000    -7.17190     1  1  pz   1.00036
    4.2     1.00000    -0.78657     1  2  pz   1.07018
    5.2     1.00000    -0.78657     1  2  px   1.07018
    6.2     1.00000    -0.78657     1  2  py   1.07018


 HOMO      6.2    -0.786570 =     -21.4037eV
 LUMO      8.1    -0.121496 =      -3.3061eV
 LUMO-HOMO         0.665074 =      18.0976eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.35       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.83       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.48      0.45      1.79
 REAL TIME  *         4.05 SEC
 DISK USED  *        31.98 MB (local),      583.33 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     153 (   79   74)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.342D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.905D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.905D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.228D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.226D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 3   5 6 4 1 3 5 2 4 6 2   4 6 3 514151310 7 8  1211 9 1 4 6 5 3 215
                                       14 911 812 71310 1 6   4 3 5 2141511 91310  12 8 7 1 2 6 4 5 3 1   71514131012 8 911 4
                                        6 3 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.562D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.562D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.107D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.116D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 1   2 3 5 4 6 810 7 9 2   1 3 5 4 6 810 9 7 4   5 6 810 7 9 3 1 2 4
                                        510 8 6 7 9 3 2 114  16201819111213211517   4 5 810 6 9 7 3 2 1  10 8 4 5 6 7 9 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1012  ( 15 closed/active, 696 closed/virtual, 0 active/active, 301 active/virtual )
 Total number of variables:    1081
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -371.77462546    -371.81710047   -0.04247501    0.27280782 0.00001545 0.00000000  0.20E+00      0.45
   2    6   10    0   -371.81862357    -371.81878740   -0.00016382    0.01636757 0.00000048 0.00000000  0.13E-01      0.91
   3   17   34    0   -371.81878783    -371.81878783   -0.00000000    0.00007010 0.00000001 0.00000000  0.49E-04      1.40

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.99E-08)
                       Final energy:   -371.81878783
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -371.856261668017
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82609205
 One electron energy                          -655.66489897
 Two electron energy                           283.80863730
 Virial ratio                                    2.40947493
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -371.856261668006
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82609205
 One electron energy                          -655.66489897
 Two electron energy                           283.80863730
 Virial ratio                                    2.40947493
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -371.856261667998
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82609205
 One electron energy                          -655.66489897
 Two electron energy                           283.80863730
 Virial ratio                                    2.40947493
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -371.807558167037
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82609205
 One electron energy                          -655.66489897
 Two electron energy                           283.85734081
 Virial ratio                                    2.40929032
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -371.807558167026
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82609205
 One electron energy                          -655.66489897
 Two electron energy                           283.85734081
 Virial ratio                                    2.40929032
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -371.807558167021
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82609205
 One electron energy                          -655.66489897
 Two electron energy                           283.85734080
 Virial ratio                                    2.40929032
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -371.807558167017
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82609205
 One electron energy                          -655.66489897
 Two electron energy                           283.85734080
 Virial ratio                                    2.40929032
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -371.807558167002
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82609205
 One electron energy                          -655.66489897
 Two electron energy                           283.85734080
 Virial ratio                                    2.40929032
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -371.762514643948
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82077243
 One electron energy                          -655.51399785
 Two electron energy                           283.75148321
 Virial ratio                                    2.40914800
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
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
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.667521094634
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.332482978784
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.374583548401
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.625411263261
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     4.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.957895356965
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.042105757954
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 5 2 4 1 1 6 3   5 2 4 1 6 5 3 2 4 6   5 3 2 41113101415 8  12 7 9 1 6 5 3 2 411
                                       13101514 812 7 9 1 6   5 3 2 41113101415 8  12 7 9 1 6 5 3 2 4 1  1113101415 812 7 9 6
                                        5 3 2 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 2 3 1 2   3 1 5 9 7 810 6 4 2   3 1 5 7 9 810 6 4 5   7 9 810 6 4 2 3 1 5
                                        7 9 810 6 4 3 2 112  20181517141621131911   5 7 9 810 6 4 3 2 1   5 7 9 810 6 4 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.92128     1  1  s    1.00127
    2.1     2.00000    -2.60680     1  1  d1-  1.00006
    3.1     2.00000    -2.60680     1  1  d2-  1.00006
    4.1     2.00000    -2.60680     1  1  d2+  1.00006
    5.1     2.00000    -2.60680     1  1  d0   1.00006
    6.1     2.00000    -2.60680     1  1  d1+  1.00006
    7.1     1.99363    -0.86312     1  1  s   -0.36201    1  4  s    0.47284    1  5  s    0.61581
    1.2     2.00000    -6.80078     1  1  py   1.00007
    2.2     2.00000    -6.80078     1  1  pz   1.00007
    3.2     2.00000    -6.80078     1  1  px   1.00007
    4.2     1.33546    -0.26689     1  2  px   1.01878
    5.2     1.33546    -0.26689     1  2  pz   1.01878
    6.2     1.33546    -0.26689     1  2  py   1.01878
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa          0.00000000      0.00000000      1.00000000
 2 a2a          1.00000000     -0.00000000     -0.00000000
 2 aa2         -0.00000000      1.00000000     -0.00000000
 
 Energy:     -371.85626167   -371.85626167   -371.85626167
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202         -0.00000000     -0.08377016     -0.00000000     -0.00000000      0.81218793      0.56901117
 2 022         -0.00000000      0.74526046      0.00000000     -0.00000000     -0.33354687      0.56901117
 2 ba2          0.00000000      0.00000000     -0.70710678      0.00000000      0.00000000      0.00000000
 2 2ba         -0.00000000      0.00000000      0.00000000     -0.70710678      0.00000000      0.00000000
 2 ab2         -0.00000000     -0.00000000      0.70710678     -0.00000000     -0.00000000     -0.00000000
 2 2ab          0.00000000     -0.00000000     -0.00000000      0.70710678     -0.00000000     -0.00000000
 2 b2a         -0.70710678     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2 a2b          0.70710678      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2 220         -0.00000000     -0.66149029     -0.00000000     -0.00000000     -0.47864105      0.56901117
 0 222         -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.16934831
 
 Energy:     -371.80755817   -371.80755817   -371.80755817   -371.80755817   -371.80755817   -371.76251464
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.42       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.41       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.91      1.42      0.45      1.79
 REAL TIME  *         5.81 SEC
 DISK USED  *        45.92 MB (local),      750.70 MB (total)
 SF USED    *        37.21 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -371.8562617   2.0
    -371.8562617   2.0
    -371.8562617   2.0
    -371.8075582   6.0
    -371.8075582   6.0
    -371.8075582   6.0
    -371.8075582   6.0
    -371.8075582   6.0
    -371.7625146  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 24
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:       78 conf       78 CSFs
 N-1 el internal:      232 conf      564 CSFs
 N-2 el internal:      241 conf     1587 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -371.85626167
     2      -371.85626167
     3      -371.85626167

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         43101
 Number of doubly external configurations:       2881068
 Total number of contracted configurations:      2924205
 Total number of uncontracted configurations:    9309783

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    903905 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -371.85626167     0.00000000    -1.12480019  0.30D-01  0.89D-01     0.30
    1     2     2     1.00000000     0.00000000  -371.85626167    -0.00000000    -1.12483600  0.30D-01  0.89D-01     0.30
    1     3     3     1.00000000     0.00000000  -371.85626167     0.00000000    -1.12459383  0.30D-01  0.89D-01     0.30
    2     1     1     1.08209857    -0.93570993  -372.79197160    -0.93570993    -0.02380672  0.27D-02  0.20D-02     6.86
    2     2     2     1.08224884    -0.93557109  -372.79183275    -0.93557109    -0.02395356  0.28D-02  0.20D-02     6.86
    2     3     3     1.08228628    -0.93555123  -372.79181290    -0.93555123    -0.02396371  0.28D-02  0.20D-02     6.86
    3     1     1     1.06537665    -0.95834701  -372.81460868    -0.02263708    -0.00040370  0.31D-04  0.39D-04    13.52
    3     2     2     1.06536629    -0.95834681  -372.81460848    -0.02277573    -0.00040381  0.31D-04  0.39D-04    13.52
    3     3     3     1.06537140    -0.95834616  -372.81460783    -0.02279493    -0.00040436  0.31D-04  0.39D-04    13.52
    4     1     1     1.06423542    -0.95874170  -372.81500336    -0.00039468    -0.00001407  0.18D-05  0.99D-06    20.16
    4     2     2     1.06423612    -0.95874166  -372.81500333    -0.00039485    -0.00001409  0.18D-05  0.99D-06    20.16
    4     3     3     1.06423427    -0.95874166  -372.81500333    -0.00039551    -0.00001410  0.18D-05  0.99D-06    20.16
    5     1     1     1.06423995    -0.95875530  -372.81501696    -0.00001360    -0.00000048  0.71D-07  0.37D-07    26.78
    5     2     2     1.06424004    -0.95875530  -372.81501696    -0.00001363    -0.00000048  0.71D-07  0.37D-07    26.78
    5     3     3     1.06424004    -0.95875530  -372.81501696    -0.00001363    -0.00000049  0.71D-07  0.37D-07    26.78
    6     1     1     1.06424048    -0.95875579  -372.81501745    -0.00000049    -0.00000002  0.14D-08  0.18D-08    33.43
    6     2     2     1.06424045    -0.95875579  -372.81501745    -0.00000049    -0.00000002  0.14D-08  0.18D-08    33.43
    6     3     3     1.06424051    -0.95875579  -372.81501745    -0.00000049    -0.00000002  0.14D-08  0.18D-08    33.43


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.4%
 P   0.9%  12.2%  24.1%

 Initialization:   0.4%
 Other:           61.8%

 Total CPU:       33.4 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/           0.0000000   0.9693468   0.0000000
 2222222222//2           0.9693468   0.0000000   0.0000000
 22222222222//           0.0000000   0.0000000   0.9693468

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.969347    0.000000
 2           0.969347    0.000000    0.000000
 3           0.000000    0.000000    0.969347

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969347    0.000000    0.000000
 2           0.000000    0.969347    0.000000
 3           0.000000    0.000000    0.969347


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96934678 (fixed)   0.96934678 (relaxed)   0.96934678 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000432   -0.00001819   -0.86477357
 Singles      0.01063860   -0.03842891   -0.04569293
 Pairs        0.05360216    0.00000000   -0.04828929
 Total        1.06424509   -0.03844710   -0.95875579
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.85626167
 Nuclear energy                         0.00000000
 Kinetic energy                       264.24633295
 One electron energy                 -654.85337243
 Two electron energy                  282.03835498
 Virial quotient                       -1.41086165
 Correlation energy                    -0.95875579
 !MRCI STATE 1.1 Energy              -372.815017454530

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.87661280 (Davidson, fixed reference)
 Cluster corrected energies          -372.87661280 (Davidson, relaxed reference)
 Cluster corrected energies          -372.87661280 (Davidson, rotated reference)

 Cluster corrected energies          -372.87409745 (Pople, fixed reference)
 Cluster corrected energies          -372.87409745 (Pople, relaxed reference)
 Cluster corrected energies          -372.87409745 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96934680 (fixed)   0.96934680 (relaxed)   0.96934680 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000432   -0.00001819   -0.86477360
 Singles      0.01063859   -0.03842890   -0.04569293
 Pairs        0.05360213    0.00000000   -0.04828925
 Total        1.06424505   -0.03844710   -0.95875579
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.85626167
 Nuclear energy                         0.00000000
 Kinetic energy                       264.24633093
 One electron energy                 -654.85337076
 Two electron energy                  282.03835331
 Virial quotient                       -1.41086166
 Correlation energy                    -0.95875579
 !MRCI STATE 2.1 Energy              -372.815017454523

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.87661277 (Davidson, fixed reference)
 Cluster corrected energies          -372.87661277 (Davidson, relaxed reference)
 Cluster corrected energies          -372.87661277 (Davidson, rotated reference)

 Cluster corrected energies          -372.87409742 (Pople, fixed reference)
 Cluster corrected energies          -372.87409742 (Pople, relaxed reference)
 Cluster corrected energies          -372.87409742 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96934677 (fixed)   0.96934677 (relaxed)   0.96934677 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000432   -0.00001819   -0.00002099
 Singles      0.01063867   -0.03842902   -0.04569300
 Pairs        0.05360211   -0.92030857   -0.91304180
 Total        1.06424511   -0.95875579   -0.95875579
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.85626167
 Nuclear energy                         0.00000000
 Kinetic energy                       264.24633565
 One electron energy                 -654.85337300
 Two electron energy                  282.03835554
 Virial quotient                       -1.41086164
 Correlation energy                    -0.95875579
 !MRCI STATE 3.1 Energy              -372.815017454468

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.87661282 (Davidson, fixed reference)
 Cluster corrected energies          -372.87661282 (Davidson, relaxed reference)
 Cluster corrected energies          -372.87661282 (Davidson, rotated reference)

 Cluster corrected energies          -372.87409747 (Pople, fixed reference)
 Cluster corrected energies          -372.87409747 (Pople, relaxed reference)
 Cluster corrected energies          -372.87409747 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.42       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       70.02       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        38.19     34.27      1.42      0.45      1.79
 REAL TIME  *        43.99 SEC
 DISK USED  *       114.54 MB (local),        1.54 GB (total)
 SF USED    *       691.07 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -372.87661280  AU                              
 SETTING HLSDIAG(2)     =      -372.87661277  AU                              
 SETTING HLSDIAG(3)     =      -372.87661282  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 24
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       91 conf       91 CSFs
 N-1 el internal:      286 conf      488 CSFs
 N-2 el internal:      478 conf     1349 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -371.80755817
     2      -371.80755817
     3      -371.80755817
     4      -371.80755817
     5      -371.80755817
     6      -371.76251464

 Number of blocks in overlap matrix:   684   Smallest eigenvalue:  0.21D-01
 Number of N-2 electron functions:     826
 Number of N-1 electron functions:     488

 Number of internal configurations:                   49
 Number of singly external configurations:         37312
 Number of doubly external configurations:       4838711
 Total number of contracted configurations:      4876072
 Total number of uncontracted configurations:    7930053

 Diagonal Coupling coefficients finished.               Storage:    441505 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    988191 words, CPU-time:      0.15 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -371.80755817     0.00000000    -1.12817250  0.31D-01  0.87D-01     0.41
    1     2     2     1.00000000     0.00000000  -371.80755817    -0.00000000    -1.12746221  0.31D-01  0.86D-01     0.41
    1     3     3     1.00000000     0.00000000  -371.80755817    -0.00000000    -1.12826214  0.31D-01  0.87D-01     0.41
    1     4     4     1.00000000     0.00000000  -371.80755817    -0.00000000    -1.12884228  0.31D-01  0.87D-01     0.41
    1     5     5     1.00000000     0.00000000  -371.80755817    -0.00000000    -1.12631260  0.31D-01  0.86D-01     0.41
    1     6     6     1.00000000     0.00000000  -371.76251464     0.00000000    -1.10701325  0.54D-02  0.98D-01     0.41
    2     1     1     1.08204231    -0.94411711  -372.75167528    -0.94411711    -0.02268526  0.26D-02  0.16D-02    25.28
    2     2     2     1.08197497    -0.94400730  -372.75156546    -0.94400730    -0.02287543  0.26D-02  0.16D-02    25.28
    2     3     3     1.08228990    -0.94391575  -372.75147392    -0.94391575    -0.02294168  0.25D-02  0.17D-02    25.28
    2     4     4     1.08234387    -0.94381178  -372.75136995    -0.94381178    -0.02307534  0.26D-02  0.17D-02    25.28
    2     5     5     1.08263673    -0.94353126  -372.75108942    -0.94353126    -0.02338298  0.27D-02  0.17D-02    25.28
    2     6     6     1.07446683    -0.93958898  -372.70210362    -0.93958898    -0.01886901  0.12D-02  0.18D-02    25.28
    3     1     1     1.06820618    -0.96531688  -372.77287505    -0.02119977    -0.00045664  0.32D-04  0.53D-04    50.22
    3     2     2     1.06816565    -0.96531667  -372.77287483    -0.02130937    -0.00045392  0.32D-04  0.53D-04    50.22
    3     3     3     1.06815560    -0.96531240  -372.77287057    -0.02139666    -0.00045898  0.33D-04  0.54D-04    50.22
    3     4     4     1.06820875    -0.96531118  -372.77286935    -0.02149940    -0.00046250  0.33D-04  0.54D-04    50.22
    3     5     5     1.06820901    -0.96530569  -372.77286386    -0.02177443    -0.00046825  0.33D-04  0.55D-04    50.22
    3     6     6     1.06479623    -0.95736659  -372.71988123    -0.01777761    -0.00037581  0.15D-04  0.52D-04    50.22
    4     1     1     1.06693107    -0.96576870  -372.77332686    -0.00045182    -0.00001538  0.16D-05  0.13D-05    75.12
    4     2     2     1.06693501    -0.96576859  -372.77332676    -0.00045192    -0.00001562  0.16D-05  0.13D-05    75.12
    4     3     3     1.06692849    -0.96576858  -372.77332674    -0.00045617    -0.00001549  0.16D-05  0.13D-05    75.12
    4     4     4     1.06693672    -0.96576851  -372.77332668    -0.00045733    -0.00001568  0.16D-05  0.14D-05    75.12
    4     5     5     1.06693560    -0.96576842  -372.77332659    -0.00046273    -0.00001576  0.16D-05  0.14D-05    75.12
    4     6     6     1.06368922    -0.95774430  -372.72025895    -0.00037772    -0.00001328  0.15D-05  0.11D-05    75.12
    5     1     1     1.06686511    -0.96578424  -372.77334241    -0.00001555    -0.00000051  0.51D-07  0.45D-07   100.04
    5     2     2     1.06686514    -0.96578424  -372.77334240    -0.00001565    -0.00000052  0.52D-07  0.46D-07   100.04
    5     3     3     1.06686684    -0.96578423  -372.77334239    -0.00001565    -0.00000053  0.56D-07  0.46D-07   100.04
    5     4     4     1.06686747    -0.96578422  -372.77334239    -0.00001571    -0.00000054  0.57D-07  0.46D-07   100.04
    5     5     5     1.06686670    -0.96578422  -372.77334239    -0.00001580    -0.00000054  0.56D-07  0.47D-07   100.04
    5     6     6     1.06366082    -0.95775761  -372.72027226    -0.00001331    -0.00000050  0.54D-07  0.42D-07   100.04
    6     1     1     1.06686215    -0.96578476  -372.77334292    -0.00000051    -0.00000002  0.13D-08  0.24D-08   125.13
    6     2     2     1.06686206    -0.96578476  -372.77334292    -0.00000052    -0.00000002  0.12D-08  0.25D-08   125.13
    6     3     3     1.06686243    -0.96578476  -372.77334292    -0.00000053    -0.00000002  0.13D-08  0.26D-08   125.13
    6     4     4     1.06686223    -0.96578476  -372.77334292    -0.00000053    -0.00000002  0.14D-08  0.26D-08   125.13
    6     5     5     1.06686226    -0.96578475  -372.77334292    -0.00000053    -0.00000002  0.13D-08  0.27D-08   125.13
    6     6     6     1.06366329    -0.95775810  -372.72027274    -0.00000049    -0.00000002  0.13D-08  0.17D-08   125.13


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.2%
 P   0.5%   9.5%  29.5%

 Initialization:   0.2%
 Other:           60.0%

 Total CPU:      125.1 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/\           0.0000000  -0.0000000  -0.0000000   0.9681247   0.0000000  -0.0000000
 2222222222/2\           0.0000000  -0.0000000   0.0000000  -0.0000000   0.9681247   0.0000000
 2222222222/\2           0.0000000   0.0000000   0.9681246   0.0000000  -0.0000000  -0.0000000
 2222222222022          -0.0495420   0.7889166   0.0000000   0.0000000  -0.0000000   0.5523949
 2222222222202           0.7079928  -0.3515536   0.0000000   0.0000000  -0.0000000   0.5523949
 2222222222220          -0.6584507  -0.4373629   0.0000000   0.0000000  -0.0000000   0.5523948
 2222220222222          -0.0000001   0.0000003  -0.0000000  -0.0000000   0.0000000  -0.1571616

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.430510    0.000000    0.000000    0.867137    0.000000
 2          -0.000000    0.867137    0.000000   -0.000000   -0.430510    0.000000
 3           0.000000   -0.000000    0.968125   -0.000000    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.968125   -0.000000    0.000000
 5           0.968125    0.000000   -0.000000    0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.969572

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968125    0.000000    0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.968125    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.968125    0.000000    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.968125   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.968125   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.969572


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.86713716 (fixed)   0.96812476 (relaxed)   0.96812476 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006686   -0.00025482   -0.86565587
 Singles      0.01224566   -0.04225201   -0.05068707
 Pairs        0.05462096   -0.00000009   -0.04944182
 Total        1.06693348   -0.04250692   -0.96578476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80755817
 Nuclear energy                         0.00000000
 Kinetic energy                       264.24714277
 One electron energy                 -654.79630394
 Two electron energy                  282.02296101
 Virial quotient                       -1.41069962
 Correlation energy                    -0.96578476
 !MRCI STATE 1.1 Energy              -372.773342923040

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.83798626 (Davidson, fixed reference)
 Cluster corrected energies          -372.83798626 (Davidson, relaxed reference)
 Cluster corrected energies          -372.83798626 (Davidson, rotated reference)

 Cluster corrected energies          -372.83607569 (Pople, fixed reference)
 Cluster corrected energies          -372.83607569 (Pople, relaxed reference)
 Cluster corrected energies          -372.83607569 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.86713722 (fixed)   0.96812480 (relaxed)   0.96812480 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006686   -0.00025482   -0.86565595
 Singles      0.01224573   -0.04225208   -0.05068715
 Pairs        0.05462080   -0.00000001   -0.04944166
 Total        1.06693339   -0.04250692   -0.96578476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80755817
 Nuclear energy                         0.00000000
 Kinetic energy                       264.24711809
 One electron energy                 -654.79630600
 Two electron energy                  282.02296308
 Virial quotient                       -1.41069975
 Correlation energy                    -0.96578476
 !MRCI STATE 2.1 Energy              -372.773342922711

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.83798617 (Davidson, fixed reference)
 Cluster corrected energies          -372.83798617 (Davidson, relaxed reference)
 Cluster corrected energies          -372.83798617 (Davidson, rotated reference)

 Cluster corrected energies          -372.83607560 (Pople, fixed reference)
 Cluster corrected energies          -372.83607560 (Pople, relaxed reference)
 Cluster corrected energies          -372.83607560 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96812463 (fixed)   0.96812463 (relaxed)   0.96812463 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006686   -0.00025482   -0.86565539
 Singles      0.01224601   -0.04225238   -0.05068754
 Pairs        0.05462088   -0.00000000   -0.04944183
 Total        1.06693376   -0.04250720   -0.96578476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80755817
 Nuclear energy                         0.00000000
 Kinetic energy                       264.24711479
 One electron energy                 -654.79630908
 Two electron energy                  282.02296616
 Virial quotient                       -1.41069977
 Correlation energy                    -0.96578476
 !MRCI STATE 3.1 Energy              -372.773342922235

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.83798653 (Davidson, fixed reference)
 Cluster corrected energies          -372.83798653 (Davidson, relaxed reference)
 Cluster corrected energies          -372.83798653 (Davidson, rotated reference)

 Cluster corrected energies          -372.83607596 (Pople, fixed reference)
 Cluster corrected energies          -372.83607596 (Pople, relaxed reference)
 Cluster corrected energies          -372.83607596 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96812472 (fixed)   0.96812472 (relaxed)   0.96812472 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006686   -0.00025482   -0.86565568
 Singles      0.01224591   -0.04225223   -0.05068749
 Pairs        0.05462080   -0.00000000   -0.04944159
 Total        1.06693357   -0.04250706   -0.96578476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80755817
 Nuclear energy                         0.00000000
 Kinetic energy                       264.24716204
 One electron energy                 -654.79634097
 Two electron energy                  282.02299805
 Virial quotient                       -1.41069951
 Correlation energy                    -0.96578476
 !MRCI STATE 4.1 Energy              -372.773342922222

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.83798634 (Davidson, fixed reference)
 Cluster corrected energies          -372.83798634 (Davidson, relaxed reference)
 Cluster corrected energies          -372.83798634 (Davidson, rotated reference)

 Cluster corrected energies          -372.83607577 (Pople, fixed reference)
 Cluster corrected energies          -372.83607577 (Pople, relaxed reference)
 Cluster corrected energies          -372.83607577 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96812471 (fixed)   0.96812471 (relaxed)   0.96812471 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006686   -0.00025482   -0.86565559
 Singles      0.01224597   -0.04225230   -0.05068751
 Pairs        0.05462076    0.00000000   -0.04944165
 Total        1.06693360   -0.04250712   -0.96578475
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80755817
 Nuclear energy                         0.00000000
 Kinetic energy                       264.24713908
 One electron energy                 -654.79633065
 Two electron energy                  282.02298773
 Virial quotient                       -1.41069964
 Correlation energy                    -0.96578475
 !MRCI STATE 5.1 Energy              -372.773342921924

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.83798637 (Davidson, fixed reference)
 Cluster corrected energies          -372.83798637 (Davidson, relaxed reference)
 Cluster corrected energies          -372.83798637 (Davidson, rotated reference)

 Cluster corrected energies          -372.83607580 (Pople, fixed reference)
 Cluster corrected energies          -372.83607580 (Pople, relaxed reference)
 Cluster corrected energies          -372.83607580 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96957153 (fixed)   0.96959780 (relaxed)   0.96957153 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008316   -0.00014562   -0.00021177
 Singles      0.00318605   -0.01895251   -0.02068503
 Pairs        0.06048254   -0.93865996   -0.93686130
 Total        1.06375175   -0.95775810   -0.95775810
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.76251464
 Nuclear energy                         0.00000000
 Kinetic energy                       264.26226050
 One electron energy                 -654.62751715
 Two electron energy                  281.90724441
 Virial quotient                       -1.41041809
 Correlation energy                    -0.95775810
 !MRCI STATE 6.1 Energy              -372.720272743089

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.78133150 (Davidson, fixed reference)
 Cluster corrected energies          -372.78127630 (Davidson, relaxed reference)
 Cluster corrected energies          -372.78133150 (Davidson, rotated reference)

 Cluster corrected energies          -372.77936317 (Pople, fixed reference)
 Cluster corrected energies          -372.77930679 (Pople, relaxed reference)
 Cluster corrected energies          -372.77936317 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.42       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      296.14       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       168.81    130.60     34.27      1.42      0.45      1.79
 REAL TIME  *       188.57 SEC
 DISK USED  *       340.66 MB (local),        4.19 GB (total)
 SF USED    *         2.17 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -372.83798626  AU                              
 SETTING HLSDIAG(5)     =      -372.83798617  AU                              
 SETTING HLSDIAG(6)     =      -372.83798653  AU                              
 SETTING HLSDIAG(7)     =      -372.83798634  AU                              
 SETTING HLSDIAG(8)     =      -372.83798637  AU                              
 SETTING HLSDIAG(9)     =      -372.78133150  AU                              


         HLSDIAG
    -372.8766128
    -372.8766128
    -372.8766128
    -372.8379863
    -372.8379862
    -372.8379865
    -372.8379863
    -372.8379864
    -372.7813315
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -372.815017   -372.815017   -372.815017
 Replaced energies:   -372.876613   -372.876613   -372.876613

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -372.773343   -372.773343   -372.773343   -372.773343   -372.773343   -372.720273
 Replaced energies:   -372.837986   -372.837986   -372.837987   -372.837986   -372.837986   -372.781331



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -372.87661282

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    -629.30
                            0.00       0.00    -919.98      -0.00    -650.52      -0.00       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00      -0.00    -650.52       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     650.52       0.00       0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00     650.52       0.00       0.00       0.00       0.00      -0.00
                          919.98      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00     -47.35

    4   1.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00    -650.52      -0.00       0.00       0.00       0.00      -0.00    -650.52      -0.00       0.00

    5   2.1  1.0  0.0      -0.00      -0.00     650.52       0.00       0.01       0.00       0.00      -0.00    -650.52       0.00
                          650.52      -0.00       0.00      -0.00       0.00       0.00     650.52       0.00       0.00     956.92

    6   3.1  1.0  0.0       0.00    -650.52       0.00       0.00       0.00       0.00      -0.00     650.52       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -629.30
                           -0.00      -0.00      -0.00       0.00    -650.52      -0.00      -0.00      -0.00     919.98       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00     650.52       0.00       0.01       0.00       0.00
                           -0.00      -0.00      -0.00     650.52      -0.00       0.00       0.00      -0.00      -0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00    -650.52       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -919.98       0.00      -0.00      47.35

   10   1.1  0.0  0.0    -629.30       0.00      -0.00       0.00       0.00       0.00    -629.30       0.00      -0.00    8477.55
                            0.00       0.00      47.35      -0.00    -956.92       0.00      -0.00      -0.00     -47.35       0.00

   11   2.1  0.0  0.0    -418.00       0.00      -0.00       0.00       0.00       0.00    -418.00       0.00      -0.00       0.00
                            0.00       0.00    -753.99      -0.00     475.16       0.00      -0.00      -0.00     753.99      -0.00

   12   3.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00    -654.26       0.00       0.00       0.00    -925.27      -0.00     654.26      -0.00      -0.00

   13   4.1  0.0  0.0      -0.00     654.26      -0.00       0.00       0.00       0.00      -0.00     654.26      -0.00       0.00
                            0.00      -0.00       0.00    -925.27       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   14   5.1  0.0  0.0       0.00      -0.00    -654.26       0.00       0.00       0.00       0.00      -0.00    -654.26       0.00
                          654.26       0.00      -0.00       0.00      -0.00       0.00    -654.26      -0.00       0.00      -0.00

   15   6.1  0.0  0.0   -1060.88      -0.00      -0.00       0.00       0.00       0.00   -1060.88      -0.00      -0.00       0.00
                            0.00       0.00    1060.88       0.00    1500.31       0.00      -0.00      -0.00   -1060.88      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0    -418.00      -0.00      -0.00       0.00   -1060.88
                           -0.00      -0.00      -0.00    -654.26      -0.00

    2   2.1  1.0  1.0       0.00      -0.00     654.26      -0.00      -0.00
                           -0.00     654.26       0.00      -0.00      -0.00

    3   3.1  1.0  1.0      -0.00      -0.00      -0.00    -654.26      -0.00
                          753.99      -0.00      -0.00       0.00   -1060.88

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     925.27      -0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         -475.16      -0.00      -0.00       0.00   -1500.31

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00     925.27       0.00      -0.00      -0.00

    7   1.1  1.0 -1.0    -418.00      -0.00      -0.00       0.00   -1060.88
                            0.00       0.00       0.00     654.26       0.00

    8   2.1  1.0 -1.0       0.00      -0.00     654.26      -0.00      -0.00
                            0.00    -654.26      -0.00       0.00       0.00

    9   3.1  1.0 -1.0      -0.00      -0.00      -0.00    -654.26      -0.00
                         -753.99       0.00       0.00      -0.00    1060.88

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    8477.57       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    8477.49       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    8477.53       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    8477.53       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   20911.83
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -372.87661282 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.005       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -919.976      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.011       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     919.976       0.000       0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000     919.976      -0.000

    1    1  |1 0>              -0.000      -0.000       0.000       0.005       0.000       0.000       0.000       0.000
                                0.000    -919.976      -0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.011       0.000      -0.000       0.000
                              919.976       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    -919.976
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.005       0.000
                                0.000       0.000    -919.976      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -919.976       0.000       0.011
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000     919.976       0.000       0.000       0.000
                              919.976      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>            -889.961       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -956.921       0.000       0.000       0.000

    2    1  |0 0>            -591.140       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     475.160       0.000       0.000       0.000

    3    1  |0 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    -925.266       0.000    -925.263

    4    1  |0 0>              -0.000     925.265      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -925.267       0.000      -0.000       0.000      -0.000

    5    1  |0 0>               0.000      -0.000    -925.266       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000     925.265       0.000

    6    1  |0 0>           -1500.308      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1500.310       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000    -889.961    -591.140      -0.000      -0.000       0.000   -1500.308
                             -919.976       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000     925.265      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000    -925.266      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     925.267      -0.000      -0.000

    2    1  |1 0>             919.976       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     956.921    -475.160      -0.000      -0.000       0.000   -1500.310

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000     925.266       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000    -925.265      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     925.263       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -66.961    1066.300      -0.000      -0.000       0.000   -1500.308

    1    1  |0 0>               0.000    8477.550       0.000       0.000       0.000       0.000       0.000
                               66.961       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    8477.570       0.000       0.000       0.000       0.000
                            -1066.300      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    8477.492       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    8477.533       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    8477.527       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   20911.834
                             1500.308      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -372.88161920    -0.00500638    -1098.77      0.00000000        0.00      0.0000
    2  -372.88161919    -0.00500637    -1098.77      0.00000001        0.00      0.0000
    3  -372.88161919    -0.00500636    -1098.77      0.00000001        0.00      0.0000
    4  -372.88161918    -0.00500635    -1098.77      0.00000002        0.01      0.0000
    5  -372.88161916    -0.00500634    -1098.76      0.00000004        0.01      0.0000
    6  -372.87242109     0.00419173      919.98      0.00919811     2018.75      0.2503
    7  -372.87242108     0.00419174      919.98      0.00919812     2018.75      0.2503
    8  -372.87242107     0.00419176      919.98      0.00919813     2018.76      0.2503
    9  -372.86981373     0.00679909     1492.23      0.01180547     2591.00      0.3212
   10  -372.83717186     0.03944096     8656.29      0.04444734     9755.06      1.2095
   11  -372.83717170     0.03944112     8656.33      0.04444750     9755.10      1.2095
   12  -372.83717167     0.03944115     8656.33      0.04444753     9755.10      1.2095
   13  -372.83717160     0.03944122     8656.35      0.04444760     9755.12      1.2095
   14  -372.83717151     0.03944131     8656.37      0.04444769     9755.14      1.2095
   15  -372.77974712     0.09686570    21259.56      0.10187208    22358.34      2.7721

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000001 -0.61894256 -0.00000003  0.00000001 -0.52092021  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.70055499  0.00000001  0.00000000 -0.00000000 -0.46963451
                           0.00000000  0.00000000  0.00000000  0.00752448  0.00000000 -0.00000000  0.00000000  0.52862570

   3    1  |1 1>+          0.70059721 -0.00000001  0.00000001  0.00000000 -0.00000000 -0.70640638 -0.00000000 -0.00000000
                           0.00062154 -0.00000000 -0.00000000  0.00000000  0.00000000  0.03144515  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00752451 -0.00000000 -0.00000000  0.00000000  0.52862390
                          -0.00000000  0.00000000 -0.00000000  0.70055740  0.00000001 -0.00000000  0.00000000  0.46963291

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.14165727 -0.00000000 -0.00000001  0.79647939  0.00000000  0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00073636 -0.00000000 -0.00000000 -0.00000000  0.00000109  0.00000000
                          -0.00000001 -0.00000003  0.70059825  0.00000000 -0.00000000  0.00000000 -0.70710472  0.00000000

   1    1  |1 1>-         -0.00062154  0.00000000  0.00000000 -0.00000000 -0.00000000  0.03144522  0.00000000  0.00000000
                           0.70059548 -0.00000001  0.00000001  0.00000000 -0.00000000  0.70640811  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00073635 -0.00000000 -0.00000000  0.00000000 -0.00000109 -0.00000000
                          -0.00000001 -0.00000003  0.70059412  0.00000000 -0.00000000 -0.00000000  0.70710884 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001  0.76060163  0.00000003 -0.00000000 -0.27556161  0.00000000 -0.00000000  0.00000000

   1    1  |0 0>          -0.00000000 -0.03804691 -0.00000000  0.00000000 -0.12992669  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.12992657 -0.00000000  0.00000000  0.03804687  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000001 -0.13538412 -0.00000000  0.00000000  0.00000000 -0.00000026 -0.00000000
                           0.00000000 -0.00000000  0.00014229 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.13537606 -0.00000000  0.00000000 -0.00000000  0.00000011
                          -0.00000000 -0.00000000 -0.00000000 -0.00145404 -0.00000000 -0.00000000  0.00000000 -0.00000013

   5    1  |0 0>           0.13538371 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000008  0.00000000  0.00000000
                           0.00012011 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000011  0.00000000  0.00000000 -0.00000011  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.57224952 -0.00000000 -0.00000000 -0.00000000 -0.09196317 -0.06133339 -0.07657486
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.09573077 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00008860 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.09573084 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00001456 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00008860  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.09573086 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.57225088 -0.00000000  0.00000000  0.00000000  0.09909785 -0.04897570 -0.07657494

   3    1  |1 0>          -0.00000000  0.00014875 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.09573106  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00001456  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.09573072 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00014875 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.09573088  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.57224844  0.00000000  0.00000000 -0.00000000 -0.00713473  0.11030900 -0.07657484

   1    1  |0 0>          -0.00000011 -0.00000000  0.00000000  0.00000000  0.99079162  0.00185690 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000024  0.00000000  0.00000000 -0.00000000 -0.00185691  0.99079164  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.99079198  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00153949  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.99079280 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00091698 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.99079322  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00015072  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.13263158 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000002  0.99116541
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -372.88161920     -0.00500638    -1098.77      0.00000000        0.00      0.0000
     2   1   -372.88161919     -0.00500637    -1098.77      0.00000001        0.00      0.0000
     3   1   -372.88161919     -0.00500636    -1098.77      0.00000001        0.00      0.0000
     4   1   -372.88161918     -0.00500635    -1098.77      0.00000002        0.01      0.0000
     5   1   -372.88161916     -0.00500634    -1098.76      0.00000004        0.01      0.0000
     6   1   -372.87242109      0.00419173      919.98      0.00919811     2018.75      0.2503
     7   1   -372.87242108      0.00419174      919.98      0.00919812     2018.75      0.2503
     8   1   -372.87242107      0.00419176      919.98      0.00919813     2018.76      0.2503
     9   1   -372.86981373      0.00679909     1492.23      0.01180547     2591.00      0.3212
    10   1   -372.83717186      0.03944096     8656.29      0.04444734     9755.06      1.2095
    11   1   -372.83717170      0.03944112     8656.33      0.04444750     9755.10      1.2095
    12   1   -372.83717167      0.03944115     8656.33      0.04444753     9755.10      1.2095
    13   1   -372.83717160      0.03944122     8656.35      0.04444760     9755.12      1.2095
    14   1   -372.83717151      0.03944131     8656.37      0.04444769     9755.14      1.2095
    15   1   -372.77974712      0.09686570    21259.56      0.10187208    22358.34      2.7721

 E0 =   -372.87661282 is the energy of the lowest zeroth-order state
 E1 =   -372.88161920 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000001 -0.61894256 -0.00000003  0.00000001 -0.52092021  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.70055499  0.00000001  0.00000000 -0.00000000 -0.46963451
                                0.00000000  0.00000000  0.00000000  0.00752448  0.00000000 -0.00000000  0.00000000  0.52862570

  3  1     3    1  |1 1>+       0.70059721 -0.00000001  0.00000001  0.00000000 -0.00000000 -0.70640638 -0.00000000 -0.00000000
                                0.00062154 -0.00000000 -0.00000000  0.00000000  0.00000000  0.03144515  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00752451 -0.00000000 -0.00000000  0.00000000  0.52862390
                               -0.00000000  0.00000000 -0.00000000  0.70055740  0.00000001 -0.00000000  0.00000000  0.46963291

  5  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.14165727 -0.00000000 -0.00000001  0.79647939  0.00000000  0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00073636 -0.00000000 -0.00000000 -0.00000000  0.00000109  0.00000000
                               -0.00000001 -0.00000003  0.70059825  0.00000000 -0.00000000  0.00000000 -0.70710472  0.00000000

  7  1     1    1  |1 1>-      -0.00062154  0.00000000  0.00000000 -0.00000000 -0.00000000  0.03144522  0.00000000  0.00000000
                                0.70059548 -0.00000001  0.00000001  0.00000000 -0.00000000  0.70640811  0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00073635 -0.00000000 -0.00000000  0.00000000 -0.00000109 -0.00000000
                               -0.00000001 -0.00000003  0.70059412  0.00000000 -0.00000000 -0.00000000  0.70710884 -0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001  0.76060163  0.00000003 -0.00000000 -0.27556161  0.00000000 -0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000000 -0.03804691 -0.00000000  0.00000000 -0.12992669  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.12992657 -0.00000000  0.00000000  0.03804687  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000001 -0.13538412 -0.00000000  0.00000000  0.00000000 -0.00000026 -0.00000000
                                0.00000000 -0.00000000  0.00014229 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.13537606 -0.00000000  0.00000000 -0.00000000  0.00000011
                               -0.00000000 -0.00000000 -0.00000000 -0.00145404 -0.00000000 -0.00000000  0.00000000 -0.00000013

 14  1     5    1  |0 0>        0.13538371 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000008  0.00000000  0.00000000
                                0.00012011 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000000  0.00000011  0.00000000  0.00000000 -0.00000011  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.57224952 -0.00000000 -0.00000000 -0.00000000 -0.09196317 -0.06133339 -0.07657486
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.09573077 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00008860 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000 -0.09573084 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00001456 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00008860  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.09573086 -0.00000000  0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.57225088 -0.00000000  0.00000000  0.00000000  0.09909785 -0.04897570 -0.07657494

  6  1     3    1  |1 0>       -0.00000000  0.00014875 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.09573106  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00001456  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.09573072 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00014875 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.09573088  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.57224844  0.00000000  0.00000000 -0.00000000 -0.00713473  0.11030900 -0.07657484

 10  1     1    1  |0 0>       -0.00000011 -0.00000000  0.00000000  0.00000000  0.99079162  0.00185690 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000024  0.00000000  0.00000000 -0.00000000 -0.00185691  0.99079164  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000  0.99079198  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00153949  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.99079280 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00091698 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000  0.99079322  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00015072  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.13263158 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000002  0.99116541
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   38.31%    0.00%    0.00%   27.14%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   49.08%    0.00%    0.00%    0.00%   50.00%
  3  1     3    1  |1 1>+        49.08%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   49.08%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>          0.00%    2.01%    0.00%    0.00%   63.44%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   49.08%    0.00%    0.00%    0.00%   50.00%    0.00%
  7  1     1    1  |1 1>-        49.08%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%   49.08%    0.00%    0.00%    0.00%   50.00%    0.00%
  9  1     3    1  |1 1>-         0.00%   57.85%    0.00%    0.00%    7.59%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.14%    0.00%    0.00%    1.69%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    1.69%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    1.83%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    1.83%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          1.83%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+        32.75%    0.00%    0.00%    0.00%    0.85%    0.38%    0.59%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.92%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.92%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.92%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>         32.75%    0.00%    0.00%    0.00%    0.98%    0.24%    0.59%
  6  1     3    1  |1 0>          0.00%    0.92%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.92%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.92%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        32.75%    0.00%    0.00%    0.00%    0.01%    1.22%    0.59%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.17%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   98.17%    0.00%
 12  1     3    1  |0 0>          0.00%   98.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%   98.17%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%   98.17%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          1.76%    0.00%    0.00%    0.00%    0.00%    0.00%   98.24%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.42       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      296.14       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       247.52     78.70    130.60     34.27      1.42      0.45      1.79
 REAL TIME  *       279.15 SEC
 DISK USED  *       340.66 MB (local),        4.19 GB (total)
 SF USED    *         2.17 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCVQZ-PP energy=   -372.779747123879

              CI              CI           MULTI         RHF-SCF
   -372.72027274   -372.81501745   -371.76251464   -371.54894995
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
