
 Working directory              : /wrk/irikura/molpro.FiokFGNPZ2/
 Global scratch directory       : /wrk/irikura/molpro.FiokFGNPZ2/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.FiokFGNPZ2/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.00 sec
 ***,Ba SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCV5Z-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! active space (2/7) all in irrep 1
 {multi
     closed,1,3
     occ,8,3
     wf,sym=1,spin=0;state,1;
     wf,sym=1,spin=2;state,15;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=0;state,1; save,5101.2}
 hlsdiag = energd
 {ci;wf,sym=1,spin=2;state,15; save,5103.2}
 hlsdiag(2) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ecp,5101.2,5103.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ba SO-                                                                        
  64 bit mpp version                                                                     DATE: 22-Mar-24          TIME: 13:33:47  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  16000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ba   ECP ECP46MDF                 selected for group  1
 Library entry BA     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry BA     H aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  BA     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         337
 NUMBER OF SYMMETRY AOS:          247
 NUMBER OF CONTRACTIONS:          213   (  101Ag  +  112Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112
                                       131415 7 8 910111213  1415 7 8 91011121314  15
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011
                                       12131415161718192021  11121314151617181920  21111213141516171819  2021


 Eigenvalues of metric

         1 0.375E-04 0.266E-03 0.784E-03 0.784E-03 0.784E-03 0.784E-03 0.784E-03 0.135E-02
         2 0.408E-03 0.408E-03 0.408E-03 0.110E-02 0.110E-02 0.110E-02 0.398E-02 0.398E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     247.726 MB (compressed) written to integral file ( 13.7%)

     Node minimum: 10.486 MB, node maximum: 25.166 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    8182191.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    8182191      RECORD LENGTH: 524288

 Memory used in sort:       8.74 MW

 SORT1 READ   226482739. AND WROTE     1444766. INTEGRALS IN      5 RECORDS. CPU TIME:     1.02 SEC, REAL TIME:     1.07 SEC
 SORT2 READ    23241716. AND WROTE   131080516. INTEGRALS IN    880 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.14 SEC

 Node minimum:     8182191.  Node maximum:     8203388. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.26      3.06
 REAL TIME  *         4.03 SEC
 DISK USED  *        30.09 MB (local),      985.74 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -24.68510439     -24.68510439     0.00D+00     0.26D+00     0     0       0.06      0.11    start
   2      -24.96654727      -0.28144287     0.17D-01     0.15D+00     1     0       0.06      0.17    diag
   3      -25.03741811      -0.07087085     0.39D-02     0.67D-01     2     0       0.04      0.21    diag
   4      -25.08903752      -0.05161941     0.26D-02     0.47D-01     3     0       0.05      0.26    diag
   5      -25.09491156      -0.00587404     0.86D-03     0.77D-02     4     0       0.04      0.30    diag
   6      -25.09500726      -0.00009570     0.12D-03     0.13D-02     5     0       0.04      0.34    diag
   7      -25.09501691      -0.00000965     0.39D-04     0.13D-02     6     0       0.05      0.39    diag
   8      -25.09501760      -0.00000069     0.12D-04     0.30D-03     7     0       0.04      0.43    fixocc
   9      -25.09501761      -0.00000001     0.17D-05     0.19D-04     8     0       0.05      0.48    diag
  10      -25.09501761      -0.00000000     0.38D-06     0.44D-05     9     0       0.05      0.53    diag/orth
  11      -25.09501761      -0.00000000     0.96D-07     0.25D-05     9     0       0.05      0.58    diag
  12      -25.09501761      -0.00000000     0.10D-07     0.84D-07     0     0       0.05      0.63    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -25.095017612110
  RHF One-electron energy             -41.272199558960
  RHF Two-electron energy              16.177181946850
  RHF Kinetic energy                    6.695439484745
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.748076234471

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.60487     1  1  s    0.99988
    2.1     2.00000    -0.16318     1  1  s   -0.31509    1  4  s    0.47981    1  5  s    0.61878
    1.2     2.00000    -0.89696     1  1  pz   0.99987
    2.2     2.00000    -0.89696     1  1  px   0.99995
    3.2     2.00000    -0.89696     1  1  py   0.99987


 HOMO      2.1    -0.163179 =      -4.4403eV
 LUMO      4.2     0.006813 =       0.1854eV
 LUMO-HOMO         0.169992 =       4.6257eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.73       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.90      0.63      3.06
 REAL TIME  *         4.72 SEC
 DISK USED  *        32.15 MB (local),     1018.67 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:     202 (   93  109)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             1
 Number of CSFs:              28   (49 determinants, 49 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              21   (21 determinants, 21 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.111D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.430D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.533D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.401D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.199D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 5 3 2 6   4 3 5 1 2 6 4 3 5 8  12 911 714151310 1 2   4 6 3 5 1 2 4 6 3 5
                                       11 9 81213101514 7 2   6 4 3 5 111 912 815  14 71310 2 3 6 4 5 9  1112 81415 71310 111
                                        912 81514 71310 3 6   4 5 2 6 3 5 4 2 1 1   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 1 2 3   1 2 5 4 610 8 9 7 3   1 21112151719211314  162018 3 2 1 810 5 4
                                        6 7 9 9 7 810 5 4 6   3 2 1 6 5 410 8 9 7  19211316141715111218  20 3 2 110 8 9 7 5 4
                                        6 3 2 1111219201816  1415171321 5 410 8 6   9 7 9 7 5 410 8 6 3   1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  1078  ( 7 closed/active, 420 closed/virtual, 0 active/active, 651 active/virtual )
 Total number of variables:    1442
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   15   28   10    -24.87914921     -25.04923523   -0.17008602    0.05726371 0.00003969 0.00000000  0.21E+01      0.85
   2    8   14    0    -25.01327131     -25.02464986   -0.01137855    0.10076255 0.00003560 0.00000000  0.52E+00      1.55
   3    7   12    0    -25.02477246     -25.02478367   -0.00001121    0.00232475 0.00000344 0.00000000  0.15E-01      2.23
   4    5   10    0    -25.02478369     -25.02478369   -0.00000000    0.00000625 0.00000001 0.00000000  0.76E-04      2.76

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.31E-08)
                       Final energy:    -25.02478369
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.101309012929
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.62015446
 One electron energy                           -41.25010192
 Two electron energy                            16.14879290
 Virial ratio                                    4.79165005
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061314490370
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80609936
 One electron energy                           -41.50965346
 Two electron energy                            16.44833897
 Virial ratio                                    4.68218464
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061314490366
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80609936
 One electron energy                           -41.50965345
 Two electron energy                            16.44833896
 Virial ratio                                    4.68218464
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061314490114
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80609935
 One electron energy                           -41.50965344
 Two electron energy                            16.44833895
 Virial ratio                                    4.68218464
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061314490078
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80609935
 One electron energy                           -41.50965344
 Two electron energy                            16.44833895
 Virial ratio                                    4.68218464
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061314489961
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.80609935
 One electron energy                           -41.50965343
 Two electron energy                            16.44833894
 Virial ratio                                    4.68218464
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.005052617137
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155841
 One electron energy                           -41.91406454
 Two electron energy                            16.90901192
 Virial ratio                                    4.54603212
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.005052617136
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155841
 One electron energy                           -41.91406454
 Two electron energy                            16.90901192
 Virial ratio                                    4.54603212
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.005052617123
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406455
 Two electron energy                            16.90901193
 Virial ratio                                    4.54603212
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.005052617116
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.90901194
 Virial ratio                                    4.54603211
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.005052617112
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.90901194
 Virial ratio                                    4.54603211
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.005052617107
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.90901195
 Virial ratio                                    4.54603211
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.005052617088
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155843
 One electron energy                           -41.91406458
 Two electron energy                            16.90901197
 Virial ratio                                    4.54603211
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -24.984429768803
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406455
 Two electron energy                            16.92963478
 Virial ratio                                    4.54310754
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -24.984429768744
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.92963479
 Virial ratio                                    4.54310753
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -24.984429768722
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.05155842
 One electron energy                           -41.91406456
 Two electron energy                            16.92963479
 Virial ratio                                    4.54310753
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     3.023276198150
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.976723801850
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999999999
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     6.135074624776
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.990444194053
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.420118922197
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     6.579961938059
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     4.000000000000
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.009554837818
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     3.864922662440
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000000000011
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999999999980
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.999999999997
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     2.976541784785
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999999999997
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.023458215215
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     5.863697561692
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.626631239736
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.976528226450
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.023478496483
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     4.000000000000
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     6.373349819853
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     4.136305188823
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.999999999989
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.000000000020
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999999990
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     4.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000182017065
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000003
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999817982935
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000001
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.001227813533
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     4.382924566211
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     4.603352851353
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     5.396559565458
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     4.000000000000
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     5.617095342329
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     3.998772148737
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     1.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000000000013
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    12.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>    12.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>    12.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>    12.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>     2.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 2 4 3 6 5 1 1 3   5 4 2 6 3 4 2 5 6 1  1310141512 9 8 711 3   5 4 2 6 1 3 5 4 2 6
                                       1310141512 8 9 711 5   3 4 6 2 11310141512   8 9 711 5 3 4 6 213  10141512 8 9 711 113
                                       10141512 8 9 711 5 3   4 6 2 5 3 4 6 2 1 1   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 7 9 4 810 6 5 1   2 32018151714161113  211912 1 2 3 7 9 4 8
                                        610 5 9 710 8 4 6 5   1 2 3 9 710 8 4 6 5  18201517141613112119  12 1 2 3 9 710 8 4 6
                                        5 1 2 3201815171416  1311211912 9 710 8 4   6 5 9 710 8 4 6 5 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.52893     1  1  s    0.99199
    2.1     0.43189    -0.01817     1  1  s   -0.31956    1  4  s    0.46628    1  5  s    0.64651
    3.1     0.31353     0.06711     1  1  d0   0.26403    1  2  d0   0.34582    1  3  d0   0.34989
    4.1     0.31353     0.06711     1  1  d1+  0.26403    1  2  d1+  0.34582    1  3  d1+  0.34989
    5.1     0.31353     0.06711     1  1  d2-  0.26403    1  2  d2-  0.34582    1  3  d2-  0.34989
    6.1     0.31353     0.06711     1  1  d1-  0.26403    1  2  d1-  0.34582    1  3  d1-  0.34989
    7.1     0.31353     0.06711     1  1  d2+  0.26403    1  2  d2+  0.34582    1  3  d2+  0.34989
    8.1     0.00044     0.20720     1  1  s    0.57173    1  2  s    1.29254    1  3  s   -1.49382    1  4  s   -1.86571
                                    1  5  s    1.63554    1  6  s    0.26500
    1.2     2.00000    -0.83299     1  1  px   0.98740
    2.2     2.00000    -0.83299     1  1  py   0.98740
    3.2     2.00000    -0.83299     1  1  pz   0.98740
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000        0.97688943
 0000200       -0.09094538
 0000020       -0.09094538
 0020000       -0.09094538
 0200000       -0.09094538
 0002000       -0.09094538
 
 Energy:      -25.10130901
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 0a000a0        0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a000a00       -0.00000030      0.00000000      0.00000006     -0.00000000      0.99991759      0.00000000     -0.00000000
 a0a0000        0.00000001     -0.00000000      0.99991759     -0.00000096     -0.00000006     -0.00000000     -0.00000000
 a00a000        0.99991759     -0.00000000     -0.00000001      0.00000000      0.00000030     -0.00000000     -0.00000000
 a0000a0        0.00000000      0.00674513      0.00000096      0.99989484     -0.00000000     -0.00000000     -0.00000000
 aa00000        0.00000000      0.99989484     -0.00000001     -0.00674513     -0.00000000      0.00000000      0.00000000
 0a0a000        0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.01752000      0.00000232
 000a0a0        0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.44714495      0.00002199
 00a0a00        0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.89428991      0.00004398
 00aa000       -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000419      0.04371687
 000aa00       -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000483
 00a00a0        0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000039     -0.00000301
 0000aa0       -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00004345      0.87591955
 0aa0000       -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000022      0.00000453
 0a00a00       -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00002266      0.48047244
 
 Energy:      -25.06131449    -25.06131449    -25.06131449    -25.06131449    -25.06131449    -25.00505262    -25.00505262

 State:              8               9              10              11              12              13              14
 0a000a0        0.00000000     -0.00000000      1.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 a000a00        0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a0a0000        0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a00a000       -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 a0000a0        0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 aa00000        0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0a0a000        0.00000271      0.00000004     -0.00000000      0.00000641      0.99984651     -0.00000000     -0.00000000
 000a0a0        0.00000022     -0.00000001      0.00000000      0.00000107      0.00783518     -0.00000001      0.00000000
 00a0a00        0.00000044     -0.00000003     -0.00000000      0.00000215      0.01567037      0.00000001     -0.00000000
 00aa000        0.00001100     -0.00000791      0.00000000      0.89335818     -0.00000590      0.44721360     -0.00000147
 000aa00        0.06851536      0.89179911      0.00000000      0.00000681     -0.00000022     -0.00000147     -0.44721360
 00a00a0        0.88060961      0.15661006      0.00000000     -0.00000931     -0.00000240      0.00000147      0.44721359
 0000aa0        0.00000608     -0.00000660      0.00000000      0.18101087     -0.00000396     -0.44721359      0.00000147
 0aa0000       -0.46886283      0.42446159      0.00000000      0.00000931      0.00000126      0.00000255      0.77459667
 0a00a00       -0.00000284      0.00000076      0.00000000     -0.41127391      0.00000112      0.77459667     -0.00000255
 
 Energy:      -25.00505262    -25.00505262    -25.00505262    -25.00505262    -25.00505262    -24.98442977    -24.98442977

 State:             15
 0a000a0       -0.00000000
 a000a00        0.00000000
 a0a0000        0.00000000
 a00a000        0.00000000
 a0000a0        0.00000000
 aa00000        0.00000000
 0a0a000        0.00000000
 000a0a0        0.89442719
 00a0a00       -0.44721359
 00aa000        0.00000001
 000aa00        0.00000000
 00a00a0       -0.00000000
 0000aa0       -0.00000001
 0aa0000       -0.00000000
 0a00a00        0.00000001
 
 Energy:      -24.98442977
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.09       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.70       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.30      2.40      0.63      3.06
 REAL TIME  *         7.96 SEC
 DISK USED  *        49.87 MB (local),        1.27 GB (total)
 SF USED    *        53.79 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.10130901   -0.0
    -25.06131449    6.0
    -25.06131449    6.0
    -25.06131449    6.0
    -25.06131449    6.0
    -25.06131449    6.0
    -25.00505262   12.0
    -25.00505262   12.0
    -25.00505262   12.0
    -25.00505262   12.0
    -25.00505262   12.0
    -25.00505262   12.0
    -25.00505262   12.0
    -24.98442977    2.0
    -24.98442977    2.0
    -24.98442977    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       28 conf       28 CSFs
 N elec internal:     1946 conf     3696 CSFs
 N-1 el internal:      889 conf     2205 CSFs
 N-2 el internal:      309 conf      967 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:     202 (  93 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  28

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.10130901

 Number of blocks in overlap matrix:    49   Smallest eigenvalue:  0.41D+00
 Number of N-2 electron functions:      73
 Number of N-1 electron functions:    2205

 Number of internal configurations:                 2142
 Number of singly external configurations:        219849
 Number of doubly external configurations:        743706
 Total number of contracted configurations:       965697
 Total number of uncontracted configurations:   10093740

 Diagonal Coupling coefficients finished.               Storage:  544314 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1122032 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.10130901    -0.00000000    -0.26575258  0.44D-01  0.61D-01     0.13
    2     1     1     1.08652876    -0.25529324   -25.35660225    -0.25529324    -0.00604073  0.14D-02  0.11D-02     0.79
    3     1     1     1.08701724    -0.26154265   -25.36285166    -0.00624941    -0.00026891  0.43D-04  0.84D-04     1.45
    4     1     1     1.08870259    -0.26182019   -25.36312921    -0.00027755    -0.00001817  0.34D-05  0.80D-05     2.12
    5     1     1     1.08928048    -0.26184031   -25.36314933    -0.00002012    -0.00000197  0.14D-06  0.11D-05     2.76
    6     1     1     1.08947692    -0.26184271   -25.36315172    -0.00000239    -0.00000025  0.14D-07  0.11D-06     3.41
    7     1     1     1.08952198    -0.26184297   -25.36315199    -0.00000027    -0.00000002  0.14D-08  0.54D-08     4.04


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.0%
 S   2.5%   8.7%
 P   1.2%  12.6%  13.1%

 Initialization:   2.0%
 Other:           57.9%

 Total CPU:        4.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222           0.9342747
 2/00000\222          -0.0860177
 20020000222          -0.0782904
 20000200222          -0.0782904
 20002000222          -0.0782904
 20000020222          -0.0782904
 20200000222          -0.0782904


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95405260 (fixed)   0.95508683 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00836873   -0.01340937   -0.01419998
 Singles      0.03243304   -0.07295090   -0.07413048
 Pairs        0.05783812   -0.17548270   -0.17351251
 Total        1.09863989   -0.26184297   -0.26184297
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.10130901
 Nuclear energy                         0.00000000
 Kinetic energy                         6.93723926
 One electron energy                  -41.23862192
 Two electron energy                   15.87546993
 Virial quotient                       -3.65608725
 Correlation energy                    -0.26184297
 !MRCI STATE 1.1 Energy               -25.363151986206

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.38898015 (Davidson, fixed reference)
 Cluster corrected energies           -25.38835747 (Davidson, relaxed reference)

 Cluster corrected energies           -25.38507584 (Pople, fixed reference)
 Cluster corrected energies           -25.38451678 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.09       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       11.07       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.44      4.13      2.40      0.63      3.06
 REAL TIME  *        12.72 SEC
 DISK USED  *        59.23 MB (local),        1.42 GB (total)
 SF USED    *       163.48 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG        =       -25.38835747  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       21 conf       21 CSFs
 N elec internal:     1855 conf     5355 CSFs
 N-1 el internal:      889 conf     3521 CSFs
 N-2 el internal:      239 conf     1471 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:     202 (  93 109 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.06131449
     2       -25.06131449
     3       -25.06131449
     4       -25.06131449
     5       -25.06131449
     6       -25.00505262
     7       -25.00505262
     8       -25.00505262
     9       -25.00505262
    10       -25.00505262
    11       -25.00505262
    12       -25.00505262
    13       -24.98442977
    14       -24.98442977
    15       -24.98442977

 Number of blocks in overlap matrix:   273   Smallest eigenvalue:  0.86D+00
 Number of N-2 electron functions:     289
 Number of N-1 electron functions:    3521

 Number of internal configurations:                 2961
 Number of singly external configurations:        351981
 Number of doubly external configurations:       2956416
 Total number of contracted configurations:      3311358
 Total number of uncontracted configurations:   15345736

 Diagonal Coupling coefficients finished.               Storage: 1504254 words, CPU-Time:      0.14 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1190349 words, CPU-time:      0.12 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.06131449     0.00000000    -0.27139980  0.47D-01  0.60D-01     0.63
    1     2     2     1.00000000     0.00000000   -25.06131449    -0.00000000    -0.27137885  0.47D-01  0.60D-01     0.63
    1     3     3     1.00000000     0.00000000   -25.06131449     0.00000000    -0.27142967  0.47D-01  0.60D-01     0.63
    1     4     4     1.00000000     0.00000000   -25.06131449     0.00000000    -0.27133151  0.47D-01  0.60D-01     0.63
    1     5     5     1.00000000     0.00000000   -25.06131449     0.00000000    -0.27143600  0.47D-01  0.60D-01     0.63
    1     6     6     1.00000000     0.00000000   -25.00505262    -0.00000000    -0.28365402  0.45D-01  0.69D-01     0.63
    1     7     7     1.00000000     0.00000000   -25.00505262     0.00000000    -0.28353744  0.45D-01  0.69D-01     0.63
    1     8     8     1.00000000     0.00000000   -25.00505262    -0.00000000    -0.28352473  0.45D-01  0.69D-01     0.63
    1     9     9     1.00000000     0.00000000   -25.00505262     0.00000000    -0.28366398  0.45D-01  0.69D-01     0.63
    1    10    10     1.00000000     0.00000000   -25.00505262     0.00000000    -0.28353103  0.45D-01  0.69D-01     0.63
    1    11    11     1.00000000     0.00000000   -25.00505262     0.00000000    -0.28367596  0.45D-01  0.69D-01     0.63
    1    12    12     1.00000000     0.00000000   -25.00505262    -0.00000000    -0.28368712  0.45D-01  0.69D-01     0.63
    1    13    13     1.00000000     0.00000000   -24.98442977    -0.00000000    -0.29070669  0.46D-01  0.79D-01     0.63
    1    14    14     1.00000000     0.00000000   -24.98442977    -0.00000000    -0.29066381  0.46D-01  0.79D-01     0.63
    1    15    15     1.00000000     0.00000000   -24.98442977    -0.00000000    -0.29057865  0.46D-01  0.78D-01     0.63
    2     1     1     1.08611270    -0.25504597   -25.31636046    -0.25504597    -0.00637807  0.18D-02  0.10D-02    35.12
    2     2     2     1.08611758    -0.25503917   -25.31635366    -0.25503917    -0.00638340  0.18D-02  0.10D-02    35.12
    2     3     3     1.08613227    -0.25503449   -25.31634898    -0.25503449    -0.00639061  0.18D-02  0.10D-02    35.12
    2     4     4     1.08612734    -0.25502895   -25.31634344    -0.25502895    -0.00639377  0.18D-02  0.10D-02    35.12
    2     5     5     1.08612599    -0.25502452   -25.31633901    -0.25502452    -0.00639828  0.18D-02  0.10D-02    35.12
    2     6     6     1.08692653    -0.25676304   -25.26181566    -0.25676304    -0.00739262  0.26D-02  0.13D-02    35.12
    2     7     7     1.08692891    -0.25676081   -25.26181342    -0.25676081    -0.00739571  0.26D-02  0.13D-02    35.12
    2     8     8     1.08694160    -0.25675035   -25.26180297    -0.25675035    -0.00740603  0.27D-02  0.13D-02    35.12
    2     9     9     1.08693658    -0.25674489   -25.26179750    -0.25674489    -0.00741751  0.26D-02  0.13D-02    35.12
    2    10    10     1.08693909    -0.25673992   -25.26179254    -0.25673992    -0.00742362  0.26D-02  0.13D-02    35.12
    2    11    11     1.08693799    -0.25673978   -25.26179240    -0.25673978    -0.00742367  0.26D-02  0.13D-02    35.12
    2    12    12     1.08695629    -0.25672735   -25.26177997    -0.25672735    -0.00743691  0.27D-02  0.13D-02    35.12
    2    13    13     1.09216750    -0.26026830   -25.24469807    -0.26026830    -0.00868328  0.34D-02  0.18D-02    35.12
    2    14    14     1.09221662    -0.26023382   -25.24466359    -0.26023382    -0.00872257  0.34D-02  0.18D-02    35.12
    2    15    15     1.09221751    -0.26022790   -25.24465767    -0.26022790    -0.00872932  0.34D-02  0.19D-02    35.12
    3     1     1     1.08778682    -0.26171331   -25.32302780    -0.00666733    -0.00025549  0.64D-04  0.44D-04    68.89
    3     2     2     1.08778200    -0.26171304   -25.32302753    -0.00667388    -0.00025552  0.64D-04  0.44D-04    68.89
    3     3     3     1.08779098    -0.26171289   -25.32302738    -0.00667840    -0.00025607  0.64D-04  0.44D-04    68.89
    3     4     4     1.08778371    -0.26171257   -25.32302706    -0.00668362    -0.00025604  0.65D-04  0.44D-04    68.89
    3     5     5     1.08778340    -0.26171249   -25.32302698    -0.00668796    -0.00025610  0.65D-04  0.44D-04    68.89
    3     6     6     1.08809242    -0.26422274   -25.26927536    -0.00745970    -0.00028398  0.60D-04  0.57D-04    68.89
    3     7     7     1.08808936    -0.26422262   -25.26927524    -0.00746182    -0.00028379  0.60D-04  0.56D-04    68.89
    3     8     8     1.08808976    -0.26422256   -25.26927518    -0.00747221    -0.00028388  0.60D-04  0.56D-04    68.89
    3     9     9     1.08809061    -0.26422238   -25.26927500    -0.00747750    -0.00028422  0.60D-04  0.56D-04    68.89
    3    10    10     1.08809051    -0.26422231   -25.26927492    -0.00748239    -0.00028443  0.60D-04  0.57D-04    68.89
    3    11    11     1.08809116    -0.26422230   -25.26927492    -0.00748252    -0.00028448  0.60D-04  0.57D-04    68.89
    3    12    12     1.08809631    -0.26422176   -25.26927438    -0.00749441    -0.00028524  0.60D-04  0.57D-04    68.89
    3    13    13     1.09251165    -0.26891546   -25.25334522    -0.00864715    -0.00037115  0.66D-04  0.11D-03    68.89
    3    14    14     1.09252660    -0.26891378   -25.25334355    -0.00867996    -0.00037332  0.66D-04  0.11D-03    68.89
    3    15    15     1.09252585    -0.26891369   -25.25334346    -0.00868578    -0.00037340  0.66D-04  0.11D-03    68.89
    4     1     1     1.08981450    -0.26201269   -25.32332718    -0.00029939    -0.00002021  0.16D-04  0.18D-05   103.04
    4     2     2     1.08981367    -0.26201268   -25.32332717    -0.00029964    -0.00002023  0.16D-04  0.18D-05   103.04
    4     3     3     1.08981492    -0.26201265   -25.32332714    -0.00029975    -0.00002025  0.16D-04  0.18D-05   103.04
    4     4     4     1.08981439    -0.26201262   -25.32332711    -0.00030005    -0.00002027  0.16D-04  0.19D-05   103.04
    4     5     5     1.08981444    -0.26201262   -25.32332711    -0.00030013    -0.00002028  0.16D-04  0.19D-05   103.04
    4     6     6     1.08978362    -0.26454923   -25.26960184    -0.00032649    -0.00001878  0.15D-04  0.19D-05   103.04
    4     7     7     1.08978486    -0.26454922   -25.26960184    -0.00032660    -0.00001875  0.15D-04  0.19D-05   103.04
    4     8     8     1.08978312    -0.26454917   -25.26960179    -0.00032662    -0.00001877  0.15D-04  0.19D-05   103.04
    4     9     9     1.08978311    -0.26454917   -25.26960179    -0.00032679    -0.00001878  0.15D-04  0.19D-05   103.04
    4    10    10     1.08978418    -0.26454914   -25.26960176    -0.00032683    -0.00001877  0.15D-04  0.19D-05   103.04
    4    11    11     1.08978455    -0.26454908   -25.26960169    -0.00032678    -0.00001880  0.15D-04  0.19D-05   103.04
    4    12    12     1.08978445    -0.26454907   -25.26960169    -0.00032731    -0.00001880  0.15D-04  0.19D-05   103.04
    4    13    13     1.09481135    -0.26935387   -25.25378364    -0.00043841    -0.00003065  0.18D-04  0.92D-05   103.04
    4    14    14     1.09481172    -0.26935387   -25.25378364    -0.00044009    -0.00003065  0.18D-04  0.92D-05   103.04
    4    15    15     1.09481156    -0.26935386   -25.25378363    -0.00044017    -0.00003054  0.18D-04  0.92D-05   103.04
    5     1     1     1.09071185    -0.26204031   -25.32335480    -0.00002762    -0.00000243  0.79D-06  0.39D-06   137.12
    5     2     2     1.09071172    -0.26204031   -25.32335480    -0.00002763    -0.00000243  0.79D-06  0.40D-06   137.12
    5     3     3     1.09071156    -0.26204030   -25.32335479    -0.00002766    -0.00000243  0.79D-06  0.40D-06   137.12
    5     4     4     1.09071138    -0.26204030   -25.32335479    -0.00002768    -0.00000244  0.80D-06  0.40D-06   137.12
    5     5     5     1.09071125    -0.26204030   -25.32335479    -0.00002768    -0.00000244  0.80D-06  0.40D-06   137.12
    5     6     6     1.09045887    -0.26457328   -25.26962589    -0.00002405    -0.00000180  0.59D-06  0.32D-06   137.12
    5     7     7     1.09045767    -0.26457326   -25.26962588    -0.00002404    -0.00000181  0.60D-06  0.32D-06   137.12
    5     8     8     1.09045756    -0.26457325   -25.26962587    -0.00002408    -0.00000182  0.60D-06  0.33D-06   137.12
    5     9     9     1.09045749    -0.26457325   -25.26962587    -0.00002408    -0.00000182  0.60D-06  0.33D-06   137.12
    5    10    10     1.09045743    -0.26457324   -25.26962586    -0.00002410    -0.00000183  0.60D-06  0.33D-06   137.12
    5    11    11     1.09045764    -0.26457324   -25.26962586    -0.00002416    -0.00000183  0.60D-06  0.33D-06   137.12
    5    12    12     1.09045762    -0.26457324   -25.26962586    -0.00002417    -0.00000183  0.60D-06  0.33D-06   137.12
    5    13    13     1.09583810    -0.26939380   -25.25382356    -0.00003993    -0.00000362  0.81D-06  0.14D-05   137.12
    5    14    14     1.09583802    -0.26939379   -25.25382356    -0.00003993    -0.00000363  0.83D-06  0.14D-05   137.12
    5    15    15     1.09583792    -0.26939379   -25.25382356    -0.00003993    -0.00000363  0.83D-06  0.14D-05   137.12
    6     1     1     1.09082313    -0.26204339   -25.32335788    -0.00000308    -0.00000018  0.57D-07  0.27D-07   171.20
    6     2     2     1.09082322    -0.26204339   -25.32335788    -0.00000309    -0.00000018  0.57D-07  0.27D-07   171.20
    6     3     3     1.09082298    -0.26204339   -25.32335788    -0.00000309    -0.00000018  0.57D-07  0.27D-07   171.20
    6     4     4     1.09082305    -0.26204339   -25.32335788    -0.00000309    -0.00000018  0.57D-07  0.27D-07   171.20
    6     5     5     1.09082295    -0.26204339   -25.32335788    -0.00000309    -0.00000018  0.57D-07  0.27D-07   171.20
    6     6     6     1.09050095    -0.26457547   -25.26962809    -0.00000219    -0.00000013  0.39D-07  0.26D-07   171.20
    6     7     7     1.09050084    -0.26457547   -25.26962809    -0.00000221    -0.00000013  0.39D-07  0.27D-07   171.20
    6     8     8     1.09050086    -0.26457547   -25.26962809    -0.00000222    -0.00000013  0.39D-07  0.27D-07   171.20
    6     9     9     1.09050085    -0.26457547   -25.26962809    -0.00000222    -0.00000013  0.39D-07  0.27D-07   171.20
    6    10    10     1.09050082    -0.26457547   -25.26962809    -0.00000223    -0.00000013  0.39D-07  0.27D-07   171.20
    6    11    11     1.09050076    -0.26457547   -25.26962809    -0.00000223    -0.00000013  0.39D-07  0.27D-07   171.20
    6    12    12     1.09050076    -0.26457547   -25.26962809    -0.00000223    -0.00000013  0.39D-07  0.27D-07   171.20
    6    13    13     1.09595339    -0.26939821   -25.25382798    -0.00000441    -0.00000038  0.67D-07  0.19D-06   171.20
    6    14    14     1.09595363    -0.26939821   -25.25382798    -0.00000442    -0.00000038  0.68D-07  0.19D-06   171.20
    6    15    15     1.09595359    -0.26939821   -25.25382798    -0.00000442    -0.00000038  0.68D-07  0.19D-06   171.20
    7     1     1     1.09086394    -0.26204358   -25.32335807    -0.00000019    -0.00000001  0.10D-07  0.18D-08   205.19
    7     2     2     1.09086382    -0.26204358   -25.32335807    -0.00000019    -0.00000001  0.10D-07  0.18D-08   205.19
    7     3     3     1.09086392    -0.26204358   -25.32335807    -0.00000019    -0.00000001  0.10D-07  0.18D-08   205.19
    7     4     4     1.09086387    -0.26204358   -25.32335807    -0.00000019    -0.00000001  0.10D-07  0.18D-08   205.19
    7     5     5     1.09086387    -0.26204358   -25.32335807    -0.00000019    -0.00000001  0.10D-07  0.18D-08   205.19
    7     6     6     1.09051639    -0.26457561   -25.26962823    -0.00000014    -0.00000001  0.77D-08  0.23D-08   205.19
    7     7     7     1.09051630    -0.26457561   -25.26962823    -0.00000014    -0.00000001  0.78D-08  0.23D-08   205.19
    7     8     8     1.09051626    -0.26457561   -25.26962823    -0.00000014    -0.00000001  0.78D-08  0.23D-08   205.19
    7     9     9     1.09051629    -0.26457561   -25.26962823    -0.00000014    -0.00000001  0.78D-08  0.23D-08   205.19
    7    10    10     1.09051623    -0.26457561   -25.26962823    -0.00000015    -0.00000001  0.78D-08  0.23D-08   205.19
    7    11    11     1.09051627    -0.26457561   -25.26962823    -0.00000015    -0.00000001  0.78D-08  0.23D-08   205.19
    7    12    12     1.09051625    -0.26457561   -25.26962823    -0.00000015    -0.00000001  0.78D-08  0.23D-08   205.19
    7    13    13     1.09600657    -0.26939866   -25.25382843    -0.00000045    -0.00000006  0.11D-07  0.37D-07   205.19
    7    14    14     1.09600657    -0.26939866   -25.25382843    -0.00000045    -0.00000006  0.11D-07  0.37D-07   205.19
    7    15    15     1.09600665    -0.26939866   -25.25382843    -0.00000045    -0.00000006  0.11D-07  0.37D-07   205.19
    8     1     1     1.09088003    -0.26204360   -25.32335809    -0.00000002    -0.00000000  0.74D-09  0.34D-09   239.38
    8     2     2     1.09087999    -0.26204360   -25.32335809    -0.00000002    -0.00000000  0.75D-09  0.34D-09   239.38
    8     3     3     1.09088000    -0.26204360   -25.32335809    -0.00000002    -0.00000000  0.75D-09  0.34D-09   239.38
    8     4     4     1.09088002    -0.26204360   -25.32335809    -0.00000002    -0.00000000  0.74D-09  0.34D-09   239.38
    8     5     5     1.09087999    -0.26204360   -25.32335809    -0.00000002    -0.00000000  0.75D-09  0.34D-09   239.38
    8     6     6     1.09052395    -0.26457563   -25.26962824    -0.00000001    -0.00000000  0.43D-09  0.37D-09   239.38
    8     7     7     1.09052398    -0.26457563   -25.26962824    -0.00000001    -0.00000000  0.42D-09  0.36D-09   239.38
    8     8     8     1.09052391    -0.26457563   -25.26962824    -0.00000001    -0.00000000  0.43D-09  0.37D-09   239.38
    8     9     9     1.09052391    -0.26457563   -25.26962824    -0.00000001    -0.00000000  0.43D-09  0.37D-09   239.38
    8    10    10     1.09052393    -0.26457563   -25.26962824    -0.00000001    -0.00000000  0.43D-09  0.37D-09   239.38
    8    11    11     1.09052391    -0.26457563   -25.26962824    -0.00000001    -0.00000000  0.43D-09  0.37D-09   239.38
    8    12    12     1.09052393    -0.26457563   -25.26962824    -0.00000001    -0.00000000  0.42D-09  0.37D-09   239.38
    8    13    13     1.09603994    -0.26939874   -25.25382851    -0.00000008    -0.00000001  0.27D-08  0.52D-08   239.38
    8    14    14     1.09603994    -0.26939874   -25.25382851    -0.00000008    -0.00000001  0.27D-08  0.52D-08   239.38
    8    15    15     1.09603995    -0.26939874   -25.25382851    -0.00000008    -0.00000001  0.27D-08  0.52D-08   239.38


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.5%   3.4%
 P   0.4%  10.9%  13.3%

 Initialization:   0.1%
 Other:           70.8%

 Total CPU:      239.4 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 20/000/0222          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.9555773  -0.0000000  -0.0000000
                      -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 20/0/000222           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.9555773   0.0000000   0.0000000   0.0000000
                      -0.0000000  -0.0001933  -0.0000000   0.0000000  -0.0000000  -0.0000000
 2/000/00222          -0.0000000  -0.0000000   0.0000000   0.0000000   0.9547344   0.0000000  -0.0000000   0.0000000  -0.0000000
                      -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2/0/0000222          -0.0000000  -0.0000000   0.9547344  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                       0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2/00/000222           0.9547344  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                      -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2//00000222           0.0000000   0.9547342   0.0000000   0.0005639   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                       0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 2/0000/0222          -0.0000000  -0.0005639   0.0000000   0.9547342  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                      -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 200/0/00222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0001729  -0.0000000   0.0000000   0.0000000
                       0.0000000   0.8546943  -0.0000000   0.0000000   0.0000000  -0.4261396
 2000/0/0222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000864   0.0000000   0.0000000   0.0000000
                       0.0000000   0.4273471   0.0000000   0.0000000   0.0000000   0.8522794
 200//000222          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.8482688   0.0000000
                      -0.0000000  -0.0000000   0.1046057  -0.0000000   0.4261397   0.0000000
 20000//0222          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.1107832   0.0000000
                       0.0000000   0.0000000   0.8474842  -0.0000000  -0.4261397   0.0000000
 200/00/0222           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.1720689
                       0.8371945  -0.0000000   0.0000000   0.4261397   0.0000000  -0.0000000
 2000//00222          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.7675929
                       0.3759037   0.0000000  -0.0000000  -0.4261397   0.0000000  -0.0000000
 20//0000222           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.5425140
                      -0.2663264  -0.0000000   0.0000000   0.7380956  -0.0000000  -0.0000000
 20/00/00222           0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.4257875  -0.0000000
                      -0.0000000  -0.0000000   0.4289011   0.0000000   0.7380956  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.954454    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.954428   -0.000000   -0.007002   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.954454    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000    0.007002   -0.000000    0.954428    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.954454   -0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.016548    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.955434    0.000000    0.000000    0.000000
 7           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.955577
             0.000000    0.000000    0.000000   -0.000000    0.000000
 8           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.070503    0.000000   -0.000000   -0.000000
             0.952973    0.000000    0.000000    0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.353326    0.887856   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 10         -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.887856    0.353326   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 11         -0.000000    0.000000    0.000000    0.000000    0.000000    0.955434    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.016548   -0.000000   -0.000000   -0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.952973    0.000000   -0.000000    0.000000
             0.070503   -0.000000   -0.000000    0.000000    0.000000
 13         -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.952877    0.000000
 14          0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.952877   -0.000000    0.000000
 15         -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.952877

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954454   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.954454   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.954454    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.954454   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.954454    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.955577   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.955577   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.955577   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 9           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.955577   -0.000000
             0.000000    0.000000    0.000000   -0.000000    0.000000
 10         -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.955577
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 11         -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.955577   -0.000000   -0.000000   -0.000000   -0.000000
 12         -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.955577    0.000000    0.000000    0.000000
 13          0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.952877    0.000000    0.000000
 14          0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.952877   -0.000000
 15         -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.952877


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95445375 (fixed)   0.95486396 (relaxed)   0.95445375 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626700   -0.01138931   -0.17559913
 Singles      0.03733379   -0.07092776   -0.07352662
 Pairs        0.05411579    0.00000000   -0.01291786
 Total        1.09771657   -0.08231707   -0.26204360
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06131449
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12150634
 One electron energy                  -41.53539955
 Two electron energy                   16.21204146
 Virial quotient                       -3.55589911
 Correlation energy                    -0.26204360
 !MRCI STATE 1.1 Energy               -25.323358091209

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34896409 (Davidson, fixed reference)
 Cluster corrected energies           -25.34871700 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34896409 (Davidson, rotated reference)

 Cluster corrected energies           -25.34350929 (Pople, fixed reference)
 Cluster corrected energies           -25.34330574 (Pople, relaxed reference)
 Cluster corrected energies           -25.34350929 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95442809 (fixed)   0.95486398 (relaxed)   0.95445377 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626700   -0.01138931   -0.17559913
 Singles      0.03733377   -0.07092776   -0.07352661
 Pairs        0.05411576    0.00000000   -0.01291786
 Total        1.09771653   -0.08231707   -0.26204360
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06131449
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12150628
 One electron energy                  -41.53539929
 Two electron energy                   16.21204120
 Virial quotient                       -3.55589914
 Correlation energy                    -0.26204360
 !MRCI STATE 2.1 Energy               -25.323358091185

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34896408 (Davidson, fixed reference)
 Cluster corrected energies           -25.34871699 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34896408 (Davidson, rotated reference)

 Cluster corrected energies           -25.34350928 (Pople, fixed reference)
 Cluster corrected energies           -25.34330573 (Pople, relaxed reference)
 Cluster corrected energies           -25.34350928 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95445377 (fixed)   0.95486397 (relaxed)   0.95445377 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626700   -0.01138931   -0.17559913
 Singles      0.03733376   -0.07092776   -0.07352661
 Pairs        0.05411578    0.00000000   -0.01291785
 Total        1.09771654   -0.08231707   -0.26204360
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06131449
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12150631
 One electron energy                  -41.53539936
 Two electron energy                   16.21204127
 Virial quotient                       -3.55589913
 Correlation energy                    -0.26204360
 !MRCI STATE 3.1 Energy               -25.323358090958

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34896409 (Davidson, fixed reference)
 Cluster corrected energies           -25.34871699 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34896409 (Davidson, rotated reference)

 Cluster corrected energies           -25.34350928 (Pople, fixed reference)
 Cluster corrected energies           -25.34330573 (Pople, relaxed reference)
 Cluster corrected energies           -25.34350928 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95442807 (fixed)   0.95486396 (relaxed)   0.95445375 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626700   -0.01138931   -0.17559912
 Singles      0.03733379   -0.07092776   -0.07352662
 Pairs        0.05411578    0.00000000   -0.01291786
 Total        1.09771657   -0.08231708   -0.26204360
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06131449
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12150632
 One electron energy                  -41.53539952
 Two electron energy                   16.21204143
 Virial quotient                       -3.55589913
 Correlation energy                    -0.26204360
 !MRCI STATE 4.1 Energy               -25.323358090942

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34896409 (Davidson, fixed reference)
 Cluster corrected energies           -25.34871700 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34896409 (Davidson, rotated reference)

 Cluster corrected energies           -25.34350929 (Pople, fixed reference)
 Cluster corrected energies           -25.34330574 (Pople, relaxed reference)
 Cluster corrected energies           -25.34350929 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95445377 (fixed)   0.95486398 (relaxed)   0.95445377 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626700   -0.01138931   -0.17559913
 Singles      0.03733376   -0.07092776   -0.07352662
 Pairs        0.05411578   -0.00000000   -0.01291786
 Total        1.09771654   -0.08231707   -0.26204360
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06131449
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12150630
 One electron energy                  -41.53539933
 Two electron energy                   16.21204124
 Virial quotient                       -3.55589914
 Correlation energy                    -0.26204360
 !MRCI STATE 5.1 Energy               -25.323358090814

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34896408 (Davidson, fixed reference)
 Cluster corrected energies           -25.34871699 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34896408 (Davidson, rotated reference)

 Cluster corrected energies           -25.34350928 (Pople, fixed reference)
 Cluster corrected energies           -25.34330573 (Pople, relaxed reference)
 Cluster corrected energies           -25.34350928 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95543398 (fixed)   0.95557727 (relaxed)   0.95557727 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00422994   -0.00887476   -0.18241459
 Singles      0.03180333   -0.06592584   -0.06788233
 Pairs        0.05910353   -0.00000000   -0.01427871
 Total        1.09513681   -0.07480060   -0.26457563
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00505262
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30445283
 One electron energy                  -41.84721278
 Two electron energy                   16.57758454
 Virial quotient                       -3.45948271
 Correlation energy                    -0.26457563
 !MRCI STATE 6.1 Energy               -25.269628244657

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29479912 (Davidson, fixed reference)
 Cluster corrected energies           -25.29479912 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29479912 (Davidson, rotated reference)

 Cluster corrected energies           -25.28941232 (Pople, fixed reference)
 Cluster corrected energies           -25.28941232 (Pople, relaxed reference)
 Cluster corrected energies           -25.28941232 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95557726 (fixed)   0.95557726 (relaxed)   0.95557726 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00422994   -0.00887476   -0.18241458
 Singles      0.03180337   -0.06592585   -0.06788234
 Pairs        0.05910352   -0.00000000   -0.01427871
 Total        1.09513684   -0.07480060   -0.26457563
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00505262
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30445290
 One electron energy                  -41.84721330
 Two electron energy                   16.57758505
 Virial quotient                       -3.45948267
 Correlation energy                    -0.26457563
 !MRCI STATE 7.1 Energy               -25.269628244578

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29479913 (Davidson, fixed reference)
 Cluster corrected energies           -25.29479913 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29479913 (Davidson, rotated reference)

 Cluster corrected energies           -25.28941232 (Pople, fixed reference)
 Cluster corrected energies           -25.28941232 (Pople, relaxed reference)
 Cluster corrected energies           -25.28941232 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95297290 (fixed)   0.95557729 (relaxed)   0.95557729 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00422994   -0.00887475   -0.18241459
 Singles      0.03180329   -0.06592584   -0.06788233
 Pairs        0.05910354    0.00000000   -0.01427871
 Total        1.09513677   -0.07480060   -0.26457563
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00505262
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30445269
 One electron energy                  -41.84721207
 Two electron energy                   16.57758383
 Virial quotient                       -3.45948277
 Correlation energy                    -0.26457563
 !MRCI STATE 8.1 Energy               -25.269628244536

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29479911 (Davidson, fixed reference)
 Cluster corrected energies           -25.29479911 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29479911 (Davidson, rotated reference)

 Cluster corrected energies           -25.28941231 (Pople, fixed reference)
 Cluster corrected energies           -25.28941231 (Pople, relaxed reference)
 Cluster corrected energies           -25.28941231 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.88785621 (fixed)   0.95557729 (relaxed)   0.95557729 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00422994   -0.00887475   -0.18241459
 Singles      0.03180328   -0.06592585   -0.06788233
 Pairs        0.05910354    0.00000000   -0.01427871
 Total        1.09513677   -0.07480060   -0.26457563
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00505262
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30445266
 One electron energy                  -41.84721199
 Two electron energy                   16.57758375
 Virial quotient                       -3.45948279
 Correlation energy                    -0.26457563
 !MRCI STATE 9.1 Energy               -25.269628244508

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29479911 (Davidson, fixed reference)
 Cluster corrected energies           -25.29479911 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29479911 (Davidson, rotated reference)

 Cluster corrected energies           -25.28941231 (Pople, fixed reference)
 Cluster corrected energies           -25.28941231 (Pople, relaxed reference)
 Cluster corrected energies           -25.28941231 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.88785620 (fixed)   0.95557728 (relaxed)   0.95557728 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00422994   -0.00887475   -0.18241459
 Singles      0.03180331   -0.06592584   -0.06788233
 Pairs        0.05910354   -0.00000000   -0.01427871
 Total        1.09513679   -0.07480060   -0.26457563
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00505262
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30445272
 One electron energy                  -41.84721239
 Two electron energy                   16.57758414
 Virial quotient                       -3.45948276
 Correlation energy                    -0.26457563
 !MRCI STATE 10.1 Energy              -25.269628244476

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29479912 (Davidson, fixed reference)
 Cluster corrected energies           -25.29479912 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29479912 (Davidson, rotated reference)

 Cluster corrected energies           -25.28941231 (Pople, fixed reference)
 Cluster corrected energies           -25.28941231 (Pople, relaxed reference)
 Cluster corrected energies           -25.28941231 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95543400 (fixed)   0.95557729 (relaxed)   0.95557729 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00422994   -0.00887475   -0.18241457
 Singles      0.03180329   -0.06592585   -0.06788233
 Pairs        0.05910354   -0.00000001   -0.01427872
 Total        1.09513677   -0.07480062   -0.26457563
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00505262
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30445268
 One electron energy                  -41.84721207
 Two electron energy                   16.57758383
 Virial quotient                       -3.45948278
 Correlation energy                    -0.26457563
 !MRCI STATE 11.1 Energy              -25.269628244432

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29479911 (Davidson, fixed reference)
 Cluster corrected energies           -25.29479911 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29479911 (Davidson, rotated reference)

 Cluster corrected energies           -25.28941231 (Pople, fixed reference)
 Cluster corrected energies           -25.28941231 (Pople, relaxed reference)
 Cluster corrected energies           -25.28941231 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95297289 (fixed)   0.95557728 (relaxed)   0.95557728 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00422994   -0.00887475   -0.18241458
 Singles      0.03180331   -0.06592585   -0.06788234
 Pairs        0.05910354   -0.00000000   -0.01427871
 Total        1.09513678   -0.07480060   -0.26457563
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00505262
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30445269
 One electron energy                  -41.84721230
 Two electron energy                   16.57758406
 Virial quotient                       -3.45948277
 Correlation energy                    -0.26457563
 !MRCI STATE 12.1 Energy              -25.269628244427

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29479912 (Davidson, fixed reference)
 Cluster corrected energies           -25.29479912 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29479912 (Davidson, rotated reference)

 Cluster corrected energies           -25.28941231 (Pople, fixed reference)
 Cluster corrected energies           -25.28941231 (Pople, relaxed reference)
 Cluster corrected energies           -25.28941231 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95287727 (fixed)   0.95287727 (relaxed)   0.95287727 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00484640   -0.00997233   -0.18624896
 Singles      0.03059321   -0.06557873   -0.06702536
 Pairs        0.06591217   -0.00000000   -0.01612442
 Total        1.10135179   -0.07555106   -0.26939874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98442977
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29948254
 One electron energy                  -41.81342962
 Two electron energy                   16.55960111
 Virial quotient                       -3.45967380
 Correlation energy                    -0.26939874
 !MRCI STATE 13.1 Energy              -25.253828510167

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28113255 (Davidson, fixed reference)
 Cluster corrected energies           -25.28113255 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28113255 (Davidson, rotated reference)

 Cluster corrected energies           -25.27535378 (Pople, fixed reference)
 Cluster corrected energies           -25.27535378 (Pople, relaxed reference)
 Cluster corrected energies           -25.27535378 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95287727 (fixed)   0.95287727 (relaxed)   0.95287727 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00484640   -0.00997233   -0.18624896
 Singles      0.03059322   -0.06557873   -0.06702536
 Pairs        0.06591217    0.00000000   -0.01612442
 Total        1.10135179   -0.07555106   -0.26939874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98442977
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29948259
 One electron energy                  -41.81342975
 Two electron energy                   16.55960124
 Virial quotient                       -3.45967378
 Correlation energy                    -0.26939874
 !MRCI STATE 14.1 Energy              -25.253828510155

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28113255 (Davidson, fixed reference)
 Cluster corrected energies           -25.28113255 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28113255 (Davidson, rotated reference)

 Cluster corrected energies           -25.27535378 (Pople, fixed reference)
 Cluster corrected energies           -25.27535378 (Pople, relaxed reference)
 Cluster corrected energies           -25.27535378 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95287727 (fixed)   0.95287727 (relaxed)   0.95287727 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00484640   -0.00997233   -0.01024009
 Singles      0.03059320   -0.06557873   -0.06702536
 Pairs        0.06591220   -0.19384769   -0.19213328
 Total        1.10135179   -0.26939874   -0.26939874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.98442977
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29948231
 One electron energy                  -41.81342965
 Two electron energy                   16.55960114
 Virial quotient                       -3.45967391
 Correlation energy                    -0.26939874
 !MRCI STATE 15.1 Energy              -25.253828510120

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28113256 (Davidson, fixed reference)
 Cluster corrected energies           -25.28113256 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28113256 (Davidson, rotated reference)

 Cluster corrected energies           -25.27535378 (Pople, fixed reference)
 Cluster corrected energies           -25.27535378 (Pople, relaxed reference)
 Cluster corrected energies           -25.27535378 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.09       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      392.11       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       265.87    255.42      4.13      2.40      0.63      3.06
 REAL TIME  *       299.37 SEC
 DISK USED  *       440.27 MB (local),        7.37 GB (total)
 SF USED    *         3.61 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =       -25.34896409  AU                              
 SETTING HLSDIAG(3)     =       -25.34896408  AU                              
 SETTING HLSDIAG(4)     =       -25.34896409  AU                              
 SETTING HLSDIAG(5)     =       -25.34896409  AU                              
 SETTING HLSDIAG(6)     =       -25.34896408  AU                              
 SETTING HLSDIAG(7)     =       -25.29479912  AU                              
 SETTING HLSDIAG(8)     =       -25.29479913  AU                              
 SETTING HLSDIAG(9)     =       -25.29479911  AU                              
 SETTING HLSDIAG(10)    =       -25.29479911  AU                              
 SETTING HLSDIAG(11)    =       -25.29479912  AU                              
 SETTING HLSDIAG(12)    =       -25.29479911  AU                              
 SETTING HLSDIAG(13)    =       -25.29479912  AU                              
 SETTING HLSDIAG(14)    =       -25.28113255  AU                              
 SETTING HLSDIAG(15)    =       -25.28113255  AU                              
 SETTING HLSDIAG(16)    =       -25.28113256  AU                              


        HLSDIAG
    -25.38835747
    -25.34896409
    -25.34896408
    -25.34896409
    -25.34896409
    -25.34896408
    -25.29479912
    -25.29479913
    -25.29479911
    -25.29479911
    -25.29479912
    -25.29479911
    -25.29479912
    -25.28113255
    -25.28113255
    -25.28113256
                                                  



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       48.71       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)  1101     1401     1411     1650(1)  1700(2)
                                         OPER      SR      EKINR    POTR    MOLCAS    OPER   

              2       7      392.11       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       266.30      0.39    255.42      4.13      2.40      0.63      3.06
 REAL TIME  *       299.87 SEC
 DISK USED  *       440.89 MB (local),        7.38 GB (total)
 SF USED    *         3.61 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   1

 Original energies:    -25.363152
 Replaced energies:    -25.388357

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  15

 Original energies:    -25.323358    -25.323358    -25.323358    -25.323358    -25.323358    -25.269628    -25.269628    -25.269628
                       -25.269628    -25.269628    -25.269628    -25.269628    -25.253829    -25.253829    -25.253829
 Replaced energies:    -25.348964    -25.348964    -25.348964    -25.348964    -25.348964    -25.294799    -25.294799    -25.294799
                       -25.294799    -25.294799    -25.294799    -25.294799    -25.281133    -25.281133    -25.281133



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -25.38835747

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

    2   1.1  1.0  1.0      -0.00    8645.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.12      -0.00     205.96       0.00      -0.00       4.21       0.00       0.00

    3   2.1  1.0  1.0       0.00       0.00    8645.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.12       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

    4   3.1  1.0  1.0      -0.00       0.00       0.00    8645.85       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00    -102.98       0.00      -0.00       3.75      -0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00    8645.85       0.00       0.00       0.00       0.00       0.00
                           -0.00    -205.96      -0.00      -0.00      -0.00      -0.00      -4.21       0.00      -0.00       0.00

    6   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00    8645.85       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     102.98       0.00       0.00      -0.00      -0.00      -0.00       4.78

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   20533.68       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       4.21       0.00      -0.00     189.08      -0.00      -0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   20533.68       0.00       0.00
                            0.00      -4.21      -0.00       0.00      -0.00       0.00    -189.08      -0.00      -0.00       0.00

    9   8.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   20533.68       0.00
                            0.00      -0.00      -0.00      -3.75       0.00       0.00       0.00       0.00      -0.00      28.91

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   20533.69
                           -0.00      -0.00       0.00       0.00      -0.00      -4.78       0.00      -0.00     -28.91      -0.00

   11  10.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       2.35      -0.00      -0.00    -210.03      -0.00

   12  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -5.65      -0.00      -0.00      -0.00       0.00      -0.04       0.00       0.00

   13  12.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       3.78       0.00       0.00       0.00       0.00       0.00     148.28

   14  13.1  1.0  1.0     -14.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.23      -0.00      -0.00      -0.00      -0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           14.81      -0.00      -0.00       0.23       0.00       0.00       0.00       0.00       0.00      -0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.27      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00     -72.82      -0.00       0.00      -1.93      -0.00
                           -0.00       0.00      -0.00     -72.82       0.00      -0.00       0.00       0.00       0.00       0.76

   18   2.1  1.0  0.0       0.00      -0.00       0.00     126.16       0.00       0.00       0.00       0.00      -0.00      -2.93
                            0.00       0.00       0.00      -0.00       0.00     126.08      -0.00      -0.00       2.30      -0.00

   19   3.1  1.0  0.0       0.00      -0.00    -126.16      -0.00      72.74      -0.00      -0.00      -2.98      -0.00       0.00
                            0.00      72.82       0.00      -0.00       0.00      -0.00      -2.98      -0.00       0.00      -0.00

   20   4.1  1.0  0.0       0.00       0.00      -0.00     -72.74      -0.00      -0.00      -0.00      -0.00       0.00      -2.46
                            0.00      -0.00      -0.00      -0.00      -0.00      72.89       0.00      -0.00      -3.25      -0.00

   21   5.1  1.0  0.0       0.00      72.82      -0.00       0.00       0.00      -0.00      -2.98      -0.00      -0.00      -0.00
                           -0.00       0.00    -126.08       0.00     -72.89       0.00       0.00       2.98      -0.00      -0.00

   22   6.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       2.98       0.00      -0.00     132.60       0.00
                           -0.00      -0.00       0.00       2.98      -0.00      -0.00      -0.00      -0.00       0.00    -130.93

   23   7.1  1.0  0.0       0.00      -0.00      -0.00       2.98       0.00       0.00       0.00       0.00       0.00     -58.80
                           -0.00      -0.00       0.00       0.00       0.00      -2.98       0.00      -0.00     -16.36       0.00

   24   8.1  1.0  0.0       0.00       1.93       0.00       0.00      -0.00       0.00    -132.60      -0.00      -0.00       0.00
                            0.00      -0.00      -2.30      -0.00       3.25       0.00      -0.00      16.36       0.00      -0.00

   25   9.1  1.0  0.0       0.00       0.00       2.93      -0.00       2.46       0.00      -0.00      58.80      -0.00      -0.00
                           -0.00      -0.76       0.00       0.00       0.00       0.00     130.93      -0.00       0.00       0.00

   26  10.1  1.0  0.0       0.00       0.00      -1.44       0.00       2.86      -0.00       0.00    -120.07      -0.00      -0.00
                           -0.00      -3.69      -0.00      -0.00      -0.00       0.00      26.93       0.00       0.00      -0.00

   27  11.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -2.31       0.00       0.00     115.34       0.00
                            0.00       0.00      -0.00       2.31      -0.00       0.00       0.00      -0.00      -0.00     147.02

   28  12.1  1.0  0.0       0.00       3.24      -0.00      -0.00      -0.00      -0.00      17.35       0.00       0.00      -0.00
                           -0.00       0.00       2.31      -0.00       1.90      -0.00      -0.00    -132.69       0.00       0.00

   29  13.1  1.0  0.0       0.00      -0.00      -0.09       0.00      -0.16      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.16       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   30  14.1  1.0  0.0       0.00      -0.16       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.09       0.00       0.16      -0.00      -0.00       0.00       0.00       0.00

   31  15.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.00      -0.16       0.00      -0.00      -0.00       0.00
                          -20.94      -0.00       0.00       0.16      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   32   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   8.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  12.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  13.1  1.0 -1.0     -14.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -14.81      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00       0.00      -0.00     -14.81       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     -14.81       0.00       0.00      -0.00      -0.00      -0.00

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00     -72.82       0.00

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -126.16      -0.00
                           -0.00       5.65       0.00       0.00       0.00      -0.27       0.00      -0.00      -0.00       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     126.16      -0.00     -72.74
                           -0.00       0.00      -3.78       0.00      -0.23       0.00      72.82       0.00       0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      72.74      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -72.82       0.00      -0.00      -0.00
                           -2.35       0.00      -0.00       0.23      -0.00      -0.00       0.00    -126.08       0.00     -72.89

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       2.98      -0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.98      -0.00
                            0.00       0.04      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -1.93      -0.00      -0.00       0.00
                          210.03      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -2.30      -0.00       3.25

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.93       0.00      -2.46
                            0.00      -0.00    -148.28       0.00       0.00       0.00      -0.76       0.00       0.00       0.00

   11  10.1  1.0  1.0   20533.68       0.00       0.00       0.00       0.00       0.00      -0.00       1.44      -0.00      -2.86
                           -0.00       0.00    -149.80       0.00      -0.00       0.00      -3.69      -0.00      -0.00      -0.00

   12  11.1  1.0  1.0       0.00   20533.69       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       2.31      -0.00

   13  12.1  1.0  1.0       0.00       0.00   20533.68       0.00       0.00       0.00      -3.24       0.00       0.00       0.00
                          149.80      -0.00       0.00      -0.00      -0.00      -0.00       0.00       2.31      -0.00       1.90

   14  13.1  1.0  1.0       0.00       0.00       0.00   23533.15       0.00       0.00       0.00       0.09      -0.00       0.16
                           -0.00       0.00       0.00      -0.00    -102.90      -0.00      -0.16       0.00      -0.00       0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00   23533.15       0.00       0.16      -0.00       0.00       0.00
                            0.00       0.00       0.00     102.90       0.00       0.00      -0.00      -0.09       0.00       0.16

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   23533.15       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.16      -0.00

   17   1.1  1.0  0.0      -0.00      -0.00      -3.24       0.00       0.16       0.00    8645.85       0.00       0.00       0.00
                            3.69      -0.00      -0.00       0.16       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       1.44       0.00       0.00       0.09      -0.00      -0.00       0.00    8645.85       0.00       0.00
                            0.00       0.00      -2.31      -0.00       0.09      -0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    8645.85       0.00
                            0.00      -2.31       0.00       0.00      -0.00      -0.16      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0      -2.86      -0.00       0.00       0.16       0.00       0.00       0.00       0.00       0.00    8645.85
                            0.00       0.00      -1.90      -0.00      -0.16       0.00      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0       0.00       2.31       0.00       0.00      -0.00       0.16       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0      -0.00      -0.00     -17.35      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                          -26.93      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0     120.07      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     132.69      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0       0.00    -115.34      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00    -147.02      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   26  10.1  1.0  0.0      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      72.15       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27  11.1  1.0  0.0      -0.00       0.00    -116.21      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -72.15      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28  12.1  1.0  0.0      -0.00     116.21       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   29  13.1  1.0  0.0      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      72.76      -0.00      -0.00      -0.00      -0.00

   30  14.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00     -72.76       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   31  15.1  1.0  0.0       0.00      -0.00       0.00      -0.00      72.76      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     -72.76      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -72.82       0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     126.16       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -126.16      -0.00      72.74
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      72.82       0.00      -0.00       0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -72.74      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      72.82      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -126.08       0.00     -72.89

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       2.98      -0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       2.98       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.93       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.30      -0.00       3.25

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.93      -0.00       2.46
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.76       0.00       0.00       0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.44       0.00       2.86
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.69      -0.00      -0.00      -0.00

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       2.31      -0.00

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       3.24      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       2.31      -0.00       1.90

   44  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.09       0.00      -0.16
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.16       0.00      -0.00       0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.16       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.09       0.00       0.16

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.16      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

    2   1.1  1.0  1.0      72.82       0.00      -0.00       1.93       0.00       0.00       0.00       3.24      -0.00      -0.16
                           -0.00       0.00       0.00       0.00       0.76       3.69      -0.00      -0.00       0.16       0.00

    3   2.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       2.93      -1.44      -0.00      -0.00      -0.09       0.00
                          126.08      -0.00      -0.00       2.30      -0.00       0.00       0.00      -2.31      -0.00       0.09

    4   3.1  1.0  1.0       0.00       0.00       2.98       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -2.98      -0.00       0.00      -0.00       0.00      -2.31       0.00       0.00      -0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00      -0.00       2.46       2.86       0.00      -0.00      -0.16      -0.00
                           72.89       0.00      -0.00      -3.25      -0.00       0.00       0.00      -1.90      -0.00      -0.16

    6   5.1  1.0  1.0      -0.00       2.98       0.00       0.00       0.00      -0.00      -2.31      -0.00      -0.00       0.00
                           -0.00       0.00       2.98      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0      -2.98       0.00       0.00    -132.60      -0.00       0.00       0.00      17.35       0.00      -0.00
                           -0.00       0.00      -0.00       0.00    -130.93     -26.93      -0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      58.80    -120.07       0.00       0.00      -0.00      -0.00
                           -2.98       0.00       0.00     -16.36       0.00      -0.00       0.00     132.69      -0.00      -0.00

    9   8.1  1.0  1.0      -0.00     132.60       0.00      -0.00      -0.00      -0.00     115.34       0.00      -0.00       0.00
                            0.00      -0.00      16.36      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   10   9.1  1.0  1.0      -0.00       0.00     -58.80       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00     130.93      -0.00       0.00      -0.00       0.00    -147.02      -0.00      -0.00      -0.00

   11  10.1  1.0  1.0       0.00      -0.00     120.07       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00      26.93       0.00       0.00      -0.00       0.00      72.15       0.00      -0.00       0.00

   12  11.1  1.0  1.0       2.31      -0.00      -0.00    -115.34      -0.00       0.00       0.00     116.21       0.00      -0.00
                            0.00       0.00      -0.00      -0.00     147.02     -72.15       0.00      -0.00      -0.00      -0.00

   13  12.1  1.0  1.0       0.00     -17.35      -0.00      -0.00       0.00       0.00    -116.21       0.00       0.00       0.00
                           -0.00      -0.00    -132.69       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   14  13.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   15  14.1  1.0  1.0      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   16  15.1  1.0  1.0       0.16      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     -72.76
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00     -72.76      -0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.1  1.0  0.0    8645.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.1  1.0  0.0       0.00   20533.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00   20533.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   20533.68       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   20533.69       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   20533.68       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   20533.69       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   20533.68       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23533.15       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23533.15
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0     -72.82      -0.00       0.00      -1.93      -0.00      -0.00      -0.00      -3.24       0.00       0.16
                           -0.00       0.00       0.00       0.00       0.76       3.69      -0.00      -0.00       0.16       0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -2.93       1.44       0.00       0.00       0.09      -0.00
                          126.08      -0.00      -0.00       2.30      -0.00       0.00       0.00      -2.31      -0.00       0.09

   34   3.1  1.0 -1.0      -0.00      -0.00      -2.98      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -2.98      -0.00       0.00      -0.00       0.00      -2.31       0.00       0.00      -0.00

   35   4.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00      -2.46      -2.86      -0.00       0.00       0.16       0.00
                           72.89       0.00      -0.00      -3.25      -0.00       0.00       0.00      -1.90      -0.00      -0.16

   36   5.1  1.0 -1.0      -0.00      -2.98      -0.00      -0.00      -0.00       0.00       2.31       0.00       0.00      -0.00
                            0.00       0.00       2.98      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   37   6.1  1.0 -1.0       2.98       0.00      -0.00     132.60       0.00      -0.00      -0.00     -17.35      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -130.93     -26.93      -0.00       0.00       0.00       0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00     -58.80     120.07      -0.00      -0.00       0.00       0.00
                           -2.98       0.00      -0.00     -16.36       0.00      -0.00       0.00     132.69      -0.00      -0.00

   39   8.1  1.0 -1.0       0.00    -132.60      -0.00      -0.00       0.00       0.00    -115.34      -0.00       0.00      -0.00
                            0.00      -0.00      16.36       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   40   9.1  1.0 -1.0       0.00      -0.00      58.80      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00     130.93      -0.00       0.00       0.00       0.00    -147.02      -0.00      -0.00      -0.00

   41  10.1  1.0 -1.0      -0.00       0.00    -120.07      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00      26.93       0.00       0.00      -0.00      -0.00      72.15       0.00      -0.00       0.00

   42  11.1  1.0 -1.0      -2.31       0.00       0.00     115.34       0.00      -0.00       0.00    -116.21      -0.00       0.00
                            0.00       0.00      -0.00      -0.00     147.02     -72.15      -0.00      -0.00      -0.00      -0.00

   43  12.1  1.0 -1.0      -0.00      17.35       0.00       0.00      -0.00      -0.00     116.21       0.00      -0.00      -0.00
                           -0.00      -0.00    -132.69       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   44  13.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   45  14.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   46  15.1  1.0 -1.0      -0.16       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      72.76
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00     -72.76      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                           20.94      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    2   1.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   5.1  1.0  1.0      -0.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  13.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           72.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0      72.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  15.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      72.82       0.00      -0.00       1.93       0.00
                            0.00      -0.00      -0.00     -72.82       0.00      -0.00       0.00       0.00       0.00       0.76

   18   2.1  1.0  0.0       0.00       0.00       0.00    -126.16      -0.00      -0.00      -0.00      -0.00       0.00       2.93
                            0.00       0.00      -0.00      -0.00       0.00     126.08      -0.00      -0.00       2.30      -0.00

   19   3.1  1.0  0.0       0.00       0.00     126.16      -0.00     -72.74       0.00       0.00       2.98       0.00      -0.00
                            0.00      72.82       0.00       0.00       0.00      -0.00      -2.98      -0.00       0.00      -0.00

   20   4.1  1.0  0.0       0.00      -0.00       0.00      72.74      -0.00       0.00       0.00       0.00      -0.00       2.46
                            0.00      -0.00      -0.00      -0.00       0.00      72.89       0.00      -0.00      -3.25      -0.00

   21   5.1  1.0  0.0       0.00     -72.82       0.00      -0.00      -0.00      -0.00       2.98       0.00       0.00       0.00
                            0.00       0.00    -126.08       0.00     -72.89      -0.00       0.00       2.98      -0.00      -0.00

   22   6.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.00      -2.98       0.00       0.00    -132.60      -0.00
                            0.00      -0.00       0.00       2.98      -0.00      -0.00       0.00      -0.00       0.00    -130.93

   23   7.1  1.0  0.0       0.00       0.00       0.00      -2.98      -0.00      -0.00      -0.00       0.00      -0.00      58.80
                            0.00      -0.00       0.00       0.00       0.00      -2.98       0.00       0.00     -16.36       0.00

   24   8.1  1.0  0.0       0.00      -1.93      -0.00      -0.00       0.00      -0.00     132.60       0.00      -0.00      -0.00
                            0.00      -0.00      -2.30      -0.00       3.25       0.00      -0.00      16.36      -0.00      -0.00

   25   9.1  1.0  0.0       0.00      -0.00      -2.93       0.00      -2.46      -0.00       0.00     -58.80       0.00      -0.00
                            0.00      -0.76       0.00       0.00       0.00       0.00     130.93      -0.00       0.00      -0.00

   26  10.1  1.0  0.0       0.00      -0.00       1.44      -0.00      -2.86       0.00      -0.00     120.07       0.00       0.00
                            0.00      -3.69      -0.00      -0.00      -0.00       0.00      26.93       0.00       0.00      -0.00

   27  11.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.00       2.31      -0.00      -0.00    -115.34      -0.00
                            0.00       0.00      -0.00       2.31      -0.00       0.00       0.00      -0.00      -0.00     147.02

   28  12.1  1.0  0.0       0.00      -3.24       0.00       0.00       0.00       0.00     -17.35      -0.00      -0.00       0.00
                            0.00       0.00       2.31      -0.00       1.90      -0.00      -0.00    -132.69       0.00       0.00

   29  13.1  1.0  0.0       0.00       0.00       0.09      -0.00       0.16       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.16       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   30  14.1  1.0  0.0       0.00       0.16      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.09       0.00       0.16      -0.00      -0.00       0.00       0.00       0.00

   31  15.1  1.0  0.0   23533.15       0.00      -0.00      -0.00       0.00       0.16      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.16      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   32   1.1  1.0 -1.0       0.00    8645.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.12       0.00    -205.96      -0.00       0.00      -4.21      -0.00      -0.00

   33   2.1  1.0 -1.0      -0.00       0.00    8645.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.12      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   34   3.1  1.0 -1.0      -0.00       0.00       0.00    8645.85       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.16      -0.00      -0.00      -0.00      -0.00     102.98      -0.00       0.00      -3.75       0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00    8645.85       0.00       0.00       0.00       0.00       0.00
                            0.00     205.96       0.00       0.00       0.00       0.00       4.21      -0.00       0.00      -0.00

   36   5.1  1.0 -1.0       0.16       0.00       0.00       0.00       0.00    8645.85       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -102.98      -0.00      -0.00       0.00       0.00       0.00      -4.78

   37   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00   20533.68       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -4.21      -0.00       0.00    -189.08       0.00       0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   20533.68       0.00       0.00
                           -0.00       4.21       0.00      -0.00       0.00      -0.00     189.08       0.00       0.00      -0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   20533.68       0.00
                            0.00       0.00       0.00       3.75      -0.00      -0.00      -0.00      -0.00       0.00     -28.91

   40   9.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   20533.69
                            0.00       0.00      -0.00      -0.00       0.00       4.78      -0.00       0.00      28.91       0.00

   41  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -2.35       0.00       0.00     210.03       0.00

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       5.65       0.00       0.00       0.00      -0.00       0.04      -0.00      -0.00

   43  12.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -3.78      -0.00      -0.00      -0.00      -0.00      -0.00    -148.28

   44  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           72.76      -0.00       0.00       0.00      -0.00       0.23       0.00       0.00       0.00       0.00

   45  14.1  1.0 -1.0     -72.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.23      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   46  15.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.27       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46

    1   1.1  0.0  0.0      -0.00       0.00      -0.00     -14.81       0.00       0.00
                           -0.00       0.00      -0.00       0.00      14.81      -0.00

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   11  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00       3.24      -0.00      -0.16      -0.00
                            3.69      -0.00      -0.00       0.16       0.00       0.00

   18   2.1  1.0  0.0      -1.44      -0.00      -0.00      -0.09       0.00       0.00
                            0.00       0.00      -2.31      -0.00       0.09      -0.00

   19   3.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00      -2.31       0.00       0.00      -0.00      -0.16

   20   4.1  1.0  0.0       2.86       0.00      -0.00      -0.16      -0.00      -0.00
                            0.00       0.00      -1.90      -0.00      -0.16       0.00

   21   5.1  1.0  0.0      -0.00      -2.31      -0.00      -0.00       0.00      -0.16
                           -0.00      -0.00       0.00       0.00       0.00      -0.00

   22   6.1  1.0  0.0       0.00       0.00      17.35       0.00      -0.00       0.00
                          -26.93      -0.00       0.00       0.00       0.00       0.00

   23   7.1  1.0  0.0    -120.07       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00     132.69      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0      -0.00     115.34       0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00

   25   9.1  1.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00    -147.02      -0.00      -0.00      -0.00       0.00

   26  10.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      72.15       0.00      -0.00       0.00      -0.00

   27  11.1  1.0  0.0       0.00       0.00     116.21       0.00      -0.00      -0.00
                          -72.15       0.00      -0.00      -0.00      -0.00      -0.00

   28  12.1  1.0  0.0       0.00    -116.21       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00

   29  13.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00      72.76

   30  14.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       0.00      72.76
                           -0.00       0.00      -0.00       0.00       0.00       0.00

   31  15.1  1.0  0.0      -0.00       0.00      -0.00       0.00     -72.76      -0.00
                            0.00       0.00      -0.00     -72.76      -0.00       0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -5.65      -0.00      -0.00      -0.00       0.27

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       3.78      -0.00       0.23      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            2.35      -0.00       0.00      -0.23       0.00       0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.04       0.00      -0.00       0.00       0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                         -210.03       0.00       0.00      -0.00       0.00       0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     148.28      -0.00      -0.00      -0.00

   41  10.1  1.0 -1.0   20533.68       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     149.80      -0.00       0.00      -0.00

   42  11.1  1.0 -1.0       0.00   20533.69       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00

   43  12.1  1.0 -1.0       0.00       0.00   20533.68       0.00       0.00       0.00
                         -149.80       0.00      -0.00       0.00       0.00       0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00   23533.15       0.00       0.00
                            0.00      -0.00      -0.00       0.00     102.90       0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00   23533.15       0.00
                           -0.00      -0.00      -0.00    -102.90      -0.00      -0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   23533.15
                            0.00       0.00      -0.00      -0.00       0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 46)

    The diagonal matrixelements are shifted by    -25.38835747 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000    8645.846       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000    8645.848       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000    8645.848       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000    8645.846       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000    8645.848       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   20533.683       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   20533.681
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+            -20.937       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000    -102.978       0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     178.303      -0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000     102.978       0.000       0.000       0.000      -0.000      -4.214      -0.000

    4    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000     103.084       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000    -178.303       0.000    -103.084       0.000       0.000       4.213

    6    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       4.214      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -4.213       0.000       0.000

    8    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -3.254      -0.000       4.598       0.000      -0.000      23.141

    9    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -1.078       0.000       0.000       0.000       0.000     185.167      -0.000

   10    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -5.219      -0.000      -0.000      -0.000       0.000      38.087       0.000

   11    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000       3.263      -0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       3.274      -0.000       2.692      -0.000      -0.000    -187.659

   13    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.232       0.000      -0.000       0.000      -0.000      -0.001       0.000

   14    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.134       0.000       0.232      -0.000      -0.000       0.000

   15    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                              -20.937      -0.000       0.000       0.232      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.122      -0.000     205.956       0.000      -0.000       4.213

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.122       0.000      -0.000       0.000      -0.000       0.004       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000    -102.978       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -205.956      -0.000      -0.000      -0.000      -0.000      -4.213       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     102.978       0.000       0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.004      -0.000       4.213       0.000      -0.000     189.080

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -4.213      -0.000       0.000      -0.000       0.000    -189.080      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -3.754       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -4.784       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       2.348      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -5.652      -0.000      -0.004      -0.000       0.000      -0.038

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       3.782       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.232      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               20.937      -0.000      -0.000       0.232       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.268      -0.000       0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.000       0.000      -0.000       0.000      -0.000     -20.937       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+          20533.685       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000   20533.685       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000   20533.684       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000   20533.685       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000   20533.684       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   23533.148       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   23533.148       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   23533.148
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       1.078       5.219      -0.000      -0.000       0.232       0.000       0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                3.254      -0.000       0.000       0.000      -3.274      -0.000       0.134      -0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000      -3.263       0.000       0.000      -0.000      -0.232

    4    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -4.598      -0.000       0.000       0.000      -2.692      -0.000      -0.232       0.000

    5    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000    -185.167     -38.087      -0.000       0.000       0.001       0.000       0.000

    7    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                              -23.141       0.000      -0.000       0.000     187.659      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000    -207.915      -0.000      -0.000      -0.000       0.000

   10    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000     102.042       0.000      -0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000     207.915    -102.042       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000     102.903

   14    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   15    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000    -102.903      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       5.652       0.000       0.000       0.000      -0.268

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.754      -0.000      -0.000       0.000      -3.782       0.000      -0.232       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.004      -0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       4.784      -2.348       0.000      -0.000       0.232      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.038      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      28.909     210.034      -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -28.909      -0.000       0.000      -0.000    -148.282       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -210.034      -0.000      -0.000       0.000    -149.804       0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     148.282     149.804      -0.000       0.000      -0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000    -102.903      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000     102.903       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -102.978       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000     178.303      -0.000      -0.000       3.254

    3    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                              102.978       0.000       0.000       0.000      -0.000      -4.214      -0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000     103.084       0.000      -0.000      -4.598

    5    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000    -178.303       0.000    -103.084       0.000       0.000       4.213      -0.000

    6    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000       4.214      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -4.213       0.000       0.000     -23.141

    8    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -3.254      -0.000       4.598       0.000      -0.000      23.141       0.000

    9    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -1.078       0.000       0.000       0.000       0.000     185.167      -0.000       0.000

   10    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -5.219      -0.000      -0.000      -0.000       0.000      38.087       0.000       0.000

   11    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       3.263      -0.000       0.000       0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       3.274      -0.000       2.692      -0.000      -0.000    -187.659       0.000

   13    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.232       0.000      -0.000       0.000      -0.000      -0.001       0.000       0.000

   14    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000      -0.134       0.000       0.232      -0.000      -0.000       0.000       0.000

   15    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.232      -0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 0>            8645.846       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000    8645.848       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000    8645.848       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000    8645.846       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000    8645.848       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   20533.683       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   20533.681       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   20533.685
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000      -0.000       0.000     102.978       0.000      -0.000       2.723
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000    -178.424      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000     178.424       0.000    -102.873       0.000       0.000       4.213       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-             -0.000       0.000     102.873       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>-           -102.978       0.000      -0.000      -0.000       0.000       4.212       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000       0.000      -0.000      -0.000      -4.212       0.000       0.000    -187.519
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000      -4.213      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -2.723      -0.000      -0.000       0.000      -0.000     187.519       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 1>-             -0.000      -4.141       0.000      -3.472      -0.000       0.000     -83.160       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>-             -0.000       2.036      -0.000      -4.043       0.000      -0.000     169.811       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   11    1  |1 1>-             -0.000       0.000       0.000      -0.000       3.264      -0.000      -0.000    -163.113
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-             -4.581       0.000       0.000       0.000       0.000     -24.541      -0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.134      -0.000       0.232       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   14    1  |1 1>-              0.232      -0.000       0.000       0.000      -0.000       0.001       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   15    1  |1 1>-              0.000      -0.000      -0.000       0.000       0.232      -0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      20.937       0.000

    1    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                1.078       5.219      -0.000      -0.000       0.232       0.000       0.000      -0.000

    2    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000      -3.274      -0.000       0.134      -0.000       0.122

    3    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000      -3.263       0.000       0.000      -0.000      -0.232       0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000      -2.692      -0.000      -0.232       0.000    -205.956

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                             -185.167     -38.087      -0.000       0.000       0.001       0.000       0.000       0.000

    7    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     187.659      -0.000      -0.000      -0.000      -4.213

    8    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000    -207.915      -0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000     102.042       0.000      -0.000       0.000      -0.000       0.000

   11    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                              207.915    -102.042       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000     102.903       0.000

   14    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000    -102.903      -0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     102.978
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       2.723
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>           20533.685       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000   20533.684       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000   20533.685       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000   20533.684       0.000       0.000       0.000       4.581
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000   23533.148       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000   23533.148       0.000      -0.232
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   23533.148      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       4.581      -0.000      -0.232      -0.000    8645.846
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              4.141      -2.036      -0.000      -0.000      -0.134       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-             -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    4    1  |1 1>-              3.472       4.043       0.000      -0.000      -0.232      -0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000      -0.000      -3.264      -0.000      -0.000       0.000      -0.232       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 1>-             -0.000       0.000       0.000      24.541       0.000      -0.001       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-             83.160    -169.811       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    8    1  |1 1>-             -0.000      -0.000     163.113       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   11    1  |1 1>-             -0.000       0.000       0.000     164.339       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000    -164.339       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 1>-              0.000      -0.000       0.000      -0.000      -0.000       0.000     102.903       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

   15    1  |1 1>-             -0.000      -0.000       0.000      -0.000       0.000    -102.903       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.122      -0.000     205.956       0.000      -0.000       4.213       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.004       0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -102.978       0.000      -0.000       3.754      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -4.213       0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     102.978       0.000       0.000      -0.000      -0.000      -0.000       4.784

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.004      -0.000       4.213       0.000      -0.000     189.080      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000    -189.080      -0.000      -0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -3.754       0.000       0.000       0.000       0.000      -0.000      28.909

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -4.784       0.000      -0.000     -28.909      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       2.348      -0.000      -0.000    -210.034      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.652      -0.000      -0.004      -0.000       0.000      -0.038       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       3.782       0.000       0.000       0.000       0.000       0.000     148.282

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.232      -0.000      -0.000      -0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.232       0.000       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.268      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000      -0.000    -102.978      -0.000       0.000      -2.723      -0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000     178.424       0.000       0.000       0.000       0.000      -0.000      -4.141
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 0>            -178.424       0.000     102.873      -0.000      -0.000      -4.213      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 0>              -0.000    -102.873       0.000      -0.000      -0.000      -0.000       0.000      -3.472
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000       0.000       0.000       0.000      -4.212      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.000       0.000       0.000       4.212       0.000      -0.000     187.519       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>              -0.000       4.213       0.000       0.000       0.000       0.000       0.000     -83.160
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000      -0.000       0.000    -187.519      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    9    1  |1 0>               4.141      -0.000       3.472       0.000      -0.000      83.160      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   10    1  |1 0>              -2.036       0.000       4.043      -0.000       0.000    -169.811      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.000       0.000      -3.264       0.000       0.000     163.113       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   12    1  |1 0>              -0.000      -0.000      -0.000      -0.000      24.541       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   13    1  |1 0>              -0.134       0.000      -0.232      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   14    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.001      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000      -0.000      -0.232       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-           8645.848       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000    8645.848       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000    8645.846       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000    8645.848       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   20533.683       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   20533.681       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   20533.685       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   20533.685
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     -20.937       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       5.652       0.000       0.000       0.000      -0.268

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -3.782       0.000      -0.232       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.004      -0.000      -0.000      -0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -2.348       0.000      -0.000       0.232      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.038      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                              210.034      -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -148.282       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -149.804       0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                              149.804      -0.000       0.000      -0.000      -0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000    -102.903      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     102.903       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 0>              -0.000      -0.000      -4.581       0.000       0.232       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 0>               2.036       0.000       0.000       0.134      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 0>              -4.043      -0.000       0.000       0.232       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       3.264       0.000       0.000      -0.000       0.232
                                0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>              -0.000      -0.000     -24.541      -0.000       0.001      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 0>             169.811      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 0>               0.000    -163.113      -0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000

   11    1  |1 0>              -0.000       0.000    -164.339      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000

   12    1  |1 0>              -0.000     164.339       0.000      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000      -0.000       0.000       0.000       0.000    -102.903
                               -0.000       0.000       0.000       0.000      -0.000       0.000

   15    1  |1 0>               0.000      -0.000       0.000      -0.000     102.903       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-          20533.684       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   20533.685       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   20533.684       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   23533.148       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   23533.148       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   23533.148
                                0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -25.38835772    -0.00000026       -0.06      0.00000000        0.00      0.0000
    2   -25.35037170     0.03798577     8336.91      0.03798602     8336.97      1.0337
    3   -25.35037170     0.03798577     8336.91      0.03798602     8336.97      1.0337
    4   -25.35037169     0.03798577     8336.91      0.03798603     8336.97      1.0337
    5   -25.34943331     0.03892415     8542.86      0.03892441     8542.92      1.0592
    6   -25.34943331     0.03892415     8542.86      0.03892441     8542.92      1.0592
    7   -25.34943331     0.03892416     8542.87      0.03892441     8542.92      1.0592
    8   -25.34943331     0.03892416     8542.87      0.03892441     8542.92      1.0592
    9   -25.34943331     0.03892416     8542.87      0.03892442     8542.92      1.0592
   10   -25.34802571     0.04033175     8851.80      0.04033201     8851.85      1.0975
   11   -25.34802571     0.04033175     8851.80      0.04033201     8851.85      1.0975
   12   -25.34802571     0.04033176     8851.80      0.04033202     8851.85      1.0975
   13   -25.34802571     0.04033176     8851.80      0.04033202     8851.85      1.0975
   14   -25.34802571     0.04033176     8851.80      0.04033202     8851.85      1.0975
   15   -25.34802571     0.04033176     8851.80      0.04033202     8851.85      1.0975
   16   -25.34802571     0.04033176     8851.80      0.04033202     8851.85      1.0975
   17   -25.29652213     0.09183534    20155.53      0.09183559    20155.58      2.4990
   18   -25.29652213     0.09183534    20155.53      0.09183559    20155.58      2.4990
   19   -25.29652213     0.09183534    20155.53      0.09183559    20155.58      2.4990
   20   -25.29652213     0.09183534    20155.53      0.09183559    20155.58      2.4990
   21   -25.29652213     0.09183534    20155.53      0.09183560    20155.58      2.4990
   22   -25.29522985     0.09312762    20439.15      0.09312787    20439.21      2.5341
   23   -25.29522985     0.09312762    20439.15      0.09312787    20439.21      2.5341
   24   -25.29522985     0.09312762    20439.15      0.09312787    20439.21      2.5341
   25   -25.29522985     0.09312762    20439.15      0.09312787    20439.21      2.5341
   26   -25.29522985     0.09312762    20439.15      0.09312787    20439.21      2.5341
   27   -25.29522985     0.09312762    20439.15      0.09312788    20439.21      2.5341
   28   -25.29522984     0.09312762    20439.15      0.09312788    20439.21      2.5341
   29   -25.29350686     0.09485061    20817.30      0.09485087    20817.36      2.5810
   30   -25.29350686     0.09485061    20817.30      0.09485087    20817.36      2.5810
   31   -25.29350685     0.09485061    20817.30      0.09485087    20817.36      2.5810
   32   -25.29350685     0.09485062    20817.30      0.09485088    20817.36      2.5810
   33   -25.29350685     0.09485062    20817.30      0.09485088    20817.36      2.5810
   34   -25.29350685     0.09485062    20817.31      0.09485088    20817.36      2.5810
   35   -25.29350684     0.09485062    20817.31      0.09485088    20817.36      2.5810
   36   -25.29350684     0.09485062    20817.31      0.09485088    20817.36      2.5810
   37   -25.29350684     0.09485063    20817.31      0.09485088    20817.36      2.5810
   38   -25.28207002     0.10628745    23327.40      0.10628771    23327.46      2.8922
   39   -25.28160142     0.10675605    23430.25      0.10675631    23430.30      2.9050
   40   -25.28160142     0.10675605    23430.25      0.10675631    23430.30      2.9050
   41   -25.28160142     0.10675605    23430.25      0.10675631    23430.30      2.9050
   42   -25.28066370     0.10769377    23636.05      0.10769403    23636.11      2.9305
   43   -25.28066370     0.10769377    23636.05      0.10769403    23636.11      2.9305
   44   -25.28066370     0.10769377    23636.05      0.10769403    23636.11      2.9305
   45   -25.28066369     0.10769377    23636.05      0.10769403    23636.11      2.9305
   46   -25.28066369     0.10769377    23636.05      0.10769403    23636.11      2.9305

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999879 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.54772447 -0.00000001  0.00000000  0.00000000  0.00000000  0.40824620 -0.00000008
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000001

   2    1  |1 1>+         -0.00000000  0.00000000  0.31590136 -0.00000000  0.00000001  0.00000000  0.00000014  0.70734836
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

   3    1  |1 1>+          0.00000003  0.00000000 -0.00000000  0.00000000  0.44121462 -0.00000000 -0.00000000  0.00000007
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000001  0.54791103 -0.00000000 -0.00000001 -0.00000000 -0.00000008 -0.40782819
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.54772260  0.00000000 -0.40824661  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00030947  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00029616 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00029621
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00019147 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000015 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00022992 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00029082 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00022950  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00032207 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000024 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00089755  0.00000000 -0.00000000  0.00000000 -0.00001828 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00001402 -0.00000000  0.00001881 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00001403  0.00000000 -0.00000000  0.00000000  0.00000000  0.00001882 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.00000000 -0.00000000 -0.00000000  0.81558537  0.00000000 -0.00000000 -0.00000002

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00000000 -0.00000037 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.63245503  0.00000000 -0.00048197  0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000005  0.00000001
                          -0.00000000 -0.54772057  0.00000001 -0.00000000  0.00000000  0.00000000  0.40825151 -0.00000008

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00061895  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00037341 -0.00000000  0.81649762 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                           0.00000000  0.00000001  0.54772035 -0.00000000  0.00000001  0.00000000  0.00000008  0.40825149

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00029588 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000022 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00029621  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00026397

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00033633  0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00016511 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00001873  0.00000000  0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00026590

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00001403 -0.00000000  0.00000000  0.00000000  0.00000000  0.00001881 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00001402  0.00000000  0.00000000  0.00000000  0.00000000  0.00001880

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00089754  0.00000000  0.00000000  0.00000000 -0.00000103  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                           0.00000000 -0.00000001 -0.54772462  0.00000000  0.00000001  0.00000000  0.00000008  0.40824602

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000008  0.00000001
                          -0.00000000 -0.31654845  0.00000000 -0.00000000  0.00000000  0.00000000  0.70686589 -0.00000014

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000  0.00030947  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.54772297 -0.00000000  0.40824645 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005  0.00000001
                           0.00000000  0.54753735 -0.00000001  0.00000000  0.00000000  0.00000000  0.40866366 -0.00000008

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.37436586  0.00000000  0.00000000 -0.00000009

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00029626

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00029621 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00000000  0.00000000  0.00000000  0.00033391 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00007578 -0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000028  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00036694 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00022938

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00017802  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00001402  0.00000000 -0.00001882  0.00000000  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00089755  0.00000000  0.00000000  0.00000000 -0.00001931 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00001402  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001882

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000137 -0.70585994  0.00000001  0.00000000  0.18733486  0.00000000  0.00000003
                          -0.00000000 -0.00000014  0.00000060  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000008  0.00907921  0.00000002  0.00000000 -0.00000002  0.00000000 -0.63228301 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000001

   3    1  |1 1>+         -0.68701891  0.00000001 -0.00000000  0.00000002  0.57735106 -0.00000001 -0.00000002  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000005  0.70977441  0.00000138  0.00000000 -0.00000001 -0.00000000 -0.17230673  0.00000000
                           0.00000000 -0.00000003  0.00000014  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.53598986  0.00000001 -0.00000005 -0.00000000  0.49603324
                          -0.00000000 -0.00000000  0.00000000  0.00031738 -0.00000000 -0.00000000 -0.00000001 -0.00011263

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00025932  0.00000000  0.00000000  0.00033026  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00025207 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00033572 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00044639  0.00000000  0.00000000 -0.00000000 -0.00032442
                           0.00000000 -0.00000000  0.00000000  0.00000026 -0.00000000  0.00000000  0.00000000  0.00000007

   9    1  |1 1>+         -0.00030249 -0.00000000  0.00000000 -0.00000000 -0.00018464  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00012939  0.00000000 -0.00000000  0.00000000  0.00037704 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000341  0.00000000  0.00000000  0.00051410  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00008615 -0.00000000 -0.00000000  0.00000000  0.00035874
                           0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000 -0.00000008

  13    1  |1 1>+         -0.00001174  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.03859541 -0.00000001  0.00000000 -0.00000002 -0.57734780  0.00000001  0.00000002 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00004035 -0.00000000  0.00000001  0.00000002  0.00017520
                           0.00000000 -0.00000000  0.00000000  0.06814149 -0.00000000 -0.00000010  0.00000000  0.77159367

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000001  0.00000001
                          -0.00000000 -0.00000001  0.00492183  0.00000002  0.00000001  0.73027961  0.00000001  0.00000009

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00034054  0.00000000 -0.00000000 -0.00000000  0.00001158
                          -0.00000000 -0.00000000 -0.00000001 -0.57509165  0.00000002  0.00000001 -0.00000000  0.05099184

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000002  0.00000001
                           0.00000005 -0.01096775 -0.00000002 -0.00000001  0.00000003 -0.00000001  0.73021401  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00001392 -0.00000000  0.00000000 -0.00000000 -0.00041982  0.00000000  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000025  0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00041821  0.00000000  0.00000000 -0.00000000  0.00003675

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00044464 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00015459 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00027623  0.00000000  0.00000000  0.00019030  0.00000000  0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00056590  0.00000000 -0.00000000 -0.00008869 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00039698  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00044585 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00014229 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00002170  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000003 -0.00000014  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000005  0.70428477  0.00000137 -0.00000000  0.00000000 -0.00000000  0.19317235  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000001 -0.00000000
                          -0.00000000  0.00000001 -0.00468086 -0.00000002 -0.00000001 -0.63254674 -0.00000000 -0.00000008

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00036374 -0.00000000  0.00000000  0.00000001  0.00008968
                          -0.00000000 -0.00000000  0.00000001  0.61428033 -0.00000002 -0.00000007  0.00000000  0.39496010

   4    1  |1 1>-          0.00000000 -0.00000014  0.00000060  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.00000138  0.70831849 -0.00000000  0.00000000  0.17743007  0.00000000  0.00000002

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.72561356  0.00000001 -0.00000000  0.00000002  0.57735149 -0.00000001 -0.00000002  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00026204 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00032789 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00025484  0.00000000  0.00000000  0.00033362  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00021307  0.00000000 -0.00000000  0.00000000  0.00005138 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000022  0.00000000  0.00000000  0.00000000  0.00000011
                          -0.00000000 -0.00000000 -0.00000000 -0.00036925  0.00000000 -0.00000000 -0.00000000  0.00049578

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000005
                          -0.00000000  0.00000000 -0.00000000 -0.00010403  0.00000000  0.00000000 -0.00000000 -0.00021831

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000778  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00051418 -0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00023896 -0.00000000  0.00000000 -0.00000000 -0.00041666  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000996 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00024782  0.00000000 -0.00053067  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00042940  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00032042
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00027367  0.00000000  0.00041326 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00024757 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00027638
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00024783  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00037243 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000

   6    1  |1 1>+          0.00000002  0.00000002 -0.00000030 -0.48787471 -0.00000001 -0.20828808 -0.00000000  0.00000010
                          -0.00000000 -0.00000000  0.00000000 -0.00000040  0.00000000 -0.00000000  0.00000000 -0.00000001

   7    1  |1 1>+          0.00000053 -0.48795265  0.00000005 -0.00000002 -0.00000001  0.00000001 -0.00000005  0.57158757
                          -0.00000002 -0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

   8    1  |1 1>+          0.31540155  0.00000034 -0.00000004  0.00000002  0.00000001  0.00000004  0.63410106  0.00000006
                          -0.00000360  0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00002797  0.00000000

   9    1  |1 1>+         -0.00000003 -0.00000003 -0.37170346  0.00000023 -0.50355012 -0.00000000 -0.00000001 -0.00000002
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000007 -0.00000006 -0.48201646  0.00000029  0.20639722  0.00000000  0.00000002  0.00000004
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000002 -0.00000001  0.00000023  0.37806085  0.00000001  0.20217357 -0.00000004  0.00000012
                           0.00000000  0.00000000 -0.00000000  0.00000031 -0.00000000 -0.00000000  0.00000000 -0.00000001

  12    1  |1 1>+          0.53054008  0.00000058 -0.00000007  0.00000003  0.00000002 -0.00000001 -0.14143469 -0.00000001
                          -0.00000606  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000624 -0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00000013 -0.00000000  0.00000016  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000004 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00049473  0.00000000 -0.00003038  0.00000000  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000029  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00007576  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00024783  0.00000000 -0.00015180  0.00000000 -0.00000000

   4    1  |1 0>          -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000
                          -0.00049566 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00041599 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00024783  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00036980

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000007 -0.00000005 -0.48704204  0.00000030 -0.02977313 -0.00000000 -0.00000003 -0.00000004

   7    1  |1 0>          -0.00000557  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000  0.00002523 -0.00000000
                          -0.48795229 -0.00000053  0.00000007 -0.00000002 -0.00000002  0.00000004  0.57213921  0.00000005

   8    1  |1 0>          -0.00000002 -0.00000005 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000002
                          -0.00000047  0.43484123 -0.00000005  0.00000002  0.00000001  0.00000001 -0.00000004  0.58271626

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000045  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000003 -0.00000002  0.00000034  0.55404984  0.00000001  0.43978644 -0.00000003  0.00000002

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000022 -0.00000000 -0.00000000  0.00000000 -0.00000001
                           0.00000001  0.00000001 -0.00000017 -0.27199033 -0.00000000  0.70859668 -0.00000003 -0.00000007

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000003 -0.00000002 -0.04002361  0.00000002  0.65342880  0.00000000  0.00000000  0.00000000

  12    1  |1 0>           0.00000002  0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001
                           0.00000047 -0.43802214  0.00000005 -0.00000002 -0.00000001  0.00000001 -0.00000001  0.29522117

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000008 -0.00000000 -0.00000005 -0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000020 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00024782  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00046147

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00042910  0.00000000  0.00013119 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000
                          -0.00024783 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00045963  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00024808  0.00000000  0.00045485 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00022106  0.00000000 -0.00044364 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000002 -0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000001
                          -0.00000053  0.48802740 -0.00000005  0.00000002  0.00000001  0.00000001  0.00000003 -0.06400321

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000040 -0.00000000  0.00000000 -0.00000000  0.00000001
                           0.00000002  0.00000002 -0.00000030 -0.48795278 -0.00000001  0.46927606 -0.00000004  0.00000005

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000009  0.00000007  0.55490211 -0.00000033 -0.34322138  0.00000000  0.00000000  0.00000001

   9    1  |1 1>-          0.00000143 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00002096 -0.00000000
                           0.12483980  0.00000014 -0.00000002  0.00000001  0.00000000  0.00000003  0.47532143  0.00000004

  10    1  |1 1>-          0.00000690 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000692 -0.00000000
                           0.60445538  0.00000066 -0.00000008  0.00000003  0.00000002  0.00000001  0.15696431  0.00000001

  11    1  |1 1>-         -0.00000002 -0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000041  0.37786348 -0.00000004  0.00000001  0.00000001  0.00000000 -0.00000006  0.49241948

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000003  0.00000002  0.28769449 -0.00000018  0.39771919 -0.00000000 -0.00000003 -0.00000004

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000014 -0.00000000 -0.00000014 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00001976  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00032979 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00041982  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00045353 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00037854  0.00000000  0.00000000  0.00000001 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.53859008  0.00000001 -0.00000000  0.00000000 -0.54957037  0.00000002  0.00000001  0.00000001
                           0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000137 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000011  0.00000005 -0.08137296  0.00000000  0.00000003  0.64971192 -0.00000000 -0.00000000
                          -0.00000001  0.00000000  0.00000001  0.00000000  0.00000000  0.00000058  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000002  0.00000003 -0.00000003 -0.41692434  0.00000000  0.00000000 -0.28992415  0.00000002
                           0.00000000 -0.00000000  0.00000001  0.00000443  0.00000000 -0.00000000  0.00005142  0.00000000

   9    1  |1 1>+         -0.00000000  0.25392361  0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.50229924
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000001 -0.51851306 -0.00000005  0.00000000  0.00000000 -0.00000001  0.00000001 -0.03674922
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.67749199  0.00000001 -0.00000001  0.00000000 -0.12632202  0.00000000 -0.00000000 -0.00000002
                           0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000032 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000001  0.00000001  0.48725579  0.00000001  0.00000001  0.44085658  0.00000003
                          -0.00000000  0.00000000 -0.00000000 -0.00000518  0.00000000  0.00000000 -0.00007819  0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000018
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000009  0.00000000  0.00000000  0.00000010  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00041982 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00055813  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00050888 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00005661 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00038112  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.57735078  0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.63706593

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000001  0.00000082  0.00000000 -0.00000000  0.00011601 -0.00000000
                           0.00000002  0.00000003 -0.00000002  0.07740592  0.00000001  0.00000000  0.65411192  0.00000001

   8    1  |1 0>           0.00000001 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000020  0.00000000 -0.00000000
                          -0.00000010  0.00000002  0.28202216 -0.00000000 -0.00000000 -0.22300364  0.00000000 -0.00000001

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000019 -0.00000000  0.00000000  0.00000000
                           0.13923139  0.00000000 -0.00000001 -0.00000000 -0.07635044  0.00000001  0.00000001  0.00000002

  10    1  |1 0>           0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000126  0.00000000 -0.00000000 -0.00000000
                          -0.34413057 -0.00000001 -0.00000000 -0.00000000 -0.50691313  0.00000002  0.00000001 -0.00000001

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00011716 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000001  0.11242735

  12    1  |1 0>           0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000042  0.00000000 -0.00000000
                          -0.00000005 -0.00000003  0.57191069 -0.00000001 -0.00000002 -0.46498581  0.00000000  0.00000001

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000000  0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000  0.00000006 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00026278 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00044086  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00026597 -0.00000000 -0.00000000 -0.00000001  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00027394 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00041982  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000048 -0.00000000  0.00000000
                           0.00000002 -0.00000006  0.57367769 -0.00000001  0.00000002  0.54034816 -0.00000001  0.00000001

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000161 -0.00000000  0.00000000  0.00000000
                           0.33632361  0.00000001 -0.00000001 -0.00000000  0.64747575 -0.00000002 -0.00000001  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.07066064 -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.40744888

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000001  0.00000749  0.00000000  0.00000000 -0.00006965  0.00000000
                           0.00000002  0.00000003 -0.00000001  0.70483521 -0.00000001 -0.00000000 -0.39273016 -0.00000002

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000312  0.00000000 -0.00000000  0.00006624  0.00000000
                           0.00000001  0.00000001 -0.00000001 -0.29320813 -0.00000000 -0.00000000  0.37348367 -0.00000002

  11    1  |1 1>-          0.00000001 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000013  0.00000000  0.00000000
                          -0.00000010  0.00000008 -0.50759578  0.00000001 -0.00000001 -0.14126521 -0.00000000  0.00000001

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.57300926  0.00000005 -0.00000000  0.00000000 -0.00000001  0.00000001 -0.40229027

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00000000  0.00000000 -0.00000009 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000018

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000007 -0.00000000 -0.00000000 -0.00000008 -0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000002 -0.00155460 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000628  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001086  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001086
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000002  0.00000000  0.00000002  0.35564930 -0.00000001 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000002  0.00000000  0.00089151  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000001 -0.00000000  0.08026498 -0.00000001  0.00000000 -0.00000000  0.00000004  0.00000000
                          -0.00000000  0.00000002  0.00000053  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.02178984 -0.00000013 -0.00000002 -0.00000001 -0.00000000  0.00000000 -0.00000003
                           0.00000000  0.48998025 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.05067002  0.00000000 -0.00000000  0.00000002  0.53751694 -0.00000003 -0.00000000 -0.00000000
                           0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.66119161 -0.00000000  0.00000001  0.00000003  0.13296401  0.00000002 -0.00000000 -0.00000000
                          -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000003 -0.00000000 -0.00000001 -0.58415813  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000002 -0.00000000 -0.00146432 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000001 -0.02294558 -0.00000014 -0.00000002 -0.00000001 -0.00000000 -0.00000000  0.00000009
                           0.00000000  0.51596897 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000006  0.57734947 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000131  0.70710677
                          -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003  0.00002638

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000012  0.00000000  0.00000000  0.00000011 -0.00000032
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000003

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001253

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00001086  0.00000000

   6    1  |1 0>           0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.14806784 -0.00000000  0.00000001 -0.00000001 -0.02814848  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.02652407  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00117955 -0.00000001 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000001

   8    1  |1 0>          -0.00000000 -0.00000016 -0.00000381 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001 -0.00000001  0.58488243 -0.00000001 -0.00000001  0.00000000  0.00000006  0.00000000

   9    1  |1 0>           0.00000000 -0.00000003 -0.00000000 -0.00172655 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000003  0.00000000  0.00000002  0.68876605 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00055219  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.00000000 -0.22028293 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.35886419  0.00000000  0.00000001 -0.00000002  0.65574792 -0.00000014  0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000011  0.00000275  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.42152952  0.00000001  0.00000001  0.00000000 -0.00000012 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000003
                          -0.00000000  0.00000000  0.00000000  0.00000015  0.00000000 -0.00000000 -0.00000011  0.00000032

  14    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000003
                           0.00000000  0.00000000 -0.00000015  0.00000000 -0.00000000 -0.00000000  0.70710632  0.00000131

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000016 -0.00000000 -0.00000000  0.00000000  0.00000010  0.57734973  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00001086 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001086

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000010  0.00000241  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001  0.00000000 -0.36966248  0.00000001  0.00000001  0.00000000 -0.00000013 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000001 -0.00000000 -0.00024230 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000000 -0.00000001  0.09666086  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.37598784 -0.00000000  0.00000002  0.00000001  0.51176968 -0.00000002  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.32747889 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.01456327  0.00000009  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000006

  10    1  |1 1>-          0.00000000  0.61949630 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.02754954  0.00000017  0.00000002  0.00000001  0.00000000  0.00000000 -0.00000007

  11    1  |1 1>-          0.00000000  0.00000016  0.00000379  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001  0.00000000 -0.58063120  0.00000002  0.00000001 -0.00000000 -0.00000008 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.51786461 -0.00000000  0.00000000  0.00000004 -0.02627238  0.00000003 -0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00002638
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000131  0.70710679

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000003 -0.57734951 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000003
                           0.00000000  0.00000000 -0.00000012  0.00000000  0.00000000 -0.00000000  0.70710725  0.00000131

 State Sym Spin     / Nr.     41          42          43          44          45          46

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00001086 -0.00000000 -0.00001086  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00001882  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00001826 -0.00000000 -0.00000000  0.00000000  0.00001177
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00001085 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001086 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000005  0.00000000

   6    1  |1 1>+          0.00000014 -0.00000000 -0.00000010  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000014  0.00000000  0.00000000  0.00000000 -0.00000007
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000014 -0.00000000 -0.00000000  0.00000000  0.00000009
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000009  0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000006  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000 -0.44222398  0.00000007 -0.00000000  0.00000003  0.68637069
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000032 -0.00000000  0.00000002  0.00000003  0.70709909 -0.00000004
                          -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00330124  0.00000000

  15    1  |1 1>+          0.70710723  0.00000006  0.70710633 -0.00000018 -0.00000002 -0.00000003
                           0.00000003  0.00000000 -0.00000002 -0.00000001  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000106  0.00000000 -0.00000000  0.00000000  0.00002170

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00001086 -0.00000000 -0.00001086  0.00000000  0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000010  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00002172  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00001086  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000028

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000010  0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000009 -0.00000000 -0.00000007  0.00000000  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000010 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000008  0.00000000  0.00000000

  13    1  |1 0>           0.00000003 -0.00000000  0.00000002  0.00000001 -0.00000000  0.00000000
                          -0.70710633  0.00000006  0.70710723 -0.00000018 -0.00000002 -0.00000003

  14    1  |1 0>           0.00000003 -0.00000000  0.00000001  0.00000001 -0.00000000  0.00000000
                          -0.00000011  0.00000004  0.00000018  0.70710724 -0.00000003  0.00000003

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.81552627 -0.00000007 -0.00000005  0.00000001  0.03979177

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00001086  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000629 -0.00000000 -0.00001880  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000005  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001086  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00001086 -0.00000000 -0.00001087  0.00000000  0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00001932  0.00000000  0.00000000  0.00000000  0.00000993

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000009  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000008 -0.00000000  0.00000000 -0.00000000  0.00000002

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000007  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000019 -0.00000000 -0.00000000 -0.00000000 -0.00000009

  13    1  |1 1>-          0.00000003 -0.00000000  0.00000000  0.00000000 -0.00330124  0.00000000
                           0.00000032  0.00000000 -0.00000002 -0.00000003 -0.70709906  0.00000004

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.37330263 -0.00000000 -0.00000005  0.00000004  0.72616244

  15    1  |1 1>-          0.00000003  0.00000000 -0.00000001 -0.00000001  0.00000000 -0.00000000
                          -0.00000011 -0.00000004 -0.00000018 -0.70710632  0.00000003 -0.00000003


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -25.38835772     -0.00000026       -0.06      0.00000000        0.00      0.0000
     2   1    -25.35037170      0.03798577     8336.91      0.03798602     8336.97      1.0337
     3   1    -25.35037170      0.03798577     8336.91      0.03798602     8336.97      1.0337
     4   1    -25.35037169      0.03798577     8336.91      0.03798603     8336.97      1.0337
     5   1    -25.34943331      0.03892415     8542.86      0.03892441     8542.92      1.0592
     6   1    -25.34943331      0.03892415     8542.86      0.03892441     8542.92      1.0592
     7   1    -25.34943331      0.03892416     8542.87      0.03892441     8542.92      1.0592
     8   1    -25.34943331      0.03892416     8542.87      0.03892441     8542.92      1.0592
     9   1    -25.34943331      0.03892416     8542.87      0.03892442     8542.92      1.0592
    10   1    -25.34802571      0.04033175     8851.80      0.04033201     8851.85      1.0975
    11   1    -25.34802571      0.04033175     8851.80      0.04033201     8851.85      1.0975
    12   1    -25.34802571      0.04033176     8851.80      0.04033202     8851.85      1.0975
    13   1    -25.34802571      0.04033176     8851.80      0.04033202     8851.85      1.0975
    14   1    -25.34802571      0.04033176     8851.80      0.04033202     8851.85      1.0975
    15   1    -25.34802571      0.04033176     8851.80      0.04033202     8851.85      1.0975
    16   1    -25.34802571      0.04033176     8851.80      0.04033202     8851.85      1.0975
    17   1    -25.29652213      0.09183534    20155.53      0.09183559    20155.58      2.4990
    18   1    -25.29652213      0.09183534    20155.53      0.09183559    20155.58      2.4990
    19   1    -25.29652213      0.09183534    20155.53      0.09183559    20155.58      2.4990
    20   1    -25.29652213      0.09183534    20155.53      0.09183559    20155.58      2.4990
    21   1    -25.29652213      0.09183534    20155.53      0.09183560    20155.58      2.4990
    22   1    -25.29522985      0.09312762    20439.15      0.09312787    20439.21      2.5341
    23   1    -25.29522985      0.09312762    20439.15      0.09312787    20439.21      2.5341
    24   1    -25.29522985      0.09312762    20439.15      0.09312787    20439.21      2.5341
    25   1    -25.29522985      0.09312762    20439.15      0.09312787    20439.21      2.5341
    26   1    -25.29522985      0.09312762    20439.15      0.09312787    20439.21      2.5341
    27   1    -25.29522985      0.09312762    20439.15      0.09312788    20439.21      2.5341
    28   1    -25.29522984      0.09312762    20439.15      0.09312788    20439.21      2.5341
    29   1    -25.29350686      0.09485061    20817.30      0.09485087    20817.36      2.5810
    30   1    -25.29350686      0.09485061    20817.30      0.09485087    20817.36      2.5810
    31   1    -25.29350685      0.09485061    20817.30      0.09485087    20817.36      2.5810
    32   1    -25.29350685      0.09485062    20817.30      0.09485088    20817.36      2.5810
    33   1    -25.29350685      0.09485062    20817.30      0.09485088    20817.36      2.5810
    34   1    -25.29350685      0.09485062    20817.31      0.09485088    20817.36      2.5810
    35   1    -25.29350684      0.09485062    20817.31      0.09485088    20817.36      2.5810
    36   1    -25.29350684      0.09485062    20817.31      0.09485088    20817.36      2.5810
    37   1    -25.29350684      0.09485063    20817.31      0.09485088    20817.36      2.5810
    38   1    -25.28207002      0.10628745    23327.40      0.10628771    23327.46      2.8922
    39   1    -25.28160142      0.10675605    23430.25      0.10675631    23430.30      2.9050
    40   1    -25.28160142      0.10675605    23430.25      0.10675631    23430.30      2.9050
    41   1    -25.28160142      0.10675605    23430.25      0.10675631    23430.30      2.9050
    42   1    -25.28066370      0.10769377    23636.05      0.10769403    23636.11      2.9305
    43   1    -25.28066370      0.10769377    23636.05      0.10769403    23636.11      2.9305
    44   1    -25.28066370      0.10769377    23636.05      0.10769403    23636.11      2.9305
    45   1    -25.28066369      0.10769377    23636.05      0.10769403    23636.11      2.9305
    46   1    -25.28066369      0.10769377    23636.05      0.10769403    23636.11      2.9305

 E0 =    -25.38835747 is the energy of the lowest zeroth-order state
 E1 =    -25.38835772 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999879 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+       0.00000000  0.54772447 -0.00000001  0.00000000  0.00000000  0.00000000  0.40824620 -0.00000008
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000001

  3  1     2    1  |1 1>+      -0.00000000  0.00000000  0.31590136 -0.00000000  0.00000001  0.00000000  0.00000014  0.70734836
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

  4  1     3    1  |1 1>+       0.00000003  0.00000000 -0.00000000  0.00000000  0.44121462 -0.00000000 -0.00000000  0.00000007
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     4    1  |1 1>+      -0.00000000  0.00000001  0.54791103 -0.00000000 -0.00000001 -0.00000000 -0.00000008 -0.40782819
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.54772260  0.00000000 -0.40824661  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000  0.00030947  0.00000000  0.00000000

  7  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00029616 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00029621
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00019147 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000015 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00022992 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00029082 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+      -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00022950  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00032207 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000024 -0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.00089755  0.00000000 -0.00000000  0.00000000 -0.00001828 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00001402 -0.00000000  0.00001881 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

 16  1    15    1  |1 1>+      -0.00000000 -0.00001403  0.00000000 -0.00000000  0.00000000  0.00000000  0.00001882 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.00000000 -0.00000000 -0.00000000  0.81558537  0.00000000 -0.00000000 -0.00000002

 18  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000007  0.00000000 -0.00000037 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.63245503  0.00000000 -0.00048197  0.00000000  0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000005  0.00000001
                               -0.00000000 -0.54772057  0.00000001 -0.00000000  0.00000000  0.00000000  0.40825151 -0.00000008

 20  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00061895  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00037341 -0.00000000  0.81649762 -0.00000000 -0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                                0.00000000  0.00000001  0.54772035 -0.00000000  0.00000001  0.00000000  0.00000008  0.40825149

 22  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00029588 -0.00000000  0.00000000  0.00000000

 23  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000022 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00029621  0.00000000  0.00000000

 24  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00026397

 25  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00033633  0.00000000

 26  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00016511 -0.00000000

 27  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00001873  0.00000000  0.00000000 -0.00000000

 28  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00026590

 29  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00001403 -0.00000000  0.00000000  0.00000000  0.00000000  0.00001881 -0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00001402  0.00000000  0.00000000  0.00000000  0.00000000  0.00001880

 31  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00089754  0.00000000  0.00000000  0.00000000 -0.00000103  0.00000000  0.00000000 -0.00000000

 32  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                                0.00000000 -0.00000001 -0.54772462  0.00000000  0.00000001  0.00000000  0.00000008  0.40824602

 33  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000008  0.00000001
                               -0.00000000 -0.31654845  0.00000000 -0.00000000  0.00000000  0.00000000  0.70686589 -0.00000014

 34  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000  0.00030947  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.54772297 -0.00000000  0.40824645 -0.00000000 -0.00000000

 35  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005  0.00000001
                                0.00000000  0.54753735 -0.00000001  0.00000000  0.00000000  0.00000000  0.40866366 -0.00000008

 36  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.37436586  0.00000000  0.00000000 -0.00000009

 37  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00029626

 38  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00029621 -0.00000000

 39  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00000000  0.00000000  0.00000000  0.00033391 -0.00000000 -0.00000000  0.00000000

 40  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00007578 -0.00000000 -0.00000000

 41  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000028  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00036694 -0.00000000 -0.00000000

 42  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00022938

 43  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00017802  0.00000000 -0.00000000 -0.00000000

 44  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00001402  0.00000000 -0.00001882  0.00000000  0.00000000

 45  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00089755  0.00000000  0.00000000  0.00000000 -0.00001931 -0.00000000  0.00000000 -0.00000000

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00001402  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00001882


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     1    1  |1 1>+      -0.00000000  0.00000137 -0.70585994  0.00000001  0.00000000  0.18733486  0.00000000  0.00000003
                               -0.00000000 -0.00000014  0.00000060  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000

  3  1     2    1  |1 1>+       0.00000008  0.00907921  0.00000002  0.00000000 -0.00000002  0.00000000 -0.63228301 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000001  0.00000001

  4  1     3    1  |1 1>+      -0.68701891  0.00000001 -0.00000000  0.00000002  0.57735106 -0.00000001 -0.00000002  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+      -0.00000005  0.70977441  0.00000138  0.00000000 -0.00000001 -0.00000000 -0.17230673  0.00000000
                                0.00000000 -0.00000003  0.00000014  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.53598986  0.00000001 -0.00000005 -0.00000000  0.49603324
                               -0.00000000 -0.00000000  0.00000000  0.00031738 -0.00000000 -0.00000000 -0.00000001 -0.00011263

  7  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00025932  0.00000000  0.00000000  0.00033026  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     7    1  |1 1>+      -0.00000000 -0.00025207 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00033572 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00044639  0.00000000  0.00000000 -0.00000000 -0.00032442
                                0.00000000 -0.00000000  0.00000000  0.00000026 -0.00000000  0.00000000  0.00000000  0.00000007

 10  1     9    1  |1 1>+      -0.00030249 -0.00000000  0.00000000 -0.00000000 -0.00018464  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    10    1  |1 1>+       0.00012939  0.00000000 -0.00000000  0.00000000  0.00037704 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000341  0.00000000  0.00000000  0.00051410  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00008615 -0.00000000 -0.00000000  0.00000000  0.00035874
                                0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000 -0.00000008

 14  1    13    1  |1 1>+      -0.00001174  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1    15    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.03859541 -0.00000001  0.00000000 -0.00000002 -0.57734780  0.00000001  0.00000002 -0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00004035 -0.00000000  0.00000001  0.00000002  0.00017520
                                0.00000000 -0.00000000  0.00000000  0.06814149 -0.00000000 -0.00000010  0.00000000  0.77159367

 19  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000001  0.00000001
                               -0.00000000 -0.00000001  0.00492183  0.00000002  0.00000001  0.73027961  0.00000001  0.00000009

 20  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00034054  0.00000000 -0.00000000 -0.00000000  0.00001158
                               -0.00000000 -0.00000000 -0.00000001 -0.57509165  0.00000002  0.00000001 -0.00000000  0.05099184

 21  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000002  0.00000001
                                0.00000005 -0.01096775 -0.00000002 -0.00000001  0.00000003 -0.00000001  0.73021401  0.00000000

 22  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00001392 -0.00000000  0.00000000 -0.00000000 -0.00041982  0.00000000  0.00000000 -0.00000000

 23  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000025  0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00041821  0.00000000  0.00000000 -0.00000000  0.00003675

 24  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00044464 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00015459 -0.00000000

 25  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00027623  0.00000000  0.00000000  0.00019030  0.00000000  0.00000000

 26  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00056590  0.00000000 -0.00000000 -0.00008869 -0.00000000 -0.00000000

 27  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00039698  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000 -0.00000000 -0.00000000

 28  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00044585 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00014229 -0.00000000

 29  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000

 30  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

 31  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00002170  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 32  1     1    1  |1 1>-       0.00000000  0.00000003 -0.00000014  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000005  0.70428477  0.00000137 -0.00000000  0.00000000 -0.00000000  0.19317235  0.00000000

 33  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000001 -0.00000000
                               -0.00000000  0.00000001 -0.00468086 -0.00000002 -0.00000001 -0.63254674 -0.00000000 -0.00000008

 34  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00036374 -0.00000000  0.00000000  0.00000001  0.00008968
                               -0.00000000 -0.00000000  0.00000001  0.61428033 -0.00000002 -0.00000007  0.00000000  0.39496010

 35  1     4    1  |1 1>-       0.00000000 -0.00000014  0.00000060  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.00000138  0.70831849 -0.00000000  0.00000000  0.17743007  0.00000000  0.00000002

 36  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.72561356  0.00000001 -0.00000000  0.00000002  0.57735149 -0.00000001 -0.00000002  0.00000000

 37  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00026204 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00032789 -0.00000000

 38  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00025484  0.00000000  0.00000000  0.00033362  0.00000000  0.00000000

 39  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00021307  0.00000000 -0.00000000  0.00000000  0.00005138 -0.00000000 -0.00000000  0.00000000

 40  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000022  0.00000000  0.00000000  0.00000000  0.00000011
                               -0.00000000 -0.00000000 -0.00000000 -0.00036925  0.00000000 -0.00000000 -0.00000000  0.00049578

 41  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000005
                               -0.00000000  0.00000000 -0.00000000 -0.00010403  0.00000000  0.00000000 -0.00000000 -0.00021831

 42  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000778  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00051418 -0.00000000

 43  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00023896 -0.00000000  0.00000000 -0.00000000 -0.00041666  0.00000000  0.00000000 -0.00000000

 44  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000996 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 46  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00024782  0.00000000 -0.00053067  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     2    1  |1 1>+       0.00000000 -0.00042940  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00032042
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00027367  0.00000000  0.00041326 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+      -0.00000000  0.00024757 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00027638
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00024783  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00037243 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000

  7  1     6    1  |1 1>+       0.00000002  0.00000002 -0.00000030 -0.48787471 -0.00000001 -0.20828808 -0.00000000  0.00000010
                               -0.00000000 -0.00000000  0.00000000 -0.00000040  0.00000000 -0.00000000  0.00000000 -0.00000001

  8  1     7    1  |1 1>+       0.00000053 -0.48795265  0.00000005 -0.00000002 -0.00000001  0.00000001 -0.00000005  0.57158757
                               -0.00000002 -0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

  9  1     8    1  |1 1>+       0.31540155  0.00000034 -0.00000004  0.00000002  0.00000001  0.00000004  0.63410106  0.00000006
                               -0.00000360  0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00002797  0.00000000

 10  1     9    1  |1 1>+      -0.00000003 -0.00000003 -0.37170346  0.00000023 -0.50355012 -0.00000000 -0.00000001 -0.00000002
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    10    1  |1 1>+      -0.00000007 -0.00000006 -0.48201646  0.00000029  0.20639722  0.00000000  0.00000002  0.00000004
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+      -0.00000002 -0.00000001  0.00000023  0.37806085  0.00000001  0.20217357 -0.00000004  0.00000012
                                0.00000000  0.00000000 -0.00000000  0.00000031 -0.00000000 -0.00000000  0.00000000 -0.00000001

 13  1    12    1  |1 1>+       0.53054008  0.00000058 -0.00000007  0.00000003  0.00000002 -0.00000001 -0.14143469 -0.00000001
                               -0.00000606  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000624 -0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000000  0.00000013 -0.00000000  0.00000016  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1    14    1  |1 1>+      -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1    15    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000004 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00049473  0.00000000 -0.00003038  0.00000000  0.00000000  0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000029  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00007576  0.00000000

 19  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00024783  0.00000000 -0.00015180  0.00000000 -0.00000000

 20  1     4    1  |1 0>       -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000
                               -0.00049566 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00041599 -0.00000000

 21  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00024783  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00036980

 22  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000007 -0.00000005 -0.48704204  0.00000030 -0.02977313 -0.00000000 -0.00000003 -0.00000004

 23  1     7    1  |1 0>       -0.00000557  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000  0.00002523 -0.00000000
                               -0.48795229 -0.00000053  0.00000007 -0.00000002 -0.00000002  0.00000004  0.57213921  0.00000005

 24  1     8    1  |1 0>       -0.00000002 -0.00000005 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000002
                               -0.00000047  0.43484123 -0.00000005  0.00000002  0.00000001  0.00000001 -0.00000004  0.58271626

 25  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000045  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000003 -0.00000002  0.00000034  0.55404984  0.00000001  0.43978644 -0.00000003  0.00000002

 26  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000022 -0.00000000 -0.00000000  0.00000000 -0.00000001
                                0.00000001  0.00000001 -0.00000017 -0.27199033 -0.00000000  0.70859668 -0.00000003 -0.00000007

 27  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000003 -0.00000002 -0.04002361  0.00000002  0.65342880  0.00000000  0.00000000  0.00000000

 28  1    12    1  |1 0>        0.00000002  0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001
                                0.00000047 -0.43802214  0.00000005 -0.00000002 -0.00000001  0.00000001 -0.00000001  0.29522117

 29  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000008 -0.00000000 -0.00000005 -0.00000000  0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001

 31  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000020 -0.00000000  0.00000000  0.00000000

 32  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00024782  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00046147

 33  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00042910  0.00000000  0.00013119 -0.00000000  0.00000000

 34  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000
                               -0.00024783 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00045963  0.00000000

 35  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00024808  0.00000000  0.00045485 -0.00000000 -0.00000000

 36  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00022106  0.00000000 -0.00044364 -0.00000000 -0.00000000 -0.00000000

 37  1     6    1  |1 1>-      -0.00000002 -0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000001
                               -0.00000053  0.48802740 -0.00000005  0.00000002  0.00000001  0.00000001  0.00000003 -0.06400321

 38  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000040 -0.00000000  0.00000000 -0.00000000  0.00000001
                                0.00000002  0.00000002 -0.00000030 -0.48795278 -0.00000001  0.46927606 -0.00000004  0.00000005

 39  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000009  0.00000007  0.55490211 -0.00000033 -0.34322138  0.00000000  0.00000000  0.00000001

 40  1     9    1  |1 1>-       0.00000143 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00002096 -0.00000000
                                0.12483980  0.00000014 -0.00000002  0.00000001  0.00000000  0.00000003  0.47532143  0.00000004

 41  1    10    1  |1 1>-       0.00000690 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000692 -0.00000000
                                0.60445538  0.00000066 -0.00000008  0.00000003  0.00000002  0.00000001  0.15696431  0.00000001

 42  1    11    1  |1 1>-      -0.00000002 -0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000041  0.37786348 -0.00000004  0.00000001  0.00000001  0.00000000 -0.00000006  0.49241948

 43  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000003  0.00000002  0.28769449 -0.00000018  0.39771919 -0.00000000 -0.00000003 -0.00000004

 44  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003 -0.00000000

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000014 -0.00000000 -0.00000014 -0.00000000 -0.00000000  0.00000000

 46  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.00001976  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00032979 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.00000000  0.00041982  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00045353 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00037854  0.00000000  0.00000000  0.00000001 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     6    1  |1 1>+       0.53859008  0.00000001 -0.00000000  0.00000000 -0.54957037  0.00000002  0.00000001  0.00000001
                                0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000137 -0.00000000  0.00000000 -0.00000000

  8  1     7    1  |1 1>+      -0.00000011  0.00000005 -0.08137296  0.00000000  0.00000003  0.64971192 -0.00000000 -0.00000000
                               -0.00000001  0.00000000  0.00000001  0.00000000  0.00000000  0.00000058  0.00000000 -0.00000000

  9  1     8    1  |1 1>+       0.00000002  0.00000003 -0.00000003 -0.41692434  0.00000000  0.00000000 -0.28992415  0.00000002
                                0.00000000 -0.00000000  0.00000001  0.00000443  0.00000000 -0.00000000  0.00005142  0.00000000

 10  1     9    1  |1 1>+      -0.00000000  0.25392361  0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.50229924
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    10    1  |1 1>+       0.00000001 -0.51851306 -0.00000005  0.00000000  0.00000000 -0.00000001  0.00000001 -0.03674922
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.67749199  0.00000001 -0.00000001  0.00000000 -0.12632202  0.00000000 -0.00000000 -0.00000002
                                0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000032 -0.00000000  0.00000000  0.00000000

 13  1    12    1  |1 1>+      -0.00000000 -0.00000001  0.00000001  0.48725579  0.00000001  0.00000001  0.44085658  0.00000003
                               -0.00000000  0.00000000 -0.00000000 -0.00000518  0.00000000  0.00000000 -0.00007819  0.00000000

 14  1    13    1  |1 1>+      -0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000018
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000009  0.00000000  0.00000000  0.00000010  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1    15    1  |1 1>+      -0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00041982 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

 18  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00055813  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00050888 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00005661 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00038112  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.57735078  0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.63706593

 23  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000001  0.00000082  0.00000000 -0.00000000  0.00011601 -0.00000000
                                0.00000002  0.00000003 -0.00000002  0.07740592  0.00000001  0.00000000  0.65411192  0.00000001

 24  1     8    1  |1 0>        0.00000001 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000020  0.00000000 -0.00000000
                               -0.00000010  0.00000002  0.28202216 -0.00000000 -0.00000000 -0.22300364  0.00000000 -0.00000001

 25  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000019 -0.00000000  0.00000000  0.00000000
                                0.13923139  0.00000000 -0.00000001 -0.00000000 -0.07635044  0.00000001  0.00000001  0.00000002

 26  1    10    1  |1 0>        0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000126  0.00000000 -0.00000000 -0.00000000
                               -0.34413057 -0.00000001 -0.00000000 -0.00000000 -0.50691313  0.00000002  0.00000001 -0.00000001

 27  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00011716 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000001  0.11242735

 28  1    12    1  |1 0>        0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000042  0.00000000 -0.00000000
                               -0.00000005 -0.00000003  0.57191069 -0.00000001 -0.00000002 -0.46498581  0.00000000  0.00000001

 29  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000008 -0.00000000  0.00000000  0.00000000

 30  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000  0.00000006 -0.00000000 -0.00000000

 31  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004

 32  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00026278 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 33  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00044086  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 34  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00026597 -0.00000000 -0.00000000 -0.00000001  0.00000000

 35  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00027394 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00041982  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001

 37  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000048 -0.00000000  0.00000000
                                0.00000002 -0.00000006  0.57367769 -0.00000001  0.00000002  0.54034816 -0.00000001  0.00000001

 38  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000161 -0.00000000  0.00000000  0.00000000
                                0.33632361  0.00000001 -0.00000001 -0.00000000  0.64747575 -0.00000002 -0.00000001  0.00000000

 39  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.07066064 -0.00000001  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.40744888

 40  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000001  0.00000749  0.00000000  0.00000000 -0.00006965  0.00000000
                                0.00000002  0.00000003 -0.00000001  0.70483521 -0.00000001 -0.00000000 -0.39273016 -0.00000002

 41  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000312  0.00000000 -0.00000000  0.00006624  0.00000000
                                0.00000001  0.00000001 -0.00000001 -0.29320813 -0.00000000 -0.00000000  0.37348367 -0.00000002

 42  1    11    1  |1 1>-       0.00000001 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000013  0.00000000  0.00000000
                               -0.00000010  0.00000008 -0.50759578  0.00000001 -0.00000001 -0.14126521 -0.00000000  0.00000001

 43  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.57300926  0.00000005 -0.00000000  0.00000000 -0.00000001  0.00000001 -0.40229027

 44  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00000000  0.00000000 -0.00000009 -0.00000000

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000018

 46  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000007 -0.00000000 -0.00000000 -0.00000008 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000002 -0.00155460 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000628  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     4    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001086  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001086
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     6    1  |1 1>+      -0.00000002  0.00000000  0.00000002  0.35564930 -0.00000001 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000002  0.00000000  0.00089151  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     7    1  |1 1>+       0.00000001 -0.00000000  0.08026498 -0.00000001  0.00000000 -0.00000000  0.00000004  0.00000000
                               -0.00000000  0.00000002  0.00000053  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     8    1  |1 1>+       0.00000000 -0.02178984 -0.00000013 -0.00000002 -0.00000001 -0.00000000  0.00000000 -0.00000003
                                0.00000000  0.48998025 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.05067002  0.00000000 -0.00000000  0.00000002  0.53751694 -0.00000003 -0.00000000 -0.00000000
                                0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    10    1  |1 1>+       0.66119161 -0.00000000  0.00000001  0.00000003  0.13296401  0.00000002 -0.00000000 -0.00000000
                               -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.00000003 -0.00000000 -0.00000001 -0.58415813  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000002 -0.00000000 -0.00146432 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1    12    1  |1 1>+      -0.00000001 -0.02294558 -0.00000014 -0.00000002 -0.00000001 -0.00000000 -0.00000000  0.00000009
                                0.00000000  0.51596897 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1    13    1  |1 1>+      -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000006  0.57734947 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000131  0.70710677
                               -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003  0.00002638

 16  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000012  0.00000000  0.00000000  0.00000011 -0.00000032
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000003

 17  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001253

 19  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002

 21  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00001086  0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.14806784 -0.00000000  0.00000001 -0.00000001 -0.02814848  0.00000000 -0.00000000 -0.00000000

 23  1     7    1  |1 0>       -0.00000000 -0.02652407  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00117955 -0.00000001 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000001

 24  1     8    1  |1 0>       -0.00000000 -0.00000016 -0.00000381 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001 -0.00000001  0.58488243 -0.00000001 -0.00000001  0.00000000  0.00000006  0.00000000

 25  1     9    1  |1 0>        0.00000000 -0.00000003 -0.00000000 -0.00172655 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000003  0.00000000  0.00000002  0.68876605 -0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00055219  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.00000000 -0.22028293 -0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.35886419  0.00000000  0.00000001 -0.00000002  0.65574792 -0.00000014  0.00000000 -0.00000000

 28  1    12    1  |1 0>       -0.00000000  0.00000011  0.00000275  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.42152952  0.00000001  0.00000001  0.00000000 -0.00000012 -0.00000000

 29  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000003
                               -0.00000000  0.00000000  0.00000000  0.00000015  0.00000000 -0.00000000 -0.00000011  0.00000032

 30  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000003
                                0.00000000  0.00000000 -0.00000015  0.00000000 -0.00000000 -0.00000000  0.70710632  0.00000131

 31  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000016 -0.00000000 -0.00000000  0.00000000  0.00000010  0.57734973  0.00000000 -0.00000000

 32  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00001086 -0.00000000

 33  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 34  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001086

 35  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 37  1     6    1  |1 1>-       0.00000000  0.00000010  0.00000241  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001  0.00000000 -0.36966248  0.00000001  0.00000001  0.00000000 -0.00000013 -0.00000000

 38  1     7    1  |1 1>-       0.00000000  0.00000001 -0.00000000 -0.00024230 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000000 -0.00000001  0.09666086  0.00000000  0.00000000  0.00000000 -0.00000000

 39  1     8    1  |1 1>-       0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.37598784 -0.00000000  0.00000002  0.00000001  0.51176968 -0.00000002  0.00000000 -0.00000000

 40  1     9    1  |1 1>-       0.00000000  0.32747889 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.01456327  0.00000009  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000006

 41  1    10    1  |1 1>-       0.00000000  0.61949630 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.02754954  0.00000017  0.00000002  0.00000001  0.00000000  0.00000000 -0.00000007

 42  1    11    1  |1 1>-       0.00000000  0.00000016  0.00000379  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001  0.00000000 -0.58063120  0.00000002  0.00000001 -0.00000000 -0.00000008 -0.00000000

 43  1    12    1  |1 1>-      -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.51786461 -0.00000000  0.00000000  0.00000004 -0.02627238  0.00000003 -0.00000000 -0.00000000

 44  1    13    1  |1 1>-       0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00002638
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000131  0.70710679

 45  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000003 -0.57734951 -0.00000000  0.00000000

 46  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000003
                                0.00000000  0.00000000 -0.00000012  0.00000000  0.00000000 -0.00000000  0.70710725  0.00000131


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+       0.00001086 -0.00000000 -0.00001086  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00001882  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     3    1  |1 1>+       0.00000000  0.00001826 -0.00000000 -0.00000000  0.00000000  0.00001177
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00001085 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001086 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000005  0.00000000

  7  1     6    1  |1 1>+       0.00000014 -0.00000000 -0.00000010  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     8    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     9    1  |1 1>+      -0.00000000 -0.00000014  0.00000000  0.00000000  0.00000000 -0.00000007
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    10    1  |1 1>+      -0.00000000  0.00000014 -0.00000000 -0.00000000  0.00000000  0.00000009
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    11    1  |1 1>+      -0.00000009  0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000006  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1    13    1  |1 1>+      -0.00000000 -0.44222398  0.00000007 -0.00000000  0.00000003  0.68637069
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1    14    1  |1 1>+       0.00000032 -0.00000000  0.00000002  0.00000003  0.70709909 -0.00000004
                               -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00330124  0.00000000

 16  1    15    1  |1 1>+       0.70710723  0.00000006  0.70710633 -0.00000018 -0.00000002 -0.00000003
                                0.00000003  0.00000000 -0.00000002 -0.00000001  0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000106  0.00000000 -0.00000000  0.00000000  0.00002170

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00001086 -0.00000000 -0.00001086  0.00000000  0.00000000  0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000010  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00002172  0.00000000

 21  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00001086  0.00000000 -0.00000000

 22  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000028

 23  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000010  0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000

 26  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000009 -0.00000000 -0.00000007  0.00000000  0.00000000 -0.00000000

 27  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000010 -0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000008  0.00000000  0.00000000

 29  1    13    1  |1 0>        0.00000003 -0.00000000  0.00000002  0.00000001 -0.00000000  0.00000000
                               -0.70710633  0.00000006  0.70710723 -0.00000018 -0.00000002 -0.00000003

 30  1    14    1  |1 0>        0.00000003 -0.00000000  0.00000001  0.00000001 -0.00000000  0.00000000
                               -0.00000011  0.00000004  0.00000018  0.70710724 -0.00000003  0.00000003

 31  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.81552627 -0.00000007 -0.00000005  0.00000001  0.03979177

 32  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00001086  0.00000000 -0.00000000

 33  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000629 -0.00000000 -0.00001880  0.00000000  0.00000000  0.00000000

 34  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000005  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001086  0.00000000

 35  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00001086 -0.00000000 -0.00001087  0.00000000  0.00000000  0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00001932  0.00000000  0.00000000  0.00000000  0.00000993

 37  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000009  0.00000000  0.00000000

 38  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000

 39  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000008 -0.00000000  0.00000000 -0.00000000  0.00000002

 40  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000007  0.00000000

 41  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000

 42  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000

 43  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000019 -0.00000000 -0.00000000 -0.00000000 -0.00000009

 44  1    13    1  |1 1>-       0.00000003 -0.00000000  0.00000000  0.00000000 -0.00330124  0.00000000
                                0.00000032  0.00000000 -0.00000002 -0.00000003 -0.70709906  0.00000004

 45  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.37330263 -0.00000000 -0.00000005  0.00000004  0.72616244

 46  1    15    1  |1 1>-       0.00000003  0.00000000 -0.00000001 -0.00000001  0.00000000 -0.00000000
                               -0.00000011 -0.00000004 -0.00000018 -0.70710632  0.00000003 -0.00000003



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.67%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    9.98%    0.00%    0.00%    0.00%    0.00%   50.03%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   19.47%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%   30.02%    0.00%    0.00%    0.00%    0.00%   16.63%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%   30.00%    0.00%   16.67%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.52%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%   40.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.67%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   66.67%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.67%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.67%
 33  1     2    1  |1 1>-         0.00%   10.02%    0.00%    0.00%    0.00%    0.00%   49.97%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%   16.67%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%   29.98%    0.00%    0.00%    0.00%    0.00%   16.70%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   14.01%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%   49.82%    0.00%    0.00%    3.51%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   39.98%    0.00%
  4  1     3    1  |1 1>+        47.20%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%   50.38%    0.00%    0.00%    0.00%    0.00%    2.97%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%   28.73%    0.00%    0.00%    0.00%   24.60%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.15%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.46%    0.00%    0.00%    0.00%   59.54%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   53.33%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%   33.07%    0.00%    0.00%    0.00%    0.26%
 21  1     5    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   53.32%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%   49.60%    0.00%    0.00%    0.00%    0.00%    3.73%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   40.01%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%   37.73%    0.00%    0.00%    0.00%   15.60%
 35  1     4    1  |1 1>-         0.00%    0.00%   50.17%    0.00%    0.00%    3.15%    0.00%    0.00%
 36  1     5    1  |1 1>-        52.65%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%   23.80%    0.00%    4.34%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%   23.81%    0.00%    0.00%    0.00%    0.00%    0.00%   32.67%
  9  1     8    1  |1 1>+         9.95%    0.00%    0.00%    0.00%    0.00%    0.00%   40.21%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%   13.82%    0.00%   25.36%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%   23.23%    0.00%    4.26%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%   14.29%    0.00%    4.09%    0.00%    0.00%
 13  1    12    1  |1 1>+        28.15%    0.00%    0.00%    0.00%    0.00%    0.00%    2.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%   23.72%    0.00%    0.09%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>         23.81%    0.00%    0.00%    0.00%    0.00%    0.00%   32.73%    0.00%
 24  1     8    1  |1 0>          0.00%   18.91%    0.00%    0.00%    0.00%    0.00%    0.00%   33.96%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%   30.70%    0.00%   19.34%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    7.40%    0.00%   50.21%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.16%    0.00%   42.70%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%   19.19%    0.00%    0.00%    0.00%    0.00%    0.00%    8.72%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%   23.82%    0.00%    0.00%    0.00%    0.00%    0.00%    0.41%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%   23.81%    0.00%   22.02%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%   30.79%    0.00%   11.78%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         1.56%    0.00%    0.00%    0.00%    0.00%    0.00%   22.59%    0.00%
 41  1    10    1  |1 1>-        36.54%    0.00%    0.00%    0.00%    0.00%    0.00%    2.46%    0.00%
 42  1    11    1  |1 1>-         0.00%   14.28%    0.00%    0.00%    0.00%    0.00%    0.00%   24.25%
 43  1    12    1  |1 1>-         0.00%    0.00%    8.28%    0.00%   15.82%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+        29.01%    0.00%    0.00%    0.00%   30.20%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.66%    0.00%    0.00%   42.21%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%   17.38%    0.00%    0.00%    8.41%    0.00%
 10  1     9    1  |1 1>+         0.00%    6.45%    0.00%    0.00%    0.00%    0.00%    0.00%   25.23%
 11  1    10    1  |1 1>+         0.00%   26.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.14%
 12  1    11    1  |1 1>+        45.90%    0.00%    0.00%    0.00%    1.60%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%   23.74%    0.00%    0.00%   19.44%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%   40.59%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.60%    0.00%    0.00%   42.79%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    7.95%    0.00%    0.00%    4.97%    0.00%    0.00%
 25  1     9    1  |1 0>          1.94%    0.00%    0.00%    0.00%    0.58%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>         11.84%    0.00%    0.00%    0.00%   25.70%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.26%
 28  1    12    1  |1 0>          0.00%    0.00%   32.71%    0.00%    0.00%   21.62%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%   32.91%    0.00%    0.00%   29.20%    0.00%    0.00%
 38  1     7    1  |1 1>-        11.31%    0.00%    0.00%    0.00%   41.92%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.50%    0.00%    0.00%    0.00%    0.00%    0.00%   16.60%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%   49.68%    0.00%    0.00%   15.42%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    8.60%    0.00%    0.00%   13.95%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%   25.77%    0.00%    0.00%    2.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%   32.83%    0.00%    0.00%    0.00%    0.00%    0.00%   16.18%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%   12.65%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.64%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%   24.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.26%    0.00%    0.00%    0.00%   28.89%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+        43.72%    0.00%    0.00%    0.00%    1.77%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%   34.12%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%   26.68%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          2.19%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%   34.21%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%   47.44%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    4.85%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>         12.88%    0.00%    0.00%    0.00%   43.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%   17.77%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%   13.67%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.93%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-        14.14%    0.00%    0.00%    0.00%   26.19%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%   10.75%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%   38.45%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%   33.71%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-        26.82%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%   19.56%    0.00%    0.00%    0.00%   47.11%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 16  1    15    1  |1 1>+        50.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>         50.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%   66.51%    0.00%    0.00%    0.00%    0.16%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 45  1    14    1  |1 1>-         0.00%   13.94%    0.00%    0.00%    0.00%   52.73%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      26       48.71       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                         EKIN      POT     PPINT     H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)  1101     1401     1411     1650(1)  1700(2)
                                         OPER      SR      EKINR    POTR    MOLCAS    OPER   

              2       7      392.11       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       687.36    421.05      0.39    255.42      4.13      2.40      0.63      3.06
 REAL TIME  *       774.55 SEC
 DISK USED  *       440.89 MB (local),        7.38 GB (total)
 SF USED    *         3.61 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -25.280663694352

              CI              CI           MULTI         RHF-SCF
    -25.25382851    -25.36315199    -25.00505262    -25.09501761
 **********************************************************************************************************************************
 Molpro calculation terminated
