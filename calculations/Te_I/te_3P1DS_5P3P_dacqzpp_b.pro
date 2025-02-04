
 Working directory              : /wrk/irikura/molpro.Sa70ivArT8/
 Global scratch directory       : /wrk/irikura/molpro.Sa70ivArT8/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Sa70ivArT8/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Te SO-CI
                                                                                 ! add some Rydberg states
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Te};
 
 basis={
 ecp,te,ECP28MDF;
 spdfgh,te,aug-cc-pwCVQZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 NT=6
 NS=6
 NQ=3
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,7,3
     occ,7,9
     wf,charge=0,sym=PAR,spin=2;state,NT;
     wf,charge=0,sym=PAR,spin=0;state,NS;
     wf,charge=0,sym=PAR,spin=4;state,NQ;
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
 {ci;wf,sym=PAR,spin=4;state,NQ; save,5502.2}
 hlsdiag(NT+NS+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2,5502.2;print,vls=0,hls=0}                          !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.03 sec, 718 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Te SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 25-Jan-25          TIME: 15:10:03  
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
 SETTING NT             =         6.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING NQ             =         3.00000000                                  
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

     Node minimum: 1.311 MB, node maximum: 10.486 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2670576.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2670576      RECORD LENGTH: 524288

 Memory used in sort:       3.23 MW

 SORT1 READ   134353782. AND WROTE      520152. INTEGRALS IN      2 RECORDS. CPU TIME:     0.96 SEC, REAL TIME:     1.03 SEC
 SORT2 READ    13879740. AND WROTE    74805201. INTEGRALS IN   1120 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.08 SEC

 Node minimum:     2667444.  Node maximum:     2684340. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.52       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.25      3.91
 REAL TIME  *         5.32 SEC
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
   1     -266.67491685    -266.67491685     0.00D+00     0.69D-01     0     0       0.02      0.05    start
   2     -266.71779789      -0.04288104     0.34D-02     0.44D-02     1     0       0.02      0.07    diag2
   3     -266.72022732      -0.00242942     0.19D-02     0.12D-02     2     0       0.03      0.10    diag2
   4     -266.72066845      -0.00044113     0.35D-03     0.82D-03     3     0       0.02      0.12    diag2
   5     -266.72069314      -0.00002469     0.76D-04     0.23D-03     4     0       0.02      0.14    diag2
   6     -266.72069329      -0.00000015     0.79D-05     0.36D-04     5     0       0.02      0.16    diag2
   7     -266.72069329      -0.00000000     0.96D-06     0.25D-05     6     0       0.03      0.19    diag2
   8     -266.72069329      -0.00000000     0.66D-07     0.53D-06     0     0       0.02      0.21    fixocc

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -266.720693294140
  RHF One-electron energy            -459.057994623551
  RHF Two-electron energy             192.337301329411
  RHF Kinetic energy                  102.493265788581
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.602324077021

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45865     1  1  s    1.00152
    2.1     2.00000    -2.27829     1  1  d1+ -0.53278    1  1  d2+  0.61452    1  1  d1- -0.58304
    3.1     2.00000    -2.27829     1  1  d0   0.77029    1  1  d2- -0.61494
    4.1     2.00000    -2.27829     1  1  d0   0.63497    1  1  d2-  0.70410    1  1  d1+  0.25028
    5.1     2.00000    -2.27829     1  1  d2- -0.35499    1  1  d1+  0.74237    1  1  d1- -0.55753
    6.1     2.00000    -2.27829     1  1  d1+  0.29335    1  1  d2+  0.77848    1  1  d1-  0.55497
    7.1     2.00000    -1.03505     1  2  s    1.01391
    1.2     2.00000    -5.42339     1  1  pz   0.99873
    2.2     2.00000    -5.42339     1  1  px   1.00007
    3.2     2.00000    -5.42339     1  1  py   0.99873
    4.2     1.00000    -0.69091     1  1  py  -0.34666    1  4  py   0.52193    1  5  py   0.54626
    5.2     1.00000    -0.69091     1  1  px  -0.34669    1  4  px   0.52198    1  5  px   0.54631
    6.2     1.00000    -0.69091     1  1  pz  -0.34666    1  4  pz   0.52193    1  5  pz   0.54626


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
 CPU TIMES  *         4.48      0.22      3.91
 REAL TIME  *         5.58 SEC
 DISK USED  *        32.53 MB (local),        1.20 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     169 (   85   84)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             105   (120 determinants, 120 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             105   (225 determinants, 225 intermediate states)

 State symmetry 3

 Number of active electrons:   4    Spin symmetry=Quintet   Space symmetry=1
 Number of states:             3
 Number of CSFs:              15   (15 determinants, 15 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.653D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.536D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.622D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.593D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.672D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 2 3 4 6 1 1 4 6   5 3 2 1 2 4 6 5 3 1   4 6 5 3 2 3 5 6 4 2   8121310 7 9111415 1
                                        5 3 6 4 2 812 91411  151310 7 1 5 3 6 4 2   812151411 9 71310 1   6 4 5 3 2 8121514 7
                                        9111310 1 2 6 4 5 3   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.493D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.493D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.136D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.136D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.652D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.849D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.258D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 1 2 1   2 3 6 5 4 9 710 8 3   2 110 8 4 5 7 9 6 8  10 5 4 7 9 6 1 2 3 5
                                        4 810 7 9 6 1 2 3 7   9 4 5 6 81014161915  17211312112018 4 5 6   810 7 9 3 2 1 3 1 2
                                        9 7 6 5 410 8 1 3 2   1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06667   0.06667   0.06667   0.06667   0.06667   0.06667
 Weight factors for state symmetry  2:    0.06667   0.06667   0.06667   0.06667   0.06667   0.06667
 Weight factors for state symmetry  3:    0.06667   0.06667   0.06667
 
 Number of orbital rotations:  1369  ( 18 closed/active, 847 closed/virtual, 0 active/active, 504 active/virtual )
 Total number of variables:    3484
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5   12    0   -266.88163471    -266.89110191   -0.00946720    0.11509640 0.00003721 0.00000000  0.15E+00      1.14
   2    7   18    0   -266.89121816    -266.89122267   -0.00000451    0.00267319 0.00000190 0.00000000  0.58E-02      2.50
   3    5   15    0   -266.89122267    -266.89122267   -0.00000000    0.00000204 0.00000001 0.00000000  0.17E-04      3.63

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.18E-07)
                       Final energy:   -266.89122267
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -266.997868482845
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.89736496
 One electron energy                          -467.24238334
 Two electron energy                           200.24451486
 Virial ratio                                    3.59479792
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -266.997868482619
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.89736496
 One electron energy                          -467.24238335
 Two electron energy                           200.24451487
 Virial ratio                                    3.59479792
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -266.997868482499
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.89736497
 One electron energy                          -467.24238336
 Two electron energy                           200.24451488
 Virial ratio                                    3.59479792
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -266.781348563674
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.27080948
 One electron energy                          -461.40994140
 Two electron energy                           194.62859283
 Virial ratio                                    3.60857766
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -266.781348563474
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.27080948
 One electron energy                          -461.40994141
 Two electron energy                           194.62859285
 Virial ratio                                    3.60857766
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -266.781348563283
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.27080948
 One electron energy                          -461.40994143
 Two electron energy                           194.62859287
 Virial ratio                                    3.60857766
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -266.953697205699
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.87610482
 One electron energy                          -467.15169455
 Two electron energy                           200.19799734
 Virial ratio                                    3.59490479
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -266.953697205690
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.87610482
 One electron energy                          -467.15169455
 Two electron energy                           200.19799734
 Virial ratio                                    3.59490479
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -266.953697205524
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.87610483
 One electron energy                          -467.15169456
 Two electron energy                           200.19799735
 Virial ratio                                    3.59490479
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -266.953697205437
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.87610483
 One electron energy                          -467.15169457
 Two electron energy                           200.19799736
 Virial ratio                                    3.59490479
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -266.953697205403
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.87610483
 One electron energy                          -467.15169457
 Two electron energy                           200.19799736
 Virial ratio                                    3.59490479
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -266.888905096658
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.82580592
 One electron energy                          -466.91339508
 Two electron energy                           200.02448999
 Virial ratio                                    3.59554401
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Quintet
 =============================
 !MCSCF STATE 1.1 Quintet Energy              -266.791099259747
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.20544444
 One electron energy                          -461.12797821
 Two electron energy                           194.33687895
 Virial ratio                                    3.61034136
 
 !MCSCF STATE 1.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quintet
 =============================
 !MCSCF STATE 2.1 Quintet Energy              -266.791099259699
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.20544444
 One electron energy                          -461.12797823
 Two electron energy                           194.33687897
 Virial ratio                                    3.61034136
 
 !MCSCF STATE 2.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quintet
 =============================
 !MCSCF STATE 3.1 Quintet Energy              -266.791099259638
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.20544444
 One electron energy                          -461.12797824
 Two electron energy                           194.33687898
 Virial ratio                                    3.61034136
 
 !MCSCF STATE 3.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000001
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999998
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.999999999991
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999999999983
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.000000000017
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.883006784511
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999999999
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000001
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000003
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.116988139477
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000001
 !MCSCF expec      <1.1 Quintet|LXLX|1.1 Quintet>     0.999999999990
 !MCSCF expec      <2.1 Quintet|LXLX|2.1 Quintet>     0.999999999824
 !MCSCF expec      <3.1 Quintet|LXLX|3.1 Quintet>     0.000000000193
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999999
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>    -0.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999999987
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.999999999991
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.474789414790
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000006287
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999997383
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.525200841876
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000001
 !MCSCF expec      <1.1 Quintet|LYLY|1.1 Quintet>    -0.000000000000
 !MCSCF expec      <2.1 Quintet|LYLY|2.1 Quintet>     0.999999999990
 !MCSCF expec      <3.1 Quintet|LYLY|3.1 Quintet>     0.999999999990
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999999
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000000003
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.999999999991
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.000000000013
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.999999999974
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.642203800699
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999993711
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000002614
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.357811018646
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000001
 !MCSCF expec      <1.1 Quintet|LZLZ|1.1 Quintet>     0.999999999990
 !MCSCF expec      <2.1 Quintet|LZLZ|2.1 Quintet>     0.000000000166
 !MCSCF expec      <3.1 Quintet|LZLZ|3.1 Quintet>     0.999999999797
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     1.999999999983
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     1.999999999983
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     1.999999999983
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     5.999999999999
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     5.999999999999
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     5.999999999999
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     5.999999999999
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     5.999999999999
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000003
 !MCSCF expec      <1.1 Quintet|L**2|1.1 Quintet>     1.999999999980
 !MCSCF expec      <2.1 Quintet|L**2|2.1 Quintet>     1.999999999980
 !MCSCF expec      <3.1 Quintet|L**2|3.1 Quintet>     1.999999999980
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 3 5   6 4 2 1 3 5 6 4 2 1   3 5 6 4 2 3 5 6 4 2  13101415 81211 7 9 1
                                        3 5 6 4 213101415 8  1211 7 9 1 3 5 6 4 2  13101415 81211 7 9 1   5 3 6 4 213101415 8
                                       1211 7 9 1 3 5 2 6 4   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 1   2 3 9 7 810 5 4 6 2   1 3 9 7 810 5 4 6 9   7 810 5 4 6 2 1 3 7
                                        9 810 5 4 6 2 1 3 7   9 810 5 4 620181517  14162113121911 9 7 8  10 5 4 6 2 1 3 2 1 3
                                        9 7 810 5 4 6 2 1 3   2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.21382     1  1  s    1.00207
    2.1     2.00000    -2.03395     1  1  d2-  1.00054
    3.1     2.00000    -2.03395     1  1  d2+  1.00054
    4.1     2.00000    -2.03395     1  1  d1-  1.00054
    5.1     2.00000    -2.03395     1  1  d1+  1.00054
    6.1     2.00000    -2.03395     1  1  d0   1.00054
    7.1     2.00000    -0.81260     1  2  s    1.00927
    1.2     2.00000    -5.17893     1  1  py   0.99992
    2.2     2.00000    -5.17893     1  1  px   0.99992
    3.2     2.00000    -5.17893     1  1  pz   0.99992
    4.2     1.19780    -0.28176     1  1  pz  -0.32881    1  4  pz   0.44873    1  5  pz   0.53644
    5.2     1.19780    -0.28176     1  1  px  -0.32881    1  4  px   0.44873    1  5  px   0.53644
    6.2     1.19780    -0.28176     1  1  py  -0.32881    1  4  py   0.44873    1  5  py   0.53644
    7.2     0.13554     0.03642     1 10  pz   0.75874    1 11  pz   0.37990
    8.2     0.13554     0.03642     1 10  px   0.75874    1 11  px   0.37990
    9.2     0.13554     0.03642     1 10  py   0.75874    1 11  py   0.37990
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2aa000         0.00000088      0.99732734     -0.00000088     -0.00000000     -0.06675605     -0.00000019
 a2a000         0.99732734     -0.00000088      0.00000020      0.00000000     -0.00000019      0.06675607
 aa2000        -0.00000020      0.00000088      0.99732734     -0.06675608      0.00000000      0.00000000
 aaab00         0.00000005      0.05792585     -0.00000005      0.00000000      0.85125908      0.00000243
 aaa00b        -0.00000001      0.00000005      0.05792587      0.85125908     -0.00000000     -0.00000000
 aaa0b0        -0.05792587      0.00000005     -0.00000001      0.00000000     -0.00000243      0.85125908
 abaa00        -0.00000001     -0.01582710      0.00000001     -0.00000000     -0.31698792     -0.00000091
 baa0a0         0.01582710     -0.00000001      0.00000000     -0.00000000      0.00000091     -0.31698792
 aab0a0         0.01582710     -0.00000001      0.00000000     -0.00000000      0.00000091     -0.31698792
 aaba00        -0.00000001     -0.01582710      0.00000001     -0.00000000     -0.31698792     -0.00000091
 aba00a         0.00000000     -0.00000001     -0.01582710     -0.31698792      0.00000000      0.00000000
 baa00a         0.00000000     -0.00000001     -0.01582710     -0.31698792      0.00000000      0.00000000
 aab00a         0.00000001     -0.00000002     -0.02627167     -0.21728325      0.00000000      0.00000000
 baaa00        -0.00000002     -0.02627164      0.00000002     -0.00000000     -0.21728325     -0.00000062
 aba0a0         0.02627166     -0.00000002      0.00000001     -0.00000000      0.00000062     -0.21728325
 20a0a0        -0.00000000     -0.00070132      0.00000000      0.00000000      0.07338734      0.00000021
 2a000a         0.00000000      0.00070133     -0.00000000     -0.00000000     -0.07338734     -0.00000021
 a2000a         0.00070133     -0.00000000      0.00000000      0.00000000     -0.00000021      0.07338734
 a020a0        -0.00000000      0.00000000      0.00070132     -0.07338734     -0.00000000     -0.00000000
 02aa00        -0.00070130      0.00000000     -0.00000000     -0.00000000      0.00000021     -0.07338734
 0a2a00         0.00000000     -0.00000000     -0.00070130      0.07338734     -0.00000000      0.00000000
 0aa200        -0.00000001     -0.01430216      0.00000001     -0.00000000     -0.06619878     -0.00000019
 a0a020        -0.01430215      0.00000001     -0.00000000      0.00000000     -0.00000019      0.06619876
 aa0002         0.00000000     -0.00000001     -0.01430215     -0.06619875      0.00000000     -0.00000000
 
 Energy:     -266.99786848   -266.99786848   -266.99786848   -266.78134856   -266.78134856   -266.78134856
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 202000        -0.13927720     -0.00000007      0.00000015     -0.00000136      0.80238680      0.57382607
 220000         0.76452596      0.00000038      0.00000040      0.00000047     -0.28057581      0.57382606
 2ab000        -0.00000045     -0.00000000      0.70527799     -0.00003229     -0.00000021      0.00000000
 2ba000         0.00000045      0.00000000     -0.70527799      0.00003229      0.00000021     -0.00000000
 a2b000        -0.00000035      0.70527799      0.00000000      0.00000000     -0.00000000     -0.00000000
 b2a000         0.00000035     -0.70527799     -0.00000000     -0.00000000      0.00000000      0.00000000
 ab2000         0.00000000     -0.00000000      0.00003229      0.70527799      0.00000119     -0.00000000
 ba2000        -0.00000000      0.00000000     -0.00003229     -0.70527799     -0.00000119      0.00000000
 022000        -0.62524875     -0.00000031     -0.00000055      0.00000088     -0.52181100      0.57382606
 
 Energy:     -266.95369721   -266.95369721   -266.95369721   -266.95369721   -266.95369721   -266.88890510
 
 
 CI Coefficients of symmetry 1 (Quintet)
 =======================================
 
 aaaa00        -0.00000000      0.99657044      0.00001286
 aaa0a0         0.00000000     -0.00001286      0.99657044
 aaa00a         0.99657044     -0.00000000      0.00000000
 0aaa0a        -0.05850531      0.00000000      0.00000000
 0aaaa0        -0.00000000      0.00000075     -0.05850531
 a0a0aa         0.05850529      0.00000000     -0.00000000
 a0aaa0         0.00000000     -0.05850529     -0.00000075
 aa0a0a         0.00000000      0.05850528      0.00000075
 aa00aa         0.00000000     -0.00000075      0.05850528
 
 Energy:     -266.79109926   -266.79109926   -266.79109926
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.63       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.01      3.53      0.22      3.91
 REAL TIME  *        10.09 SEC
 DISK USED  *        58.79 MB (local),        1.92 GB (total)
 SF USED    *        70.06 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -266.9978685   2.0
    -266.9978685   2.0
    -266.9978685   2.0
    -266.7813486   2.0
    -266.7813486   2.0
    -266.7813486   2.0
    -266.9536972   6.0
    -266.9536972   6.0
    -266.9536972   6.0
    -266.9536972   6.0
    -266.9536972   6.0
    -266.8889051   0.0
    -266.7910993   2.0
    -266.7910993   2.0
    -266.7910993   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 24
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:       75 conf      105 CSFs
 N elec internal:     8890 conf    31395 CSFs
 N-1 el internal:     7880 conf    46290 CSFs
 N-2 el internal:     4646 conf    49101 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     169 (  85  84 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.99786848
     2      -266.99786848
     3      -266.99786848
     4      -266.78134856
     5      -266.78134856
     6      -266.78134856

 Number of blocks in overlap matrix:   642   Smallest eigenvalue:  0.78D-05
 Number of N-2 electron functions:    1371
 Number of N-1 electron functions:   46290

 Number of internal configurations:                16989
 Number of singly external configurations:       3909318
 Number of doubly external configurations:       9792543
 Total number of contracted configurations:     13718850
 Total number of uncontracted configurations:  353738418

 Diagonal Coupling coefficients finished.               Storage:   8651505 words, CPU-Time:      2.33 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1932245 words, CPU-time:      1.99 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.99786848    -0.00000000    -1.09241968  0.44D-01  0.13D+00     7.98
    1     2     2     1.00000000     0.00000000  -266.99786848    -0.00000000    -1.09235264  0.43D-01  0.13D+00     7.98
    1     3     3     1.00000000     0.00000000  -266.99786848     0.00000000    -1.09254404  0.44D-01  0.13D+00     7.98
    1     4     4     1.00000000     0.00000000  -266.78134856     0.00000000    -1.05478749  0.50D-01  0.11D+00     7.98
    1     5     5     1.00000000     0.00000000  -266.78134856    -0.00000000    -1.05480566  0.50D-01  0.11D+00     7.98
    1     6     6     1.00000000     0.00000000  -266.78134856    -0.00000000    -1.05478977  0.50D-01  0.11D+00     7.98
    2     1     1     1.10716553    -0.86990511  -267.86777359    -0.86990511    -0.02696303  0.44D-02  0.17D-02   126.61
    2     2     2     1.10723600    -0.86986098  -267.86772946    -0.86986098    -0.02699227  0.44D-02  0.17D-02   126.61
    2     3     3     1.10733176    -0.86977623  -267.86764471    -0.86977623    -0.02707707  0.45D-02  0.17D-02   126.61
    2     4     4     1.10580255    -0.85200155  -267.63335011    -0.85200155    -0.02381290  0.40D-02  0.15D-02   126.61
    2     5     5     1.10580579    -0.85200120  -267.63334976    -0.85200120    -0.02381268  0.40D-02  0.15D-02   126.61
    2     6     6     1.10581534    -0.85200062  -267.63334918    -0.85200062    -0.02381198  0.40D-02  0.15D-02   126.61
    3     1     1     1.09369784    -0.89540579  -267.89327427    -0.02550068    -0.00043014  0.64D-04  0.34D-04   243.69
    3     2     2     1.09370765    -0.89540473  -267.89327321    -0.02554376    -0.00043162  0.64D-04  0.34D-04   243.69
    3     3     3     1.09369419    -0.89540411  -267.89327259    -0.02562788    -0.00043181  0.64D-04  0.34D-04   243.69
    3     4     4     1.09039734    -0.87495794  -267.65630650    -0.02295639    -0.00035399  0.51D-04  0.32D-04   243.69
    3     5     5     1.09039673    -0.87495729  -267.65630586    -0.02295610    -0.00035460  0.51D-04  0.32D-04   243.69
    3     6     6     1.09039636    -0.87495720  -267.65630577    -0.02295658    -0.00035466  0.51D-04  0.33D-04   243.69
    4     1     1     1.09319979    -0.89584642  -267.89371490    -0.00044063    -0.00001259  0.16D-05  0.13D-05   360.96
    4     2     2     1.09319834    -0.89584640  -267.89371488    -0.00044167    -0.00001260  0.16D-05  0.13D-05   360.96
    4     3     3     1.09320193    -0.89584635  -267.89371483    -0.00044224    -0.00001265  0.16D-05  0.13D-05   360.96
    4     4     4     1.08979061    -0.87533325  -267.65668181    -0.00037531    -0.00001227  0.27D-05  0.14D-05   360.96
    4     5     5     1.08979025    -0.87533317  -267.65668173    -0.00037587    -0.00001233  0.27D-05  0.14D-05   360.96
    4     6     6     1.08979015    -0.87533316  -267.65668172    -0.00037595    -0.00001234  0.27D-05  0.14D-05   360.96
    5     1     1     1.09324125    -0.89585978  -267.89372826    -0.00001336    -0.00000038  0.20D-07  0.62D-07   478.26
    5     2     2     1.09324093    -0.89585977  -267.89372826    -0.00001338    -0.00000039  0.20D-07  0.62D-07   478.26
    5     3     3     1.09324078    -0.89585977  -267.89372825    -0.00001342    -0.00000039  0.20D-07  0.63D-07   478.26
    5     4     4     1.08982582    -0.87534718  -267.65669574    -0.00001393    -0.00000068  0.45D-07  0.13D-06   478.26
    5     5     5     1.08982558    -0.87534717  -267.65669573    -0.00001400    -0.00000069  0.45D-07  0.13D-06   478.26
    5     6     6     1.08982553    -0.87534717  -267.65669573    -0.00001401    -0.00000069  0.45D-07  0.13D-06   478.26
    6     1     1     1.09324302    -0.89586020  -267.89372868    -0.00000042    -0.00000002  0.11D-08  0.27D-08   595.73
    6     2     2     1.09324300    -0.89586020  -267.89372868    -0.00000043    -0.00000002  0.11D-08  0.28D-08   595.73
    6     3     3     1.09324300    -0.89586020  -267.89372868    -0.00000043    -0.00000002  0.11D-08  0.28D-08   595.73
    6     4     4     1.08983505    -0.87534797  -267.65669654    -0.00000080    -0.00000004  0.49D-08  0.63D-08   595.73
    6     5     5     1.08983500    -0.87534797  -267.65669654    -0.00000080    -0.00000004  0.49D-08  0.64D-08   595.73
    6     6     6     1.08983501    -0.87534797  -267.65669654    -0.00000080    -0.00000004  0.49D-08  0.64D-08   595.73
    7     1     1     1.09324299    -0.89586020  -267.89372868    -0.00000000    -0.00000002  0.11D-08  0.27D-08   668.68
    7     2     2     1.09324296    -0.89586020  -267.89372868    -0.00000000    -0.00000002  0.11D-08  0.28D-08   668.68
    7     3     3     1.09324296    -0.89586020  -267.89372868    -0.00000000    -0.00000002  0.11D-08  0.28D-08   668.68
    7     4     4     1.08983736    -0.87534802  -267.65669658    -0.00000005    -0.00000000  0.15D-09  0.31D-09   668.68
    7     5     5     1.08983736    -0.87534802  -267.65669658    -0.00000005    -0.00000000  0.14D-09  0.31D-09   668.68
    7     6     6     1.08983736    -0.87534802  -267.65669658    -0.00000005    -0.00000000  0.15D-09  0.31D-09   668.68


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.0%
 S   0.8%   8.2%
 P   0.6%  36.8%  25.7%

 Initialization:   0.7%
 Other:           26.3%

 Total CPU:      668.7 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//2000          -0.0231514  -0.0008354   0.9550477  -0.0357490   0.0058882  -0.0017714
 2222222222/2/000          -0.0593664   0.9534821  -0.0006051  -0.0016058   0.0011469   0.0362203
 22222222222//000           0.9532012   0.0593637   0.0231586  -0.0059355  -0.0357745   0.0008697
 2222222222///0\0           0.0022702  -0.0364620   0.0000231  -0.0417348   0.0298083   0.9413446
 2222222222///\00           0.0364512   0.0022701   0.0008856   0.1542593   0.9297598  -0.0226023
 2222222222///00\          -0.0008853  -0.0000319   0.0365218   0.9290975  -0.1530303   0.0460376
 2222222222//\00/           0.0001533   0.0000055  -0.0063257   0.0761797  -0.0125475   0.0037748
 2222222222/2000/           0.0000949  -0.0015242   0.0000010  -0.0030937   0.0022096   0.0697794
 222222222202//00          -0.0000949   0.0015242  -0.0000010   0.0030937  -0.0022096  -0.0697793
 22222222222/000/          -0.0015237  -0.0000949  -0.0000370  -0.0114348  -0.0689206   0.0016754
 222222222220/0/0           0.0015237   0.0000949   0.0000370   0.0114348   0.0689206  -0.0016754
 2222222222/020/0           0.0000370   0.0000013  -0.0015267  -0.0688715   0.0113437  -0.0034126
 22222222220/2/00          -0.0000370  -0.0000013   0.0015267   0.0688715  -0.0113437   0.0034126
 2222222222/\/0/0          -0.0003405   0.0054693  -0.0000035  -0.0029635   0.0021166   0.0668432
 2222222222/\//00           0.0054676   0.0003405   0.0001328  -0.0109537  -0.0660206   0.0016049
 2222222222/0/020           0.0007186  -0.0115414   0.0000073  -0.0029101   0.0020785   0.0656390
 22222222220//200          -0.0115380  -0.0007186  -0.0002803  -0.0107563  -0.0648312   0.0015760
 2222222222//0002           0.0002802   0.0000101  -0.0115603  -0.0647850   0.0106706  -0.0032102
 22222222220///\0          -0.0006155   0.0098854  -0.0000063   0.0024042  -0.0017171  -0.0542272
 22222222220///0\           0.0002400   0.0000087  -0.0099016  -0.0535217   0.0088155  -0.0026520
 2222222222/0/0/\          -0.0002400  -0.0000087   0.0099016   0.0535217  -0.0088155   0.0026520

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.059405    0.953822   -0.023167    0.000652   -0.026864   -0.001673
 2           0.954103    0.059402   -0.000836    0.000024   -0.001673    0.026872
 3          -0.000605    0.023174    0.955670   -0.026916   -0.000653   -0.000017
 4           0.001230    0.004545    0.027372    0.943588    0.156665   -0.042386
 5          -0.000878    0.027391   -0.004508   -0.155417    0.944260    0.030273
 6          -0.027732   -0.000666    0.001356    0.046756   -0.022955    0.956026

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956330   -0.000000   -0.000000    0.000055    0.000399    0.000015
 2          -0.000000    0.956330   -0.000000    0.000022    0.000012   -0.000403
 3          -0.000000   -0.000000    0.956330    0.000399   -0.000056    0.000020
 4           0.000055    0.000022    0.000399    0.957846    0.000000   -0.000000
 5           0.000399    0.000012   -0.000056    0.000000    0.957846   -0.000000
 6           0.000015   -0.000403    0.000020   -0.000000   -0.000000    0.957846


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95382183 (fixed)   0.95635780 (relaxed)   0.95632968 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015666   -0.00032390   -0.77908485
 Singles      0.01260546   -0.04618609   -0.05257123
 Pairs        0.08065213    0.00204803   -0.06420412
 Total        1.09341426   -0.04446196   -0.89586020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99769169
 Nuclear energy                         0.00000000
 Kinetic energy                       103.60558118
 One electron energy                 -466.63483494
 Two electron energy                  198.74110626
 Virial quotient                       -2.58570750
 Correlation energy                    -0.89603699
 !MRCI STATE 1.1 Energy              -267.893728681766

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97743131 (Davidson, fixed reference)
 Cluster corrected energies          -267.97737368 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97743131 (Davidson, rotated reference)

 Cluster corrected energies          -267.97604952 (Pople, fixed reference)
 Cluster corrected energies          -267.97598827 (Pople, relaxed reference)
 Cluster corrected energies          -267.97604952 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95410294 (fixed)   0.95635781 (relaxed)   0.95632969 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015666   -0.00032390   -0.74712861
 Singles      0.01260548   -0.04618613   -0.05257124
 Pairs        0.08065210   -0.03289335   -0.09616034
 Total        1.09341424   -0.07940339   -0.89586020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99769169
 Nuclear energy                         0.00000000
 Kinetic energy                       103.60557512
 One electron energy                 -466.63483004
 Two electron energy                  198.74110136
 Virial quotient                       -2.58570766
 Correlation energy                    -0.89603699
 !MRCI STATE 2.1 Energy              -267.893728681622

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97743129 (Davidson, fixed reference)
 Cluster corrected energies          -267.97737366 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97743129 (Davidson, rotated reference)

 Cluster corrected energies          -267.97604950 (Pople, fixed reference)
 Cluster corrected energies          -267.97598824 (Pople, relaxed reference)
 Cluster corrected energies          -267.97604950 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95566959 (fixed)   0.95635782 (relaxed)   0.95632969 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015666   -0.00032390   -0.77723087
 Singles      0.01260547   -0.04618613   -0.05257124
 Pairs        0.08065210    0.00002087   -0.06605809
 Total        1.09341423   -0.04648915   -0.89586020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99769169
 Nuclear energy                         0.00000000
 Kinetic energy                       103.60557517
 One electron energy                 -466.63483046
 Two electron energy                  198.74110178
 Virial quotient                       -2.58570765
 Correlation energy                    -0.89603699
 !MRCI STATE 3.1 Energy              -267.893728681350

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97743129 (Davidson, fixed reference)
 Cluster corrected energies          -267.97737366 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97743129 (Davidson, rotated reference)

 Cluster corrected energies          -267.97604950 (Pople, fixed reference)
 Cluster corrected energies          -267.97598824 (Pople, relaxed reference)
 Cluster corrected energies          -267.97604950 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.94358752 (fixed)   0.95785156 (relaxed)   0.95784608 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010789   -0.00034745   -0.78274450
 Singles      0.01746552   -0.05842467   -0.06762813
 Pairs        0.07238153    0.03613844   -0.02497539
 Total        1.08995494   -0.02263367   -0.87534802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.78152536
 Nuclear energy                         0.00000000
 Kinetic energy                       103.26999667
 One electron energy                 -461.39645746
 Two electron energy                  193.73976088
 Virial quotient                       -2.59181471
 Correlation energy                    -0.87517123
 !MRCI STATE 4.1 Energy              -267.656696583570

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.73542256 (Davidson, fixed reference)
 Cluster corrected energies          -267.73541165 (Davidson, relaxed reference)
 Cluster corrected energies          -267.73542256 (Davidson, rotated reference)

 Cluster corrected energies          -267.73389148 (Pople, fixed reference)
 Cluster corrected energies          -267.73387995 (Pople, relaxed reference)
 Cluster corrected energies          -267.73389148 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.94426005 (fixed)   0.95785156 (relaxed)   0.95784608 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010789   -0.00034745   -0.72590765
 Singles      0.01746551   -0.05842465   -0.06762813
 Pairs        0.07238154   -0.02581118   -0.08181224
 Total        1.08995494   -0.08458328   -0.87534802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.78152536
 Nuclear energy                         0.00000000
 Kinetic energy                       103.26999629
 One electron energy                 -461.39645668
 Two electron energy                  193.73976010
 Virial quotient                       -2.59181472
 Correlation energy                    -0.87517123
 !MRCI STATE 5.1 Energy              -267.656696583477

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.73542256 (Davidson, fixed reference)
 Cluster corrected energies          -267.73541165 (Davidson, relaxed reference)
 Cluster corrected energies          -267.73542256 (Davidson, rotated reference)

 Cluster corrected energies          -267.73389147 (Pople, fixed reference)
 Cluster corrected energies          -267.73387994 (Pople, relaxed reference)
 Cluster corrected energies          -267.73389147 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95602558 (fixed)   0.95785156 (relaxed)   0.95784608 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010789   -0.00034745   -0.00174405
 Singles      0.01746552   -0.05842467   -0.06762813
 Pairs        0.07238153   -0.81511686   -0.80597583
 Total        1.08995494   -0.87388897   -0.87534802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.78152536
 Nuclear energy                         0.00000000
 Kinetic energy                       103.26999658
 One electron energy                 -461.39645727
 Two electron energy                  193.73976069
 Virial quotient                       -2.59181471
 Correlation energy                    -0.87517123
 !MRCI STATE 6.1 Energy              -267.656696583321

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.73542256 (Davidson, fixed reference)
 Cluster corrected energies          -267.73541165 (Davidson, relaxed reference)
 Cluster corrected energies          -267.73542256 (Davidson, rotated reference)

 Cluster corrected energies          -267.73389148 (Pople, fixed reference)
 Cluster corrected energies          -267.73387995 (Pople, relaxed reference)
 Cluster corrected energies          -267.73389148 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      637.99       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       744.26    736.23      3.53      0.22      3.91
 REAL TIME  *       793.50 SEC
 DISK USED  *       695.16 MB (local),       19.32 GB (total)
 SF USED    *         6.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -267.97743131  AU                              
 SETTING HLSDIAG(2)     =      -267.97743129  AU                              
 SETTING HLSDIAG(3)     =      -267.97743129  AU                              
 SETTING HLSDIAG(4)     =      -267.73542256  AU                              
 SETTING HLSDIAG(5)     =      -267.73542256  AU                              
 SETTING HLSDIAG(6)     =      -267.73542256  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 24
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:       90 conf      105 CSFs
 N elec internal:     9105 conf    20335 CSFs
 N-1 el internal:     7880 conf    26950 CSFs
 N-2 el internal:     5471 conf    28036 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     169 (  85  84 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.95369721
     2      -266.95369721
     3      -266.95369721
     4      -266.95369721
     5      -266.95369721
     6      -266.88890510

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2022D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2244D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2069D-06

 Number of blocks in overlap matrix:   684   Smallest eigenvalue:  0.20D-06
 Number of N-2 electron functions:    1216
 Number of N-1 electron functions:   26950

 Number of internal configurations:                11221
 Number of singly external configurations:       2275854
 Number of doubly external configurations:       8688096
 Total number of contracted configurations:     10975171
 Total number of uncontracted configurations:  202223980

 Diagonal Coupling coefficients finished.               Storage:   6797501 words, CPU-Time:      1.36 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1795401 words, CPU-time:      1.67 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.95369721     0.00000000    -1.10249095  0.48D-01  0.13D+00     5.74
    1     2     2     1.00000000     0.00000000  -266.95369721    -0.00000000    -1.10339489  0.49D-01  0.13D+00     5.74
    1     3     3     1.00000000     0.00000000  -266.95369721    -0.00000000    -1.10392588  0.49D-01  0.13D+00     5.74
    1     4     4     1.00000000     0.00000000  -266.95369721    -0.00000000    -1.10296679  0.48D-01  0.13D+00     5.74
    1     5     5     1.00000000     0.00000000  -266.95369721     0.00000000    -1.10149675  0.48D-01  0.13D+00     5.74
    1     6     6     1.00000000     0.00000000  -266.88890510     0.00000000    -1.09067293  0.23D-01  0.14D+00     5.74
    2     1     1     1.11053253    -0.87643058  -267.83012779    -0.87643058    -0.02729225  0.43D-02  0.18D-02    87.23
    2     2     2     1.11062551    -0.87616304  -267.82986025    -0.87616304    -0.02763359  0.44D-02  0.18D-02    87.23
    2     3     3     1.11071117    -0.87608653  -267.82978374    -0.87608653    -0.02767854  0.44D-02  0.18D-02    87.23
    2     4     4     1.11091346    -0.87591866  -267.82961586    -0.87591866    -0.02787865  0.45D-02  0.18D-02    87.23
    2     5     5     1.11096002    -0.87576429  -267.82946150    -0.87576429    -0.02809426  0.45D-02  0.18D-02    87.23
    2     6     6     1.10256639    -0.88346367  -267.77236877    -0.88346367    -0.02709156  0.43D-02  0.19D-02    87.23
    3     1     1     1.09702045    -0.90201179  -267.85570900    -0.02558121    -0.00048184  0.75D-04  0.38D-04   169.21
    3     2     2     1.09699714    -0.90200693  -267.85570413    -0.02584389    -0.00048545  0.74D-04  0.40D-04   169.21
    3     3     3     1.09701870    -0.90200414  -267.85570135    -0.02591761    -0.00048931  0.74D-04  0.40D-04   169.21
    3     4     4     1.09697301    -0.90200102  -267.85569822    -0.02608236    -0.00049302  0.76D-04  0.40D-04   169.21
    3     5     5     1.09703425    -0.90199822  -267.85569543    -0.02623393    -0.00049622  0.75D-04  0.41D-04   169.21
    3     6     6     1.09317986    -0.90879088  -267.79769598    -0.02532721    -0.00045782  0.43D-04  0.52D-04   169.21
    4     1     1     1.09628191    -0.90249741  -267.85619461    -0.00048561    -0.00001725  0.25D-05  0.17D-05   250.93
    4     2     2     1.09627090    -0.90249729  -267.85619449    -0.00049036    -0.00001732  0.24D-05  0.18D-05   250.93
    4     3     3     1.09626515    -0.90249722  -267.85619442    -0.00049308    -0.00001735  0.24D-05  0.18D-05   250.93
    4     4     4     1.09627496    -0.90249705  -267.85619426    -0.00049603    -0.00001753  0.25D-05  0.18D-05   250.93
    4     5     5     1.09626679    -0.90249667  -267.85619388    -0.00049845    -0.00001786  0.25D-05  0.18D-05   250.93
    4     6     6     1.09310413    -0.90925126  -267.79815636    -0.00046038    -0.00001649  0.23D-05  0.19D-05   250.93
    5     1     1     1.09623589    -0.90251563  -267.85621284    -0.00001823    -0.00000057  0.40D-07  0.82D-07   333.04
    5     2     2     1.09623222    -0.90251560  -267.85621281    -0.00001832    -0.00000059  0.39D-07  0.89D-07   333.04
    5     3     3     1.09623208    -0.90251560  -267.85621280    -0.00001838    -0.00000061  0.41D-07  0.91D-07   333.04
    5     4     4     1.09623076    -0.90251560  -267.85621280    -0.00001855    -0.00000060  0.38D-07  0.92D-07   333.04
    5     5     5     1.09623277    -0.90251560  -267.85621280    -0.00001893    -0.00000060  0.41D-07  0.91D-07   333.04
    5     6     6     1.09326746    -0.90926903  -267.79817413    -0.00001777    -0.00000063  0.34D-07  0.11D-06   333.04
    6     1     1     1.09621969    -0.90251625  -267.85621346    -0.00000062    -0.00000002  0.12D-08  0.43D-08   415.25
    6     2     2     1.09621960    -0.90251624  -267.85621345    -0.00000064    -0.00000002  0.12D-08  0.42D-08   415.25
    6     3     3     1.09621919    -0.90251624  -267.85621345    -0.00000064    -0.00000002  0.12D-08  0.43D-08   415.25
    6     4     4     1.09622093    -0.90251624  -267.85621344    -0.00000064    -0.00000002  0.11D-08  0.36D-08   415.25
    6     5     5     1.09621951    -0.90251624  -267.85621344    -0.00000064    -0.00000002  0.12D-08  0.41D-08   415.25
    6     6     6     1.09327905    -0.90926974  -267.79817483    -0.00000071    -0.00000003  0.22D-08  0.61D-08   415.25


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   0.8%   6.9%
 P   0.7%  29.9%  25.5%

 Initialization:   0.8%
 Other:           34.2%

 Total CPU:      415.2 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2\000          -0.0008069   0.0044488   0.0029464  -0.0042132   0.9532027   0.0000000
 2222222222/\2000           0.0009844   0.0146776   0.9531072  -0.0019358  -0.0030223   0.0000000
 22222222222/\000           0.0012350   0.9531013  -0.0146964  -0.0017797  -0.0044097   0.0000000
 2222222222202000           0.7649208  -0.0012758  -0.0010622  -0.1437198   0.0000215   0.5480901
 2222222222022000          -0.2579926   0.0017462   0.0017405   0.7342923   0.0030137   0.5480904
 2222222222220000          -0.5069270  -0.0004704  -0.0006783  -0.5905725  -0.0030352   0.5480902

  Internal coefficients greater than 0.0500000
 =============================================
 2222220222222000          -0.0000001   0.0000000   0.0000000   0.0000001   0.0000000  -0.0707702

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.334471   -0.000808    0.001237    0.000986    0.894429    0.000001
 2          -0.001279    0.004457    0.954796    0.014704   -0.001811   -0.000000
 3          -0.001465    0.002952   -0.014722    0.954802   -0.001577   -0.000000
 4          -0.894418   -0.004221   -0.001783   -0.001939   -0.334466   -0.000000
 5          -0.004226    0.954898   -0.004418   -0.003028   -0.000708    0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.953605

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954923    0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.954923    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.954923   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.954922   -0.000000    0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.954923    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.953605


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.89442878 (fixed)   0.95499059 (relaxed)   0.95492258 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038248   -0.00076975   -0.77687253
 Singles      0.01485059   -0.05091211   -0.05865017
 Pairs        0.08140590   -0.00000064   -0.06699355
 Total        1.09663898   -0.05168249   -0.90251625
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95369721
 Nuclear energy                         0.00000000
 Kinetic energy                       103.58234311
 One electron energy                 -466.49277239
 Two electron energy                  198.63655894
 Virial quotient                       -2.58592541
 Correlation energy                    -0.90251625
 !MRCI STATE 1.1 Energy              -267.856213455373

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94343171 (Davidson, fixed reference)
 Cluster corrected energies          -267.94329074 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94343171 (Davidson, rotated reference)

 Cluster corrected energies          -267.94309277 (Pople, fixed reference)
 Cluster corrected energies          -267.94294034 (Pople, relaxed reference)
 Cluster corrected energies          -267.94309277 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95479643 (fixed)   0.95499063 (relaxed)   0.95492261 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038249   -0.00076975   -0.77687282
 Singles      0.01485077   -0.05091250   -0.05865038
 Pairs        0.08140564    0.00000000   -0.06699304
 Total        1.09663890   -0.05168225   -0.90251624
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95369721
 Nuclear energy                         0.00000000
 Kinetic energy                       103.58231819
 One electron energy                 -466.49275671
 Two electron energy                  198.63654326
 Virial quotient                       -2.58592604
 Correlation energy                    -0.90251624
 !MRCI STATE 2.1 Energy              -267.856213448343

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94343162 (Davidson, fixed reference)
 Cluster corrected energies          -267.94329065 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94343162 (Davidson, rotated reference)

 Cluster corrected energies          -267.94309269 (Pople, fixed reference)
 Cluster corrected energies          -267.94294024 (Pople, relaxed reference)
 Cluster corrected energies          -267.94309269 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95480231 (fixed)   0.95499081 (relaxed)   0.95492279 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038249   -0.00076975   -0.77687322
 Singles      0.01485066   -0.05091237   -0.05865022
 Pairs        0.08140533    0.00000000   -0.06699280
 Total        1.09663848   -0.05168212   -0.90251624
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95369721
 Nuclear energy                         0.00000000
 Kinetic energy                       103.58230880
 One electron energy                 -466.49275740
 Two electron energy                  198.63654395
 Virial quotient                       -2.58592627
 Correlation energy                    -0.90251624
 !MRCI STATE 3.1 Energy              -267.856213446663

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94343124 (Davidson, fixed reference)
 Cluster corrected energies          -267.94329027 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94343124 (Davidson, rotated reference)

 Cluster corrected energies          -267.94309227 (Pople, fixed reference)
 Cluster corrected energies          -267.94293983 (Pople, relaxed reference)
 Cluster corrected energies          -267.94309227 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.89441801 (fixed)   0.95499005 (relaxed)   0.95492204 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038249   -0.00076975   -0.77687158
 Singles      0.01485109   -0.05091280   -0.05865075
 Pairs        0.08140664   -0.00000002   -0.06699391
 Total        1.09664022   -0.05168257   -0.90251624
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95369721
 Nuclear energy                         0.00000000
 Kinetic energy                       103.58233980
 One electron energy                 -466.49273696
 Two electron energy                  198.63652352
 Virial quotient                       -2.58592550
 Correlation energy                    -0.90251624
 !MRCI STATE 4.1 Energy              -267.856213444048

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94343281 (Davidson, fixed reference)
 Cluster corrected energies          -267.94329184 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94343281 (Davidson, rotated reference)

 Cluster corrected energies          -267.94309397 (Pople, fixed reference)
 Cluster corrected energies          -267.94294153 (Pople, relaxed reference)
 Cluster corrected energies          -267.94309397 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95489802 (fixed)   0.95499067 (relaxed)   0.95492265 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00038249   -0.00076975   -0.77687291
 Singles      0.01485069   -0.05091246   -0.05865031
 Pairs        0.08140563   -0.00000000   -0.06699302
 Total        1.09663881   -0.05168220   -0.90251624
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95369721
 Nuclear energy                         0.00000000
 Kinetic energy                       103.58231167
 One electron energy                 -466.49274692
 Two electron energy                  198.63653348
 Virial quotient                       -2.58592620
 Correlation energy                    -0.90251624
 !MRCI STATE 5.1 Energy              -267.856213440948

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94343153 (Davidson, fixed reference)
 Cluster corrected energies          -267.94329056 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94343153 (Davidson, rotated reference)

 Cluster corrected energies          -267.94309259 (Pople, fixed reference)
 Cluster corrected energies          -267.94294014 (Pople, relaxed reference)
 Cluster corrected energies          -267.94309259 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95360479 (fixed)   0.95370959 (relaxed)   0.95360479 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00584747   -0.01106685   -0.01489880
 Singles      0.00671390   -0.03417479   -0.03663053
 Pairs        0.08711060   -0.86402809   -0.85774040
 Total        1.09967197   -0.90926973   -0.90926974
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.88890510
 Nuclear energy                         0.00000000
 Kinetic energy                       103.54993237
 One electron energy                 -466.27712183
 Two electron energy                  198.47894700
 Virial quotient                       -2.58617431
 Correlation energy                    -0.90926974
 !MRCI STATE 6.1 Energy              -267.798174833307

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.88880354 (Davidson, fixed reference)
 Cluster corrected energies          -267.88858379 (Davidson, relaxed reference)
 Cluster corrected energies          -267.88880354 (Davidson, rotated reference)

 Cluster corrected energies          -267.88869489 (Pople, fixed reference)
 Cluster corrected energies          -267.88845600 (Pople, relaxed reference)
 Cluster corrected energies          -267.88869489 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1146.15       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1200.22    455.93    736.23      3.53      0.22      3.91
 REAL TIME  *      1285.33 SEC
 DISK USED  *         1.18 GB (local),       33.21 GB (total)
 SF USED    *         6.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =      -267.94343171  AU                              
 SETTING HLSDIAG(8)     =      -267.94343162  AU                              
 SETTING HLSDIAG(9)     =      -267.94343124  AU                              
 SETTING HLSDIAG(10)    =      -267.94343281  AU                              
 SETTING HLSDIAG(11)    =      -267.94343153  AU                              
 SETTING HLSDIAG(12)    =      -267.88880354  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Quintet 
 Number of electrons:                 24
 Maximum number of shells:             4
 Maximum number of spin couplings:    75

 Reference space:       15 conf       15 CSFs
 N elec internal:     6430 conf    12965 CSFs
 N-1 el internal:     4400 conf    21170 CSFs
 N-2 el internal:     1040 conf    15265 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     169 (  85  84 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  12

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.79109926
     2      -266.79109926
     3      -266.79109926

 Number of blocks in overlap matrix:   446   Smallest eigenvalue:  0.47D-05
 Number of N-2 electron functions:     675
 Number of N-1 electron functions:   21170

 Number of internal configurations:                 6875
 Number of singly external configurations:       1788045
 Number of doubly external configurations:       4820916
 Total number of contracted configurations:      6615836
 Total number of uncontracted configurations:  110432450

 Diagonal Coupling coefficients finished.               Storage:   3432080 words, CPU-Time:      0.19 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1635390 words, CPU-time:      0.86 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.79109926     0.00000000    -1.04753823  0.46D-01  0.11D+00     1.98
    1     2     2     1.00000000     0.00000000  -266.79109926    -0.00000000    -1.04899215  0.46D-01  0.11D+00     1.98
    1     3     3     1.00000000     0.00000000  -266.79109926    -0.00000000    -1.04826000  0.46D-01  0.11D+00     1.98
    2     1     1     1.10369646    -0.85124936  -267.64234862    -0.85124936    -0.02207148  0.30D-02  0.16D-02    23.02
    2     2     2     1.10401140    -0.85101299  -267.64211225    -0.85101299    -0.02231885  0.30D-02  0.17D-02    23.02
    2     3     3     1.10433198    -0.85078318  -267.64188244    -0.85078318    -0.02255543  0.30D-02  0.18D-02    23.02
    3     1     1     1.08949686    -0.87269251  -267.66379177    -0.02144314    -0.00026961  0.35D-04  0.20D-04    44.11
    3     2     2     1.08950794    -0.87269244  -267.66379170    -0.02167945    -0.00026845  0.37D-04  0.19D-04    44.11
    3     3     3     1.08950278    -0.87269205  -267.66379131    -0.02190887    -0.00026947  0.36D-04  0.20D-04    44.11
    4     1     1     1.08905295    -0.87297347  -267.66407273    -0.00028096    -0.00000558  0.79D-06  0.44D-06    65.07
    4     2     2     1.08905282    -0.87297326  -267.66407252    -0.00028082    -0.00000573  0.81D-06  0.47D-06    65.07
    4     3     3     1.08905285    -0.87297312  -267.66407238    -0.00028107    -0.00000583  0.83D-06  0.49D-06    65.07
    5     1     1     1.08908713    -0.87297942  -267.66407868    -0.00000595    -0.00000013  0.82D-08  0.15D-07    86.10
    5     2     2     1.08908661    -0.87297941  -267.66407867    -0.00000614    -0.00000014  0.83D-08  0.19D-07    86.10
    5     3     3     1.08908622    -0.87297940  -267.66407865    -0.00000627    -0.00000015  0.82D-08  0.21D-07    86.10
    6     1     1     1.08909157    -0.87297956  -267.66407882    -0.00000014    -0.00000000  0.35D-09  0.58D-09   107.11
    6     2     2     1.08909156    -0.87297956  -267.66407882    -0.00000016    -0.00000001  0.37D-09  0.73D-09   107.11
    6     3     3     1.08909154    -0.87297956  -267.66407882    -0.00000017    -0.00000001  0.39D-09  0.81D-09   107.11


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.3%
 S   1.2%  13.1%
 P   1.1%  33.5%  12.5%

 Initialization:   1.1%
 Other:           36.2%

 Total CPU:      107.1 seconds
 =====================================



 Wavefunction saved on  5502.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222////00           0.9546903  -0.0000000   0.0000000
 2222222222///00/          -0.0000000  -0.0000000   0.9546903
 2222222222///0/0           0.0000000   0.9546903   0.0000000
 22222222220///0/           0.0000000   0.0000000  -0.0578939
 2222222222//00//          -0.0000000   0.0578939   0.0000000
 2222222222/0/0//           0.0000000  -0.0000000   0.0578939
 22222222220////0           0.0000000  -0.0578938   0.0000000
 2222222222/0///0          -0.0578938  -0.0000000  -0.0000000
 2222222222//0/0/           0.0578938   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.958192    0.000000
 2          -0.000000   -0.000000    0.958192
 3           0.958192    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958192   -0.000000   -0.000000
 2          -0.000000    0.958192    0.000000
 3          -0.000000    0.000000    0.958192


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95819196 (fixed)   0.95819550 (relaxed)   0.95819196 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007037   -0.00024823   -0.74794522
 Singles      0.01730390   -0.05840284   -0.06749220
 Pairs        0.07179394    0.00000000   -0.05754215
 Total        1.08916821   -0.05865107   -0.87297956
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.79109926
 Nuclear energy                         0.00000000
 Kinetic energy                       103.24495915
 One electron energy                 -461.27136335
 Two electron energy                  193.60728453
 Virial quotient                       -2.59251474
 Correlation energy                    -0.87297956
 !MRCI STATE 1.1 Energy              -267.664078824114

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.74192085 (Davidson, fixed reference)
 Cluster corrected energies          -267.74191383 (Davidson, relaxed reference)
 Cluster corrected energies          -267.74192085 (Davidson, rotated reference)

 Cluster corrected energies          -267.73945558 (Pople, fixed reference)
 Cluster corrected energies          -267.73944827 (Pople, relaxed reference)
 Cluster corrected energies          -267.73945558 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95819196 (fixed)   0.95819550 (relaxed)   0.95819196 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007037   -0.00024823   -0.00028431
 Singles      0.01730432   -0.05840302   -0.06749251
 Pairs        0.07179351   -0.81432832   -0.80520275
 Total        1.08916819   -0.87297956   -0.87297956
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.79109926
 Nuclear energy                         0.00000000
 Kinetic energy                       103.24494871
 One electron energy                 -461.27136833
 Two electron energy                  193.60728951
 Virial quotient                       -2.59251501
 Correlation energy                    -0.87297956
 !MRCI STATE 2.1 Energy              -267.664078823300

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.74192084 (Davidson, fixed reference)
 Cluster corrected energies          -267.74191381 (Davidson, relaxed reference)
 Cluster corrected energies          -267.74192084 (Davidson, rotated reference)

 Cluster corrected energies          -267.73945557 (Pople, fixed reference)
 Cluster corrected energies          -267.73944826 (Pople, relaxed reference)
 Cluster corrected energies          -267.73945557 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95819197 (fixed)   0.95819551 (relaxed)   0.95819197 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007037   -0.00024823   -0.74794492
 Singles      0.01730465   -0.05840319   -0.06749277
 Pairs        0.07179316   -0.00000000   -0.05754188
 Total        1.08916818   -0.05865142   -0.87297956
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.79109926
 Nuclear energy                         0.00000000
 Kinetic energy                       103.24494232
 One electron energy                 -461.27137283
 Two electron energy                  193.60729401
 Virial quotient                       -2.59251517
 Correlation energy                    -0.87297956
 !MRCI STATE 3.1 Energy              -267.664078822895

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.74192082 (Davidson, fixed reference)
 Cluster corrected energies          -267.74191380 (Davidson, relaxed reference)
 Cluster corrected energies          -267.74192082 (Davidson, rotated reference)

 Cluster corrected energies          -267.73945555 (Pople, fixed reference)
 Cluster corrected energies          -267.73944824 (Pople, relaxed reference)
 Cluster corrected energies          -267.73945555 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       8     1299.36       700     1000      520     2100     2140     5302     5102     5502   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1311.95    111.73    455.93    736.23      3.53      0.22      3.91
 REAL TIME  *      1406.27 SEC
 DISK USED  *         1.32 GB (local),       37.40 GB (total)
 SF USED    *         6.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -267.74192085  AU                              
 SETTING HLSDIAG(14)    =      -267.74192084  AU                              
 SETTING HLSDIAG(15)    =      -267.74192082  AU                              


         HLSDIAG
    -267.9774313
    -267.9774313
    -267.9774313
    -267.7354226
    -267.7354226
    -267.7354226
    -267.9434317
    -267.9434316
    -267.9434312
    -267.9434328
    -267.9434315
    -267.8888035
    -267.7419208
    -267.7419208
    -267.7419208
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   6

 Original energies:   -267.893729   -267.893729   -267.893729   -267.656697   -267.656697   -267.656697
 Replaced energies:   -267.977431   -267.977431   -267.977431   -267.735423   -267.735423   -267.735423

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -267.856213   -267.856213   -267.856213   -267.856213   -267.856213   -267.798175
 Replaced energies:   -267.943432   -267.943432   -267.943431   -267.943433   -267.943432   -267.888804

 Wavefunction restored from record  5502.2  Symmetry=1  S= 2.0  NSTATE=   3

 Original energies:   -267.664079   -267.664079   -267.664079
 Replaced energies:   -267.741921   -267.741921   -267.741921



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -267.97743131

 Wigner-Eckart theorem used for 40 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00   -1379.06      -1.21      13.70
                           -0.00     -47.29     121.23     -21.45       3.32      -9.71       0.00      -0.87   -1376.80     248.90

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    1379.06      -0.00      33.43     -40.48
                           47.29       0.00   -1946.52     350.70     -57.77      17.07       0.87      -0.00     -85.72      15.47

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.21     -33.43      -0.00       0.30
                         -121.23    1946.52       0.00     -16.00      11.31     355.88    1376.80      85.72       0.00     -35.22

    4   4.1  1.0  1.0       0.00       0.00       0.00   53114.78       0.00       0.00     -13.70      40.48      -0.30      -0.00
                           21.45    -350.70      16.00      -0.00      -0.09      -3.57    -248.90     -15.47      35.22       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   53114.78       0.00      -7.50     248.64       0.04      -0.13
                           -3.32      57.77     -11.31       0.09      -0.00       0.59      34.81       2.33     249.55      -2.56

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   53114.78     251.54       9.61       6.11      -0.42
                            9.71     -17.07    -355.88       3.57      -0.59      -0.00     -12.14      -0.76      -6.34       0.08

    7   1.1  1.0  0.0      -0.00    1379.06       1.21     -13.70      -7.50     251.54       0.00       0.00       0.00       0.00
                           -0.00      -0.87   -1376.80     248.90     -34.81      12.14       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0   -1379.06      -0.00     -33.43      40.48     248.64       9.61       0.00       0.00       0.00       0.00
                            0.87       0.00     -85.72      15.47      -2.33       0.76      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0      -1.21      33.43      -0.00      -0.30       0.04       6.11       0.00       0.00       0.00       0.00
                         1376.80      85.72      -0.00     -35.22    -249.55       6.34      -0.00      -0.00       0.00       0.00

   10   4.1  1.0  0.0      13.70     -40.48       0.30      -0.00      -0.13      -0.42       0.00       0.00       0.00   53114.78
                         -248.90     -15.47      35.22      -0.00       2.56      -0.08      -0.00      -0.00      -0.00       0.00

   11   5.1  1.0  0.0       7.50    -248.64      -0.04       0.13       0.00      -2.52       0.00       0.00       0.00       0.00
                           34.81       2.33     249.55      -2.56      -0.00      -0.11      -0.00      -0.00      -0.00      -0.00

   12   6.1  1.0  0.0    -251.54      -9.61      -6.11       0.42       2.52      -0.00       0.00       0.00       0.00       0.00
                          -12.14      -0.76      -6.34       0.08       0.11      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    1379.06       1.21     -13.70
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.87   -1376.80     248.90

   14   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   -1379.06      -0.00     -33.43      40.48
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.87       0.00     -85.72      15.47

   15   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -1.21      33.43      -0.00      -0.30
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    1376.80      85.72      -0.00     -35.22

   16   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      13.70     -40.48       0.30      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -248.90     -15.47      35.22      -0.00

   17   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       7.50    -248.64      -0.04       0.13
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      34.81       2.33     249.55      -2.56

   18   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -251.54      -9.61      -6.11       0.42
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -12.14      -0.76      -6.34       0.08

   19   1.1  0.0  0.0     -26.35      -2.78    1043.24      24.27      -4.02       1.25       0.00       0.00       0.00       0.00
                           96.47   -1571.72      -0.83      -1.69       1.15      37.12     749.60      44.65      16.55       2.86

   20   2.1  0.0  0.0      92.65   -1384.32       2.00      -1.40       1.18      32.70       0.00       0.00       0.00       0.00
                           12.14       2.51   -1387.51     -32.35       4.82      -1.65      -3.42     -30.48       9.05       0.16

   21   3.1  0.0  0.0       2.92      21.62       1.49       0.07       0.08      -0.51       0.00       0.00       0.00       0.00
                        -1384.97     -84.05     -12.25      -4.86     -32.38       0.76     116.73   -1958.62       7.18      -1.93

   22   4.1  0.0  0.0     -35.74       1.14    1215.25      28.26      -4.80       1.34       0.00       0.00       0.00       0.00
                          -15.64     295.46       2.47       0.38      -0.17      -6.97   -2133.03    -128.85     -60.50      -8.45

   23   5.1  0.0  0.0    1383.91      92.62      39.88       5.51      32.27      -0.93       0.00       0.00       0.00       0.00
                            4.24       0.22       6.52       0.17       0.08       0.01     -56.69       3.95    1961.50      45.62

   24   6.1  0.0  0.0     -55.63      -2.01    2294.97      86.45     -14.24       4.28       0.00       0.00       0.00       0.00
                         -142.66    2291.20      -1.45       3.88      -2.77     -87.59    3239.30     201.74      78.70      20.30

   25   1.1  2.0  2.0      35.89    -576.35       0.37       5.91      -4.22    -133.38       0.00       0.00       0.00       0.00
                           14.00       0.51    -577.43     133.14     -21.93       6.60      -0.00      -0.00      -0.00      -0.00

   26   2.1  2.0  2.0    -576.28     -35.89     -14.00      21.86     131.76      -3.20       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  2.0  2.0      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          576.43      35.90      14.00     -21.88    -131.86       3.21      -0.00      -0.00      -0.00      -0.00

   28   1.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      25.37    -407.54       0.26       4.18
                           -0.00       0.00      -0.00       0.00       0.00       0.00       9.90       0.36    -408.30      94.14

   29   2.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -407.49     -25.38      -9.90      15.46
                           14.00       0.51    -577.58     133.24     -21.95       6.60      -0.00       0.00       0.00      -0.00

   30   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           35.90    -576.58       0.37       5.92      -4.23    -133.48     407.60      25.38       9.90     -15.47

   31   1.1  2.0  0.0      14.65    -235.30       0.15       2.41      -1.72     -54.45       0.00       0.00       0.00       0.00
                           -5.71      -0.21     235.73     -54.35       8.95      -2.69      -0.00       0.00      -0.00       0.00

   32   2.1  2.0  0.0    -235.27     -14.65      -5.72       8.92      53.79      -1.31       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      16.17       0.58    -666.94     153.85

   33   3.1  2.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -235.33     -14.66      -5.72       8.93      53.83      -1.31      41.45    -665.78       0.42       6.83

   34   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      25.37    -407.54       0.26       4.18
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -9.90      -0.36     408.30     -94.14

   35   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -407.49     -25.38      -9.90      15.46
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   36   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -407.60     -25.38      -9.90      15.47

   37   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       7.50    -251.54       0.00       0.00       0.00       0.00       0.00       0.00     -26.35      92.65
                          -34.81      12.14       0.00       0.00       0.00       0.00       0.00       0.00     -96.47     -12.14

    2   2.1  1.0  1.0    -248.64      -9.61       0.00       0.00       0.00       0.00       0.00       0.00      -2.78   -1384.32
                           -2.33       0.76       0.00       0.00       0.00       0.00       0.00       0.00    1571.72      -2.51

    3   3.1  1.0  1.0      -0.04      -6.11       0.00       0.00       0.00       0.00       0.00       0.00    1043.24       2.00
                         -249.55       6.34       0.00       0.00       0.00       0.00       0.00       0.00       0.83    1387.51

    4   4.1  1.0  1.0       0.13       0.42       0.00       0.00       0.00       0.00       0.00       0.00      24.27      -1.40
                            2.56      -0.08       0.00       0.00       0.00       0.00       0.00       0.00       1.69      32.35

    5   5.1  1.0  1.0       0.00       2.52       0.00       0.00       0.00       0.00       0.00       0.00      -4.02       1.18
                            0.00      -0.11       0.00       0.00       0.00       0.00       0.00       0.00      -1.15      -4.82

    6   6.1  1.0  1.0      -2.52      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.25      32.70
                            0.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -37.12       1.65

    7   1.1  1.0  0.0       0.00       0.00      -0.00   -1379.06      -1.21      13.70       7.50    -251.54       0.00       0.00
                            0.00       0.00       0.00      -0.87   -1376.80     248.90     -34.81      12.14    -749.60       3.42

    8   2.1  1.0  0.0       0.00       0.00    1379.06      -0.00      33.43     -40.48    -248.64      -9.61       0.00       0.00
                            0.00       0.00       0.87      -0.00     -85.72      15.47      -2.33       0.76     -44.65      30.48

    9   3.1  1.0  0.0       0.00       0.00       1.21     -33.43      -0.00       0.30      -0.04      -6.11       0.00       0.00
                            0.00       0.00    1376.80      85.72       0.00     -35.22    -249.55       6.34     -16.55      -9.05

   10   4.1  1.0  0.0       0.00       0.00     -13.70      40.48      -0.30      -0.00       0.13       0.42       0.00       0.00
                            0.00       0.00    -248.90     -15.47      35.22       0.00       2.56      -0.08      -2.86      -0.16

   11   5.1  1.0  0.0   53114.78       0.00      -7.50     248.64       0.04      -0.13       0.00       2.52       0.00       0.00
                            0.00       0.00      34.81       2.33     249.55      -2.56       0.00      -0.11     -17.49       0.13

   12   6.1  1.0  0.0       0.00   53114.78     251.54       9.61       6.11      -0.42      -2.52      -0.00       0.00       0.00
                           -0.00       0.00     -12.14      -0.76      -6.34       0.08       0.11       0.00       0.38      -0.73

   13   1.1  1.0 -1.0      -7.50     251.54       0.00       0.00       0.00       0.00       0.00       0.00     -26.35      92.65
                          -34.81      12.14       0.00      47.29    -121.23      21.45      -3.32       9.71      96.47      12.14

   14   2.1  1.0 -1.0     248.64       9.61       0.00       0.00       0.00       0.00       0.00       0.00      -2.78   -1384.32
                           -2.33       0.76     -47.29      -0.00    1946.52    -350.70      57.77     -17.07   -1571.72       2.51

   15   3.1  1.0 -1.0       0.04       6.11       0.00       0.00       0.00       0.00       0.00       0.00    1043.24       2.00
                         -249.55       6.34     121.23   -1946.52      -0.00      16.00     -11.31    -355.88      -0.83   -1387.51

   16   4.1  1.0 -1.0      -0.13      -0.42       0.00       0.00       0.00   53114.78       0.00       0.00      24.27      -1.40
                            2.56      -0.08     -21.45     350.70     -16.00       0.00       0.09       3.57      -1.69     -32.35

   17   5.1  1.0 -1.0       0.00      -2.52       0.00       0.00       0.00       0.00   53114.78       0.00      -4.02       1.18
                           -0.00      -0.11       3.32     -57.77      11.31      -0.09       0.00      -0.59       1.15       4.82

   18   6.1  1.0 -1.0       2.52      -0.00       0.00       0.00       0.00       0.00       0.00   53114.78       1.25      32.70
                            0.11      -0.00      -9.71      17.07     355.88      -3.57       0.59       0.00      37.12      -1.65

   19   1.1  0.0  0.0       0.00       0.00     -26.35      -2.78    1043.24      24.27      -4.02       1.25    7462.05       0.00
                           17.49      -0.38     -96.47    1571.72       0.83       1.69      -1.15     -37.12       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00      92.65   -1384.32       2.00      -1.40       1.18      32.70       0.00    7462.07
                           -0.13       0.73     -12.14      -2.51    1387.51      32.35      -4.82       1.65      -0.00       0.00

   21   3.1  0.0  0.0       0.00       0.00       2.92      21.62       1.49       0.07       0.08      -0.51       0.00       0.00
                            1.32      46.26    1384.97      84.05      12.25       4.86      32.38      -0.76      -0.00      -0.00

   22   4.1  0.0  0.0       0.00       0.00     -35.74       1.14    1215.25      28.26      -4.80       1.34       0.00       0.00
                          -49.73       1.11      15.64    -295.46      -2.47      -0.38       0.17       6.97      -0.00      -0.00

   23   5.1  0.0  0.0       0.00       0.00    1383.91      92.62      39.88       5.51      32.27      -0.93       0.00       0.00
                           -7.73       2.12      -4.24      -0.22      -6.52      -0.17      -0.08      -0.01      -0.00      -0.00

   24   6.1  0.0  0.0       0.00       0.00     -55.63      -2.01    2294.97      86.45     -14.24       4.28       0.00       0.00
                          122.35      -2.97     142.66   -2291.20       1.45      -3.88       2.77      87.59      -0.00      -0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   1.1  2.0  1.0      -2.99     -94.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.51       4.66      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   2.1  2.0  1.0      93.17      -2.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   3.1  2.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -93.24       2.27      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   1.1  2.0  0.0       0.00       0.00      14.65    -235.30       0.15       2.41      -1.72     -54.45       0.00       0.00
                            0.00       0.00       5.71       0.21    -235.73      54.35      -8.95       2.69      -0.00      -0.00

   32   2.1  2.0  0.0       0.00       0.00    -235.27     -14.65      -5.72       8.92      53.79      -1.31       0.00       0.00
                          -25.34       7.62      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.1  2.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -4.88    -154.12     235.33      14.66       5.72      -8.93     -53.83       1.31      -0.00      -0.00

   34   1.1  2.0 -1.0      -2.99     -94.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.51      -4.66      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   35   2.1  2.0 -1.0      93.17      -2.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      14.00       0.51    -577.58     133.24     -21.95       6.60      -0.00      -0.00

   36   3.1  2.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           93.24      -2.27      35.90    -576.58       0.37       5.92      -4.23    -133.48      -0.00      -0.00

   37   1.1  2.0 -2.0       0.00       0.00      35.89    -576.35       0.37       5.91      -4.22    -133.38       0.00       0.00
                           -0.00      -0.00     -14.00      -0.51     577.43    -133.14      21.93      -6.60      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00    -576.28     -35.89     -14.00      21.86     131.76      -3.20       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00    -576.43     -35.90     -14.00      21.88     131.86      -3.21      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       2.92     -35.74    1383.91     -55.63      35.89    -576.28      -0.00       0.00       0.00       0.00
                         1384.97      15.64      -4.24     142.66     -14.00       0.00    -576.43       0.00     -14.00     -35.90

    2   2.1  1.0  1.0      21.62       1.14      92.62      -2.01    -576.35     -35.89      -0.00       0.00       0.00       0.00
                           84.05    -295.46      -0.22   -2291.20      -0.51      -0.00     -35.90      -0.00      -0.51     576.58

    3   3.1  1.0  1.0       1.49    1215.25      39.88    2294.97       0.37     -14.00      -0.00       0.00       0.00       0.00
                           12.25      -2.47      -6.52       1.45     577.43      -0.00     -14.00       0.00     577.58      -0.37

    4   4.1  1.0  1.0       0.07      28.26       5.51      86.45       5.91      21.86      -0.00       0.00       0.00       0.00
                            4.86      -0.38      -0.17      -3.88    -133.14       0.00      21.88      -0.00    -133.24      -5.92

    5   5.1  1.0  1.0       0.08      -4.80      32.27     -14.24      -4.22     131.76      -0.00       0.00       0.00       0.00
                           32.38       0.17      -0.08       2.77      21.93       0.00     131.86      -0.00      21.95       4.23

    6   6.1  1.0  1.0      -0.51       1.34      -0.93       4.28    -133.38      -3.20       0.00       0.00       0.00       0.00
                           -0.76       6.97      -0.01      87.59      -6.60       0.00      -3.21      -0.00      -6.60     133.48

    7   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      25.37    -407.49      -0.00
                         -116.73    2133.03      56.69   -3239.30       0.00       0.00       0.00      -9.90       0.00    -407.60

    8   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -407.54     -25.38      -0.00
                         1958.62     128.85      -3.95    -201.74       0.00       0.00       0.00      -0.36      -0.00     -25.38

    9   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.26      -9.90      -0.00
                           -7.18      60.50   -1961.50     -78.70       0.00       0.00       0.00     408.30      -0.00      -9.90

   10   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.18      15.46      -0.00
                            1.93       8.45     -45.62     -20.30       0.00       0.00       0.00     -94.14       0.00      15.47

   11   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.99      93.17      -0.00
                           -1.32      49.73       7.73    -122.35       0.00       0.00       0.00      15.51       0.00      93.24

   12   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -94.32      -2.26       0.00
                          -46.26      -1.11      -2.12       2.97       0.00       0.00       0.00      -4.66       0.00      -2.27

   13   1.1  1.0 -1.0       2.92     -35.74    1383.91     -55.63       0.00       0.00       0.00       0.00       0.00       0.00
                        -1384.97     -15.64       4.24    -142.66       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0 -1.0      21.62       1.14      92.62      -2.01       0.00       0.00       0.00       0.00       0.00       0.00
                          -84.05     295.46       0.22    2291.20       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0 -1.0       1.49    1215.25      39.88    2294.97       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.25       2.47       6.52      -1.45       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0 -1.0       0.07      28.26       5.51      86.45       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.86       0.38       0.17       3.88       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0 -1.0       0.08      -4.80      32.27     -14.24       0.00       0.00       0.00       0.00       0.00       0.00
                          -32.38      -0.17       0.08      -2.77       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0 -1.0      -0.51       1.34      -0.93       4.28       0.00       0.00       0.00       0.00       0.00       0.00
                            0.76      -6.97       0.01     -87.59       0.00       0.00       0.00       0.00       0.00       0.00

   19   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   3.1  0.0  0.0    7462.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   4.1  0.0  0.0       0.00    7461.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   5.1  0.0  0.0       0.00       0.00    7462.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   6.1  0.0  0.0       0.00       0.00       0.00   19451.55       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00   51688.57       0.00       0.00       0.00     -59.11      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      59.11

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00   51688.57       0.00      59.11       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00    -118.22       0.00       0.00      -0.00

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00   51688.58       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     118.22      -0.00     -59.11       0.00       0.00

   28   1.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00      59.11       0.00   51688.57       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      59.11      -0.00      -0.00      -0.00

   29   2.1  2.0  1.0       0.00       0.00       0.00       0.00     -59.11       0.00      -0.00       0.00   51688.57       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00     -59.11

   30   3.1  2.0  1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00   51688.58
                           -0.00      -0.00      -0.00      -0.00     -59.11       0.00      -0.00       0.00      59.11      -0.00

   31   1.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      72.40       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      72.40

   32   2.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -72.40       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   33   3.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -72.40       0.00      -0.00

   34   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39

    1   1.1  1.0  1.0      14.65    -235.27      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.71      -0.00     235.33       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0    -235.30     -14.65      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.21       0.00      14.66       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.15      -5.72      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -235.73       0.00       5.72       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0       2.41       8.92      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           54.35      -0.00      -8.93       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0      -1.72      53.79      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.95      -0.00     -53.83       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0     -54.45      -1.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.69      -0.00       1.31       0.00       0.00       0.00       0.00       0.00       0.00

    7   1.1  1.0  0.0       0.00       0.00       0.00      25.37    -407.49      -0.00       0.00       0.00       0.00
                            0.00     -16.17     -41.45       9.90      -0.00     407.60       0.00       0.00       0.00

    8   2.1  1.0  0.0       0.00       0.00       0.00    -407.54     -25.38      -0.00       0.00       0.00       0.00
                           -0.00      -0.58     665.78       0.36       0.00      25.38       0.00       0.00       0.00

    9   3.1  1.0  0.0       0.00       0.00       0.00       0.26      -9.90      -0.00       0.00       0.00       0.00
                            0.00     666.94      -0.42    -408.30       0.00       9.90       0.00       0.00       0.00

   10   4.1  1.0  0.0       0.00       0.00       0.00       4.18      15.46      -0.00       0.00       0.00       0.00
                           -0.00    -153.85      -6.83      94.14      -0.00     -15.47       0.00       0.00       0.00

   11   5.1  1.0  0.0       0.00       0.00       0.00      -2.99      93.17      -0.00       0.00       0.00       0.00
                           -0.00      25.34       4.88     -15.51      -0.00     -93.24       0.00       0.00       0.00

   12   6.1  1.0  0.0       0.00       0.00       0.00     -94.32      -2.26       0.00       0.00       0.00       0.00
                           -0.00      -7.62     154.12       4.66      -0.00       2.27       0.00       0.00       0.00

   13   1.1  1.0 -1.0      14.65    -235.27      -0.00       0.00       0.00       0.00      35.89    -576.28      -0.00
                           -5.71       0.00    -235.33       0.00     -14.00     -35.90      14.00      -0.00     576.43

   14   2.1  1.0 -1.0    -235.30     -14.65      -0.00       0.00       0.00       0.00    -576.35     -35.89      -0.00
                           -0.21      -0.00     -14.66      -0.00      -0.51     576.58       0.51       0.00      35.90

   15   3.1  1.0 -1.0       0.15      -5.72      -0.00       0.00       0.00       0.00       0.37     -14.00      -0.00
                          235.73      -0.00      -5.72       0.00     577.58      -0.37    -577.43       0.00      14.00

   16   4.1  1.0 -1.0       2.41       8.92      -0.00       0.00       0.00       0.00       5.91      21.86      -0.00
                          -54.35       0.00       8.93      -0.00    -133.24      -5.92     133.14      -0.00     -21.88

   17   5.1  1.0 -1.0      -1.72      53.79      -0.00       0.00       0.00       0.00      -4.22     131.76      -0.00
                            8.95       0.00      53.83      -0.00      21.95       4.23     -21.93      -0.00    -131.86

   18   6.1  1.0 -1.0     -54.45      -1.31       0.00       0.00       0.00       0.00    -133.38      -3.20       0.00
                           -2.69       0.00      -1.31      -0.00      -6.60     133.48       6.60      -0.00       3.21

   19   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   1.1  2.0  1.0       0.00     -72.40      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      72.40       0.00       0.00       0.00       0.00       0.00       0.00

   29   2.1  2.0  1.0      72.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   3.1  2.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -72.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   1.1  2.0  0.0   51688.57       0.00       0.00       0.00     -72.40      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      72.40       0.00       0.00       0.00

   32   2.1  2.0  0.0       0.00   51688.57       0.00      72.40       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   33   3.1  2.0  0.0       0.00       0.00   51688.58       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -72.40       0.00       0.00       0.00       0.00       0.00

   34   1.1  2.0 -1.0       0.00      72.40       0.00   51688.57       0.00       0.00       0.00     -59.11      -0.00
                            0.00      -0.00      72.40       0.00       0.00       0.00      -0.00      -0.00      59.11

   35   2.1  2.0 -1.0     -72.40       0.00      -0.00       0.00   51688.57       0.00      59.11       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      59.11       0.00       0.00      -0.00

   36   3.1  2.0 -1.0      -0.00       0.00       0.00       0.00       0.00   51688.58       0.00      -0.00       0.00
                          -72.40       0.00      -0.00      -0.00     -59.11       0.00     -59.11       0.00       0.00

   37   1.1  2.0 -2.0       0.00       0.00       0.00       0.00      59.11       0.00   51688.57       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      59.11       0.00       0.00       0.00

   38   2.1  2.0 -2.0       0.00       0.00       0.00     -59.11       0.00      -0.00       0.00   51688.57       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     118.22

   39   3.1  2.0 -2.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00   51688.58
                           -0.00      -0.00      -0.00     -59.11       0.00      -0.00      -0.00    -118.22       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -267.98985754    -0.01242623    -2727.24      0.00000000        0.00      0.0000
     2  -267.98985751    -0.01242620    -2727.24      0.00000003        0.01      0.0000
     3  -267.98985749    -0.01242618    -2727.23      0.00000005        0.01      0.0000
     4  -267.98985748    -0.01242617    -2727.23      0.00000006        0.01      0.0000
     5  -267.98985747    -0.01242616    -2727.23      0.00000007        0.02      0.0000
     6  -267.96860476     0.00882655     1937.20      0.02125278     4664.45      0.5783
     7  -267.96860476     0.00882655     1937.20      0.02125278     4664.45      0.5783
     8  -267.96860475     0.00882656     1937.21      0.02125279     4664.45      0.5783
     9  -267.96799730     0.00943401     2070.53      0.02186024     4797.77      0.5948
    10  -267.93999223     0.03743908     8216.93      0.04986531    10944.17      1.3569
    11  -267.93999117     0.03744015     8217.16      0.04986638    10944.40      1.3569
    12  -267.93999106     0.03744025     8217.19      0.04986648    10944.43      1.3569
    13  -267.93999098     0.03744034     8217.20      0.04986657    10944.45      1.3569
    14  -267.93999071     0.03744060     8217.26      0.04986683    10944.51      1.3569
    15  -267.88050944     0.09692187    21271.89      0.10934810    23999.13      2.9755
    16  -267.74276778     0.23466353    51502.69      0.24708976    54229.93      6.7237
    17  -267.74276778     0.23466354    51502.69      0.24708977    54229.94      6.7237
    18  -267.74276680     0.23466452    51502.91      0.24709075    54230.15      6.7237
    19  -267.74226051     0.23517080    51614.02      0.24759703    54341.27      6.7375
    20  -267.74225996     0.23517135    51614.15      0.24759758    54341.39      6.7375
    21  -267.74225992     0.23517139    51614.15      0.24759762    54341.40      6.7375
    22  -267.74225824     0.23517308    51614.52      0.24759931    54341.77      6.7375
    23  -267.74225824     0.23517308    51614.52      0.24759931    54341.77      6.7375
    24  -267.74138218     0.23604913    51806.80      0.24847536    54534.04      6.7614
    25  -267.74138218     0.23604913    51806.80      0.24847536    54534.04      6.7614
    26  -267.74138218     0.23604914    51806.80      0.24847537    54534.04      6.7614
    27  -267.74138217     0.23604914    51806.80      0.24847537    54534.04      6.7614
    28  -267.74138217     0.23604914    51806.80      0.24847537    54534.04      6.7614
    29  -267.74138217     0.23604915    51806.80      0.24847538    54534.04      6.7614
    30  -267.74138217     0.23604915    51806.80      0.24847538    54534.04      6.7614
    31  -267.73534005     0.24209126    53132.89      0.25451749    55860.13      6.9258
    32  -267.73530583     0.24212548    53140.40      0.25455171    55867.64      6.9267
    33  -267.73530490     0.24212641    53140.60      0.25455264    55867.85      6.9267
    34  -267.73530490     0.24212641    53140.61      0.25455264    55867.85      6.9267
    35  -267.73527414     0.24215717    53147.36      0.25458340    55874.60      6.9276
    36  -267.73527414     0.24215717    53147.36      0.25458340    55874.60      6.9276
    37  -267.73527242     0.24215889    53147.73      0.25458512    55874.98      6.9276
    38  -267.73527236     0.24215896    53147.75      0.25458519    55874.99      6.9276
    39  -267.73527187     0.24215944    53147.85      0.25458567    55875.10      6.9276


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.0  1.0  -0.017641979  -0.481885661  -0.013528719   0.482011946  -0.024879335   0.499723211  -0.498910021  -0.010799198
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.0  1.0  -0.008193255  -0.012868296   0.457130087   0.017689404   0.542458948   0.007822550  -0.031028294   0.360526301
                        -0.049742760   0.003775856   0.153195232  -0.007412067   0.113056732  -0.000010269  -0.019637074   0.345699447

    3    3.1  1.0  1.0   0.447151198  -0.015780734   0.151923449   0.004321364   0.065086585   0.012116220   0.007483590  -0.344850166
                        -0.083978793  -0.017136815  -0.457456220   0.000729430  -0.314137908  -0.023261121   0.000013281   0.361127234

    4    4.1  1.0  1.0  -0.002699463   0.000504480  -0.001061938  -0.000436543  -0.000552805   0.000557923  -0.000431680  -0.002235551
                         0.000526610   0.000102886   0.002729256  -0.000001997   0.001871585  -0.000159105  -0.000007173   0.002597909

    5    5.1  1.0  1.0   0.000488777   0.002918800   0.000127508  -0.002930205   0.000107067   0.003410924  -0.003428901   0.000330429
                        -0.000062244  -0.000015257  -0.000416874   0.000001980  -0.000287706   0.000022250  -0.000004069  -0.000274060

    6    6.1  1.0  1.0  -0.000180457   0.000035194   0.002759761  -0.000002229   0.003311514   0.000077773   0.000089229  -0.002607726
                        -0.000279730   0.000028292   0.001076444  -0.000045657   0.000787367  -0.000007790   0.000135544  -0.002264062

    7    1.1  1.0  0.0   0.128857033   0.000080973   0.000260968  -0.026006160  -0.323592401  -0.000003297  -0.043916679  -0.000639414
                         0.701705432  -0.027726434  -0.000776764  -0.000048950  -0.067670481  -0.017156272  -0.000068220   0.000668930

    8    2.1  1.0  0.0   0.006399372  -0.000001297   0.003364415   0.681548072  -0.006119532   0.000000010   0.705099748   0.019134410
                         0.034848501   0.000444298  -0.010014091   0.001282834  -0.001279732   0.000043797   0.001095293  -0.020017674

    9    3.1  1.0  0.0   0.004720149  -0.001989288   0.007723210  -0.001944579  -0.011614404   0.000135663   0.000180157  -0.022729783
                         0.025704102   0.681166883  -0.022987937  -0.000003661  -0.002428834   0.706036544   0.000000278   0.023779012

   10    4.1  1.0  0.0  -0.000138911   0.000012020  -0.000048252  -0.000190266   0.000344117   0.000000925   0.000220552  -0.000148994
                        -0.000756455  -0.004115769   0.000143620  -0.000000358   0.000071963   0.004812953   0.000000343   0.000155871

   11    5.1  1.0  0.0  -0.000780609  -0.000002183   0.000004360   0.000031437   0.001958677  -0.000000152  -0.000155174   0.000021319
                        -0.004250895   0.000747387  -0.000012977   0.000000059   0.000409604  -0.000792846  -0.000000241  -0.000022303

   12    6.1  1.0  0.0   0.000008574   0.000000571   0.000018247   0.004184537   0.000039398   0.000000045  -0.004877917  -0.000139914
                         0.000046691  -0.000195469  -0.000054312   0.000007876   0.000008239   0.000233901  -0.000007577   0.000146373

   13    1.1  1.0 -1.0  -0.016490966  -0.481877442  -0.010784391  -0.482008530   0.022794453   0.499723176   0.498907611  -0.000487009
                         0.006267972  -0.002814585  -0.008168427  -0.001814514   0.009969665  -0.000192040   0.001549997  -0.010788212

   14    2.1  1.0 -1.0   0.010014269  -0.012846022   0.456897130  -0.017661378  -0.542305197   0.007822554   0.031089153   0.361606275
                         0.049408359  -0.003850951   0.153888621  -0.007478606  -0.113791954   0.000007263  -0.019540582   0.344569621

   15    3.1  1.0 -1.0   0.447814375  -0.015880558  -0.155099334  -0.004324079   0.066249234   0.012125158  -0.007483595   0.345208242
                        -0.080367389   0.017044351   0.456389224   0.000713155  -0.313894772   0.023256463  -0.000009970  -0.360784957

   16    4.1  1.0 -1.0  -0.002710440   0.000505073   0.000801360   0.000436547  -0.000243503   0.000557984   0.000431700   0.002494450
                         0.000466833  -0.000099938  -0.002816803  -0.000000354   0.001936267   0.000158891  -0.000005832  -0.002350434

   17    5.1  1.0 -1.0   0.000479003   0.002918662  -0.000150059   0.002930176   0.000017195   0.003410915   0.003428897  -0.000258880
                        -0.000115473   0.000032304   0.000409298   0.000013010  -0.000306500  -0.000023561   0.000006584   0.000342452

   18    6.1  1.0 -1.0  -0.000069299   0.000035359   0.002849878   0.000002401  -0.003349524   0.000077776  -0.000089649  -0.002379358
                         0.000325593  -0.000028086   0.000808215  -0.000045648  -0.000605606   0.000007760   0.000135266  -0.002502971

   19    1.1  0.0  0.0  -0.024664165  -0.001336036   0.000632334   0.000009222  -0.053518800  -0.000000002   0.000000000   0.000000000
                         0.004529181  -0.000003902   0.000212444  -0.004899415   0.255920705   0.000000000  -0.000000019   0.000000000

   20    2.1  0.0  0.0   0.000524914   0.010547848   0.248826521  -0.000000085   0.000115403  -0.000000008   0.000000000   0.000000352
                        -0.000096392   0.000030804   0.083597737   0.000044929  -0.000551844   0.000000000  -0.000000015   0.000000337

   21    3.1  0.0  0.0   0.002907114   0.000007800  -0.000038011  -0.000494344  -0.001065471  -0.000000000  -0.000000001   0.000000010
                        -0.000533845   0.000000023  -0.000012770   0.262636536   0.005094961   0.000000000   0.000000671   0.000000010

   22    4.1  0.0  0.0  -0.257184399   0.002360958   0.000362554  -0.000006472   0.005117954  -0.000000011  -0.000000000  -0.000000000
                         0.047227821   0.000006895   0.000121807   0.003438264  -0.024473464   0.000000000   0.000000015  -0.000000000

   23    5.1  0.0  0.0   0.002166554   0.262479614  -0.009999194   0.000000123  -0.000323056   0.000000118   0.000000000  -0.000000006
                        -0.000397853   0.000766549  -0.003359409  -0.000065475   0.001544818  -0.000000000  -0.000000001  -0.000000006

   24    6.1  0.0  0.0  -0.000000253  -0.000000007   0.000000002   0.000000000  -0.000000211   0.000000013   0.000000000  -0.000000005
                         0.000000046  -0.000000000   0.000000001  -0.000000008   0.000001007  -0.000000000  -0.000000003  -0.000000005

   25    1.1  2.0  2.0   0.000814575   0.000364393   0.009729799  -0.000138696   0.009118907   0.000000056  -0.000000000  -0.000000857
                         0.004233908  -0.000003281   0.003245182  -0.000157204   0.001896358   0.000000000   0.000000046  -0.000000819

   26    2.1  2.0  2.0  -0.000077381  -0.005128712   0.000197810   0.005130287   0.000111322   0.005808890  -0.005810697   0.000038014
                        -0.000054552  -0.000001924  -0.000016705  -0.000004713  -0.000006277  -0.000006567  -0.000014190   0.000351702

   27    3.1  2.0  2.0  -0.000054566  -0.000001924  -0.000016710  -0.000004714  -0.000006278  -0.000006568  -0.000014194   0.000351795
                         0.000077401   0.005130073  -0.000197862  -0.005131648  -0.000111351  -0.005810417   0.005812225  -0.000038024

   28    1.1  2.0  1.0  -0.000077383  -0.005129080   0.000197818   0.005129424   0.000111305  -0.005809116   0.005809736  -0.000038048
                        -0.000054540  -0.000001927  -0.000016688  -0.000004715  -0.000006282   0.000006566   0.000014189  -0.000351682

   29    2.1  2.0  1.0   0.001864379   0.000182633   0.004874185   0.000115230   0.000909531   0.000270574  -0.000000354  -0.004197134
                         0.010051671  -0.000127203   0.001601155  -0.000078285   0.000184896  -0.000000052   0.000228045  -0.004011939

   30    3.1  2.0  1.0   0.005818110  -0.000123948  -0.001645099   0.000078971  -0.001712253  -0.000000052   0.000228028  -0.004011631
                        -0.001049856   0.000181880   0.004858811  -0.000254012   0.008213174  -0.000270553   0.000000354   0.004196812

   31    1.1  2.0  0.0  -0.000000004  -0.000000035  -0.000000952  -0.000000000  -0.000000000  -0.000441685   0.000000578   0.006851390
                         0.000000001  -0.000000000  -0.000000320   0.000000015   0.000000001   0.000000085  -0.000372260   0.006549078

   32    2.1  2.0  0.0  -0.000159658  -0.012565456   0.000423131   0.000000066   0.000014509  -0.004745803  -0.000000007  -0.000159751
                         0.000029319  -0.000036696   0.000142158  -0.000035205  -0.000069381   0.000000912   0.000004219  -0.000152702

   33    3.1  2.0  0.0   0.000162975  -0.000031983   0.000183089  -0.000023659  -0.000054003  -0.000004451  -0.000007371   0.000134579
                        -0.000029928  -0.000000093   0.000061512   0.012569508   0.000258238   0.000000001   0.004745308   0.000128640

   34    1.1  2.0 -1.0   0.000052957   0.005129003  -0.000147614   0.005129370   0.000099460   0.005809118   0.005809752   0.000353040
                        -0.000078475   0.000028031  -0.000132743   0.000024025   0.000050358   0.000004333   0.000003861   0.000022150

   35    2.1  2.0 -1.0   0.001828490  -0.000181887  -0.004852198   0.000114934   0.000907404  -0.000270574   0.000000354   0.004197134
                         0.010058261  -0.000128267  -0.001666598   0.000078718   0.000195067   0.000000052  -0.000228045   0.004011939

   36    3.1  2.0 -1.0  -0.005811520   0.000122884  -0.001622286   0.000078014   0.001722423  -0.000000052   0.000228027  -0.004011631
                         0.001085741   0.000182601   0.004866476   0.000254308  -0.008211047  -0.000270553   0.000000355   0.004196812

   37    1.1  2.0 -2.0  -0.000742824   0.000364368   0.009715478   0.000139287  -0.009114654   0.000000056   0.000000000  -0.000000857
                        -0.004247084   0.000005409   0.003287808  -0.000156680  -0.001916692  -0.000000000   0.000000046  -0.000000819

   38    2.1  2.0 -2.0  -0.000052951  -0.005128636   0.000147597  -0.005130233  -0.000099478   0.005808892   0.005810713   0.000353059
                         0.000078485  -0.000028032   0.000132751  -0.000024025  -0.000050360   0.000004334   0.000003863   0.000022115

   39    3.1  2.0 -2.0  -0.000078506   0.000028039  -0.000132786   0.000024032   0.000050373  -0.000004335  -0.000003864  -0.000022121
                        -0.000052965  -0.005129996   0.000147636  -0.005131594  -0.000099504   0.005810419   0.005812241   0.000353152


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.0  1.0  -0.025904108  -0.003685450   0.009488646   0.008931396   0.130957742  -0.131061557  -0.008386149   0.000472996
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.0  1.0   0.361002470   0.012954319  -0.142803896  -0.129897062   0.008855572  -0.007987463   0.116869807  -0.006556777
                        -0.141145392  -0.026736188  -0.040353973  -0.016934921   0.000047373   0.002038894  -0.045694540   0.002571088

    3    3.1  1.0  1.0   0.140830276   0.102703598  -0.027091953  -0.016591657   0.003772933  -0.001149291   0.045593003  -0.002584822
                         0.361806175   0.049100373   0.096333990   0.130251690  -0.000696517   0.000148728   0.117131224  -0.006621361

    4    4.1  1.0  1.0   0.002377262  -0.001366189   0.000444836   0.000297167  -0.000296589   0.000261319   0.000077624  -0.022129776
                         0.005370577  -0.000632736  -0.001250102  -0.001717196   0.000009214  -0.000003439   0.000175355  -0.049970995

    5    5.1  1.0  1.0  -0.000526488   0.000234500  -0.000119136  -0.000097405  -0.001736458   0.001742343  -0.000017192   0.004893070
                        -0.000831960   0.000101900   0.000195075   0.000248665  -0.000001312  -0.000000541  -0.000027164   0.007742317

    6    6.1  1.0  1.0  -0.005432742   0.000107998  -0.001900022  -0.001733736   0.000051219  -0.000041259  -0.000177444   0.049650476
                         0.002430671  -0.000390379  -0.000603799  -0.000312311   0.000001092   0.000027217   0.000079388  -0.022323712

    7    1.1  1.0  0.0   0.510556619  -0.087773341   0.065996625  -0.000033990  -0.000016340   0.011072808   0.165287145  -0.000000026
                        -0.199102803   0.182689418   0.018557098   0.000263098   0.005302743   0.000023314  -0.064458179  -0.000000066

    8    2.1  1.0  0.0   0.031796566  -0.005307678   0.003963692  -0.000370901   0.000001173  -0.185346878   0.010293788   0.000000010
                        -0.012399772   0.011047280   0.001114521   0.002870937  -0.000380707  -0.000390255  -0.004014340   0.000000026

    9    3.1  1.0  0.0   0.012404263  -0.002468615   0.001400644   0.000126397   0.000571982   0.000681685   0.004015752   0.000001034
                        -0.004837316   0.005138118   0.000393837  -0.000978366  -0.185622023   0.000001435  -0.001566051   0.000002643

   10    4.1  1.0  0.0   0.001283513   0.000197537  -0.000142457  -0.000001350  -0.000007565   0.000103710   0.000041921   0.000007942
                        -0.000500534  -0.000411148  -0.000040056   0.000010447   0.002455158   0.000000218  -0.000016348   0.000020306

   11    5.1  1.0  0.0   0.007736059   0.001163706  -0.000875802   0.000000835   0.000001279  -0.000071552   0.000252664  -0.000001310
                        -0.003016847  -0.002422110  -0.000246260  -0.000006463  -0.000415016  -0.000000151  -0.000098533  -0.000003350

   12    6.1  1.0  0.0  -0.000188062  -0.000025960   0.000019454  -0.000005035  -0.000000351  -0.002488948  -0.000006142   0.000000309
                         0.000073339   0.000054032   0.000005470   0.000038972   0.000114035  -0.000005241   0.000002395   0.000000790

   13    1.1  1.0 -1.0   0.019065249  -0.002303095  -0.008098169   0.008638152   0.130955255   0.131060395   0.006172101   0.000347489
                        -0.017536792  -0.002877203  -0.004945105   0.002269840   0.000807067   0.000551908  -0.005677382  -0.000320899

   14    2.1  1.0 -1.0  -0.361249249  -0.012777387   0.142908134  -0.129936021   0.008855696   0.007978807  -0.116949697  -0.006561305
                         0.140512580   0.026821195   0.039983259  -0.016633362   0.000007203   0.002072512   0.045489680   0.002559510

   15    3.1  1.0 -1.0   0.141288603   0.102513352  -0.027083578   0.017055481   0.003768569   0.001148654   0.045741388   0.002593237
                         0.361627440   0.049496347   0.096336345  -0.130191768   0.000719755   0.000153567   0.117073357   0.006618070

   16    4.1  1.0 -1.0   0.001886171  -0.001347725   0.000271854  -0.000149001  -0.000296527  -0.000261302   0.000061584   0.017644516
                         0.005562089  -0.000671167  -0.001298741   0.001736338  -0.000011041  -0.000004539   0.000181610   0.051725220

   17    5.1  1.0 -1.0  -0.000175736   0.000226095   0.000000013  -0.000031011  -0.001736433  -0.001742325  -0.000005736  -0.001657969
                        -0.000968743   0.000119394   0.000228577  -0.000265255  -0.000009389  -0.000007878  -0.000031632  -0.009007594

   18    6.1  1.0 -1.0   0.005643999  -0.000237276   0.001936267  -0.001756184   0.000051225   0.000041144   0.000184342   0.051621322
                        -0.001888948   0.000328267   0.000474898  -0.000138557  -0.000000776   0.000027390  -0.000061700  -0.017284587

   19    1.1  0.0  0.0  -0.000000351  -0.010234798  -0.261158959   0.000524673   0.000225772  -0.000000376   0.000000141  -0.000000006
                        -0.000000900  -0.004917320   0.928788003   0.000067784   0.000000696   0.000178372   0.000000362   0.000000002

   20    2.1  0.0  0.0   0.000000000   0.000100297   0.000142811   0.956920029  -0.000667447   0.000000156  -0.000000000  -0.000004436
                         0.000000000   0.000048188  -0.000507896   0.123626145  -0.000002057  -0.000073899  -0.000000000   0.000001735

   21    3.1  0.0  0.0   0.000000007   0.000060608   0.000048083   0.000073182  -0.000006730  -0.002031576  -0.000000000   0.000000068
                         0.000000019   0.000029119  -0.000171003   0.000009454  -0.000000021   0.964871491  -0.000000001  -0.000000027

   22    4.1  0.0  0.0  -0.000000091   0.869641090  -0.003073541  -0.000104342  -0.000218346   0.000000137   0.000000026   0.000000008
                        -0.000000234   0.417820061   0.010930767  -0.000013480  -0.000000673  -0.000065137   0.000000067  -0.000000003

   23    5.1  0.0  0.0  -0.000000004   0.000199266   0.000060513   0.000661805   0.964868412  -0.000000014   0.000000000   0.000000019
                        -0.000000009   0.000095737  -0.000215210   0.000085500   0.002973178   0.000006622   0.000000001  -0.000000008

   24    6.1  0.0  0.0  -0.111883269  -0.000000165   0.000000265   0.000000000  -0.000000004  -0.000000000   0.345667412   0.000000000
                        -0.286900749  -0.000000079  -0.000000943   0.000000000  -0.000000000   0.000000004   0.886379055  -0.000000000

   25    1.1  2.0  2.0  -0.000000748  -0.000480739  -0.003195271  -0.003475297   0.000018608   0.000000350  -0.000000500  -0.001315724
                         0.000000292   0.001014916  -0.000901115  -0.000449385   0.000008517   0.000054302   0.000000195   0.000514595

   26    2.1  2.0  2.0   0.000000000  -0.000005106  -0.000000841   0.000005840   0.001752375  -0.001752192  -0.000000000  -0.000100586
                         0.000000000  -0.000006287  -0.000002299   0.000028095  -0.000000186   0.000001739  -0.000000000   0.000040583

   27    3.1  2.0  2.0   0.000000000  -0.000006289  -0.000002300   0.000028102  -0.000000186   0.000001739  -0.000000000   0.000040584
                        -0.000000000   0.000005107   0.000000841  -0.000005841  -0.001752841   0.001752658   0.000000000   0.000100589

   28    1.1  2.0  1.0   0.000000000  -0.000005107  -0.000000840   0.000005841   0.001752535  -0.001751907   0.000000000   0.000100957
                        -0.000000000  -0.000006287  -0.000002299   0.000028090  -0.000000185   0.000001740   0.000000000  -0.000040724

   29    2.1  2.0  1.0  -0.000001169  -0.001485741  -0.000662130  -0.001739094   0.000009274  -0.000006233  -0.000000711  -0.359136941
                         0.000000456   0.003099548  -0.000187510  -0.000218875   0.000015126   0.000027148   0.000000277   0.140461647

   30    3.1  2.0  1.0  -0.000000056   0.002084867   0.000713959   0.000230659   0.000006608  -0.000027171  -0.000000036   0.139943983
                        -0.000000145   0.001005116  -0.002534398  -0.001737346   0.000009340   0.000006585  -0.000000093   0.357813368

   31    1.1  2.0  0.0  -0.000000000  -0.000000001  -0.000000000   0.000000361  -0.000000002   0.000000000  -0.000000000   0.585374865
                        -0.000000000  -0.000000000   0.000000000   0.000000047  -0.000000000  -0.000000006  -0.000000000  -0.228945306

   32    2.1  2.0  0.0   0.000000000  -0.000016176   0.000001317   0.000022819   0.004293405  -0.000000028   0.000000000   0.000083082
                         0.000000000  -0.000007772  -0.000004684   0.000002948   0.000013230   0.000013300   0.000000000  -0.000032494

   33    3.1  2.0  0.0   0.000000000   0.000007632   0.000000949  -0.000065886   0.000013686   0.000009039   0.000000000   0.000000875
                         0.000000000   0.000003667  -0.000003377  -0.000008512   0.000000042  -0.004292986   0.000000000  -0.000000342

   34    1.1  2.0 -1.0   0.000000000   0.000008099  -0.000001916  -0.000012788  -0.001752501  -0.001751884   0.000000000  -0.000101798
                         0.000000000   0.000000058   0.000001525   0.000025684  -0.000010985  -0.000009117  -0.000000000   0.000038574

   35    2.1  2.0 -1.0  -0.000001169  -0.001491331  -0.000662824   0.001737620  -0.000009367  -0.000006119  -0.000000711   0.359136943
                         0.000000456   0.003096862  -0.000185044   0.000230288   0.000015068  -0.000027174   0.000000277  -0.140461644

   36    3.1  2.0 -1.0   0.000000057  -0.002087552  -0.000711493   0.000218446  -0.000006665  -0.000027144   0.000000036   0.139943985
                         0.000000144  -0.000999527   0.002535091  -0.001738924   0.000009299  -0.000006699   0.000000093   0.357813367

   37    1.1  2.0 -2.0   0.000000748   0.000491916   0.003196657  -0.003475400   0.000018660  -0.000000579   0.000000500  -0.001315727
                        -0.000000292  -0.001009546   0.000896184  -0.000448588  -0.000008403   0.000054300  -0.000000195   0.000514589

   38    2.1  2.0 -2.0  -0.000000000  -0.000008099   0.000001916   0.000012788   0.001752341   0.001752169  -0.000000000  -0.000101430
                         0.000000000  -0.000000057  -0.000001524  -0.000025688   0.000010986   0.000009118  -0.000000000   0.000038426

   39    3.1  2.0 -2.0  -0.000000000   0.000000057   0.000001525   0.000025695  -0.000010989  -0.000009120   0.000000000  -0.000038427
                        -0.000000000  -0.000008101   0.000001916   0.000012791   0.001752807   0.001752635  -0.000000000  -0.000101433


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.0  1.0   0.007041535   0.007070106   0.000439481  -0.009766034   0.000652362  -0.009743404   0.000610333   0.000000032
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.0  1.0   0.000440530   0.000440313  -0.004325813  -0.000608175  -0.009102346  -0.000606725  -0.009803550  -0.000000241
                         0.000000001   0.000000021  -0.003444455  -0.000000000  -0.003543408   0.000000031  -0.000045873   0.000000254

    3    3.1  1.0  1.0   0.000171080   0.000171751  -0.007001684  -0.000237210  -0.003520363  -0.000236691   0.000005687  -0.000000682
                         0.000002008   0.000000000   0.008831105  -0.000000036   0.009083656   0.000000000   0.000116321  -0.000000651

    4    4.1  1.0  1.0   0.008912211   0.008940100  -0.054444091  -0.012145407  -0.029733094  -0.012127532  -0.003304137  -0.000024828
                         0.000015475   0.000000009   0.065635697  -0.000000272   0.067498668   0.000000013   0.000851771  -0.000023195

    5    5.1  1.0  1.0   0.053711532   0.053885234   0.009767102  -0.073206375   0.006580040  -0.073097294   0.002357097   0.000004224
                        -0.000002167   0.000000005  -0.010175782   0.000000038  -0.010463963   0.000000007  -0.000132064   0.000003679

    6    6.1  1.0  1.0  -0.001321079  -0.001309949   0.030208886   0.001779384   0.067761777   0.001776415   0.074434243   0.000004328
                         0.000000754  -0.000000164   0.029358707  -0.000000012   0.030227281  -0.000000235   0.000390488  -0.000006975

    7    1.1  1.0  0.0   0.000000002   0.000622615  -0.006349886   0.000000000   0.000000002   0.000858046   0.013695942  -0.000000000
                        -0.000243661   0.000000001  -0.005037702  -0.000333920  -0.000000004   0.000000001   0.000063957  -0.000000000

    8    2.1  1.0  0.0   0.000000000  -0.009999797  -0.000395459   0.000000000  -0.000000016  -0.013782782   0.000852850   0.000000000
                        -0.000008779  -0.000000014  -0.000313738  -0.000012032   0.000000041  -0.000000012   0.000003983   0.000000000

    9    3.1  1.0  0.0  -0.000000082   0.000006359  -0.000154215  -0.000000016  -0.000000018   0.000008759   0.000332708   0.000000000
                         0.010051538   0.000000000  -0.000122347   0.013778483   0.000000047   0.000000000   0.000001554   0.000000000

   10    4.1  1.0  0.0  -0.000000630  -0.003419876  -0.007889031  -0.000000120  -0.000000144  -0.004639569   0.017047185  -0.000000000
                         0.077202090  -0.000000005  -0.006258788   0.104232404   0.000000371  -0.000000004   0.000079606  -0.000000000

   11    5.1  1.0  0.0   0.000000104   0.002442634  -0.047551947   0.000000020   0.000000028   0.003312880   0.102749909   0.000000000
                        -0.012715834   0.000000004  -0.037725489  -0.017167284  -0.000000072   0.000000003   0.000479818   0.000000000

   12    6.1  1.0  0.0  -0.000000031   0.077138821   0.001155994  -0.000000006   0.000000113   0.104646792  -0.002497030   0.000000000
                         0.003825334   0.000000111   0.000917112   0.005164675  -0.000000292   0.000000090  -0.000011660   0.000000000

   13    1.1  1.0 -1.0   0.007041535  -0.007070106  -0.000099955  -0.009766034   0.000481427   0.009743404  -0.000610306  -0.000000001
                         0.000000115  -0.000000020  -0.000427963  -0.000000022   0.000440232   0.000000017  -0.000005700  -0.000000032

   14    2.1  1.0 -1.0   0.000440530  -0.000440313   0.004338041  -0.000608175  -0.009108499   0.000606725   0.009803551  -0.000000242
                         0.000000006   0.000000020   0.003429042  -0.000000001  -0.003527563   0.000000032   0.000045687   0.000000253

   15    3.1  1.0 -1.0   0.000171080  -0.000171751  -0.007007210  -0.000237210   0.003531957   0.000236691  -0.000006773   0.000000682
                        -0.000002005  -0.000000000   0.008826722   0.000000035  -0.009079155   0.000000000   0.000116262   0.000000651

   16    4.1  1.0 -1.0   0.008912211  -0.008940100  -0.051532850  -0.012145407   0.023607643   0.012127532   0.003296037   0.000024337
                        -0.000015329  -0.000000017   0.067945339   0.000000244  -0.069877080   0.000000034   0.000882592   0.000023711

   17    5.1  1.0 -1.0   0.053711532  -0.053885234   0.007687682  -0.073206375  -0.002205458   0.073097294  -0.002355761  -0.000003873
                         0.000003044  -0.000000151  -0.011825497  -0.000000206   0.012162541   0.000000132  -0.000154071  -0.000004047

   18    6.1  1.0 -1.0  -0.001321079   0.001309949  -0.035459956   0.001779384   0.070404739  -0.001776415  -0.074434644   0.000006764
                        -0.000000776  -0.000000160  -0.022739878   0.000000016   0.023420497  -0.000000238  -0.000304695  -0.000004651

   19    1.1  0.0  0.0   0.000000004   0.000000000  -0.000579502   0.000001228   0.000001752  -0.000000000  -0.000005174  -0.000000000
                         0.000000000  -0.000000000   0.000730447   0.000000000   0.000000680   0.000001486   0.001107973   0.000000000

   20    2.1  0.0  0.0  -0.000000021   0.000000000  -0.000000564  -0.000006767   0.001350282  -0.000000000   0.000000015  -0.000000053
                        -0.000000000  -0.000000001   0.000000711  -0.000000000   0.000524292   0.000022283  -0.000003237   0.000000055

   21    3.1  0.0  0.0  -0.000000014   0.000000000  -0.000000804  -0.000004477  -0.000020816  -0.000000001   0.000000014   0.000000001
                        -0.000000000  -0.000000083   0.000001014  -0.000000000  -0.000008083   0.001447267  -0.000002985  -0.000000001

   22    4.1  0.0  0.0   0.000000021  -0.000000000  -0.000689528   0.000006413  -0.000002520   0.000000000   0.000004349   0.000000000
                         0.000000000   0.000000000   0.000869131   0.000000000  -0.000000979  -0.000002932  -0.000931340  -0.000000000

   23    5.1  0.0  0.0  -0.000004679  -0.000000000  -0.000003538  -0.001448822  -0.000006252   0.000000000   0.000000015   0.000000000
                        -0.000000000   0.000000000   0.000004460  -0.000000002  -0.000002428  -0.000004588  -0.000003159  -0.000000000

   24    6.1  0.0  0.0  -0.000000000   0.000000000  -0.000002442  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000003079   0.000000000   0.000000000  -0.000000000   0.000000016  -0.000000000

   25    1.1  2.0  2.0   0.000000399   0.000000000   0.384885894  -0.000002100   0.532076747  -0.000002234   0.290537719   0.130889914
                        -0.000000004  -0.000000000   0.305349153  -0.000001794   0.206595347  -0.000001810   0.001356124  -0.137194339

   26    2.1  2.0  2.0  -0.384204479  -0.384940775   0.000000956   0.286397920   0.000001309   0.285404284   0.000002229  -0.000000086
                        -0.000002654  -0.000000072  -0.000001241   0.000000026  -0.000000459  -0.000000056   0.000000899   0.000000019

   27    3.1  2.0  2.0  -0.000002654  -0.000000072  -0.000001241   0.000000026  -0.000000459  -0.000000056   0.000000899   0.000000023
                         0.384215858   0.384952200  -0.000000956  -0.286425988  -0.000001309  -0.285432381  -0.000002229   0.000000013

   28    1.1  2.0  1.0   0.385611418   0.384933766   0.000000956   0.284363161   0.000001304   0.285427604   0.000002228  -0.000000197
                         0.000002663   0.000000072  -0.000001241   0.000000026  -0.000000468  -0.000000056   0.000000899   0.000000084

   29    2.1  2.0  1.0   0.000108860  -0.000000000   0.389547639  -0.000001046   0.265107887   0.000002231  -0.280256932  -0.324186556
                        -0.000000008   0.000001156   0.309048212  -0.000003600   0.102936395  -0.000000906  -0.001309043   0.339801471

   30    3.1  2.0  1.0  -0.000000003   0.000001156   0.003682772  -0.000001807  -0.103675123   0.000000903  -0.002665371   0.065449451
                        -0.000108459   0.000000001  -0.004641217  -0.000001054   0.267010506  -0.000004465   0.570838276   0.062441700

   31    1.1  2.0  0.0  -0.000177436   0.000000000   0.000000000  -0.000000006   0.001564291   0.000000000  -0.000000000  -0.473539783
                        -0.000000001  -0.000001888  -0.000000000   0.000000000   0.000607388  -0.000000000   0.000000000   0.496348705

   32    2.1  2.0  0.0   0.316019583  -0.000000000   0.000002385   0.698254115   0.000002394  -0.000000000  -0.000000010   0.000000204
                         0.000002580  -0.000000396  -0.000003006   0.000000801   0.000000930  -0.000000738   0.000002173  -0.000000140

   33    3.1  2.0  0.0   0.000000397  -0.000000454   0.000000035   0.000000736   0.000002069  -0.000000601  -0.000000028  -0.000000036
                         0.000000000   0.314288746  -0.000000044   0.000000000   0.000000803   0.699180813   0.000005468   0.000000037

   34    1.1  2.0 -1.0  -0.385611418   0.384933766  -0.000000991  -0.284363161  -0.000000646   0.285427604   0.000002236   0.000000136
                        -0.000003633   0.000001040   0.000001213  -0.000000627  -0.000001226   0.000000547  -0.000000876  -0.000000143

   35    2.1  2.0 -1.0  -0.000108860  -0.000000000   0.389547007   0.000001046  -0.265107466   0.000002231  -0.280256935   0.324186431
                        -0.000000009  -0.000001156   0.309049009  -0.000003600  -0.102937480   0.000000904  -0.001308424  -0.339801594

   36    3.1  2.0 -1.0   0.000000004   0.000001156  -0.003681977   0.000001807  -0.103676256   0.000000908   0.002665989   0.065449329
                        -0.000108459  -0.000000001   0.004641848  -0.000001054   0.267010067   0.000004465  -0.570838273   0.062441825

   37    1.1  2.0 -2.0   0.000000399  -0.000000000  -0.384884630  -0.000002100   0.532075886   0.000002234  -0.290537713   0.130889790
                         0.000000004  -0.000000000  -0.305350746   0.000001794   0.206597566  -0.000001812  -0.001357361  -0.137194461

   38    2.1  2.0 -2.0  -0.384204479   0.384940775   0.000000991   0.286397920   0.000000656  -0.285404284  -0.000002237  -0.000000036
                        -0.000003620   0.000001040  -0.000001213   0.000000631   0.000001222  -0.000000547   0.000000876   0.000000064

   39    3.1  2.0 -2.0   0.000003620  -0.000001040   0.000001213  -0.000000631  -0.000001222   0.000000547  -0.000000876  -0.000000008
                        -0.384215858   0.384952200   0.000000991   0.286425988   0.000000656  -0.285432381  -0.000002237  -0.000000032


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.0  1.0   0.000000124  -0.000000518  -0.000000100   0.000000122   0.000001055   0.000000933   0.000381038  -0.004248451
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.0  1.0   0.000000008  -0.000000032   0.000001529  -0.000001951   0.000000066   0.000000058  -0.005296437  -0.000264581
                         0.000000000  -0.000000000   0.000000325  -0.000000178  -0.000000000  -0.000000000   0.002090970   0.000001311

    3    3.1  1.0  1.0   0.000000003  -0.000000013   0.000000175  -0.000000040   0.000000026   0.000000023  -0.002106456  -0.000104545
                         0.000000000   0.000000000  -0.000000832   0.000000455  -0.000000000  -0.000000000  -0.005359378  -0.000000000

    4    4.1  1.0  1.0   0.000001074  -0.000002598   0.000007185  -0.000002685   0.000006176   0.000005520   0.161705518   0.081413249
                        -0.000000000  -0.000000000  -0.000028892   0.000013493  -0.000000000  -0.000000000   0.360906276  -0.000008532

    5    5.1  1.0  1.0   0.000006473  -0.000015656  -0.000001742   0.000001238   0.000037223   0.000033270  -0.035953891   0.489770527
                         0.000000000   0.000000000   0.000004640  -0.000002150   0.000000000   0.000000000  -0.055770900  -0.000004640

    6    6.1  1.0  1.0  -0.000000157   0.000000381  -0.000022631   0.000032608  -0.000000905  -0.000000809  -0.375428188  -0.011901157
                         0.000000000  -0.000000000  -0.000006304   0.000003642  -0.000000000  -0.000000000   0.168869024   0.000155296

    7    1.1  1.0  0.0   0.000000000   0.000000171  -0.000001206   0.000000000   0.000000000   0.000000040  -0.007490331  -0.000373937
                        -0.000000035  -0.000000000  -0.000000256  -0.000000000  -0.000000005   0.000000000   0.002949435   0.000000008

    8    2.1  1.0  0.0   0.000000000  -0.000002742  -0.000000075   0.000000000  -0.000000000  -0.000000644  -0.000466482   0.006005634
                        -0.000000001   0.000000000  -0.000000016  -0.000000000  -0.000000000  -0.000000000   0.000183685  -0.000000128

    9    3.1  1.0  0.0  -0.000000000   0.000000002  -0.000000029   0.000000000  -0.000000000   0.000000000  -0.000181966  -0.000003800
                         0.000001458  -0.000000000  -0.000000006  -0.000000000   0.000000194  -0.000000000   0.000071652   0.000000000

   10    4.1  1.0  0.0  -0.000000003  -0.000002025  -0.000006864   0.000000000  -0.000000000  -0.000000616   0.088683285  -0.031139716
                         0.000052218   0.000000000  -0.000001455  -0.000000000   0.000010204  -0.000000000  -0.034920431   0.000000662

   11    5.1  1.0  0.0   0.000000000   0.000001447  -0.000041372  -0.000000000   0.000000000   0.000000440   0.534486683   0.022237759
                        -0.000008600  -0.000000000  -0.000008768   0.000000000  -0.000001681   0.000000000  -0.210462492  -0.000000473

   12    6.1  1.0  0.0  -0.000000000   0.000045705   0.000001006   0.000000000   0.000000000   0.000013905  -0.012993987   0.702324366
                         0.000002587  -0.000000001   0.000000213  -0.000000000   0.000000506   0.000000000   0.005116586  -0.000014941

   13    1.1  1.0 -1.0   0.000000124   0.000000518   0.000000091   0.000000120   0.000001055  -0.000000933  -0.000278739   0.004248451
                         0.000000000  -0.000000000   0.000000040   0.000000022   0.000000000  -0.000000000   0.000259798  -0.000000181

   14    2.1  1.0 -1.0   0.000000008   0.000000032  -0.000001530  -0.000001951   0.000000066  -0.000000058   0.005300130   0.000264581
                        -0.000000000  -0.000000000  -0.000000323  -0.000000177   0.000000000  -0.000000000  -0.002081593   0.000001299

   15    3.1  1.0 -1.0   0.000000003   0.000000013   0.000000177   0.000000043   0.000000026  -0.000000023  -0.002113179   0.000104545
                        -0.000000000   0.000000000  -0.000000832  -0.000000455   0.000000000  -0.000000000  -0.005356730  -0.000000005

   16    4.1  1.0 -1.0   0.000001074   0.000002598   0.000005153  -0.000000210   0.000006176  -0.000005520   0.127779708  -0.081413249
                         0.000000000  -0.000000000  -0.000029323  -0.000013756   0.000000000  -0.000000000   0.374265094  -0.000005068

   17    5.1  1.0 -1.0   0.000006473   0.000015656  -0.000000290   0.000000831   0.000037223  -0.000033270  -0.011724274  -0.489770527
                         0.000000000  -0.000000000   0.000004948   0.000002338  -0.000000000   0.000000000  -0.065311691   0.000016199

   18    6.1  1.0 -1.0  -0.000000157  -0.000000381   0.000023243   0.000032731  -0.000000905   0.000000809   0.389772417   0.011901163
                        -0.000000000  -0.000000000   0.000003419   0.000002292   0.000000000  -0.000000000  -0.132440684   0.000154790

   19    1.1  0.0  0.0   0.000000000   0.000000000   0.000000054   0.000000000  -0.000000000  -0.000000000  -0.000005246  -0.000000000
                         0.000000000   0.000000000  -0.000000257   0.000000000  -0.000000000  -0.000000000  -0.000013324  -0.000000003

   20    2.1  0.0  0.0  -0.000000000   0.000000000  -0.000000000   0.000000220   0.000000000   0.000000000  -0.000000005   0.000000000
                        -0.000000000   0.000000003   0.000000000   0.000000020   0.000000000  -0.000000001  -0.000000013   0.000000027

   21    3.1  0.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.000000003   0.000000000   0.000000000  -0.000000008   0.000000000
                        -0.000000000   0.000000225   0.000000000  -0.000000000  -0.000000000  -0.000000065  -0.000000020   0.000001336

   22    4.1  0.0  0.0   0.000000000  -0.000000000  -0.000000011  -0.000000000  -0.000000000   0.000000000  -0.000006133   0.000000000
                         0.000000000  -0.000000000   0.000000050  -0.000000000  -0.000000000   0.000000000  -0.000015575   0.000000000

   23    5.1  0.0  0.0  -0.000000102  -0.000000000  -0.000000000  -0.000000001   0.000000103  -0.000000000  -0.000000027  -0.000000000
                        -0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000069  -0.000000005

   24    6.1  0.0  0.0  -0.000000000  -0.000000000   0.000000046   0.000000000   0.000000000  -0.000000000   0.001479358   0.000000000
                        -0.000000000  -0.000000000  -0.000000218   0.000000000  -0.000000000  -0.000000000   0.003756951   0.000000000

   25    1.1  2.0  2.0  -0.000000068   0.000000011   0.399402377  -0.360088603  -0.000000001  -0.000000003   0.000511312   0.000000157
                        -0.000000024  -0.000000037   0.084650293  -0.032705448  -0.000000043  -0.000000048  -0.000201330  -0.000000138

   26    2.1  2.0  2.0  -0.196243899  -0.240956097   0.000000018  -0.000000001   0.477672312   0.456754054   0.000000152   0.042230213
                        -0.000010325   0.000003156  -0.000000028   0.000000021   0.000000777   0.000001185   0.000000257  -0.000000825

   27    3.1  2.0  2.0  -0.000003101   0.000000177   0.000000060  -0.000000062  -0.000000822  -0.000001318   0.000000258  -0.000000826
                         0.059534426   0.010301356   0.000000015  -0.000000005   0.512939184   0.516281282  -0.000000152  -0.042270267

   28    1.1  2.0  1.0  -0.511565992  -0.502484156   0.000000005   0.000000008  -0.070595197  -0.119108415   0.000000175  -0.042287418
                        -0.000026853   0.000006664   0.000000064  -0.000000083  -0.000000089  -0.000000266   0.000000281   0.000000799

   29    2.1  2.0  1.0   0.000000178  -0.000000012  -0.399376223   0.213797045   0.000000003   0.000000002   0.000490461  -0.000000122
                         0.000000001  -0.000000009  -0.084644755   0.019418421   0.000000043   0.000000039  -0.000193114   0.000013075

   30    3.1  2.0  1.0  -0.000000046  -0.000000083   0.084639633  -0.045986910  -0.000000045  -0.000000059  -0.000005160   0.000013212
                        -0.000000041  -0.000000008  -0.399352097   0.506318870  -0.000000002   0.000000004  -0.000013122   0.000000279

   31    1.1  2.0  0.0   0.000000268  -0.000000005  -0.000000001  -0.358266071   0.000000005  -0.000000003  -0.000000005  -0.000000000
                        -0.000000056  -0.000000112  -0.000000010  -0.032539755  -0.000000001  -0.000000024  -0.000000014  -0.000021444

   32    2.1  2.0  0.0   0.626488970   0.000000002   0.000000014   0.000000008   0.086477616  -0.000000028   0.000000283   0.000000000
                         0.000032732   0.000000152  -0.000000068   0.000000001   0.000000089   0.000000035   0.000000720  -0.000000104

   33    3.1  2.0  0.0  -0.000000154   0.000008312   0.000000011  -0.000000102  -0.000000020  -0.000000291   0.000000050  -0.000000736
                        -0.000000002   0.615375844  -0.000000020  -0.000000018   0.000000048   0.145892008   0.000000128  -0.034599658

   34    1.1  2.0 -1.0   0.511565996  -0.502484153   0.000000028   0.000000020   0.070595118  -0.119108461  -0.000000063  -0.042287418
                         0.000026602   0.000006909  -0.000000046  -0.000000081   0.000000057  -0.000000209  -0.000000325   0.000001000

   35    2.1  2.0 -1.0  -0.000000179  -0.000000018  -0.399376296  -0.213797072  -0.000000003   0.000000003   0.000490452  -0.000000123
                         0.000000078   0.000000017  -0.084644398  -0.019418111   0.000000044  -0.000000036  -0.000193136  -0.000013075

   36    3.1  2.0 -1.0   0.000000031  -0.000000074  -0.084639294  -0.045986602   0.000000043  -0.000000056   0.000005172   0.000013212
                        -0.000000041   0.000000022   0.399352172   0.506318896  -0.000000002  -0.000000001   0.000013117  -0.000000279

   37    1.1  2.0 -2.0  -0.000000069  -0.000000020  -0.399402450  -0.360088630  -0.000000001   0.000000002  -0.000511308  -0.000000157
                         0.000000055  -0.000000029  -0.084649946  -0.032705141   0.000000042  -0.000000045   0.000201342  -0.000000138

   38    2.1  2.0 -2.0  -0.196243901   0.240956094  -0.000000004  -0.000000002   0.477672018  -0.456754362   0.000000064  -0.042230213
                        -0.000010181  -0.000003353  -0.000000035  -0.000000020   0.000000210  -0.000000635   0.000000292   0.000000972

   39    3.1  2.0 -2.0   0.000003120   0.000000101  -0.000000058  -0.000000060   0.000000238  -0.000000739  -0.000000292  -0.000000973
                        -0.059534425   0.010301357  -0.000000010  -0.000000009  -0.512938851   0.516281613   0.000000064  -0.042270267


   Nr   State  S   Sz       33            34            35            36            37            38            39

    1    1.1  1.0  1.0  -0.000230387  -0.004163246   0.000115688  -0.001887057   0.000133619  -0.002062719   0.000087059
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.0  1.0   0.003689515  -0.000204256  -0.001909916  -0.000114304  -0.001962533  -0.000126899  -0.000907165
                        -0.001930007   0.000000020  -0.000009274  -0.000000324  -0.000642981   0.000000025  -0.000667936

    3    3.1  1.0  1.0   0.002008108  -0.000101048   0.000000957  -0.000046177  -0.000527061  -0.000050776  -0.001242845
                         0.003850377   0.000057238   0.000036048  -0.000000012   0.001616780  -0.000001295   0.001695088

    4    4.1  1.0  1.0  -0.238123137   0.084347331  -0.022282017  -0.081014328  -0.177602490  -0.077570261  -0.345452101
                        -0.404328116  -0.006202748   0.009488345  -0.000005020   0.475830483  -0.000384699   0.450480097

    5    5.1  1.0  1.0   0.044328580   0.510373823   0.014962637  -0.488024369   0.039874422  -0.466621165   0.062331155
                         0.064100997   0.000846559  -0.001423102  -0.000002020  -0.074998548   0.000056922  -0.070399990

    6    6.1  1.0  1.0   0.447426039  -0.005596238   0.498428345   0.011019605   0.441127099   0.010977316   0.202198169
                        -0.259718703  -0.000304372   0.002889356   0.000086454   0.170626924  -0.000018751   0.183246312

    7    1.1  1.0  0.0  -0.000000962   0.000000051   0.002645432   0.000162209   0.000000003   0.000000001  -0.001356207
                        -0.000001843   0.000148903   0.000012822   0.000000001  -0.000000010  -0.000059222  -0.000995081

    8    2.1  1.0  0.0   0.000000815   0.000000002   0.000160206  -0.002678560   0.000000163   0.000000000  -0.000084403
                         0.000001561   0.000005410   0.000000776  -0.000000022  -0.000000498  -0.000002162  -0.000061928

    9    3.1  1.0  0.0   0.000037430  -0.000002085   0.000064724   0.000001586  -0.000000563  -0.000000030  -0.000033609
                         0.000071716  -0.006140683   0.000000314   0.000000000   0.000001722   0.002406329  -0.000024659

   10    4.1  1.0  0.0  -0.004045163   0.000225065   0.113364744  -0.031129751  -0.000167579  -0.000008897  -0.053999377
                        -0.007750564   0.662983752   0.000549447  -0.000000259   0.000512760   0.717437330  -0.039620643

   11    5.1  1.0  0.0   0.000668636  -0.000037066   0.682919320   0.020924277   0.000026743   0.000001468  -0.324456346
                         0.001281112  -0.109186546   0.003309918   0.000000186  -0.000081828  -0.118413656  -0.238061433

   12    6.1  1.0  0.0  -0.000097068   0.000011154  -0.015408130   0.697760809  -0.000043873  -0.000000441   0.007864842
                        -0.000185984   0.032855579  -0.000074668   0.000005844   0.000134243   0.035558677   0.005770624

   13    1.1  1.0 -1.0  -0.000131743  -0.004163245  -0.000115683   0.001887057   0.000107830  -0.002062719  -0.000026126
                         0.000189002   0.000002827  -0.000001121   0.000000032   0.000078910  -0.000000051  -0.000083047

   14    2.1  1.0 -1.0   0.003693107  -0.000204256   0.001909916   0.000114304  -0.001963472  -0.000126899   0.000909385
                        -0.001923123   0.000000119   0.000009240  -0.000000322  -0.000640109  -0.000000028   0.000664911

   15    3.1  1.0 -1.0  -0.002010429  -0.000101087  -0.000001306   0.000046177   0.000529469  -0.000050776  -0.001243992
                        -0.003849166  -0.000057169   0.000036037  -0.000000011  -0.001615993   0.000001293   0.001694247

   16    4.1  1.0 -1.0   0.195531732   0.084351528   0.022188998   0.081014328   0.137681646  -0.077570270  -0.326049497
                         0.426557376   0.006145479   0.009703886  -0.000003662  -0.488877344   0.000382776   0.464716255

   17    5.1  1.0 -1.0  -0.027237948   0.510373130  -0.014948140   0.488024369  -0.012112613  -0.466621163   0.048450074
                        -0.073020927  -0.001193076  -0.001568056   0.000006155   0.084071615  -0.000068494  -0.080584873

   18    6.1  1.0 -1.0   0.468918561  -0.005596030  -0.498432936  -0.011019606   0.456752419   0.010977316  -0.235478792
                        -0.218538893   0.000308167  -0.001942150   0.000086254   0.122816501   0.000019023  -0.137887813

   19    1.1  0.0  0.0   0.000000082  -0.000000052  -0.000006149  -0.000000000   0.000002022   0.000001291  -0.000621863
                        -0.000000043   0.000000000   0.001268590  -0.000000424   0.000000661   0.000000000   0.000847544

   20    2.1  0.0  0.0   0.000062821   0.000001258   0.000000018  -0.000000000   0.001563925  -0.000008927  -0.000000626
                        -0.000032788  -0.000000000  -0.000003630   0.000025669   0.000511119  -0.000000000   0.000000853

   21    3.1  0.0  0.0  -0.000000984   0.000000202   0.000000003  -0.000000014  -0.000024391  -0.000005070  -0.000000856
                         0.000000514  -0.000000000  -0.000000602   0.001647897  -0.000007971  -0.000000000   0.000001166

   22    4.1  0.0  0.0  -0.000000115  -0.000000283   0.000005099   0.000000000  -0.000002916   0.000006720  -0.000749711
                         0.000000060   0.000000000  -0.001052120  -0.000001526  -0.000000953   0.000000000   0.001021788

   23    5.1  0.0  0.0  -0.000001112   0.000070196   0.000000016   0.000000000  -0.000008419  -0.001645443  -0.000003543
                         0.000000581  -0.000000024  -0.000003280  -0.000005224  -0.000002752  -0.000000020   0.000004829

   24    6.1  0.0  0.0  -0.000000001   0.000000001  -0.000000003  -0.000000000   0.000000000   0.000000014  -0.000030292
                         0.000000000  -0.000000000   0.000000660   0.000000005   0.000000000   0.000000000   0.000041286

   25    1.1  2.0  2.0  -0.002801971  -0.000041482  -0.044047819   0.000072812  -0.081740408   0.000065127  -0.059600614
                         0.001462374   0.000000841  -0.000213652  -0.000014951  -0.026714520  -0.000014662  -0.043730645

   26    2.1  2.0  2.0  -0.000508067   0.044002397  -0.000072638  -0.042826652  -0.000027003  -0.040999925   0.000008598
                         0.000279471  -0.000014695   0.000006907  -0.000000423  -0.000017071  -0.000000551  -0.000009743

   27    3.1  2.0  2.0   0.000279736  -0.000014709   0.000006914  -0.000000423  -0.000017086  -0.000000552  -0.000009751
                         0.000508548  -0.044044079   0.000072704   0.042865657   0.000027028   0.041037182  -0.000008605

   28    1.1  2.0  1.0   0.000470921  -0.040860468  -0.000072801  -0.042760885  -0.000030283  -0.044998516   0.000008488
                        -0.000260929   0.000013599   0.000006883  -0.000000449  -0.000017271  -0.000000633  -0.000009621

   29    2.1  2.0  1.0   0.036246044   0.000538688   0.041525708  -0.000072577  -0.042822672   0.000034060  -0.060805006
                        -0.018917557   0.000001375   0.000201168  -0.000007472  -0.013995363  -0.000029502  -0.044614207

   30    3.1  2.0  1.0  -0.020379239   0.000000534   0.000415178   0.000007493   0.012741947  -0.000014840  -0.000858979
                        -0.039046686  -0.000580150  -0.085647392   0.000145513  -0.038987466   0.000031122   0.001170889

   31    1.1  2.0  0.0  -0.061421671  -0.000912715  -0.000000000   0.000000000   0.003125165  -0.000002394   0.000000008
                         0.032057133   0.000000310   0.000000022  -0.000000018   0.001021361  -0.000000000  -0.000000010

   32    2.1  2.0  0.0   0.000360266  -0.030859910  -0.000000086   0.000000000  -0.000077091  -0.107025040   0.000018607
                        -0.000188029   0.000010476   0.000017757  -0.000000201  -0.000025195  -0.000001327  -0.000025359

   33    3.1  2.0  0.0   0.000010271   0.000000248   0.000000866   0.000000878   0.000016977   0.000000159  -0.000001679
                        -0.000005360  -0.000000000  -0.000178255  -0.104883665   0.000005548  -0.000000000   0.000002288

   34    1.1  2.0 -1.0  -0.000483347   0.040860468  -0.000072731  -0.042760885   0.000034638   0.044998516  -0.000006631
                         0.000237121  -0.000014143  -0.000007590  -0.000000267   0.000003946   0.000000483   0.000010984

   35    2.1  2.0 -1.0  -0.036246094  -0.000538687   0.041525707  -0.000072577   0.042822750  -0.000034060  -0.060805111
                         0.018917462   0.000001741   0.000201359   0.000007472   0.013995125  -0.000029503  -0.044614064

   36    3.1  2.0 -1.0  -0.020379186  -0.000000928  -0.000415040   0.000007493   0.012741710   0.000014839   0.000859149
                        -0.039046714  -0.000580149   0.085647393  -0.000145513  -0.038987543   0.000031122  -0.001170764

   37    1.1  2.0 -2.0  -0.002801948  -0.000041482   0.044047821  -0.000072812  -0.081740563   0.000065127   0.059600843
                         0.001462418  -0.000000812   0.000213323  -0.000014951  -0.026714047   0.000014663   0.043730333

   38    2.1  2.0 -2.0  -0.000519799   0.044002397   0.000072568   0.042826652  -0.000031873  -0.040999925   0.000006714
                         0.000256992  -0.000015180   0.000007612   0.000000294  -0.000002170  -0.000000466  -0.000011125

   39    3.1  2.0 -2.0  -0.000257235   0.000015194  -0.000007620  -0.000000295   0.000002173   0.000000466   0.000011135
                        -0.000520291   0.044044079   0.000072634   0.042865657  -0.000031902  -0.041037182   0.000006720


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.0  1.0   0.031%  23.221%   0.018%  23.234%   0.062%  24.972%  24.891%   0.012%   0.067%   0.001%
    2    2.1  1.0  1.0   0.254%   0.018%  23.244%   0.037%  30.704%   0.006%   0.135%  24.949%  15.024%   0.088%
    3    3.1  1.0  1.0  20.700%   0.054%  23.235%   0.002%  10.292%   0.069%   0.006%  24.933%  15.074%   1.296%
    4    4.1  1.0  1.0   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.003%   0.000%
    5    5.1  1.0  1.0   0.000%   0.001%   0.000%   0.001%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%
    6    6.1  1.0  1.0   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%   0.004%   0.000%
    7    1.1  1.0  0.0  50.899%   0.077%   0.000%   0.068%  10.929%   0.029%   0.193%   0.000%  30.031%   4.108%
    8    2.1  1.0  0.0   0.126%   0.000%   0.011%  46.451%   0.004%   0.000%  49.717%   0.077%   0.116%   0.015%
    9    3.1  1.0  0.0   0.068%  46.399%   0.059%   0.000%   0.014%  49.849%   0.000%   0.108%   0.018%   0.003%
   10    4.1  1.0  0.0   0.000%   0.002%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   11    5.1  1.0  0.0   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.001%
   12    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   13    1.1  1.0 -1.0   0.031%  23.221%   0.018%  23.234%   0.062%  24.972%  24.891%   0.012%   0.067%   0.001%
   14    2.1  1.0 -1.0   0.254%   0.018%  23.244%   0.037%  30.704%   0.006%   0.135%  24.949%  15.024%   0.088%
   15    3.1  1.0 -1.0  20.700%   0.054%  23.235%   0.002%  10.292%   0.069%   0.006%  24.933%  15.074%   1.296%
   16    4.1  1.0 -1.0   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.003%   0.000%
   17    5.1  1.0 -1.0   0.000%   0.001%   0.000%   0.001%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%
   18    6.1  1.0 -1.0   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%   0.004%   0.000%
   19    1.1  0.0  0.0   0.063%   0.000%   0.000%   0.002%   6.836%   0.000%   0.000%   0.000%   0.000%   0.013%
   20    2.1  0.0  0.0   0.000%   0.011%   6.890%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.001%   0.000%   0.000%   6.898%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   6.837%   0.001%   0.000%   0.001%   0.063%   0.000%   0.000%   0.000%   0.000%  93.085%
   23    5.1  0.0  0.0   0.000%   6.890%   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.483%   0.000%
   25    1.1  2.0  2.0   0.002%   0.000%   0.011%   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    2.1  2.0  2.0   0.000%   0.003%   0.000%   0.003%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%
   27    3.1  2.0  2.0   0.000%   0.003%   0.000%   0.003%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%
   28    1.1  2.0  1.0   0.000%   0.003%   0.000%   0.003%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%
   29    2.1  2.0  1.0   0.010%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.001%
   30    3.1  2.0  1.0   0.003%   0.000%   0.003%   0.000%   0.007%   0.000%   0.000%   0.003%   0.000%   0.001%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.016%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.016%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.003%   0.000%   0.003%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%
   35    2.1  2.0 -1.0   0.010%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.001%
   36    3.1  2.0 -1.0   0.003%   0.000%   0.003%   0.000%   0.007%   0.000%   0.000%   0.003%   0.000%   0.001%
   37    1.1  2.0 -2.0   0.002%   0.000%   0.011%   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    2.1  2.0 -2.0   0.000%   0.003%   0.000%   0.003%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%
   39    3.1  2.0 -2.0   0.000%   0.003%   0.000%   0.003%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.0  1.0   0.009%   0.008%   1.715%   1.718%   0.007%   0.000%   0.005%   0.005%   0.000%   0.010%
    2    2.1  1.0  1.0   2.202%   1.716%   0.008%   0.007%   1.575%   0.005%   0.000%   0.000%   0.003%   0.000%
    3    3.1  1.0  1.0   1.001%   1.724%   0.001%   0.000%   1.580%   0.005%   0.000%   0.000%   0.013%   0.000%
    4    4.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.299%   0.008%   0.008%   0.727%   0.015%
    5    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.288%   0.290%   0.020%   0.536%
    6    6.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.296%   0.000%   0.000%   0.177%   0.000%
    7    1.1  1.0  0.0   0.470%   0.000%   0.003%   0.012%   3.147%   0.000%   0.000%   0.000%   0.007%   0.000%
    8    2.1  1.0  0.0   0.002%   0.001%   0.000%   3.435%   0.012%   0.000%   0.000%   0.010%   0.000%   0.000%
    9    3.1  1.0  0.0   0.000%   0.000%   3.446%   0.000%   0.002%   0.000%   0.010%   0.000%   0.000%   0.019%
   10    4.1  1.0  0.0   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.596%   0.001%   0.010%   1.086%
   11    5.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.001%   0.368%   0.029%
   12    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.595%   0.000%   0.003%
   13    1.1  1.0 -1.0   0.009%   0.008%   1.715%   1.718%   0.007%   0.000%   0.005%   0.005%   0.000%   0.010%
   14    2.1  1.0 -1.0   2.202%   1.716%   0.008%   0.007%   1.575%   0.005%   0.000%   0.000%   0.003%   0.000%
   15    3.1  1.0 -1.0   1.001%   1.724%   0.001%   0.000%   1.580%   0.005%   0.000%   0.000%   0.013%   0.000%
   16    4.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.299%   0.008%   0.008%   0.727%   0.015%
   17    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.288%   0.290%   0.020%   0.536%
   18    6.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.296%   0.000%   0.000%   0.177%   0.000%
   19    1.1  0.0  0.0  93.085%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.000%  93.098%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%   0.000%   0.000%  93.098%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%  93.098%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%  90.515%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  24.138%   0.000%
   26    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.761%  14.818%   0.000%   8.202%
   27    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.762%  14.819%   0.000%   8.204%
   28    1.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.870%  14.817%   0.000%   8.086%
   29    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.871%   0.000%   0.000%  24.726%   0.000%
   30    3.1  2.0  1.0   0.001%   0.000%   0.000%   0.000%   0.000%  14.761%   0.000%   0.000%   0.004%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%  39.508%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   9.987%   0.000%   0.000%  48.756%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   9.878%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.870%  14.817%   0.000%   8.086%
   35    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.871%   0.000%   0.000%  24.726%   0.000%
   36    3.1  2.0 -1.0   0.001%   0.000%   0.000%   0.000%   0.000%  14.761%   0.000%   0.000%   0.004%   0.000%
   37    1.1  2.0 -2.0   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  24.138%   0.000%
   38    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.761%  14.818%   0.000%   8.202%
   39    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.762%  14.819%   0.000%   8.204%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.0  1.0   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.0  1.0   0.010%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.0  1.0   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.0  1.0   0.544%   0.015%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.0  1.0   0.015%   0.534%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.0  1.0   0.551%   0.000%   0.554%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.1  1.0  0.0   0.000%   0.000%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.1  1.0  0.0   0.000%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.1  1.0  0.0   0.000%   0.002%   0.029%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    5.1  1.0  0.0   0.000%   0.001%   1.056%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    6.1  1.0  0.0   0.000%   1.095%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.1  1.0 -1.0   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.1  1.0 -1.0   0.010%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.1  1.0 -1.0   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.1  1.0 -1.0   0.544%   0.015%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    5.1  1.0 -1.0   0.015%   0.534%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    6.1  1.0 -1.0   0.551%   0.000%   0.554%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    1.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0  32.579%   0.000%   8.441%   3.595%   0.000%   0.000%  16.669%  13.073%   0.000%   0.000%
   26    2.1  2.0  2.0   0.000%   8.146%   0.000%   0.000%   3.851%   5.806%   0.000%   0.000%  22.817%  20.862%
   27    3.1  2.0  2.0   0.000%   8.147%   0.000%   0.000%   0.354%   0.011%   0.000%   0.000%  26.311%  26.655%
   28    1.1  2.0  1.0   0.000%   8.147%   0.000%   0.000%  26.170%  25.249%   0.000%   0.000%   0.498%   1.419%
   29    2.1  2.0  1.0   8.088%   0.000%   7.855%  22.056%   0.000%   0.000%  16.667%   4.609%   0.000%   0.000%
   30    3.1  2.0  1.0   8.204%   0.000%  32.586%   0.818%   0.000%   0.000%  16.665%  25.847%   0.000%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%  47.060%   0.000%   0.000%   0.000%  12.941%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%  39.249%   0.000%   0.000%   0.000%   0.748%   0.000%
   33    3.1  2.0  0.0   0.000%  48.885%   0.000%   0.000%   0.000%  37.869%   0.000%   0.000%   0.000%   2.128%
   34    1.1  2.0 -1.0   0.000%   8.147%   0.000%   0.000%  26.170%  25.249%   0.000%   0.000%   0.498%   1.419%
   35    2.1  2.0 -1.0   8.088%   0.000%   7.855%  22.056%   0.000%   0.000%  16.667%   4.609%   0.000%   0.000%
   36    3.1  2.0 -1.0   8.204%   0.000%  32.586%   0.818%   0.000%   0.000%  16.665%  25.847%   0.000%   0.000%
   37    1.1  2.0 -2.0  32.579%   0.000%   8.441%   3.595%   0.000%   0.000%  16.669%  13.073%   0.000%   0.000%
   38    2.1  2.0 -2.0   0.000%   8.146%   0.000%   0.000%   3.851%   5.806%   0.000%   0.000%  22.817%  20.862%
   39    3.1  2.0 -2.0   0.000%   8.147%   0.000%   0.000%   0.354%   0.011%   0.000%   0.000%  26.311%  26.655%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39

    1    1.1  1.0  1.0   0.000%   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.0  1.0   0.003%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.0  1.0   0.003%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.0  1.0  15.640%   0.663%  22.018%   0.715%   0.059%   0.656%  25.796%   0.602%  32.227%
    5    5.1  1.0  1.0   0.440%  23.988%   0.607%  26.048%   0.023%  23.817%   0.721%  21.774%   0.884%
    6    6.1  1.0  1.0  16.946%   0.014%  26.764%   0.003%  24.844%   0.012%  22.371%   0.012%   7.446%
    7    1.1  1.0  0.0   0.006%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    8    2.1  1.0  0.0   0.000%   0.004%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
    9    3.1  1.0  0.0   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.001%   0.000%
   10    4.1  1.0  0.0   0.908%   0.097%   0.008%  43.955%   1.285%   0.097%   0.000%  51.472%   0.449%
   11    5.1  1.0  0.0  32.997%   0.049%   0.000%   1.192%  46.639%   0.044%   0.000%   1.402%  16.195%
   12    6.1  1.0  0.0   0.020%  49.326%   0.000%   0.108%   0.024%  48.687%   0.000%   0.126%   0.010%
   13    1.1  1.0 -1.0   0.000%   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.1  1.0 -1.0   0.003%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.1  1.0 -1.0   0.003%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.1  1.0 -1.0  15.640%   0.663%  22.018%   0.715%   0.059%   0.656%  25.796%   0.602%  32.227%
   17    5.1  1.0 -1.0   0.440%  23.988%   0.607%  26.048%   0.023%  23.817%   0.721%  21.774%   0.884%
   18    6.1  1.0 -1.0  16.946%   0.014%  26.764%   0.003%  24.844%   0.012%  22.371%   0.012%   7.446%
   19    1.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   0.000%   0.000%   0.001%   0.000%   0.194%   0.000%   0.740%   0.000%   0.546%
   26    2.1  2.0  2.0   0.000%   0.178%   0.000%   0.194%   0.000%   0.183%   0.000%   0.168%   0.000%
   27    3.1  2.0  2.0   0.000%   0.179%   0.000%   0.194%   0.000%   0.184%   0.000%   0.168%   0.000%
   28    1.1  2.0  1.0   0.000%   0.179%   0.000%   0.167%   0.000%   0.183%   0.000%   0.202%   0.000%
   29    2.1  2.0  1.0   0.000%   0.000%   0.167%   0.000%   0.172%   0.000%   0.203%   0.000%   0.569%
   30    3.1  2.0  1.0   0.000%   0.000%   0.194%   0.000%   0.734%   0.000%   0.168%   0.000%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.480%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.095%   0.000%   0.000%   0.000%   1.145%   0.000%
   33    3.1  2.0  0.0   0.000%   0.120%   0.000%   0.000%   0.000%   1.100%   0.000%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.179%   0.000%   0.167%   0.000%   0.183%   0.000%   0.202%   0.000%
   35    2.1  2.0 -1.0   0.000%   0.000%   0.167%   0.000%   0.172%   0.000%   0.203%   0.000%   0.569%
   36    3.1  2.0 -1.0   0.000%   0.000%   0.194%   0.000%   0.734%   0.000%   0.168%   0.000%   0.000%
   37    1.1  2.0 -2.0   0.000%   0.000%   0.001%   0.000%   0.194%   0.000%   0.740%   0.000%   0.546%
   38    2.1  2.0 -2.0   0.000%   0.178%   0.000%   0.194%   0.000%   0.183%   0.000%   0.168%   0.000%
   39    3.1  2.0 -2.0   0.000%   0.179%   0.000%   0.194%   0.000%   0.184%   0.000%   0.168%   0.000%


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
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       8     1299.36       700     1000      520     2100     2140     5302     5102     5502   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     12002.56  10690.60    111.73    455.93    736.23      3.53      0.22      3.91
 REAL TIME  *     12279.60 SEC
 DISK USED  *         1.32 GB (local),       37.40 GB (total)
 SF USED    *         6.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -267.735271872366

              CI              CI              CI           MULTI         RHF-SCF
   -267.66407882   -267.79817483   -267.65669658   -266.79109926   -266.72069329
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
