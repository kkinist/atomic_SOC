
 Working directory              : /wrk/irikura/molpro.cLszGtqah0/
 Global scratch directory       : /wrk/irikura/molpro.cLszGtqah0/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.cLszGtqah0/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.01 sec
 ***,Ca SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ca};
 
 basis=aug-cc-pwCV5Z-PP
 
 {rhf;wf,sym=1,spin=0}
 
 NSING=7
 NTRIP=9
 
                                                                                 ! Active space (2/10)
 {multi
     closed,1,3
     occ,8,6
     wf,sym=1,spin=0;state,NSING;
     wf,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=0;state,NSING; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5301.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5301.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.02 sec, 661 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ca SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 17-Apr-24          TIME: 13:12:58  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ca   ECP ECP10MDF                 selected for group  1
 Library entry CA     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CA     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CA     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CA     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CA     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry CA     H aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  CA     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         361
 NUMBER OF SYMMETRY AOS:          267
 NUMBER OF CONTRACTIONS:          218   (  106Ag  +  112Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 7 8 9101112131415   7 8 9101112131415 7
                                        8 9101112131415 7 8   9101112131415 7 8 9  101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011
                                       12131415161718192021  11121314151617181920  21111213141516171819  2021


 Eigenvalues of metric

         1 0.735E-04 0.735E-04 0.735E-04 0.735E-04 0.735E-04 0.153E-03 0.325E-03 0.471E-03
         2 0.186E-03 0.186E-03 0.186E-03 0.553E-03 0.553E-03 0.553E-03 0.553E-03 0.553E-03


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     247.202 MB (compressed) written to integral file ( 12.4%)

     Node minimum: 16.253 MB, node maximum: 24.117 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   11974923.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   11974923      RECORD LENGTH: 524288

 Memory used in sort:      12.53 MW

 SORT1 READ   248856419. AND WROTE     2029921. INTEGRALS IN      6 RECORDS. CPU TIME:     0.98 SEC, REAL TIME:     1.04 SEC
 SORT2 READ    25623847. AND WROTE   143766176. INTEGRALS IN    828 RECORDS. CPU TIME:     0.19 SEC, REAL TIME:     0.22 SEC

 Node minimum:    11970927.  Node maximum:    11995940. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.52      3.34
 REAL TIME  *         4.26 SEC
 DISK USED  *        30.15 MB (local),      876.19 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -35.90344574     -35.90344574     0.00D+00     0.20D+00     0     0       0.07      0.13    start
   2      -36.34607271      -0.44262698     0.24D-01     0.14D+00     1     0       0.06      0.19    diag
   3      -36.43296522      -0.08689251     0.62D-02     0.48D-01     2     0       0.05      0.24    diag
   4      -36.44448679      -0.01152157     0.16D-02     0.76D-02     3     0       0.06      0.30    diag
   5      -36.44721175      -0.00272496     0.62D-03     0.41D-02     4     0       0.08      0.38    diag
   6      -36.44724269      -0.00003094     0.82D-04     0.50D-03     5     0       0.07      0.45    diag
   7      -36.44724682      -0.00000412     0.25D-04     0.18D-03     6     0       0.06      0.51    diag
   8      -36.44724708      -0.00000026     0.67D-05     0.85D-04     7     0       0.06      0.57    diag
   9      -36.44724708      -0.00000000     0.67D-06     0.46D-05     8     0       0.06      0.63    diag
  10      -36.44724708      -0.00000000     0.17D-06     0.27D-05     9     0       0.05      0.68    diag/orth
  11      -36.44724708      -0.00000000     0.18D-07     0.29D-06     0     0       0.06      0.74    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -36.447247076705
  RHF One-electron energy             -59.880469003086
  RHF Two-electron energy              23.433221926381
  RHF Kinetic energy                   13.530910969118
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.693628474823

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.29827     1  1  s    1.00001
    2.1     2.00000    -0.19669     1  1  s   -0.26422    1  4  s    0.44949    1  5  s    0.58247
    1.2     2.00000    -1.33735     1  1  px   1.00035
    2.2     2.00000    -1.33735     1  1  py   1.00034
    3.2     2.00000    -1.33735     1  1  pz   1.00034


 HOMO      2.1    -0.196694 =      -5.3523eV
 LUMO      4.2     0.010692 =       0.2909eV
 LUMO-HOMO         0.207387 =       5.6433eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        3.01       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.28      0.75      3.34
 REAL TIME  *         5.08 SEC
 DISK USED  *        34.57 MB (local),      929.18 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         7.00000000                                  
 SETTING NTRIP          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     204 (  98 106 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.365D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.365D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.682D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.684D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.194D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 3 5 2 1 2   3 5 4 6 2 3 4 6 511   915141310 812 7 1 3   4 6 5 2 7 812151413
                                       10 911 1 3 5 4 6 2 7  131011 912 81514 1 3   5 4 6 2 711 9141513  1012 8 3 4 5 6 2 1 3
                                        5 4 6 2 911 7141513  1012 8 1 3 4 5 6 2 3   5 4 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.469D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.469D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.231D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.166D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 3 1 2 3   1 2 9 7 6 810 5 4 1   2 3 7 9 6 810 4 514  16192018211317151112
                                        1 2 310 8 9 7 6 5 4  20181614191517132111  12 6 810 9 7 5 4 2 1   3 6 810 9 7 4 51416
                                       201819111213211517 2   1 3 6 810 9 7 4 5 6   810 9 7 4 5 1 3 2 1   3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250
 
 Number of orbital rotations:  1436  ( 16 closed/active, 416 closed/virtual, 0 active/active, 1004 active/virtual )
 Total number of variables:    2058
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   16   30    5    -36.28278929     -36.35327127   -0.07048198    0.05104108 0.00007332 0.00000000  0.25E+01      1.50
   2    8   14    0    -36.34900038     -36.35181707   -0.00281669    0.06143847 0.00001428 0.00000000  0.27E+00      2.66
   3    8   14    0    -36.35182751     -36.35182857   -0.00000106    0.00052649 0.00000002 0.00000000  0.98E-02      3.82
   4    4    8    0    -36.35182858     -36.35182858   -0.00000000    0.00000150 0.00000000 0.00000000  0.36E-05      4.66

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.70E-10)
                       Final energy:    -36.35182858
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -36.472071213821
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.45316340
 One electron energy                           -59.74405803
 Two electron energy                            23.27198681
 Virial ratio                                    3.71104053
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -36.360804754549
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.99239886
 One electron energy                           -59.97691103
 Two electron energy                            23.61610627
 Virial ratio                                    3.59861123
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -36.360804754547
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.99239886
 One electron energy                           -59.97691103
 Two electron energy                            23.61610627
 Virial ratio                                    3.59861123
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -36.360804754547
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.99239886
 One electron energy                           -59.97691103
 Two electron energy                            23.61610627
 Virial ratio                                    3.59861123
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -36.360804754542
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.99239886
 One electron energy                           -59.97691103
 Two electron energy                            23.61610627
 Virial ratio                                    3.59861123
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -36.360804754541
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.99239886
 One electron energy                           -59.97691103
 Two electron energy                            23.61610627
 Virial ratio                                    3.59861123
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -36.317264110867
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.35681938
 One electron energy                           -58.49292797
 Two electron energy                            22.17566386
 Virial ratio                                    3.71900541
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -36.360806436530
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.15323118
 One electron energy                           -60.30932897
 Two electron energy                            23.94852254
 Virial ratio                                    3.56908165
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -36.360806436522
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.15323117
 One electron energy                           -60.30932897
 Two electron energy                            23.94852254
 Virial ratio                                    3.56908165
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -36.360806436522
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.15323117
 One electron energy                           -60.30932897
 Two electron energy                            23.94852254
 Virial ratio                                    3.56908165
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -36.360806436522
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.15323117
 One electron energy                           -60.30932897
 Two electron energy                            23.94852254
 Virial ratio                                    3.56908165
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -36.360806436522
 Nuclear energy                                  0.00000000
 Kinetic energy                                 14.15323117
 One electron energy                           -60.30932897
 Two electron energy                            23.94852254
 Virial ratio                                    3.56908165
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -36.327481446117
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.31165621
 One electron energy                           -58.34806957
 Two electron energy                            22.02058813
 Virial ratio                                    3.72899787
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -36.301461491885
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.66661746
 One electron energy                           -59.23892972
 Two electron energy                            22.93746823
 Virial ratio                                    3.65621406
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -36.301461491885
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.66661746
 One electron energy                           -59.23892972
 Two electron energy                            22.93746823
 Virial ratio                                    3.65621406
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -36.301461491882
 Nuclear energy                                  0.00000000
 Kinetic energy                                 13.66661746
 One electron energy                           -59.23892972
 Two electron energy                            22.93746823
 Virial ratio                                    3.65621406
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000003547
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999997406636
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000002589816
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.999980682934
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.000019317066
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     2.999910841833
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000089170044
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999988123
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     4.000000000000
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>    -0.000000000000
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000002589816
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999997410184
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000019317191
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     2.999980682809
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     3.000089155487
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999910832606
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000011908
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     4.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.000000000412
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     1.000000000000
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999999588
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999996453
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000003547
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999999999876
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000124
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000002681
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.999999997350
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999999999969
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999999588
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.000000000000
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000000000412
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -2.29427     1  1  s    0.99485
    2.1     0.78509    -0.09992     1  1  s   -0.25812    1  4  s    0.50324    1  5  s    0.60537
    3.1     0.12685     0.02653     1  4  s   -0.43795    1  5  s   -0.55518    1 11  s    1.37602
    4.1     0.11915     0.09083     1  1  d2+  0.84922
    5.1     0.11915     0.09083     1  1  d1-  0.84922
    6.1     0.11915     0.09083     1  1  d1+  0.84922
    7.1     0.11915     0.09083     1  1  d2-  0.84922
    8.1     0.11915     0.09083     1  1  d0   0.84922
    1.2     2.00000    -1.34009     1  1  px   0.99547
    2.2     2.00000    -1.34009     1  1  py   0.99547
    3.2     2.00000    -1.34009     1  1  pz   0.99547
    4.2     0.16410     0.02991     1  1  pz  -0.25328    1  3  pz   0.39086    1  4  pz   0.56493
    5.2     0.16410     0.02991     1  1  py  -0.25328    1  3  py   0.39086    1  4  py   0.56493
    6.2     0.16410     0.02991     1  1  px  -0.25328    1  3  px   0.39086    1  4  px   0.56493
 *** IN SYMMETRY  1 ORBITAL   9 SYMMETRY CONTAMINATION OF 0.454D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.461D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.627D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.622D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.464D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.356D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.275D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.294D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.628D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.628D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.516D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.516D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.703D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.703D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.125D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.125D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.162D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.607D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.355D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.506D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.506D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.637D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.637D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.122D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.100D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.122D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.469D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.469D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.260D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.260D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.483D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.483D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.111D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.111D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.824D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.824D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.707D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.127D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.127D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.701D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.701D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  55 SYMMETRY CONTAMINATION OF 0.754D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.419D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.393D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  58 SYMMETRY CONTAMINATION OF 0.393D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  60 SYMMETRY CONTAMINATION OF 0.632D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.632D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.115D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.115D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.467D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  66 SYMMETRY CONTAMINATION OF 0.641D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  67 SYMMETRY CONTAMINATION OF 0.641D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  68 SYMMETRY CONTAMINATION OF 0.572D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  69 SYMMETRY CONTAMINATION OF 0.572D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  70 SYMMETRY CONTAMINATION OF 0.279D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  71 SYMMETRY CONTAMINATION OF 0.278D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  72 SYMMETRY CONTAMINATION OF 0.122D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  73 SYMMETRY CONTAMINATION OF 0.954D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  74 SYMMETRY CONTAMINATION OF 0.639D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  75 SYMMETRY CONTAMINATION OF 0.639D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  76 SYMMETRY CONTAMINATION OF 0.187D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  77 SYMMETRY CONTAMINATION OF 0.187D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  80 SYMMETRY CONTAMINATION OF 0.131D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  81 SYMMETRY CONTAMINATION OF 0.131D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  82 SYMMETRY CONTAMINATION OF 0.262D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  83 SYMMETRY CONTAMINATION OF 0.262D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  85 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  86 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  88 SYMMETRY CONTAMINATION OF 0.509D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  89 SYMMETRY CONTAMINATION OF 0.509D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  90 SYMMETRY CONTAMINATION OF 0.563D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  91 SYMMETRY CONTAMINATION OF 0.563D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  92 SYMMETRY CONTAMINATION OF 0.165D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  95 SYMMETRY CONTAMINATION OF 0.727D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  96 SYMMETRY CONTAMINATION OF 0.728D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  97 SYMMETRY CONTAMINATION OF 0.302D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  98 SYMMETRY CONTAMINATION OF 0.302D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL 100 SYMMETRY CONTAMINATION OF 0.588D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL 101 SYMMETRY CONTAMINATION OF 0.588D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL 102 SYMMETRY CONTAMINATION OF 0.585D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL 103 SYMMETRY CONTAMINATION OF 0.585D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 6 4 3 2 5 3   4 6 2 1 2 5 3 4 6 9  1115141310 812 7 1 5   3 6 4 2 7 812151413
                                       1011 9 1 6 4 3 5 2 7  131011 9 8121514 1 6   4 3 5 2 7 911141513  10 812 6 4 3 5 2 1 6
                                        4 3 5 211 9 7141513  10 812 1 6 4 3 5 2 6   4 3 5 2 1 1
 *** IN SYMMETRY  2 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.615D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.615D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.594D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.594D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.495D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.495D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.403D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.129D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.129D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.371D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.371D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.512D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.512D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.397D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.397D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.502D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.352D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.352D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.505D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.505D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.468D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.468D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.180D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.731D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.731D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.677D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.677D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.431D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.431D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.264D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.264D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.244D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.244D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.148D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.148D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  49 SYMMETRY CONTAMINATION OF 0.513D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.513D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.213D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.214D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.428D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.428D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  55 SYMMETRY CONTAMINATION OF 0.139D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.139D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.108D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  58 SYMMETRY CONTAMINATION OF 0.373D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  59 SYMMETRY CONTAMINATION OF 0.373D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  60 SYMMETRY CONTAMINATION OF 0.594D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  61 SYMMETRY CONTAMINATION OF 0.594D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.599D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.599D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.677D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  66 SYMMETRY CONTAMINATION OF 0.677D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  67 SYMMETRY CONTAMINATION OF 0.613D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  68 SYMMETRY CONTAMINATION OF 0.613D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  69 SYMMETRY CONTAMINATION OF 0.644D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  70 SYMMETRY CONTAMINATION OF 0.644D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  73 SYMMETRY CONTAMINATION OF 0.241D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  74 SYMMETRY CONTAMINATION OF 0.241D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  75 SYMMETRY CONTAMINATION OF 0.424D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  76 SYMMETRY CONTAMINATION OF 0.424D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  77 SYMMETRY CONTAMINATION OF 0.225D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  78 SYMMETRY CONTAMINATION OF 0.225D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  79 SYMMETRY CONTAMINATION OF 0.141D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  80 SYMMETRY CONTAMINATION OF 0.141D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  81 SYMMETRY CONTAMINATION OF 0.319D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  82 SYMMETRY CONTAMINATION OF 0.674D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  83 SYMMETRY CONTAMINATION OF 0.643D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  84 SYMMETRY CONTAMINATION OF 0.186D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  85 SYMMETRY CONTAMINATION OF 0.186D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  86 SYMMETRY CONTAMINATION OF 0.323D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  87 SYMMETRY CONTAMINATION OF 0.323D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  88 SYMMETRY CONTAMINATION OF 0.424D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  89 SYMMETRY CONTAMINATION OF 0.424D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  90 SYMMETRY CONTAMINATION OF 0.456D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  91 SYMMETRY CONTAMINATION OF 0.456D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  94 SYMMETRY CONTAMINATION OF 0.258D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  95 SYMMETRY CONTAMINATION OF 0.258D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  96 SYMMETRY CONTAMINATION OF 0.627D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  97 SYMMETRY CONTAMINATION OF 0.627D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  98 SYMMETRY CONTAMINATION OF 0.389D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  99 SYMMETRY CONTAMINATION OF 0.389D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 101 SYMMETRY CONTAMINATION OF 0.308D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 102 SYMMETRY CONTAMINATION OF 0.308D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 103 SYMMETRY CONTAMINATION OF 0.476D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 104 SYMMETRY CONTAMINATION OF 0.476D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 105 SYMMETRY CONTAMINATION OF 0.110D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 106 SYMMETRY CONTAMINATION OF 0.110D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 107 SYMMETRY CONTAMINATION OF 0.226D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 108 SYMMETRY CONTAMINATION OF 0.226D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 110 SYMMETRY CONTAMINATION OF 0.138D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL 111 SYMMETRY CONTAMINATION OF 0.138D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 1 2 3 3   2 1 7 9 6 810 5 4 1   2 3 9 7 610 8 5 416  14192018171521131112
                                        2 1 3 810 9 7 6 4 5  18201416211319151711  12 6 810 7 9 4 5 2 1   3 6 810 7 9 4 51416
                                       191820111221131517 1   2 3 6 810 7 9 5 4 6   810 5 4 7 9 1 2 3 1   2 3
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.95561534     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.01734142
 ba00000 000      0.00892418      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.69689195
 ab00000 000     -0.00892418     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.69689195
 b00000a 000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000215     -0.61348472     -0.00000000
 a00000b 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000215      0.61348472      0.00000000
 a0b0000 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.61348472      0.00000215      0.00000000
 b0a0000 000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.61348472     -0.00000215     -0.00000000
 a000b00 000      0.00000000      0.00000001     -0.00004935      0.61348472     -0.00000000      0.00000000      0.00000000
 b000a00 000     -0.00000000     -0.00000001      0.00004935     -0.61348472      0.00000000     -0.00000000     -0.00000000
 b0000a0 000     -0.00000000     -0.61348471     -0.00006430     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a0000b0 000      0.00000000      0.61348471      0.00006430      0.00000000     -0.00000000      0.00000000      0.00000000
 a00b000 000      0.00000000     -0.00006430      0.61348471      0.00004935     -0.00000000      0.00000000      0.00000000
 b00a000 000     -0.00000000      0.00006430     -0.61348471     -0.00004935      0.00000000     -0.00000000     -0.00000000
 0000000 200     -0.16650290      0.00000000     -0.00000000      0.00000000      0.00000141     -0.40242797      0.00663695
 0000000 002     -0.16650290     -0.00000000      0.00000000     -0.00000000     -0.34851355      0.20121276      0.00663695
 0000000 b0a      0.00000000      0.00000000     -0.00002804      0.34851285     -0.00000000     -0.00000000      0.00000000
 0000000 a0b     -0.00000000     -0.00000000      0.00002804     -0.34851285      0.00000000      0.00000000     -0.00000000
 0000000 0ab     -0.00000000     -0.34851285     -0.00003653     -0.00000000      0.00000000      0.00000000     -0.00000000
 0000000 0ba      0.00000000      0.34851285      0.00003653      0.00000000     -0.00000000     -0.00000000      0.00000000
 0000000 ab0     -0.00000000      0.00003653     -0.34851285     -0.00002804     -0.00000000      0.00000000     -0.00000000
 0000000 ba0      0.00000000     -0.00003653      0.34851285      0.00002804      0.00000000     -0.00000000      0.00000000
 0000000 020     -0.16650290      0.00000000      0.00000000      0.00000000      0.34851214      0.20121521      0.00663695
 0200000 000     -0.01418747     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.15922886
 
 Energy:        -36.47207121    -36.36080475    -36.36080475    -36.36080475    -36.36080475    -36.36080475    -36.31726411
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 aa00000 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      1.00000000     -0.00000000
 a0a0000 000      0.00000000      0.99992752     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a00000a 000      0.99992752     -0.00000000      0.00000107      0.00000000     -0.00000006      0.00000000      0.00000000
 a00a000 000      0.00000006      0.00000000     -0.00008093     -0.00000477      0.99992751      0.00000000     -0.00000000
 a000a00 000     -0.00000000      0.00000000     -0.00143888      0.99992648      0.00000465      0.00000000      0.00000000
 a0000a0 000     -0.00000107      0.00000000      0.99992648      0.00143888      0.00008094     -0.00000000      0.00000000
 0000000 aa0      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000004
 0000000 0aa      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00017278
 0000000 a0a      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.93818825
 00a00a0 000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00005701
 000a00a 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000001
 0000a0a 000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.26810756
 0000aa0 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000001
 00aa000 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000001
 000aa00 000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00002851
 000a0a0 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.15479197
 00a0a00 000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.15479197
 
 Energy:        -36.36080644    -36.36080644    -36.36080644    -36.36080644    -36.36080644    -36.32748145    -36.30146149

 State:                8               9
 aa00000 000      0.00000000     -0.00000000
 a0a0000 000      0.00000000      0.00000000
 a00000a 000      0.00000000      0.00000000
 a00a000 000      0.00000000     -0.00000000
 a000a00 000      0.00000000     -0.00000000
 a0000a0 000      0.00000000     -0.00000000
 0000000 aa0      0.93818827      0.00000000
 0000000 0aa      0.00000000      0.93818825
 0000000 a0a      0.00000004     -0.00017278
 00a00a0 000      0.00000000      0.30958394
 000a00a 000      0.26810756      0.00000000
 0000a0a 000      0.00000001     -0.00004938
 0000aa0 000     -0.15479197     -0.00000000
 00aa000 000     -0.15479197     -0.00000000
 000aa00 000     -0.00000000     -0.15479197
 000a0a0 000     -0.00000001      0.00002851
 00a0a00 000      0.00000001     -0.00002851
 
 Energy:        -36.30146149    -36.30146149
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       59.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        6.30       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.15      3.86      0.75      3.34
 REAL TIME  *        10.45 SEC
 DISK USED  *        66.00 MB (local),        1.28 GB (total)
 SF USED    *        91.74 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -36.47207121  -0.0
    -36.36080475   6.0
    -36.36080475   6.0
    -36.36080475   6.0
    -36.36080475   6.0
    -36.36080475   6.0
    -36.31726411  -0.0
    -36.36080644   6.0
    -36.36080644   6.0
    -36.36080644   6.0
    -36.36080644   6.0
    -36.36080644   6.0
    -36.32748145  -0.0
    -36.30146149   2.0
    -36.30146149   2.0
    -36.30146149   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:     7045 conf    15565 CSFs
 N-1 el internal:     2330 conf     6410 CSFs
 N-2 el internal:      381 conf     1153 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     204 (  98 106 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -36.47207121
     2       -36.36080475
     3       -36.36080475
     4       -36.36080475
     5       -36.36080475
     6       -36.36080475
     7       -36.31726411

 Number of blocks in overlap matrix:   169   Smallest eigenvalue:  0.58D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        653612
 Number of doubly external configurations:       2011138
 Total number of contracted configurations:      2672601
 Total number of uncontracted configurations:   12657585

 Diagonal Coupling coefficients finished.               Storage: 3046226 words, CPU-Time:      0.31 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1362803 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -36.47207121     0.00000000    -0.30618761  0.32D-01  0.38D-01     0.88
    1     2     2     1.00000000     0.00000000   -36.36080475     0.00000000    -0.32018871  0.35D-01  0.43D-01     0.88
    1     3     3     1.00000000     0.00000000   -36.36080475    -0.00000000    -0.32013915  0.35D-01  0.43D-01     0.88
    1     4     4     1.00000000     0.00000000   -36.36080475    -0.00000000    -0.32003233  0.35D-01  0.43D-01     0.88
    1     5     5     1.00000000     0.00000000   -36.36080475     0.00000000    -0.31976684  0.35D-01  0.43D-01     0.88
    1     6     6     1.00000000     0.00000000   -36.36080475     0.00000000    -0.32004091  0.35D-01  0.43D-01     0.88
    1     7     7     1.00000000     0.00000000   -36.31726411     0.00000000    -0.30340340  0.47D-01  0.37D-01     0.88
    2     1     1     1.06407799    -0.30994240   -36.78201362    -0.30994240    -0.00583282  0.15D-02  0.52D-03    17.83
    2     2     2     1.06776324    -0.31286728   -36.67367204    -0.31286728    -0.00655370  0.22D-02  0.61D-03    17.83
    2     3     3     1.06776125    -0.31285908   -36.67366383    -0.31285908    -0.00655968  0.22D-02  0.61D-03    17.83
    2     4     4     1.06787427    -0.31283385   -36.67363861    -0.31283385    -0.00659043  0.23D-02  0.62D-03    17.83
    2     5     5     1.06785473    -0.31283225   -36.67363700    -0.31283225    -0.00658975  0.23D-02  0.61D-03    17.83
    2     6     6     1.06787216    -0.31282560   -36.67363035    -0.31282560    -0.00659861  0.23D-02  0.62D-03    17.83
    2     7     7     1.07601936    -0.30803362   -36.62529773    -0.30803362    -0.00754027  0.36D-02  0.78D-03    17.83
    3     1     1     1.06487814    -0.31592885   -36.78800006    -0.00598645    -0.00022379  0.36D-04  0.27D-04    34.76
    3     2     2     1.06804772    -0.31949503   -36.68029978    -0.00662775    -0.00033528  0.70D-04  0.45D-04    34.76
    3     3     3     1.06804601    -0.31949286   -36.68029762    -0.00663379    -0.00033725  0.71D-04  0.45D-04    34.76
    3     4     4     1.06804663    -0.31949245   -36.68029720    -0.00665859    -0.00033760  0.71D-04  0.45D-04    34.76
    3     5     5     1.06804468    -0.31949137   -36.68029612    -0.00665912    -0.00033847  0.71D-04  0.45D-04    34.76
    3     6     6     1.06804368    -0.31949067   -36.68029542    -0.00666507    -0.00033890  0.71D-04  0.45D-04    34.76
    3     7     7     1.07096988    -0.31529275   -36.63255686    -0.00725912    -0.00037246  0.81D-04  0.56D-04    34.76
    4     1     1     1.06551041    -0.31616919   -36.78824040    -0.00024034    -0.00001148  0.32D-05  0.13D-05    51.70
    4     2     2     1.06925526    -0.31988189   -36.68068665    -0.00038687    -0.00003668  0.25D-04  0.27D-05    51.70
    4     3     3     1.06925546    -0.31988178   -36.68068653    -0.00038891    -0.00003678  0.25D-04  0.28D-05    51.70
    4     4     4     1.06925298    -0.31988132   -36.68068607    -0.00038887    -0.00003711  0.25D-04  0.28D-05    51.70
    4     5     5     1.06925330    -0.31988127   -36.68068603    -0.00038990    -0.00003714  0.25D-04  0.28D-05    51.70
    4     6     6     1.06925397    -0.31988116   -36.68068591    -0.00039049    -0.00003721  0.25D-04  0.28D-05    51.70
    4     7     7     1.07150536    -0.31567967   -36.63294379    -0.00038693    -0.00002047  0.60D-05  0.30D-05    51.70
    5     1     1     1.06574480    -0.31618206   -36.78825328    -0.00001288    -0.00000063  0.21D-06  0.68D-07    68.55
    5     2     2     1.07005807    -0.31993220   -36.68073695    -0.00005030    -0.00000498  0.20D-05  0.47D-06    68.55
    5     3     3     1.07005519    -0.31993216   -36.68073692    -0.00005039    -0.00000501  0.20D-05  0.48D-06    68.55
    5     4     4     1.07005386    -0.31993207   -36.68073683    -0.00005075    -0.00000509  0.21D-05  0.48D-06    68.55
    5     5     5     1.07005327    -0.31993206   -36.68073682    -0.00005079    -0.00000510  0.21D-05  0.48D-06    68.55
    5     6     6     1.07005262    -0.31993205   -36.68073680    -0.00005089    -0.00000511  0.21D-05  0.48D-06    68.55
    5     7     7     1.07160841    -0.31570285   -36.63296696    -0.00002317    -0.00000136  0.74D-06  0.16D-06    68.55
    6     1     1     1.06576592    -0.31618274   -36.78825395    -0.00000068    -0.00000003  0.89D-08  0.42D-08    85.36
    6     2     2     1.07015864    -0.31993830   -36.68074306    -0.00000610    -0.00000055  0.16D-06  0.57D-07    85.36
    6     3     3     1.07015853    -0.31993829   -36.68074305    -0.00000613    -0.00000056  0.16D-06  0.58D-07    85.36
    6     4     4     1.07015844    -0.31993828   -36.68074304    -0.00000621    -0.00000057  0.17D-06  0.59D-07    85.36
    6     5     5     1.07015822    -0.31993828   -36.68074303    -0.00000622    -0.00000057  0.17D-06  0.59D-07    85.36
    6     6     6     1.07015801    -0.31993828   -36.68074303    -0.00000623    -0.00000057  0.17D-06  0.60D-07    85.36
    6     7     7     1.07157758    -0.31570437   -36.63296848    -0.00000152    -0.00000011  0.42D-07  0.17D-07    85.36
    7     1     1     1.06577363    -0.31618278   -36.78825399    -0.00000004    -0.00000000  0.12D-08  0.28D-09   102.14
    7     2     2     1.07018757    -0.31993891   -36.68074366    -0.00000061    -0.00000006  0.42D-07  0.49D-08   102.14
    7     3     3     1.07018745    -0.31993891   -36.68074366    -0.00000062    -0.00000006  0.42D-07  0.50D-08   102.14
    7     4     4     1.07018684    -0.31993891   -36.68074366    -0.00000063    -0.00000006  0.43D-07  0.51D-08   102.14
    7     5     5     1.07018689    -0.31993891   -36.68074366    -0.00000063    -0.00000006  0.43D-07  0.51D-08   102.14
    7     6     6     1.07018683    -0.31993891   -36.68074366    -0.00000063    -0.00000006  0.43D-07  0.52D-08   102.14
    7     7     7     1.07158436    -0.31570449   -36.63296860    -0.00000012    -0.00000001  0.93D-08  0.21D-08   102.14
    8     1     1     1.06577498    -0.31618278   -36.78825399    -0.00000000    -0.00000000  0.35D-09  0.12D-09   116.69
    8     2     2     1.07021032    -0.31993898   -36.68074373    -0.00000007    -0.00000001  0.39D-08  0.98D-09   116.69
    8     3     3     1.07021021    -0.31993898   -36.68074373    -0.00000007    -0.00000001  0.41D-08  0.99D-09   116.69
    8     4     4     1.07021001    -0.31993898   -36.68074373    -0.00000007    -0.00000001  0.42D-08  0.10D-08   116.69
    8     5     5     1.07020999    -0.31993898   -36.68074373    -0.00000007    -0.00000001  0.43D-08  0.10D-08   116.69
    8     6     6     1.07020994    -0.31993898   -36.68074373    -0.00000007    -0.00000001  0.43D-08  0.10D-08   116.69
    8     7     7     1.07158195    -0.31570450   -36.63296861    -0.00000002    -0.00000000  0.32D-09  0.17D-09   116.69


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.5%
 S   2.4%  16.9%
 P   1.0%  14.3%  13.9%

 Initialization:   0.4%
 Other:           48.6%

 Total CPU:      116.7 seconds
 =====================================



 gnormi=  0.93828437  gnorms=  0.02654317  gnormp=  0.03517246  gnorm=  1.00000000
 ecorri= -0.29666936  ecorrs= -0.00839338  ecorrp= -0.01112004  ecorr= -0.31618278

 gnormi=  0.93439577  gnorms=  0.02751409  gnormp=  0.03809014  gnorm=  1.00000000
 ecorri= -0.29894963  ecorrs= -0.00880339  ecorrp= -0.01218596  ecorr= -0.31993898

 gnormi=  0.93439587  gnorms=  0.02751395  gnormp=  0.03809017  gnorm=  1.00000000
 ecorri= -0.29894966  ecorrs= -0.00880343  ecorrp= -0.01218589  ecorr= -0.31993898

 gnormi=  0.93439604  gnorms=  0.02751378  gnormp=  0.03809018  gnorm=  1.00000000
 ecorri= -0.29894971  ecorrs= -0.00880340  ecorrp= -0.01218587  ecorr= -0.31993898

 gnormi=  0.93439606  gnorms=  0.02751375  gnormp=  0.03809018  gnorm=  1.00000000
 ecorri= -0.29894972  ecorrs= -0.00880341  ecorrp= -0.01218584  ecorr= -0.31993898

 gnormi=  0.93439610  gnorms=  0.02751372  gnormp=  0.03809018  gnorm=  1.00000000
 ecorri= -0.29894973  ecorrs= -0.00880342  ecorrp= -0.01218582  ecorr= -0.31993898

 gnormi=  0.93319975  gnorms=  0.03211442  gnormp=  0.03468583  gnorm=  1.00000000
 ecorri= -0.29461536  ecorrs= -0.01013926  ecorrp= -0.01094988  ecorr= -0.31570450

 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\00000222000          -0.0515692   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.9450697
 22000000222000           0.9279027  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0523768
 2/0000\0222000           0.0000000  -0.0000000  -0.0000000   0.8592555  -0.0000000   0.0000000  -0.0000000
 2/000\00222000          -0.0000000   0.0000000   0.0000000  -0.0000000   0.8592555   0.0000000   0.0000000
 2/00\000222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.8592555   0.0000000
 2/00000\222000          -0.0000000   0.8576371   0.0527148   0.0000000  -0.0000000   0.0000000   0.0000000
 2/0\0000222000           0.0000000  -0.0527148   0.8576370  -0.0000000  -0.0000000   0.0000000  -0.0000000
 20000000222/\0          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.4335692  -0.0000000
 20000000222/0\           0.0000000   0.0000000   0.0000000  -0.0000000  -0.4335692   0.0000000  -0.0000000
 200000002220/\          -0.0000000  -0.0000000  -0.0000000  -0.4335691  -0.0000000  -0.0000000  -0.0000000
 20000000222200          -0.1470999  -0.3533404  -0.0217181   0.0000000  -0.0000000   0.0000000  -0.0088293
 20000000222020          -0.1470999   0.1578617   0.3168610   0.0000000   0.0000000   0.0000000  -0.0088292
 20000000222002          -0.1470998   0.1954787  -0.2951429  -0.0000000  -0.0000000  -0.0000000  -0.0088294
 20200000222000          -0.0102684   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.1694482

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.964271    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.039114
 2          -0.000000    0.000000   -0.000000   -0.000000   -0.040794    0.962084    0.000000
 3           0.000000   -0.000000   -0.000000   -0.000000    0.962084    0.040794   -0.000000
 4          -0.000000    0.962949    0.000000   -0.000000    0.000000   -0.000000    0.000000
 5           0.000000    0.000000    0.962949   -0.000000    0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.962949    0.000000    0.000000   -0.000000
 7           0.042160   -0.000000    0.000000    0.000000    0.000000    0.000000    0.961747

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.965063   -0.000000    0.000000    0.000000    0.000000    0.000000    0.001575
 2          -0.000000    0.962949   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.962949    0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.962949    0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.962949   -0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.962949    0.000000
 7           0.001575    0.000000    0.000000    0.000000    0.000000    0.000000    0.962669


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96427150 (fixed)   0.96538738 (relaxed)   0.96506317 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00744883   -0.01838864   -0.22489878
 Singles      0.02849977   -0.08951265   -0.09176071
 Pairs        0.03776516    0.01245160    0.00047671
 Total        1.07371376   -0.09544970   -0.31618278
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.47179605
 Nuclear energy                         0.00000000
 Kinetic energy                        13.96532520
 One electron energy                  -59.77322748
 Two electron energy                   22.98497349
 Virial quotient                       -2.63425688
 Correlation energy                    -0.31645794
 !MRCI STATE 1.1 Energy               -36.788253991570

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.81158130 (Davidson, fixed reference)
 Cluster corrected energies           -36.81135311 (Davidson, relaxed reference)
 Cluster corrected energies           -36.81158130 (Davidson, rotated reference)

 Cluster corrected energies           -36.80776086 (Pople, fixed reference)
 Cluster corrected energies           -36.80756168 (Pople, relaxed reference)
 Cluster corrected energies           -36.80776086 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96208433 (fixed)   0.96417015 (relaxed)   0.96294879 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00768427   -0.01444223   -0.21871437
 Singles      0.02967213   -0.08652843   -0.08903864
 Pairs        0.04107771   -0.00000000   -0.01218597
 Total        1.07843411   -0.10097066   -0.31993898
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36080475
 Nuclear energy                         0.00000000
 Kinetic energy                        14.48147570
 One electron energy                  -59.97096665
 Two electron energy                   23.29022292
 Virial quotient                       -2.53294239
 Correlation energy                    -0.31993898
 !MRCI STATE 2.1 Energy               -36.680743732931

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.70583786 (Davidson, fixed reference)
 Cluster corrected energies           -36.70496428 (Davidson, relaxed reference)
 Cluster corrected energies           -36.70583786 (Davidson, rotated reference)

 Cluster corrected energies           -36.70178766 (Pople, fixed reference)
 Cluster corrected energies           -36.70102178 (Pople, relaxed reference)
 Cluster corrected energies           -36.70178766 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96208440 (fixed)   0.96417020 (relaxed)   0.96294886 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00768424   -0.01444223   -0.21871445
 Singles      0.02967198   -0.08652837   -0.08903863
 Pairs        0.04107774   -0.00000001   -0.01218590
 Total        1.07843396   -0.10097060   -0.31993898
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36080475
 Nuclear energy                         0.00000000
 Kinetic energy                        14.48147356
 One electron energy                  -59.97096349
 Two electron energy                   23.29021976
 Virial quotient                       -2.53294277
 Correlation energy                    -0.31993898
 !MRCI STATE 3.1 Energy               -36.680743732836

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.70583781 (Davidson, fixed reference)
 Cluster corrected energies           -36.70496424 (Davidson, relaxed reference)
 Cluster corrected energies           -36.70583781 (Davidson, rotated reference)

 Cluster corrected energies           -36.70178762 (Pople, fixed reference)
 Cluster corrected energies           -36.70102175 (Pople, relaxed reference)
 Cluster corrected energies           -36.70178762 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96294896 (fixed)   0.96417029 (relaxed)   0.96294896 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00768421   -0.01444223   -0.21871450
 Singles      0.02967179   -0.08652836   -0.08903861
 Pairs        0.04107773   -0.00000000   -0.01218587
 Total        1.07843373   -0.10097059   -0.31993898
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36080475
 Nuclear energy                         0.00000000
 Kinetic energy                        14.48147076
 One electron energy                  -59.97095851
 Two electron energy                   23.29021478
 Virial quotient                       -2.53294326
 Correlation energy                    -0.31993898
 !MRCI STATE 4.1 Energy               -36.680743732536

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.70583774 (Davidson, fixed reference)
 Cluster corrected energies           -36.70496418 (Davidson, relaxed reference)
 Cluster corrected energies           -36.70583774 (Davidson, rotated reference)

 Cluster corrected energies           -36.70178755 (Pople, fixed reference)
 Cluster corrected energies           -36.70102169 (Pople, relaxed reference)
 Cluster corrected energies           -36.70178755 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96294897 (fixed)   0.96417030 (relaxed)   0.96294897 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00768420   -0.01444222   -0.21871452
 Singles      0.02967176   -0.08652834   -0.08903861
 Pairs        0.04107774    0.00000000   -0.01218584
 Total        1.07843370   -0.10097057   -0.31993898
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36080475
 Nuclear energy                         0.00000000
 Kinetic energy                        14.48147048
 One electron energy                  -59.97095796
 Two electron energy                   23.29021422
 Virial quotient                       -2.53294331
 Correlation energy                    -0.31993898
 !MRCI STATE 5.1 Energy               -36.680743732466

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.70583773 (Davidson, fixed reference)
 Cluster corrected energies           -36.70496417 (Davidson, relaxed reference)
 Cluster corrected energies           -36.70583773 (Davidson, rotated reference)

 Cluster corrected energies           -36.70178754 (Pople, fixed reference)
 Cluster corrected energies           -36.70102169 (Pople, relaxed reference)
 Cluster corrected energies           -36.70178754 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96294900 (fixed)   0.96417032 (relaxed)   0.96294900 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00768420   -0.01444222   -0.21871454
 Singles      0.02967172   -0.08652833   -0.08903861
 Pairs        0.04107773    0.00000000   -0.01218582
 Total        1.07843365   -0.10097055   -0.31993898
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36080475
 Nuclear energy                         0.00000000
 Kinetic energy                        14.48146974
 One electron energy                  -59.97095711
 Two electron energy                   23.29021338
 Virial quotient                       -2.53294344
 Correlation energy                    -0.31993898
 !MRCI STATE 6.1 Energy               -36.680743732408

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.70583771 (Davidson, fixed reference)
 Cluster corrected energies           -36.70496415 (Davidson, relaxed reference)
 Cluster corrected energies           -36.70583771 (Davidson, rotated reference)

 Cluster corrected energies           -36.70178753 (Pople, fixed reference)
 Cluster corrected energies           -36.70102167 (Pople, relaxed reference)
 Cluster corrected energies           -36.70178753 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96174696 (fixed)   0.96291722 (relaxed)   0.96266930 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00697890   -0.01783050   -0.01884415
 Singles      0.03465340   -0.09206514   -0.09545899
 Pairs        0.03742811   -0.20550865   -0.20140137
 Total        1.07906041   -0.31540429   -0.31570450
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.31753928
 Nuclear energy                         0.00000000
 Kinetic energy                        13.88432495
 One electron energy                  -58.47027021
 Two electron energy                   21.83730160
 Virial quotient                       -2.63844074
 Correlation energy                    -0.31542934
 !MRCI STATE 7.1 Energy               -36.632968613888

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.65790659 (Davidson, fixed reference)
 Cluster corrected energies           -36.65773134 (Davidson, relaxed reference)
 Cluster corrected energies           -36.65790659 (Davidson, rotated reference)

 Cluster corrected energies           -36.65388946 (Pople, fixed reference)
 Cluster corrected energies           -36.65373551 (Pople, relaxed reference)
 Cluster corrected energies           -36.65388946 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       59.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      152.79       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       130.01    121.85      3.86      0.75      3.34
 REAL TIME  *       142.43 SEC
 DISK USED  *       212.49 MB (local),        2.99 GB (total)
 SF USED    *         1.47 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -36.81158130  AU                              
 SETTING HLSDIAG(2)     =       -36.70583786  AU                              
 SETTING HLSDIAG(3)     =       -36.70583781  AU                              
 SETTING HLSDIAG(4)     =       -36.70583774  AU                              
 SETTING HLSDIAG(5)     =       -36.70583773  AU                              
 SETTING HLSDIAG(6)     =       -36.70583771  AU                              
 SETTING HLSDIAG(7)     =       -36.65790659  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:     6729 conf    23769 CSFs
 N-1 el internal:     1910 conf     9566 CSFs
 N-2 el internal:      281 conf     1705 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     204 (  98 106 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -36.36080644
     2       -36.36080644
     3       -36.36080644
     4       -36.36080644
     5       -36.36080644
     6       -36.32748145
     7       -36.30146149
     8       -36.30146149
     9       -36.30146149

 Number of blocks in overlap matrix:   201   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     225
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        975676
 Number of doubly external configurations:       2344806
 Total number of contracted configurations:      3332320
 Total number of uncontracted configurations:   18697016

 Diagonal Coupling coefficients finished.               Storage: 4337576 words, CPU-Time:      0.57 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1377368 words, CPU-time:      0.13 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -36.36080644     0.00000000    -0.33125964  0.39D-01  0.45D-01     1.39
    1     2     2     1.00000000     0.00000000   -36.36080644    -0.00000000    -0.33127395  0.39D-01  0.45D-01     1.39
    1     3     3     1.00000000     0.00000000   -36.36080644     0.00000000    -0.33127918  0.39D-01  0.45D-01     1.39
    1     4     4     1.00000000     0.00000000   -36.36080644    -0.00000000    -0.33129516  0.39D-01  0.45D-01     1.39
    1     5     5     1.00000000     0.00000000   -36.36080644    -0.00000000    -0.33130268  0.39D-01  0.45D-01     1.39
    1     6     6     1.00000000     0.00000000   -36.32748145    -0.00000000    -0.29817193  0.40D-01  0.35D-01     1.39
    1     7     7     1.00000000     0.00000000   -36.30146149    -0.00000000    -0.30387031  0.34D-01  0.38D-01     1.39
    1     8     8     1.00000000     0.00000000   -36.30146149     0.00000000    -0.30387820  0.34D-01  0.38D-01     1.39
    1     9     9     1.00000000     0.00000000   -36.30146149     0.00000000    -0.30382848  0.34D-01  0.38D-01     1.39
    2     1     1     1.07063634    -0.31850835   -36.67931478    -0.31850835    -0.00678358  0.22D-02  0.55D-03    29.68
    2     2     2     1.07063344    -0.31850241   -36.67930885    -0.31850241    -0.00678718  0.22D-02  0.55D-03    29.68
    2     3     3     1.07063743    -0.31850198   -36.67930842    -0.31850198    -0.00678768  0.22D-02  0.55D-03    29.68
    2     4     4     1.07065263    -0.31849426   -36.67930069    -0.31849426    -0.00679340  0.22D-02  0.55D-03    29.68
    2     5     5     1.07065272    -0.31849164   -36.67929808    -0.31849164    -0.00679576  0.22D-02  0.55D-03    29.68
    2     6     6     1.07137937    -0.30805198   -36.63553343    -0.30805198    -0.00491332  0.12D-02  0.42D-03    29.68
    2     7     7     1.06476072    -0.30417500   -36.60563650    -0.30417500    -0.00682594  0.26D-02  0.57D-03    29.68
    2     8     8     1.06481213    -0.30414174   -36.60560324    -0.30414174    -0.00686732  0.27D-02  0.58D-03    29.68
    2     9     9     1.06481240    -0.30413939   -36.60560088    -0.30413939    -0.00687009  0.27D-02  0.58D-03    29.68
    3     1     1     1.07111414    -0.32556714   -36.68637358    -0.00705879    -0.00028850  0.73D-04  0.31D-04    58.06
    3     2     2     1.07111032    -0.32556676   -36.68637320    -0.00706435    -0.00028890  0.73D-04  0.31D-04    58.06
    3     3     3     1.07111223    -0.32556641   -36.68637284    -0.00706442    -0.00028887  0.73D-04  0.31D-04    58.06
    3     4     4     1.07110627    -0.32556612   -36.68637256    -0.00707187    -0.00028922  0.73D-04  0.31D-04    58.06
    3     5     5     1.07110602    -0.32556605   -36.68637249    -0.00707441    -0.00028930  0.73D-04  0.31D-04    58.06
    3     6     6     1.07108383    -0.31339518   -36.64087663    -0.00534320    -0.00015901  0.27D-04  0.17D-04    58.06
    3     7     7     1.06235400    -0.31087520   -36.61233670    -0.00670020    -0.00031692  0.56D-04  0.42D-04    58.06
    3     8     8     1.06235372    -0.31087068   -36.61233217    -0.00672894    -0.00032062  0.57D-04  0.43D-04    58.06
    3     9     9     1.06235341    -0.31087051   -36.61233201    -0.00673113    -0.00032080  0.57D-04  0.43D-04    58.06
    4     1     1     1.07259514    -0.32592682   -36.68673325    -0.00035968    -0.00003278  0.25D-04  0.17D-05    86.22
    4     2     2     1.07259513    -0.32592668   -36.68673312    -0.00035992    -0.00003283  0.25D-04  0.17D-05    86.22
    4     3     3     1.07259510    -0.32592668   -36.68673312    -0.00036028    -0.00003283  0.25D-04  0.17D-05    86.22
    4     4     4     1.07259489    -0.32592650   -36.68673294    -0.00036038    -0.00003270  0.25D-04  0.17D-05    86.22
    4     5     5     1.07259471    -0.32592628   -36.68673272    -0.00036023    -0.00003276  0.25D-04  0.17D-05    86.22
    4     6     6     1.07168313    -0.31357522   -36.64105667    -0.00018004    -0.00000805  0.29D-05  0.78D-06    86.22
    4     7     7     1.06288447    -0.31120719   -36.61266868    -0.00033199    -0.00001750  0.59D-05  0.18D-05    86.22
    4     8     8     1.06288338    -0.31120606   -36.61266755    -0.00033538    -0.00001770  0.60D-05  0.18D-05    86.22
    4     9     9     1.06288318    -0.31120606   -36.61266755    -0.00033554    -0.00001771  0.60D-05  0.18D-05    86.22
    5     1     1     1.07371858    -0.32597249   -36.68677892    -0.00004567    -0.00000374  0.98D-06  0.38D-06   114.39
    5     2     2     1.07371848    -0.32597243   -36.68677886    -0.00004574    -0.00000374  0.98D-06  0.38D-06   114.39
    5     3     3     1.07371841    -0.32597243   -36.68677886    -0.00004574    -0.00000374  0.98D-06  0.38D-06   114.39
    5     4     4     1.07371805    -0.32597208   -36.68677852    -0.00004558    -0.00000373  0.98D-06  0.38D-06   114.39
    5     5     5     1.07371753    -0.32597193   -36.68677836    -0.00004565    -0.00000374  0.98D-06  0.38D-06   114.39
    5     6     6     1.07182207    -0.31358422   -36.64106567    -0.00000900    -0.00000040  0.79D-07  0.46D-07   114.39
    5     7     7     1.06298381    -0.31122707   -36.61268856    -0.00001988    -0.00000102  0.36D-06  0.12D-06   114.39
    5     8     8     1.06298342    -0.31122616   -36.61268765    -0.00002010    -0.00000103  0.36D-06  0.12D-06   114.39
    5     9     9     1.06298345    -0.31122616   -36.61268765    -0.00002011    -0.00000103  0.36D-06  0.12D-06   114.39
    6     1     1     1.07378192    -0.32597704   -36.68678348    -0.00000455    -0.00000030  0.12D-06  0.22D-07   142.48
    6     2     2     1.07378170    -0.32597698   -36.68678342    -0.00000455    -0.00000030  0.12D-06  0.22D-07   142.48
    6     3     3     1.07378168    -0.32597698   -36.68678342    -0.00000456    -0.00000030  0.12D-06  0.22D-07   142.48
    6     4     4     1.07378148    -0.32597662   -36.68678306    -0.00000454    -0.00000030  0.12D-06  0.22D-07   142.48
    6     5     5     1.07378104    -0.32597648   -36.68678292    -0.00000455    -0.00000030  0.12D-06  0.22D-07   142.48
    6     6     6     1.07182201    -0.31358465   -36.64106609    -0.00000042    -0.00000002  0.90D-08  0.16D-08   142.48
    6     7     7     1.06296635    -0.31122822   -36.61268971    -0.00000115    -0.00000006  0.10D-07  0.87D-08   142.48
    6     8     8     1.06296589    -0.31122732   -36.61268881    -0.00000116    -0.00000006  0.10D-07  0.88D-08   142.48
    6     9     9     1.06296590    -0.31122732   -36.61268881    -0.00000116    -0.00000006  0.10D-07  0.88D-08   142.48
    7     1     1     1.07382815    -0.32597738   -36.68678382    -0.00000034    -0.00000003  0.20D-07  0.17D-08   170.47
    7     2     2     1.07382812    -0.32597733   -36.68678376    -0.00000034    -0.00000003  0.20D-07  0.18D-08   170.47
    7     3     3     1.07382812    -0.32597733   -36.68678376    -0.00000034    -0.00000003  0.20D-07  0.18D-08   170.47
    7     4     4     1.07382751    -0.32597697   -36.68678340    -0.00000034    -0.00000003  0.20D-07  0.17D-08   170.47
    7     5     5     1.07382722    -0.32597683   -36.68678326    -0.00000034    -0.00000003  0.20D-07  0.18D-08   170.47
    7     6     6     1.07182764    -0.31358467   -36.64106611    -0.00000002    -0.00000000  0.11D-08  0.98D-10   170.47
    7     7     7     1.06296471    -0.31122829   -36.61268978    -0.00000007    -0.00000001  0.42D-08  0.42D-09   170.47
    7     8     8     1.06296431    -0.31122739   -36.61268889    -0.00000007    -0.00000001  0.42D-08  0.42D-09   170.47
    7     9     9     1.06296431    -0.31122739   -36.61268889    -0.00000007    -0.00000001  0.42D-08  0.42D-09   170.47
    8     1     1     1.07385155    -0.32597742   -36.68678385    -0.00000003    -0.00000000  0.13D-08  0.38D-09   187.03
    8     2     2     1.07385149    -0.32597736   -36.68678380    -0.00000003    -0.00000000  0.13D-08  0.38D-09   187.03
    8     3     3     1.07385148    -0.32597736   -36.68678380    -0.00000003    -0.00000000  0.13D-08  0.38D-09   187.03
    8     4     4     1.07385089    -0.32597700   -36.68678344    -0.00000003    -0.00000000  0.13D-08  0.38D-09   187.03
    8     5     5     1.07385067    -0.32597686   -36.68678330    -0.00000003    -0.00000000  0.13D-08  0.38D-09   187.03
    8     6     6     1.07182764    -0.31358467   -36.64106611    -0.00000000    -0.00000000  0.11D-08  0.98D-10   187.03
    8     7     7     1.06296471    -0.31122829   -36.61268978    -0.00000000    -0.00000001  0.42D-08  0.42D-09   187.03
    8     8     8     1.06296431    -0.31122739   -36.61268889    -0.00000000    -0.00000001  0.42D-08  0.42D-09   187.03
    8     9     9     1.06296431    -0.31122739   -36.61268889    -0.00000000    -0.00000001  0.43D-08  0.42D-09   187.03


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.9%
 S   2.3%  21.4%
 P   0.9%  17.6%   9.7%

 Initialization:   0.4%
 Other:           44.9%

 Total CPU:      187.0 seconds
 =====================================



 gnormi=  0.93122741  gnorms=  0.03028994  gnormp=  0.03848265  gnorm=  1.00000000
 ecorri= -0.30355911  ecorrs= -0.00987343  ecorrp= -0.01254488  ecorr= -0.32597742

 gnormi=  0.93122747  gnorms=  0.03028987  gnormp=  0.03848266  gnorm=  1.00000000
 ecorri= -0.30355907  ecorrs= -0.00987340  ecorrp= -0.01254488  ecorr= -0.32597736

 gnormi=  0.93122747  gnorms=  0.03028987  gnormp=  0.03848266  gnorm=  1.00000000
 ecorri= -0.30355907  ecorrs= -0.00987340  ecorrp= -0.01254489  ecorr= -0.32597736

 gnormi=  0.93122798  gnorms=  0.03028921  gnormp=  0.03848281  gnorm=  1.00000000
 ecorri= -0.30355890  ecorrs= -0.00987318  ecorrp= -0.01254491  ecorr= -0.32597700

 gnormi=  0.93122818  gnorms=  0.03028899  gnormp=  0.03848283  gnorm=  1.00000000
 ecorri= -0.30355884  ecorrs= -0.00987309  ecorrp= -0.01254493  ecorr= -0.32597686

 gnormi=  0.93298583  gnorms=  0.03293990  gnormp=  0.03407427  gnorm=  1.00000000
 ecorri= -0.29257005  ecorrs= -0.01033024  ecorrp= -0.01068438  ecorr= -0.31358467

 gnormi=  0.94076501  gnorms=  0.02363276  gnormp=  0.03560223  gnorm=  1.00000000
 ecorri= -0.29279268  ecorrs= -0.00735509  ecorrp= -0.01108052  ecorr= -0.31122829

 gnormi=  0.94076536  gnorms=  0.02363239  gnormp=  0.03560225  gnorm=  1.00000000
 ecorri= -0.29279195  ecorrs= -0.00735494  ecorrp= -0.01108050  ecorr= -0.31122739

 gnormi=  0.94076536  gnorms=  0.02363240  gnormp=  0.03560225  gnorm=  1.00000000
 ecorri= -0.29279195  ecorrs= -0.00735494  ecorrp= -0.01108050  ecorr= -0.31122739

 Wavefunction saved on  5301.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//00000222000           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000029   0.9628295  -0.0000000   0.0000000
                          0.0000000
 2/00000/222000           0.0000000  -0.0000000  -0.0000000  -0.0000006   0.9621925   0.0000032  -0.0000000   0.0000000
                          0.0000000
 2/0/0000222000           0.0000000   0.0000000   0.0000000   0.9621924   0.0000006   0.0000000   0.0000000  -0.0000000
                          0.0000000
 2/00/000222000          -0.0000000  -0.0000000   0.9621921  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000017
                         -0.0000000
 2/000/00222000          -0.0000000   0.9621921   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.0000017
 2/0000/0222000           0.9621921   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                         -0.0000000
 200000002220//          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.8998425  -0.0000000
                         -0.0000000
 20000000222/0/           0.0000000   0.0000012   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.8998425
 20000000222//0          -0.0000000   0.0000000   0.0000012   0.0000000   0.0000000  -0.0000000   0.0000000   0.8998424
                          0.0000000
 200/00/0222000           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.3169106  -0.0000000
                         -0.0000000
 2000/00/222000          -0.0000000   0.0000000   0.0000039   0.0000000  -0.0000000  -0.0000000   0.0000000   0.2744533
                         -0.0000000
 20000/0/222000           0.0000000   0.0000039   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                          0.2744532
 2000/0/0222000           0.0000000  -0.0000002   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                         -0.1584570
 20000//0222000           0.0000000  -0.0000000  -0.0000002   0.0000000   0.0000000   0.0000000  -0.0000000  -0.1584569
                          0.0000000
 200/0/00222000          -0.0000000  -0.0000050  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                          0.1584566
 200//000222000          -0.0000000   0.0000000   0.0000050   0.0000000   0.0000000   0.0000000   0.0000000  -0.1584566
                          0.0000000
 2000//00222000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1584563  -0.0000000
                         -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20/00000222000  29.1     0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000001   0.0572735  -0.0000000   0.0000000
                         -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.962142   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.000000    0.000000    0.962142   -0.000000   -0.000000    0.000001    0.000000    0.000000
 3          -0.000000    0.000000    0.000000    0.000000    0.962142    0.000000    0.000000    0.000001    0.000000
 4          -0.000001    0.962142   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 5           0.962142    0.000001   -0.000000    0.000000    0.000000   -0.000003   -0.000000   -0.000000    0.000000
 6           0.000003    0.000000   -0.000000    0.000000   -0.000000    0.962829   -0.000000   -0.000000    0.000000
 7          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.966860
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000002    0.000000   -0.000000    0.966860   -0.000000
 9           0.000000    0.000000   -0.000000   -0.000002   -0.000000    0.000000    0.966860    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962142   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.962142    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.962142    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.962142    0.000000    0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.962142    0.000000   -0.000000   -0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.962829    0.000000   -0.000000    0.000000
 7           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.966860   -0.000000    0.000000
 8          -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.966860    0.000000
 9           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.966860


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96214159 (fixed)   0.96219343 (relaxed)   0.96214159 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595319   -0.01547358   -0.22165410
 Singles      0.03272054   -0.08847743   -0.09177844
 Pairs        0.04157067   -0.00000000   -0.01254488
 Total        1.08024440   -0.10395100   -0.32597742
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36080644
 Nuclear energy                         0.00000000
 Kinetic energy                        14.60517190
 One electron energy                  -60.27070649
 Two electron energy                   23.58392263
 Virial quotient                       -2.51190360
 Correlation energy                    -0.32597742
 !MRCI STATE 1.1 Energy               -36.686783853570

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.71294171 (Davidson, fixed reference)
 Cluster corrected energies           -36.71290377 (Davidson, relaxed reference)
 Cluster corrected energies           -36.71294171 (Davidson, rotated reference)

 Cluster corrected energies           -36.70719557 (Pople, fixed reference)
 Cluster corrected energies           -36.70716481 (Pople, relaxed reference)
 Cluster corrected energies           -36.70719557 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96214163 (fixed)   0.96219347 (relaxed)   0.96214163 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595317   -0.01547355   -0.22165409
 Singles      0.03272046   -0.08847739   -0.09177839
 Pairs        0.04157068   -0.00000000   -0.01254488
 Total        1.08024430   -0.10395094   -0.32597736
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36080644
 Nuclear energy                         0.00000000
 Kinetic energy                        14.60517206
 One electron energy                  -60.27070685
 Two electron energy                   23.58392306
 Virial quotient                       -2.51190357
 Correlation energy                    -0.32597736
 !MRCI STATE 2.1 Energy               -36.686783796813

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.71294162 (Davidson, fixed reference)
 Cluster corrected energies           -36.71290368 (Davidson, relaxed reference)
 Cluster corrected energies           -36.71294162 (Davidson, rotated reference)

 Cluster corrected energies           -36.70719549 (Pople, fixed reference)
 Cluster corrected energies           -36.70716473 (Pople, relaxed reference)
 Cluster corrected energies           -36.70719549 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96214163 (fixed)   0.96219347 (relaxed)   0.96214163 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595317   -0.01547355   -0.22165409
 Singles      0.03272046   -0.08847740   -0.09177839
 Pairs        0.04157068   -0.00000000   -0.01254489
 Total        1.08024430   -0.10395094   -0.32597736
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36080644
 Nuclear energy                         0.00000000
 Kinetic energy                        14.60517204
 One electron energy                  -60.27070682
 Two electron energy                   23.58392303
 Virial quotient                       -2.51190357
 Correlation energy                    -0.32597736
 !MRCI STATE 3.1 Energy               -36.686783796812

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.71294162 (Davidson, fixed reference)
 Cluster corrected energies           -36.71290368 (Davidson, relaxed reference)
 Cluster corrected energies           -36.71294162 (Davidson, rotated reference)

 Cluster corrected energies           -36.70719549 (Pople, fixed reference)
 Cluster corrected energies           -36.70716473 (Pople, relaxed reference)
 Cluster corrected energies           -36.70719549 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96214193 (fixed)   0.96219377 (relaxed)   0.96214193 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595311   -0.01547356   -0.22165448
 Singles      0.03271973   -0.08847674   -0.09177761
 Pairs        0.04157081    0.00000000   -0.01254491
 Total        1.08024365   -0.10395029   -0.32597700
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36080644
 Nuclear energy                         0.00000000
 Kinetic energy                        14.60517261
 One electron energy                  -60.27070814
 Two electron energy                   23.58392470
 Virial quotient                       -2.51190345
 Correlation energy                    -0.32597700
 !MRCI STATE 4.1 Energy               -36.686783437701

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.71294102 (Davidson, fixed reference)
 Cluster corrected energies           -36.71290308 (Davidson, relaxed reference)
 Cluster corrected energies           -36.71294102 (Davidson, rotated reference)

 Cluster corrected energies           -36.70719493 (Pople, fixed reference)
 Cluster corrected energies           -36.70716417 (Pople, relaxed reference)
 Cluster corrected energies           -36.70719493 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96214203 (fixed)   0.96219386 (relaxed)   0.96214203 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00595311   -0.01547354   -0.22165452
 Singles      0.03271949   -0.08847660   -0.09177741
 Pairs        0.04157082   -0.00000000   -0.01254493
 Total        1.08024342   -0.10395014   -0.32597686
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.36080644
 Nuclear energy                         0.00000000
 Kinetic energy                        14.60517201
 One electron energy                  -60.27070760
 Two electron energy                   23.58392430
 Virial quotient                       -2.51190354
 Correlation energy                    -0.32597686
 !MRCI STATE 5.1 Energy               -36.686783296296

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.71294079 (Davidson, fixed reference)
 Cluster corrected energies           -36.71290285 (Davidson, relaxed reference)
 Cluster corrected energies           -36.71294079 (Davidson, rotated reference)

 Cluster corrected energies           -36.70719472 (Pople, fixed reference)
 Cluster corrected energies           -36.70716396 (Pople, relaxed reference)
 Cluster corrected energies           -36.70719472 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96282946 (fixed)   0.96282946 (relaxed)   0.96282946 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00641316   -0.01773031   -0.20775905
 Singles      0.03553232   -0.09148575   -0.09514124
 Pairs        0.03675597   -0.00000000   -0.01068438
 Total        1.07870144   -0.10921606   -0.31358467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.32748145
 Nuclear energy                         0.00000000
 Kinetic energy                        13.86522249
 One electron energy                  -58.41039305
 Two electron energy                   21.76932694
 Virial quotient                       -2.64265980
 Correlation energy                    -0.31358467
 !MRCI STATE 6.1 Energy               -36.641066114651

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.66574568 (Davidson, fixed reference)
 Cluster corrected energies           -36.66574568 (Davidson, relaxed reference)
 Cluster corrected energies           -36.66574568 (Davidson, rotated reference)

 Cluster corrected energies           -36.66030981 (Pople, fixed reference)
 Cluster corrected energies           -36.66030981 (Pople, relaxed reference)
 Cluster corrected energies           -36.66030981 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96685985 (fixed)   0.96708697 (relaxed)   0.96685985 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00636171   -0.01623054   -0.01702349
 Singles      0.02528060   -0.08626135   -0.08799375
 Pairs        0.03808467   -0.20873640   -0.20621105
 Total        1.06972699   -0.31122829   -0.31122829
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.30146149
 Nuclear energy                         0.00000000
 Kinetic energy                        14.14869009
 One electron energy                  -59.13053027
 Two electron energy                   22.51784049
 Virial quotient                       -2.58770879
 Correlation energy                    -0.31122829
 !MRCI STATE 7.1 Energy               -36.612689782805

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.63439079 (Davidson, fixed reference)
 Cluster corrected energies           -36.63423444 (Davidson, relaxed reference)
 Cluster corrected energies           -36.63439079 (Davidson, rotated reference)

 Cluster corrected energies           -36.62953700 (Pople, fixed reference)
 Cluster corrected energies           -36.62941150 (Pople, relaxed reference)
 Cluster corrected energies           -36.62953700 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.96686029 (fixed)   0.96708744 (relaxed)   0.96686029 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00636117   -0.01622989   -0.21215340
 Singles      0.02528019   -0.08626115   -0.08799349
 Pairs        0.03808465    0.00000000   -0.01108050
 Total        1.06972600   -0.10249104   -0.31122739
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.30146149
 Nuclear energy                         0.00000000
 Kinetic energy                        14.14867969
 One electron energy                  -59.13051969
 Two electron energy                   22.51783080
 Virial quotient                       -2.58771063
 Correlation energy                    -0.31122739
 !MRCI STATE 8.1 Energy               -36.612688885165

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.63438953 (Davidson, fixed reference)
 Cluster corrected energies           -36.63423315 (Davidson, relaxed reference)
 Cluster corrected energies           -36.63438953 (Davidson, rotated reference)

 Cluster corrected energies           -36.62953580 (Pople, fixed reference)
 Cluster corrected energies           -36.62941029 (Pople, relaxed reference)
 Cluster corrected energies           -36.62953580 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96686029 (fixed)   0.96708744 (relaxed)   0.96686029 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00636117   -0.01622989   -0.21215340
 Singles      0.02528019   -0.08626115   -0.08799349
 Pairs        0.03808465    0.00000000   -0.01108050
 Total        1.06972601   -0.10249104   -0.31122739
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -36.30146149
 Nuclear energy                         0.00000000
 Kinetic energy                        14.14867966
 One electron energy                  -59.13051971
 Two electron energy                   22.51783083
 Virial quotient                       -2.58771064
 Correlation energy                    -0.31122739
 !MRCI STATE 9.1 Energy               -36.612688885155

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -36.63438953 (Davidson, fixed reference)
 Cluster corrected energies           -36.63423315 (Davidson, relaxed reference)
 Cluster corrected energies           -36.63438953 (Davidson, rotated reference)

 Cluster corrected energies           -36.62953581 (Pople, fixed reference)
 Cluster corrected energies           -36.62941030 (Pople, relaxed reference)
 Cluster corrected energies           -36.62953581 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       59.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      419.23       700     1000      520     2100     2140     5201     5301   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       330.64    200.62    121.85      3.86      0.75      3.34
 REAL TIME  *       358.48 SEC
 DISK USED  *       478.93 MB (local),        6.11 GB (total)
 SF USED    *         2.33 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =       -36.71294171  AU                              
 SETTING HLSDIAG(9)     =       -36.71294162  AU                              
 SETTING HLSDIAG(10)    =       -36.71294162  AU                              
 SETTING HLSDIAG(11)    =       -36.71294102  AU                              
 SETTING HLSDIAG(12)    =       -36.71294079  AU                              
 SETTING HLSDIAG(13)    =       -36.66574568  AU                              
 SETTING HLSDIAG(14)    =       -36.63439079  AU                              
 SETTING HLSDIAG(15)    =       -36.63438953  AU                              
 SETTING HLSDIAG(16)    =       -36.63438953  AU                              


        HLSDIAG
    -36.81158130
    -36.70583786
    -36.70583781
    -36.70583774
    -36.70583773
    -36.70583771
    -36.65790659
    -36.71294171
    -36.71294162
    -36.71294162
    -36.71294102
    -36.71294079
    -36.66574568
    -36.63439079
    -36.63438953
    -36.63438953
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies: -36.788254 -36.680744 -36.680744 -36.680744 -36.680744 -36.680744 -36.632969
 Replaced energies: -36.811581 -36.705838 -36.705838 -36.705838 -36.705838 -36.705838 -36.657907

 Wavefunction restored from record  5301.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies: -36.686784 -36.686784 -36.686784 -36.686783 -36.686783 -36.641066 -36.612690 -36.612689 -36.612689
 Replaced energies: -36.712942 -36.712942 -36.712942 -36.712941 -36.712941 -36.665746 -36.634391 -36.634390 -36.634390



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -36.81158130

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00   23208.00       0.00       0.00       0.00       0.00       0.00      -0.00       5.33       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       4.97

    3   3.1  0.0  0.0       0.00       0.00   23208.01       0.00       0.00       0.00       0.00      -0.00      -2.66      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       3.29

    4   4.1  0.0  0.0       0.00       0.00       0.00   23208.03       0.00       0.00       0.00       0.00      -0.00      -2.98
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -2.98      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   23208.03       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       2.98       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   23208.03       0.00       2.98      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   33727.70       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

    8   1.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       2.98       0.00   21648.89       0.00       0.00
                            0.00      -0.00       0.00       0.00      -2.98      -0.00       0.00      -0.00       0.00      -0.00

    9   2.1  1.0  1.0      -0.00       5.33      -2.66      -0.00       0.00      -0.00       0.00       0.00   21648.91       0.00
                            0.00       0.00      -0.00       2.98      -0.00      -0.00      -0.00      -0.00      -0.00      -4.07

   10   3.1  1.0  1.0      -0.00       0.00      -0.00      -2.98      -0.00      -0.00       0.00       0.00       0.00   21648.91
                            0.00      -4.97      -3.29       0.00       0.00      -0.00      -0.00       0.00       4.07       0.00

   11   4.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       2.98       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       2.98       0.00      -8.15      -0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00      -0.00       0.00      -5.16      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       5.16       0.00      -0.00       0.00      -0.00

   13   6.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   14   7.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       0.00      -9.56      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -9.56       0.00      -0.00      -0.00       0.00      -0.00

   15   8.1  1.0  1.0       0.00      -0.00       0.00      -9.56      -0.00       0.00      -0.00       0.00       0.00       0.00
                           10.00       6.09      -9.20      -0.00       0.00      -0.00      -1.36       0.00      -0.89       0.00

   16   9.1  1.0  1.0     -10.00      -4.92      -9.88      -0.00      -0.00       0.00       1.36       0.00       0.00       0.00
                            0.00       0.00      -0.00       9.56       0.00       0.00       0.00       0.00      -0.00       0.89

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.88
                            0.00       0.52      -8.41       0.00       0.00      -0.00       0.00      -0.00      -2.88      -0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00       4.21       0.00       2.88       0.00      -0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.88       0.00      -0.00
                            0.00       0.00      -0.00       0.00      -4.21      -0.00      -0.00       0.00       0.00      -0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.88      -0.00
                            0.00      -0.00      -0.00       8.42       0.00       0.00      -0.00      -0.00      -0.00       2.88

   21   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.99       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       4.99

   22   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.63
                          -14.14      15.58       0.96      -0.00       0.00      -0.00       1.93      -0.00      -0.63      -0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.63      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      13.51      -0.00       0.00      -0.00       0.00      -0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00     -13.51      -0.00       0.63       0.00       0.00

   26   1.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00       2.98       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       2.98       0.00      -0.00      -0.00      -0.00      -0.00

   27   2.1  1.0 -1.0      -0.00       5.33      -2.66      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -2.98       0.00       0.00       0.00      -0.00      -0.00      -0.00

   28   3.1  1.0 -1.0      -0.00       0.00      -0.00      -2.98      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       4.97       3.29      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   29   4.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       2.98       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -2.98      -0.00      -0.00      -0.00      -0.00

   30   5.1  1.0 -1.0       0.00       0.00      -0.00       0.00      -5.16      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -5.16      -0.00      -0.00      -0.00      -0.00

   31   6.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   32   7.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00      -9.56      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       9.56      -0.00       0.00      -0.00      -0.00      -0.00

   33   8.1  1.0 -1.0       0.00      -0.00       0.00      -9.56      -0.00       0.00      -0.00       0.00       0.00       0.00
                          -10.00      -6.09       9.20       0.00      -0.00       0.00       1.36      -0.00      -0.00      -0.00

   34   9.1  1.0 -1.0     -10.00      -4.92      -9.88      -0.00      -0.00       0.00       1.36       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -9.56      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00       0.00       0.00      -0.00       0.00     -10.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     -10.00      -0.00      -0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0      -0.00       0.00       0.00      -0.00      -0.00      -4.92       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -6.09      -0.00      -0.52      -0.00      -0.00       0.00

    3   3.1  0.0  0.0       0.00      -0.00      -0.00      -0.00       0.00      -9.88       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       9.20       0.00       8.41       0.00       0.00       0.00

    4   4.1  0.0  0.0      -0.00       0.00       0.00      -0.00      -9.56      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -9.56      -0.00      -0.00      -0.00      -8.42

    5   5.1  0.0  0.0       2.98      -5.16       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       9.56      -0.00      -0.00      -0.00      -0.00       4.21      -0.00

    6   6.1  0.0  0.0       0.00      -0.00      -0.00      -9.56       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.98      -5.16       0.00      -0.00       0.00      -0.00       0.00      -4.21       0.00      -0.00

    7   7.1  0.0  0.0       0.00      -0.00      -0.00      -0.00      -0.00       1.36       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       1.36      -0.00      -0.00      -0.00       0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       2.88      -0.00
                            8.15       0.00       0.00       0.00      -0.00      -0.00       0.00      -2.88      -0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.88
                            0.00      -0.00       0.00      -0.00       0.89       0.00       2.88      -0.00      -0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -2.88      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.89       0.00       0.00       0.00      -2.88

   11   4.1  1.0  1.0   21649.04       0.00       0.00       0.00       0.00       0.00       0.00       2.88       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       2.88       0.00

   12   5.1  1.0  1.0       0.00   21649.09       0.00       0.00       0.00       0.00      -0.00      -4.99      -0.00       0.00
                           -0.00      -0.00       0.00       1.02       0.00      -0.00       0.00      -0.00       4.99      -0.00

   13   6.1  1.0  1.0       0.00       0.00   32007.22       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       1.87       0.00      -0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   38888.82       0.00       0.00       0.00      -0.00      -0.63      -0.00
                            0.00      -1.02      -1.87       0.00      -0.00       0.00      -0.00      -0.63      -0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   38889.10       0.00      -0.63       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      24.16      -0.00       0.00      -0.00      -0.63

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   38889.10       0.00      -0.00       0.00      -0.63
                           -0.00       0.00       0.00      -0.00     -24.16       0.00       0.63       0.00       0.00      -0.00

   17   1.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.63       0.00   21648.89       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.63       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       2.88      -4.99      -0.00      -0.00       0.00      -0.00       0.00   21648.91       0.00       0.00
                            0.00       0.00      -0.00       0.63      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00      -0.00      -0.00      -0.63       0.00       0.00       0.00       0.00   21648.91       0.00
                           -2.88      -4.99      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -0.63       0.00       0.00       0.00   21649.04
                           -0.00       0.00      -0.00      -0.00       0.63       0.00      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00      -0.36       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.36      -0.00      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00       1.32       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       1.32      -0.00      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0       0.00       0.00      -0.00      -0.00      17.09      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00     -17.09      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0      -0.00       0.00      -0.00     -17.09      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.63       0.36      -1.32       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0       0.63       0.36      -1.32       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      17.09      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.88       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.88      -0.00       0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       2.88
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.88       0.00      -0.00       0.00

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.88       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -2.88

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.88      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.88      -0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.99       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       4.99      -0.00

   31   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   32   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.63       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.63      -0.00       0.00

   33   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.63      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.63

   34   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.63
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.63       0.00       0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00      14.14       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       5.33       0.00      -0.00       0.00
                           -0.00      -0.00     -15.58       0.00       0.00      -0.00       0.00      -4.97       0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -2.66      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.96       0.00      -0.00       0.00      -0.00      -3.29      -0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.98      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       2.98       0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       2.98      -5.16
                            0.00       0.00      -0.00     -13.51      -0.00      -2.98      -0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       2.98      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00      13.51      -0.00      -0.00      -0.00       2.98       5.16

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -1.93      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    8   1.1  1.0  1.0       0.00      -0.00      -0.00       0.63      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.63       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       4.99       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.63      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.63      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -4.99      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0      -0.00       0.00       0.00      -0.00       0.63       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.63       0.00       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.36       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.36      -0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00      -0.00      -0.00      -0.00      -1.32       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       1.32      -0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0      -0.00       0.00      -0.00     -17.09       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     -17.09       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0      -0.00       0.00      17.09      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.36      -1.32       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0      -0.36       1.32      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      17.09      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       2.88      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -2.88      -0.00       0.00      -0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.88       4.99
                            0.00       0.00       0.00       0.00       0.00       2.88      -0.00      -0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -2.88      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.88      -4.99

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       2.88       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       2.88       0.00       0.00

   21   5.1  1.0  0.0   21649.09       0.00       0.00       0.00       0.00      -0.00      -4.99      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       4.99      -0.00       0.00

   22   6.1  1.0  0.0       0.00   32007.22       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00   38888.82       0.00       0.00       0.00      -0.00      -0.63      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.63      -0.00       0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   38889.10       0.00      -0.63       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.63       0.36

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   38889.10       0.00      -0.00       0.00      -0.63      -0.36
                           -0.00      -0.00      -0.00      -0.00       0.00       0.63       0.00       0.00      -0.00       0.00

   26   1.1  1.0 -1.0      -0.00       0.00       0.00      -0.63       0.00   21648.89       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.63       0.00      -0.00       0.00      -8.15      -0.00

   27   2.1  1.0 -1.0      -4.99      -0.00      -0.00       0.00      -0.00       0.00   21648.91       0.00       0.00       0.00
                            0.00      -0.00       0.63      -0.00      -0.00       0.00       0.00       4.07      -0.00       0.00

   28   3.1  1.0 -1.0      -0.00      -0.00      -0.63       0.00       0.00       0.00       0.00   21648.91       0.00       0.00
                           -4.99      -0.00       0.00       0.00      -0.00      -0.00      -4.07      -0.00       0.00      -0.00

   29   4.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      -0.63       0.00       0.00       0.00   21649.04       0.00
                            0.00      -0.00      -0.00       0.63       0.00       8.15       0.00      -0.00       0.00      -0.00

   30   5.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00      -0.36       0.00       0.00       0.00       0.00   21649.09
                           -0.00      -0.00      -0.00      -0.36      -0.00       0.00      -0.00       0.00       0.00       0.00

   31   6.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       1.32       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       1.32      -0.00       0.00       0.00       0.00       0.00       0.00

   32   7.1  1.0 -1.0       0.00      -0.00      -0.00      17.09      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     -17.09       0.00      -0.00       0.00      -0.00       1.02

   33   8.1  1.0 -1.0       0.00      -0.00     -17.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.36      -1.32       0.00       0.00       0.00      -0.00       0.89      -0.00       0.00       0.00

   34   9.1  1.0 -1.0       0.36      -1.32       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      17.09      -0.00       0.00      -0.00       0.00      -0.89       0.00      -0.00


   Nr   State  S   Sz       31         32         33         34

    1   1.1  0.0  0.0       0.00      -0.00       0.00     -10.00
                           -0.00       0.00      10.00       0.00

    2   2.1  0.0  0.0       0.00      -0.00      -0.00      -4.92
                           -0.00       0.00       6.09       0.00

    3   3.1  0.0  0.0      -0.00      -0.00       0.00      -9.88
                            0.00       0.00      -9.20      -0.00

    4   4.1  0.0  0.0       0.00      -0.00      -9.56      -0.00
                            0.00       0.00      -0.00       9.56

    5   5.1  0.0  0.0       0.00       0.00      -0.00      -0.00
                           -0.00      -9.56       0.00       0.00

    6   6.1  0.0  0.0      -0.00      -9.56       0.00       0.00
                           -0.00       0.00      -0.00       0.00

    7   7.1  0.0  0.0      -0.00      -0.00      -0.00       1.36
                            0.00      -0.00      -1.36       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0      -0.00      -0.00       0.63      -0.00
                           -0.00       0.00       0.00      -0.63

   18   2.1  1.0  0.0       0.00       0.00      -0.00       0.00
                           -0.00       0.63      -0.00      -0.00

   19   3.1  1.0  0.0       0.00       0.63      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00

   20   4.1  1.0  0.0       0.00       0.00      -0.00       0.63
                           -0.00      -0.00       0.63       0.00

   21   5.1  1.0  0.0      -0.00       0.00       0.00       0.36
                           -0.00      -0.00      -0.36      -0.00

   22   6.1  1.0  0.0      -0.00      -0.00      -0.00      -1.32
                            0.00       0.00       1.32      -0.00

   23   7.1  1.0  0.0       0.00      -0.00     -17.09       0.00
                           -0.00       0.00      -0.00     -17.09

   24   8.1  1.0  0.0       0.00      17.09      -0.00      -0.00
                           -1.32       0.00      -0.00       0.00

   25   9.1  1.0  0.0       1.32      -0.00       0.00       0.00
                            0.00      17.09      -0.00      -0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.89      -0.00

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.89

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00      -1.02      -0.00       0.00

   31   6.1  1.0 -1.0   32007.22       0.00       0.00       0.00
                           -0.00      -1.87      -0.00       0.00

   32   7.1  1.0 -1.0       0.00   38888.82       0.00       0.00
                            1.87      -0.00       0.00      -0.00

   33   8.1  1.0 -1.0       0.00       0.00   38889.10       0.00
                            0.00      -0.00      -0.00     -24.16

   34   9.1  1.0 -1.0       0.00       0.00       0.00   38889.10
                           -0.00       0.00      24.16      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 34)

    The diagonal matrixelements are shifted by    -36.81158130 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   23208.001       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   23208.012       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   23208.028       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   23208.030       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   23208.034       0.000       4.212
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   33727.700       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       4.212       0.000   21648.886
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       7.540      -3.757      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000      -0.000      -4.212      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000      -0.000       0.000      -0.000       4.212       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000      -0.000       0.000      -7.294      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000     -13.514      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000      -0.000       0.000     -13.514      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            -14.143      -6.960     -13.970      -0.000      -0.000       0.000       1.929       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.517      -8.408       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000       4.212       0.000       4.073

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -4.212      -0.000      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       8.422       0.000       0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.144      15.580       0.958      -0.000       0.000      -0.000       1.929      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      13.514      -0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000     -13.514      -0.000       0.886

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -4.212      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       4.212      -0.000      -0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -7.023      -4.652       0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       4.212       0.000      -8.145

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       7.294       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -13.514       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               14.143       8.618     -13.012      -0.000       0.000      -0.000      -1.929       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      13.514       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000     -14.143
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               7.540       0.000      -0.000       0.000       0.000      -0.000      -0.000      -6.960
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -3.757      -0.000       0.000      -0.000      -0.000      -0.000       0.000     -13.970
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000      -4.212      -0.000       0.000       0.000      -0.000     -13.514      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000      -0.000       4.212      -7.294       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              -0.000      -0.000       0.000      -0.000      -0.000     -13.514       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       1.929
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          21648.906       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   21648.906       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   21649.038       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   21649.088       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   32007.218       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   38888.820       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   38889.098       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   38889.098
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -4.073      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.886

    2    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.886      -0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -4.073      -7.054      -0.000       0.000       0.000      -0.000

    4    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       4.073       0.000       0.000      -0.000      -0.000       0.885       0.000

    5    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       7.054      -0.000       0.000      -0.000      -0.000      -0.513      -0.000

    6    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       1.870      -0.000

    7    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.886      -0.000       0.000       0.000      -0.000       0.000      -0.000     -24.163

    8    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.885       0.513      -1.870       0.000       0.000       0.000

    9    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      24.163      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       8.145       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.073       0.000      -0.000       0.000      -0.000       0.886       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.073       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.886

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       1.020       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       1.871       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -1.020      -1.871       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.886       0.000      -0.000      -0.000      -0.000       0.000       0.000      24.164

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.886      -0.000       0.000       0.000      -0.000     -24.164       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      14.144       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.517      -0.000      -0.000       0.000      -0.000      -0.000     -15.580       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                8.408       0.000       0.000       0.000      -0.000      -0.000      -0.958       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -8.422      -0.000       0.000       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       4.212      -0.000       0.000       0.000      -0.000     -13.514

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -4.212       0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -1.929      -0.000

    1    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -4.073      -0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                4.073       0.000      -0.000       0.000       0.000      -0.000       0.886      -0.000

    3    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -4.073      -7.054      -0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       4.073       0.000       0.000      -0.000      -0.000       0.885

    5    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000       7.054      -0.000       0.000      -0.000      -0.000      -0.513

    6    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       1.870

    7    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.886      -0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000      -0.885       0.513      -1.870       0.000       0.000

    9    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.886       0.000       0.000      -0.000       0.000       0.000      24.163      -0.000

    1    1  |1 0>           21648.886       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000   21648.906       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000   21648.906       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000   21649.038       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000   21649.088       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   32007.218       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   38888.820       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   38889.098
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000       4.073      -0.000       0.000      -0.000      -0.000       0.886
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000      -4.073       7.054       0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>-             -4.073      -0.000       0.000      -0.000       0.000       0.000       0.886      -0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       4.073       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 1>-             -0.000      -7.054      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 1>-              0.000      -0.000      -0.886      -0.000      -0.000       0.000       0.000     -24.163
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>-             -0.886       0.000       0.000       0.000      -0.000       0.000      24.163       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    9    1  |1 1>-              0.000      -0.000       0.000      -0.885      -0.513       1.870      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       7.023      -0.000       0.000       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       4.652       0.000       0.000      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -4.212      -0.000       0.000       0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       4.212       0.000      -0.000      -0.000      -0.000       0.000      13.514

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               13.514       0.000       0.000       0.000      -4.212      -7.294       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.886      -0.000       0.000      -0.000       8.145       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -4.073       0.000      -0.000       0.000      -0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       4.073       0.000      -0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -8.145      -0.000       0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       1.020

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       1.871

    7    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -24.163      -0.000       0.000      -0.000       0.000      -1.020      -1.871       0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.886       0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.886      -0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000      -4.073       0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000      -0.000       0.000      -0.000       4.073      -7.054      -0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       4.073       0.000       0.000       0.000      -0.000      -0.000      -0.886
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    4    1  |1 0>               0.000      -0.000      -4.073      -0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       7.054       0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.886       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.886      -0.000      -0.000      -0.000       0.000      -0.000     -24.163
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    9    1  |1 0>           38889.098      -0.000       0.000      -0.000       0.885       0.513      -1.870       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-             -0.000   21648.886       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000   21648.906       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000       0.000       0.000   21648.906       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.885       0.000       0.000       0.000   21649.038       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.513       0.000       0.000       0.000       0.000   21649.088       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -1.870       0.000       0.000       0.000       0.000       0.000   32007.218       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   38888.820
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34

    1    1  |0 0>               0.000       0.000
                              -14.143      -0.000

    2    1  |0 0>               0.000       0.000
                               -8.618      -0.000

    3    1  |0 0>               0.000       0.000
                               13.012       0.000

    4    1  |0 0>               0.000       0.000
                                0.000     -13.514

    5    1  |0 0>               0.000       0.000
                               -0.000      -0.000

    6    1  |0 0>               0.000       0.000
                                0.000      -0.000

    7    1  |0 0>               0.000       0.000
                                1.929      -0.000

    1    1  |1 1>+              0.000       0.000
                               -0.000      -0.000

    2    1  |1 1>+              0.000       0.000
                                0.886       0.000

    3    1  |1 1>+              0.000       0.000
                               -0.000      -0.886

    4    1  |1 1>+              0.000       0.000
                                0.000       0.000

    5    1  |1 1>+              0.000       0.000
                                0.000      -0.000

    6    1  |1 1>+              0.000       0.000
                                0.000      -0.000

    7    1  |1 1>+              0.000       0.000
                               -0.000       0.000

    8    1  |1 1>+              0.000       0.000
                                0.000      24.164

    9    1  |1 1>+              0.000       0.000
                              -24.164       0.000

    1    1  |1 0>              -0.886       0.000
                                0.000      -0.000

    2    1  |1 0>               0.000      -0.000
                               -0.000      -0.000

    3    1  |1 0>               0.000       0.000
                                0.000      -0.000

    4    1  |1 0>               0.000      -0.885
                                0.000       0.000

    5    1  |1 0>              -0.000      -0.513
                               -0.000       0.000

    6    1  |1 0>               0.000       1.870
                                0.000      -0.000

    7    1  |1 0>              24.163      -0.000
                                0.000      -0.000

    8    1  |1 0>               0.000       0.000
                                0.000       0.000

    9    1  |1 0>              -0.000       0.000
                                0.000       0.000

    1    1  |1 1>-              0.000       0.000
                                0.000       0.000

    2    1  |1 1>-              0.000       0.000
                                0.000       0.000

    3    1  |1 1>-              0.000       0.000
                                0.000       0.000

    4    1  |1 1>-              0.000       0.000
                                0.000       0.000

    5    1  |1 1>-              0.000       0.000
                                0.000       0.000

    6    1  |1 1>-              0.000       0.000
                                0.000       0.000

    7    1  |1 1>-              0.000       0.000
                                0.000       0.000

    8    1  |1 1>-          38889.098       0.000
                                0.000       0.000

    9    1  |1 1>-              0.000   38889.098
                                0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -36.81158137    -0.00000007       -0.02      0.00000000        0.00      0.0000
    2   -36.71299706     0.09858424    21636.74      0.09858431    21636.75      2.6826
    3   -36.71299706     0.09858424    21636.74      0.09858431    21636.75      2.6826
    4   -36.71299696     0.09858433    21636.76      0.09858440    21636.78      2.6826
    5   -36.71296056     0.09862074    21644.75      0.09862081    21644.77      2.6836
    6   -36.71296049     0.09862080    21644.76      0.09862087    21644.78      2.6836
    7   -36.71296009     0.09862121    21644.85      0.09862128    21644.87      2.6836
    8   -36.71295999     0.09862130    21644.87      0.09862137    21644.89      2.6836
    9   -36.71295999     0.09862130    21644.87      0.09862137    21644.89      2.6836
   10   -36.71290453     0.09867676    21657.05      0.09867683    21657.06      2.6851
   11   -36.71290431     0.09867699    21657.10      0.09867706    21657.11      2.6851
   12   -36.71290431     0.09867699    21657.10      0.09867706    21657.11      2.6851
   13   -36.71290431     0.09867699    21657.10      0.09867706    21657.11      2.6851
   14   -36.71290411     0.09867719    21657.14      0.09867726    21657.16      2.6851
   15   -36.71290411     0.09867719    21657.14      0.09867726    21657.16      2.6851
   16   -36.71290401     0.09867728    21657.16      0.09867735    21657.18      2.6851
   17   -36.70583766     0.10574364    23208.05      0.10574371    23208.06      2.8774
   18   -36.70583761     0.10574369    23208.06      0.10574376    23208.07      2.8774
   19   -36.70583754     0.10574376    23208.07      0.10574383    23208.09      2.8774
   20   -36.70583753     0.10574377    23208.07      0.10574384    23208.09      2.8774
   21   -36.70583751     0.10574379    23208.08      0.10574386    23208.09      2.8774
   22   -36.66574569     0.14583561    32007.22      0.14583568    32007.23      3.9684
   23   -36.66574569     0.14583561    32007.22      0.14583568    32007.23      3.9684
   24   -36.66574569     0.14583561    32007.22      0.14583568    32007.23      3.9684
   25   -36.65790660     0.15367470    33727.70      0.15367477    33727.71      4.1817
   26   -36.63461006     0.17697123    38840.70      0.17697131    38840.71      4.8156
   27   -36.63450025     0.17708105    38864.80      0.17708112    38864.81      4.8186
   28   -36.63450025     0.17708105    38864.80      0.17708112    38864.81      4.8186
   29   -36.63449962     0.17708167    38864.93      0.17708174    38864.95      4.8186
   30   -36.63428017     0.17730112    38913.10      0.17730119    38913.11      4.8246
   31   -36.63427996     0.17730134    38913.15      0.17730141    38913.16      4.8246
   32   -36.63427996     0.17730134    38913.15      0.17730141    38913.16      4.8246
   33   -36.63427932     0.17730197    38913.29      0.17730204    38913.30      4.8246
   34   -36.63427932     0.17730197    38913.29      0.17730204    38913.30      4.8246

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999980  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00043292  0.00658644 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00658654  0.00043291 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00660001  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00001273  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00001269  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00660033
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.55012510 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.41080743
                           0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.41079226 -0.70535769  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.54967370 -0.00000000 -0.00000000 -0.41116288  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000 -0.54601023 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.31339988 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00004676 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00006795
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00004699 -0.00000000 -0.00000000 -0.00006795  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00036413 -0.00000000  0.00000000  0.00000000  0.00006783  0.00003953 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.81691611  0.00347158 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00000000 -0.54865112  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.41360806

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.54864605 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000015 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000301  0.00000000  0.00000000  0.81354128 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.62905390  0.00000000 -0.00000000  0.00000615  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00036415  0.00000000  0.00000000  0.00000000  0.00000033 -0.00007852  0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00004702 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00004702  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00006796

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.55012803  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.54968173 -0.00000000  0.00000000  0.41115945 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.40478910  0.70881231 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.54600761 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.40574203

   5    1  |1 1>-          0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                           0.00000000 -0.31340072  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.70391438

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00004675 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00036413 -0.00000000  0.00000000  0.00000000  0.00006816 -0.00003896  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00004699  0.00000000 -0.00000000  0.00006795 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000030 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000555  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00003295 -0.00000000  0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00660034 -0.00000000 -0.00000000 -0.00004034  0.00000000  0.00000000 -0.00002142 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00004037 -0.00000000 -0.00000000  0.00002141  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000002 -0.00000000  0.69818436 -0.00000009 -0.00000001 -0.20280771 -0.00000004  0.00000000
                           0.00000001  0.00000000  0.00000007 -0.00000008  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.57766010  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000  0.00000001  0.00000002  0.57492408 -0.00000000 -0.00000000  0.44526279
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000001

   4    1  |1 1>+         -0.40573887  0.00000000  0.00000007  0.51900400 -0.00000001  0.00000009 -0.51756776 -0.00000000
                          -0.00000002  0.00000000 -0.00000006  0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.70391874  0.00000000 -0.00000004 -0.32573283  0.00000001  0.00000010 -0.54786426 -0.00000000
                           0.00000003 -0.00000000  0.00000004 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000029 -0.00000000 -0.00000000  0.00000028  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000033  0.00000000 -0.00000000  0.00000029
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.57672088 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000001 -0.00000000 -0.00000004  0.00000004 -0.00000000  0.00000001 -0.00000000 -0.00000000
                           0.00000002  0.00000000  0.37048168 -0.00000005 -0.00000001  0.62501711  0.00000011  0.00000000

   3    1  |1 0>          -0.00000002 -0.00000000  0.00000004 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.41360758 -0.00000000  0.00000005  0.36983630 -0.00000001 -0.00000011  0.62540398  0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000001  0.00000002  0.58148201  0.00000000 -0.00000000  0.00045555

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00061436 -0.00000000 -0.00000000  0.77736144

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00006796 -0.00000000  0.00000000  0.00000048 -0.00000000 -0.00000000  0.00000014  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000048 -0.00000000 -0.00000000  0.00000014  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000002 -0.00000000  0.00000008 -0.00000006 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.41080356  0.00000000  0.00000009  0.69839393 -0.00000002  0.00000004 -0.20208471 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00000001 -0.00000002 -0.57562193 -0.00000000 -0.00000000  0.44435350

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.57766932  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000001  0.00000000  0.00000005 -0.00000006  0.00000000  0.00000001 -0.00000000 -0.00000000
                           0.00000002  0.00000000 -0.51846732  0.00000007  0.00000001  0.51810565  0.00000009  0.00000000

   5    1  |1 1>-         -0.00000002  0.00000000  0.00000003 -0.00000004  0.00000000 -0.00000001  0.00000000  0.00000000
                           0.00000003 -0.00000000 -0.32630287  0.00000004  0.00000000 -0.54753007 -0.00000010 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00006795  0.00000000 -0.00000000 -0.00000029  0.00000000  0.00000000 -0.00000028  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000033  0.00000000 -0.00000000  0.00000029

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.99997747 -0.00003964 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00003964  0.99997747 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.99997748 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000009  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.99997748 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.99997748 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00269470  0.00000002  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00482390 -0.00240384 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00269481  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00269492 -0.00000000  0.00000000 -0.00000002  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00466718  0.00000000  0.00000000 -0.00000001  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00561372  0.99998415 -0.00000205
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00019456  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00086002 -0.00027282 -0.00000153  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00085999 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00027273
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00044295  0.00088899 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00033042 -0.00537918  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00269475 -0.00000003 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00269476  0.00000000  0.00000000 -0.00000003  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00538875 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000003

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00001455  0.00000213  0.99999993

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00099148 -0.00006090  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00086003  0.00000000 -0.00000153  0.00027273 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00086003  0.00027273  0.00000153 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00269470  0.00000000 -0.00000000  0.00000002 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00269482 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00449343 -0.00297615  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00269490  0.00000002  0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00466716 -0.00000001 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000109  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.99998417  0.00561372 -0.00001456

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00086002 -0.00000000 -0.00000153  0.00027282 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00054842  0.00082810 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00085999  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00027273

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000047 -0.00063070  0.00000000  0.00000000  0.00000000  0.00000112 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000225 -0.00000000  0.00000000 -0.00000000  0.00121487 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000014 -0.00000000 -0.00000000  0.00000000  0.00007475 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000349 -0.00000000 -0.00000000 -0.00000000  0.00121686
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000349  0.00000000 -0.00000000 -0.00000000 -0.00121686 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.99999979  0.00065361 -0.00000000  0.00000000 -0.00000000 -0.00000115 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00003626  0.00000000 -0.00000000  0.00000000  0.00003609  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000012 -0.00000000  0.00000000 -0.00000000 -0.00006231  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00003635  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00003623 -0.00000000  0.00000000  0.00000000 -0.00003605
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00002097  0.00000000 -0.00000000 -0.00000000  0.00006220
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00038577  0.00000000 -0.00000000  0.00000000 -0.00000104
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.70913508 -0.00000002  0.00000000  0.00000000  0.70507206  0.00000031
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.70710622 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00038476  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00037735  0.57661490 -0.00000000  0.00000000 -0.00000000 -0.40933231  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00003647 -0.00000000  0.00000000  0.00000000  0.00003588  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00003647  0.00000000 -0.00000000 -0.00000000  0.00003588

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00004213 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000021 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00038570  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00037738  0.57881796 -0.00000000  0.00000000 -0.00000000  0.81545600 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000002  0.70507213  0.00000000 -0.00000000 -0.00000031  0.70913501

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.70507253  0.00000002 -0.00000000  0.00000000  0.70913461  0.00000031

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00003626 -0.00000000 -0.00000000 -0.00000000  0.00003609

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00003635  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000012  0.00000000 -0.00000000 -0.00000000  0.00006232 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00003623  0.00000000 -0.00000000  0.00000000  0.00003605  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00002097 -0.00000000  0.00000000  0.00000000  0.00006220  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00038577 -0.00000000  0.00000000 -0.00000000 -0.00000104 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000002  0.70913548  0.00000000  0.00000000  0.00000031 -0.70507166

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00037735 -0.57661442  0.00000000 -0.00000000  0.00000000  0.40923963 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00038476  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.70710702  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34

   1    1  |0 0>          -0.00000000  0.00000000
                          -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00007475
                           0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00121476
                          -0.00000000 -0.00000000

   4    1  |0 0>          -0.00121682 -0.00000000
                           0.00000001  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000
                           0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000
                           0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000
                           0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00003597
                          -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00003597 -0.00000000
                           0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000
                           0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   8    1  |1 1>+          0.70710665  0.00000000
                          -0.00000374 -0.00000000

   9    1  |1 1>+         -0.00000000  0.70707923
                          -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000
                           0.00000000 -0.00007197

   2    1  |1 0>           0.00000000  0.00000000
                          -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000
                           0.00007189  0.00000000

   5    1  |1 0>          -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000
                           0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000
                           0.00000000  0.00005324

   8    1  |1 0>          -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000
                          -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000
                           0.00003597  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000
                           0.00000000 -0.00003596

   4    1  |1 1>-          0.00000000  0.00000000
                          -0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000
                           0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000
                          -0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000  0.70713327

   9    1  |1 1>-         -0.00000374 -0.00000000
                          -0.70710586 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1    -36.81158137     -0.00000007       -0.02      0.00000000        0.00      0.0000
   2   1    -36.71299706      0.09858424    21636.74      0.09858431    21636.75      2.6826
   3   1    -36.71299706      0.09858424    21636.74      0.09858431    21636.75      2.6826
   4   1    -36.71299696      0.09858433    21636.76      0.09858440    21636.78      2.6826
   5   1    -36.71296056      0.09862074    21644.75      0.09862081    21644.77      2.6836
   6   1    -36.71296049      0.09862080    21644.76      0.09862087    21644.78      2.6836
   7   1    -36.71296009      0.09862121    21644.85      0.09862128    21644.87      2.6836
   8   1    -36.71295999      0.09862130    21644.87      0.09862137    21644.89      2.6836
   9   1    -36.71295999      0.09862130    21644.87      0.09862137    21644.89      2.6836
  10   1    -36.71290453      0.09867676    21657.05      0.09867683    21657.06      2.6851
  11   1    -36.71290431      0.09867699    21657.10      0.09867706    21657.11      2.6851
  12   1    -36.71290431      0.09867699    21657.10      0.09867706    21657.11      2.6851
  13   1    -36.71290431      0.09867699    21657.10      0.09867706    21657.11      2.6851
  14   1    -36.71290411      0.09867719    21657.14      0.09867726    21657.16      2.6851
  15   1    -36.71290411      0.09867719    21657.14      0.09867726    21657.16      2.6851
  16   1    -36.71290401      0.09867728    21657.16      0.09867735    21657.18      2.6851
  17   1    -36.70583766      0.10574364    23208.05      0.10574371    23208.06      2.8774
  18   1    -36.70583761      0.10574369    23208.06      0.10574376    23208.07      2.8774
  19   1    -36.70583754      0.10574376    23208.07      0.10574383    23208.09      2.8774
  20   1    -36.70583753      0.10574377    23208.07      0.10574384    23208.09      2.8774
  21   1    -36.70583751      0.10574379    23208.08      0.10574386    23208.09      2.8774
  22   1    -36.66574569      0.14583561    32007.22      0.14583568    32007.23      3.9684
  23   1    -36.66574569      0.14583561    32007.22      0.14583568    32007.23      3.9684
  24   1    -36.66574569      0.14583561    32007.22      0.14583568    32007.23      3.9684
  25   1    -36.65790660      0.15367470    33727.70      0.15367477    33727.71      4.1817
  26   1    -36.63461006      0.17697123    38840.70      0.17697131    38840.71      4.8156
  27   1    -36.63450025      0.17708105    38864.80      0.17708112    38864.81      4.8186
  28   1    -36.63450025      0.17708105    38864.80      0.17708112    38864.81      4.8186
  29   1    -36.63449962      0.17708167    38864.93      0.17708174    38864.95      4.8186
  30   1    -36.63428017      0.17730112    38913.10      0.17730119    38913.11      4.8246
  31   1    -36.63427996      0.17730134    38913.15      0.17730141    38913.16      4.8246
  32   1    -36.63427996      0.17730134    38913.15      0.17730141    38913.16      4.8246
  33   1    -36.63427932      0.17730197    38913.29      0.17730204    38913.30      4.8246
  34   1    -36.63427932      0.17730197    38913.29      0.17730204    38913.30      4.8246

 E0 =    -36.81158130 is the energy of the lowest zeroth-order state
 E1 =    -36.81158137 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999980  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00043292  0.00658644 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00658654  0.00043291 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00660001  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00001273  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00001269  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00660033
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000006  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000000  0.55012510 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.41080743
                                0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

  9  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.41079226 -0.70535769  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.54967370 -0.00000000 -0.00000000 -0.41116288  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.54601023 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001

 12  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.31339988 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000003
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+       0.00000000  0.00004676 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00006795
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00004699 -0.00000000 -0.00000000 -0.00006795  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00036413 -0.00000000  0.00000000  0.00000000  0.00006783  0.00003953 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.81691611  0.00347158 -0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00000000 -0.54865112  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.41360806

 19  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.54864605 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002

 20  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000015 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000301  0.00000000  0.00000000  0.81354128 -0.00000000

 21  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.62905390  0.00000000 -0.00000000  0.00000615  0.00000000

 22  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000

 23  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00036415  0.00000000  0.00000000  0.00000000  0.00000033 -0.00007852  0.00000000  0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00004702 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00004702  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00006796

 26  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.55012803  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002

 27  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.54968173 -0.00000000  0.00000000  0.41115945 -0.00000000

 28  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.40478910  0.70881231 -0.00000000 -0.00000000

 29  1     4    1  |1 1>-      -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.54600761 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.40574203

 30  1     5    1  |1 1>-       0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                                0.00000000 -0.31340072  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.70391438

 31  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 32  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00004675 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00036413 -0.00000000  0.00000000  0.00000000  0.00006816 -0.00003896  0.00000000 -0.00000000

 34  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00004699  0.00000000 -0.00000000  0.00006795 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000030 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000555  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00003295 -0.00000000  0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00660034 -0.00000000 -0.00000000 -0.00004034  0.00000000  0.00000000 -0.00002142 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.00004037 -0.00000000 -0.00000000  0.00002141  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.00000002 -0.00000000  0.69818436 -0.00000009 -0.00000001 -0.20280771 -0.00000004  0.00000000
                                0.00000001  0.00000000  0.00000007 -0.00000008  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+      -0.00000000  0.57766010  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000  0.00000000  0.00000001  0.00000002  0.57492408 -0.00000000 -0.00000000  0.44526279
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000001

 11  1     4    1  |1 1>+      -0.40573887  0.00000000  0.00000007  0.51900400 -0.00000001  0.00000009 -0.51756776 -0.00000000
                               -0.00000002  0.00000000 -0.00000006  0.00000005  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.70391874  0.00000000 -0.00000004 -0.32573283  0.00000001  0.00000010 -0.54786426 -0.00000000
                                0.00000003 -0.00000000  0.00000004 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000029 -0.00000000 -0.00000000  0.00000028  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000033  0.00000000 -0.00000000  0.00000029
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00000000  0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.57672088 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     2    1  |1 0>       -0.00000001 -0.00000000 -0.00000004  0.00000004 -0.00000000  0.00000001 -0.00000000 -0.00000000
                                0.00000002  0.00000000  0.37048168 -0.00000005 -0.00000001  0.62501711  0.00000011  0.00000000

 19  1     3    1  |1 0>       -0.00000002 -0.00000000  0.00000004 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.41360758 -0.00000000  0.00000005  0.36983630 -0.00000001 -0.00000011  0.62540398  0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000001  0.00000002  0.58148201  0.00000000 -0.00000000  0.00045555

 21  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00061436 -0.00000000 -0.00000000  0.77736144

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00006796 -0.00000000  0.00000000  0.00000048 -0.00000000 -0.00000000  0.00000014  0.00000000

 25  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000048 -0.00000000 -0.00000000  0.00000014  0.00000000 -0.00000000

 26  1     1    1  |1 1>-      -0.00000002 -0.00000000  0.00000008 -0.00000006 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.41080356  0.00000000  0.00000009  0.69839393 -0.00000002  0.00000004 -0.20208471 -0.00000000

 27  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00000001 -0.00000002 -0.57562193 -0.00000000 -0.00000000  0.44435350

 28  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.57766932  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     4    1  |1 1>-      -0.00000001  0.00000000  0.00000005 -0.00000006  0.00000000  0.00000001 -0.00000000 -0.00000000
                                0.00000002  0.00000000 -0.51846732  0.00000007  0.00000001  0.51810565  0.00000009  0.00000000

 30  1     5    1  |1 1>-      -0.00000002  0.00000000  0.00000003 -0.00000004  0.00000000 -0.00000001  0.00000000  0.00000000
                                0.00000003 -0.00000000 -0.32630287  0.00000004  0.00000000 -0.54753007 -0.00000010 -0.00000000

 31  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 32  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00006795  0.00000000 -0.00000000 -0.00000029  0.00000000  0.00000000 -0.00000028  0.00000000

 33  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000033  0.00000000 -0.00000000  0.00000029


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.99997747 -0.00003964 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00003964  0.99997747 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.99997748 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000009  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.99997748 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.99997748 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00269470  0.00000002  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00482390 -0.00240384 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00269481  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00269492 -0.00000000  0.00000000 -0.00000002  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00466718  0.00000000  0.00000000 -0.00000001  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00561372  0.99998415 -0.00000205
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00019456  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00086002 -0.00027282 -0.00000153  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000  0.00085999 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00027273
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     9    1  |1 1>+       0.00044295  0.00088899 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00033042 -0.00537918  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00269475 -0.00000003 -0.00000000  0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00269476  0.00000000  0.00000000 -0.00000003  0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00538875 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000003

 22  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00001455  0.00000213  0.99999993

 23  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00099148 -0.00006090  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000005 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00086003  0.00000000 -0.00000153  0.00027273 -0.00000000

 25  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00086003  0.00027273  0.00000153 -0.00000000

 26  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00269470  0.00000000 -0.00000000  0.00000002 -0.00000000

 27  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00269482 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002

 28  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00449343 -0.00297615  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 29  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00269490  0.00000002  0.00000000 -0.00000000

 30  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00466716 -0.00000001 -0.00000000  0.00000000

 31  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000109  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.99998417  0.00561372 -0.00001456

 32  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00086002 -0.00000000 -0.00000153  0.00027282 -0.00000000

 33  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00054842  0.00082810 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 34  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00085999  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00027273


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000047 -0.00063070  0.00000000  0.00000000  0.00000000  0.00000112 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000225 -0.00000000  0.00000000 -0.00000000  0.00121487 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000014 -0.00000000 -0.00000000  0.00000000  0.00007475 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000349 -0.00000000 -0.00000000 -0.00000000  0.00121686
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000349  0.00000000 -0.00000000 -0.00000000 -0.00121686 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.99999979  0.00065361 -0.00000000  0.00000000 -0.00000000 -0.00000115 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00003626  0.00000000 -0.00000000  0.00000000  0.00003609  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000012 -0.00000000  0.00000000 -0.00000000 -0.00006231  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00003635  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00003623 -0.00000000  0.00000000  0.00000000 -0.00003605
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00002097  0.00000000 -0.00000000 -0.00000000  0.00006220
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00038577  0.00000000 -0.00000000  0.00000000 -0.00000104
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000  0.00000000  0.70913508 -0.00000002  0.00000000  0.00000000  0.70507206  0.00000031
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.70710622 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00038476  0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00037735  0.57661490 -0.00000000  0.00000000 -0.00000000 -0.40933231  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00003647 -0.00000000  0.00000000  0.00000000  0.00003588  0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00003647  0.00000000 -0.00000000 -0.00000000  0.00003588

 20  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00004213 -0.00000000 -0.00000000  0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000021 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00038570  0.00000000 -0.00000000 -0.00000000

 23  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00037738  0.57881796 -0.00000000  0.00000000 -0.00000000  0.81545600 -0.00000000  0.00000000

 24  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000002  0.70507213  0.00000000 -0.00000000 -0.00000031  0.70913501

 25  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.70507253  0.00000002 -0.00000000  0.00000000  0.70913461  0.00000031

 26  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00003626 -0.00000000 -0.00000000 -0.00000000  0.00003609

 27  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00003635  0.00000000  0.00000000 -0.00000000

 28  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000012  0.00000000 -0.00000000 -0.00000000  0.00006232 -0.00000000  0.00000000

 29  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00003623  0.00000000 -0.00000000  0.00000000  0.00003605  0.00000000

 30  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00002097 -0.00000000  0.00000000  0.00000000  0.00006220  0.00000000

 31  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00038577 -0.00000000  0.00000000 -0.00000000 -0.00000104 -0.00000000

 32  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000002  0.70913548  0.00000000  0.00000000  0.00000031 -0.70507166

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00037735 -0.57661442  0.00000000 -0.00000000  0.00000000  0.40923963 -0.00000000  0.00000000

 34  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00038476  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.70710702  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34

  1  1     1    1  |0 0>       -0.00000000  0.00000000
                               -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00007475
                                0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00121476
                               -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00121682 -0.00000000
                                0.00000001  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000
                                0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000
                                0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000
                                0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.00000000
                               -0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00003597
                               -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00003597 -0.00000000
                                0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000
                               -0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000
                                0.00000000  0.00000000

 13  1     6    1  |1 1>+      -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.70710665  0.00000000
                               -0.00000374 -0.00000000

 16  1     9    1  |1 1>+      -0.00000000  0.70707923
                               -0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000
                                0.00000000 -0.00007197

 18  1     2    1  |1 0>        0.00000000  0.00000000
                               -0.00000000 -0.00000000

 19  1     3    1  |1 0>       -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000
                                0.00007189  0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000
                               -0.00000000 -0.00000000

 22  1     6    1  |1 0>        0.00000000 -0.00000000
                                0.00000000  0.00000000

 23  1     7    1  |1 0>       -0.00000000 -0.00000000
                                0.00000000  0.00005324

 24  1     8    1  |1 0>       -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000
                               -0.00000000 -0.00000000

 26  1     1    1  |1 1>-      -0.00000000 -0.00000000
                                0.00000000 -0.00000000

 27  1     2    1  |1 1>-       0.00000000  0.00000000
                                0.00003597  0.00000000

 28  1     3    1  |1 1>-      -0.00000000  0.00000000
                                0.00000000 -0.00003596

 29  1     4    1  |1 1>-       0.00000000  0.00000000
                               -0.00000000  0.00000000

 30  1     5    1  |1 1>-       0.00000000  0.00000000
                               -0.00000000 -0.00000000

 31  1     6    1  |1 1>-      -0.00000000  0.00000000
                                0.00000000 -0.00000000

 32  1     7    1  |1 1>-       0.00000000  0.00000000
                               -0.00000000  0.00000000

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000  0.70713327

 34  1     9    1  |1 1>-      -0.00000374 -0.00000000
                               -0.70710586 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%   30.26%    0.00%    0.00%    0.00%    0.00%    0.00%   16.88%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.88%   49.75%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%   30.21%    0.00%    0.00%   16.91%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%   29.81%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    9.82%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.74%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%   30.10%    0.00%    0.00%    0.00%    0.00%    0.00%   17.11%
 19  1     3    1  |1 0>          0.00%    0.00%   30.10%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.18%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.57%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%   30.26%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%   30.22%    0.00%    0.00%   16.91%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.39%   50.24%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%   29.81%    0.00%    0.00%    0.00%    0.00%    0.00%   16.46%
 30  1     5    1  |1 1>-         0.00%    9.82%    0.00%    0.00%    0.00%    0.00%    0.00%   49.55%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%   48.75%    0.00%    0.00%    4.11%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%   33.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.05%    0.00%    0.00%   19.83%
 11  1     4    1  |1 1>+        16.46%    0.00%    0.00%   26.94%    0.00%    0.00%   26.79%    0.00%
 12  1     5    1  |1 1>+        49.55%    0.00%    0.00%   10.61%    0.00%    0.00%   30.02%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%   33.26%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%   13.73%    0.00%    0.00%   39.06%    0.00%    0.00%
 19  1     3    1  |1 0>         17.11%    0.00%    0.00%   13.68%    0.00%    0.00%   39.11%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.81%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.43%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-        16.88%    0.00%    0.00%   48.78%    0.00%    0.00%    4.08%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.13%    0.00%    0.00%   19.75%
 28  1     3    1  |1 1>-         0.00%   33.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%   26.88%    0.00%    0.00%   26.84%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%   10.65%    0.00%    0.00%   29.98%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%   50.29%    0.00%    0.00%    0.00%   49.71%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%   33.25%    0.00%    0.00%    0.00%   16.76%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%   33.50%    0.00%    0.00%    0.00%   66.50%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%   49.71%    0.00%    0.00%    0.00%   50.29%
 25  1     9    1  |1 0>          0.00%    0.00%   49.71%    0.00%    0.00%    0.00%   50.29%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%   50.29%    0.00%    0.00%    0.00%   49.71%
 33  1     8    1  |1 1>-         0.00%   33.25%    0.00%    0.00%    0.00%   16.75%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34

  1  1     1    1  |0 0>          0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%
 15  1     8    1  |1 1>+        50.00%    0.00%
 16  1     9    1  |1 1>+         0.00%   50.00%
 17  1     1    1  |1 0>          0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%   50.00%
 34  1     9    1  |1 1>-        50.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       59.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      419.23       700     1000      520     2100     2140     5201     5301   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       702.65    372.01    200.62    121.85      3.86      0.75      3.34
 REAL TIME  *       765.07 SEC
 DISK USED  *       478.93 MB (local),        6.11 GB (total)
 SF USED    *         2.33 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -36.634279321455

              CI              CI           MULTI         RHF-SCF
    -36.61268889    -36.63296861    -36.30146149    -36.44724708
 **********************************************************************************************************************************
 Molpro calculation terminated
