
 Working directory              : /wrk/irikura/molpro.Gu1MubQM8o/
 Global scratch directory       : /wrk/irikura/molpro.Gu1MubQM8o/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Gu1MubQM8o/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Te SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Te};
 
 basis=AWCVQZ-PP
 
 NT=3
 NS=6
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,7,3
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Te SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 25-Jan-25          TIME: 09:58:04  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  42000 MW

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

 Library entry Te   ECP ECP28MDF                 selected for group  1
 Library entry TE     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TE     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TE     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TE     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TE     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry TE     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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

   1  TE     24.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   24
 NUMBER OF PRIMITIVE AOS:         300
 NUMBER OF SYMMETRY AOS:          232
 NUMBER OF CONTRACTIONS:          169   (   86Ag  +   83Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 2 3 4 5 6   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9
                                       101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718
                                       192021


 Eigenvalues of metric

         1 0.111E-05 0.491E-04 0.491E-04 0.491E-04 0.491E-04 0.491E-04 0.545E-03 0.138E-02
         2 0.155E-03 0.155E-03 0.155E-03 0.135E-02 0.135E-02 0.135E-02 0.106E-01 0.106E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     116.392 MB (compressed) written to integral file ( 15.6%)

     Node minimum: 1.049 MB, node maximum: 6.029 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1858160.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1858160      RECORD LENGTH: 524288

 Memory used in sort:       2.42 MW

 SORT1 READ    92659037. AND WROTE      346699. INTEGRALS IN      1 RECORDS. CPU TIME:     0.62 SEC, REAL TIME:     0.63 SEC
 SORT2 READ     9613375. AND WROTE    52200630. INTEGRALS IN    392 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.05 SEC

 Node minimum:     1855590.  Node maximum:     1873009. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.48      2.30
 REAL TIME  *         3.55 SEC
 DISK USED  *        29.74 MB (local),        1.03 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -266.67491608    -266.67491608     0.00D+00     0.76D-01     0     0       0.01      0.04    start
   2     -266.71779782      -0.04288174     0.36D-02     0.47D-02     1     0       0.02      0.06    diag2
   3     -266.72022728      -0.00242946     0.20D-02     0.13D-02     2     0       0.02      0.08    diag2
   4     -266.72066840      -0.00044113     0.36D-03     0.89D-03     3     0       0.01      0.09    diag2
   5     -266.72069309      -0.00002468     0.79D-04     0.25D-03     4     0       0.02      0.11    diag2
   6     -266.72069324      -0.00000015     0.83D-05     0.43D-04     5     0       0.02      0.13    diag2
   7     -266.72069324      -0.00000000     0.10D-05     0.29D-05     6     0       0.02      0.15    diag2
   8     -266.72069324      -0.00000000     0.70D-07     0.63D-06     0     0       0.01      0.16    fixocc

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -266.720693241957
  RHF One-electron energy            -459.058011011551
  RHF Two-electron energy             192.337317769594
  RHF Kinetic energy                  102.493269940086
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.602323971104

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45865     1  1  s    1.00127
    2.1     2.00000    -2.27829     1  1  d0   0.97332
    3.1     2.00000    -2.27829     1  1  d1+ -0.44704    1  1  d2+ -0.61839    1  1  d1-  0.64412
    4.1     2.00000    -2.27829     1  1  d1+  0.80814    1  1  d1-  0.58773
    5.1     2.00000    -2.27829     1  1  d1+ -0.38131    1  1  d2+  0.78678    1  1  d1-  0.48620
    6.1     2.00000    -2.27829     1  1  d2-  0.97151
    7.1     2.00000    -1.03505     1  2  s    1.01514
    1.2     2.00000    -5.42339     1  1  pz   0.98373
    2.2     2.00000    -5.42339     1  1  px   0.99406
    3.2     2.00000    -5.42339     1  1  py   0.98731
    4.2     1.00000    -0.69091     1  1  py  -0.34656    1  4  py   0.52173    1  5  py   0.54615
    5.2     1.00000    -0.69091     1  1  px  -0.34670    1  4  px   0.52195    1  5  px   0.54638
    6.2     1.00000    -0.69091     1  1  pz  -0.34656    1  4  pz   0.52173    1  5  pz   0.54615


 HOMO      6.2    -0.690910 =     -18.8006eV
 LUMO      8.1    -0.113254 =      -3.0818eV
 LUMO-HOMO         0.577656 =      15.7188eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.84       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.65      0.17      2.30
 REAL TIME  *         3.74 SEC
 DISK USED  *        31.97 MB (local),        1.09 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        3 (    0    3)
 Number of external orbitals:     156 (   79   77)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 3 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               6   (9 determinants, 9 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.241D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.639D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.455D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.536D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.267D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 5 3 1 1 2 4   6 5 3 1 4 6 5 3 2 3   5 4 6 2 8121310 7 9  111415 1 5 3 4 6 2 8
                                       12 91114151310 7 1 5   3 4 6 2 812141511 9   71310 1 6 5 4 3 2 8  121514 711 91310 1 2
                                        5 6 4 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.201D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.126D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.172D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.278D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.278D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 2 1 3   2 110 8 4 5 9 7 610   8 5 4 7 9 6 2 1 3 4   5 9 710 8 6 1 2 3 7
                                        9 5 4 6 81014161915  17211311122018 6 5 4   810 7 9 1 2 3 3 2 1   9 7 6 5 4 810 3 2 1
                                        2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1024  ( 9 closed/active, 784 closed/virtual, 0 active/active, 231 active/virtual )
 Total number of variables:    1087
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -266.92814069    -266.96203307   -0.03389238    0.22642379 0.00001772 0.00000000  0.20E+00      0.47
   2    5    8    0   -266.96319222    -266.96331202   -0.00011981    0.01277321 0.00000006 0.00000000  0.12E-01      0.98
   3    6   12    0   -266.96331231    -266.96331231   -0.00000000    0.00004954 0.00000000 0.00000000  0.42E-04      1.43
   4   14   28    0   -266.96331231    -266.96331231    0.00000000    0.00000000 0.00000001 0.00000000  0.44E-08      1.90

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.74E-08)
                       Final energy:   -266.96331231
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -266.999045512183
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949224
 One electron energy                          -466.57936715
 Two electron energy                           199.58032164
 Virial ratio                                    3.60056848
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -266.999045512080
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949224
 One electron energy                          -466.57936716
 Two electron energy                           199.58032165
 Virial ratio                                    3.60056848
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -266.999045512052
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949224
 One electron energy                          -466.57936716
 Two electron energy                           199.58032165
 Virial ratio                                    3.60056848
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -266.956165670178
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949224
 One electron energy                          -466.57936715
 Two electron energy                           199.62320148
 Virial ratio                                    3.60015083
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -266.956165670176
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949224
 One electron energy                          -466.57936715
 Two electron energy                           199.62320148
 Virial ratio                                    3.60015083
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -266.956165670117
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949224
 One electron energy                          -466.57936716
 Two electron energy                           199.62320149
 Virial ratio                                    3.60015083
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -266.956165670102
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949224
 One electron energy                          -466.57936716
 Two electron energy                           199.62320149
 Virial ratio                                    3.60015083
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -266.956165670088
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949224
 One electron energy                          -466.57936716
 Two electron energy                           199.62320149
 Virial ratio                                    3.60015083
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -266.891845907172
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949224
 One electron energy                          -466.57936716
 Two electron energy                           199.68752125
 Virial ratio                                    3.59952436
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.355938913663
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.644057060325
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.682247329509
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.317755869472
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.961813756828
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.038187070203
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 5 2 6 1 1 4 3   5 2 6 1 4 3 5 2 6 4   3 5 2 6 913101415 8  12 711 1 4 3 5 2 6 9
                                       13101415 812 711 1 4   5 3 2 6 913101415 8  12 711 1 4 5 3 2 6 9  13101514 812 711 1 2
                                        4 3 5 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 1   3 2 4 7 9 810 6 5 4   9 7 810 6 5 1 3 2 4   9 7 810 6 5 1 3 2 4
                                        9 7 810 6 511201815  17141621131912 4 9 7   810 6 5 1 3 2 1 3 2   4 9 7 810 6 5 1 3 2
                                        1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.13759     1  1  s    1.00215
    2.1     2.00000    -1.95803     1  1  d1+  1.00014
    3.1     2.00000    -1.95803     1  1  d2-  1.00014
    4.1     2.00000    -1.95803     1  1  d2+  1.00014
    5.1     2.00000    -1.95803     1  1  d0   1.00014
    6.1     2.00000    -1.95803     1  1  d1-  1.00014
    7.1     2.00000    -0.75090     1  2  s    1.00379
    1.2     2.00000    -5.10294     1  1  px   0.99971
    2.2     2.00000    -5.10294     1  1  pz   0.99971
    3.2     2.00000    -5.10294     1  1  py   0.99971
    4.2     1.33333    -0.24260     1  1  py  -0.32141    1  4  py   0.42025    1  5  py   0.52105
    5.2     1.33333    -0.24260     1  1  pz  -0.32141    1  4  pz   0.42025    1  5  pz   0.52105
    6.2     1.33333    -0.24260     1  1  px  -0.32141    1  4  px   0.42025    1  5  px   0.52105
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2aa            0.00000000      0.00000000      1.00000000
 a2a            1.00000000      0.00000000      0.00000000
 aa2            0.00000000      1.00000000     -0.00000000
 
 Energy:     -266.99904551   -266.99904551   -266.99904551
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 202           -0.07977703     -0.00000000     -0.00000000      0.00000000      0.81258987      0.57735027
 022            0.74361198     -0.00000000     -0.00000000      0.00000000     -0.33720600      0.57735027
 2ab           -0.00000000     -0.00000000     -0.00000000      0.70710678     -0.00000000     -0.00000000
 2ba            0.00000000      0.00000000      0.00000000     -0.70710678      0.00000000      0.00000000
 b2a           -0.00000000     -0.70710678      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a2b            0.00000000      0.70710678     -0.00000000      0.00000000      0.00000000      0.00000000
 ab2           -0.00000000     -0.00000000      0.70710678     -0.00000000     -0.00000000     -0.00000000
 ba2            0.00000000      0.00000000     -0.70710678      0.00000000      0.00000000      0.00000000
 220           -0.66383496     -0.00000000     -0.00000000     -0.00000000     -0.47538387      0.57735027
 
 Energy:     -266.95616567   -266.95616567   -266.95616567   -266.95616567   -266.95616567   -266.89184591
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.99       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.44       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.33      1.68      0.17      2.30
 REAL TIME  *         6.06 SEC
 DISK USED  *        46.53 MB (local),        1.49 GB (total)
 SF USED    *        37.65 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -266.9990455   2.0
    -266.9990455   2.0
    -266.9990455   2.0
    -266.9561657   6.0
    -266.9561657   6.0
    -266.9561657   6.0
    -266.9561657   6.0
    -266.9561657   6.0
    -266.8918459  -0.0
                                                  


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


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        3 (   0   3 )
 Number of external orbitals:     156 (  79  77 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.99904551
     2      -266.99904551
     3      -266.99904551

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         43974
 Number of doubly external configurations:       2995188
 Total number of contracted configurations:      3039198
 Total number of uncontracted configurations:    9677631

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    928637 words, CPU-time:      0.37 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.99904551     0.00000000    -1.09966675  0.35D-01  0.14D+00     0.61
    1     2     2     1.00000000     0.00000000  -266.99904551     0.00000000    -1.09968992  0.35D-01  0.14D+00     0.61
    1     3     3     1.00000000     0.00000000  -266.99904551    -0.00000000    -1.09949039  0.35D-01  0.14D+00     0.61
    2     1     1     1.11106101    -0.86751975  -267.86656527    -0.86751975    -0.02778357  0.30D-02  0.29D-02     8.14
    2     2     2     1.11117507    -0.86740107  -267.86644658    -0.86740107    -0.02791984  0.31D-02  0.29D-02     8.14
    2     3     3     1.11120625    -0.86739328  -267.86643880    -0.86739328    -0.02791178  0.31D-02  0.29D-02     8.14
    3     1     1     1.09496601    -0.89361384  -267.89265935    -0.02609409    -0.00041495  0.40D-04  0.51D-04    15.26
    3     2     2     1.09496364    -0.89361173  -267.89265724    -0.02621066    -0.00041706  0.40D-04  0.51D-04    15.26
    3     3     3     1.09497271    -0.89360914  -267.89265465    -0.02621586    -0.00042011  0.41D-04  0.52D-04    15.26
    4     1     1     1.09397846    -0.89403392  -267.89307943    -0.00042008    -0.00001037  0.17D-05  0.10D-05    22.38
    4     2     2     1.09397719    -0.89403391  -267.89307943    -0.00042218    -0.00001038  0.17D-05  0.11D-05    22.38
    4     3     3     1.09397842    -0.89403378  -267.89307929    -0.00042464    -0.00001050  0.17D-05  0.11D-05    22.38
    5     1     1     1.09394248    -0.89404485  -267.89309036    -0.00001093    -0.00000030  0.25D-07  0.40D-07    29.52
    5     2     2     1.09394241    -0.89404485  -267.89309036    -0.00001094    -0.00000030  0.25D-07  0.40D-07    29.52
    5     3     3     1.09394252    -0.89404485  -267.89309036    -0.00001106    -0.00000030  0.25D-07  0.40D-07    29.52
    6     1     1     1.09393737    -0.89404516  -267.89309067    -0.00000031    -0.00000001  0.12D-08  0.11D-08    36.66
    6     2     2     1.09393733    -0.89404516  -267.89309067    -0.00000031    -0.00000001  0.12D-08  0.11D-08    36.66
    6     3     3     1.09393736    -0.89404516  -267.89309067    -0.00000031    -0.00000001  0.12D-08  0.11D-08    36.66


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.3%
 P   0.9%  16.2%  14.1%

 Initialization:   1.2%
 Other:           67.2%

 Total CPU:       36.7 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/           0.0000000   0.9560988   0.0000000
 2222222222//2           0.0000000   0.0000000   0.9560988
 22222222222//           0.9560988   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.956099
 2           0.956099    0.000000    0.000000
 3           0.000000    0.956099    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956099    0.000000    0.000000
 2           0.000000    0.956099    0.000000
 3           0.000000    0.000000    0.956099


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95609883 (fixed)   0.95609883 (relaxed)   0.95609883 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000453   -0.00002736   -0.00002871
 Singles      0.01135956   -0.03782449   -0.04386159
 Pairs        0.08257823   -0.85619331   -0.85015485
 Total        1.09394233   -0.89404516   -0.89404516
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99904551
 Nuclear energy                         0.00000000
 Kinetic energy                       103.51033648
 One electron energy                 -466.26864264
 Two electron energy                  198.37555197
 Virial quotient                       -2.58808057
 Correlation energy                    -0.89404516
 !MRCI STATE 1.1 Energy              -267.893090670528

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97707935 (Davidson, fixed reference)
 Cluster corrected energies          -267.97707935 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97707935 (Davidson, rotated reference)

 Cluster corrected energies          -267.97573065 (Pople, fixed reference)
 Cluster corrected energies          -267.97573065 (Pople, relaxed reference)
 Cluster corrected energies          -267.97573065 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95609885 (fixed)   0.95609885 (relaxed)   0.95609885 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000453   -0.00002736   -0.78269651
 Singles      0.01135950   -0.03782440   -0.04386153
 Pairs        0.08257826   -0.00000000   -0.06748712
 Total        1.09394229   -0.03785176   -0.89404516
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99904551
 Nuclear energy                         0.00000000
 Kinetic energy                       103.51033781
 One electron energy                 -466.26864407
 Two electron energy                  198.37555340
 Virial quotient                       -2.58808054
 Correlation energy                    -0.89404516
 !MRCI STATE 2.1 Energy              -267.893090670518

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97707932 (Davidson, fixed reference)
 Cluster corrected energies          -267.97707932 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97707932 (Davidson, rotated reference)

 Cluster corrected energies          -267.97573062 (Pople, fixed reference)
 Cluster corrected energies          -267.97573062 (Pople, relaxed reference)
 Cluster corrected energies          -267.97573062 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95609884 (fixed)   0.95609884 (relaxed)   0.95609884 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000453   -0.00002736   -0.78269645
 Singles      0.01135950   -0.03782444   -0.04386154
 Pairs        0.08257828   -0.00000000   -0.06748717
 Total        1.09394232   -0.03785180   -0.89404516
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99904551
 Nuclear energy                         0.00000000
 Kinetic energy                       103.51033753
 One electron energy                 -466.26864265
 Two electron energy                  198.37555198
 Virial quotient                       -2.58808054
 Correlation energy                    -0.89404516
 !MRCI STATE 3.1 Energy              -267.893090670514

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97707934 (Davidson, fixed reference)
 Cluster corrected energies          -267.97707934 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97707934 (Davidson, rotated reference)

 Cluster corrected energies          -267.97573064 (Pople, fixed reference)
 Cluster corrected energies          -267.97573064 (Pople, relaxed reference)
 Cluster corrected energies          -267.97573064 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.99       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       72.27       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        42.00     37.64      1.68      0.17      2.30
 REAL TIME  *        48.65 SEC
 DISK USED  *       117.36 MB (local),        3.43 GB (total)
 SF USED    *       711.79 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -267.97707935  AU                              
 SETTING HLSDIAG(2)     =      -267.97707932  AU                              
 SETTING HLSDIAG(3)     =      -267.97707934  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 24
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        6 conf        6 CSFs
 N elec internal:       91 conf       91 CSFs
 N-1 el internal:      232 conf      398 CSFs
 N-2 el internal:      406 conf     1214 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        3 (   0   3 )
 Number of external orbitals:     156 (  79  77 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.95616567
     2      -266.95616567
     3      -266.95616567
     4      -266.95616567
     5      -266.95616567
     6      -266.89184591

 Number of blocks in overlap matrix:   688   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     769
 Number of N-1 electron functions:     398

 Number of internal configurations:                   49
 Number of singly external configurations:         31024
 Number of doubly external configurations:       4683551
 Total number of contracted configurations:      4714624
 Total number of uncontracted configurations:    7413867

 Diagonal Coupling coefficients finished.               Storage:    422393 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    999040 words, CPU-time:      0.49 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.95616567    -0.00000000    -1.10743371  0.37D-01  0.15D+00     0.86
    1     2     2     1.00000000     0.00000000  -266.95616567     0.00000000    -1.10805999  0.38D-01  0.15D+00     0.86
    1     3     3     1.00000000     0.00000000  -266.95616567    -0.00000000    -1.10825786  0.37D-01  0.15D+00     0.86
    1     4     4     1.00000000     0.00000000  -266.95616567    -0.00000000    -1.10877711  0.38D-01  0.15D+00     0.86
    1     5     5     1.00000000     0.00000000  -266.95616567    -0.00000000    -1.10754325  0.37D-01  0.15D+00     0.86
    1     6     6     1.00000000     0.00000000  -266.89184591     0.00000000    -1.10272498  0.10D-01  0.16D+00     0.86
    2     1     1     1.11353526    -0.87374289  -267.82990856    -0.87374289    -0.02808852  0.29D-02  0.29D-02    23.43
    2     2     2     1.11348978    -0.87363164  -267.82979731    -0.87363164    -0.02825505  0.31D-02  0.29D-02    23.43
    2     3     3     1.11379482    -0.87351376  -267.82967943    -0.87351376    -0.02832394  0.29D-02  0.31D-02    23.43
    2     4     4     1.11377702    -0.87348376  -267.82964943    -0.87348376    -0.02838292  0.30D-02  0.30D-02    23.43
    2     5     5     1.11404092    -0.87318457  -267.82935024    -0.87318457    -0.02871665  0.31D-02  0.31D-02    23.43
    2     6     6     1.10758381    -0.88052389  -267.77236979    -0.88052389    -0.02855134  0.24D-02  0.37D-02    23.43
    3     1     1     1.09783757    -0.89997225  -267.85613792    -0.02622936    -0.00046164  0.46D-04  0.58D-04    45.65
    3     2     2     1.09783661    -0.89997044  -267.85613611    -0.02633880    -0.00046339  0.47D-04  0.57D-04    45.65
    3     3     3     1.09784840    -0.89996644  -267.85613211    -0.02645268    -0.00046849  0.47D-04  0.58D-04    45.65
    3     4     4     1.09783186    -0.89996394  -267.85612961    -0.02648018    -0.00047095  0.48D-04  0.58D-04    45.65
    3     5     5     1.09784993    -0.89996071  -267.85612638    -0.02677614    -0.00047421  0.47D-04  0.60D-04    45.65
    3     6     6     1.09440135    -0.90711764  -267.79896355    -0.02659375    -0.00046924  0.22D-04  0.77D-04    45.65
    4     1     1     1.09673535    -0.90043501  -267.85660068    -0.00046276    -0.00001392  0.22D-05  0.15D-05    67.98
    4     2     2     1.09673866    -0.90043469  -267.85660036    -0.00046425    -0.00001424  0.22D-05  0.15D-05    67.98
    4     3     3     1.09673736    -0.90043465  -267.85660032    -0.00046822    -0.00001428  0.22D-05  0.15D-05    67.98
    4     4     4     1.09673744    -0.90043458  -267.85660025    -0.00047064    -0.00001430  0.22D-05  0.15D-05    67.98
    4     5     5     1.09673923    -0.90043430  -267.85659997    -0.00047359    -0.00001458  0.23D-05  0.15D-05    67.98
    4     6     6     1.09356763    -0.90758647  -267.79943237    -0.00046882    -0.00001364  0.25D-05  0.15D-05    67.98
    5     1     1     1.09665878    -0.90044952  -267.85661519    -0.00001451    -0.00000045  0.42D-07  0.61D-07    90.36
    5     2     2     1.09665926    -0.90044951  -267.85661518    -0.00001482    -0.00000046  0.43D-07  0.62D-07    90.36
    5     3     3     1.09665905    -0.90044951  -267.85661518    -0.00001486    -0.00000046  0.44D-07  0.63D-07    90.36
    5     4     4     1.09665813    -0.90044951  -267.85661518    -0.00001493    -0.00000047  0.43D-07  0.62D-07    90.36
    5     5     5     1.09665817    -0.90044950  -267.85661517    -0.00001520    -0.00000047  0.46D-07  0.63D-07    90.36
    5     6     6     1.09361394    -0.90760077  -267.79944668    -0.00001431    -0.00000044  0.40D-07  0.62D-07    90.36
    6     1     1     1.09664464    -0.90044998  -267.85661565    -0.00000046    -0.00000001  0.72D-09  0.17D-08   112.66
    6     2     2     1.09664462    -0.90044998  -267.85661565    -0.00000047    -0.00000001  0.76D-09  0.18D-08   112.66
    6     3     3     1.09664448    -0.90044998  -267.85661565    -0.00000047    -0.00000001  0.78D-09  0.17D-08   112.66
    6     4     4     1.09664460    -0.90044998  -267.85661565    -0.00000048    -0.00000001  0.76D-09  0.18D-08   112.66
    6     5     5     1.09664449    -0.90044998  -267.85661565    -0.00000049    -0.00000001  0.83D-09  0.18D-08   112.66
    6     6     6     1.09361213    -0.90760123  -267.79944714    -0.00000046    -0.00000001  0.11D-08  0.20D-08   112.66


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.7%  14.1%  17.0%

 Initialization:   0.5%
 Other:           67.6%

 Total CPU:      112.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/\          -0.0000000  -0.0000000  -0.0000000   0.9548666   0.0000000  -0.0000000
 2222222222/2\           0.0000000   0.9548666  -0.0000000   0.0000000  -0.0000000   0.0000000
 2222222222/\2           0.9548666  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 2222222222022          -0.0000000  -0.0000000   0.7586831   0.0000000  -0.1795741   0.5506104
 2222222222220          -0.0000000  -0.0000000  -0.2238258   0.0000000   0.7468259   0.5506105
 2222222222202          -0.0000000  -0.0000000  -0.5348573   0.0000000  -0.5672518   0.5506105

  Internal coefficients greater than 0.0500000
 =============================================
 2222220222222           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000001  -0.0695951

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.954867   -0.000000   -0.000000   -0.000000
 2           0.000000    0.954867   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.755424   -0.000000   -0.000000   -0.000000   -0.584042   -0.000000
 4           0.000000    0.000000    0.000000    0.954867   -0.000000    0.000000
 5          -0.584042   -0.000000   -0.000000    0.000000   -0.755424   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.953685

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954867   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.954867   -0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.954867    0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.954867    0.000000    0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.954867    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.953685


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95486663 (fixed)   0.95486663 (relaxed)   0.95486663 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011203   -0.00037180   -0.78334422
 Singles      0.01307338   -0.04140438   -0.04848427
 Pairs        0.08358209    0.00000000   -0.06862150
 Total        1.09676749   -0.04177618   -0.90044998
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95616567
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50581915
 One electron energy                 -466.22988452
 Two electron energy                  198.37326887
 Virial quotient                       -2.58784113
 Correlation energy                    -0.90044998
 !MRCI STATE 1.1 Energy              -267.856615652018

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94374994 (Davidson, fixed reference)
 Cluster corrected energies          -267.94374994 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94374994 (Davidson, rotated reference)

 Cluster corrected energies          -267.94342123 (Pople, fixed reference)
 Cluster corrected energies          -267.94342123 (Pople, relaxed reference)
 Cluster corrected energies          -267.94342123 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95486663 (fixed)   0.95486663 (relaxed)   0.95486663 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011203   -0.00037180   -0.78334436
 Singles      0.01307336   -0.04140423   -0.04848424
 Pairs        0.08358209    0.00000000   -0.06862137
 Total        1.09676748   -0.04177603   -0.90044998
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95616567
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50582125
 One electron energy                 -466.22989063
 Two electron energy                  198.37327498
 Virial quotient                       -2.58784107
 Correlation energy                    -0.90044998
 !MRCI STATE 2.1 Energy              -267.856615651795

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94374993 (Davidson, fixed reference)
 Cluster corrected energies          -267.94374993 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94374993 (Davidson, rotated reference)

 Cluster corrected energies          -267.94342122 (Pople, fixed reference)
 Cluster corrected energies          -267.94342122 (Pople, relaxed reference)
 Cluster corrected energies          -267.94342122 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.75542423 (fixed)   0.95486670 (relaxed)   0.95486670 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011203   -0.00037180   -0.78334464
 Singles      0.01307309   -0.04140404   -0.04848399
 Pairs        0.08358221   -0.00000001   -0.06862135
 Total        1.09676733   -0.04177585   -0.90044998
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95616567
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50582384
 One electron energy                 -466.22987365
 Two electron energy                  198.37325800
 Virial quotient                       -2.58784101
 Correlation energy                    -0.90044998
 !MRCI STATE 3.1 Energy              -267.856615651775

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94374979 (Davidson, fixed reference)
 Cluster corrected energies          -267.94374979 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94374979 (Davidson, rotated reference)

 Cluster corrected energies          -267.94342107 (Pople, fixed reference)
 Cluster corrected energies          -267.94342107 (Pople, relaxed reference)
 Cluster corrected energies          -267.94342107 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95486664 (fixed)   0.95486664 (relaxed)   0.95486664 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011203   -0.00037180   -0.78334429
 Singles      0.01307337   -0.04140433   -0.04848428
 Pairs        0.08358205   -0.00000000   -0.06862141
 Total        1.09676746   -0.04177613   -0.90044998
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95616567
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50582218
 One electron energy                 -466.22988981
 Two electron energy                  198.37327416
 Virial quotient                       -2.58784105
 Correlation energy                    -0.90044998
 !MRCI STATE 4.1 Energy              -267.856615651677

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94374991 (Davidson, fixed reference)
 Cluster corrected energies          -267.94374991 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94374991 (Davidson, rotated reference)

 Cluster corrected energies          -267.94342120 (Pople, fixed reference)
 Cluster corrected energies          -267.94342120 (Pople, relaxed reference)
 Cluster corrected energies          -267.94342120 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.75542421 (fixed)   0.95486669 (relaxed)   0.95486669 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011203   -0.00037180   -0.78334468
 Singles      0.01307305   -0.04140397   -0.04848397
 Pairs        0.08358226   -0.00000002   -0.06862133
 Total        1.09676735   -0.04177578   -0.90044998
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95616567
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50582657
 One electron energy                 -466.22987352
 Two electron energy                  198.37325787
 Virial quotient                       -2.58784094
 Correlation energy                    -0.90044998
 !MRCI STATE 5.1 Energy              -267.856615651434

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94374981 (Davidson, fixed reference)
 Cluster corrected energies          -267.94374981 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94374981 (Davidson, rotated reference)

 Cluster corrected energies          -267.94342109 (Pople, fixed reference)
 Cluster corrected energies          -267.94342109 (Pople, relaxed reference)
 Cluster corrected energies          -267.94342109 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95368528 (fixed)   0.95368528 (relaxed)   0.95368528 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00537139   -0.01040743   -0.01389968
 Singles      0.00446858   -0.02374017   -0.02528110
 Pairs        0.08964637   -0.87345363   -0.86842046
 Total        1.09948634   -0.90760123   -0.90760123
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.89184591
 Nuclear energy                         0.00000000
 Kinetic energy                       103.49757871
 One electron energy                 -466.16162742
 Two electron energy                  198.36218028
 Virial quotient                       -2.58749480
 Correlation energy                    -0.90760123
 !MRCI STATE 6.1 Energy              -267.799447137932

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.88974106 (Davidson, fixed reference)
 Cluster corrected energies          -267.88974106 (Davidson, relaxed reference)
 Cluster corrected energies          -267.88974106 (Davidson, rotated reference)

 Cluster corrected energies          -267.88961793 (Pople, fixed reference)
 Cluster corrected energies          -267.88961793 (Pople, relaxed reference)
 Cluster corrected energies          -267.88961793 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.99       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      289.49       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       160.24    118.22     37.64      1.68      0.17      2.30
 REAL TIME  *       182.89 SEC
 DISK USED  *       334.58 MB (local),        9.37 GB (total)
 SF USED    *         2.08 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -267.94374994  AU                              
 SETTING HLSDIAG(5)     =      -267.94374993  AU                              
 SETTING HLSDIAG(6)     =      -267.94374979  AU                              
 SETTING HLSDIAG(7)     =      -267.94374991  AU                              
 SETTING HLSDIAG(8)     =      -267.94374981  AU                              
 SETTING HLSDIAG(9)     =      -267.88974106  AU                              


         HLSDIAG
    -267.9770794
    -267.9770793
    -267.9770793
    -267.9437499
    -267.9437499
    -267.9437498
    -267.9437499
    -267.9437498
    -267.8897411
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -267.893091   -267.893091   -267.893091
 Replaced energies:   -267.977079   -267.977079   -267.977079

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -267.856616   -267.856616   -267.856616   -267.856616   -267.856616   -267.799447
 Replaced energies:   -267.943750   -267.943750   -267.943750   -267.943750   -267.943750   -267.889741



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -267.97707935

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00   -1929.70      -0.00   -1364.50       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00       0.00   -1364.50       0.00       0.00       0.00   -1370.53
                            0.00       0.00       0.00    1364.50      -0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00    1364.50       0.00       0.00       0.00       0.00       0.00
                         1929.70      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00   -1364.50       0.00       0.00       0.00       0.00      -0.00   -1364.50       0.00   -1938.22

    5   2.1  1.0  0.0      -0.00       0.00    1364.50       0.00       0.01       0.00       0.00       0.00   -1364.50       0.00
                         1364.50       0.00      -0.00      -0.00       0.00       0.00    1364.50      -0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00   -1364.50       0.00       0.00       0.00       0.00      -0.00    1364.50       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00   -1364.50       0.00       0.00       0.00    1929.70      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00    1364.50       0.00       0.01       0.00   -1370.53
                           -0.00      -0.00      -0.00    1364.50       0.00      -0.00      -0.00      -0.00      -0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00   -1364.50       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00   -1929.70       0.00      -0.00       0.00

   10   1.1  0.0  0.0      -0.00   -1370.53       0.00       0.00       0.00       0.00      -0.00   -1370.53       0.00    7314.96
                           -0.00       0.00       0.00    1938.22       0.00      -0.00       0.00      -0.00      -0.00       0.00

   11   2.1  0.0  0.0      -0.00       0.00    1370.53       0.00       0.00       0.00      -0.00       0.00    1370.53       0.00
                        -1370.53      -0.00       0.00      -0.00       0.00      -0.00    1370.53       0.00      -0.00      -0.00

   12   3.1  0.0  0.0   -1540.00       0.00      -0.00       0.00       0.00       0.00   -1540.00       0.00      -0.00       0.00
                            0.00      -0.00    -454.33      -0.00   -1535.37      -0.00      -0.00       0.00     454.33      -0.00

   13   4.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00    1370.53      -0.00       0.00      -0.00    1938.22       0.00   -1370.53       0.00      -0.00

   14   5.1  0.0  0.0     364.50       0.00      -0.00       0.00       0.00       0.00     364.50       0.00      -0.00       0.00
                            0.00       0.00    1515.93      -0.00   -1628.36       0.00      -0.00      -0.00   -1515.93      -0.00

   15   6.1  0.0  0.0    2250.47      -0.00       0.00       0.00       0.00       0.00    2250.47      -0.00       0.00       0.00
                           -0.00      -0.00   -2250.47       0.00   -3182.64      -0.00       0.00       0.00    2250.47      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00   -1540.00       0.00     364.50    2250.47
                         1370.53      -0.00       0.00      -0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00   -1370.53      -0.00       0.00

    3   3.1  1.0  1.0    1370.53      -0.00       0.00      -0.00       0.00
                           -0.00     454.33       0.00   -1515.93    2250.47

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00    1535.37       0.00    1628.36    3182.64

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00   -1938.22      -0.00       0.00

    7   1.1  1.0 -1.0      -0.00   -1540.00       0.00     364.50    2250.47
                        -1370.53       0.00      -0.00       0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00    1370.53       0.00      -0.00

    9   3.1  1.0 -1.0    1370.53      -0.00       0.00      -0.00       0.00
                            0.00    -454.33      -0.00    1515.93   -2250.47

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    7314.96       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    7314.99       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    7314.97       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    7314.99       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   19168.54
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -267.97707935 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1929.694       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.007       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1929.694       0.000      -0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.003       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000    1929.695      -0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1929.694       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.007       0.000      -0.000       0.000
                             1929.694       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.003       0.000   -1929.696
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000   -1929.695      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   -1929.696       0.000       0.007
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000    1929.696       0.000       0.000       0.000
                             1929.695      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000   -1938.220       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1938.219       0.000      -0.000      -0.000       0.000

    2    1  |0 0>              -0.000       0.000    1938.220       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000   -1938.224      -0.000

    3    1  |0 0>           -2177.882       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -1535.366      -0.000       0.000      -0.000

    4    1  |0 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    1938.220      -0.000    1938.223

    5    1  |0 0>             515.487       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -1628.358       0.000       0.000       0.000

    6    1  |0 0>            3182.643      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -3182.644      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000      -0.000   -2177.882       0.000     515.487    3182.643
                            -1929.695       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000   -1938.220       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000    1938.220      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1938.219       0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 0>            1929.696       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000    1535.366       0.000    1628.358    3182.644

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000   -1938.220      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    1938.224      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000   -1938.223      -0.000       0.000

    3    1  |1 1>-              0.003       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     642.517       0.000   -2143.845    3182.644

    1    1  |0 0>               0.000    7314.961       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    7314.964       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    7314.993       0.000       0.000       0.000
                             -642.517      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    7314.969       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    7314.990       0.000
                             2143.845      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   19168.539
                            -3182.644      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -267.98929632    -0.01221697    -2681.31      0.00000000        0.00      0.0000
    2  -267.98929631    -0.01221695    -2681.31      0.00000001        0.00      0.0000
    3  -267.98929630    -0.01221695    -2681.31      0.00000002        0.00      0.0000
    4  -267.98929629    -0.01221693    -2681.31      0.00000003        0.01      0.0000
    5  -267.98929627    -0.01221692    -2681.30      0.00000005        0.01      0.0000
    6  -267.96828701     0.00879234     1929.70      0.02100931     4611.01      0.5717
    7  -267.96828700     0.00879235     1929.70      0.02100932     4611.01      0.5717
    8  -267.96828699     0.00879236     1929.70      0.02100933     4611.02      0.5717
    9  -267.96759745     0.00948191     2081.04      0.02169887     4762.35      0.5905
   10  -267.94032531     0.03675404     8066.58      0.04897101    10747.89      1.3326
   11  -267.94032529     0.03675406     8066.58      0.04897103    10747.90      1.3326
   12  -267.94032527     0.03675408     8066.59      0.04897105    10747.90      1.3326
   13  -267.94032521     0.03675415     8066.60      0.04897112    10747.92      1.3326
   14  -267.94032519     0.03675416     8066.61      0.04897113    10747.92      1.3326
   15  -267.88163828     0.09544108    20946.90      0.10765805    23628.21      2.9295

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000  0.00000006 -0.00000003 -0.67635610 -0.40322301  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000004 -0.00000001  0.68193319 -0.00000004  0.00000000  0.00000012  0.65070567 -0.00000001
                          -0.00000000 -0.00000000 -0.00074391  0.00000000 -0.00000000 -0.00000000  0.27673588 -0.00000000

   3    1  |1 1>+          0.68193327 -0.00000008  0.00000004  0.00000000  0.00000000  0.70709141 -0.00000011  0.00000000
                           0.00083162 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00471368 -0.00000005  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00074392 -0.00000000  0.00000000 -0.00000000  0.27673553 -0.00000000
                          -0.00000004 -0.00000001  0.68193419 -0.00000004  0.00000000 -0.00000012 -0.65070487  0.00000001

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000001 -0.00000000 -0.01102333  0.78735253  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00001079  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000008  0.68193433  0.00000001  0.00000005  0.00000001  0.00000000 -0.00000001 -0.70710661

   1    1  |1 1>-         -0.00083162  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00471367 -0.00000005  0.00000000
                           0.68193385 -0.00000008  0.00000004  0.00000000  0.00000000 -0.70709073  0.00000011 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00001079  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000008  0.68193382  0.00000001  0.00000005  0.00000001 -0.00000000  0.00000001  0.70710695

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000004  0.00000004  0.68737896 -0.38413031  0.00000000  0.00000000 -0.00000000

   1    1  |0 0>          -0.00000002 -0.00000000  0.26444600 -0.00000001  0.00000000  0.00000000  0.00000040 -0.00000000
                          -0.00000000 -0.00000000 -0.00028848  0.00000000 -0.00000000 -0.00000000  0.00000017 -0.00000000

   2    1  |0 0>          -0.26444614  0.00000003 -0.00000002 -0.00000000 -0.00000000  0.00000020 -0.00000000 -0.00000000
                          -0.00032249  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000002 -0.00000001 -0.18984540 -0.18409183 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000003  0.26444627  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00000048
                           0.00000000 -0.00000419 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000001  0.00000001  0.18409181 -0.18984545  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000010 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.54946511 -0.00000000 -0.00000000  0.00000000  0.04972083 -0.21011547  0.17725982
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.18699158 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00031691  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.18699157 -0.00000002 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00001955  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00031691 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.18699122 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.54946576 -0.00000000  0.00000000  0.00000000  0.15710509  0.14811741  0.17725992

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00001379  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000002 -0.18699147  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00001955 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.18699202 -0.00000002 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00001379  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000002 -0.18699204  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.54946545  0.00000000 -0.00000000 -0.00000000 -0.20682582  0.06199841  0.17725988

   1    1  |0 0>           0.00000000  0.96439907  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00163444 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000001  0.96440040 -0.00000008 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00010084  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000036  0.00000000  0.00000000 -0.00000000  0.00005145  0.96440081  0.00000003
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000008  0.96440042 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00007115  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000010 -0.00000000  0.00000000  0.00000000  0.96440080 -0.00005147  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.30702310  0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000011  0.95170206
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -267.98929632     -0.01221697    -2681.31      0.00000000        0.00      0.0000
     2   1   -267.98929631     -0.01221695    -2681.31      0.00000001        0.00      0.0000
     3   1   -267.98929630     -0.01221695    -2681.31      0.00000002        0.00      0.0000
     4   1   -267.98929629     -0.01221693    -2681.31      0.00000003        0.01      0.0000
     5   1   -267.98929627     -0.01221692    -2681.30      0.00000005        0.01      0.0000
     6   1   -267.96828701      0.00879234     1929.70      0.02100931     4611.01      0.5717
     7   1   -267.96828700      0.00879235     1929.70      0.02100932     4611.01      0.5717
     8   1   -267.96828699      0.00879236     1929.70      0.02100933     4611.02      0.5717
     9   1   -267.96759745      0.00948191     2081.04      0.02169887     4762.35      0.5905
    10   1   -267.94032531      0.03675404     8066.58      0.04897101    10747.89      1.3326
    11   1   -267.94032529      0.03675406     8066.58      0.04897103    10747.90      1.3326
    12   1   -267.94032527      0.03675408     8066.59      0.04897105    10747.90      1.3326
    13   1   -267.94032521      0.03675415     8066.60      0.04897112    10747.92      1.3326
    14   1   -267.94032519      0.03675416     8066.61      0.04897113    10747.92      1.3326
    15   1   -267.88163828      0.09544108    20946.90      0.10765805    23628.21      2.9295

 E0 =   -267.97707935 is the energy of the lowest zeroth-order state
 E1 =   -267.98929632 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000  0.00000006 -0.00000003 -0.67635610 -0.40322301  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000004 -0.00000001  0.68193319 -0.00000004  0.00000000  0.00000012  0.65070567 -0.00000001
                               -0.00000000 -0.00000000 -0.00074391  0.00000000 -0.00000000 -0.00000000  0.27673588 -0.00000000

  3  1     3    1  |1 1>+       0.68193327 -0.00000008  0.00000004  0.00000000  0.00000000  0.70709141 -0.00000011  0.00000000
                                0.00083162 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00471368 -0.00000005  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00074392 -0.00000000  0.00000000 -0.00000000  0.27673553 -0.00000000
                               -0.00000004 -0.00000001  0.68193419 -0.00000004  0.00000000 -0.00000012 -0.65070487  0.00000001

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000001 -0.00000000 -0.01102333  0.78735253  0.00000000  0.00000000 -0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00001079  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000008  0.68193433  0.00000001  0.00000005  0.00000001  0.00000000 -0.00000001 -0.70710661

  7  1     1    1  |1 1>-      -0.00083162  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00471367 -0.00000005  0.00000000
                                0.68193385 -0.00000008  0.00000004  0.00000000  0.00000000 -0.70709073  0.00000011 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00001079  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000008  0.68193382  0.00000001  0.00000005  0.00000001 -0.00000000  0.00000001  0.70710695

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000004  0.00000004  0.68737896 -0.38413031  0.00000000  0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000002 -0.00000000  0.26444600 -0.00000001  0.00000000  0.00000000  0.00000040 -0.00000000
                               -0.00000000 -0.00000000 -0.00028848  0.00000000 -0.00000000 -0.00000000  0.00000017 -0.00000000

 11  1     2    1  |0 0>       -0.26444614  0.00000003 -0.00000002 -0.00000000 -0.00000000  0.00000020 -0.00000000 -0.00000000
                               -0.00032249  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000002 -0.00000001 -0.18984540 -0.18409183 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000003  0.26444627  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000  0.00000048
                                0.00000000 -0.00000419 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000001  0.00000001  0.18409181 -0.18984545  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000010 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.54946511 -0.00000000 -0.00000000  0.00000000  0.04972083 -0.21011547  0.17725982
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.18699158 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00031691  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000  0.18699157 -0.00000002 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00001955  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00031691 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.18699122 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.54946576 -0.00000000  0.00000000  0.00000000  0.15710509  0.14811741  0.17725992

  6  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00001379  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000002 -0.18699147  0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000000  0.00001955 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.18699202 -0.00000002 -0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00001379  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000002 -0.18699204  0.00000000 -0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.54946545  0.00000000 -0.00000000 -0.00000000 -0.20682582  0.06199841  0.17725988

 10  1     1    1  |0 0>        0.00000000  0.96439907  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00163444 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000001  0.96440040 -0.00000008 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00010084  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000036  0.00000000  0.00000000 -0.00000000  0.00005145  0.96440081  0.00000003
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000008  0.96440042 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00007115  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000010 -0.00000000  0.00000000  0.00000000  0.96440080 -0.00005147  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.30702310  0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000011  0.95170206
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   45.75%   16.26%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   46.50%    0.00%    0.00%    0.00%   50.00%    0.00%
  3  1     3    1  |1 1>+        46.50%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   46.50%    0.00%    0.00%    0.00%   50.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.01%   61.99%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%   46.50%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
  7  1     1    1  |1 1>-        46.50%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%   46.50%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   47.25%   14.76%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    6.99%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          6.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    3.60%    3.39%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    6.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    3.39%    3.60%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+        30.19%    0.00%    0.00%    0.00%    0.25%    4.41%    3.14%
  2  1     2    1  |1 1>+         0.00%    3.50%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    3.50%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    3.50%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>         30.19%    0.00%    0.00%    0.00%    2.47%    2.19%    3.14%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    3.50%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    3.50%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    3.50%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        30.19%    0.00%    0.00%    0.00%    4.28%    0.38%    3.14%
 10  1     1    1  |0 0>          0.00%   93.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   93.01%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   93.01%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%   93.01%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   93.01%    0.00%    0.00%
 15  1     6    1  |0 0>          9.43%    0.00%    0.00%    0.00%    0.00%    0.00%   90.57%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       44.99       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      289.49       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       273.38    113.11    118.22     37.64      1.68      0.17      2.30
 REAL TIME  *       309.49 SEC
 DISK USED  *       334.58 MB (local),        9.37 GB (total)
 SF USED    *         2.08 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCVQZ-PP energy=   -267.881638277297

              CI              CI           MULTI         RHF-SCF
   -267.79944714   -267.89309067   -266.89184591   -266.72069324
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
