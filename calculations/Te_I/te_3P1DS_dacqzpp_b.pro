
 Working directory              : /wrk/irikura/molpro.30JlB4rXhq/
 Global scratch directory       : /wrk/irikura/molpro.30JlB4rXhq/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.30JlB4rXhq/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Te SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Te};
 
 basis={
 ecp,te,ECP28MDF;
 spdfgh,te,aug-cc-pwCVQZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
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
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.16 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Te SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 25-Jan-25          TIME: 10:58:58  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  42000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING NT             =         3.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Te   ECP ECP28MDF                 selected for group  1
 Library entry TE     S AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Te S diffuse               selected for group 1    nprim= 1    centre=  0.010    ratio= 3.000    dratio= 1.000
 Library entry TE     P AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Te P diffuse               selected for group 1    nprim= 1    centre=  0.008    ratio= 3.000    dratio= 1.000
 Library entry TE     D AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Te D diffuse               selected for group 1    nprim= 1    centre=  0.018    ratio= 3.000    dratio= 1.000
 Library entry TE     F AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Te F diffuse               selected for group 1    nprim= 1    centre=  0.031    ratio= 3.000    dratio= 1.000
 Library entry TE     G AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Library entry TE     H AUG-CC-PWCVQZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         320
 NUMBER OF SYMMETRY AOS:          248
 NUMBER OF CONTRACTIONS:          185   (   92Ag  +   93Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       131415 7 8 910111213  1415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  192021


 Eigenvalues of metric

         1 0.109E-05 0.490E-04 0.490E-04 0.490E-04 0.490E-04 0.490E-04 0.508E-03 0.130E-02
         2 0.155E-03 0.155E-03 0.155E-03 0.134E-02 0.134E-02 0.134E-02 0.991E-02 0.991E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     159.384 MB (compressed) written to integral file ( 14.9%)

     Node minimum: 1.311 MB, node maximum: 9.699 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2670576.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2670576      RECORD LENGTH: 524288

 Memory used in sort:       3.23 MW

 SORT1 READ   134353782. AND WROTE      520152. INTEGRALS IN      2 RECORDS. CPU TIME:     0.90 SEC, REAL TIME:     0.95 SEC
 SORT2 READ    13879740. AND WROTE    74805201. INTEGRALS IN    616 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC

 Node minimum:     2667444.  Node maximum:     2684340. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.52       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.12      2.87
 REAL TIME  *         4.33 SEC
 DISK USED  *        29.89 MB (local),        1.13 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -266.67491685    -266.67491685     0.00D+00     0.69D-01     0     0       0.03      0.05    start
   2     -266.71779789      -0.04288104     0.34D-02     0.44D-02     1     0       0.02      0.07    diag2
   3     -266.72022732      -0.00242942     0.19D-02     0.12D-02     2     0       0.02      0.09    diag2
   4     -266.72066845      -0.00044113     0.35D-03     0.82D-03     3     0       0.03      0.12    diag2
   5     -266.72069314      -0.00002469     0.76D-04     0.23D-03     4     0       0.02      0.14    diag2
   6     -266.72069329      -0.00000015     0.79D-05     0.36D-04     5     0       0.02      0.16    diag2
   7     -266.72069329      -0.00000000     0.96D-06     0.25D-05     6     0       0.03      0.19    diag2
   8     -266.72069329      -0.00000000     0.66D-07     0.53D-06     0     0       0.02      0.21    fixocc

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -266.720693294139
  RHF One-electron energy            -459.057994623555
  RHF Two-electron energy             192.337301329415
  RHF Kinetic energy                  102.493265788570
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.602324077021

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45865     1  1  s    1.00152
    2.1     2.00000    -2.27829     1  1  d0   1.00103
    3.1     2.00000    -2.27829     1  1  d2-  0.97707
    4.1     2.00000    -2.27829     1  1  d1+  0.81582    1  1  d1- -0.55954
    5.1     2.00000    -2.27829     1  1  d1+  0.50423    1  1  d2+  0.29196    1  1  d1-  0.81402
    6.1     2.00000    -2.27829     1  1  d1+ -0.26925    1  1  d2+  0.92642
    7.1     2.00000    -1.03505     1  2  s    1.01391
    1.2     2.00000    -5.42339     1  1  pz   0.99992
    2.2     2.00000    -5.42339     1  1  px   0.99997
    3.2     2.00000    -5.42339     1  1  py   1.00001
    4.2     1.00000    -0.69091     1  1  py  -0.34669    1  4  py   0.52198    1  5  py   0.54631
    5.2     1.00000    -0.69091     1  1  px  -0.34669    1  4  px   0.52198    1  5  px   0.54631
    6.2     1.00000    -0.69091     1  1  pz  -0.34669    1  4  pz   0.52198    1  5  pz   0.54631


 HOMO      6.2    -0.690911 =     -18.8006eV
 LUMO      8.1    -0.116645 =      -3.1741eV
 LUMO-HOMO         0.574266 =      15.6266eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.52       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.93       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.34      0.22      2.87
 REAL TIME  *         4.58 SEC
 DISK USED  *        32.53 MB (local),        1.20 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        3 (    0    3)
 Number of external orbitals:     172 (   85   87)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 3 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               6   (9 determinants, 9 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.256D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.255D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.478D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.501D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.411D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 4 6 5 1 1 4 6   5 3 2 1 2 6 4 5 3 1   4 6 5 3 2 3 5 4 6 2   8121310 7 9111514 1
                                        3 5 4 6 2 812 91411  151310 7 1 5 3 6 4 2   8121514 911 71310 1   4 6 5 3 2 8121514 7
                                        9111310 1 2 6 4 5 3   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.234D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.175D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.139D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.512D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.512D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 1 2 2   1 3 6 5 4 7 910 8 3   2 110 8 5 4 7 9 610   8 4 5 9 7 6 1 2 3 5
                                        4 810 9 7 6 1 2 3 7   9 5 4 610 816141915  17132111121820 4 5 6  10 8 7 9 3 2 1 2 3 1
                                        7 9 6 4 510 8 1 2 3   1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1126  ( 9 closed/active, 856 closed/virtual, 0 active/active, 261 active/virtual )
 Total number of variables:    1189
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -266.92814140    -266.96203388   -0.03389249    0.22642435 0.00001774 0.00000000  0.20E+00      0.54
   2    5    8    0   -266.96319288    -266.96331267   -0.00011979    0.01277242 0.00000006 0.00000000  0.12E-01      1.15
   3    9   18    0   -266.96331296    -266.96331296   -0.00000000    0.00004953 0.00000001 0.00000000  0.42E-04      1.76
   4    2    4    0   -266.96331296    -266.96331296   -0.00000000    0.00000001 0.00000001 0.00000000  0.12E-07      2.17

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.93E-08)
                       Final energy:   -266.96331296
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -266.999046322315
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949510
 One electron energy                          -466.57943521
 Two electron energy                           199.58038889
 Virial ratio                                    3.60056842
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -266.999046322269
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949510
 One electron energy                          -466.57943521
 Two electron energy                           199.58038889
 Virial ratio                                    3.60056842
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -266.999046322039
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949510
 One electron energy                          -466.57943523
 Two electron energy                           199.58038891
 Virial ratio                                    3.60056842
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -266.956166286923
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949509
 One electron energy                          -466.57943520
 Two electron energy                           199.62326891
 Virial ratio                                    3.60015077
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -266.956166286888
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949510
 One electron energy                          -466.57943521
 Two electron energy                           199.62326892
 Virial ratio                                    3.60015077
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -266.956166286859
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949510
 One electron energy                          -466.57943521
 Two electron energy                           199.62326892
 Virial ratio                                    3.60015077
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -266.956166286733
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949510
 One electron energy                          -466.57943523
 Two electron energy                           199.62326895
 Virial ratio                                    3.60015077
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -266.956166286732
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949510
 One electron energy                          -466.57943523
 Two electron energy                           199.62326895
 Virial ratio                                    3.60015077
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -266.891846233756
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66949510
 One electron energy                          -466.57943522
 Two electron energy                           199.68758898
 Virial ratio                                    3.59952429
 
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
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.030159088913
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.969840548339
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.685262168896
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.314739800898
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.284578742191
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.715419650763
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 6 3 5 1 1 4 2   6 3 5 1 4 2 6 3 5 1   4 2 6 3 5 4 2 6 3 5   9 7 8121114151310 1
                                        4 2 6 3 5 9 7 81211  14151310 1 4 2 6 3 5   9 7 8121114151310 1   4 2 6 3 5 9 7 81211
                                       14151310 1 2 4 6 3 5   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 1 2 3   1 2 4 6 810 5 7 9 3   1 2 4 6 5 810 7 9 4   6 5 810 7 9 3 1 2 4
                                        6 5 810 7 9 3 1 2 4   6 5 810 9 711192113  12141615172018 4 6 5   810 9 7 3 1 2 3 1 2
                                        4 6 5 810 9 7 3 1 2   3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.13758     1  1  s    1.00240
    2.1     2.00000    -1.95803     1  1  d1+  1.00013
    3.1     2.00000    -1.95803     1  1  d0   1.00013
    4.1     2.00000    -1.95803     1  1  d1-  1.00013
    5.1     2.00000    -1.95803     1  1  d2-  1.00013
    6.1     2.00000    -1.95803     1  1  d2+  1.00013
    7.1     2.00000    -0.75090     1  2  s    1.00184
    1.2     2.00000    -5.10293     1  1  pz   0.99971
    2.2     2.00000    -5.10293     1  1  px   0.99971
    3.2     2.00000    -5.10293     1  1  py   0.99971
    4.2     1.33333    -0.24260     1  1  py  -0.32137    1  4  py   0.42053    1  5  py   0.52053
    5.2     1.33333    -0.24260     1  1  px  -0.32137    1  4  px   0.42053    1  5  px   0.52053
    6.2     1.33333    -0.24260     1  1  pz  -0.32137    1  4  pz   0.42053    1  5  pz   0.52053
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2aa            0.00000000      1.00000000     -0.00000000
 a2a           -0.00000000     -0.00000000      1.00000000
 aa2            1.00000000      0.00000000     -0.00000000
 
 Energy:     -266.99904632   -266.99904632   -266.99904632
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 202            0.81341266      0.00000000      0.00000000     -0.00000000     -0.07089834      0.57735027
 220           -0.34530693      0.00000000      0.00000000     -0.00000000      0.73988517      0.57735027
 a2b           -0.00000000     -0.00000000     -0.00000000      0.70710678     -0.00000000     -0.00000000
 2ba           -0.00000000     -0.00000000     -0.70710678      0.00000000     -0.00000000     -0.00000000
 2ab            0.00000000      0.00000000      0.70710678     -0.00000000      0.00000000      0.00000000
 ab2            0.00000000      0.70710678      0.00000000     -0.00000000      0.00000000      0.00000000
 b2a            0.00000000      0.00000000      0.00000000     -0.70710678      0.00000000      0.00000000
 ba2           -0.00000000     -0.70710678     -0.00000000      0.00000000     -0.00000000     -0.00000000
 022           -0.46810573      0.00000000      0.00000000     -0.00000000     -0.66898682      0.57735027
 
 Energy:     -266.95616629   -266.95616629   -266.95616629   -266.95616629   -266.95616629   -266.89184623
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.23       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.63       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.27      1.92      0.22      2.87
 REAL TIME  *         7.21 SEC
 DISK USED  *        49.96 MB (local),        1.68 GB (total)
 SF USED    *        45.08 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -266.9990463   2.0
    -266.9990463   2.0
    -266.9990463   2.0
    -266.9561663   6.0
    -266.9561663   6.0
    -266.9561663   6.0
    -266.9561663   6.0
    -266.9561663   6.0
    -266.8918462   0.0
                                                  


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
 Number of external orbitals:     172 (  85  87 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.99904632
     2      -266.99904632
     3      -266.99904632

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         48522
 Number of doubly external configurations:       3640884
 Total number of contracted configurations:      3689442
 Total number of uncontracted configurations:   11762091

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1071149 words, CPU-time:      0.40 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.99904632     0.00000000    -1.09676993  0.35D-01  0.14D+00     0.67
    1     2     2     1.00000000     0.00000000  -266.99904632    -0.00000000    -1.09653494  0.34D-01  0.14D+00     0.67
    1     3     3     1.00000000     0.00000000  -266.99904632    -0.00000000    -1.09665946  0.34D-01  0.14D+00     0.67
    2     1     1     1.11033762    -0.86826541  -267.86731173    -0.86826541    -0.02699998  0.29D-02  0.27D-02    10.01
    2     2     2     1.11042359    -0.86819291  -267.86723923    -0.86819291    -0.02707364  0.30D-02  0.27D-02    10.01
    2     3     3     1.11050773    -0.86809334  -267.86713966    -0.86809334    -0.02718918  0.30D-02  0.27D-02    10.01
    3     1     1     1.09493535    -0.89366082  -267.89270714    -0.02539541    -0.00039893  0.39D-04  0.47D-04    19.24
    3     2     2     1.09493474    -0.89365954  -267.89270586    -0.02546662    -0.00040022  0.39D-04  0.48D-04    19.24
    3     3     3     1.09493945    -0.89365530  -267.89270162    -0.02556196    -0.00040487  0.40D-04  0.48D-04    19.24
    4     1     1     1.09397886    -0.89406598  -267.89311230    -0.00040516    -0.00001012  0.17D-05  0.10D-05    28.47
    4     2     2     1.09397819    -0.89406597  -267.89311229    -0.00040643    -0.00001013  0.17D-05  0.10D-05    28.47
    4     3     3     1.09397812    -0.89406584  -267.89311216    -0.00041054    -0.00001025  0.17D-05  0.10D-05    28.47
    5     1     1     1.09394306    -0.89407666  -267.89312298    -0.00001068    -0.00000029  0.24D-07  0.39D-07    37.66
    5     2     2     1.09394302    -0.89407666  -267.89312298    -0.00001069    -0.00000029  0.24D-07  0.39D-07    37.66
    5     3     3     1.09394306    -0.89407666  -267.89312298    -0.00001081    -0.00000030  0.25D-07  0.40D-07    37.66
    6     1     1     1.09393721    -0.89407697  -267.89312329    -0.00000031    -0.00000001  0.12D-08  0.11D-08    46.85
    6     2     2     1.09393718    -0.89407697  -267.89312329    -0.00000031    -0.00000001  0.12D-08  0.11D-08    46.85
    6     3     3     1.09393720    -0.89407697  -267.89312329    -0.00000031    -0.00000001  0.12D-08  0.11D-08    46.85


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.1%   0.3%
 P   0.8%  15.3%  14.2%

 Initialization:   1.0%
 Other:           68.3%

 Total CPU:       46.9 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//2          -0.0000000   0.9560989   0.0000000
 2222222222/2/           0.0000000  -0.0000000   0.9560989
 22222222222//           0.9560989   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.956099    0.000000
 2           0.956099    0.000000   -0.000000
 3           0.000000   -0.000000    0.956099

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956099   -0.000000    0.000000
 2          -0.000000    0.956099   -0.000000
 3           0.000000   -0.000000    0.956099


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95609890 (fixed)   0.95609890 (relaxed)   0.95609890 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000453   -0.00002736   -0.78272591
 Singles      0.01135898   -0.03782414   -0.04386121
 Pairs        0.08257865    0.00000000   -0.06748985
 Total        1.09394216   -0.03785150   -0.89407697
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99904632
 Nuclear energy                         0.00000000
 Kinetic energy                       103.51033390
 One electron energy                 -466.26869706
 Two electron energy                  198.37557377
 Virial quotient                       -2.58808095
 Correlation energy                    -0.89407697
 !MRCI STATE 1.1 Energy              -267.893123288293

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97711481 (Davidson, fixed reference)
 Cluster corrected energies          -267.97711481 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97711481 (Davidson, rotated reference)

 Cluster corrected energies          -267.97576605 (Pople, fixed reference)
 Cluster corrected energies          -267.97576605 (Pople, relaxed reference)
 Cluster corrected energies          -267.97576605 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95609891 (fixed)   0.95609891 (relaxed)   0.95609891 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000453   -0.00002736   -0.78272605
 Singles      0.01135887   -0.03782401   -0.04386111
 Pairs        0.08257873    0.00000000   -0.06748981
 Total        1.09394214   -0.03785137   -0.89407697
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99904632
 Nuclear energy                         0.00000000
 Kinetic energy                       103.51033609
 One electron energy                 -466.26869919
 Two electron energy                  198.37557590
 Virial quotient                       -2.58808090
 Correlation energy                    -0.89407697
 !MRCI STATE 2.1 Energy              -267.893123288225

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97711479 (Davidson, fixed reference)
 Cluster corrected energies          -267.97711479 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97711479 (Davidson, rotated reference)

 Cluster corrected energies          -267.97576602 (Pople, fixed reference)
 Cluster corrected energies          -267.97576602 (Pople, relaxed reference)
 Cluster corrected energies          -267.97576602 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95609891 (fixed)   0.95609891 (relaxed)   0.95609891 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000453   -0.00002736   -0.00002872
 Singles      0.01135894   -0.03782412   -0.04386118
 Pairs        0.08257868   -0.85622549   -0.85018707
 Total        1.09394216   -0.89407697   -0.89407697
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99904632
 Nuclear energy                         0.00000000
 Kinetic energy                       103.51033436
 One electron energy                 -466.26869712
 Two electron energy                  198.37557383
 Virial quotient                       -2.58808094
 Correlation energy                    -0.89407697
 !MRCI STATE 3.1 Energy              -267.893123288181

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97711481 (Davidson, fixed reference)
 Cluster corrected energies          -267.97711481 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97711481 (Davidson, rotated reference)

 Cluster corrected energies          -267.97576604 (Pople, fixed reference)
 Cluster corrected energies          -267.97576604 (Pople, relaxed reference)
 Cluster corrected energies          -267.97576604 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.23       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       87.54       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        53.44     48.16      1.92      0.22      2.87
 REAL TIME  *        61.44 SEC
 DISK USED  *       135.87 MB (local),        4.03 GB (total)
 SF USED    *       858.30 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -267.97711481  AU                              
 SETTING HLSDIAG(2)     =      -267.97711479  AU                              
 SETTING HLSDIAG(3)     =      -267.97711481  AU                              


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
 Number of external orbitals:     172 (  85  87 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.95616629
     2      -266.95616629
     3      -266.95616629
     4      -266.95616629
     5      -266.95616629
     6      -266.89184623

 Number of blocks in overlap matrix:   688   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     769
 Number of N-1 electron functions:     398

 Number of internal configurations:                   49
 Number of singly external configurations:         34248
 Number of doubly external configurations:       5692983
 Total number of contracted configurations:      5727280
 Total number of uncontracted configurations:    9009523

 Diagonal Coupling coefficients finished.               Storage:    422393 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1145984 words, CPU-time:      0.90 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.95616629     0.00000000    -1.10478640  0.37D-01  0.14D+00     1.11
    1     2     2     1.00000000     0.00000000  -266.95616629     0.00000000    -1.10523547  0.37D-01  0.14D+00     1.11
    1     3     3     1.00000000     0.00000000  -266.95616629     0.00000000    -1.10569272  0.37D-01  0.14D+00     1.11
    1     4     4     1.00000000     0.00000000  -266.95616629    -0.00000000    -1.10527953  0.37D-01  0.14D+00     1.11
    1     5     5     1.00000000     0.00000000  -266.95616629    -0.00000000    -1.10451703  0.37D-01  0.14D+00     1.11
    1     6     6     1.00000000     0.00000000  -266.89184623    -0.00000000    -1.09958014  0.10D-01  0.16D+00     1.11
    2     1     1     1.11279009    -0.87444905  -267.83061534    -0.87444905    -0.02735465  0.29D-02  0.28D-02    29.28
    2     2     2     1.11292426    -0.87423343  -267.83039972    -0.87423343    -0.02761903  0.30D-02  0.28D-02    29.28
    2     3     3     1.11306708    -0.87422333  -267.83038962    -0.87422333    -0.02759445  0.29D-02  0.28D-02    29.28
    2     4     4     1.11314034    -0.87414043  -267.83030672    -0.87414043    -0.02768201  0.29D-02  0.29D-02    29.28
    2     5     5     1.11325232    -0.87396802  -267.83013431    -0.87396802    -0.02788910  0.30D-02  0.29D-02    29.28
    2     6     6     1.10673655    -0.88131954  -267.77316578    -0.88131954    -0.02771901  0.23D-02  0.35D-02    29.28
    3     1     1     1.09778942    -0.90001877  -267.85618506    -0.02556972    -0.00044713  0.46D-04  0.53D-04    57.38
    3     2     2     1.09780252    -0.90001740  -267.85618368    -0.02578397    -0.00044897  0.45D-04  0.54D-04    57.38
    3     3     3     1.09779593    -0.90001692  -267.85618321    -0.02579359    -0.00044944  0.45D-04  0.55D-04    57.38
    3     4     4     1.09779878    -0.90001231  -267.85617859    -0.02587187    -0.00045444  0.45D-04  0.55D-04    57.38
    3     5     5     1.09778633    -0.90001174  -267.85617803    -0.02604372    -0.00045498  0.46D-04  0.55D-04    57.38
    3     6     6     1.09434176    -0.90716919  -267.79901542    -0.02584965    -0.00045104  0.21D-04  0.72D-04    57.38
    4     1     1     1.09673473    -0.90046784  -267.85663413    -0.00044907    -0.00001373  0.21D-05  0.14D-05    85.53
    4     2     2     1.09673525    -0.90046778  -267.85663407    -0.00045039    -0.00001378  0.21D-05  0.14D-05    85.53
    4     3     3     1.09673473    -0.90046775  -267.85663403    -0.00045083    -0.00001382  0.22D-05  0.14D-05    85.53
    4     4     4     1.09673562    -0.90046758  -267.85663386    -0.00045527    -0.00001394  0.22D-05  0.14D-05    85.53
    4     5     5     1.09673667    -0.90046733  -267.85663361    -0.00045559    -0.00001419  0.22D-05  0.15D-05    85.53
    4     6     6     1.09356412    -0.90762091  -267.79946714    -0.00045172    -0.00001339  0.25D-05  0.14D-05    85.53
    5     1     1     1.09665905    -0.90048217  -267.85664846    -0.00001433    -0.00000045  0.42D-07  0.60D-07   113.68
    5     2     2     1.09665893    -0.90048217  -267.85664845    -0.00001439    -0.00000045  0.42D-07  0.61D-07   113.68
    5     3     3     1.09665900    -0.90048217  -267.85664845    -0.00001442    -0.00000045  0.42D-07  0.61D-07   113.68
    5     4     4     1.09665822    -0.90048216  -267.85664845    -0.00001458    -0.00000046  0.43D-07  0.61D-07   113.68
    5     5     5     1.09665819    -0.90048215  -267.85664844    -0.00001483    -0.00000046  0.44D-07  0.62D-07   113.68
    5     6     6     1.09361371    -0.90763497  -267.79948121    -0.00001406    -0.00000044  0.41D-07  0.61D-07   113.68
    6     1     1     1.09664421    -0.90048263  -267.85664892    -0.00000046    -0.00000001  0.75D-09  0.18D-08   141.90
    6     2     2     1.09664423    -0.90048263  -267.85664892    -0.00000046    -0.00000001  0.75D-09  0.18D-08   141.90
    6     3     3     1.09664414    -0.90048263  -267.85664892    -0.00000046    -0.00000001  0.78D-09  0.17D-08   141.90
    6     4     4     1.09664421    -0.90048263  -267.85664892    -0.00000047    -0.00000001  0.76D-09  0.18D-08   141.90
    6     5     5     1.09664409    -0.90048263  -267.85664892    -0.00000048    -0.00000001  0.83D-09  0.18D-08   141.90
    6     6     6     1.09361181    -0.90763543  -267.79948166    -0.00000046    -0.00000001  0.11D-08  0.20D-08   141.90


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.5%  13.6%  17.1%

 Initialization:   0.7%
 Other:           68.0%

 Total CPU:      141.9 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/\          -0.0000000   0.0000000   0.0000000   0.9548668   0.0000000   0.0000000
 2222222222/\2           0.9548668   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 2222222222/2\          -0.0000000   0.9548668  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222222222022           0.0000000   0.0000000   0.7611715  -0.0000000  -0.1687158   0.5506105
 2222222222220           0.0000000   0.0000000  -0.2344737  -0.0000000   0.7435518   0.5506107
 2222222222202           0.0000000   0.0000000  -0.5266979  -0.0000000  -0.5748360   0.5506106

  Internal coefficients greater than 0.0500000
 =============================================
 2222220222222          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000001  -0.0695931

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.954867   -0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.000000    0.000000    0.954867    0.000000    0.000000
 3          -0.703619   -0.000000    0.000000   -0.000000   -0.645516   -0.000000
 4           0.000000    0.000000    0.954867   -0.000000    0.000000   -0.000000
 5          -0.645516   -0.000000    0.000000   -0.000000    0.703619    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.953686

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954867    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.954867   -0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.954867   -0.000000    0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.954867   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.954867    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.953686


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95486681 (fixed)   0.95486681 (relaxed)   0.95486681 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011203   -0.00037179   -0.78337479
 Singles      0.01307247   -0.04140384   -0.04848365
 Pairs        0.08358257   -0.00000000   -0.06862419
 Total        1.09676707   -0.04177563   -0.90048263
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95616629
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50582315
 One electron energy                 -466.22994971
 Two electron energy                  198.37330079
 Virial quotient                       -2.58784135
 Correlation energy                    -0.90048263
 !MRCI STATE 1.1 Energy              -267.856648917906

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94378598 (Davidson, fixed reference)
 Cluster corrected energies          -267.94378598 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94378598 (Davidson, rotated reference)

 Cluster corrected energies          -267.94345723 (Pople, fixed reference)
 Cluster corrected energies          -267.94345723 (Pople, relaxed reference)
 Cluster corrected energies          -267.94345723 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95486681 (fixed)   0.95486681 (relaxed)   0.95486681 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011203   -0.00037179   -0.78337473
 Singles      0.01307251   -0.04140389   -0.04848369
 Pairs        0.08358255   -0.00000000   -0.06862421
 Total        1.09676708   -0.04177568   -0.90048263
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95616629
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50582249
 One electron energy                 -466.22995190
 Two electron energy                  198.37330298
 Virial quotient                       -2.58784136
 Correlation energy                    -0.90048263
 !MRCI STATE 2.1 Energy              -267.856648917873

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94378599 (Davidson, fixed reference)
 Cluster corrected energies          -267.94378599 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94378599 (Davidson, rotated reference)

 Cluster corrected energies          -267.94345724 (Pople, fixed reference)
 Cluster corrected energies          -267.94345724 (Pople, relaxed reference)
 Cluster corrected energies          -267.94345724 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.70361933 (fixed)   0.95486685 (relaxed)   0.95486685 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011203   -0.00037179   -0.78337508
 Singles      0.01307223   -0.04140360   -0.04848341
 Pairs        0.08358273    0.00000002   -0.06862414
 Total        1.09676699   -0.04177537   -0.90048263
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95616629
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50582789
 One electron energy                 -466.22994090
 Two electron energy                  198.37329199
 Virial quotient                       -2.58784123
 Correlation energy                    -0.90048263
 !MRCI STATE 3.1 Energy              -267.856648917807

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94378591 (Davidson, fixed reference)
 Cluster corrected energies          -267.94378591 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94378591 (Davidson, rotated reference)

 Cluster corrected energies          -267.94345715 (Pople, fixed reference)
 Cluster corrected energies          -267.94345715 (Pople, relaxed reference)
 Cluster corrected energies          -267.94345715 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95486681 (fixed)   0.95486681 (relaxed)   0.95486681 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011203   -0.00037179   -0.78337471
 Singles      0.01307252   -0.04140393   -0.04848371
 Pairs        0.08358252    0.00000000   -0.06862421
 Total        1.09676706   -0.04177572   -0.90048263
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95616629
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50582378
 One electron energy                 -466.22995132
 Two electron energy                  198.37330241
 Virial quotient                       -2.58784133
 Correlation energy                    -0.90048263
 !MRCI STATE 4.1 Energy              -267.856648917766

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94378598 (Davidson, fixed reference)
 Cluster corrected energies          -267.94378598 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94378598 (Davidson, rotated reference)

 Cluster corrected energies          -267.94345723 (Pople, fixed reference)
 Cluster corrected energies          -267.94345723 (Pople, relaxed reference)
 Cluster corrected energies          -267.94345723 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.70361934 (fixed)   0.95486687 (relaxed)   0.95486687 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011203   -0.00037179   -0.78337508
 Singles      0.01307224   -0.04140361   -0.04848343
 Pairs        0.08358268   -0.00000000   -0.06862411
 Total        1.09676694   -0.04177540   -0.90048263
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95616629
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50583124
 One electron energy                 -466.22993936
 Two electron energy                  198.37329044
 Virial quotient                       -2.58784115
 Correlation energy                    -0.90048263
 !MRCI STATE 5.1 Energy              -267.856648917499

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94378587 (Davidson, fixed reference)
 Cluster corrected energies          -267.94378587 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94378587 (Davidson, rotated reference)

 Cluster corrected energies          -267.94345711 (Pople, fixed reference)
 Cluster corrected energies          -267.94345711 (Pople, relaxed reference)
 Cluster corrected energies          -267.94345711 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95368556 (fixed)   0.95368556 (relaxed)   0.95368556 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00537109   -0.01040716   -0.01389936
 Singles      0.00446837   -0.02374005   -0.02528102
 Pairs        0.08964624   -0.87348821   -0.86845505
 Total        1.09948570   -0.90763543   -0.90763543
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.89184623
 Nuclear energy                         0.00000000
 Kinetic energy                       103.49757754
 One electron energy                 -466.16169609
 Two electron energy                  198.36221442
 Virial quotient                       -2.58749517
 Correlation energy                    -0.90763543
 !MRCI STATE 6.1 Energy              -267.799481662429

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.88977841 (Davidson, fixed reference)
 Cluster corrected energies          -267.88977841 (Davidson, relaxed reference)
 Cluster corrected energies          -267.88977841 (Davidson, rotated reference)

 Cluster corrected energies          -267.88965522 (Pople, fixed reference)
 Cluster corrected energies          -267.88965522 (Pople, relaxed reference)
 Cluster corrected energies          -267.88965522 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.23       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      351.26       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       202.31    148.84     48.16      1.92      0.22      2.87
 REAL TIME  *       229.40 SEC
 DISK USED  *       399.60 MB (local),       11.24 GB (total)
 SF USED    *         2.51 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -267.94378598  AU                              
 SETTING HLSDIAG(5)     =      -267.94378599  AU                              
 SETTING HLSDIAG(6)     =      -267.94378591  AU                              
 SETTING HLSDIAG(7)     =      -267.94378598  AU                              
 SETTING HLSDIAG(8)     =      -267.94378587  AU                              
 SETTING HLSDIAG(9)     =      -267.88977841  AU                              


         HLSDIAG
    -267.9771148
    -267.9771148
    -267.9771148
    -267.9437860
    -267.9437860
    -267.9437859
    -267.9437860
    -267.9437859
    -267.8897784
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -267.893123   -267.893123   -267.893123
 Replaced energies:   -267.977115   -267.977115   -267.977115

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -267.856649   -267.856649   -267.856649   -267.856649   -267.856649   -267.799482
 Replaced energies:   -267.943786   -267.943786   -267.943786   -267.943786   -267.943786   -267.889778



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -267.97711481

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00    1929.69      -0.00    1364.50      -0.00       0.00       0.00       0.00   -1370.53

    2   2.1  1.0  1.0       0.00       0.01       0.00      -0.00      -0.00   -1364.50       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00   -1364.50       0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00    1364.50       0.00       0.00       0.00       0.00    1370.53
                        -1929.69      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00    1364.50      -0.00       0.00       0.00       0.00      -0.00    1364.50      -0.00      -0.00

    5   2.1  1.0  0.0       0.00      -0.00    1364.50       0.00       0.01       0.00      -0.00      -0.00   -1364.50       0.00
                        -1364.50      -0.00      -0.00      -0.00       0.00       0.00   -1364.50       0.00      -0.00       0.00

    6   3.1  1.0  0.0      -0.00   -1364.50       0.00       0.00       0.00       0.00       0.00    1364.50       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00    1364.50      -0.00      -0.00       0.00   -1929.69    1370.53

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00    1364.50       0.00       0.01       0.00      -0.00
                           -0.00      -0.00      -0.00   -1364.50      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00   -1364.50       0.00       0.00       0.00       0.00    1370.53
                           -0.00      -0.00      -0.00       0.00       0.00       0.00    1929.69       0.00      -0.00      -0.00

   10   1.1  0.0  0.0      -0.00      -0.00    1370.53       0.00       0.00       0.00      -0.00      -0.00    1370.53    7314.83
                         1370.53       0.00      -0.00       0.00      -0.00      -0.00   -1370.53      -0.00       0.00       0.00

   11   2.1  0.0  0.0      -0.00   -1370.53       0.00       0.00       0.00       0.00      -0.00   -1370.53       0.00       0.00
                            0.00       0.00      -0.00   -1938.22      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   12   3.1  0.0  0.0    1545.04      -0.00       0.00       0.00       0.00       0.00    1545.04      -0.00       0.00       0.00
                           -0.00       0.00   -1069.10      -0.00    -673.08       0.00       0.00      -0.00    1069.10      -0.00

   13   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1370.53       0.00       0.00       0.00    1938.22      -0.00   -1370.53      -0.00      -0.00

   14   5.1  0.0  0.0    -342.46       0.00      -0.00       0.00       0.00       0.00    -342.46       0.00      -0.00       0.00
                           -0.00       0.00   -1166.81       0.00    2134.44      -0.00       0.00      -0.00    1166.81      -0.00

   15   6.1  0.0  0.0   -2250.47       0.00      -0.00       0.00       0.00       0.00   -2250.47       0.00      -0.00       0.00
                           -0.00       0.00   -2250.47       0.00   -3182.64       0.00       0.00      -0.00    2250.47      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00    1545.04       0.00    -342.46   -2250.47
                           -0.00       0.00      -0.00       0.00       0.00

    2   2.1  1.0  1.0   -1370.53      -0.00       0.00       0.00       0.00
                           -0.00      -0.00   -1370.53      -0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00
                            0.00    1069.10      -0.00    1166.81    2250.47

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         1938.22       0.00      -0.00      -0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00     673.08      -0.00   -2134.44    3182.64

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -1938.22       0.00      -0.00

    7   1.1  1.0 -1.0      -0.00    1545.04       0.00    -342.46   -2250.47
                            0.00      -0.00       0.00      -0.00      -0.00

    8   2.1  1.0 -1.0   -1370.53      -0.00       0.00       0.00       0.00
                            0.00       0.00    1370.53       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00
                           -0.00   -1069.10       0.00   -1166.81   -2250.47

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    7314.83       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    7314.85       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    7314.83       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    7314.86       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   19168.13
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -267.97711481 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1929.692      -0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.006       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1929.692       0.000      -0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.002      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000   -1929.690      -0.000

    1    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000    1929.692      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.006       0.000       0.000       0.000
                            -1929.692       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.002      -0.000   -1929.692
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000    1929.690      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000   -1929.692       0.000       0.006
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000    1929.692       0.000       0.000       0.000
                            -1929.690      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.000      -0.000    1938.216       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000    1938.215       0.000

    2    1  |0 0>              -0.000   -1938.216       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1938.220      -0.000      -0.000       0.000       0.000

    3    1  |0 0>            2185.022      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -673.081       0.000      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    1938.219       0.000    1938.217

    5    1  |0 0>            -484.317       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    2134.442      -0.000      -0.000       0.000

    6    1  |0 0>           -3182.640       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -3182.641       0.000      -0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000      -0.000    2185.022       0.000    -484.317   -3182.640
                             1929.690       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000   -1938.216      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000    1938.216       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    1938.220       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>            1929.692       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     673.081      -0.000   -2134.442    3182.641

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -1938.219       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1938.215      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000   -1938.217      -0.000      -0.000

    3    1  |1 1>-              0.002       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1511.941      -0.000    1650.126    3182.640

    1    1  |0 0>               0.000    7314.834       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    7314.831       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    7314.849       0.000       0.000       0.000
                            -1511.941      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    7314.834       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    7314.858       0.000
                            -1650.126      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   19168.126
                            -3182.640      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -267.98933179    -0.01221698    -2681.32      0.00000000        0.00      0.0000
    2  -267.98933179    -0.01221697    -2681.32      0.00000000        0.00      0.0000
    3  -267.98933178    -0.01221697    -2681.32      0.00000001        0.00      0.0000
    4  -267.98933176    -0.01221695    -2681.31      0.00000003        0.01      0.0000
    5  -267.98933175    -0.01221694    -2681.31      0.00000004        0.01      0.0000
    6  -267.96832249     0.00879232     1929.69      0.02100930     4611.01      0.5717
    7  -267.96832248     0.00879234     1929.69      0.02100931     4611.01      0.5717
    8  -267.96832247     0.00879234     1929.70      0.02100932     4611.01      0.5717
    9  -267.96763311     0.00948171     2080.99      0.02169868     4762.31      0.5905
   10  -267.94036133     0.03675349     8066.46      0.04897046    10747.77      1.3326
   11  -267.94036132     0.03675349     8066.46      0.04897047    10747.78      1.3326
   12  -267.94036131     0.03675350     8066.46      0.04897048    10747.78      1.3326
   13  -267.94036127     0.03675354     8066.47      0.04897052    10747.79      1.3326
   14  -267.94036124     0.03675358     8066.48      0.04897055    10747.79      1.3326
   15  -267.88167546     0.09543935    20946.52      0.10765633    23627.83      2.9295

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000002 -0.00000043 -0.00000008  0.77561195  0.13590930 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.68193294  0.00000217 -0.00000142 -0.00000002  0.00000003  0.00000045  0.70699916 -0.00000055
                           0.00029025  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.01236823  0.00000000

   3    1  |1 1>+          0.00000142 -0.00000024 -0.68193348 -0.00000004 -0.00000018  0.70710613 -0.00000045  0.00000003
                          -0.00000000  0.00000000  0.00010940  0.00000000 -0.00000000  0.00102058 -0.00000001 -0.00000000

   1    1  |1 0>           0.00029025  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.01236821 -0.00000000
                           0.68193400 -0.00000217  0.00000142  0.00000002 -0.00000003  0.00000045  0.70699805 -0.00000055

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000002 -0.00000018 -0.00000021  0.27010499  0.73965381 -0.00000000  0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000506  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                           0.00000217  0.68193391 -0.00000024  0.00000037  0.00000003  0.00000003 -0.00000055 -0.70710639

   1    1  |1 1>-         -0.00000000  0.00000000  0.00010940  0.00000000 -0.00000000 -0.00102058  0.00000001  0.00000000
                          -0.00000142  0.00000024  0.68193370  0.00000004  0.00000018  0.70710596 -0.00000045  0.00000003

   2    1  |1 1>-          0.00000000 -0.00000506  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000
                           0.00000217  0.68193318 -0.00000024  0.00000037  0.00000003 -0.00000003  0.00000055  0.70710717

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000004 -0.00000025  0.00000013  0.50550639 -0.60374526  0.00000000  0.00000000  0.00000000

   1    1  |0 0>          -0.00000055  0.00000009  0.26444872  0.00000001  0.00000007 -0.00000015  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00004242 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.26444906  0.00000084 -0.00000055 -0.00000001  0.00000001 -0.00000000 -0.00000007  0.00000000
                           0.00011256  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000001  0.00000014  0.00000001 -0.26418421  0.01180606 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000084  0.26444903 -0.00000009  0.00000014  0.00000001  0.00000000  0.00000000 -0.00000005
                          -0.00000000  0.00000196 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000001 -0.00000002 -0.00000007  0.01180615  0.26418398 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000007  0.00000008  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.54946408  0.00000000  0.00000000 -0.00000001  0.20873987 -0.05522161 -0.17726316
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.18697899 -0.00000011  0.00000002  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00233304  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000011  0.18699356  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00003505  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00233304  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.18697938  0.00000011 -0.00000002 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.54946475 -0.00000000 -0.00000000 -0.00000000  0.05654669 -0.20838480  0.17726325

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000544  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000002  0.00000000 -0.18699384 -0.00000001 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00003505  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000011 -0.18699340 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000544  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000002  0.00000000 -0.18699357 -0.00000001 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.54946428  0.00000000  0.00000001 -0.00000001  0.15219334  0.15316302  0.17726318

   1    1  |0 0>          -0.00000000 -0.00000056  0.96439973  0.00000002 -0.00000002 -0.00000002  0.00000000
                          -0.00000000 -0.00000001  0.00018074  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.96432458  0.00000056 -0.00000010 -0.00000000 -0.00000001  0.00000000
                           0.00000000  0.01203241 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000019  0.00000000  0.00000002 -0.00000006  0.96360929 -0.03904442  0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000010 -0.00000002  0.96439966  0.00000006  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00002805  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000023  0.00000001  0.00000003 -0.00000000  0.03904445  0.96360935 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.30702886 -0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000006  0.95170021
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -267.98933179     -0.01221698    -2681.32      0.00000000        0.00      0.0000
     2   1   -267.98933179     -0.01221697    -2681.32      0.00000000        0.00      0.0000
     3   1   -267.98933178     -0.01221697    -2681.32      0.00000001        0.00      0.0000
     4   1   -267.98933176     -0.01221695    -2681.31      0.00000003        0.01      0.0000
     5   1   -267.98933175     -0.01221694    -2681.31      0.00000004        0.01      0.0000
     6   1   -267.96832249      0.00879232     1929.69      0.02100930     4611.01      0.5717
     7   1   -267.96832248      0.00879234     1929.69      0.02100931     4611.01      0.5717
     8   1   -267.96832247      0.00879234     1929.70      0.02100932     4611.01      0.5717
     9   1   -267.96763311      0.00948171     2080.99      0.02169868     4762.31      0.5905
    10   1   -267.94036133      0.03675349     8066.46      0.04897046    10747.77      1.3326
    11   1   -267.94036132      0.03675349     8066.46      0.04897047    10747.78      1.3326
    12   1   -267.94036131      0.03675350     8066.46      0.04897048    10747.78      1.3326
    13   1   -267.94036127      0.03675354     8066.47      0.04897052    10747.79      1.3326
    14   1   -267.94036124      0.03675358     8066.48      0.04897055    10747.79      1.3326
    15   1   -267.88167546      0.09543935    20946.52      0.10765633    23627.83      2.9295

 E0 =   -267.97711481 is the energy of the lowest zeroth-order state
 E1 =   -267.98933179 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000002 -0.00000043 -0.00000008  0.77561195  0.13590930 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.68193294  0.00000217 -0.00000142 -0.00000002  0.00000003  0.00000045  0.70699916 -0.00000055
                                0.00029025  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.01236823  0.00000000

  3  1     3    1  |1 1>+       0.00000142 -0.00000024 -0.68193348 -0.00000004 -0.00000018  0.70710613 -0.00000045  0.00000003
                               -0.00000000  0.00000000  0.00010940  0.00000000 -0.00000000  0.00102058 -0.00000001 -0.00000000

  4  1     1    1  |1 0>        0.00029025  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.01236821 -0.00000000
                                0.68193400 -0.00000217  0.00000142  0.00000002 -0.00000003  0.00000045  0.70699805 -0.00000055

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000002 -0.00000018 -0.00000021  0.27010499  0.73965381 -0.00000000  0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000506  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                                0.00000217  0.68193391 -0.00000024  0.00000037  0.00000003  0.00000003 -0.00000055 -0.70710639

  7  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00010940  0.00000000 -0.00000000 -0.00102058  0.00000001  0.00000000
                               -0.00000142  0.00000024  0.68193370  0.00000004  0.00000018  0.70710596 -0.00000045  0.00000003

  8  1     2    1  |1 1>-       0.00000000 -0.00000506  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000
                                0.00000217  0.68193318 -0.00000024  0.00000037  0.00000003 -0.00000003  0.00000055  0.70710717

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000004 -0.00000025  0.00000013  0.50550639 -0.60374526  0.00000000  0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000055  0.00000009  0.26444872  0.00000001  0.00000007 -0.00000015  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00004242 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.26444906  0.00000084 -0.00000055 -0.00000001  0.00000001 -0.00000000 -0.00000007  0.00000000
                                0.00011256  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000001  0.00000014  0.00000001 -0.26418421  0.01180606 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000084  0.26444903 -0.00000009  0.00000014  0.00000001  0.00000000  0.00000000 -0.00000005
                               -0.00000000  0.00000196 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000001 -0.00000002 -0.00000007  0.01180615  0.26418398 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000007  0.00000008  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.54946408  0.00000000  0.00000000 -0.00000001  0.20873987 -0.05522161 -0.17726316
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.18697899 -0.00000011  0.00000002  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00233304  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.00000011  0.18699356  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00003505  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00233304  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.18697938  0.00000011 -0.00000002 -0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.54946475 -0.00000000 -0.00000000 -0.00000000  0.05654669 -0.20838480  0.17726325

  6  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000544  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000002  0.00000000 -0.18699384 -0.00000001 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00003505  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000011 -0.18699340 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000544  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000002  0.00000000 -0.18699357 -0.00000001 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.54946428  0.00000000  0.00000001 -0.00000001  0.15219334  0.15316302  0.17726318

 10  1     1    1  |0 0>       -0.00000000 -0.00000056  0.96439973  0.00000002 -0.00000002 -0.00000002  0.00000000
                               -0.00000000 -0.00000001  0.00018074  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.96432458  0.00000056 -0.00000010 -0.00000000 -0.00000001  0.00000000
                                0.00000000  0.01203241 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000019  0.00000000  0.00000002 -0.00000006  0.96360929 -0.03904442  0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000010 -0.00000002  0.96439966  0.00000006  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00002805  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000023  0.00000001  0.00000003 -0.00000000  0.03904445  0.96360935 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.30702886 -0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000006  0.95170021
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   60.16%    1.85%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        46.50%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   46.50%    0.00%    0.00%   50.00%    0.00%    0.00%
  4  1     1    1  |1 0>         46.50%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    7.30%   54.71%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%   46.50%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   46.50%    0.00%    0.00%   50.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%   46.50%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   25.55%   36.45%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    6.99%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          6.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    6.98%    0.01%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    6.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.01%    6.98%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+        30.19%    0.00%    0.00%    0.00%    4.36%    0.30%    3.14%
  2  1     2    1  |1 1>+         0.00%    3.50%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    3.50%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    3.50%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>         30.19%    0.00%    0.00%    0.00%    0.32%    4.34%    3.14%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    3.50%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    3.50%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    3.50%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        30.19%    0.00%    0.00%    0.00%    2.32%    2.35%    3.14%
 10  1     1    1  |0 0>          0.00%    0.00%   93.01%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%   93.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   92.85%    0.15%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%   93.01%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.15%   92.85%    0.00%
 15  1     6    1  |0 0>          9.43%    0.00%    0.00%    0.00%    0.00%    0.00%   90.57%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.23       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      351.26       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       343.71    141.40    148.84     48.16      1.92      0.22      2.87
 REAL TIME  *       386.55 SEC
 DISK USED  *       399.60 MB (local),       11.24 GB (total)
 SF USED    *         2.51 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -267.881675462234

              CI              CI           MULTI         RHF-SCF
   -267.79948166   -267.89312329   -266.89184623   -266.72069329
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
