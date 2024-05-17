
 Working directory              : /wrk/irikura/molpro.kGve2BMUAJ/
 Global scratch directory       : /wrk/irikura/molpro.kGve2BMUAJ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.kGve2BMUAJ/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   24
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Ba SO-CI
 memory,900,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCV5Z-PP
 
 {rhf;wf,sym=1,spin=0}
 
 NSING=12
 NTRIP=16
 
                                                                                 ! active space (2/10)
 {multi
     closed,1,3
     occ,8,9
     wf,sym=1,spin=0;state,NSING;
     wf,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5103.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5101.2,5103.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ba SO-                                                                        
  64 bit mpp version                                                                     DATE: 02-May-24          TIME: 15:36:53  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:       900 MW
 Total memory per node:  21600 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 900.0 MW


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

     248.513 MB (compressed) written to integral file ( 13.7%)

     Node minimum: 5.767 MB, node maximum: 15.729 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    5449443.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    5449443      RECORD LENGTH: 524288

 Memory used in sort:       6.01 MW

 SORT1 READ   226482739. AND WROTE      906112. INTEGRALS IN      3 RECORDS. CPU TIME:     1.20 SEC, REAL TIME:     1.24 SEC
 SORT2 READ    23241716. AND WROTE   131080516. INTEGRALS IN    696 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.13 SEC

 Node minimum:     5446104.  Node maximum:     5472081. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.77       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.62      3.24
 REAL TIME  *         4.67 SEC
 DISK USED  *        30.09 MB (local),        1.16 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -24.68510439     -24.68510439     0.00D+00     0.26D+00     0     0       0.03      0.06    start
   2      -24.96654727      -0.28144287     0.17D-01     0.15D+00     1     0       0.03      0.09    diag
   3      -25.03741811      -0.07087085     0.39D-02     0.67D-01     2     0       0.03      0.12    diag
   4      -25.08903752      -0.05161941     0.26D-02     0.47D-01     3     0       0.04      0.16    diag
   5      -25.09491156      -0.00587404     0.86D-03     0.77D-02     4     0       0.03      0.19    diag
   6      -25.09500726      -0.00009570     0.12D-03     0.13D-02     5     0       0.03      0.22    diag
   7      -25.09501691      -0.00000965     0.39D-04     0.13D-02     6     0       0.04      0.26    diag
   8      -25.09501760      -0.00000069     0.12D-04     0.30D-03     7     0       0.03      0.29    fixocc
   9      -25.09501761      -0.00000001     0.17D-05     0.19D-04     8     0       0.04      0.33    diag
  10      -25.09501761      -0.00000000     0.38D-06     0.44D-05     9     0       0.03      0.36    diag/orth
  11      -25.09501761      -0.00000000     0.96D-07     0.25D-05     9     0       0.03      0.39    diag
  12      -25.09501761      -0.00000000     0.10D-07     0.84D-07     0     0       0.03      0.42    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -25.095017612110
  RHF One-electron energy             -41.272199558957
  RHF Two-electron energy              16.177181946847
  RHF Kinetic energy                    6.695439484744
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.748076234471

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.60487     1  1  s    0.99988
    2.1     2.00000    -0.16318     1  1  s   -0.31509    1  4  s    0.47981    1  5  s    0.61878
    1.2     2.00000    -0.89696     1  1  pz   0.99995
    2.2     2.00000    -0.89696     1  1  py   0.99995
    3.2     2.00000    -0.89696     1  1  px   0.99995


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
 CPU TIMES  *         4.06      0.44      3.24
 REAL TIME  *         5.17 SEC
 DISK USED  *        32.15 MB (local),        1.20 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:       13 (    7    6)
 Number of external orbitals:     196 (   93  103)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              49   (85 determinants, 169 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              36   (36 determinants, 78 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.224D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.392D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.558D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.484D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 5 3 2 6   4 3 5 1 2 6 4 5 3 8  12 911 714151310 1 2   4 6 3 5 1 2 4 6 3 5
                                       11 9 81213101514 7 2   4 6 3 5 111 912 814  15 71310 2 3 4 6 5 9  1112 81514 71310 111
                                        912 81514 71310 3 4   6 5 2 6 3 4 5 2 1 1   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.115D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.113D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.290D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.709D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.709D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.131D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.131D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 1 2 3   1 2 5 4 6 810 9 7 3   1 21211151719211314  161820 3 1 2 810 5 4
                                        6 9 7 7 9 810 5 4 6   3 2 1 6 5 410 8 9 7  19132116141517111218  20 3 2 1 810 9 7 5 4
                                        6 3 2 1111219201816  1415172113 5 410 8 6   9 7 9 7 5 410 8 6 3   1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
 
 Number of orbital rotations:  1696  ( 25 closed/active, 402 closed/virtual, 0 active/active, 1269 active/virtual )
 Total number of variables:    3292
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   26    5    -24.93788351     -25.04449567   -0.10661216    0.05363768 0.00011949 0.00000000  0.26E+01      1.94
   2    8   14    0    -25.01826414     -25.02598074   -0.00771660    0.04812052 0.00010056 0.00000000  0.58E+00      3.56
   3    8   14    0    -25.02605992     -25.02606617   -0.00000625    0.00107469 0.00000018 0.00000000  0.15E-01      5.18
   4    5   10    0    -25.02606618     -25.02606618   -0.00000000    0.00000245 0.00000001 0.00000000  0.33E-04      6.48

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.79E-08)
                       Final energy:    -25.02606618
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.117274333389
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.63394703
 One electron energy                           -41.20243299
 Two electron energy                            16.08515866
 Virial ratio                                    4.78617349
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -25.054515074453
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82369368
 One electron energy                           -41.43179172
 Two electron energy                            16.37727665
 Virial ratio                                    4.67169399
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -25.054515074390
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82369368
 One electron energy                           -41.43179172
 Two electron energy                            16.37727664
 Virial ratio                                    4.67169399
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -25.054515074244
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82369367
 One electron energy                           -41.43179171
 Two electron energy                            16.37727663
 Virial ratio                                    4.67169399
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -25.054515073983
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82369367
 One electron energy                           -41.43179169
 Two electron energy                            16.37727662
 Virial ratio                                    4.67169400
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -25.054515073884
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82369366
 One electron energy                           -41.43179168
 Two electron energy                            16.37727661
 Virial ratio                                    4.67169400
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -25.000006503613
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96462275
 One electron energy                           -41.57556031
 Two electron energy                            16.57555380
 Virial ratio                                    4.58957080
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy               -25.000006503536
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96462276
 One electron energy                           -41.57556031
 Two electron energy                            16.57555381
 Virial ratio                                    4.58957080
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy               -25.000006503420
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96462276
 One electron energy                           -41.57556032
 Two electron energy                            16.57555382
 Virial ratio                                    4.58957080
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy              -25.000006503419
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96462276
 One electron energy                           -41.57556032
 Two electron energy                            16.57555382
 Virial ratio                                    4.58957080
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy              -25.000006503344
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96462276
 One electron energy                           -41.57556032
 Two electron energy                            16.57555382
 Virial ratio                                    4.58957080
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy              -24.998520469613
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.62333439
 One electron energy                           -40.45982306
 Two electron energy                            15.46130259
 Virial ratio                                    4.77431049
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061177929925
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83352046
 One electron energy                           -41.52227264
 Two electron energy                            16.46109471
 Virial ratio                                    4.66738902
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061177929883
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83352046
 One electron energy                           -41.52227264
 Two electron energy                            16.46109471
 Virial ratio                                    4.66738902
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061177929679
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83352046
 One electron energy                           -41.52227263
 Two electron energy                            16.46109470
 Virial ratio                                    4.66738903
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061177929358
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83352045
 One electron energy                           -41.52227261
 Two electron energy                            16.46109468
 Virial ratio                                    4.66738903
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061177929256
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83352045
 One electron energy                           -41.52227261
 Two electron energy                            16.46109468
 Virial ratio                                    4.66738903
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004467717750
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06533416
 One electron energy                           -41.89027737
 Two electron energy                            16.88580965
 Virial ratio                                    4.53903540
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004467717726
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06533416
 One electron energy                           -41.89027736
 Two electron energy                            16.88580964
 Virial ratio                                    4.53903540
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.004467717718
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06533415
 One electron energy                           -41.89027736
 Two electron energy                            16.88580964
 Virial ratio                                    4.53903541
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.004467717705
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06533415
 One electron energy                           -41.89027736
 Two electron energy                            16.88580964
 Virial ratio                                    4.53903541
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004467717655
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06533415
 One electron energy                           -41.89027735
 Two electron energy                            16.88580963
 Virial ratio                                    4.53903541
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004467717643
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06533414
 One electron energy                           -41.89027733
 Two electron energy                            16.88580961
 Virial ratio                                    4.53903541
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004467717593
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06533413
 One electron energy                           -41.89027731
 Two electron energy                            16.88580959
 Virial ratio                                    4.53903541
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -25.003628748697
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.54115535
 One electron energy                           -40.18982262
 Two electron energy                            15.18619387
 Virial ratio                                    4.82250954
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -25.000219296525
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92265231
 One electron energy                           -41.45568359
 Two electron energy                            16.45546430
 Virial ratio                                    4.61136429
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -25.000219296518
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92265231
 One electron energy                           -41.45568360
 Two electron energy                            16.45546430
 Virial ratio                                    4.61136428
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -25.000219296447
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92265231
 One electron energy                           -41.45568360
 Two electron energy                            16.45546430
 Virial ratio                                    4.61136428
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999999998
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.134857227096
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000039
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     2.865142067381
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     3.767108117196
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     1.000000000015
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     3.999999993318
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     0.232889249571
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000000000000
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     4.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.534406060127
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000002
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.465594117321
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     4.563546551948
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.759440729539
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.201470416480
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.798530085360
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     8.240555903495
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     3.999999999982
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     5.436454747537
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     0.000000000001
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000002
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.870954920457
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000000005
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.129045725409
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     1.927615884500
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000000000012
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000001901
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     2.072389774211
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     4.000000000000
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     4.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.554227581841
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     2.445772163937
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     7.306826253601
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.540312409192
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     7.495513836106
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     2.504485182905
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.459685759100
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     4.000000000037
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     2.693172678378
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.000000000000
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.994187852448
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999999999956
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.005812207209
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.305275998304
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     3.999999999973
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     1.000000004781
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     3.694720976218
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     1.000000000000
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.911366358032
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999999998
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.088633718742
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.129627194451
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     6.700246861270
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.303015747414
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     8.696984731735
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     3.299758337406
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     3.999999999981
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     3.870372574084
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.000000000000
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     0.999999999999
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     6.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     6.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     6.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     0.000000000000
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
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 6 3 5 2 4 1 2 3   6 5 4 1 6 5 4 3 211  12 71415 81310 9 1 6   4 5 3 2 1 6 4 2 5 3
                                        9 71211 815141310 4   2 6 5 3 1 9 712 811  15141310 4 2 5 6 3 9   712 81115141310 1 9
                                        712 81114151310 4 2   5 3 6 4 2 5 3 6 1 1   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 1 3 2 2   3 1 2 3 1 5 7 9 8 6  10 41213141619151721  112018 3 2 1 5 810 6
                                        7 9 4 4 6 510 8 9 7   3 1 2 4 610 5 8 7 9  11191321121416151718  20 3 1 2 4 610 8 5 9
                                        7 3 1 2111913211416  1215172018 4 610 8 5   9 7 4 610 8 5 9 7 3   1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.55872     1  1  s    0.99306
    2.1     0.45614    -0.03439     1  1  s   -0.31311    1  4  s    0.48663    1  5  s    0.65062
    3.1     0.25579     0.05486     1  1  d1-  0.25537    1  2  d1-  0.33919    1  3  d1-  0.36398
    4.1     0.25579     0.05486     1  1  d2-  0.25537    1  2  d2-  0.33919    1  3  d2-  0.36398
    5.1     0.25579     0.05486     1  1  d2+  0.25537    1  2  d2+  0.33919    1  3  d2+  0.36398
    6.1     0.25579     0.05486     1  1  d0   0.25537    1  2  d0   0.33919    1  3  d0   0.36398
    7.1     0.25579     0.05486     1  1  d1+  0.25537    1  2  d1+  0.33919    1  3  d1+  0.36398
    8.1     0.06706     0.04120     1  4  s   -0.69189    1  5  s   -0.82341    1  6  s    0.53064    1 11  s    1.01961
    1.2     2.00000    -0.86042     1  1  py   0.99179
    2.2     2.00000    -0.86042     1  1  pz   0.99179
    3.2     2.00000    -0.86042     1  1  px   0.99179
    4.2     0.06490     0.04956     1  1  px  -0.34943    1  2  px   0.25854    1  3  px   0.45984    1  4  px   0.38659
    5.2     0.06490     0.04956     1  1  pz  -0.34943    1  2  pz   0.25854    1  3  pz   0.45984    1  4  pz   0.38659
    6.2     0.06490     0.04956     1  1  py  -0.34943    1  2  py   0.25854    1  3  py   0.45984    1  4  py   0.38659
    7.2     0.00105     0.11209     1  1  px   0.35043    1  2  px  -0.74141    1  3  px  -0.71258    1  4  px   0.65774
                                    1  5  px   0.71948
    8.2     0.00105     0.11209     1  1  pz   0.35043    1  2  pz  -0.74141    1  3  pz  -0.71258    1  4  pz   0.65774
                                    1  5  pz   0.71948
    9.2     0.00105     0.11209     1  1  py   0.35043    1  2  py  -0.74141    1  3  py  -0.71258    1  4  py   0.65774
                                    1  5  py   0.71948
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                   1               2               3               4               5               6               7
 2000000 000000      0.95595963     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a0000b0 000000      0.00000000     -0.00000047      0.64819874     -0.00000000      0.00000000      0.00000000      0.00000000
 b0000a0 000000     -0.00000000      0.00000047     -0.64819874      0.00000000     -0.00000000     -0.00000000     -0.00000000
 ba00000 000000     -0.00000000     -0.64819874     -0.00000047      0.00000021     -0.00000012      0.00000006     -0.00000000
 ab00000 000000      0.00000000      0.64819874      0.00000047     -0.00000021      0.00000012     -0.00000006      0.00000000
 b0a0000 000000      0.00000000      0.00000012      0.00000000     -0.00000105     -0.64819874     -0.00000211      0.00000005
 a0b0000 000000     -0.00000000     -0.00000012     -0.00000000      0.00000105      0.64819874      0.00000211     -0.00000005
 a00b000 000000      0.00000000      0.00000021      0.00000000      0.64772764     -0.00000096     -0.02470851     -0.01163650
 b00a000 000000     -0.00000000     -0.00000021     -0.00000000     -0.64772764      0.00000096      0.02470851      0.01163650
 a000b00 000000      0.00000000      0.00000007     -0.00000000      0.02470851     -0.00000215      0.64772764     -0.04048246
 b000a00 000000     -0.00000000     -0.00000007      0.00000000     -0.02470851      0.00000215     -0.64772764      0.04048246
 a00000b 000000     -0.03921747      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 b00000a 000000      0.03921747     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 00b0a00 000000     -0.00000000      0.00000002      0.00000000     -0.00000020     -0.12576341     -0.00000041     -0.00000061
 00a0b00 000000      0.00000000     -0.00000002     -0.00000000      0.00000020      0.12576341      0.00000041      0.00000061
 0200000 000000     -0.04250101      0.00000003      0.00000000      0.10643818      0.00000005     -0.06698768     -0.11290953
 0000200 000000     -0.04250101     -0.00000001      0.00000000     -0.00479394      0.00000042     -0.12567201     -0.44972234
 0020000 000000     -0.04250101      0.00000001     -0.00000000      0.00479394     -0.00000042      0.12567201      0.44972234
 000ab00 000000      0.00000000      0.00000004      0.00000000      0.12567201     -0.00000019     -0.00479394      0.12927061
 000ba00 000000     -0.00000000     -0.00000004     -0.00000000     -0.12567201      0.00000019      0.00479394     -0.12927061
 0002000 000000     -0.04250101      0.00000001     -0.00000000      0.00479394     -0.00000042      0.12567201      0.44972233
 00b00a0 000000      0.00000000      0.10891431      0.00000008     -0.00000004      0.00000002     -0.00000001     -0.00000002
 00a00b0 000000     -0.00000000     -0.10891431     -0.00000008      0.00000004     -0.00000002      0.00000001      0.00000002
 0ba0000 000000     -0.00000000     -0.00000008      0.10891431     -0.00000000      0.00000000      0.00000000     -0.00000003
 0ab0000 000000      0.00000000      0.00000008     -0.10891431      0.00000000     -0.00000000     -0.00000000      0.00000003
 000b0a0 000000     -0.00000000     -0.00000008      0.10891431     -0.00000000      0.00000000      0.00000000     -0.00000003
 000a0b0 000000      0.00000000      0.00000008     -0.10891431      0.00000000     -0.00000000     -0.00000000      0.00000003
 0b0a000 000000     -0.00000000     -0.10891431     -0.00000008      0.00000004     -0.00000002      0.00000001      0.00000002
 0a0b000 000000      0.00000000      0.10891431      0.00000008     -0.00000004      0.00000002     -0.00000001     -0.00000002
 0b000a0 000000     -0.00000000     -0.00000002     -0.00000000      0.00000018      0.10891431      0.00000035      0.00000053
 0a000b0 000000      0.00000000      0.00000002      0.00000000     -0.00000018     -0.10891431     -0.00000035     -0.00000053
 0000000 200000     -0.15158222     -0.00000006     -0.00000000     -0.21980171     -0.00000010      0.13833388     -0.09054589
 0000000 020000     -0.15158222     -0.00000003      0.00000000     -0.00989980      0.00000086     -0.25952081      0.36064718
 0000020 000000     -0.04250101     -0.00000004     -0.00000000     -0.11123212      0.00000037     -0.05868433     -0.33681279
 0000000 b0a000     -0.00000000     -0.00000004     -0.00000000      0.00000036      0.22491507      0.00000073     -0.00000042
 0000000 a0b000      0.00000000      0.00000004      0.00000000     -0.00000036     -0.22491507     -0.00000073      0.00000042
 0000000 ba0000      0.00000000     -0.00000016      0.22491507     -0.00000000      0.00000000      0.00000000      0.00000003
 0000000 ab0000     -0.00000000      0.00000016     -0.22491507      0.00000000     -0.00000000     -0.00000000     -0.00000003
 0000000 0ab000     -0.00000000     -0.22491507     -0.00000016      0.00000007     -0.00000004      0.00000002     -0.00000002
 0000000 0ba000      0.00000000      0.22491507      0.00000016     -0.00000007      0.00000004     -0.00000002      0.00000002
 0000000 002000     -0.15158222      0.00000009      0.00000000      0.22970151     -0.00000077      0.12118693     -0.27010130
 0000ba0 000000      0.00000000     -0.00000005      0.06288171     -0.00000000      0.00000000      0.00000000     -0.00000002
 0000ab0 000000     -0.00000000      0.00000005     -0.06288171      0.00000000     -0.00000000     -0.00000000      0.00000002
 0b00a00 000000      0.00000000      0.06288171      0.00000005     -0.00000002      0.00000001     -0.00000001     -0.00000001
 0a00b00 000000     -0.00000000     -0.06288171     -0.00000005      0.00000002     -0.00000001      0.00000001      0.00000001
 0000002 000000     -0.01749178      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 0a0000b 000000      0.00000000      0.02855734      0.00000002     -0.00000001      0.00000001     -0.00000000      0.00000000
 0b0000a 000000     -0.00000000     -0.02855734     -0.00000002      0.00000001     -0.00000001      0.00000000     -0.00000000
 00000ba 000000      0.00000000      0.00000002     -0.02855734      0.00000000     -0.00000000     -0.00000000     -0.00000001
 00000ab 000000     -0.00000000     -0.00000002      0.02855734     -0.00000000      0.00000000      0.00000000      0.00000001
 00a000b 000000     -0.00000000     -0.00000001     -0.00000000      0.00000005      0.02855734      0.00000009     -0.00000013
 00b000a 000000      0.00000000      0.00000001      0.00000000     -0.00000005     -0.02855734     -0.00000009      0.00000013
 000b00a 000000     -0.00000000     -0.00000001     -0.00000000     -0.02853659      0.00000004      0.00108857      0.02677309
 000a00b 000000      0.00000000      0.00000001      0.00000000      0.02853659     -0.00000004     -0.00108857     -0.02677309
 0000a0b 000000      0.00000000      0.00000000     -0.00000000      0.00108857     -0.00000009      0.02853658     -0.09314149
 0000b0a 000000     -0.00000000     -0.00000000      0.00000000     -0.00108857      0.00000009     -0.02853658      0.09314149
 0000000 00b00a     -0.02753527      0.00000001      0.00000000      0.01923062     -0.00000006      0.01014578      0.00375274
 0000000 00a00b      0.02753527     -0.00000001     -0.00000000     -0.01923062      0.00000006     -0.01014578     -0.00375274
 0000000 a00b00      0.02753527      0.00000000      0.00000000      0.01840181      0.00000001     -0.01158132     -0.00125803
 0000000 b00a00     -0.02753527     -0.00000000     -0.00000000     -0.01840181     -0.00000001      0.01158132      0.00125803
 0000000 0b00a0     -0.02753527     -0.00000000      0.00000000     -0.00082881      0.00000007     -0.02172710     -0.00501077
 0000000 0a00b0      0.02753527      0.00000000     -0.00000000      0.00082881     -0.00000007      0.02172710      0.00501077
 
 Energy:           -25.11727433    -25.05451507    -25.05451507    -25.05451507    -25.05451507    -25.05451507    -25.00000650

 State:                   8               9              10              11              12
 2000000 000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.01982435
 a0000b0 000000      0.00000000     -0.00000000      0.00000003      0.04212170     -0.00000000
 b0000a0 000000     -0.00000000      0.00000000     -0.00000003     -0.04212170      0.00000000
 ba00000 000000     -0.00000001      0.04212170     -0.00000177      0.00000000      0.00000000
 ab00000 000000      0.00000001     -0.04212170      0.00000177     -0.00000000     -0.00000000
 b0a0000 000000      0.04212170      0.00000001     -0.00000002     -0.00000000      0.00000000
 a0b0000 000000     -0.04212170     -0.00000001      0.00000002      0.00000000     -0.00000000
 a00b000 000000     -0.00000001     -0.00000171     -0.04048246      0.00000003     -0.00000000
 b00a000 000000      0.00000001      0.00000171      0.04048246     -0.00000003      0.00000000
 a000b00 000000      0.00000006      0.00000049      0.01163649     -0.00000001      0.00000000
 b000a00 000000     -0.00000006     -0.00000049     -0.01163649      0.00000001     -0.00000000
 a00000b 000000     -0.00000000     -0.00000000     -0.00000002      0.00000000      0.61491456
 b00000a 000000      0.00000000      0.00000000      0.00000002     -0.00000000     -0.61491456
 00b0a00 000000     -0.46793276     -0.00000012      0.00000027      0.00000000     -0.00000000
 00a0b00 000000      0.46793276      0.00000012     -0.00000027     -0.00000000      0.00000000
 0200000 000000      0.00000041      0.00001912      0.45410625     -0.00000033      0.14648706
 0000200 000000      0.00000066      0.00000542      0.12927060     -0.00000006      0.14648707
 0020000 000000     -0.00000066     -0.00000542     -0.12927061      0.00000006      0.14648705
 000ab00 000000      0.00000009      0.00001894      0.44972234     -0.00000035      0.00000001
 000ba00 000000     -0.00000009     -0.00001894     -0.44972234      0.00000035     -0.00000001
 0002000 000000     -0.00000066     -0.00000542     -0.12927061      0.00000006      0.14648705
 00b00a0 000000     -0.00000010      0.40524166     -0.00001706      0.00000000      0.00000000
 00a00b0 000000      0.00000010     -0.40524166      0.00001706     -0.00000000     -0.00000000
 0ba0000 000000     -0.00000000      0.00000000     -0.00000031     -0.40524165      0.00000000
 0ab0000 000000      0.00000000     -0.00000000      0.00000031      0.40524165     -0.00000000
 000b0a0 000000     -0.00000000      0.00000000     -0.00000031     -0.40524165      0.00000000
 000a0b0 000000      0.00000000     -0.00000000      0.00000031      0.40524165     -0.00000000
 0b0a000 000000      0.00000010     -0.40524165      0.00001706     -0.00000000     -0.00000000
 0a0b000 000000     -0.00000010      0.40524165     -0.00001706      0.00000000      0.00000000
 0b000a0 000000      0.40524165      0.00000010     -0.00000023     -0.00000000      0.00000000
 0a000b0 000000     -0.40524165     -0.00000010      0.00000023      0.00000000     -0.00000000
 0000000 200000      0.00000033      0.00001533      0.36416281     -0.00000027     -0.15621893
 0000000 020000     -0.00000053     -0.00000435     -0.10366636      0.00000005     -0.15621894
 0000020 000000      0.00000025     -0.00001370     -0.32483566      0.00000027      0.14648704
 0000000 b0a000     -0.32497666     -0.00000008      0.00000019      0.00000000     -0.00000000
 0000000 a0b000      0.32497666      0.00000008     -0.00000019     -0.00000000      0.00000000
 0000000 ba0000      0.00000000     -0.00000000      0.00000025      0.32497666     -0.00000000
 0000000 ab0000     -0.00000000      0.00000000     -0.00000025     -0.32497666      0.00000000
 0000000 0ab000     -0.00000008      0.32497666     -0.00001368      0.00000000      0.00000000
 0000000 0ba000      0.00000008     -0.32497666      0.00001368     -0.00000000     -0.00000000
 0000000 002000      0.00000020     -0.00001098     -0.26049643      0.00000022     -0.15621895
 0000ba0 000000     -0.00000000      0.00000000     -0.00000018     -0.23396638      0.00000000
 0000ab0 000000      0.00000000     -0.00000000      0.00000018      0.23396638     -0.00000000
 0b00a00 000000     -0.00000006      0.23396638     -0.00000985      0.00000000      0.00000000
 0a00b00 000000      0.00000006     -0.23396638      0.00000985     -0.00000000     -0.00000000
 0000002 000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.15915409
 0a0000b 000000      0.00000002     -0.09691303      0.00000408     -0.00000000     -0.00000000
 0b0000a 000000     -0.00000002      0.09691303     -0.00000408      0.00000000      0.00000000
 00000ba 000000     -0.00000000      0.00000000     -0.00000007     -0.09691303      0.00000000
 00000ab 000000      0.00000000     -0.00000000      0.00000007      0.09691303     -0.00000000
 00a000b 000000     -0.09691303     -0.00000002      0.00000006      0.00000000     -0.00000000
 00b000a 000000      0.09691303      0.00000002     -0.00000006     -0.00000000      0.00000000
 000b00a 000000      0.00000002      0.00000392      0.09314149     -0.00000007      0.00000000
 000a00b 000000     -0.00000002     -0.00000392     -0.09314149      0.00000007     -0.00000000
 0000a0b 000000      0.00000014      0.00000112      0.02677309     -0.00000001      0.00000000
 0000b0a 000000     -0.00000014     -0.00000112     -0.02677309      0.00000001     -0.00000000
 0000000 00b00a     -0.00000000      0.00000015      0.00361929     -0.00000000      0.07727323
 0000000 00a00b      0.00000000     -0.00000015     -0.00361929      0.00000000     -0.07727323
 0000000 a00b00      0.00000000      0.00000021      0.00505962     -0.00000000     -0.07727323
 0000000 b00a00     -0.00000000     -0.00000021     -0.00505962      0.00000000      0.07727323
 0000000 0b00a0      0.00000001      0.00000006      0.00144032     -0.00000000      0.07727323
 0000000 0a00b0     -0.00000001     -0.00000006     -0.00144032      0.00000000     -0.07727323
 
 Energy:           -25.00000650    -25.00000650    -25.00000650    -25.00000650    -24.99852047
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                   1               2               3               4               5               6               7
 000aa00 000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000105      0.00000016
 a0a0000 000000     -0.00000000     -0.00000005     -0.00000003      0.99999235      0.00000080     -0.00000000      0.00000000
 a0000a0 000000      0.99999235     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 aa00000 000000      0.00000000      0.99999235      0.00000007      0.00000005      0.00000021     -0.00000000     -0.00000000
 a000a00 000000      0.00000000     -0.00000019     -0.14885587     -0.00000080      0.98885116     -0.00000000     -0.00000000
 a00a000 000000      0.00000000     -0.00000010      0.98885116     -0.00000009      0.14885587      0.00000000     -0.00000000
 00a0a00 000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.18001888      0.00000019
 a00000a 000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 000a0a0 000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000015      0.89054748
 0a000a0 000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.87981506     -0.00000019
 0aa0000 000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000011      0.30321200
 00a00a0 000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000491      0.00000000
 00aa000 000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.43990756      0.00000010
 0a0a000 000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000437      0.00000000
 0a00a00 000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000536     -0.00000000
 0000aa0 000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000003      0.33909830
 0000000 0aa000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0000000 a0a000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000002     -0.00000000
 0000000 aa0000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 0000000 a00a00     -0.00000000      0.00000000      0.00068807      0.00000000     -0.00027020     -0.00000000     -0.00000000
 0000000 0a00a0      0.00000000     -0.00000000     -0.00011004     -0.00000000      0.00073099     -0.00000000     -0.00000000
 0000000 00a00a      0.00000000      0.00000000     -0.00057803      0.00000000     -0.00046079     -0.00000000     -0.00000000
 
 Energy:           -25.06117793    -25.06117793    -25.06117793    -25.06117793    -25.06117793    -25.00446772    -25.00446772

 State:                   8               9              10              11              12              13              14
 000aa00 000000      0.00000310      0.00000066     -0.00000038      1.00000000      0.00000250     -0.00000000      0.00000000
 a0a0000 000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 a0000a0 000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 aa00000 000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a000a00 000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 a00a000 000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 00a0a00 000000      0.00000051     -0.00000056     -0.00000054     -0.00000265      0.98366315      0.00000000      0.00000001
 a00000a 000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.98230660     -0.00000000
 000a0a0 000000      0.00000004     -0.00000006     -0.08321763     -0.00000018     -0.00000025     -0.00000000     -0.00000006
 0a000a0 000000      0.00000740      0.00000193      0.00000003     -0.00000052     -0.16101379     -0.00000000      0.36693011
 0aa0000 000000     -0.00000044      0.00000061      0.84146448      0.00000027      0.00000038     -0.00000000      0.00000006
 00a00a0 000000      0.39963222      0.80018379     -0.00000037     -0.00000177      0.00000115      0.00000000     -0.00000012
 00aa000 000000     -0.00000370     -0.00000096     -0.00000001      0.00000026      0.08050689      0.00000000      0.73386015
 0a0a000 000000      0.67486655     -0.58698818      0.00000078     -0.00000170      0.00000011     -0.00000000     -0.00000012
 0a00a00 000000     -0.62036217     -0.12308852     -0.00000024      0.00000200     -0.00000073     -0.00000000     -0.00000021
 0000aa0 000000      0.00000028     -0.00000039     -0.53386549     -0.00000026     -0.00000036      0.00000000      0.00000011
 0000000 0aa000     -0.00000001      0.00000001      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000019
 0000000 a0a000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.57155741
 0000000 aa0000      0.00000000     -0.00000000     -0.00000001      0.00000000      0.00000000      0.00000000      0.00000009
 0000000 a00a00      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.10812607     -0.00000000
 0000000 0a00a0      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.10812607      0.00000000
 0000000 00a00a      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.10812607      0.00000000
 
 Energy:           -25.00446772    -25.00446772    -25.00446772    -25.00446772    -25.00446772    -25.00362875    -25.00021930

 State:                  15              16
 000aa00 000000     -0.00000000     -0.00000000
 a0a0000 000000     -0.00000000      0.00000000
 a0000a0 000000      0.00000000      0.00000000
 aa00000 000000      0.00000000      0.00000000
 a000a00 000000     -0.00000000      0.00000000
 a00a000 000000      0.00000000     -0.00000000
 00a0a00 000000     -0.00000000      0.00000000
 a00000a 000000     -0.00000000      0.00000000
 000a0a0 000000     -0.36693009      0.00000000
 0a000a0 000000     -0.00000006      0.00000012
 0aa0000 000000      0.36693010     -0.00000000
 00a00a0 000000      0.00000000      0.36693007
 00aa000 000000     -0.00000012      0.00000024
 0a0a000 000000      0.00000000      0.36693010
 0a00a00 000000      0.00000000      0.63554154
 0000aa0 000000      0.63554153     -0.00000000
 0000000 0aa000      0.00000000      0.57155741
 0000000 a0a000     -0.00000009      0.00000019
 0000000 aa0000      0.57155740     -0.00000000
 0000000 a00a00      0.00000000     -0.00000000
 0000000 0a00a0      0.00000000     -0.00000000
 0000000 00a00a      0.00000000      0.00000000
 
 Energy:           -25.00021930    -25.00021930
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       70.70       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.70       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.66      5.60      0.44      3.24
 REAL TIME  *        12.88 SEC
 DISK USED  *        72.48 MB (local),        2.15 GB (total)
 SF USED    *       132.56 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.11727433   -0.0
    -25.05451507    6.0
    -25.05451507    6.0
    -25.05451507    6.0
    -25.05451507    6.0
    -25.05451507    6.0
    -25.00000650    6.0
    -25.00000650    6.0
    -25.00000650    6.0
    -25.00000650    6.0
    -25.00000650    6.0
    -24.99852047    0.0
    -25.06117793    6.0
    -25.06117793    6.0
    -25.06117793    6.0
    -25.06117793    6.0
    -25.06117793    6.0
    -25.00446772   12.0
    -25.00446772   12.0
    -25.00446772   12.0
    -25.00446772   12.0
    -25.00446772   12.0
    -25.00446772   12.0
    -25.00446772   12.0
    -25.00362875   -0.0
    -25.00021930    2.0
    -25.00021930    2.0
    -25.00021930    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       49 conf       49 CSFs
 N elec internal:    18369 conf    44681 CSFs
 N-1 el internal:     4797 conf    14053 CSFs
 N-2 el internal:      543 conf     1681 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:     196 (  93 103 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  49

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.11727433
     2       -25.05451507
     3       -25.05451507
     4       -25.05451507
     5       -25.05451507
     6       -25.05451507
     7       -25.00000650
     8       -25.00000650
     9       -25.00000650
    10       -25.00000650
    11       -25.00000650
    12       -24.99852047

 Number of blocks in overlap matrix:   249   Smallest eigenvalue:  0.31D+00
 Number of N-2 electron functions:     297
 Number of N-1 electron functions:   14053

 Number of internal configurations:                22428
 Number of singly external configurations:       1377199
 Number of doubly external configurations:       2858315
 Total number of contracted configurations:      4257942
 Total number of uncontracted configurations:   17546986

 Diagonal Coupling coefficients finished.               Storage:13922065 words, CPU-Time:      2.11 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2058872 words, CPU-time:      0.35 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.11727433     0.00000000    -0.24197317  0.37D-01  0.44D-01     5.29
    1     2     2     1.00000000     0.00000000   -25.05451507     0.00000000    -0.26239003  0.51D-01  0.52D-01     5.29
    1     3     3     1.00000000     0.00000000   -25.05451507     0.00000000    -0.26265417  0.51D-01  0.52D-01     5.29
    1     4     4     1.00000000     0.00000000   -25.05451507    -0.00000000    -0.26233695  0.51D-01  0.52D-01     5.29
    1     5     5     1.00000000     0.00000000   -25.05451507    -0.00000000    -0.26246136  0.51D-01  0.52D-01     5.29
    1     6     6     1.00000000     0.00000000   -25.05451507     0.00000000    -0.26231445  0.51D-01  0.52D-01     5.29
    1     7     7     1.00000000     0.00000000   -25.00000650     0.00000000    -0.27032499  0.45D-01  0.62D-01     5.29
    1     8     8     1.00000000     0.00000000   -25.00000650    -0.00000000    -0.27136589  0.46D-01  0.62D-01     5.29
    1     9     9     1.00000000     0.00000000   -25.00000650     0.00000000    -0.27131753  0.46D-01  0.62D-01     5.29
    1    10    10     1.00000000     0.00000000   -25.00000650     0.00000000    -0.27072117  0.45D-01  0.62D-01     5.29
    1    11    11     1.00000000     0.00000000   -25.00000650    -0.00000000    -0.27135037  0.46D-01  0.62D-01     5.29
    1    12    12     1.00000000     0.00000000   -24.99852047     0.00000000    -0.23914367  0.37D-01  0.45D-01     5.29
    2     1     1     1.06926118    -0.24677862   -25.36405295    -0.24677862    -0.00600489  0.16D-02  0.75D-03    56.49
    2     2     2     1.08241511    -0.25183325   -25.30634832    -0.25183325    -0.00770806  0.28D-02  0.12D-02    56.49
    2     3     3     1.08245928    -0.25181707   -25.30633215    -0.25181707    -0.00773213  0.28D-02  0.12D-02    56.49
    2     4     4     1.08248259    -0.25179219   -25.30630726    -0.25179219    -0.00776612  0.29D-02  0.12D-02    56.49
    2     5     5     1.08250580    -0.25179198   -25.30630705    -0.25179198    -0.00776639  0.29D-02  0.12D-02    56.49
    2     6     6     1.08252111    -0.25176458   -25.30627965    -0.25176458    -0.00779455  0.29D-02  0.12D-02    56.49
    2     7     7     1.08333169    -0.25252008   -25.25252659    -0.25252008    -0.00797089  0.31D-02  0.16D-02    56.49
    2     8     8     1.08343587    -0.25240751   -25.25241402    -0.25240751    -0.00812546  0.33D-02  0.17D-02    56.49
    2     9     9     1.08352443    -0.25228219   -25.25228869    -0.25228219    -0.00829766  0.35D-02  0.17D-02    56.49
    2    10    10     1.08353175    -0.25227599   -25.25228250    -0.25227599    -0.00830498  0.35D-02  0.17D-02    56.49
    2    11    11     1.08351327    -0.25227330   -25.25227980    -0.25227330    -0.00830845  0.35D-02  0.17D-02    56.49
    2    12    12     1.07080033    -0.24418906   -25.24270953    -0.24418906    -0.00597974  0.18D-02  0.91D-03    56.49
    3     1     1     1.07258678    -0.25303347   -25.37030780    -0.00625485    -0.00026081  0.57D-04  0.38D-04   107.43
    3     2     2     1.08426633    -0.25940956   -25.31392464    -0.00757631    -0.00043595  0.14D-03  0.77D-04   107.43
    3     3     3     1.08428093    -0.25940823   -25.31392331    -0.00759116    -0.00043790  0.14D-03  0.78D-04   107.43
    3     4     4     1.08428401    -0.25940571   -25.31392078    -0.00761352    -0.00044027  0.14D-03  0.78D-04   107.43
    3     5     5     1.08427963    -0.25940463   -25.31391971    -0.00761266    -0.00044115  0.15D-03  0.78D-04   107.43
    3     6     6     1.08428099    -0.25940438   -25.31391945    -0.00763980    -0.00044141  0.15D-03  0.78D-04   107.43
    3     7     7     1.08321130    -0.26019947   -25.26020598    -0.00767939    -0.00042376  0.91D-04  0.11D-03   107.43
    3     8     8     1.08323542    -0.26019410   -25.26020060    -0.00778658    -0.00043223  0.91D-04  0.12D-03   107.43
    3     9     9     1.08325474    -0.26019096   -25.26019747    -0.00790878    -0.00043827  0.91D-04  0.12D-03   107.43
    3    10    10     1.08325373    -0.26019084   -25.26019734    -0.00791485    -0.00043823  0.91D-04  0.12D-03   107.43
    3    11    11     1.08324502    -0.26018990   -25.26019640    -0.00791660    -0.00043887  0.91D-04  0.12D-03   107.43
    3    12    12     1.07351185    -0.25030441   -25.24882488    -0.00611535    -0.00031709  0.47D-04  0.91D-04   107.43
    4     1     1     1.07377060    -0.25330990   -25.37058424    -0.00027643    -0.00001459  0.74D-05  0.18D-05   157.14
    4     2     2     1.08685879    -0.25988556   -25.31440063    -0.00047599    -0.00004230  0.29D-04  0.58D-05   157.14
    4     3     3     1.08685922    -0.25988555   -25.31440062    -0.00047732    -0.00004234  0.29D-04  0.57D-05   157.14
    4     4     4     1.08685329    -0.25988521   -25.31440029    -0.00047950    -0.00004255  0.29D-04  0.57D-05   157.14
    4     5     5     1.08685347    -0.25988506   -25.31440014    -0.00048043    -0.00004266  0.29D-04  0.58D-05   157.14
    4     6     6     1.08684982    -0.25988490   -25.31439997    -0.00048052    -0.00004277  0.29D-04  0.58D-05   157.14
    4     7     7     1.08491100    -0.26065365   -25.26066015    -0.00045418    -0.00003306  0.20D-04  0.56D-05   157.14
    4     8     8     1.08491168    -0.26065362   -25.26066012    -0.00045952    -0.00003306  0.20D-04  0.56D-05   157.14
    4     9     9     1.08490831    -0.26065350   -25.26066000    -0.00046253    -0.00003314  0.20D-04  0.56D-05   157.14
    4    10    10     1.08491427    -0.26065254   -25.26065904    -0.00046170    -0.00003351  0.20D-04  0.57D-05   157.14
    4    11    11     1.08491352    -0.26065132   -25.26065782    -0.00046142    -0.00003395  0.20D-04  0.58D-05   157.14
    4    12    12     1.07473901    -0.25061511   -25.24913558    -0.00031070    -0.00002550  0.84D-05  0.70D-05   157.14
    5     1     1     1.07409792    -0.25332616   -25.37060049    -0.00001625    -0.00000126  0.61D-06  0.18D-06   207.20
    5     2     2     1.08810270    -0.25993968   -25.31445475    -0.00005412    -0.00000660  0.31D-05  0.10D-05   207.20
    5     3     3     1.08810163    -0.25993967   -25.31445474    -0.00005412    -0.00000660  0.31D-05  0.10D-05   207.20
    5     4     4     1.08809995    -0.25993961   -25.31445468    -0.00005439    -0.00000664  0.32D-05  0.10D-05   207.20
    5     5     5     1.08809901    -0.25993958   -25.31445465    -0.00005452    -0.00000666  0.32D-05  0.10D-05   207.20
    5     6     6     1.08809948    -0.25993956   -25.31445464    -0.00005467    -0.00000668  0.32D-05  0.10D-05   207.20
    5     7     7     1.08553112    -0.26069270   -25.26069921    -0.00003906    -0.00000393  0.21D-05  0.69D-06   207.20
    5     8     8     1.08553136    -0.26069269   -25.26069919    -0.00003907    -0.00000394  0.21D-05  0.69D-06   207.20
    5     9     9     1.08553053    -0.26069268   -25.26069918    -0.00003918    -0.00000395  0.21D-05  0.69D-06   207.20
    5    10    10     1.08553193    -0.26069244   -25.26069894    -0.00003990    -0.00000412  0.21D-05  0.72D-06   207.20
    5    11    11     1.08553199    -0.26069212   -25.26069862    -0.00004080    -0.00000435  0.22D-05  0.77D-06   207.20
    5    12    12     1.07503045    -0.25063953   -25.24916000    -0.00002442    -0.00000287  0.13D-05  0.70D-06   207.20
    6     1     1     1.07415478    -0.25332761   -25.37060195    -0.00000145    -0.00000012  0.37D-07  0.20D-07   255.79
    6     2     2     1.08837829    -0.25994772   -25.31446279    -0.00000804    -0.00000078  0.32D-06  0.12D-06   255.79
    6     3     3     1.08837817    -0.25994772   -25.31446279    -0.00000805    -0.00000078  0.32D-06  0.12D-06   255.79
    6     4     4     1.08837831    -0.25994771   -25.31446278    -0.00000810    -0.00000079  0.33D-06  0.12D-06   255.79
    6     5     5     1.08837781    -0.25994770   -25.31446278    -0.00000812    -0.00000079  0.33D-06  0.12D-06   255.79
    6     6     6     1.08837766    -0.25994770   -25.31446278    -0.00000814    -0.00000079  0.33D-06  0.12D-06   255.79
    6     7     7     1.08560558    -0.26069735   -25.26070386    -0.00000465    -0.00000043  0.93D-07  0.11D-06   255.79
    6     8     8     1.08560507    -0.26069735   -25.26070386    -0.00000467    -0.00000044  0.94D-07  0.11D-06   255.79
    6     9     9     1.08560548    -0.26069735   -25.26070386    -0.00000468    -0.00000044  0.94D-07  0.11D-06   255.79
    6    10    10     1.08560435    -0.26069733   -25.26070383    -0.00000489    -0.00000046  0.98D-07  0.12D-06   255.79
    6    11    11     1.08560253    -0.26069729   -25.26070380    -0.00000517    -0.00000048  0.10D-06  0.12D-06   255.79
    6    12    12     1.07509832    -0.25064267   -25.24916314    -0.00000314    -0.00000038  0.77D-07  0.11D-06   255.79
    7     1     1     1.07416967    -0.25332774   -25.37060208    -0.00000013    -0.00000001  0.40D-08  0.13D-08   304.85
    7     2     2     1.08845929    -0.25994854   -25.31446361    -0.00000082    -0.00000009  0.69D-07  0.12D-07   304.85
    7     3     3     1.08845924    -0.25994854   -25.31446361    -0.00000082    -0.00000009  0.70D-07  0.12D-07   304.85
    7     4     4     1.08845901    -0.25994854   -25.31446361    -0.00000083    -0.00000009  0.70D-07  0.13D-07   304.85
    7     5     5     1.08845891    -0.25994854   -25.31446361    -0.00000083    -0.00000009  0.71D-07  0.13D-07   304.85
    7     6     6     1.08845871    -0.25994854   -25.31446361    -0.00000083    -0.00000009  0.71D-07  0.13D-07   304.85
    7     7     7     1.08561791    -0.26069781   -25.26070431    -0.00000046    -0.00000005  0.31D-07  0.11D-07   304.85
    7     8     8     1.08561795    -0.26069781   -25.26070431    -0.00000046    -0.00000005  0.32D-07  0.11D-07   304.85
    7     9     9     1.08561780    -0.26069781   -25.26070431    -0.00000046    -0.00000005  0.32D-07  0.11D-07   304.85
    7    10    10     1.08561749    -0.26069781   -25.26070431    -0.00000048    -0.00000005  0.33D-07  0.12D-07   304.85
    7    11    11     1.08561688    -0.26069780   -25.26070431    -0.00000051    -0.00000005  0.35D-07  0.13D-07   304.85
    7    12    12     1.07511471    -0.25064310   -25.24916357    -0.00000043    -0.00000005  0.24D-07  0.11D-07   304.85
    8     1     1     1.07417083    -0.25332774   -25.37060208    -0.00000000    -0.00000001  0.31D-08  0.11D-08   350.43
    8     2     2     1.08849578    -0.25994864   -25.31446371    -0.00000010    -0.00000002  0.89D-08  0.29D-08   350.43
    8     3     3     1.08849556    -0.25994864   -25.31446371    -0.00000010    -0.00000002  0.92D-08  0.29D-08   350.43
    8     4     4     1.08849553    -0.25994864   -25.31446371    -0.00000010    -0.00000002  0.92D-08  0.29D-08   350.43
    8     5     5     1.08849579    -0.25994864   -25.31446371    -0.00000010    -0.00000002  0.88D-08  0.30D-08   350.43
    8     6     6     1.08849567    -0.25994864   -25.31446371    -0.00000010    -0.00000002  0.91D-08  0.29D-08   350.43
    8     7     7     1.08562455    -0.26069786   -25.26070437    -0.00000005    -0.00000001  0.33D-08  0.23D-08   350.43
    8     8     8     1.08562451    -0.26069786   -25.26070437    -0.00000005    -0.00000001  0.34D-08  0.23D-08   350.43
    8     9     9     1.08562456    -0.26069786   -25.26070437    -0.00000005    -0.00000001  0.34D-08  0.23D-08   350.43
    8    10    10     1.08562426    -0.26069786   -25.26070437    -0.00000005    -0.00000001  0.36D-08  0.25D-08   350.43
    8    11    11     1.08562389    -0.26069786   -25.26070436    -0.00000006    -0.00000001  0.39D-08  0.27D-08   350.43
    8    12    12     1.07512123    -0.25064316   -25.24916363    -0.00000006    -0.00000000  0.10D-08  0.91D-09   350.43
    9     1     1     1.07417082    -0.25332774   -25.37060208    -0.00000000    -0.00000001  0.31D-08  0.11D-08   373.99
    9     2     2     1.08851869    -0.25994866   -25.31446373    -0.00000002    -0.00000000  0.28D-09  0.27D-09   373.99
    9     3     3     1.08851227    -0.25994866   -25.31446373    -0.00000002    -0.00000000  0.11D-08  0.53D-09   373.99
    9     4     4     1.08851231    -0.25994866   -25.31446373    -0.00000002    -0.00000000  0.11D-08  0.52D-09   373.99
    9     5     5     1.08851231    -0.25994866   -25.31446373    -0.00000002    -0.00000000  0.11D-08  0.53D-09   373.99
    9     6     6     1.08851231    -0.25994866   -25.31446373    -0.00000002    -0.00000000  0.11D-08  0.51D-09   373.99
    9     7     7     1.08562425    -0.26069786   -25.26070437    -0.00000000    -0.00000001  0.32D-08  0.25D-08   373.99
    9     8     8     1.08562417    -0.26069786   -25.26070437    -0.00000000    -0.00000001  0.31D-08  0.25D-08   373.99
    9     9     9     1.08562420    -0.26069786   -25.26070437    -0.00000000    -0.00000001  0.32D-08  0.25D-08   373.99
    9    10    10     1.08562399    -0.26069786   -25.26070437    -0.00000000    -0.00000001  0.34D-08  0.27D-08   373.99
    9    11    11     1.08562363    -0.26069786   -25.26070436    -0.00000000    -0.00000001  0.37D-08  0.29D-08   373.99
    9    12    12     1.07512122    -0.25064316   -25.24916363    -0.00000000    -0.00000000  0.10D-08  0.91D-09   373.99


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.8%
 S   4.4%  20.1%
 P   0.8%  13.2%  10.5%

 Initialization:   0.8%
 Other:           44.6%

 Total CPU:      374.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000000           0.9189336   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                            -0.0000000  -0.0000000   0.0000000   0.0777939
 2/\00000222000000          -0.0000000  -0.0000000   0.8844283  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                             0.1334176   0.0000000   0.0000000  -0.0000000
 2/0\0000222000000          -0.0000000   0.0000000   0.0000000   0.0000000   0.8844283  -0.0000000  -0.1334176   0.0000000
                             0.0000000  -0.0000000  -0.0000000   0.0000000
 2/0000\0222000000          -0.0000000   0.8844277   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.1334175
                             0.0000000   0.0000000  -0.0000000  -0.0000000
 2/000\00222000000           0.0000000  -0.0000000  -0.0000000  -0.0118083   0.0000000   0.8843495  -0.0000000  -0.0000000
                             0.0000000   0.0055268   0.1333021  -0.0000000
 2/00\000222000000           0.0000000   0.0000000   0.0000000   0.8843494  -0.0000000   0.0118083  -0.0000000   0.0000000
                             0.0000000  -0.1333026   0.0055268  -0.0000000
 2/00000\222000000          -0.1015291   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                            -0.0000000   0.0000001  -0.0000001   0.8150244
 200/0\00222000000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.1967102   0.0000000   0.6369510  -0.0000000
                            -0.0000000  -0.0000000   0.0000000   0.0000000
 2000/\00222000000           0.0000001  -0.0000000  -0.0000000   0.1966928   0.0000000   0.0026264   0.0000000   0.0000000
                             0.0000000   0.6364104  -0.0263856   0.0000002
 200/00\0222000000           0.0000000  -0.0000000  -0.1703560  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                             0.5516195  -0.0000000  -0.0000000   0.0000000
 20/\0000222000000          -0.0000000  -0.1703539   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.5516187
                            -0.0000000  -0.0000000   0.0000000  -0.0000000
 20/000\0222000000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.1703560  -0.0000000  -0.5516176   0.0000000
                             0.0000000   0.0000000  -0.0000000  -0.0000000
 2000/0\0222000000          -0.0000000  -0.1703540   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.5516161
                            -0.0000000  -0.0000000   0.0000000  -0.0000000
 20/0\000222000000          -0.0000000  -0.0000000   0.1703560  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                            -0.5516150   0.0000000   0.0000000  -0.0000000
 20020000222000000          -0.0490721  -0.0000000  -0.0000000  -0.0018571   0.0000000   0.1390826   0.0000000   0.0000000
                            -0.0000000  -0.0186573  -0.4500092   0.1551016
 20000200222000000          -0.0490731  -0.0000000   0.0000000   0.0018571  -0.0000000  -0.1390828   0.0000000  -0.0000000
                            -0.0000000   0.0186577   0.4500037   0.1550981
 20002000222000000          -0.0490731   0.0000000   0.0000000  -0.0018571  -0.0000000   0.1390827   0.0000000   0.0000000
                            -0.0000000  -0.0186579  -0.4500033   0.1550981
 200000002220/\000          -0.0000000   0.0000000  -0.2435071   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                            -0.4149903  -0.0000000   0.0000000  -0.0000000
 20000000222/0\000           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.2435071   0.0000000   0.4149901  -0.0000000
                             0.0000000  -0.0000000   0.0000000  -0.0000000
 20000000222/\0000           0.0000000  -0.2435014  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.4149895
                            -0.0000000  -0.0000000  -0.0000000   0.0000000
 20200000222000000          -0.0490722   0.0000000  -0.0000000   0.1213776  -0.0000000  -0.0679330   0.0000000  -0.0000000
                             0.0000000   0.3990406   0.2088465   0.1551016
 20000020222000000          -0.0490721  -0.0000000  -0.0000000  -0.1195204  -0.0000000  -0.0711496  -0.0000000  -0.0000000
                             0.0000000  -0.3803837   0.2411629   0.1551018
 20000000222020000          -0.1263611  -0.0000000  -0.0000000   0.0026545   0.0000000  -0.1988049   0.0000000  -0.0000000
                            -0.0000000  -0.0140364  -0.3385489  -0.1577472
 20000/\0222000000           0.0000000  -0.0983541  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.3184739
                             0.0000000  -0.0000000  -0.0000000   0.0000000
 20/00\00222000000           0.0000000   0.0000000  -0.0983552   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                             0.3184736  -0.0000000   0.0000000  -0.0000000
 20000000222200000          -0.1263610  -0.0000000  -0.0000000  -0.1734974   0.0000000   0.0971035   0.0000000  -0.0000000
                             0.0000000   0.3002094   0.1571185  -0.1577472
 20000000222002000          -0.1263611  -0.0000000   0.0000000   0.1708429   0.0000000   0.1017014  -0.0000000  -0.0000000
                             0.0000000  -0.2861730   0.1814305  -0.1577471
 20000002222000000          -0.0098366  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                             0.0000000  -0.0000000  -0.0000000  -0.1740979
 200000/\222000000          -0.0000000   0.0124805   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.1212572
                            -0.0000000  -0.0000000   0.0000000  -0.0000000
 200/000\222000000          -0.0000000   0.0000000   0.0000000   0.0000000   0.0124795  -0.0000000  -0.1212571   0.0000000
                            -0.0000000   0.0000000   0.0000000  -0.0000000
 20/0000\222000000           0.0000000  -0.0000000   0.0124795  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                             0.1212560  -0.0000000  -0.0000000   0.0000000
 20000/0\222000000          -0.0000001  -0.0000000  -0.0000000  -0.0001666   0.0000000   0.0124784  -0.0000000  -0.0000000
                             0.0000000   0.0050238   0.1211543  -0.0000003
 2000/00\222000000           0.0000000   0.0000000   0.0000000   0.0124784  -0.0000000   0.0001666  -0.0000000  -0.0000000
                             0.0000000  -0.1211541   0.0050226   0.0000003
 20000000222/00\00           0.0367730   0.0000000   0.0000000   0.0256646   0.0000000  -0.0143641  -0.0000000   0.0000000
                            -0.0000000  -0.0047062  -0.0024629  -0.0861734
 200000002220/00\0           0.0367730   0.0000000   0.0000000  -0.0003927   0.0000000   0.0294083  -0.0000000   0.0000000
                             0.0000000   0.0002200   0.0053070  -0.0861734
 2000000022200/00\           0.0367730   0.0000000   0.0000000  -0.0252719   0.0000000  -0.0150442  -0.0000000   0.0000000
                            -0.0000000   0.0044861  -0.0028440  -0.0861733

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956669   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.057855
 2           0.000000   -0.000000    0.951350    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.061833    0.000000
 3           0.000000    0.951353    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.061833   -0.000000
             0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.950093    0.000000   -0.048946   -0.016283   -0.000000   -0.000000    0.059650
            -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.951353    0.000000   -0.000000    0.061833    0.000000    0.000000
            -0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.048946   -0.000000    0.950093   -0.059650    0.000000   -0.000000   -0.016283
             0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.061167   -0.000000   -0.000000    0.952873    0.000000    0.000000
             0.000000    0.000000
 8           0.000000   -0.000000    0.061167    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.952873    0.000000
 9          -0.000000    0.061167    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.952873    0.000000
            -0.000000   -0.000000
 10          0.000000    0.000000    0.000000   -0.060974   -0.000000    0.004861   -0.225016   -0.000000   -0.000000    0.925924
            -0.000000    0.000000
 11         -0.000000    0.000000   -0.000000    0.004861   -0.000000    0.060974    0.925925    0.000000   -0.000000    0.225016
             0.000000   -0.000000
 12          0.060342   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.955310

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958416    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.001283
 2           0.000000    0.953358   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000381   -0.000000    0.000000
            -0.000000    0.000000
 3           0.000000   -0.000000    0.953361    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000381    0.000000
             0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.953361    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000381
            -0.000011    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.953361    0.000000    0.000381   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.953361   -0.000000   -0.000000   -0.000000   -0.000011
            -0.000381   -0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000381   -0.000000    0.954835   -0.000000    0.000000   -0.000000
             0.000000   -0.000000
 8           0.000000   -0.000381   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.954835    0.000000    0.000000
             0.000000    0.000000
 9          -0.000000   -0.000000   -0.000381    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.954835    0.000000
            -0.000000    0.000000
 10          0.000000    0.000000    0.000000    0.000381   -0.000000   -0.000011   -0.000000    0.000000    0.000000    0.954835
            -0.000000    0.000000
 11         -0.000000   -0.000000    0.000000   -0.000011   -0.000000   -0.000381    0.000000    0.000000   -0.000000   -0.000000
             0.954835   -0.000000
 12          0.001283    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.957213


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95666876 (fixed)   0.95866128 (relaxed)   0.95841568 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01348850   -0.02257639   -0.17997689
 Singles      0.03305790   -0.07391543   -0.07558969
 Pairs        0.04211338    0.01310427    0.00223883
 Total        1.08865978   -0.08338755   -0.25332774
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.11682223
 Nuclear energy                         0.00000000
 Kinetic energy                         6.95234856
 One electron energy                  -41.22867175
 Two electron energy                   15.85806967
 Virial quotient                       -3.64921319
 Correlation energy                    -0.25377984
 !MRCI STATE 1.1 Energy               -25.370602078131

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.39310214 (Davidson, fixed reference)
 Cluster corrected energies           -25.39296060 (Davidson, relaxed reference)
 Cluster corrected energies           -25.39310214 (Davidson, rotated reference)

 Cluster corrected energies           -25.38958686 (Pople, fixed reference)
 Cluster corrected energies           -25.38946111 (Pople, relaxed reference)
 Cluster corrected energies           -25.38958686 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95135034 (fixed)   0.95431486 (relaxed)   0.95335754 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01077035   -0.01622836   -0.16944827
 Singles      0.04217895   -0.07631422   -0.07932685
 Pairs        0.04729312   -0.00000000   -0.01117354
 Total        1.10024242   -0.09254258   -0.25994866
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05428859
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13090294
 One electron energy                  -41.48019005
 Two electron energy                   16.16572632
 Virial quotient                       -3.54996611
 Correlation energy                    -0.26017514
 !MRCI STATE 2.1 Energy               -25.314463732892

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34054432 (Davidson, fixed reference)
 Cluster corrected energies           -25.33997030 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34054432 (Davidson, rotated reference)

 Cluster corrected energies           -25.33662315 (Pople, fixed reference)
 Cluster corrected energies           -25.33610676 (Pople, relaxed reference)
 Cluster corrected energies           -25.33662315 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95135335 (fixed)   0.95431766 (relaxed)   0.95336057 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01076991   -0.01622835   -0.16944982
 Singles      0.04217232   -0.07631358   -0.07932595
 Pairs        0.04729321   -0.00000000   -0.01117288
 Total        1.10023544   -0.09254193   -0.25994866
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05428859
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13088832
 One electron energy                  -41.48014390
 Two electron energy                   16.16568017
 Virial quotient                       -3.54997338
 Correlation energy                    -0.26017514
 !MRCI STATE 3.1 Energy               -25.314463731020

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34054250 (Davidson, fixed reference)
 Cluster corrected energies           -25.33996861 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34054250 (Davidson, rotated reference)

 Cluster corrected energies           -25.33662151 (Pople, fixed reference)
 Cluster corrected energies           -25.33610525 (Pople, relaxed reference)
 Cluster corrected energies           -25.33662151 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95009342 (fixed)   0.95431765 (relaxed)   0.95336055 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01076991   -0.01622836   -0.16944981
 Singles      0.04217237   -0.07631359   -0.07932596
 Pairs        0.04729321    0.00000000   -0.01117288
 Total        1.10023549   -0.09254194   -0.25994866
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05428859
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13088829
 One electron energy                  -41.48014418
 Two electron energy                   16.16568045
 Virial quotient                       -3.54997340
 Correlation energy                    -0.26017514
 !MRCI STATE 4.1 Energy               -25.314463730858

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34054251 (Davidson, fixed reference)
 Cluster corrected energies           -25.33996862 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34054251 (Davidson, rotated reference)

 Cluster corrected energies           -25.33662152 (Pople, fixed reference)
 Cluster corrected energies           -25.33610526 (Pople, relaxed reference)
 Cluster corrected energies           -25.33662152 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95135334 (fixed)   0.95431765 (relaxed)   0.95336055 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01076991   -0.01622835   -0.16944981
 Singles      0.04217237   -0.07631359   -0.07932596
 Pairs        0.04729321    0.00000000   -0.01117289
 Total        1.10023549   -0.09254194   -0.25994866
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05428859
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13088837
 One electron energy                  -41.48014413
 Two electron energy                   16.16568040
 Virial quotient                       -3.54997336
 Correlation energy                    -0.26017514
 !MRCI STATE 5.1 Energy               -25.314463730559

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34054251 (Davidson, fixed reference)
 Cluster corrected energies           -25.33996862 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34054251 (Davidson, rotated reference)

 Cluster corrected energies           -25.33662152 (Pople, fixed reference)
 Cluster corrected energies           -25.33610526 (Pople, relaxed reference)
 Cluster corrected energies           -25.33662152 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95009341 (fixed)   0.95431764 (relaxed)   0.95336054 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01076992   -0.01622836   -0.16944980
 Singles      0.04217238   -0.07631359   -0.07932597
 Pairs        0.04729320   -0.00000000   -0.01117288
 Total        1.10023550   -0.09254195   -0.25994866
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05428859
 Nuclear energy                         0.00000000
 Kinetic energy                         7.13088825
 One electron energy                  -41.48014418
 Two electron energy                   16.16568045
 Virial quotient                       -3.54997342
 Correlation energy                    -0.26017514
 !MRCI STATE 6.1 Energy               -25.314463730522

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34054252 (Davidson, fixed reference)
 Cluster corrected energies           -25.33996863 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34054252 (Davidson, rotated reference)

 Cluster corrected energies           -25.33662153 (Pople, fixed reference)
 Cluster corrected energies           -25.33610526 (Pople, relaxed reference)
 Cluster corrected energies           -25.33662153 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95287343 (fixed)   0.95642999 (relaxed)   0.95483458 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01033218   -0.01341049   -0.17496565
 Singles      0.03373463   -0.07148192   -0.07318993
 Pairs        0.05277430   -0.00000000   -0.01254228
 Total        1.09684111   -0.08489241   -0.26069786
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00023298
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22048528
 One electron energy                  -41.50735076
 Two electron energy                   16.24664639
 Virial quotient                       -3.49847737
 Correlation energy                    -0.26047138
 !MRCI STATE 7.1 Energy               -25.260704365984

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28592870 (Davidson, fixed reference)
 Cluster corrected energies           -25.28497637 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28592870 (Davidson, rotated reference)

 Cluster corrected energies           -25.28209258 (Pople, fixed reference)
 Cluster corrected energies           -25.28123996 (Pople, relaxed reference)
 Cluster corrected energies           -25.28209258 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95287345 (fixed)   0.95643003 (relaxed)   0.95483459 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01033225   -0.01341048   -0.17496566
 Singles      0.03373452   -0.07148193   -0.07318990
 Pairs        0.05277433    0.00000000   -0.01254230
 Total        1.09684110   -0.08489240   -0.26069786
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00023298
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22048540
 One electron energy                  -41.50735072
 Two electron energy                   16.24664635
 Virial quotient                       -3.49847731
 Correlation energy                    -0.26047138
 !MRCI STATE 8.1 Energy               -25.260704365959

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28592870 (Davidson, fixed reference)
 Cluster corrected energies           -25.28497634 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28592870 (Davidson, rotated reference)

 Cluster corrected energies           -25.28209257 (Pople, fixed reference)
 Cluster corrected energies           -25.28123994 (Pople, relaxed reference)
 Cluster corrected energies           -25.28209257 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95287344 (fixed)   0.95643001 (relaxed)   0.95483459 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01033220   -0.01341049   -0.17496566
 Singles      0.03373458   -0.07148192   -0.07318992
 Pairs        0.05277431    0.00000000   -0.01254228
 Total        1.09684109   -0.08489241   -0.26069786
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00023298
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22048522
 One electron energy                  -41.50735070
 Two electron energy                   16.24664633
 Virial quotient                       -3.49847740
 Correlation energy                    -0.26047138
 !MRCI STATE 9.1 Energy               -25.260704365941

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28592870 (Davidson, fixed reference)
 Cluster corrected energies           -25.28497636 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28592870 (Davidson, rotated reference)

 Cluster corrected energies           -25.28209257 (Pople, fixed reference)
 Cluster corrected energies           -25.28123995 (Pople, relaxed reference)
 Cluster corrected energies           -25.28209257 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.92592440 (fixed)   0.95643011 (relaxed)   0.95483478 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01033199   -0.01341048   -0.17496563
 Singles      0.03373434   -0.07148198   -0.07318998
 Pairs        0.05277431   -0.00000000   -0.01254226
 Total        1.09684065   -0.08489246   -0.26069786
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00023298
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22048170
 One electron energy                  -41.50733843
 Two electron energy                   16.24663407
 Virial quotient                       -3.49847911
 Correlation energy                    -0.26047138
 !MRCI STATE 10.1 Energy              -25.260704365109

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28592858 (Davidson, fixed reference)
 Cluster corrected energies           -25.28497630 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28592858 (Davidson, rotated reference)

 Cluster corrected energies           -25.28209247 (Pople, fixed reference)
 Cluster corrected energies           -25.28123989 (Pople, relaxed reference)
 Cluster corrected energies           -25.28209247 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.92592463 (fixed)   0.95643027 (relaxed)   0.95483502 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01033184   -0.01341047   -0.17496563
 Singles      0.03373391   -0.07148202   -0.07319000
 Pairs        0.05277437   -0.00000001   -0.01254223
 Total        1.09684011   -0.08489249   -0.26069786
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00023298
 Nuclear energy                         0.00000000
 Kinetic energy                         7.22047736
 One electron energy                  -41.50732353
 Two electron energy                   16.24661917
 Virial quotient                       -3.49848121
 Correlation energy                    -0.26047138
 !MRCI STATE 11.1 Energy              -25.260704364200

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28592844 (Davidson, fixed reference)
 Cluster corrected energies           -25.28497620 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28592844 (Davidson, rotated reference)

 Cluster corrected energies           -25.28209234 (Pople, fixed reference)
 Cluster corrected energies           -25.28123981 (Pople, relaxed reference)
 Cluster corrected energies           -25.28209234 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95531013 (fixed)   0.95874162 (relaxed)   0.95721311 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01513848   -0.02076313   -0.02299997
 Singles      0.03230882   -0.07142409   -0.07286255
 Pairs        0.04394963   -0.15791132   -0.15478064
 Total        1.09139693   -0.25009855   -0.25064316
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99897257
 Nuclear energy                         0.00000000
 Kinetic energy                         6.94098694
 One electron energy                  -40.43731131
 Two electron energy                   15.18814768
 Virial quotient                       -3.63769070
 Correlation energy                    -0.25019106
 !MRCI STATE 12.1 Energy              -25.249163625048

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27203032 (Davidson, fixed reference)
 Cluster corrected energies           -25.27116035 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27203032 (Davidson, rotated reference)

 Cluster corrected energies           -25.26848949 (Pople, fixed reference)
 Cluster corrected energies           -25.26771546 (Pople, relaxed reference)
 Cluster corrected energies           -25.26848949 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       70.70       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      399.76       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       425.25    415.58      5.60      0.44      3.24
 REAL TIME  *       460.32 SEC
 DISK USED  *       470.53 MB (local),       11.48 GB (total)
 SF USED    *         3.97 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -25.39310214  AU                              
 SETTING HLSDIAG(2)     =       -25.34054432  AU                              
 SETTING HLSDIAG(3)     =       -25.34054250  AU                              
 SETTING HLSDIAG(4)     =       -25.34054251  AU                              
 SETTING HLSDIAG(5)     =       -25.34054251  AU                              
 SETTING HLSDIAG(6)     =       -25.34054252  AU                              
 SETTING HLSDIAG(7)     =       -25.28592870  AU                              
 SETTING HLSDIAG(8)     =       -25.28592870  AU                              
 SETTING HLSDIAG(9)     =       -25.28592870  AU                              
 SETTING HLSDIAG(10)    =       -25.28592858  AU                              
 SETTING HLSDIAG(11)    =       -25.28592844  AU                              
 SETTING HLSDIAG(12)    =       -25.27203032  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       36 conf       36 CSFs
 N elec internal:    17792 conf    70416 CSFs
 N-1 el internal:     3957 conf    21461 CSFs
 N-2 el internal:      413 conf     2533 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:     196 (  93 103 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  36

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.06117793
     2       -25.06117793
     3       -25.06117793
     4       -25.06117793
     5       -25.06117793
     6       -25.00446772
     7       -25.00446772
     8       -25.00446772
     9       -25.00446772
    10       -25.00446772
    11       -25.00446772
    12       -25.00446772
    13       -25.00362875
    14       -25.00021930
    15       -25.00021930
    16       -25.00021930

 Number of blocks in overlap matrix:   321   Smallest eigenvalue:  0.69D+00
 Number of N-2 electron functions:     361
 Number of N-1 electron functions:   21461

 Number of internal configurations:                35169
 Number of singly external configurations:       2103243
 Number of doubly external configurations:       3474743
 Total number of contracted configurations:      5613155
 Total number of uncontracted configurations:   26427607

 Diagonal Coupling coefficients finished.               Storage:21632631 words, CPU-Time:      5.91 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2084165 words, CPU-time:      0.42 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.06117793     0.00000000    -0.26707436  0.54D-01  0.52D-01    10.55
    1     2     2     1.00000000     0.00000000   -25.06117793    -0.00000000    -0.26706926  0.54D-01  0.52D-01    10.55
    1     3     3     1.00000000     0.00000000   -25.06117793    -0.00000000    -0.26694775  0.54D-01  0.52D-01    10.55
    1     4     4     1.00000000     0.00000000   -25.06117793    -0.00000000    -0.26706716  0.54D-01  0.52D-01    10.55
    1     5     5     1.00000000     0.00000000   -25.06117793    -0.00000000    -0.26694728  0.54D-01  0.52D-01    10.55
    1     6     6     1.00000000     0.00000000   -25.00446772    -0.00000000    -0.28293762  0.50D-01  0.66D-01    10.55
    1     7     7     1.00000000     0.00000000   -25.00446772     0.00000000    -0.28263881  0.50D-01  0.65D-01    10.55
    1     8     8     1.00000000     0.00000000   -25.00446772    -0.00000000    -0.28260147  0.50D-01  0.65D-01    10.55
    1     9     9     1.00000000     0.00000000   -25.00446772    -0.00000000    -0.28290832  0.50D-01  0.66D-01    10.55
    1    10    10     1.00000000     0.00000000   -25.00446772    -0.00000000    -0.28288609  0.50D-01  0.66D-01    10.55
    1    11    11     1.00000000     0.00000000   -25.00446772    -0.00000000    -0.28225410  0.51D-01  0.65D-01    10.55
    1    12    12     1.00000000     0.00000000   -25.00446772     0.00000000    -0.28273858  0.51D-01  0.65D-01    10.55
    1    13    13     1.00000000     0.00000000   -25.00362875     0.00000000    -0.23308548  0.37D-01  0.41D-01    10.55
    1    14    14     1.00000000     0.00000000   -25.00021930    -0.00000000    -0.26677938  0.44D-01  0.60D-01    10.55
    1    15    15     1.00000000     0.00000000   -25.00021930     0.00000000    -0.26685025  0.44D-01  0.60D-01    10.55
    1    16    16     1.00000000     0.00000000   -25.00021930    -0.00000000    -0.26684136  0.44D-01  0.60D-01    10.55
    2     1     1     1.08323413    -0.25405253   -25.31523046    -0.25405253    -0.00809978  0.30D-02  0.11D-02   106.29
    2     2     2     1.08324583    -0.25404989   -25.31522782    -0.25404989    -0.00810410  0.31D-02  0.11D-02   106.29
    2     3     3     1.08324166    -0.25403119   -25.31520912    -0.25403119    -0.00812708  0.31D-02  0.11D-02   106.29
    2     4     4     1.08324832    -0.25402987   -25.31520779    -0.25402987    -0.00812740  0.31D-02  0.11D-02   106.29
    2     5     5     1.08324723    -0.25402203   -25.31519996    -0.25402203    -0.00813521  0.31D-02  0.11D-02   106.29
    2     6     6     1.08660062    -0.25663395   -25.26110167    -0.25663395    -0.00790991  0.31D-02  0.14D-02   106.29
    2     7     7     1.08661554    -0.25657738   -25.26104509    -0.25657738    -0.00798658  0.31D-02  0.14D-02   106.29
    2     8     8     1.08662233    -0.25657087   -25.26103858    -0.25657087    -0.00799392  0.31D-02  0.14D-02   106.29
    2     9     9     1.08664210    -0.25654958   -25.26101730    -0.25654958    -0.00802525  0.31D-02  0.14D-02   106.29
    2    10    10     1.08664755    -0.25651031   -25.26097803    -0.25651031    -0.00807782  0.31D-02  0.15D-02   106.29
    2    11    11     1.08665030    -0.25650815   -25.26097587    -0.25650815    -0.00808017  0.31D-02  0.15D-02   106.29
    2    12    12     1.08665863    -0.25650733   -25.26097505    -0.25650733    -0.00807838  0.31D-02  0.15D-02   106.29
    2    13    13     1.08098195    -0.24657822   -25.25020697    -0.24657822    -0.00798413  0.33D-02  0.16D-02   106.29
    2    14    14     1.08097912    -0.24997345   -25.25019274    -0.24997345    -0.00799928  0.34D-02  0.16D-02   106.29
    2    15    15     1.08098764    -0.24997154   -25.25019084    -0.24997154    -0.00800244  0.34D-02  0.16D-02   106.29
    2    16    16     1.06982799    -0.24573261   -25.24595191    -0.24573261    -0.00514684  0.13D-02  0.65D-03   106.29
    3     1     1     1.08477713    -0.26208711   -25.32326504    -0.00803458    -0.00040719  0.14D-03  0.62D-04   202.36
    3     2     2     1.08477769    -0.26208683   -25.32326476    -0.00803694    -0.00040750  0.14D-03  0.62D-04   202.36
    3     3     3     1.08477936    -0.26208638   -25.32326431    -0.00805519    -0.00040791  0.14D-03  0.62D-04   202.36
    3     4     4     1.08477767    -0.26208594   -25.32326387    -0.00805607    -0.00040822  0.14D-03  0.62D-04   202.36
    3     5     5     1.08477773    -0.26208574   -25.32326367    -0.00806370    -0.00040846  0.14D-03  0.62D-04   202.36
    3     6     6     1.08750081    -0.26450831   -25.26897603    -0.00787436    -0.00033279  0.89D-04  0.65D-04   202.36
    3     7     7     1.08751969    -0.26450670   -25.26897442    -0.00792932    -0.00033630  0.88D-04  0.66D-04   202.36
    3     8     8     1.08750824    -0.26450578   -25.26897349    -0.00793491    -0.00033596  0.89D-04  0.66D-04   202.36
    3     9     9     1.08751108    -0.26450567   -25.26897339    -0.00795609    -0.00033609  0.89D-04  0.66D-04   202.36
    3    10    10     1.08751719    -0.26450473   -25.26897245    -0.00799442    -0.00033675  0.88D-04  0.66D-04   202.36
    3    11    11     1.08751506    -0.26450458   -25.26897230    -0.00799643    -0.00033681  0.88D-04  0.66D-04   202.36
    3    12    12     1.08751706    -0.26450389   -25.26897161    -0.00799656    -0.00033733  0.88D-04  0.66D-04   202.36
    3    13    13     1.08037820    -0.25440297   -25.25803172    -0.00782474    -0.00038052  0.68D-04  0.99D-04   202.36
    3    14    14     1.08037531    -0.25781115   -25.25803045    -0.00783771    -0.00038194  0.68D-04  0.99D-04   202.36
    3    15    15     1.08037746    -0.25781099   -25.25803029    -0.00783945    -0.00038213  0.68D-04  0.99D-04   202.36
    3    16    16     1.07417802    -0.25126314   -25.25148244    -0.00553053    -0.00019782  0.40D-04  0.28D-04   202.36
    4     1     1     1.08728784    -0.26254340   -25.32372133    -0.00045629    -0.00003685  0.30D-04  0.33D-05   297.07
    4     2     2     1.08728771    -0.26254333   -25.32372126    -0.00045650    -0.00003687  0.30D-04  0.32D-05   297.07
    4     3     3     1.08728738    -0.26254330   -25.32372123    -0.00045692    -0.00003690  0.30D-04  0.33D-05   297.07
    4     4     4     1.08728782    -0.26254309   -25.32372102    -0.00045715    -0.00003685  0.30D-04  0.32D-05   297.07
    4     5     5     1.08728739    -0.26254306   -25.32372099    -0.00045733    -0.00003682  0.30D-04  0.32D-05   297.07
    4     6     6     1.08948823    -0.26488899   -25.26935670    -0.00038068    -0.00002523  0.20D-04  0.26D-05   297.07
    4     7     7     1.08948685    -0.26488834   -25.26935606    -0.00038164    -0.00002531  0.20D-04  0.26D-05   297.07
    4     8     8     1.08948684    -0.26488834   -25.26935606    -0.00038256    -0.00002531  0.20D-04  0.26D-05   297.07
    4     9     9     1.08949181    -0.26488818   -25.26935589    -0.00038250    -0.00002522  0.20D-04  0.26D-05   297.07
    4    10    10     1.08948483    -0.26488721   -25.26935493    -0.00038248    -0.00002529  0.20D-04  0.26D-05   297.07
    4    11    11     1.08948473    -0.26488719   -25.26935491    -0.00038261    -0.00002530  0.20D-04  0.26D-05   297.07
    4    12    12     1.08948416    -0.26488713   -25.26935485    -0.00038324    -0.00002530  0.20D-04  0.26D-05   297.07
    4    13    13     1.08187750    -0.25482690   -25.25845565    -0.00042393    -0.00002993  0.20D-04  0.48D-05   297.07
    4    14    14     1.08187790    -0.25823632   -25.25845562    -0.00042517    -0.00002996  0.20D-04  0.48D-05   297.07
    4    15    15     1.08188034    -0.25823627   -25.25845557    -0.00042528    -0.00002987  0.19D-04  0.48D-05   297.07
    4    16    16     1.07548807    -0.25147487   -25.25169417    -0.00021173    -0.00000860  0.40D-05  0.97D-06   297.07
    5     1     1     1.08854890    -0.26259150   -25.32376943    -0.00004809    -0.00000497  0.22D-05  0.65D-06   391.94
    5     2     2     1.08854894    -0.26259146   -25.32376939    -0.00004813    -0.00000497  0.22D-05  0.65D-06   391.94
    5     3     3     1.08854873    -0.26259145   -25.32376938    -0.00004815    -0.00000497  0.22D-05  0.65D-06   391.94
    5     4     4     1.08854694    -0.26259112   -25.32376905    -0.00004803    -0.00000496  0.22D-05  0.64D-06   391.94
    5     5     5     1.08854739    -0.26259107   -25.32376900    -0.00004801    -0.00000495  0.22D-05  0.64D-06   391.94
    5     6     6     1.09032967    -0.26492082   -25.26938854    -0.00003184    -0.00000249  0.99D-06  0.41D-06   391.94
    5     7     7     1.09032781    -0.26492030   -25.26938801    -0.00003196    -0.00000251  0.10D-05  0.41D-06   391.94
    5     8     8     1.09032780    -0.26492029   -25.26938801    -0.00003195    -0.00000251  0.10D-05  0.41D-06   391.94
    5     9     9     1.09033115    -0.26492010   -25.26938781    -0.00003192    -0.00000246  0.96D-06  0.40D-06   391.94
    5    10    10     1.09032749    -0.26491919   -25.26938691    -0.00003198    -0.00000252  0.10D-05  0.42D-06   391.94
    5    11    11     1.09032738    -0.26491919   -25.26938691    -0.00003199    -0.00000252  0.10D-05  0.42D-06   391.94
    5    12    12     1.09032637    -0.26491908   -25.26938680    -0.00003194    -0.00000253  0.10D-05  0.42D-06   391.94
    5    13    13     1.08241644    -0.25486366   -25.25849241    -0.00003676    -0.00000371  0.15D-05  0.82D-06   391.94
    5    14    14     1.08241641    -0.25827310   -25.25849240    -0.00003678    -0.00000371  0.15D-05  0.82D-06   391.94
    5    15    15     1.08241621    -0.25827299   -25.25849229    -0.00003672    -0.00000373  0.15D-05  0.83D-06   391.94
    5    16    16     1.07578361    -0.25148418   -25.25170348    -0.00000931    -0.00000052  0.25D-06  0.57D-07   391.94
    6     1     1     1.08877632    -0.26259761   -25.32377554    -0.00000612    -0.00000049  0.23D-06  0.58D-07   485.38
    6     2     2     1.08877631    -0.26259758   -25.32377551    -0.00000612    -0.00000049  0.23D-06  0.58D-07   485.38
    6     3     3     1.08877619    -0.26259758   -25.32377551    -0.00000612    -0.00000049  0.23D-06  0.58D-07   485.38
    6     4     4     1.08877430    -0.26259723   -25.32377516    -0.00000611    -0.00000049  0.23D-06  0.57D-07   485.38
    6     5     5     1.08877428    -0.26259717   -25.32377510    -0.00000610    -0.00000049  0.23D-06  0.57D-07   485.38
    6     6     6     1.09040193    -0.26492381   -25.26939152    -0.00000298    -0.00000018  0.52D-07  0.39D-07   485.38
    6     7     7     1.09040168    -0.26492331   -25.26939103    -0.00000302    -0.00000019  0.52D-07  0.40D-07   485.38
    6     8     8     1.09040165    -0.26492331   -25.26939103    -0.00000302    -0.00000019  0.52D-07  0.40D-07   485.38
    6     9     9     1.09040072    -0.26492304   -25.26939076    -0.00000295    -0.00000018  0.51D-07  0.38D-07   485.38
    6    10    10     1.09040044    -0.26492221   -25.26938993    -0.00000302    -0.00000019  0.52D-07  0.40D-07   485.38
    6    11    11     1.09040041    -0.26492221   -25.26938993    -0.00000302    -0.00000019  0.52D-07  0.40D-07   485.38
    6    12    12     1.09040052    -0.26492211   -25.26938983    -0.00000303    -0.00000019  0.52D-07  0.41D-07   485.38
    6    13    13     1.08244713    -0.25486797   -25.25849672    -0.00000432    -0.00000035  0.76D-07  0.79D-07   485.38
    6    14    14     1.08244712    -0.25827743   -25.25849672    -0.00000432    -0.00000035  0.76D-07  0.79D-07   485.38
    6    15    15     1.08244682    -0.25827733   -25.25849663    -0.00000434    -0.00000036  0.76D-07  0.80D-07   485.38
    6    16    16     1.07584222    -0.25148477   -25.25170407    -0.00000059    -0.00000005  0.22D-07  0.54D-08   485.38
    7     1     1     1.08884760    -0.26259814   -25.32377607    -0.00000052    -0.00000005  0.41D-07  0.48D-08   578.00
    7     2     2     1.08884765    -0.26259810   -25.32377603    -0.00000052    -0.00000005  0.41D-07  0.48D-08   578.00
    7     3     3     1.08884760    -0.26259810   -25.32377603    -0.00000053    -0.00000005  0.41D-07  0.48D-08   578.00
    7     4     4     1.08884591    -0.26259775   -25.32377568    -0.00000052    -0.00000005  0.41D-07  0.48D-08   578.00
    7     5     5     1.08884579    -0.26259769   -25.32377562    -0.00000052    -0.00000005  0.41D-07  0.48D-08   578.00
    7     6     6     1.09042263    -0.26492401   -25.26939172    -0.00000020    -0.00000002  0.13D-07  0.32D-08   578.00
    7     7     7     1.09042237    -0.26492351   -25.26939123    -0.00000020    -0.00000002  0.13D-07  0.32D-08   578.00
    7     8     8     1.09042236    -0.26492351   -25.26939123    -0.00000020    -0.00000002  0.13D-07  0.32D-08   578.00
    7     9     9     1.09042122    -0.26492324   -25.26939096    -0.00000019    -0.00000002  0.12D-07  0.31D-08   578.00
    7    10    10     1.09042133    -0.26492241   -25.26939013    -0.00000020    -0.00000002  0.13D-07  0.32D-08   578.00
    7    11    11     1.09042131    -0.26492241   -25.26939013    -0.00000020    -0.00000002  0.13D-07  0.32D-08   578.00
    7    12    12     1.09042143    -0.26492231   -25.26939003    -0.00000020    -0.00000002  0.13D-07  0.32D-08   578.00
    7    13    13     1.08245672    -0.25486834   -25.25849709    -0.00000037    -0.00000003  0.23D-07  0.42D-08   578.00
    7    14    14     1.08245670    -0.25827780   -25.25849709    -0.00000037    -0.00000003  0.23D-07  0.42D-08   578.00
    7    15    15     1.08245652    -0.25827771   -25.25849700    -0.00000037    -0.00000003  0.23D-07  0.42D-08   578.00
    7    16    16     1.07585787    -0.25148483   -25.25170412    -0.00000005    -0.00000000  0.32D-08  0.40D-09   578.00
    8     1     1     1.08888004    -0.26259820   -25.32377613    -0.00000006    -0.00000001  0.43D-08  0.97D-09   667.18
    8     2     2     1.08888007    -0.26259816   -25.32377609    -0.00000006    -0.00000001  0.43D-08  0.97D-09   667.18
    8     3     3     1.08888006    -0.26259816   -25.32377609    -0.00000006    -0.00000001  0.43D-08  0.97D-09   667.18
    8     4     4     1.08887825    -0.26259781   -25.32377574    -0.00000006    -0.00000001  0.43D-08  0.98D-09   667.18
    8     5     5     1.08887814    -0.26259775   -25.32377568    -0.00000006    -0.00000001  0.43D-08  0.98D-09   667.18
    8     6     6     1.09043405    -0.26492402   -25.26939174    -0.00000002    -0.00000000  0.86D-09  0.52D-09   667.18
    8     7     7     1.09043389    -0.26492353   -25.26939125    -0.00000002    -0.00000000  0.87D-09  0.53D-09   667.18
    8     8     8     1.09043388    -0.26492353   -25.26939125    -0.00000002    -0.00000000  0.87D-09  0.53D-09   667.18
    8     9     9     1.09043258    -0.26492326   -25.26939097    -0.00000002    -0.00000000  0.82D-09  0.50D-09   667.18
    8    10    10     1.09043286    -0.26492243   -25.26939015    -0.00000002    -0.00000000  0.87D-09  0.53D-09   667.18
    8    11    11     1.09043286    -0.26492243   -25.26939015    -0.00000002    -0.00000000  0.87D-09  0.53D-09   667.18
    8    12    12     1.09043299    -0.26492233   -25.26939005    -0.00000002    -0.00000000  0.88D-09  0.53D-09   667.18
    8    13    13     1.08246522    -0.25486838   -25.25849713    -0.00000003    -0.00000000  0.17D-08  0.12D-08   667.18
    8    14    14     1.08246523    -0.25827783   -25.25849713    -0.00000003    -0.00000000  0.17D-08  0.12D-08   667.18
    8    15    15     1.08246504    -0.25827774   -25.25849703    -0.00000003    -0.00000000  0.17D-08  0.12D-08   667.18
    8    16    16     1.07585787    -0.25148483   -25.25170412    -0.00000000    -0.00000000  0.32D-08  0.40D-09   667.18


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.6%
 S   4.1%  24.2%
 P   0.7%  15.2%  10.2%

 Initialization:   1.0%
 Other:           39.1%

 Total CPU:      667.2 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2000//00222000000           0.0000000  -0.0000000  -0.0000000  -0.0000741  -0.0000000   0.0000000  -0.0000000  -0.0000000
                             0.9546514  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 200/0/00222000000          -0.0000780  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9546506   0.0000000   0.0000000
                            -0.0000000   0.0000000  -0.0000000  -0.0000043  -0.0000000  -0.0000000   0.0000000   0.0000000
 2/00/000222000000          -0.0000000   0.0000000  -0.0000000   0.9533802   0.0001928   0.0000000  -0.0000000  -0.0000000
                             0.0000798  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 2/000/00222000000           0.0000000   0.0000000  -0.0000000  -0.0001928   0.9533801   0.0000000   0.0000000   0.0000000
                             0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000005
 2/0/0000222000000           0.9533797  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000840   0.0000000   0.0000000
                            -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2/0000/0222000000           0.0000000   0.0000000   0.9533797   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000646
                             0.0000000  -0.0000000  -0.0000556   0.0000000   0.0000029   0.0000000   0.0000000   0.0000000
 2//00000222000000           0.0000000   0.9533797  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000646   0.0000000
                             0.0000000   0.0000556   0.0000000  -0.0000000   0.0000000  -0.0000029   0.0000000  -0.0000000
 2/00000/222000000          -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000006  -0.0000000  -0.0000000   0.0000000
                             0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.9439490
 20/000/0222000000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000039  -0.0000000   0.0000000
                             0.0000000  -0.0000000   0.0000000   0.8539242   0.0000000   0.0000000   0.3673183  -0.0000000
 20/0/000222000000          -0.0000000  -0.0000670   0.0000000   0.0000000  -0.0000000  -0.0000000   0.7711333   0.0000000
                             0.0000000   0.3666773  -0.0000000   0.0000000   0.0000000   0.3674362   0.0000000   0.0000000
 2000/0/0222000000          -0.0000000  -0.0000000  -0.0000670   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.7711280
                            -0.0000000   0.0000000  -0.3666885   0.0000000  -0.3674362  -0.0000000  -0.0000000   0.0000000
 200//000222000000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000019   0.0000000   0.0000000
                             0.0000000   0.0000000  -0.0000000  -0.4268177  -0.0000000   0.0000000   0.7349686   0.0000000
 200/00/0222000000           0.0000000   0.0000001  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.5477883   0.0000000
                            -0.0000000   0.6550557   0.0000000  -0.0000000   0.0000000   0.3673404   0.0000000  -0.0000000
 20//0000222000000          -0.0000000  -0.0000000  -0.0000001   0.0000000   0.0000000   0.0000000  -0.0000000   0.5477978
                             0.0000000  -0.0000000   0.6550478  -0.0000000   0.3673404  -0.0000000  -0.0000000  -0.0000000
 20/00/00222000000           0.0000000   0.0000415  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.1289945  -0.0000000
                            -0.0000000  -0.5897539  -0.0000000  -0.0000000  -0.0000000   0.6365200   0.0000000  -0.0000000
 20000//0222000000           0.0000000   0.0000000  -0.0000415  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.1289860
                             0.0000000   0.0000000  -0.5897557  -0.0000000   0.6365199  -0.0000000  -0.0000000   0.0000000
 20000000222/0/000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                             0.0000000  -0.0000000   0.0000000   0.0000691   0.0000000  -0.0000000   0.4919076  -0.0000000
 20000000222//0000          -0.0000000   0.0000000  -0.0000009   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000191
                            -0.0000000   0.0000000   0.0000602  -0.0000000   0.4919030   0.0000000   0.0000000  -0.0000000
 200000002220//000           0.0000000   0.0000009  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000191   0.0000000
                             0.0000000   0.0000602  -0.0000000   0.0000000  -0.0000000   0.4919029  -0.0000000  -0.0000000
 20000000222/00/00          -0.0000000  -0.0000000   0.0000000   0.0010589  -0.0006116  -0.0000000   0.0000000  -0.0000000
                            -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0955769
 2000000022200/00/           0.0000000  -0.0000000   0.0000000  -0.0010586  -0.0006120  -0.0000000   0.0000000   0.0000000
                             0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0955769
 200000002220/00/0           0.0000000   0.0000000   0.0000000  -0.0000002   0.0012223   0.0000000   0.0000000   0.0000000
                            -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0955763

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000000  29.1    -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000002  -0.0000000  -0.0000000  -0.0000000
                            -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0559197
 2/000000222000000  30.1     0.0000000  -0.0503251   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000051   0.0000000
                             0.0000000  -0.0000032  -0.0000000  -0.0000000  -0.0000000  -0.0000010  -0.0000000   0.0000000
 2/000000222000000  31.1     0.0000000  -0.0000000  -0.0503251  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000051
                            -0.0000000  -0.0000000   0.0000032  -0.0000000   0.0000010  -0.0000000  -0.0000000  -0.0000000
 2/000000222000000  33.1    -0.0503250  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000093   0.0000000   0.0000000
                             0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 2/000000222000000  32.1    -0.0000000  -0.0000000   0.0000000  -0.0503229  -0.0000102   0.0000000  -0.0000000   0.0000000
                            -0.0000087   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2/000000222000000  34.1    -0.0000000  -0.0000000   0.0000000   0.0000102  -0.0503228  -0.0000000   0.0000000  -0.0000000
                             0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000001

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000   -0.000000    0.953310    0.000000   -0.000014   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000077   -0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.953310    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000071    0.000034   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000002
 3           0.953310   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000074    0.000000   -0.000000    0.000028
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000002   -0.000000
 4           0.000000   -0.000000    0.942718    0.000000    0.141718   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000074   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000   -0.141718   -0.000000    0.942718   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000084    0.000000    0.171853   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.939055   -0.000000    0.000000    0.000000    0.000000
 7          -0.000000    0.000065   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.381507   -0.875106    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000040
 8           0.000065    0.000000   -0.000000    0.000000    0.000000    0.000000    0.896586    0.000000   -0.000000    0.327859
            -0.000000    0.000000    0.000000    0.000000    0.000040    0.000000
 9           0.000000    0.000000    0.000079   -0.000000    0.000012    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.954651   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 10         -0.000000    0.000056   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.875107    0.381507   -0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000126
 11         -0.000056    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.327860    0.000000    0.000000    0.896587
             0.000000   -0.000000    0.000000   -0.000000    0.000126   -0.000000
 12          0.000000   -0.000000    0.000000    0.000000    0.000000    0.939056   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.171853    0.000000    0.000145   -0.000000    0.000000
 13          0.000003    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000005    0.000000   -0.000000   -0.000135
             0.000000   -0.000000    0.000000    0.000000    0.955288   -0.000000
 14          0.000000   -0.000003    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000101   -0.000089    0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000    0.955288
 15          0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000146   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000027    0.000000    0.955288   -0.000000    0.000000
 16          0.000000   -0.000000   -0.000000    0.000000    0.000001   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.958250   -0.000000   -0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.953310    0.000000    0.000000   -0.000000    0.000000    0.000003   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.953310    0.000000    0.000000   -0.000000    0.000000    0.000002    0.000000    0.000000    0.000002
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.953310   -0.000000    0.000000    0.000000    0.000000    0.000002    0.000000    0.000000
            -0.000002   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.953310   -0.000000    0.000000   -0.000000    0.000000    0.000003    0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.953310    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 6           0.000003    0.000000    0.000000    0.000000    0.000000    0.954651   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 7          -0.000000    0.000002    0.000000   -0.000000   -0.000000   -0.000000    0.954651    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 8          -0.000000    0.000000    0.000002    0.000000    0.000000   -0.000000    0.000000    0.954651   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 9           0.000000    0.000000    0.000000    0.000003    0.000000    0.000000   -0.000000   -0.000000    0.954651   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 10          0.000000    0.000002    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.954652
            -0.000000   -0.000000   -0.000000   -0.000001    0.000000   -0.000000
 11         -0.000000   -0.000000   -0.000002    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.954652    0.000000   -0.000001    0.000000    0.000000    0.000000
 12          0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.954652   -0.000000   -0.000000   -0.000001    0.000000
 13         -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000001   -0.000000    0.955288   -0.000000    0.000000   -0.000000
 14          0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000001
             0.000000   -0.000000   -0.000000    0.955288   -0.000000   -0.000000
 15         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000001    0.000000   -0.000000    0.955288   -0.000000
 16         -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958250


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95330974 (fixed)   0.95352906 (relaxed)   0.95330974 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01053626   -0.01799321   -0.17068176
 Singles      0.04299409   -0.07755485   -0.08074371
 Pairs        0.04682241   -0.00000000   -0.01117273
 Total        1.10035277   -0.09554806   -0.26259820
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06117793
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12693443
 One electron energy                  -41.53392406
 Two electron energy                   16.21014794
 Virial quotient                       -3.55324949
 Correlation energy                    -0.26259820
 !MRCI STATE 1.1 Energy               -25.323776126775

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35012858 (Davidson, fixed reference)
 Cluster corrected energies           -25.34999567 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35012858 (Davidson, rotated reference)

 Cluster corrected energies           -25.34454119 (Pople, fixed reference)
 Cluster corrected energies           -25.34443141 (Pople, relaxed reference)
 Cluster corrected energies           -25.34454119 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95330973 (fixed)   0.95352905 (relaxed)   0.95330973 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01053625   -0.01799317   -0.17068113
 Singles      0.04299403   -0.07755484   -0.08074368
 Pairs        0.04682250   -0.00000066   -0.01117335
 Total        1.10035278   -0.09554867   -0.26259816
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06117793
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12693485
 One electron energy                  -41.53392428
 Two electron energy                   16.21014819
 Virial quotient                       -3.55324928
 Correlation energy                    -0.26259816
 !MRCI STATE 2.1 Energy               -25.323776089947

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35012855 (Davidson, fixed reference)
 Cluster corrected energies           -25.34999564 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35012855 (Davidson, rotated reference)

 Cluster corrected energies           -25.34454115 (Pople, fixed reference)
 Cluster corrected energies           -25.34443138 (Pople, relaxed reference)
 Cluster corrected energies           -25.34454115 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95330974 (fixed)   0.95352906 (relaxed)   0.95330974 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01053625   -0.01799317   -0.17068173
 Singles      0.04299402   -0.07755484   -0.08074368
 Pairs        0.04682250    0.00000000   -0.01117275
 Total        1.10035277   -0.09554801   -0.26259816
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06117793
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12693483
 One electron energy                  -41.53392422
 Two electron energy                   16.21014813
 Virial quotient                       -3.55324929
 Correlation energy                    -0.26259816
 !MRCI STATE 3.1 Energy               -25.323776089883

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35012854 (Davidson, fixed reference)
 Cluster corrected energies           -25.34999564 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35012854 (Davidson, rotated reference)

 Cluster corrected energies           -25.34454115 (Pople, fixed reference)
 Cluster corrected energies           -25.34443137 (Pople, relaxed reference)
 Cluster corrected energies           -25.34454115 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94271762 (fixed)   0.95352958 (relaxed)   0.95331024 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01053686   -0.01799361   -0.17068273
 Singles      0.04299217   -0.07755375   -0.08074231
 Pairs        0.04682258    0.00000000   -0.01117277
 Total        1.10035161   -0.09554736   -0.26259781
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06117793
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12693680
 One electron energy                  -41.53392492
 Two electron energy                   16.21014918
 Virial quotient                       -3.55324825
 Correlation energy                    -0.26259781
 !MRCI STATE 4.1 Energy               -25.323775739554

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35012785 (Davidson, fixed reference)
 Cluster corrected energies           -25.34999493 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35012785 (Davidson, rotated reference)

 Cluster corrected energies           -25.34454052 (Pople, fixed reference)
 Cluster corrected energies           -25.34443073 (Pople, relaxed reference)
 Cluster corrected energies           -25.34454052 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.94271759 (fixed)   0.95352954 (relaxed)   0.95331021 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01053704   -0.01799371   -0.17068289
 Singles      0.04299194   -0.07755355   -0.08074207
 Pairs        0.04682271   -0.00000000   -0.01117280
 Total        1.10035169   -0.09554726   -0.26259775
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06117793
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12693723
 One electron energy                  -41.53392456
 Two electron energy                   16.21014888
 Virial quotient                       -3.55324803
 Correlation energy                    -0.26259775
 !MRCI STATE 5.1 Energy               -25.323775680433

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.35012781 (Davidson, fixed reference)
 Cluster corrected energies           -25.34999489 (Davidson, relaxed reference)
 Cluster corrected energies           -25.35012781 (Davidson, rotated reference)

 Cluster corrected energies           -25.34454047 (Pople, fixed reference)
 Cluster corrected energies           -25.34443069 (Pople, relaxed reference)
 Cluster corrected energies           -25.34454047 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.93905500 (fixed)   0.95465060 (relaxed)   0.95465060 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626344   -0.01201106   -0.17617368
 Singles      0.03720585   -0.07327434   -0.07576255
 Pairs        0.05379463   -0.00000000   -0.01298780
 Total        1.09726391   -0.08528541   -0.26492402
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00446772
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30233605
 One electron energy                  -41.82611708
 Two electron energy                   16.55672534
 Virial quotient                       -3.46045314
 Correlation energy                    -0.26492402
 !MRCI STATE 6.1 Energy               -25.269391742577

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29515929 (Davidson, fixed reference)
 Cluster corrected energies           -25.29515929 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29515929 (Davidson, rotated reference)

 Cluster corrected energies           -25.28966564 (Pople, fixed reference)
 Cluster corrected energies           -25.28966564 (Pople, relaxed reference)
 Cluster corrected energies           -25.28966564 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.87510599 (fixed)   0.95465081 (relaxed)   0.95465081 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626316   -0.01201080   -0.17618002
 Singles      0.03720579   -0.07327424   -0.07576247
 Pairs        0.05379450    0.00000734   -0.01298104
 Total        1.09726345   -0.08527769   -0.26492353
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00446772
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30234753
 One electron energy                  -41.82613506
 Two electron energy                   16.55674380
 Virial quotient                       -3.46044764
 Correlation energy                    -0.26492353
 !MRCI STATE 7.1 Energy               -25.269391251329

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29515863 (Davidson, fixed reference)
 Cluster corrected energies           -25.29515863 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29515863 (Davidson, rotated reference)

 Cluster corrected energies           -25.28966501 (Pople, fixed reference)
 Cluster corrected energies           -25.28966501 (Pople, relaxed reference)
 Cluster corrected energies           -25.28966501 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.89658604 (fixed)   0.95465081 (relaxed)   0.95465081 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626316   -0.01201080   -0.17617333
 Singles      0.03720579   -0.07327424   -0.07576247
 Pairs        0.05379450   -0.00000000   -0.01298774
 Total        1.09726344   -0.08528504   -0.26492353
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00446772
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30234753
 One electron energy                  -41.82613503
 Two electron energy                   16.55674378
 Virial quotient                       -3.46044764
 Correlation energy                    -0.26492353
 !MRCI STATE 8.1 Energy               -25.269391251323

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29515863 (Davidson, fixed reference)
 Cluster corrected energies           -25.29515863 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29515863 (Davidson, rotated reference)

 Cluster corrected energies           -25.28966500 (Pople, fixed reference)
 Cluster corrected energies           -25.28966500 (Pople, relaxed reference)
 Cluster corrected energies           -25.28966500 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95465144 (fixed)   0.95465145 (relaxed)   0.95465145 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626301   -0.01201086   -0.17617383
 Singles      0.03720422   -0.07327363   -0.07576159
 Pairs        0.05379474    0.00000000   -0.01298783
 Total        1.09726198   -0.08528449   -0.26492326
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00446772
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30232471
 One electron energy                  -41.82610238
 Two electron energy                   16.55671141
 Virial quotient                       -3.46045841
 Correlation energy                    -0.26492326
 !MRCI STATE 9.1 Energy               -25.269390974876

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29515793 (Davidson, fixed reference)
 Cluster corrected energies           -25.29515793 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29515793 (Davidson, rotated reference)

 Cluster corrected energies           -25.28966439 (Pople, fixed reference)
 Cluster corrected energies           -25.28966439 (Pople, relaxed reference)
 Cluster corrected energies           -25.28966439 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.87510691 (fixed)   0.95465169 (relaxed)   0.95465169 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626225   -0.01201018   -0.17615194
 Singles      0.03720456   -0.07327377   -0.07576184
 Pairs        0.05379462   -0.00002295   -0.01300865
 Total        1.09726142   -0.08530689   -0.26492243
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00446772
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30235205
 One electron energy                  -41.82614627
 Two electron energy                   16.55675612
 Virial quotient                       -3.46044535
 Correlation energy                    -0.26492243
 !MRCI STATE 10.1 Energy              -25.269390150699

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29515688 (Davidson, fixed reference)
 Cluster corrected energies           -25.29515688 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29515688 (Davidson, rotated reference)

 Cluster corrected energies           -25.28966338 (Pople, fixed reference)
 Cluster corrected energies           -25.28966338 (Pople, relaxed reference)
 Cluster corrected energies           -25.28966338 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.89658676 (fixed)   0.95465169 (relaxed)   0.95465169 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626225   -0.01201018   -0.17617286
 Singles      0.03720455   -0.07327376   -0.07576184
 Pairs        0.05379462    0.00000000   -0.01298774
 Total        1.09726142   -0.08528394   -0.26492243
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00446772
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30235203
 One electron energy                  -41.82614621
 Two electron energy                   16.55675605
 Virial quotient                       -3.46044535
 Correlation energy                    -0.26492243
 !MRCI STATE 11.1 Energy              -25.269390150681

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29515688 (Davidson, fixed reference)
 Cluster corrected energies           -25.29515688 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29515688 (Davidson, rotated reference)

 Cluster corrected energies           -25.28966338 (Pople, fixed reference)
 Cluster corrected energies           -25.28966338 (Pople, relaxed reference)
 Cluster corrected energies           -25.28966338 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.93905605 (fixed)   0.95465168 (relaxed)   0.95465168 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00626214   -0.01201007   -0.17617267
 Singles      0.03720470   -0.07327384   -0.07576195
 Pairs        0.05379459   -0.00000000   -0.01298772
 Total        1.09726143   -0.08528390   -0.26492233
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00446772
 Nuclear energy                         0.00000000
 Kinetic energy                         7.30235784
 One electron energy                  -41.82615558
 Two electron energy                   16.55676553
 Virial quotient                       -3.46044259
 Correlation energy                    -0.26492233
 !MRCI STATE 12.1 Energy              -25.269390051293

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.29515678 (Davidson, fixed reference)
 Cluster corrected energies           -25.29515678 (Davidson, relaxed reference)
 Cluster corrected energies           -25.29515678 (Davidson, rotated reference)

 Cluster corrected energies           -25.28966327 (Pople, fixed reference)
 Cluster corrected energies           -25.28966327 (Pople, relaxed reference)
 Cluster corrected energies           -25.28966327 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95528791 (fixed)   0.95767411 (relaxed)   0.95528792 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01231921   -0.01389391   -0.17091104
 Singles      0.03162444   -0.07072379   -0.07189659
 Pairs        0.05185668   -0.00000000   -0.01206076
 Total        1.09580034   -0.08461770   -0.25486838
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00021930
 Nuclear energy                         0.00000000
 Kinetic energy                         7.20384599
 One electron energy                  -41.44237665
 Two electron energy                   16.18387952
 Virial quotient                       -3.50625168
 Correlation energy                    -0.25827783
 !MRCI STATE 13.1 Energy              -25.258497126067

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28324023 (Davidson, fixed reference)
 Cluster corrected energies           -25.28183161 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28324023 (Davidson, rotated reference)

 Cluster corrected energies           -25.27795121 (Pople, fixed reference)
 Cluster corrected energies           -25.27679529 (Pople, relaxed reference)
 Cluster corrected energies           -25.27795121 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.95528790 (fixed)   0.95767410 (relaxed)   0.95528791 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01231922   -0.01389391   -0.01558286
 Singles      0.03162445   -0.07072378   -0.07199498
 Pairs        0.05185669   -0.17366013   -0.17069999
 Total        1.09580036   -0.25827783   -0.25827783
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00021930
 Nuclear energy                         0.00000000
 Kinetic energy                         7.20384607
 One electron energy                  -41.44237695
 Two electron energy                   16.18387982
 Virial quotient                       -3.50625164
 Correlation energy                    -0.25827783
 !MRCI STATE 14.1 Energy              -25.258497126050

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28324024 (Davidson, fixed reference)
 Cluster corrected energies           -25.28183161 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28324024 (Davidson, rotated reference)

 Cluster corrected energies           -25.27795122 (Pople, fixed reference)
 Cluster corrected energies           -25.27679530 (Pople, relaxed reference)
 Cluster corrected energies           -25.27795122 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95528838 (fixed)   0.95767421 (relaxed)   0.95528839 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01231837   -0.01389392   -0.17406060
 Singles      0.03162434   -0.07072383   -0.07199507
 Pairs        0.05185653    0.00000000   -0.01222207
 Total        1.09579925   -0.08461775   -0.25827774
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00021930
 Nuclear energy                         0.00000000
 Kinetic energy                         7.20384424
 One electron energy                  -41.44237176
 Two electron energy                   16.18387473
 Virial quotient                       -3.50625252
 Correlation energy                    -0.25827774
 !MRCI STATE 15.1 Energy              -25.258497034693

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28323985 (Davidson, fixed reference)
 Cluster corrected energies           -25.28183144 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28323985 (Davidson, rotated reference)

 Cluster corrected energies           -25.27795088 (Pople, fixed reference)
 Cluster corrected energies           -25.27679514 (Pople, relaxed reference)
 Cluster corrected energies           -25.27795088 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95825031 (fixed)   0.95835505 (relaxed)   0.95825031 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01224854   -0.02110229   -0.16699746
 Singles      0.03542373   -0.07269897   -0.07493633
 Pairs        0.04136329    0.00000000   -0.00955103
 Total        1.08903556   -0.09380127   -0.25148483
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00362875
 Nuclear energy                         0.00000000
 Kinetic energy                         6.88343843
 One electron energy                  -40.21494023
 Two electron energy                   14.96323611
 Virial quotient                       -3.66847243
 Correlation energy                    -0.24807537
 !MRCI STATE 16.1 Energy              -25.251704123297

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27379165 (Davidson, fixed reference)
 Cluster corrected energies           -25.27373261 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27379165 (Davidson, rotated reference)

 Cluster corrected energies           -25.26901346 (Pople, fixed reference)
 Cluster corrected energies           -25.26896519 (Pople, relaxed reference)
 Cluster corrected energies           -25.26901346 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       70.70       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1095.53       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1220.71    795.44    415.58      5.60      0.44      3.24
 REAL TIME  *      1311.42 SEC
 DISK USED  *         1.14 GB (local),       27.79 GB (total)
 SF USED    *         6.96 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =       -25.35012858  AU                              
 SETTING HLSDIAG(14)    =       -25.35012855  AU                              
 SETTING HLSDIAG(15)    =       -25.35012854  AU                              
 SETTING HLSDIAG(16)    =       -25.35012785  AU                              
 SETTING HLSDIAG(17)    =       -25.35012781  AU                              
 SETTING HLSDIAG(18)    =       -25.29515929  AU                              
 SETTING HLSDIAG(19)    =       -25.29515863  AU                              
 SETTING HLSDIAG(20)    =       -25.29515863  AU                              
 SETTING HLSDIAG(21)    =       -25.29515793  AU                              
 SETTING HLSDIAG(22)    =       -25.29515688  AU                              
 SETTING HLSDIAG(23)    =       -25.29515688  AU                              
 SETTING HLSDIAG(24)    =       -25.29515678  AU                              
 SETTING HLSDIAG(25)    =       -25.28324023  AU                              
 SETTING HLSDIAG(26)    =       -25.28324024  AU                              
 SETTING HLSDIAG(27)    =       -25.28323985  AU                              
 SETTING HLSDIAG(28)    =       -25.27379165  AU                              


        HLSDIAG
    -25.39310214
    -25.34054432
    -25.34054250
    -25.34054251
    -25.34054251
    -25.34054252
    -25.28592870
    -25.28592870
    -25.28592870
    -25.28592858
    -25.28592844
    -25.27203032
    -25.35012858
    -25.35012855
    -25.35012854
    -25.35012785
    -25.35012781
    -25.29515929
    -25.29515863
    -25.29515863
    -25.29515793
    -25.29515688
    -25.29515688
    -25.29515678
    -25.28324023
    -25.28324024
    -25.28323985
    -25.27379165
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  12

 Original energies:    -25.370602    -25.314464    -25.314464    -25.314464    -25.314464    -25.314464    -25.260704    -25.260704
                       -25.260704    -25.260704    -25.260704    -25.249164
 Replaced energies:    -25.393102    -25.340544    -25.340543    -25.340543    -25.340543    -25.340543    -25.285929    -25.285929
                       -25.285929    -25.285929    -25.285928    -25.272030

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:    -25.323776    -25.323776    -25.323776    -25.323776    -25.323776    -25.269392    -25.269391    -25.269391
                       -25.269391    -25.269390    -25.269390    -25.269390    -25.258497    -25.258497    -25.258497    -25.251704
 Replaced energies:    -25.350129    -25.350129    -25.350129    -25.350128    -25.350128    -25.295159    -25.295159    -25.295159
                       -25.295158    -25.295157    -25.295157    -25.295157    -25.283240    -25.283240    -25.283240    -25.273792



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -25.39310214

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   11535.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   11535.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   11535.51       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   11535.51       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   11535.50       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   23521.85       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23521.85       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23521.85       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   23521.88
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00      -0.00      71.01      -0.00      -0.00       0.00       0.00      -0.00      12.73       0.00
                            0.00     -71.01       0.00       0.00       0.00      -0.00      -0.00     -12.73      -0.00       0.00

   14   2.1  1.0  1.0       0.00      -0.00      -0.00      -0.00     -71.01       0.00      12.72      -0.00       0.00       0.00
                            0.00       0.00       0.00     -69.35       0.00    -123.86       0.00      -0.00       0.00      11.74

   15   3.1  1.0  1.0      -0.00      -0.00      -0.00     -72.63       0.00     121.96      -0.00      -0.00       0.00      13.56
                           -0.00       0.00      -0.00       0.00      71.01       0.00     -12.72       0.00      -0.00      -0.00

   16   4.1  1.0  1.0      -0.00      71.02       0.00      -0.00       0.00       0.00       0.00      12.74       0.00       0.00
                           -0.00      -0.00      70.97       0.00       0.00       0.00       0.00      -0.00      12.73       0.00

   17   5.1  1.0  1.0       0.00    -122.97      -0.00       0.00       0.00       0.00      -0.00     -21.97       0.00      -0.00
                           -0.00       0.00     122.99      -0.00      -0.00       0.00       0.00      -0.00      21.97       0.00

   18   6.1  1.0  1.0      -0.00      -0.00      23.39      -0.00      -0.00       0.00       0.00      -0.00     -83.72       0.00
                           -0.00     -23.39       0.00      -0.00       0.00      -0.00      -0.00      83.72       0.00       0.00

   19   7.1  1.0  1.0      -0.00       0.00       0.00       0.00     -29.56      -0.00    -105.83       0.00       0.00       0.00
                           -0.00       0.00      -0.00      26.37      -0.00       5.84       0.00       0.00       0.00      93.70

   20   8.1  1.0  1.0       0.00      -0.00      -0.00      26.51       0.00      -5.13       0.00      -0.00       0.00      95.33
                            0.00      -0.00      -0.00      -0.00      29.56       0.00     105.83       0.00      -0.00      -0.00

   21   9.1  1.0  1.0       0.00      23.39      -0.00      -0.00      -0.00      -0.00      -0.00     -83.72       0.00       0.00
                           -0.00       0.00      23.39      -0.00       0.00      -0.00      -0.00       0.00     -83.72       0.00

   22  10.1  1.0  1.0       0.00      -0.00      -0.00      -0.00      -1.11      -0.00      -3.93      -0.00      -0.00      -0.00
                            0.02      -0.00       0.00     -13.73      -0.00      24.94      -0.00      -0.00       0.00     -51.55

   23  11.1  1.0  1.0       0.02       0.00      -0.00      13.06      -0.00      25.30       0.00       0.00       0.00      44.10
                            0.00      -0.00      -0.00      -0.00      -1.11      -0.00      -3.93       0.00      -0.00      -0.00

   24  12.1  1.0  1.0       0.00       0.00     -18.12      -0.00       0.00       0.00      -0.00       0.00      64.89       0.00
                           -0.00     -18.11      -0.00       0.00       0.00       0.00      -0.00      64.89      -0.00      -0.00

   25  13.1  1.0  1.0      71.27       0.00       0.00      26.15      -0.00      15.55      -0.00       0.00      -0.00    -168.05
                            0.00      -0.00      -0.00      -0.00     -26.40       0.00     172.26      -0.00      -0.00      -0.00

   26  14.1  1.0  1.0       0.00      -0.00      -0.00      -0.00     -26.40       0.00     172.26       0.00      -0.00      -0.00
                           71.27       0.00      -0.00     -26.55       0.00      14.84      -0.00       0.00      -0.00     176.29

   27  15.1  1.0  1.0       0.00      -0.00      26.41      -0.00       0.00       0.00       0.00       0.00     172.25      -0.00
                           -0.00      26.41      -0.00      -0.00      -0.00      -0.00       0.00     172.25      -0.00      -0.00

   28  16.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -200.74      -0.00      -2.68       0.00      -0.00       0.00      35.78

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -100.43       0.00       0.00       0.00      -0.00      -0.00     -18.00      -0.00      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     100.43       0.00      -0.00       0.00       0.00      -0.00      18.00      -0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     200.83      -0.00     -35.81       0.00      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.04       0.00      -0.01       0.00       0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      33.05       0.00       0.44       0.00       0.00       0.00     118.26

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -8.95      -0.00      -0.00       0.00      -0.00       0.00      31.99      -0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       8.95      -0.00      -0.00       0.00       0.00       0.00     -31.98       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     -33.03       0.00    -118.37      -0.00       0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -40.87       0.00      -0.00      -0.00       0.00       0.00     146.36      -0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -40.87      -0.00       0.00      -0.00      -0.00       0.00     146.36      -0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       0.00      -0.00       0.59      -0.00     -44.55      -0.00       0.00       0.00       6.60

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      37.34      -0.00       0.00      -0.00      -0.00       0.00     243.60      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      37.34       0.00       0.00       0.00       0.00      -0.00     243.60      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          100.80       0.00       0.00       0.57      -0.00     -42.97       0.00       0.00      -0.00     -11.66

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   45   1.1  1.0 -1.0      -0.00      -0.00      71.01      -0.00      -0.00       0.00       0.00      -0.00      12.73       0.00
                           -0.00      71.01      -0.00      -0.00      -0.00       0.00       0.00      12.73       0.00      -0.00

   46   2.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00     -71.01       0.00      12.72      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      69.35      -0.00     123.86      -0.00       0.00      -0.00     -11.74

   47   3.1  1.0 -1.0      -0.00      -0.00      -0.00     -72.63       0.00     121.96      -0.00      -0.00       0.00      13.56
                            0.00      -0.00       0.00      -0.00     -71.01      -0.00      12.72      -0.00       0.00       0.00

   48   4.1  1.0 -1.0      -0.00      71.02       0.00      -0.00       0.00       0.00       0.00      12.74       0.00       0.00
                            0.00       0.00     -70.97      -0.00      -0.00      -0.00      -0.00       0.00     -12.73      -0.00

   49   5.1  1.0 -1.0       0.00    -122.97      -0.00       0.00       0.00       0.00      -0.00     -21.97       0.00      -0.00
                            0.00      -0.00    -122.99       0.00       0.00      -0.00      -0.00       0.00     -21.97      -0.00

   50   6.1  1.0 -1.0      -0.00      -0.00      23.39      -0.00      -0.00       0.00       0.00      -0.00     -83.72       0.00
                            0.00      23.39      -0.00       0.00      -0.00       0.00       0.00     -83.72      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00     -29.56      -0.00    -105.83       0.00       0.00       0.00
                            0.00      -0.00       0.00     -26.37       0.00      -5.84      -0.00      -0.00      -0.00     -93.70

   52   8.1  1.0 -1.0       0.00      -0.00      -0.00      26.51       0.00      -5.13       0.00      -0.00       0.00      95.33
                           -0.00       0.00       0.00       0.00     -29.56      -0.00    -105.83      -0.00       0.00       0.00

   53   9.1  1.0 -1.0       0.00      23.39      -0.00      -0.00      -0.00      -0.00      -0.00     -83.72       0.00       0.00
                            0.00      -0.00     -23.39       0.00      -0.00       0.00       0.00      -0.00      83.72      -0.00

   54  10.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00      -1.11      -0.00      -3.93      -0.00      -0.00      -0.00
                           -0.02       0.00      -0.00      13.73       0.00     -24.94       0.00       0.00      -0.00      51.55

   55  11.1  1.0 -1.0       0.02       0.00      -0.00      13.06      -0.00      25.30       0.00       0.00       0.00      44.10
                           -0.00       0.00       0.00       0.00       1.11       0.00       3.93      -0.00       0.00       0.00

   56  12.1  1.0 -1.0       0.00       0.00     -18.12      -0.00       0.00       0.00      -0.00       0.00      64.89       0.00
                            0.00      18.11       0.00      -0.00      -0.00      -0.00       0.00     -64.89       0.00       0.00

   57  13.1  1.0 -1.0      71.27       0.00       0.00      26.15      -0.00      15.55      -0.00       0.00      -0.00    -168.05
                           -0.00       0.00       0.00       0.00      26.40      -0.00    -172.26       0.00       0.00       0.00

   58  14.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00     -26.40       0.00     172.26       0.00      -0.00      -0.00
                          -71.27      -0.00       0.00      26.55      -0.00     -14.84       0.00      -0.00       0.00    -176.29

   59  15.1  1.0 -1.0       0.00      -0.00      26.41      -0.00       0.00       0.00       0.00       0.00     172.25      -0.00
                            0.00     -26.41       0.00       0.00       0.00       0.00      -0.00    -172.25       0.00       0.00

   60  16.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      71.02    -122.97      -0.00       0.00      -0.00
                            0.00       0.00      71.01      -0.00      -0.00       0.00      -0.00      23.39      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00      71.01      -0.00      -0.00       0.00      -0.00      23.39       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00     -70.97    -122.99      -0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00      -0.00      -0.00     -72.63      -0.00       0.00      -0.00       0.00      26.51
                            0.00       0.00      -0.00      69.35      -0.00      -0.00       0.00       0.00     -26.37       0.00

    5   5.1  0.0  0.0       0.00       0.00      -0.00     -71.01       0.00       0.00       0.00      -0.00     -29.56       0.00
                            0.00       0.00      -0.00      -0.00     -71.01      -0.00       0.00      -0.00       0.00     -29.56

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00     121.96       0.00       0.00       0.00      -0.00      -5.13
                            0.00       0.00       0.00     123.86      -0.00      -0.00      -0.00       0.00      -5.84      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00      12.72      -0.00       0.00      -0.00       0.00    -105.83       0.00
                            0.00       0.00       0.00      -0.00      12.72      -0.00      -0.00       0.00      -0.00    -105.83

    8   8.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      12.74     -21.97      -0.00       0.00      -0.00
                            0.00       0.00      12.73       0.00      -0.00       0.00       0.00     -83.72      -0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00      12.73       0.00       0.00       0.00       0.00     -83.72       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     -12.73     -21.97      -0.00      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00      13.56       0.00      -0.00       0.00       0.00      95.33
                            0.00       0.00      -0.00     -11.74       0.00      -0.00      -0.00      -0.00     -93.70       0.00

   11  11.1  0.0  0.0   23521.91       0.00       0.00       0.00      21.45       0.00      -0.00       0.00      -0.00      15.70
                            0.00       0.00       0.00      22.50      -0.00       0.00      -0.00       0.00      23.54       0.00

   12  12.1  0.0  0.0       0.00   26572.19      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.01
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.01      -0.00

   13   1.1  1.0  1.0       0.00      -0.00    9431.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00     198.59       0.04      -0.00      -0.00      -0.00

   14   2.1  1.0  1.0       0.00      -0.00       0.00    9431.61       0.00       0.00       0.00       0.00       0.00       0.00
                          -22.50       0.00      -0.00       0.00      99.32       0.00       0.00       0.00      -0.00       1.16

   15   3.1  1.0  1.0      21.45      -0.00       0.00       0.00    9431.62       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -99.32      -0.00       0.00       0.00      -0.00      -1.16      -0.00

   16   4.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00    9431.77       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -198.59      -0.00      -0.00      -0.00       0.00       4.08       0.00      -0.00

   17   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00    9431.78       0.00       0.00       0.00
                            0.00      -0.00      -0.04      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   18   6.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   21495.97       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -4.08      -0.00       0.00      -0.00      -0.00

   19   7.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   21496.12       0.00
                          -23.54      -0.01       0.00       0.00       1.16      -0.00       0.00       0.00       0.00    -256.06

   20   8.1  1.0  1.0      15.70       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21496.12
                           -0.00       0.00       0.00      -1.16       0.00       0.00       0.00       0.00     256.06       0.00

   21   9.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       4.08       0.00       0.00      -0.00       0.00    -181.80      -0.00      -0.00

   22  10.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -87.76       0.02       0.00       0.00       5.10      -0.00      -0.00       0.00      -0.00      75.86

   23  11.1  1.0  1.0     -91.73       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       5.10       0.00       0.00      -0.00      -0.00      75.86       0.00

   24  12.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       5.59      -0.00       0.00      -0.00

   25  13.1  1.0  1.0     106.60      99.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -6.75       0.00       0.00       0.00      -0.00      -0.03      -0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           92.32      99.53      -0.00      -0.00      -6.75      -0.00      -0.00      -0.00      -0.00      -0.03

   27  15.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       7.72       0.00      -0.00       0.00

   28  16.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00      -0.00     -70.23       0.00       0.00       0.00      -0.00      -3.70       0.00
                           -1.48       0.00       0.00       0.00     -70.23      -0.00      -0.00      -0.00      -0.00      -3.70

   30   2.1  1.0  0.0       0.00       0.00      70.23      -0.00      -0.00       0.00      -0.00       2.96       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00     -70.19    -121.63      -0.00       0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00      70.24    -121.60      -0.00       0.00      -0.00
                           -0.00      -0.00      70.23      -0.00      -0.00       0.00       0.00       2.96       0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00      -0.00      -0.00     -70.24      -0.00      -0.00      -0.00       0.00       3.28
                           -0.00       0.00       0.00      70.19      -0.00      -0.00       0.00       0.00      -3.28       0.00

   33   5.1  1.0  0.0       0.00       0.00      -0.00       0.00     121.60       0.00      -0.00       0.00      -0.00      -0.67
                           -0.00       0.00       0.00     121.63      -0.00      -0.00       0.00       0.00      -0.67       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00      -2.96       0.00       0.00      -0.00      -0.00     -55.18       0.00
                           -4.90       0.00       0.00       0.00      -2.96      -0.00      -0.00       0.00      -0.00     -55.18

   35   7.1  1.0  0.0       0.00       0.00       3.70      -0.00      -0.00      -0.00       0.00      55.18      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       3.28       0.67       0.00      -0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -3.28       0.67      -0.00       0.00      -0.00
                            0.00      -0.00       3.70      -0.00      -0.00      -0.00      -0.00      55.18       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00      -2.95       0.00      -0.00      -0.00      -0.00      98.58
                           -0.00      -0.00      -0.00       2.95       0.00      -0.00       0.00       0.00     -98.58      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.17       0.00       0.00       0.00       0.00    -116.07      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -1.70       3.12      -0.00      -0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00      -1.70      -3.12      -0.00      -0.00       0.00
                           -0.00       0.00      -0.17      -0.00      -0.00       0.00      -0.00     116.07       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       2.24       0.00       0.00      -0.00      -0.00      33.64       0.00
                          159.11       0.03      -0.00      -0.00      -2.24      -0.00       0.00       0.00       0.00     -33.63

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -4.77      -2.78      -0.00      -0.00       0.00
                           -0.00       0.00      -4.78      -0.00       0.00      -0.00      -0.00      -0.02       0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       4.78      -0.00      -0.00       0.00      -0.00       0.02       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -4.77       2.78       0.00       0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00      -4.78       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                         -281.31     140.77       0.00      -0.00       4.78      -0.00      -0.00      -0.00      -0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           22.50      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0      21.45      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           23.54       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0      15.70       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           87.76      -0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0     -91.73       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0     106.60      99.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -92.32     -99.53      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.02       0.00      71.27       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.02      -0.00       0.00      -0.00     -71.27       0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0      23.39      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      18.11       0.00      -0.00     -26.41       0.00       0.00     100.43

    3   3.1  0.0  0.0      -0.00      -0.00      -0.00     -18.12       0.00      -0.00      26.41       0.00       0.00       0.00
                          -23.39      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    4   4.1  0.0  0.0      -0.00      -0.00      13.06      -0.00      26.15      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      13.73       0.00      -0.00       0.00      26.55       0.00      -0.00     200.74      -0.00

    5   5.1  0.0  0.0      -0.00      -1.11      -0.00       0.00      -0.00     -26.40       0.00       0.00       0.00       0.00
                           -0.00       0.00       1.11      -0.00      26.40      -0.00       0.00      -0.00       0.00      -0.00

    6   6.1  0.0  0.0      -0.00      -0.00      25.30       0.00      15.55       0.00       0.00       0.00       0.00       0.00
                            0.00     -24.94       0.00      -0.00      -0.00     -14.84       0.00      -0.00       2.68       0.00

    7   7.1  0.0  0.0      -0.00      -3.93       0.00      -0.00      -0.00     172.26       0.00      -0.00       0.00       0.00
                            0.00       0.00       3.93       0.00    -172.26       0.00      -0.00       0.00      -0.00       0.00

    8   8.1  0.0  0.0     -83.72      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00     -64.89       0.00      -0.00    -172.25       0.00       0.00      18.00

    9   9.1  0.0  0.0       0.00      -0.00       0.00      64.89      -0.00      -0.00     172.25      -0.00       0.00       0.00
                           83.72      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   10  10.1  0.0  0.0       0.00      -0.00      44.10       0.00    -168.05      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      51.55       0.00       0.00       0.00    -176.29       0.00       0.00     -35.78       0.00

   11  11.1  0.0  0.0      -0.00      -0.00     -91.73      -0.00     106.60       0.00      -0.00       0.00       0.00       0.00
                            0.00      87.76       0.00       0.00      -0.00     -92.32       0.00       0.00       1.48      -0.00

   12  12.1  0.0  0.0       0.00      -0.00       0.02      -0.00      99.53       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.02       0.00      -0.00      -0.00     -99.53       0.00       0.00      -0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      70.23
                           -4.08      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -70.23      -0.00
                           -0.00      -0.00      -5.10       0.00       6.75       0.00      -0.00       0.00      -0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -5.10      -0.00       0.00      -0.00       6.75       0.00       0.00      70.23      -0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      70.19

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -5.59      -0.00       0.00      -7.72       0.00       0.00     121.63

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       2.96
                          181.80      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.70       0.00
                            0.00       0.00     -75.86      -0.00       0.03       0.00       0.00       0.00       0.00      -0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00     -75.86      -0.00       0.00       0.00       0.03      -0.00       0.00       3.70      -0.00

   21   9.1  1.0  1.0   21496.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       2.95

   22  10.1  1.0  1.0       0.00   21496.50       0.00       0.00       0.00       0.00       0.00       0.00      -0.17      -0.00
                            0.00      -0.00     -74.33       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00   21496.50       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      74.33       0.00       0.00       0.00      -0.00       0.00       0.00      -0.17      -0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   21496.52       0.00       0.00       0.00       0.00      -0.00      -2.24
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.01      -0.00      -0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   24111.90       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00     190.91      -0.00      -0.00      -4.78      -0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   24111.90       0.00       0.00      -4.78       0.00
                            0.00       0.00       0.00       0.00    -190.91       0.00      -0.00       0.00       0.00      -0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   24111.99       0.00      -0.00       4.78
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      42.56       0.00      -0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26185.63       0.00       0.00
                            0.00      -0.00      -0.00      -0.01       0.00      -0.00     -42.56      -0.00       0.00       0.00

   29   1.1  1.0  0.0      -0.00      -0.17      -0.00      -0.00      -0.00      -4.78      -0.00       0.00    9431.61       0.00
                            0.00      -0.00       0.17       0.00       4.78      -0.00      -0.00      -0.00       0.00       0.00

   30   2.1  1.0  0.0      -0.00      -0.00       0.00      -2.24      -0.00       0.00       4.78       0.00       0.00    9431.61
                           -2.95      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   31   3.1  1.0  0.0       2.95      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       2.24      -0.00      -0.00      -4.78       0.00      -0.00      -0.00

   32   4.1  1.0  0.0      -0.00      -0.00       1.70      -0.00       4.77      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       1.70      -0.00       0.00       0.00       4.77       0.00      -0.00      -0.00      -0.00

   33   5.1  1.0  0.0       0.00      -0.00       3.12       0.00       2.78       0.00       0.00       0.00       0.00       0.00
                           -0.00      -3.12       0.00      -0.00       0.00      -2.78       0.00      -0.00      -0.00      -0.00

   34   6.1  1.0  0.0       0.00     116.07       0.00       0.00       0.00      -0.02       0.00      -0.00       0.00       0.00
                           -0.00       0.00    -116.07      -0.00       0.02      -0.00       0.00       0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00     -33.64       0.00      -0.00       0.00       0.00       0.00       0.00
                           98.58       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   36   8.1  1.0  0.0     -98.58       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      33.63       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   37   9.1  1.0  0.0       0.00      -0.00     -82.44      -0.00       0.01       0.00       0.00       0.00       0.00       0.00
                            0.00     -82.44      -0.00      -0.00      -0.00       0.01      -0.00      -0.00      -0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00      -0.00    -153.78      -0.00       0.00       0.04       0.00       0.00       0.00
                           82.44       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   39  11.1  1.0  0.0      82.44       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -153.79      -0.00       0.00       0.04       0.00      -0.00      -0.00

   40  12.1  1.0  0.0       0.00     153.78       0.00      -0.00       0.00      -0.03      -0.00      -0.00       0.00       0.00
                            0.00      -0.00     153.79       0.00      -0.03       0.00      -0.00      -0.00      -0.00      -0.00

   41  13.1  1.0  0.0      -0.01       0.00       0.00      -0.00      -0.00      -0.00       0.00      30.09       0.00       0.00
                            0.00      -0.00       0.00       0.03      -0.00       0.00     135.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0      -0.00      -0.00       0.00       0.03       0.00      -0.00     135.00      -0.00       0.00       0.00
                           -0.01      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -30.09      -0.00      -0.00

   43  15.1  1.0  0.0      -0.00      -0.04      -0.00       0.00      -0.00    -135.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.04       0.00    -135.00       0.00      -0.00       0.00      -0.00      -0.00

   44  16.1  1.0  0.0      -0.00      -0.00      -0.00       0.00     -30.09       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      30.09      -0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -70.23
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      70.23      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      70.23      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      70.19

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     121.63

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.96
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.70      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.70      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.95

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.17       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.17      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.24
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -4.78      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.78      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.78
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.03

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       8.95      -0.00      -0.00      40.87       0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -100.43      -0.00       0.00       0.00       0.00      -8.95       0.00      -0.00      40.87       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -33.05       0.00       0.00      -0.00       0.00       0.00      -0.59

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -200.83      -0.04      -0.00      -0.00       0.00      33.03       0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.44       0.00      -0.00      -0.00      -0.00       0.00      44.55

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      35.81       0.01      -0.00      -0.00      -0.00     118.37      -0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     -31.99      -0.00       0.00    -146.36      -0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.00       0.00      -0.00      -0.00       0.00      31.98      -0.00       0.00    -146.36      -0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -118.26      -0.00      -0.00       0.00       0.00       0.00      -6.60

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       4.90       0.00      -0.00       0.00      -0.00       0.00    -159.11

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.03

   13   1.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       3.70      -0.00       0.00       0.17       0.00       0.00
                          -70.23      -0.00      -0.00      -0.00      -0.00      -3.70       0.00      -0.00       0.17       0.00

   14   2.1  1.0  1.0       0.00      -0.00       0.00      -2.96      -0.00       0.00       0.00       0.00      -0.00       2.24
                            0.00     -70.19    -121.63      -0.00       0.00       0.00      -2.95      -0.00       0.00       0.00

   15   3.1  1.0  1.0      -0.00     -70.24     121.60       0.00      -0.00       0.00      -2.95       0.00      -0.00       0.00
                            0.00       0.00       0.00       2.96       0.00       0.00      -0.00       0.00       0.00       2.24

   16   4.1  1.0  1.0      70.24      -0.00       0.00       0.00      -0.00      -3.28       0.00       0.00      -1.70       0.00
                           -0.00       0.00       0.00       0.00      -3.28       0.00       0.00       1.70      -0.00       0.00

   17   5.1  1.0  1.0    -121.60      -0.00      -0.00      -0.00       0.00       0.67      -0.00       0.00      -3.12      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.67       0.00      -0.00      -3.12       0.00      -0.00

   18   6.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      55.18      -0.00      -0.00    -116.07      -0.00      -0.00
                           -2.96      -0.00      -0.00      -0.00      -0.00     -55.18      -0.00       0.00    -116.07      -0.00

   19   7.1  1.0  1.0       0.00       0.00      -0.00     -55.18      -0.00       0.00      -0.00      -0.00      -0.00      33.64
                           -0.00       3.28       0.67       0.00       0.00      -0.00      98.58       0.00      -0.00      -0.00

   20   8.1  1.0  1.0      -0.00       3.28      -0.67       0.00      -0.00      -0.00      98.58      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      55.18       0.00      -0.00       0.00       0.00      -0.00      33.63

   21   9.1  1.0  1.0       2.95      -0.00       0.00       0.00       0.00     -98.58       0.00       0.00      82.44       0.00
                            0.00      -0.00       0.00       0.00     -98.58      -0.00      -0.00     -82.44      -0.00      -0.00

   22  10.1  1.0  1.0      -0.00      -0.00      -0.00     116.07       0.00       0.00      -0.00       0.00       0.00     153.78
                           -0.00      -1.70       3.12      -0.00      -0.00      -0.00      82.44      -0.00      -0.00       0.00

   23  11.1  1.0  1.0       0.00       1.70       3.12       0.00       0.00      -0.00     -82.44      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00     116.07       0.00       0.00       0.00       0.00      -0.00    -153.79

   24  12.1  1.0  1.0      -0.00      -0.00       0.00       0.00     -33.64      -0.00      -0.00    -153.78      -0.00      -0.00
                           -2.24      -0.00       0.00       0.00       0.00     -33.63       0.00      -0.00     153.79      -0.00

   25  13.1  1.0  1.0       0.00       4.77       2.78       0.00       0.00      -0.00       0.01      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.02       0.00      -0.00       0.00      -0.00       0.00       0.03

   26  14.1  1.0  1.0       0.00      -0.00       0.00      -0.02      -0.00      -0.00       0.00       0.00      -0.00      -0.03
                            0.00      -4.77       2.78       0.00       0.00       0.00      -0.01      -0.00      -0.00      -0.00

   27  15.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.04       0.00      -0.00
                            4.78      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.04       0.00

   28  16.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0    9431.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00    9431.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00    9431.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   21495.97       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   21496.12       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   21496.12       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   21496.27       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21496.50       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21496.50       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21496.52
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -3.70       0.00      -0.00      -0.17      -0.00      -0.00
                          -70.23      -0.00      -0.00      -0.00      -0.00      -3.70       0.00      -0.00       0.17       0.00

   46   2.1  1.0 -1.0      -0.00       0.00      -0.00       2.96       0.00      -0.00      -0.00      -0.00       0.00      -2.24
                            0.00     -70.19    -121.63      -0.00       0.00       0.00      -2.95      -0.00       0.00       0.00

   47   3.1  1.0 -1.0      -0.00      70.24    -121.60      -0.00       0.00      -0.00       2.95      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       2.96       0.00       0.00      -0.00       0.00       0.00       2.24

   48   4.1  1.0 -1.0     -70.24      -0.00      -0.00      -0.00       0.00       3.28      -0.00      -0.00       1.70      -0.00
                           -0.00      -0.00       0.00       0.00      -3.28       0.00       0.00       1.70      -0.00       0.00

   49   5.1  1.0 -1.0     121.60       0.00      -0.00       0.00      -0.00      -0.67       0.00      -0.00       3.12       0.00
                           -0.00      -0.00       0.00       0.00      -0.67       0.00      -0.00      -3.12       0.00      -0.00

   50   6.1  1.0 -1.0       0.00       0.00      -0.00      -0.00     -55.18       0.00       0.00     116.07       0.00       0.00
                           -2.96      -0.00      -0.00       0.00      -0.00     -55.18      -0.00       0.00    -116.07      -0.00

   51   7.1  1.0 -1.0      -0.00      -0.00       0.00      55.18      -0.00      -0.00       0.00       0.00       0.00     -33.64
                           -0.00       3.28       0.67       0.00      -0.00      -0.00      98.58       0.00      -0.00      -0.00

   52   8.1  1.0 -1.0       0.00      -3.28       0.67      -0.00       0.00      -0.00     -98.58       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      55.18       0.00       0.00       0.00       0.00      -0.00      33.63

   53   9.1  1.0 -1.0      -2.95       0.00      -0.00      -0.00      -0.00      98.58       0.00      -0.00     -82.44      -0.00
                            0.00      -0.00       0.00       0.00     -98.58      -0.00       0.00     -82.44      -0.00      -0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00    -116.07      -0.00      -0.00       0.00       0.00      -0.00    -153.78
                           -0.00      -1.70       3.12      -0.00      -0.00      -0.00      82.44       0.00      -0.00       0.00

   55  11.1  1.0 -1.0      -0.00      -1.70      -3.12      -0.00      -0.00       0.00      82.44       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00     116.07       0.00       0.00       0.00       0.00       0.00    -153.79

   56  12.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      33.64       0.00       0.00     153.78       0.00      -0.00
                           -2.24      -0.00       0.00       0.00       0.00     -33.63       0.00      -0.00     153.79       0.00

   57  13.1  1.0 -1.0      -0.00      -4.77      -2.78      -0.00      -0.00       0.00      -0.01       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.02       0.00      -0.00       0.00      -0.00       0.00       0.03

   58  14.1  1.0 -1.0      -0.00       0.00      -0.00       0.02       0.00       0.00      -0.00      -0.00       0.00       0.03
                            0.00      -4.77       2.78       0.00       0.00       0.00      -0.01      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.04      -0.00       0.00
                            4.78      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.04       0.00

   60  16.1  1.0 -1.0       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00    -100.80       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      71.02    -122.97      -0.00
                            0.00     -37.34      -0.00      -0.00     -71.01       0.00       0.00      -0.00       0.00     -23.39

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00      71.01      -0.00      -0.00       0.00      -0.00      23.39
                          -37.34      -0.00      -0.00      -0.00       0.00       0.00      -0.00      70.97     122.99       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00     -72.63      -0.00       0.00      -0.00
                            0.00      -0.00      -0.57       0.00       0.00     -69.35       0.00       0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00     -71.01       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      71.01       0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00     121.96       0.00       0.00       0.00
                            0.00      -0.00      42.97      -0.00      -0.00    -123.86       0.00       0.00       0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      12.72      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00     -12.72       0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      12.74     -21.97      -0.00
                           -0.00    -243.60      -0.00       0.00     -12.73      -0.00       0.00      -0.00      -0.00      83.72

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00      12.73       0.00       0.00       0.00       0.00     -83.72
                         -243.60       0.00       0.00       0.00      -0.00       0.00      -0.00      12.73      21.97       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      13.56       0.00      -0.00       0.00
                            0.00       0.00      11.66      -0.00       0.00      11.74      -0.00       0.00       0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      21.45       0.00      -0.00       0.00
                            0.00      -0.00     281.31       0.00      -0.00     -22.50       0.00      -0.00       0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00    -140.77       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   13   1.1  1.0  1.0       0.00       4.78       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.78      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00      -0.00      -4.78      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -4.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0      -4.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       4.77       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0      -2.78      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -2.78       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.00       0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0      -0.01      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00      -0.00      -0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0      -0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0      -0.00       0.00      -0.00     -30.09       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     135.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0      -0.00      -0.00    -135.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -30.09       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00     135.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0      30.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      30.09      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      70.23      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00     -70.23      -0.00      -0.00      -0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00     -70.23      -0.00       0.00      -0.00       0.00      -2.96
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00     -70.19    -121.63      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -70.24     121.60       0.00
                            0.00       0.00       0.00       0.00      70.23      -0.00       0.00       0.00       0.00       2.96

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      70.24      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      70.19      -0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00    -121.60      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00     121.63      -0.00      -0.00      -0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       2.96      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -2.96      -0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00      -3.70       0.00       0.00       0.00      -0.00     -55.18
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.28       0.67       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.28      -0.67       0.00
                            0.00       0.00       0.00       0.00       3.70      -0.00      -0.00      -0.00      -0.00      55.18

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       2.95      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       2.95       0.00      -0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.17      -0.00      -0.00      -0.00      -0.00     116.07
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.70       3.12      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       1.70       3.12       0.00
                            0.00       0.00       0.00       0.00      -0.17      -0.00      -0.00       0.00      -0.00     116.07

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -2.24      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -2.24      -0.00       0.00       0.00

   41  13.1  1.0  0.0   24111.90       0.00       0.00       0.00      -0.00      -0.00       0.00       4.77       2.78       0.00
                            0.00       0.00       0.00       0.00      -4.78      -0.00       0.00      -0.00      -0.00      -0.02

   42  14.1  1.0  0.0       0.00   24111.90       0.00       0.00      -4.78       0.00       0.00      -0.00       0.00      -0.02
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -4.77       2.78       0.00

   43  15.1  1.0  0.0       0.00       0.00   24111.99       0.00      -0.00       4.78      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       4.78      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00   26185.63       0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   45   1.1  1.0 -1.0      -0.00      -4.78      -0.00       0.00    9431.61       0.00       0.00       0.00       0.00       0.00
                            4.78      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -198.59      -0.04       0.00

   46   2.1  1.0 -1.0      -0.00       0.00       4.78       0.00       0.00    9431.61       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00     -99.32      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00      -0.00      -0.00       0.00       0.00    9431.62       0.00       0.00       0.00
                           -0.00      -0.00      -4.78       0.00      -0.00      99.32       0.00      -0.00      -0.00       0.00

   48   4.1  1.0 -1.0       4.77      -0.00      -0.00      -0.00       0.00       0.00       0.00    9431.77       0.00       0.00
                            0.00       4.77       0.00      -0.00     198.59       0.00       0.00       0.00      -0.00      -4.08

   49   5.1  1.0 -1.0       2.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9431.78       0.00
                            0.00      -2.78       0.00      -0.00       0.04       0.00       0.00       0.00       0.00      -0.00

   50   6.1  1.0 -1.0       0.00      -0.02       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   21495.97
                            0.02      -0.00       0.00       0.00      -0.00       0.00      -0.00       4.08       0.00      -0.00

   51   7.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -1.16       0.00      -0.00      -0.00

   52   8.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       1.16      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01      -0.00      -0.00      -4.08      -0.00      -0.00       0.00      -0.00     181.80

   54  10.1  1.0 -1.0      -0.00       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -5.10       0.00       0.00      -0.00

   55  11.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.04       0.00      -0.00      -5.10      -0.00      -0.00       0.00       0.00

   56  12.1  1.0 -1.0       0.00      -0.03      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -5.59       0.00

   57  13.1  1.0 -1.0      -0.00      -0.00       0.00      30.09       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     135.00      -0.00       0.00       6.75      -0.00      -0.00      -0.00       0.00

   58  14.1  1.0 -1.0       0.00      -0.00     135.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -30.09       0.00       0.00       6.75       0.00       0.00       0.00

   59  15.1  1.0 -1.0      -0.00    -135.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -7.72      -0.00

   60  16.1  1.0 -1.0     -30.09       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      30.09      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.02       0.00      71.27       0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.02       0.00      -0.00       0.00      71.27      -0.00      -0.00

    2   2.1  0.0  0.0       0.00      -0.00      23.39      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00     -18.11      -0.00       0.00      26.41      -0.00

    3   3.1  0.0  0.0       0.00      -0.00      -0.00      -0.00      -0.00     -18.12       0.00      -0.00      26.41       0.00
                           -0.00      -0.00      23.39       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

    4   4.1  0.0  0.0       0.00      26.51      -0.00      -0.00      13.06      -0.00      26.15      -0.00      -0.00      -0.00
                           26.37      -0.00      -0.00     -13.73      -0.00       0.00      -0.00     -26.55      -0.00       0.00

    5   5.1  0.0  0.0     -29.56       0.00      -0.00      -1.11      -0.00       0.00      -0.00     -26.40       0.00       0.00
                           -0.00      29.56       0.00      -0.00      -1.11       0.00     -26.40       0.00      -0.00       0.00

    6   6.1  0.0  0.0      -0.00      -5.13      -0.00      -0.00      25.30       0.00      15.55       0.00       0.00       0.00
                            5.84       0.00      -0.00      24.94      -0.00       0.00       0.00      14.84      -0.00       0.00

    7   7.1  0.0  0.0    -105.83       0.00      -0.00      -3.93       0.00      -0.00      -0.00     172.26       0.00      -0.00
                            0.00     105.83      -0.00      -0.00      -3.93      -0.00     172.26      -0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00      -0.00     -83.72      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00      64.89      -0.00       0.00     172.25      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00      -0.00       0.00      64.89      -0.00      -0.00     172.25      -0.00
                            0.00      -0.00     -83.72       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   10  10.1  0.0  0.0       0.00      95.33       0.00      -0.00      44.10       0.00    -168.05      -0.00      -0.00       0.00
                           93.70      -0.00       0.00     -51.55      -0.00      -0.00      -0.00     176.29      -0.00      -0.00

   11  11.1  0.0  0.0      -0.00      15.70      -0.00      -0.00     -91.73      -0.00     106.60       0.00      -0.00       0.00
                          -23.54      -0.00      -0.00     -87.76      -0.00      -0.00       0.00      92.32      -0.00      -0.00

   12  12.1  0.0  0.0      -0.00       0.01       0.00      -0.00       0.02      -0.00      99.53       0.00       0.00      -0.00
                           -0.01       0.00      -0.00       0.02      -0.00       0.00       0.00      99.53      -0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       3.70      -0.00       0.00       0.17       0.00       0.00       0.00       4.78       0.00      -0.00
                           -0.00      -3.70       0.00      -0.00       0.17       0.00       4.78      -0.00      -0.00      -0.00

   30   2.1  1.0  0.0      -0.00       0.00       0.00       0.00      -0.00       2.24       0.00      -0.00      -4.78      -0.00
                            0.00       0.00      -2.95      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   31   3.1  1.0  0.0      -0.00       0.00      -2.95       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       2.24      -0.00      -0.00      -4.78       0.00

   32   4.1  1.0  0.0      -0.00      -3.28       0.00       0.00      -1.70       0.00      -4.77       0.00       0.00       0.00
                           -3.28       0.00       0.00       1.70      -0.00       0.00       0.00       4.77       0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.67      -0.00       0.00      -3.12      -0.00      -2.78      -0.00      -0.00      -0.00
                           -0.67       0.00      -0.00      -3.12       0.00      -0.00       0.00      -2.78       0.00      -0.00

   34   6.1  1.0  0.0      55.18      -0.00      -0.00    -116.07      -0.00      -0.00      -0.00       0.02      -0.00       0.00
                           -0.00     -55.18      -0.00       0.00    -116.07      -0.00       0.02      -0.00       0.00       0.00

   35   7.1  1.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00      33.64      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00      98.58       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   36   8.1  1.0  0.0      -0.00      -0.00      98.58      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      33.63       0.00      -0.00      -0.00       0.00

   37   9.1  1.0  0.0       0.00     -98.58       0.00       0.00      82.44       0.00      -0.01      -0.00      -0.00      -0.00
                          -98.58      -0.00      -0.00     -82.44      -0.00      -0.00      -0.00       0.01      -0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00     153.78       0.00      -0.00      -0.04      -0.00
                           -0.00      -0.00      82.44      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   39  11.1  1.0  0.0       0.00      -0.00     -82.44      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00    -153.79      -0.00       0.00       0.04       0.00

   40  12.1  1.0  0.0     -33.64      -0.00      -0.00    -153.78      -0.00      -0.00      -0.00       0.03       0.00       0.00
                            0.00     -33.63       0.00      -0.00     153.79      -0.00      -0.03       0.00      -0.00      -0.00

   41  13.1  1.0  0.0       0.00      -0.00       0.01      -0.00      -0.00       0.00      -0.00       0.00      -0.00     -30.09
                            0.00      -0.00       0.00      -0.00       0.00       0.03       0.00       0.00     135.00      -0.00

   42  14.1  1.0  0.0      -0.00      -0.00       0.00       0.00      -0.00      -0.03      -0.00      -0.00    -135.00       0.00
                            0.00       0.00      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -30.09

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.04       0.00      -0.00       0.00     135.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.04       0.00    -135.00       0.00       0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      30.09      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      30.09      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       4.08       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.16       0.00       0.00       5.10      -0.00      -6.75      -0.00       0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.16       0.00       0.00       5.10       0.00      -0.00       0.00      -6.75      -0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       5.59       0.00      -0.00       7.72      -0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -181.80       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   51   7.1  1.0 -1.0   21496.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     256.06      -0.00      -0.00      75.86       0.00      -0.03      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0       0.00   21496.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -256.06      -0.00      -0.00      75.86       0.00      -0.00      -0.00      -0.03       0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00   21496.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   21496.50       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -75.86      -0.00       0.00      74.33      -0.00      -0.00       0.00       0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   21496.50       0.00       0.00       0.00       0.00       0.00
                          -75.86      -0.00      -0.00     -74.33      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   21496.52       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   24111.90       0.00       0.00       0.00
                            0.03       0.00       0.00       0.00       0.00      -0.00       0.00    -190.91       0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24111.90       0.00       0.00
                            0.00       0.03      -0.00      -0.00      -0.00      -0.00     190.91      -0.00       0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24111.99       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     -42.56

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26185.63
                            0.00       0.00      -0.00       0.00       0.00       0.01      -0.00       0.00      42.56       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by    -25.39310214 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   11535.109       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   11535.508       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   11535.506       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   11535.506       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   11535.505       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   23521.851       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   23521.852
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000      -0.000     100.421      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000      -0.000      -0.000    -100.428       0.000      17.991      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.002      -0.000      -0.000    -102.713       0.000     172.483      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000     100.441       0.000      -0.000       0.000       0.000       0.000      18.013
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000    -173.900      -0.000       0.000       0.000       0.000      -0.000     -31.070
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000      33.078      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000       0.000     -41.798      -0.000    -149.669       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.006      -0.000      -0.000      37.496       0.000      -7.257       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000      33.073      -0.000      -0.000      -0.000      -0.000      -0.000    -118.392
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -1.569      -0.000      -5.563      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.025       0.000      -0.000      18.474      -0.000      35.780       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000     -25.619      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+            100.796       0.000       0.000      36.978      -0.000      21.987      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000      -0.000      -0.000     -37.340       0.000     243.616       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000      -0.000      37.347      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000      -0.001       0.000      -0.000       0.000       0.000      -0.000      -0.001
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    -200.739      -0.000      -2.680       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -100.430       0.000       0.000       0.000      -0.000      -0.000     -17.997

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     100.425       0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     200.829      -0.000     -35.809       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.041       0.000      -0.007       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      33.051       0.000       0.441       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -8.946      -0.000      -0.000       0.000      -0.000       0.000      31.986

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       8.945      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000     -33.029       0.000    -118.375      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -40.866       0.000      -0.000      -0.000       0.000       0.000     146.362

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -40.867      -0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.030       0.000      -0.000       0.595      -0.000     -44.554      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      37.345      -0.000       0.000      -0.000      -0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      37.344       0.000       0.000       0.000       0.000      -0.000     243.604

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              100.796       0.000       0.000       0.574      -0.000     -42.967       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -100.425       0.000       0.000       0.000      -0.000      -0.000     -18.006

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002       0.000       0.000     -98.071       0.000    -175.164       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000     100.427       0.000     -17.991       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     100.366       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     173.933      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -33.077       0.000      -0.000       0.000      -0.000      -0.000     118.395

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.006       0.000      -0.000      37.288      -0.000       8.256       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      41.798       0.000     149.669       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      33.074      -0.000       0.000      -0.000      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.025      -0.000       0.000     -19.424      -0.000      35.274      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -1.570      -0.000      -5.565       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -25.617      -0.000       0.000       0.000       0.000      -0.000      91.765

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     -37.340       0.000     243.616      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              100.796       0.000      -0.000     -37.551       0.000      20.992      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      37.346      -0.000      -0.000      -0.000      -0.000       0.000     243.605

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.001       0.000       0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.002      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000     100.441
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000     100.421      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000    -102.713      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000      -0.000    -100.428       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000     172.483       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000      17.991      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      18.013
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           23521.852       0.000       0.000       0.000      18.006       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   23521.878       0.000       0.000       0.000       0.000      19.181       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   23521.909       0.000       0.000       0.000      30.331       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26572.194      -0.000      -0.000      -0.003      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             18.006       0.000       0.000      -0.000    9431.606       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000    9431.614       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      19.181      30.331      -0.003       0.000       0.000    9431.615       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000    9431.767
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+           -118.394       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000     134.820      22.205       0.008       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000      62.371    -129.726       0.026       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             91.766       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000    -237.652     150.752     140.760       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+            243.605      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      35.781      -1.484       0.000       0.000       0.000     -99.318      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000     -99.267

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               17.996      -0.000      -0.000      -0.000      99.318      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      99.267      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000     172.008      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000     118.263      -4.902       0.000       0.000       0.000      -4.180      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       4.636

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                              -31.984       0.000       0.000      -0.000       5.228      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       4.174       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -2.404

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                              146.362      -0.000      -0.000       0.000      -0.237      -0.000      -0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       6.596     159.114       0.025      -0.000      -0.000      -3.164      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              243.604      -0.000      -0.000       0.000      -6.761      -0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -6.750

   15    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000     -11.664    -281.312     140.772       0.000      -0.000       6.757      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000     198.590

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      16.604     -31.815       0.003      -0.000       0.000      99.316       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000     -99.316      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               18.000       0.000      -0.000      -0.000    -198.590      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               31.076       0.000       0.000      -0.000      -0.040      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -4.078

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     132.517     -33.290      -0.008       0.000       0.000       1.165      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -1.164       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -118.392       0.000      -0.000      -0.000       4.080       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -72.897    -124.117       0.026       0.000       0.000       5.095      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       5.095       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.001

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -6.745       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     249.315     130.562     140.760      -0.000      -0.000      -6.745      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.002

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000      -0.000      -0.000       0.006       0.000       0.000       0.025       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            -173.900      -0.000       0.000      -0.000      33.073      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000      33.078       0.000      -0.000      -0.000      -0.000      -0.000     -25.619
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000      -0.000       0.000      37.496      -0.000      -0.000      18.474      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000      -0.000     -41.798       0.000      -0.000      -1.569      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000      -0.000      -7.257      -0.000      -0.000      35.780       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.000       0.000    -149.669       0.000      -0.000      -5.563       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>             -31.070      -0.000       0.000      -0.000    -118.392      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000    -118.394       0.000       0.000       0.000      -0.000       0.000      91.766
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>              -0.000       0.000       0.000     134.820       0.000      -0.000      62.371       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>              -0.000       0.000      -0.000      22.205      -0.000      -0.000    -129.726      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000      -0.000      -0.000       0.008       0.000      -0.000       0.026      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+           9431.776       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   21495.972       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   21496.117       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   21496.117       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   21496.269       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   21496.500       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   21496.500       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   21496.523
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -5.228       0.000      -0.000       0.237       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                             -172.008      -0.000       0.000       0.000      -4.174      -0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       4.180       0.000       0.000      -0.000       0.000       0.000       3.164

    4    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -4.636       0.000       0.000       2.404      -0.000       0.000

    5    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000      -0.943       0.000      -0.000      -4.409       0.000      -0.000

    6    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000     -78.041      -0.000       0.000    -164.149      -0.000

    7    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.943       0.000       0.000      -0.000     139.413       0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      78.041       0.000       0.000       0.000       0.000      -0.000      47.563

    9    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000    -139.413      -0.000       0.000    -116.588      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                4.409      -0.000      -0.000      -0.000     116.588       0.000      -0.000       0.000

   11    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000     164.149       0.000       0.000       0.000       0.000       0.000    -217.485

   12    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000     -47.563       0.000      -0.000     217.485       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.033       0.000      -0.000       0.000      -0.000       0.000       0.049

   14    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                3.927       0.000       0.000       0.000      -0.009      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.006       0.000       0.000      -0.052       0.000

   16    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.002      -0.000       0.000       0.006      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.040      -0.000      -0.000      -0.000      -4.080      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       1.164      -0.000      -0.000      -5.095       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -1.165      -0.000      -0.000      -5.095      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       4.078       0.000      -0.000       0.000       0.000      -0.000       0.001

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.001      -0.000      -0.000      -0.000       0.000       0.000      -5.591

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000      -0.000      -0.000     181.801      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -256.061       0.000       0.000     -75.857      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     256.061       0.000       0.000     -75.859      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -181.801      -0.000      -0.000       0.000      -0.000      -0.000       0.001

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      75.859       0.000      -0.000     -74.333       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      75.857       0.000       0.000      74.333       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.591      -0.000       0.000      -0.000      -0.001      -0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.030      -0.000      -0.000      -0.001      -0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.030       0.000       0.000       0.001       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.724       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.007

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>             100.796       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |0 0>               0.000      -0.000      -0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     100.430      -0.000      -0.000

    3    1  |0 0>               0.000      -0.000      37.347       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000    -100.425      -0.000

    4    1  |0 0>              36.978      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     200.739      -0.000      -0.000       0.000

    5    1  |0 0>              -0.000     -37.340       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000    -200.829

    6    1  |0 0>              21.987       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       2.680       0.000      -0.000       0.000

    7    1  |0 0>              -0.000     243.616       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      35.809

    8    1  |0 0>               0.000       0.000       0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      17.997       0.000      -0.000

    9    1  |0 0>              -0.000      -0.000     243.605      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000     -17.996       0.000

   10    1  |0 0>            -237.652      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -35.781       0.000       0.000      -0.000

   11    1  |0 0>             150.752       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       1.484      -0.000       0.000       0.000

   12    1  |0 0>             140.760       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -99.318      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000     -99.267

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      99.318      -0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      99.267      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000     172.008      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -4.180      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       4.636

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       5.228      -0.000      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       4.174       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -2.404

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.237      -0.000      -0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -3.164      -0.000

   13    1  |1 1>+          24111.903       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -6.761      -0.000       0.000      -0.000

   14    1  |1 1>+              0.000   24111.902       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -6.750

   15    1  |1 1>+              0.000       0.000   24111.987       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       6.757      -0.000

   16    1  |1 1>+              0.000       0.000       0.000   26185.626      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000    9431.606       0.000       0.000       0.000
                                6.761      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.000    9431.614       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000    9431.615       0.000
                               -0.000      -0.000      -6.757       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000    9431.767
                                0.000       6.750       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -3.927       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.033      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.002      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.006       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.009      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.006      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.052       0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.049       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     190.912      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -42.557      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             -190.912       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      42.557      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      99.318      -0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     -99.318       0.000       0.000      -0.000
                                6.745       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000     -99.336
                               -0.000       6.745       0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      99.336       0.000
                               -0.000       0.000       0.002      -0.000       0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000    -171.968      -0.000
                               -0.000       0.000      -7.724       0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       4.180      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000      -5.228       0.000       0.000       0.000
                                0.030       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       4.636
                                0.000       0.030      -0.000       0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       4.174      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      -0.237      -0.000      -0.000      -0.000
                                0.001      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       2.402
                                0.000      -0.001       0.000       0.000      -0.000       0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -3.164      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.007      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       6.748
                               -0.000     190.906      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000      -6.761       0.000       0.000      -0.000
                             -190.906       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       6.757      -0.000      -0.000
                                0.000       0.000       0.000      42.562      -0.000       0.000      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000     -42.562      -0.000      -0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.030

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       8.946      -0.000      -0.000      40.866       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -8.945       0.000      -0.000      40.867       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -33.051       0.000       0.000      -0.000       0.000       0.000      -0.595

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.041      -0.000      -0.000       0.000      33.029       0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.441       0.000      -0.000      -0.000      -0.000       0.000      44.554

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.007      -0.000      -0.000      -0.000     118.375      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -31.986      -0.000       0.000    -146.362      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      31.984      -0.000       0.000    -146.362      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -118.263      -0.000      -0.000       0.000       0.000       0.000      -6.596

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       4.902       0.000      -0.000       0.000      -0.000       0.000    -159.114

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.025

    1    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -5.228       0.000      -0.000       0.237       0.000

    2    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                             -172.008      -0.000       0.000       0.000      -4.174      -0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       4.180       0.000       0.000      -0.000       0.000       0.000       3.164

    4    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -4.636       0.000       0.000       2.404      -0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000      -0.943       0.000      -0.000      -4.409       0.000      -0.000

    6    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000     -78.041      -0.000       0.000    -164.149      -0.000

    7    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.943       0.000       0.000      -0.000     139.413       0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      78.041       0.000       0.000       0.000       0.000      -0.000      47.563

    9    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000    -139.413      -0.000       0.000    -116.588      -0.000      -0.000

   10    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                4.409      -0.000      -0.000      -0.000     116.588       0.000      -0.000       0.000

   11    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000     164.149       0.000       0.000       0.000       0.000       0.000    -217.485

   12    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000     -47.563       0.000      -0.000     217.485       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.033       0.000      -0.000       0.000      -0.000       0.000       0.049

   14    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                3.927       0.000       0.000       0.000      -0.009      -0.000      -0.000      -0.000

   15    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.006       0.000       0.000      -0.052       0.000

   16    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.002      -0.000       0.000       0.006      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>            9431.776       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   21495.972       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   21496.117       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   21496.117       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   21496.269       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   21496.500       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   21496.500       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   21496.523
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-             -0.000       0.000       5.228      -0.000       0.000       0.237       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000      -4.180      -0.000       0.000       0.000       0.000      -0.000       3.164
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-            171.968       0.000      -0.000       0.000      -4.174       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000      -0.000      -4.636       0.000       0.000      -2.402       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000      -0.000       0.000       0.942      -0.000       0.000      -4.410      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000      78.038      -0.000      -0.000    -164.152      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 1>-             -0.000     -78.038       0.000       0.000      -0.000      -0.000      -0.000      47.567
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    8    1  |1 1>-             -0.942       0.000      -0.000       0.000     139.411      -0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000    -139.411       0.000       0.000     116.590       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   10    1  |1 1>-             -0.000     164.152       0.000       0.000      -0.000       0.000       0.000     217.483
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              4.410       0.000       0.000      -0.000    -116.590      -0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000     -47.567      -0.000      -0.000    -217.483      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              3.930       0.000       0.000      -0.000       0.009      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   14    1  |1 1>-              0.000      -0.033      -0.000      -0.000       0.000       0.000      -0.000      -0.049
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.006       0.000       0.000       0.052       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   16    1  |1 1>-              0.000      -0.000       0.000       0.002       0.000       0.000       0.006      -0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -100.796       0.000      -0.000      -0.002       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -37.344      -0.000      -0.000     100.425      -0.000      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -37.345      -0.000      -0.000      -0.000      -0.000      -0.000       0.000    -100.366

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.574       0.000      -0.000      98.071      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000    -100.427      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      42.967      -0.000       0.000     175.164      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      17.991      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -243.604      -0.000       0.000      18.006       0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -243.604       0.000       0.000       0.000       0.000      -0.000       0.000     -18.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      11.664      -0.000      -0.000     -16.604       0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     281.312       0.000       0.000      31.815      -0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -140.772       0.000      -0.000      -0.003      -0.000       0.000

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                6.761      -0.000      -0.000      -0.000      -0.000       0.000      -0.000     198.590

    2    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      99.316       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -6.757       0.000       0.000     -99.316      -0.000       0.000

    4    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       6.750       0.000      -0.000    -198.590      -0.000      -0.000      -0.000

    5    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -3.927       0.000      -0.000      -0.040      -0.000      -0.000      -0.000

    6    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.033      -0.000       0.000       0.000       0.000      -0.000       0.000      -4.078

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.002       0.000       0.000       1.165      -0.000

    8    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.006       0.000       0.000      -1.164       0.000       0.000

    9    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.009      -0.000      -0.000       4.080       0.000       0.000      -0.000

   10    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.006       0.000       0.000       5.095      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.052       0.000       0.000       5.095       0.000       0.000

   12    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.049       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.001

   13    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     190.912      -0.000      -0.000      -6.745       0.000       0.000

   14    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -42.557      -0.000      -0.000      -6.745      -0.000

   15    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             -190.912       0.000       0.000       0.000       0.000       0.000      -0.000      -0.002

   16    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      42.557      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -99.318       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      99.318       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      99.336
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000     -99.336       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000     171.968       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -4.180       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       5.228      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -4.636
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -4.174       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.237       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -2.402
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       3.164       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   13    1  |1 0>           24111.903       0.000       0.000       0.000       0.000       0.000      -0.000      -6.748
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   14    1  |1 0>               0.000   24111.902       0.000       0.000       6.761      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000   24111.987       0.000       0.000      -6.757       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000   26185.626      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       6.761       0.000      -0.000    9431.606       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000      -0.000      -6.757      -0.000       0.000    9431.614       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000      -0.000       0.000       0.000       0.000       0.000    9431.615       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -6.748       0.000       0.000       0.000       0.000       0.000       0.000    9431.767
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -3.930      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000       0.033      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000       0.000      -0.006      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000      -0.000      -0.002       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-             -0.009      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000      -0.000      -0.052      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000      -0.000      -0.006       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-             -0.000       0.049       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000      -0.000     -42.557       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-             -0.000       0.000    -190.912       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000     190.912       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-             42.557      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.006      -0.000       0.000      -0.025      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      33.077      -0.000       0.000      -0.000       0.000       0.000      25.617

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -173.933      -0.000       0.000       0.000     -33.074      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -37.288       0.000       0.000      19.424       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -41.798      -0.000       0.000       1.570      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -8.256      -0.000       0.000     -35.274       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000    -149.669       0.000       0.000       5.565       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -118.395      -0.000      -0.000      -0.000       0.000      -0.000     -91.765

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -31.076      -0.000      -0.000       0.000     118.392      -0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -132.517       0.000      -0.000      72.897       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      33.290       0.000       0.000     124.117       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.008      -0.000       0.000      -0.026       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.040      -0.000      -0.000      -0.000      -4.080      -0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       1.164      -0.000      -0.000      -5.095       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -1.165      -0.000      -0.000      -5.095      -0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       4.078       0.000      -0.000       0.000       0.000      -0.000       0.001

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.001      -0.000      -0.000      -0.000       0.000       0.000      -5.591

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000      -0.000      -0.000     181.801      -0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -256.061       0.000       0.000     -75.857      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     256.061       0.000       0.000     -75.859      -0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -181.801      -0.000      -0.000       0.000      -0.000      -0.000       0.001

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      75.859       0.000      -0.000     -74.333       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      75.857       0.000       0.000      74.333       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.591      -0.000       0.000      -0.000      -0.001      -0.000      -0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.030      -0.000      -0.000      -0.001      -0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.030       0.000       0.000       0.001       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.724       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.007

    1    1  |1 0>               0.000      -0.000      -5.228       0.000      -0.000      -0.237      -0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       4.180       0.000      -0.000      -0.000      -0.000       0.000      -3.164
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    3    1  |1 0>            -171.968      -0.000       0.000      -0.000       4.174      -0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000       0.000       4.636      -0.000      -0.000       2.402      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000      -0.000      -0.942       0.000      -0.000       4.410       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    6    1  |1 0>              -0.000       0.000     -78.038       0.000       0.000     164.152       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000      78.038       0.000      -0.000       0.000       0.000       0.000     -47.567
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.942      -0.000       0.000       0.000    -139.411       0.000      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000     139.411       0.000      -0.000    -116.590      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   10    1  |1 0>               0.000    -164.152      -0.000      -0.000       0.000       0.000      -0.000    -217.483
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>              -4.410      -0.000      -0.000       0.000     116.590       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   12    1  |1 0>              -0.000      -0.000      47.567       0.000       0.000     217.483       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   13    1  |1 0>              -3.930      -0.000      -0.000       0.000      -0.009       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 0>              -0.000       0.033       0.000       0.000      -0.000      -0.000       0.000       0.049
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   15    1  |1 0>              -0.000      -0.000      -0.006      -0.000      -0.000      -0.052      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

   16    1  |1 0>              -0.000       0.000      -0.000      -0.002      -0.000      -0.000      -0.006       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-           9431.776       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   21495.972       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   21496.117       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   21496.117       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   21496.269       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   21496.500       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   21496.500       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   21496.523
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       57          58          59          60

    1    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000    -100.796       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000     -37.346       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.001

    4    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      37.551       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                               37.340      -0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     -20.992       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                             -243.616       0.000      -0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000    -243.605       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.001

   10    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000    -249.315       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000    -130.562       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000    -140.760       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                                6.745       0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       6.745       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.002      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -7.724       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.030       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.030      -0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.001      -0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.001       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.007

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000     190.906      -0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                             -190.906       0.000      -0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      42.562

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000     -42.562      -0.000

    1    1  |1 0>              -0.000      -6.761      -0.000       0.000
                                0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000       6.757       0.000
                               -0.000      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000

    4    1  |1 0>               6.748      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000

    5    1  |1 0>               3.930       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000      -0.033       0.000      -0.000
                               -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000      -0.000       0.006       0.000
                               -0.000       0.000      -0.000       0.000

    8    1  |1 0>              -0.000      -0.000       0.000       0.002
                                0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.009       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000

   10    1  |1 0>              -0.000       0.000       0.052       0.000
                                0.000      -0.000      -0.000       0.000

   11    1  |1 0>              -0.000      -0.000       0.000       0.006
                               -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000      -0.049      -0.000      -0.000
                                0.000       0.000      -0.000       0.000

   13    1  |1 0>               0.000      -0.000       0.000      42.557
                               -0.000      -0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000     190.912      -0.000
                               -0.000       0.000       0.000      -0.000

   15    1  |1 0>              -0.000    -190.912       0.000       0.000
                                0.000       0.000      -0.000       0.000

   16    1  |1 0>             -42.557       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   13    1  |1 1>-          24111.903       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   24111.902       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   24111.987       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   26185.626
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -25.39310800    -0.00000585       -1.28      0.00000000        0.00      0.0000
    2   -25.35148565     0.04161649     9133.76      0.04162235     9135.05      1.1326
    3   -25.35148565     0.04161650     9133.77      0.04162235     9135.05      1.1326
    4   -25.35148562     0.04161652     9133.77      0.04162238     9135.06      1.1326
    5   -25.35070533     0.04239681     9305.02      0.04240266     9306.31      1.1538
    6   -25.35070525     0.04239689     9305.04      0.04240275     9306.33      1.1538
    7   -25.35070484     0.04239731     9305.13      0.04240316     9306.42      1.1538
    8   -25.35070480     0.04239734     9305.14      0.04240320     9306.43      1.1538
    9   -25.35070477     0.04239738     9305.15      0.04240323     9306.43      1.1539
   10   -25.34922354     0.04387860     9630.24      0.04388446     9631.52      1.1942
   11   -25.34922344     0.04387870     9630.26      0.04388456     9631.55      1.1942
   12   -25.34922344     0.04387870     9630.26      0.04388456     9631.55      1.1942
   13   -25.34922340     0.04387875     9630.27      0.04388460     9631.56      1.1942
   14   -25.34922332     0.04387882     9630.29      0.04388468     9631.57      1.1942
   15   -25.34922332     0.04387882     9630.29      0.04388468     9631.57      1.1942
   16   -25.34922330     0.04387885     9630.29      0.04388470     9631.58      1.1942
   17   -25.34042385     0.05267829    11561.55      0.05268415    11562.83      1.4336
   18   -25.34042221     0.05267993    11561.91      0.05268579    11563.19      1.4337
   19   -25.34042215     0.05267999    11561.92      0.05268585    11563.21      1.4337
   20   -25.34042207     0.05268008    11561.94      0.05268593    11563.22      1.4337
   21   -25.34042206     0.05268009    11561.94      0.05268594    11563.23      1.4337
   22   -25.29692566     0.09617649    21108.30      0.09618234    21109.58      2.6173
   23   -25.29692537     0.09617677    21108.36      0.09618262    21109.65      2.6173
   24   -25.29692483     0.09617732    21108.48      0.09618317    21109.77      2.6173
   25   -25.29692483     0.09617732    21108.48      0.09618317    21109.77      2.6173
   26   -25.29692464     0.09617750    21108.52      0.09618336    21109.81      2.6173
   27   -25.29557266     0.09752948    21405.25      0.09753534    21406.53      2.6541
   28   -25.29557266     0.09752949    21405.25      0.09753534    21406.53      2.6541
   29   -25.29557239     0.09752976    21405.31      0.09753561    21406.59      2.6541
   30   -25.29557160     0.09753054    21405.48      0.09753640    21406.76      2.6541
   31   -25.29557160     0.09753054    21405.48      0.09753640    21406.76      2.6541
   32   -25.29557138     0.09753076    21405.53      0.09753661    21406.81      2.6541
   33   -25.29557119     0.09753096    21405.57      0.09753681    21406.86      2.6541
   34   -25.29391630     0.09918585    21768.78      0.09919170    21770.06      2.6991
   35   -25.29391628     0.09918586    21768.78      0.09919171    21770.06      2.6991
   36   -25.29391627     0.09918588    21768.78      0.09919173    21770.07      2.6991
   37   -25.29391627     0.09918588    21768.78      0.09919173    21770.07      2.6991
   38   -25.29391559     0.09918655    21768.93      0.09919241    21770.22      2.6992
   39   -25.29391534     0.09918680    21768.99      0.09919265    21770.27      2.6992
   40   -25.29391482     0.09918732    21769.10      0.09919318    21770.39      2.6992
   41   -25.29391482     0.09918732    21769.10      0.09919318    21770.39      2.6992
   42   -25.29391458     0.09918756    21769.15      0.09919342    21770.44      2.6992
   43   -25.28641891     0.10668323    23414.26      0.10668908    23415.55      2.9032
   44   -25.28641885     0.10668329    23414.28      0.10668915    23415.56      2.9032
   45   -25.28641881     0.10668334    23414.29      0.10668919    23415.57      2.9032
   46   -25.28641869     0.10668346    23414.31      0.10668931    23415.60      2.9032
   47   -25.28641868     0.10668346    23414.31      0.10668931    23415.60      2.9032
   48   -25.28506860     0.10803355    23710.62      0.10803940    23711.91      2.9399
   49   -25.28411732     0.10898482    23919.40      0.10899068    23920.69      2.9658
   50   -25.28411716     0.10898498    23919.44      0.10899083    23920.72      2.9658
   51   -25.28411716     0.10898498    23919.44      0.10899084    23920.72      2.9658
   52   -25.28176576     0.11133639    24435.51      0.11134224    24436.80      3.0298
   53   -25.28176561     0.11133654    24435.55      0.11134239    24436.83      3.0298
   54   -25.28176560     0.11133654    24435.55      0.11134240    24436.83      3.0298
   55   -25.28176541     0.11133673    24435.59      0.11134258    24436.87      3.0298
   56   -25.28176450     0.11133764    24435.79      0.11134349    24437.07      3.0298
   57   -25.27378437     0.11931777    26187.22      0.11932363    26188.51      3.2470
   58   -25.27378437     0.11931777    26187.22      0.11932363    26188.51      3.2470
   59   -25.27378437     0.11931777    26187.22      0.11932363    26188.51      3.2470
   60   -25.27193567     0.12116647    26592.97      0.12117232    26594.25      3.2973

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99997293 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000031 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000174  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.10966458
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000162 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.10957039  0.00282642 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000013 -0.00000000 -0.00000000 -0.10964740 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000132  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00282640 -0.10954954  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00310134  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000290 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00310796
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000290 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00309220 -0.00016711  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00016687 -0.00310053  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00006750 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000025 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.54780316 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.54780242 -0.00000000 -0.00000000 -0.40590203 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000155  0.00000000 -0.00000000  0.00000488  0.00000000

   3    1  |1 1>+          0.00000021  0.00000000 -0.00000000  0.00000000  0.39701145  0.70783715 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.54754374  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.40585879
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.31626315  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70265453
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000455 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000333  0.00000000 -0.00000000  0.00000982  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000029  0.00000000  0.00000000 -0.00000000  0.00000722  0.00000455 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000415  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000776
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000024  0.00000000 -0.00000000 -0.00000297  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000118  0.00000000  0.00000000 -0.00000000  0.00000088 -0.00000687  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00000266  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00424765 -0.00000000 -0.00000000 -0.00000000 -0.00087723  0.00049140  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00041787 -0.00000000 -0.00000000 -0.00087107 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000 -0.00041542  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000 -0.00000209  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.81150994  0.01009653 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.54780057  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40590715

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.54779963  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000975  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00012714  0.00000000  0.00000000  0.81145097  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000179 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.63231821 -0.00000000 -0.00000000  0.00016291 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001127  0.00000014 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000220  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000188

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000220  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001118  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000410  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00001215

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000410 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000141  0.00000000 -0.00000000 -0.00000000 -0.00000006  0.00000514 -0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00041645 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00041645  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00087324

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00424763 -0.00000000 -0.00000000 -0.00000000  0.00001251 -0.00100547  0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000206  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.54780257 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40590288

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000022 -0.00000000  0.00000000 -0.00000000  0.41449820 -0.69774235 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000155  0.00000000 -0.00000000  0.00000488  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.54780089  0.00000000  0.00000000  0.40590289  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.54767212 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.31604141  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000455 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000781

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000029  0.00000000  0.00000000  0.00000000  0.00000734 -0.00000436 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000333 -0.00000000 -0.00000000 -0.00000983 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000415 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000118 -0.00000000 -0.00000000  0.00000000 -0.00000071 -0.00000689  0.00000000  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000024  0.00000000 -0.00000000 -0.00000297 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000266 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00001008

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00041788 -0.00000000 -0.00000000 -0.00087107 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00424765 -0.00000000  0.00000000 -0.00000000  0.00086473  0.00051307 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00041542 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00086830

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000209 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00001605  0.00000000  0.00000000 -0.00000603  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.10964056  0.00000000  0.00000000  0.00001598 -0.00000000  0.00000000  0.00000608  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00001344  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00001873 -0.00000000 -0.00000000  0.00000010
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000007  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000668  0.00000000  0.00000000  0.00000006
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000  0.00000204 -0.00000000  0.00000000  0.00000377 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00310788  0.00000000 -0.00000000 -0.00000202 -0.00000000 -0.00000000 -0.00000379 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000015 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.40590321 -0.00000000  0.00000001  0.68666090 -0.00000000 -0.00000001 -0.24828434 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.58107728 -0.00000000  0.00000000  0.44215275
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000042  0.00000000  0.00000000 -0.00000148

   3    1  |1 1>+         -0.00000000 -0.57735029  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000  0.47675839 -0.00000001 -0.00000000 -0.55332474  0.00000003 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000 -0.36085552  0.00000001 -0.00000000 -0.51963471  0.00000003 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000786 -0.00000000  0.00000000  0.00002021 -0.00000000 -0.00000000 -0.00040455  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00017093 -0.00000000 -0.00000000  0.00010476
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00031348 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.00038511 -0.00000000  0.00000000  0.00012486 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00036349 -0.00000000  0.00000000  0.00048673
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00026146  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00001013 -0.00000000 -0.00000000 -0.00028019 -0.00000000 -0.00000000 -0.00040980  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000059 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000017 -0.00000000  0.00000000  0.00000192
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00086825 -0.00000000  0.00000000  0.00000181  0.00000000  0.00000000  0.00000275 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.57735119 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.41659067 -0.00000001  0.00000000  0.59966586 -0.00000003  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.40590833  0.00000000  0.00000001  0.41210528  0.00000000  0.00000003  0.60275792 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000042  0.00000000  0.00000000 -0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.57749375 -0.00000000 -0.00000000 -0.00510545

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000259
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00675621 -0.00000000  0.00000000  0.77467901

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00040984  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00046280  0.00000000  0.00000000  0.00037194 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000190  0.00000000 -0.00000000 -0.00046556  0.00000000  0.00000000  0.00036848 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00040949  0.00000000  0.00000000  0.00000351

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00021856 -0.00000000  0.00000000  0.00008663 -0.00000000 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00001222  0.00000000 -0.00000000 -0.00021790 -0.00000000 -0.00000000 -0.00008826  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00087319  0.00000000 -0.00000000 -0.00000037 -0.00000000 -0.00000000 -0.00000132  0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000038 -0.00000000 -0.00000000  0.00000132 -0.00000000  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003

   1    1  |1 1>-          0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.68478936 -0.00000001  0.00000000 -0.25340061  0.00000001 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.57734889  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000041 -0.00000000 -0.00000000  0.00000151
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.57341435 -0.00000000  0.00000000  0.45204736

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.40557505  0.00000000 -0.00000001 -0.48072922  0.00000000  0.00000003  0.54996324 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.70282121 -0.00000000 -0.00000001 -0.35716239 -0.00000000 -0.00000003 -0.52208976  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00001720 -0.00000000 -0.00000000 -0.00040468  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00031348 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00016911  0.00000000  0.00000000  0.00010766

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000782  0.00000000 -0.00000000 -0.00038417 -0.00000000 -0.00000000 -0.00012773  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00026145 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00037178  0.00000000 -0.00000000 -0.00048043

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00028324 -0.00000000  0.00000000  0.00040770 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000021  0.00000000 -0.00000000 -0.00000192

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000059  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000183  0.00000000 -0.00000000 -0.00000274  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000002 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.99393487 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00701081
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.99393751  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.01193656  0.99386952 -0.00000000 -0.00000000  0.00702057  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.99393679  0.00000000 -0.00700783 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000380 -0.00000000  0.00000001  0.00000000

   6    1  |0 0>           0.00000000  0.99387172  0.01193653  0.00000000 -0.00000000  0.00009324  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00043186 -0.00000000  0.10156623  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000017 -0.00000000

   8    1  |0 0>          -0.00043286  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.10159002
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00043278 -0.00000000 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00001738  0.00043135 -0.00000000 -0.00000000 -0.10155998 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00043306 -0.00001730 -0.00000000  0.00000000  0.00420332  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.04476338  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.04476562 -0.00000000  0.00046209  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000017  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.07742914 -0.04485874  0.00000000 -0.00000000 -0.00045683 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.04478220 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00045879
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.07753413  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00079251
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00347926 -0.00000000 -0.00000000 -0.00000000 -0.00000003
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00439633 -0.00000000  0.61361824  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000102 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00081100 -0.00393418  0.00000000  0.00000000  0.54804560  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00347855  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.48555367
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00016454 -0.00000000  0.02286018  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000000

  11    1  |1 1>+         -0.00000000 -0.00373949 -0.00198727  0.00000000  0.00000000  0.27669801  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00269508  0.00000000  0.00000000  0.00000000  0.00000003
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000 -0.00163460 -0.00282568  0.00000000  0.00000000 -0.00784289 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00283361  0.00000000 -0.00782020 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000001  0.00000000

  15    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00283454 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000011
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00012009 -0.08948606  0.00000000  0.00000000 -0.00091327 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.04477472  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00046321

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.04476490  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000034  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.08952493  0.00000000 -0.00091100 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00001811  0.00000000 -0.00000018  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000465 -0.00347756  0.00000000  0.00000000  0.48542664  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00094084 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.13114005

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00094083 -0.00000000 -0.00000000 -0.00000000 -0.00000001

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000081  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00347463 -0.00000000  0.48519301  0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00429841 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.59952785

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00429873  0.00000000  0.00000000  0.00000000  0.00000004

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00468569 -0.00000627  0.00000000 -0.00000000  0.00004468 -0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00283370 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00283351  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00781421

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00326044 -0.00000438  0.00000000 -0.00000000 -0.00000067  0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.04477321  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00045818

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.07754927 -0.04465070  0.00000000  0.00000000 -0.00045672 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000017  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.04476563  0.00000000 -0.00046209 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.04474107  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.07753524  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00347905 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.48580651

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00082161 -0.00393196  0.00000000  0.00000000  0.54802543  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000102 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00439633  0.00000000 -0.61361752 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00347878 -0.00000000 -0.00000000 -0.00000000 -0.00000003

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00373412  0.00199736 -0.00000000  0.00000000 -0.27678088 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00016459 -0.00000000  0.02286879  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00269485 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.37563973

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00283361  0.00000000 -0.00782022 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00162700  0.00283006 -0.00000000 -0.00000000  0.00784356  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00283435  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00781643

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000000 -0.00000021  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000234 -0.00000000  0.00000000 -0.00000000 -0.00000312 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00701130 -0.00000000 -0.00000000  0.00000233 -0.00000000 -0.00000316  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00009347  0.00000000 -0.00000000  0.00000094 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00703772  0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000287
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000001  0.00000000 -0.00003282 -0.00000000 -0.00000000 -0.00000000 -0.00008838  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.10158996 -0.00000000 -0.00000000  0.00003282  0.00000000 -0.00008846  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000 -0.00421125  0.00000000 -0.00000000 -0.00001107 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.10174692 -0.00000000  0.00000000  0.00000054  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000145  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00045817 -0.00000000 -0.00000000  0.00041583 -0.00000000  0.00029517 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00040534
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000005

   3    1  |1 1>+          0.00000000 -0.00079154 -0.00000000 -0.00000000 -0.00040907 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00050497  0.00000000 -0.00000000 -0.00000000 -0.00006208 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00016010  0.00000000  0.00000000  0.00000000  0.00041714  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.48580332 -0.00000000  0.00000001 -0.49459349  0.00000000  0.29767626 -0.00000005 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000008  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.24759393
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00003261

   8    1  |1 1>+         -0.00000000  0.11360176 -0.00000000 -0.00000000 -0.44280047 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000003  0.00000000 -0.16486132 -0.00000000  0.00000000  0.00000009  0.55302215  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.52234454
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00006879

  11    1  |1 1>+          0.00000000 -0.51945583  0.00000000  0.00000000  0.37010394  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.37564408  0.00000000  0.00000000 -0.25553093 -0.00000000  0.65934922 -0.00000011 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000018  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00454580  0.00000000 -0.00000000 -0.00000275 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000442
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00781645  0.00000000  0.00000000 -0.00000228 -0.00000000  0.00000214 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000 -0.00000076 -0.00000000 -0.00000000 -0.00000000 -0.00000042 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000007  0.00000000  0.00000000  0.00040809  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00018560 -0.00000000 -0.00000000 -0.00000000 -0.00047877 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00046321 -0.00000000  0.00000000 -0.00018573 -0.00000000  0.00047872 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000005
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00040786

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000080

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00003190  0.00000000  0.00000000  0.57784175  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00000000  0.81125125  0.00000002 -0.00000000 -0.00000004 -0.24810667 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000007 -0.00000000  0.00000000
                          -0.13113121 -0.00000000 -0.00000002  0.81118751 -0.00000000  0.24832257 -0.00000004 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00007609
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.57776781

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000004 -0.00000000 -0.07026658 -0.00000000  0.00000000  0.00000006  0.33029114  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000009 -0.00000000  0.00000000
                           0.59952963  0.00000000 -0.00000000  0.07016866 -0.00000000  0.33030574 -0.00000006 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.65115199  0.00000000 -0.00000000 -0.00000291 -0.00000000  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00781423  0.00000000  0.00000000 -0.00000361 -0.00000000  0.00000122 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000361  0.00000000  0.00000000  0.00000000  0.00000120 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00908399 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00041591  0.00000000 -0.00000000 -0.00000000 -0.00029506 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00079161 -0.00000000 -0.00000000 -0.00040907 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000005
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00040637

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00045847 -0.00000000  0.00000000 -0.00050502  0.00000000 -0.00006205  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00079269 -0.00000000 -0.00000000  0.00016001  0.00000000 -0.00041712  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000003 -0.00000000 -0.49451357 -0.00000001  0.00000000 -0.00000005 -0.29779924 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.11368851 -0.00000000 -0.00000000 -0.44280607 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003267
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.24809537

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000015 -0.00000000  0.00000000
                          -0.48555369 -0.00000000 -0.00000000  0.16471767 -0.00000000  0.55306507 -0.00000009 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.51941456 -0.00000000 -0.00000000 -0.37009731 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00006849
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.52008265

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000003 -0.00000000  0.25536366  0.00000000  0.00000000  0.00000011  0.65941828  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000441

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00454471  0.00000000  0.00000000  0.00000273  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000229  0.00000000 -0.00000000  0.00000000  0.00000216 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000011  0.00000000 -0.00000000 -0.00000076 -0.00000000  0.00000042 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000 -0.00000066 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000043 -0.00000000 -0.00000000  0.00000000 -0.00000070
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000043  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00001124  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000239 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000230 -0.00000000 -0.00000000  0.00000000 -0.00000015  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000002  0.00000000  0.00000006 -0.00000000 -0.00000000  0.00000000  0.00002009 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00003055 -0.00000000 -0.00000000 -0.00000000 -0.00002239
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003033 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000055 -0.00000000 -0.00000000 -0.00000000  0.00013269  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00001647  0.00000000  0.00000000 -0.00000000 -0.00000569 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000380 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000222  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00031447  0.00000000 -0.00000272 -0.00000000 -0.00000000  0.00000000  0.00000156  0.00000000
                           0.00000014 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000288  0.00000000  0.00000000 -0.00000000 -0.00000251  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000214 -0.00000000 -0.00000000 -0.00000000 -0.00000410
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000085  0.00000000 -0.00000000  0.00000000 -0.00000328
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000008  0.61822667  0.00000000 -0.00000000 -0.00000004
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.15158601 -0.00000000  0.69077074  0.00000000  0.00000000 -0.00000000 -0.24089792 -0.00000000
                          -0.00006906  0.00000000 -0.00205151  0.00000000 -0.00000000 -0.00000000 -0.00101751  0.00000000

   8    1  |1 1>+         -0.00000000 -0.69686438 -0.00000000 -0.00000000  0.00000000 -0.02005238  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.60611617 -0.00000008 -0.00000000  0.00000000  0.24769095
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.68990325 -0.00000000 -0.15114536 -0.00000000 -0.00000000 -0.00000000 -0.47729649  0.00000000
                          -0.00031431 -0.00000000  0.00044888 -0.00000000  0.00000000  0.00000000 -0.00201602  0.00000000

  11    1  |1 1>+          0.00000000 -0.10965243 -0.00000000 -0.00000000  0.00000000 -0.53434595  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01614706  0.00000000  0.00000000  0.00000013
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000770 -0.00000000 -0.00000000  0.00000000  0.00000458  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000203 -0.00000000 -0.00000967 -0.00000000 -0.00000000  0.00000000 -0.00000716 -0.00000000
                           0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000082  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000049  0.00000000 -0.00000000  0.00000000  0.00000217
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000314  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000020 -0.00000000 -0.00000000 -0.00000000 -0.00000314

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000020 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000
                           0.00000056  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000489  0.00000000

   5    1  |1 0>          -0.00000025 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00054161 -0.00000000  0.00000246  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00018443  0.00000000  0.00000000 -0.00000000  0.65419104 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.48403127 -0.00000006 -0.00000000  0.00000000  0.16925704

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000006  0.48402628  0.00000000  0.00000000  0.00000004

   9    1  |1 0>          -0.00000043  0.00000000 -0.00000014 -0.00000000  0.00000000  0.00000000 -0.00276416  0.00000000
                           0.00094472  0.00000000 -0.00004809 -0.00000000 -0.00000000  0.00000000  0.65442077 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.12603083  0.00000002 -0.00000000  0.00000000  0.71192382

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000002  0.12605396 -0.00000000 -0.00000000 -0.00000015

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.06805340  0.00000000  0.00000000 -0.00000000  0.00021469  0.00000000 -0.00000000

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000982  0.00000000  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000986  0.00000000 -0.00000000  0.00000000  0.00002010

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000476  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000160  0.00000000  0.00000119 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000222 -0.00000000  0.00000000  0.00000000  0.00000346

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000288 -0.00000000 -0.00000000  0.00000000 -0.00000251  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000014  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                           0.00031314  0.00000000 -0.00000272 -0.00000000 -0.00000000  0.00000000 -0.00000156  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000214  0.00000000  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000086 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.61821792 -0.00000008 -0.00000000  0.00000000 -0.21464950

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.69687365  0.00000000  0.00000000 -0.00000000 -0.01963179 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00006869 -0.00000000  0.00205141 -0.00000000  0.00000000  0.00000000 -0.00101791  0.00000000
                          -0.15076595 -0.00000000  0.69073791  0.00000000  0.00000000 -0.00000000  0.24099265 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000008 -0.60610562 -0.00000000 -0.00000000 -0.00000005

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.10996453  0.00000000 -0.00000000 -0.00000000  0.53452870  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00031509 -0.00000000  0.00044906 -0.00000000  0.00000000 -0.00000000  0.00201594 -0.00000000
                           0.69160916 -0.00000000  0.15120578  0.00000000  0.00000000 -0.00000000 -0.47727812  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.01611635 -0.00000000  0.00000000 -0.00000000 -0.59757119

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000
                          -0.00000203 -0.00000000  0.00000965  0.00000000  0.00000000 -0.00000000 -0.00000716  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000775  0.00000000 -0.00000000  0.00000000 -0.00000454  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000081  0.00000000 -0.00000000  0.00000000 -0.00001551

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000049  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>           0.00000000  0.00000241 -0.00000036  0.00000003 -0.00000000  0.00000000  0.00000000  0.00733631
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00209768 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000070  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00209781  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000002  0.00019689  0.00208705  0.00000000  0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00209738 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000037 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000139 -0.00208785  0.00019695 -0.00000000  0.00000000  0.00000000  0.00000070
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.92785623 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00016177 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.92786215  0.00000002  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00002244 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.92786208 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000015  0.00000000

  10    1  |0 0>           0.00000000 -0.00000012  0.11304130  0.92090191  0.00000000  0.00000000  0.00000000  0.00000252
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000399  0.92082695 -0.11303818  0.00000000 -0.00000000 -0.00000000  0.00005865
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000 -0.00001071  0.00000269 -0.00000023 -0.00000000  0.00000000 -0.00000000 -0.08489166
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000346 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00127372 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00127221 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000022 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000190  0.00229513  0.00108552  0.00000000 -0.00000000  0.00000000  0.00000059
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00127403  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00219731 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.21461803  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.04815894  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.06089237  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001062  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.03633623  0.01565086  0.05334672  0.00000000  0.00000000  0.00000000 -0.00000674
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000005  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04817167 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00226062  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000039  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.46409560 -0.04930361  0.03163841  0.00000000  0.00000000  0.00000000 -0.00001963
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.59757229  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.03733855  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

  13    1  |1 1>+          0.00000000  0.00001951 -0.12594833  0.26536391  0.00000000  0.00000000  0.00000000  0.57526044
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.25428587  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00004433  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00001552  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.25425079  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000030  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00020432  0.00252613  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00127273 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000314 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00127270 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000044 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00253388  0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000051  0.00000000  0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00016888  0.00388155  0.04798526  0.00000000  0.00000000  0.00000000 -0.00000001

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  0.01301177  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.16926710  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.01301096 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000840 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.04817091  0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000015  0.00000000  0.00000000 -0.00000000  0.00000000  0.05955808  0.00000000  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000
                           0.71192109 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.05955826 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.75289482  0.06459317 -0.00522462  0.00000000 -0.00000000 -0.00000000 -0.00002580

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000
                           0.00002009 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.25429114  0.00000000

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.25429125 -0.00000001 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00002394  0.29282800 -0.02368445  0.00000000 -0.00000000 -0.00000000  0.57522949

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00127376 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000190 -0.00209084  0.00144026  0.00000000  0.00000000  0.00000000 -0.00000059

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000022 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00127221  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000410 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00127310  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000328 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00219777 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  0.04815918  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.03635338 -0.00687463  0.05516798  0.00000000  0.00000000  0.00000000  0.00000674

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00001062  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.06089220 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                           0.24771651 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.04817146  0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.46381326 -0.05374713 -0.02330444 -0.00000000  0.00000000 -0.00000000 -0.00001964

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000039 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00226145  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000013 -0.00000000  0.00000000 -0.00000000  0.00000000  0.03733811  0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00004433 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.25428532  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00001952 -0.16695789 -0.24167272 -0.00000000  0.00000000 -0.00000000  0.57526171

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.25425044 -0.00000001 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000216  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000031 -0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000032
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000001 -0.00000000 -0.00000000  0.00368871  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00368893 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00368024  0.00003990
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000001  0.00000000  0.00000000 -0.00368839 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00004000 -0.00367431
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000082 -0.00000000 -0.00000000  0.35882766  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000229  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.00005425 -0.00000000 -0.00000000  0.35880558  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00005348  0.00000000 -0.00000000  0.35880576 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.35864174 -0.01398125
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01397556 -0.35878244
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000934
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00032320  0.00000000 -0.00000000  0.00015203 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00032243 -0.00000000 -0.00000000  0.00015234  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000013 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00015115 -0.00026190
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00032255  0.00000000 -0.00000000  0.00015266  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00018151  0.00000000  0.00000000 -0.00026308 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00001272 -0.00000000  0.00000000 -0.01282945  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000983  0.00000000  0.00000000 -0.01621933 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01449698 -0.00296811
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000497  0.00000000  0.00000000 -0.01282525 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000012 -0.00000000 -0.00000000 -0.00060273 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00730462  0.01377554
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000  0.00001779  0.00000000 -0.00000000  0.00995149 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.65877624 -0.38248470
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.70685812 -0.00000000 -0.00000000  0.65974820  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00029441 -0.00000000 -0.00000000 -0.00000422  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000003 -0.70681468  0.00000000 -0.00000001  0.65980829 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  16    1  |1 1>+          0.00000000  0.02654975 -0.00000000  0.00000000 -0.00000404  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00029946  0.00000075

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00032312  0.00000000  0.00000000 -0.00015189 -0.00000000  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00032311  0.00000000 -0.00000000  0.00015188 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000007  0.00000000 -0.00000000 -0.00030040 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000016 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00037569  0.00000000  0.00000000 -0.00000006  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01280627  0.00003178

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000124  0.00000000 -0.00000000  0.00346567  0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000126 -0.00000000  0.00000000 -0.00346547  0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000008  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000004 -0.00000000  0.00000000 -0.01281920 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00001460  0.00000000 -0.00000000  0.01586634  0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00001465  0.00000000 -0.00000000  0.01586640 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00004283 -0.01725161

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000003  0.70690011  0.00000000 -0.00000001  0.65970132 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.70690089 -0.00000003 -0.00000000  0.65970045  0.00000001 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00189615  0.76176342

  16    1  |1 0>           0.00001106 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.02654793  0.00000000  0.00000000  0.00000005  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00032320 -0.00000000  0.00000000 -0.00015205 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00014984  0.00026265

   3    1  |1 1>-         -0.00000013  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00032243 -0.00000000 -0.00000000 -0.00015234 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00032262  0.00000000 -0.00000000  0.00015255 -0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00018138  0.00000000 -0.00000000  0.00026313 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00001276 -0.00000000 -0.00000000  0.01282952  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01448189  0.00304044

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000010 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000993  0.00000000  0.00000000  0.01621930  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000498 -0.00000000  0.00000000 -0.01282518  0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00737330  0.01373893

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000011  0.00000000  0.00000000 -0.00060296 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00001783 -0.00000000 -0.00000000  0.00995139  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-          0.00029441 -0.00000000 -0.00000000  0.00000422 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.70685662  0.00000000  0.00000000  0.65975002  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.66067069 -0.37920153

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.70681390  0.00000003 -0.00000000  0.65980926  0.00000001 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.02654976  0.00000000  0.00000000  0.00000399  0.00000000 -0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00055730
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000002  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000002  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000003
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000026  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.00000000  0.00000026  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000004
                           0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000073
                           0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000000  0.00000000  0.99639019
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000744 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000744  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000014
                           0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000743 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000418 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000009 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000032  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000148
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000002 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000128  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000475
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00000129 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.04900890
                           0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.01877221  0.00000000  0.00000000  0.00000000
                           0.00000061  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000020 -0.01877509  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000002  0.99964749 -0.00001052 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000742 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000742 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000865 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000001

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000041 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000041 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000115  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000115  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000435

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000020  0.01877193  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.01877191  0.00000020 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.04901575

  16    1  |1 0>          -0.00003252 -0.00000000 -0.00000000  0.00000000
                           0.99964754  0.00000002  0.00000004 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000744  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000014

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000744  0.00000000  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000743 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000418 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000009  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000146

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000032  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000002 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000477

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000128 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000129 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000061  0.00000000  0.00000000  0.00000000
                          -0.01877223 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.04900890

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.01877509 -0.00000020 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000004  0.00001052  0.99964749 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -25.39310800     -0.00000585       -1.28      0.00000000        0.00      0.0000
     2   1    -25.35148565      0.04161649     9133.76      0.04162235     9135.05      1.1326
     3   1    -25.35148565      0.04161650     9133.77      0.04162235     9135.05      1.1326
     4   1    -25.35148562      0.04161652     9133.77      0.04162238     9135.06      1.1326
     5   1    -25.35070533      0.04239681     9305.02      0.04240266     9306.31      1.1538
     6   1    -25.35070525      0.04239689     9305.04      0.04240275     9306.33      1.1538
     7   1    -25.35070484      0.04239731     9305.13      0.04240316     9306.42      1.1538
     8   1    -25.35070480      0.04239734     9305.14      0.04240320     9306.43      1.1538
     9   1    -25.35070477      0.04239738     9305.15      0.04240323     9306.43      1.1539
    10   1    -25.34922354      0.04387860     9630.24      0.04388446     9631.52      1.1942
    11   1    -25.34922344      0.04387870     9630.26      0.04388456     9631.55      1.1942
    12   1    -25.34922344      0.04387870     9630.26      0.04388456     9631.55      1.1942
    13   1    -25.34922340      0.04387875     9630.27      0.04388460     9631.56      1.1942
    14   1    -25.34922332      0.04387882     9630.29      0.04388468     9631.57      1.1942
    15   1    -25.34922332      0.04387882     9630.29      0.04388468     9631.57      1.1942
    16   1    -25.34922330      0.04387885     9630.29      0.04388470     9631.58      1.1942
    17   1    -25.34042385      0.05267829    11561.55      0.05268415    11562.83      1.4336
    18   1    -25.34042221      0.05267993    11561.91      0.05268579    11563.19      1.4337
    19   1    -25.34042215      0.05267999    11561.92      0.05268585    11563.21      1.4337
    20   1    -25.34042207      0.05268008    11561.94      0.05268593    11563.22      1.4337
    21   1    -25.34042206      0.05268009    11561.94      0.05268594    11563.23      1.4337
    22   1    -25.29692566      0.09617649    21108.30      0.09618234    21109.58      2.6173
    23   1    -25.29692537      0.09617677    21108.36      0.09618262    21109.65      2.6173
    24   1    -25.29692483      0.09617732    21108.48      0.09618317    21109.77      2.6173
    25   1    -25.29692483      0.09617732    21108.48      0.09618317    21109.77      2.6173
    26   1    -25.29692464      0.09617750    21108.52      0.09618336    21109.81      2.6173
    27   1    -25.29557266      0.09752948    21405.25      0.09753534    21406.53      2.6541
    28   1    -25.29557266      0.09752949    21405.25      0.09753534    21406.53      2.6541
    29   1    -25.29557239      0.09752976    21405.31      0.09753561    21406.59      2.6541
    30   1    -25.29557160      0.09753054    21405.48      0.09753640    21406.76      2.6541
    31   1    -25.29557160      0.09753054    21405.48      0.09753640    21406.76      2.6541
    32   1    -25.29557138      0.09753076    21405.53      0.09753661    21406.81      2.6541
    33   1    -25.29557119      0.09753096    21405.57      0.09753681    21406.86      2.6541
    34   1    -25.29391630      0.09918585    21768.78      0.09919170    21770.06      2.6991
    35   1    -25.29391628      0.09918586    21768.78      0.09919171    21770.06      2.6991
    36   1    -25.29391627      0.09918588    21768.78      0.09919173    21770.07      2.6991
    37   1    -25.29391627      0.09918588    21768.78      0.09919173    21770.07      2.6991
    38   1    -25.29391559      0.09918655    21768.93      0.09919241    21770.22      2.6992
    39   1    -25.29391534      0.09918680    21768.99      0.09919265    21770.27      2.6992
    40   1    -25.29391482      0.09918732    21769.10      0.09919318    21770.39      2.6992
    41   1    -25.29391482      0.09918732    21769.10      0.09919318    21770.39      2.6992
    42   1    -25.29391458      0.09918756    21769.15      0.09919342    21770.44      2.6992
    43   1    -25.28641891      0.10668323    23414.26      0.10668908    23415.55      2.9032
    44   1    -25.28641885      0.10668329    23414.28      0.10668915    23415.56      2.9032
    45   1    -25.28641881      0.10668334    23414.29      0.10668919    23415.57      2.9032
    46   1    -25.28641869      0.10668346    23414.31      0.10668931    23415.60      2.9032
    47   1    -25.28641868      0.10668346    23414.31      0.10668931    23415.60      2.9032
    48   1    -25.28506860      0.10803355    23710.62      0.10803940    23711.91      2.9399
    49   1    -25.28411732      0.10898482    23919.40      0.10899068    23920.69      2.9658
    50   1    -25.28411716      0.10898498    23919.44      0.10899083    23920.72      2.9658
    51   1    -25.28411716      0.10898498    23919.44      0.10899084    23920.72      2.9658
    52   1    -25.28176576      0.11133639    24435.51      0.11134224    24436.80      3.0298
    53   1    -25.28176561      0.11133654    24435.55      0.11134239    24436.83      3.0298
    54   1    -25.28176560      0.11133654    24435.55      0.11134240    24436.83      3.0298
    55   1    -25.28176541      0.11133673    24435.59      0.11134258    24436.87      3.0298
    56   1    -25.28176450      0.11133764    24435.79      0.11134349    24437.07      3.0298
    57   1    -25.27378437      0.11931777    26187.22      0.11932363    26188.51      3.2470
    58   1    -25.27378437      0.11931777    26187.22      0.11932363    26188.51      3.2470
    59   1    -25.27378437      0.11931777    26187.22      0.11932363    26188.51      3.2470
    60   1    -25.27193567      0.12116647    26592.97      0.12117232    26594.25      3.2973

 E0 =    -25.39310214 is the energy of the lowest zeroth-order state
 E1 =    -25.39310800 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99997293 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000031 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000174  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.10966458
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000162 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.10957039  0.00282642 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000013 -0.00000000 -0.00000000 -0.10964740 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000132  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00282640 -0.10954954  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00310134  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000290 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00310796
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000290 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00309220 -0.00016711  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00016687 -0.00310053  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00006750 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000025 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000000  0.54780316 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.54780242 -0.00000000 -0.00000000 -0.40590203 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000155  0.00000000 -0.00000000  0.00000488  0.00000000

 15  1     3    1  |1 1>+       0.00000021  0.00000000 -0.00000000  0.00000000  0.39701145  0.70783715 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.54754374  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.40585879
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.31626315  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.70265453
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000455 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000333  0.00000000 -0.00000000  0.00000982  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000029  0.00000000  0.00000000 -0.00000000  0.00000722  0.00000455 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000415  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000776
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000024  0.00000000 -0.00000000 -0.00000297  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000118  0.00000000  0.00000000 -0.00000000  0.00000088 -0.00000687  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00000266  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00424765 -0.00000000 -0.00000000 -0.00000000 -0.00087723  0.00049140  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00041787 -0.00000000 -0.00000000 -0.00087107 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000 -0.00041542  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000209  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.81150994  0.01009653 -0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.54780057  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40590715

 31  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.54779963  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000975  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00012714  0.00000000  0.00000000  0.81145097  0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000179 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.63231821 -0.00000000 -0.00000000  0.00016291 -0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001127  0.00000014 -0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000220  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000188

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000220  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00001118  0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000410  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00001215

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000410 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000141  0.00000000 -0.00000000 -0.00000000 -0.00000006  0.00000514 -0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00041645 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00041645  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00087324

 43  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00424763 -0.00000000 -0.00000000 -0.00000000  0.00001251 -0.00100547  0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000206  0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.54780257 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.40590288

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000022 -0.00000000  0.00000000 -0.00000000  0.41449820 -0.69774235 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000155  0.00000000 -0.00000000  0.00000488  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.54780089  0.00000000  0.00000000  0.40590289  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.54767212 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.31604141  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000455 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000781

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000029  0.00000000  0.00000000  0.00000000  0.00000734 -0.00000436 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000333 -0.00000000 -0.00000000 -0.00000983 -0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000415 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000118 -0.00000000 -0.00000000  0.00000000 -0.00000071 -0.00000689  0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000024  0.00000000 -0.00000000 -0.00000297 -0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000266 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00001008

 57  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00041788 -0.00000000 -0.00000000 -0.00087107 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00424765 -0.00000000  0.00000000 -0.00000000  0.00086473  0.00051307 -0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00041542 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00086830

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000209 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00001605  0.00000000  0.00000000 -0.00000603  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.10964056  0.00000000  0.00000000  0.00001598 -0.00000000  0.00000000  0.00000608  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00001344  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00001873 -0.00000000 -0.00000000  0.00000010
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000007  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000668  0.00000000  0.00000000  0.00000006
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000  0.00000204 -0.00000000  0.00000000  0.00000377 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00310788  0.00000000 -0.00000000 -0.00000202 -0.00000000 -0.00000000 -0.00000379 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000015 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.40590321 -0.00000000  0.00000001  0.68666090 -0.00000000 -0.00000001 -0.24828434 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.58107728 -0.00000000  0.00000000  0.44215275
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000042  0.00000000  0.00000000 -0.00000148

 15  1     3    1  |1 1>+      -0.00000000 -0.57735029  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000000  0.47675839 -0.00000001 -0.00000000 -0.55332474  0.00000003 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.36085552  0.00000001 -0.00000000 -0.51963471  0.00000003 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000786 -0.00000000  0.00000000  0.00002021 -0.00000000 -0.00000000 -0.00040455  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00017093 -0.00000000 -0.00000000  0.00010476
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00031348 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000000  0.00038511 -0.00000000  0.00000000  0.00012486 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00036349 -0.00000000  0.00000000  0.00048673
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00026146  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00001013 -0.00000000 -0.00000000 -0.00028019 -0.00000000 -0.00000000 -0.00040980  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000059 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000017 -0.00000000  0.00000000  0.00000192
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00086825 -0.00000000  0.00000000  0.00000181  0.00000000  0.00000000  0.00000275 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.57735119 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.41659067 -0.00000001  0.00000000  0.59966586 -0.00000003  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.40590833  0.00000000  0.00000001  0.41210528  0.00000000  0.00000003  0.60275792 -0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000042  0.00000000  0.00000000 -0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.57749375 -0.00000000 -0.00000000 -0.00510545

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000259
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00675621 -0.00000000  0.00000000  0.77467901

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00040984  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00046280  0.00000000  0.00000000  0.00037194 -0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000190  0.00000000 -0.00000000 -0.00046556  0.00000000  0.00000000  0.00036848 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00040949  0.00000000  0.00000000  0.00000351

 38  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00021856 -0.00000000  0.00000000  0.00008663 -0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00001222  0.00000000 -0.00000000 -0.00021790 -0.00000000 -0.00000000 -0.00008826  0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00087319  0.00000000 -0.00000000 -0.00000037 -0.00000000 -0.00000000 -0.00000132  0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000038 -0.00000000 -0.00000000  0.00000132 -0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.68478936 -0.00000001  0.00000000 -0.25340061  0.00000001 -0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.57734889  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000041 -0.00000000 -0.00000000  0.00000151
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.57341435 -0.00000000  0.00000000  0.45204736

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.40557505  0.00000000 -0.00000001 -0.48072922  0.00000000  0.00000003  0.54996324 -0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.70282121 -0.00000000 -0.00000001 -0.35716239 -0.00000000 -0.00000003 -0.52208976  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00001720 -0.00000000 -0.00000000 -0.00040468  0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00031348 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00016911  0.00000000  0.00000000  0.00010766

 53  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000782  0.00000000 -0.00000000 -0.00038417 -0.00000000 -0.00000000 -0.00012773  0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00026145 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00037178  0.00000000 -0.00000000 -0.00048043

 56  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00028324 -0.00000000  0.00000000  0.00040770 -0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000021  0.00000000 -0.00000000 -0.00000192

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000059  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000183  0.00000000 -0.00000000 -0.00000274  0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000002 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.99393487 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00701081
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.99393751  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.01193656  0.99386952 -0.00000000 -0.00000000  0.00702057  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.99393679  0.00000000 -0.00700783 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000380 -0.00000000  0.00000001  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.99387172  0.01193653  0.00000000 -0.00000000  0.00009324  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00043186 -0.00000000  0.10156623  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000017 -0.00000000

  8  1     8    1  |0 0>       -0.00043286  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.10159002
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00043278 -0.00000000 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00001738  0.00043135 -0.00000000 -0.00000000 -0.10155998 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00043306 -0.00001730 -0.00000000  0.00000000  0.00420332  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.04476338  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.04476562 -0.00000000  0.00046209  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000017  0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.07742914 -0.04485874  0.00000000 -0.00000000 -0.00045683 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.04478220 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00045879
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.07753413  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00079251
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00347926 -0.00000000 -0.00000000 -0.00000000 -0.00000003
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00439633 -0.00000000  0.61361824  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000102 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00081100 -0.00393418  0.00000000  0.00000000  0.54804560  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00347855  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.48555367
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00016454 -0.00000000  0.02286018  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00373949 -0.00198727  0.00000000  0.00000000  0.27669801  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00269508  0.00000000  0.00000000  0.00000000  0.00000003
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00163460 -0.00282568  0.00000000  0.00000000 -0.00784289 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00283361  0.00000000 -0.00782020 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000001  0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00283454 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000011
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00012009 -0.08948606  0.00000000  0.00000000 -0.00091327 -0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.04477472  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00046321

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.04476490  0.00000000 -0.00000000 -0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000034  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.08952493  0.00000000 -0.00091100 -0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00001811  0.00000000 -0.00000018  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000465 -0.00347756  0.00000000  0.00000000  0.48542664  0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00094084 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.13114005

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00094083 -0.00000000 -0.00000000 -0.00000000 -0.00000001

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000081  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00347463 -0.00000000  0.48519301  0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00429841 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.59952785

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00429873  0.00000000  0.00000000  0.00000000  0.00000004

 40  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00468569 -0.00000627  0.00000000 -0.00000000  0.00004468 -0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00283370 -0.00000000  0.00000000  0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00283351  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00781421

 43  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00326044 -0.00000438  0.00000000 -0.00000000 -0.00000067  0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.04477321  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00045818

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.07754927 -0.04465070  0.00000000  0.00000000 -0.00045672 -0.00000000  0.00000000

 47  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000017  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.04476563  0.00000000 -0.00046209 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.04474107  0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.07753524  0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00347905 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.48580651

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00082161 -0.00393196  0.00000000  0.00000000  0.54802543  0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000102 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00439633  0.00000000 -0.61361752 -0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00347878 -0.00000000 -0.00000000 -0.00000000 -0.00000003

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00373412  0.00199736 -0.00000000  0.00000000 -0.27678088 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00016459 -0.00000000  0.02286879  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00269485 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.37563973

 57  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00283361  0.00000000 -0.00782022 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00162700  0.00283006 -0.00000000 -0.00000000  0.00784356  0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00283435  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00781643

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000000 -0.00000021  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000234 -0.00000000  0.00000000 -0.00000000 -0.00000312 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00701130 -0.00000000 -0.00000000  0.00000233 -0.00000000 -0.00000316  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00009347  0.00000000 -0.00000000  0.00000094 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00703772  0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000287
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000001  0.00000000 -0.00003282 -0.00000000 -0.00000000 -0.00000000 -0.00008838  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.10158996 -0.00000000 -0.00000000  0.00003282  0.00000000 -0.00008846  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00421125  0.00000000 -0.00000000 -0.00001107 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.10174692 -0.00000000  0.00000000  0.00000054  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000145  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00045817 -0.00000000 -0.00000000  0.00041583 -0.00000000  0.00029517 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00040534
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000005

 15  1     3    1  |1 1>+       0.00000000 -0.00079154 -0.00000000 -0.00000000 -0.00040907 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000000  0.00050497  0.00000000 -0.00000000 -0.00000000 -0.00006208 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00016010  0.00000000  0.00000000  0.00000000  0.00041714  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.48580332 -0.00000000  0.00000001 -0.49459349  0.00000000  0.29767626 -0.00000005 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000008  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.24759393
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00003261

 20  1     8    1  |1 1>+      -0.00000000  0.11360176 -0.00000000 -0.00000000 -0.44280047 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000003  0.00000000 -0.16486132 -0.00000000  0.00000000  0.00000009  0.55302215  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.52234454
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00006879

 23  1    11    1  |1 1>+       0.00000000 -0.51945583  0.00000000  0.00000000  0.37010394  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.37564408  0.00000000  0.00000000 -0.25553093 -0.00000000  0.65934922 -0.00000011 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000018  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00454580  0.00000000 -0.00000000 -0.00000275 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000442
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00781645  0.00000000  0.00000000 -0.00000228 -0.00000000  0.00000214 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000000 -0.00000076 -0.00000000 -0.00000000 -0.00000000 -0.00000042 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000007  0.00000000  0.00000000  0.00040809  0.00000000 -0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00018560 -0.00000000 -0.00000000 -0.00000000 -0.00047877 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00046321 -0.00000000  0.00000000 -0.00018573 -0.00000000  0.00047872 -0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000005
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00040786

 33  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000080

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00003190  0.00000000  0.00000000  0.57784175  0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00000000  0.81125125  0.00000002 -0.00000000 -0.00000004 -0.24810667 -0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000007 -0.00000000  0.00000000
                               -0.13113121 -0.00000000 -0.00000002  0.81118751 -0.00000000  0.24832257 -0.00000004 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00007609
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.57776781

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000004 -0.00000000 -0.07026658 -0.00000000  0.00000000  0.00000006  0.33029114  0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000009 -0.00000000  0.00000000
                                0.59952963  0.00000000 -0.00000000  0.07016866 -0.00000000  0.33030574 -0.00000006 -0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.65115199  0.00000000 -0.00000000 -0.00000291 -0.00000000  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00781423  0.00000000  0.00000000 -0.00000361 -0.00000000  0.00000122 -0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000361  0.00000000  0.00000000  0.00000000  0.00000120 -0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00908399 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00041591  0.00000000 -0.00000000 -0.00000000 -0.00029506 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00079161 -0.00000000 -0.00000000 -0.00040907 -0.00000000  0.00000000  0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000005
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00040637

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00045847 -0.00000000  0.00000000 -0.00050502  0.00000000 -0.00006205  0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00079269 -0.00000000 -0.00000000  0.00016001  0.00000000 -0.00041712  0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000003 -0.00000000 -0.49451357 -0.00000001  0.00000000 -0.00000005 -0.29779924 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.11368851 -0.00000000 -0.00000000 -0.44280607 -0.00000000  0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003267
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.24809537

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000015 -0.00000000  0.00000000
                               -0.48555369 -0.00000000 -0.00000000  0.16471767 -0.00000000  0.55306507 -0.00000009 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.51941456 -0.00000000 -0.00000000 -0.37009731 -0.00000000  0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00006849
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.52008265

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000003 -0.00000000  0.25536366  0.00000000  0.00000000  0.00000011  0.65941828  0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000441

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00454471  0.00000000  0.00000000  0.00000273  0.00000000 -0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000229  0.00000000 -0.00000000  0.00000000  0.00000216 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000011  0.00000000 -0.00000000 -0.00000076 -0.00000000  0.00000042 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000 -0.00000066 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000043 -0.00000000 -0.00000000  0.00000000 -0.00000070
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000043  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00001124  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000239 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000230 -0.00000000 -0.00000000  0.00000000 -0.00000015  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000002  0.00000000  0.00000006 -0.00000000 -0.00000000  0.00000000  0.00002009 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00003055 -0.00000000 -0.00000000 -0.00000000 -0.00002239
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003033 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000055 -0.00000000 -0.00000000 -0.00000000  0.00013269  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00001647  0.00000000  0.00000000 -0.00000000 -0.00000569 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000380 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000222  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00031447  0.00000000 -0.00000272 -0.00000000 -0.00000000  0.00000000  0.00000156  0.00000000
                                0.00000014 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000288  0.00000000  0.00000000 -0.00000000 -0.00000251  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000214 -0.00000000 -0.00000000 -0.00000000 -0.00000410
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000085  0.00000000 -0.00000000  0.00000000 -0.00000328
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000008  0.61822667  0.00000000 -0.00000000 -0.00000004
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.15158601 -0.00000000  0.69077074  0.00000000  0.00000000 -0.00000000 -0.24089792 -0.00000000
                               -0.00006906  0.00000000 -0.00205151  0.00000000 -0.00000000 -0.00000000 -0.00101751  0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.69686438 -0.00000000 -0.00000000  0.00000000 -0.02005238  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.60611617 -0.00000008 -0.00000000  0.00000000  0.24769095
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.68990325 -0.00000000 -0.15114536 -0.00000000 -0.00000000 -0.00000000 -0.47729649  0.00000000
                               -0.00031431 -0.00000000  0.00044888 -0.00000000  0.00000000  0.00000000 -0.00201602  0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.10965243 -0.00000000 -0.00000000  0.00000000 -0.53434595  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01614706  0.00000000  0.00000000  0.00000013
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00000770 -0.00000000 -0.00000000  0.00000000  0.00000458  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000203 -0.00000000 -0.00000967 -0.00000000 -0.00000000  0.00000000 -0.00000716 -0.00000000
                                0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000082  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000049  0.00000000 -0.00000000  0.00000000  0.00000217
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000314  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000020 -0.00000000 -0.00000000 -0.00000000 -0.00000314

 31  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000020 -0.00000000 -0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000
                                0.00000056  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000489  0.00000000

 33  1     5    1  |1 0>       -0.00000025 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00054161 -0.00000000  0.00000246  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00018443  0.00000000  0.00000000 -0.00000000  0.65419104 -0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.48403127 -0.00000006 -0.00000000  0.00000000  0.16925704

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000006  0.48402628  0.00000000  0.00000000  0.00000004

 37  1     9    1  |1 0>       -0.00000043  0.00000000 -0.00000014 -0.00000000  0.00000000  0.00000000 -0.00276416  0.00000000
                                0.00094472  0.00000000 -0.00004809 -0.00000000 -0.00000000  0.00000000  0.65442077 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.12603083  0.00000002 -0.00000000  0.00000000  0.71192382

 39  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000002  0.12605396 -0.00000000 -0.00000000 -0.00000015

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.06805340  0.00000000  0.00000000 -0.00000000  0.00021469  0.00000000 -0.00000000

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000982  0.00000000  0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000986  0.00000000 -0.00000000  0.00000000  0.00002010

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000476  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000160  0.00000000  0.00000119 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000222 -0.00000000  0.00000000  0.00000000  0.00000346

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000288 -0.00000000 -0.00000000  0.00000000 -0.00000251  0.00000000  0.00000000

 47  1     3    1  |1 1>-      -0.00000014  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                                0.00031314  0.00000000 -0.00000272 -0.00000000 -0.00000000  0.00000000 -0.00000156  0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000214  0.00000000  0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000086 -0.00000000 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.61821792 -0.00000008 -0.00000000  0.00000000 -0.21464950

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.69687365  0.00000000  0.00000000 -0.00000000 -0.01963179 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00006869 -0.00000000  0.00205141 -0.00000000  0.00000000  0.00000000 -0.00101791  0.00000000
                               -0.15076595 -0.00000000  0.69073791  0.00000000  0.00000000 -0.00000000  0.24099265 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000008 -0.60610562 -0.00000000 -0.00000000 -0.00000005

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.10996453  0.00000000 -0.00000000 -0.00000000  0.53452870  0.00000000 -0.00000000

 55  1    11    1  |1 1>-      -0.00031509 -0.00000000  0.00044906 -0.00000000  0.00000000 -0.00000000  0.00201594 -0.00000000
                                0.69160916 -0.00000000  0.15120578  0.00000000  0.00000000 -0.00000000 -0.47727812  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.01611635 -0.00000000  0.00000000 -0.00000000 -0.59757119

 57  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000  0.00000003 -0.00000000
                               -0.00000203 -0.00000000  0.00000965  0.00000000  0.00000000 -0.00000000 -0.00000716  0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000775  0.00000000 -0.00000000  0.00000000 -0.00000454  0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000081  0.00000000 -0.00000000  0.00000000 -0.00001551

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000049  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>        0.00000000  0.00000241 -0.00000036  0.00000003 -0.00000000  0.00000000  0.00000000  0.00733631
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00209768 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000070  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00209781  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000002  0.00019689  0.00208705  0.00000000  0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00209738 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000037 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000139 -0.00208785  0.00019695 -0.00000000  0.00000000  0.00000000  0.00000070
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.92785623 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00016177 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.92786215  0.00000002  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00002244 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.92786208 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000015  0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000012  0.11304130  0.92090191  0.00000000  0.00000000  0.00000000  0.00000252
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000399  0.92082695 -0.11303818  0.00000000 -0.00000000 -0.00000000  0.00005865
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00001071  0.00000269 -0.00000023 -0.00000000  0.00000000 -0.00000000 -0.08489166
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000346 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00127372 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00127221 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000022 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000190  0.00229513  0.00108552  0.00000000 -0.00000000  0.00000000  0.00000059
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00127403  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00219731 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.21461803  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.04815894  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.06089237  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001062  0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.03633623  0.01565086  0.05334672  0.00000000  0.00000000  0.00000000 -0.00000674
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000005  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04817167 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00226062  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000039  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.46409560 -0.04930361  0.03163841  0.00000000  0.00000000  0.00000000 -0.00001963
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.59757229  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.03733855  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00001951 -0.12594833  0.26536391  0.00000000  0.00000000  0.00000000  0.57526044
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.25428587  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00004433  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00001552  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.25425079  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000030  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00020432  0.00252613  0.00000000  0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00127273 -0.00000000 -0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000314 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00127270 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000044 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00253388  0.00000000 -0.00000000 -0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000051  0.00000000  0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00016888  0.00388155  0.04798526  0.00000000  0.00000000  0.00000000 -0.00000001

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  0.01301177  0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.16926710  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.01301096 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000840 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.04817091  0.00000000 -0.00000000 -0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000015  0.00000000  0.00000000 -0.00000000  0.00000000  0.05955808  0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000
                                0.71192109 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.05955826 -0.00000000

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.75289482  0.06459317 -0.00522462  0.00000000 -0.00000000 -0.00000000 -0.00002580

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000
                                0.00002009 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.25429114  0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.25429125 -0.00000001 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00002394  0.29282800 -0.02368445  0.00000000 -0.00000000 -0.00000000  0.57522949

 44  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00127376 -0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000190 -0.00209084  0.00144026  0.00000000  0.00000000  0.00000000 -0.00000059

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000022 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00127221  0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000410 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00127310  0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000328 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00219777 -0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  0.04815918  0.00000000  0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.03635338 -0.00687463  0.05516798  0.00000000  0.00000000  0.00000000  0.00000674

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00001062  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.06089220 -0.00000000  0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                                0.24771651 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.04817146  0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.46381326 -0.05374713 -0.02330444 -0.00000000  0.00000000 -0.00000000 -0.00001964

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000039 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00226145  0.00000000 -0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000013 -0.00000000  0.00000000 -0.00000000  0.00000000  0.03733811  0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00004433 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.25428532  0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00001952 -0.16695789 -0.24167272 -0.00000000  0.00000000 -0.00000000  0.57526171

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.25425044 -0.00000001 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000216  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000031 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000032
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000001 -0.00000000 -0.00000000  0.00368871  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00368893 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00368024  0.00003990
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000001  0.00000000  0.00000000 -0.00368839 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00004000 -0.00367431
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000082 -0.00000000 -0.00000000  0.35882766  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000229  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00005425 -0.00000000 -0.00000000  0.35880558  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00005348  0.00000000 -0.00000000  0.35880576 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.35864174 -0.01398125
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01397556 -0.35878244
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000934
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00032320  0.00000000 -0.00000000  0.00015203 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00032243 -0.00000000 -0.00000000  0.00015234  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000013 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00015115 -0.00026190
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00032255  0.00000000 -0.00000000  0.00015266  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00018151  0.00000000  0.00000000 -0.00026308 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00001272 -0.00000000  0.00000000 -0.01282945  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000983  0.00000000  0.00000000 -0.01621933 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01449698 -0.00296811
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000497  0.00000000  0.00000000 -0.01282525 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000012 -0.00000000 -0.00000000 -0.00060273 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00730462  0.01377554
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000000  0.00001779  0.00000000 -0.00000000  0.00995149 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.65877624 -0.38248470
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.70685812 -0.00000000 -0.00000000  0.65974820  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00029441 -0.00000000 -0.00000000 -0.00000422  0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000003 -0.70681468  0.00000000 -0.00000001  0.65980829 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.02654975 -0.00000000  0.00000000 -0.00000404  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00029946  0.00000075

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00032312  0.00000000  0.00000000 -0.00015189 -0.00000000  0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00032311  0.00000000 -0.00000000  0.00015188 -0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000007  0.00000000 -0.00000000 -0.00030040 -0.00000000  0.00000000 -0.00000000  0.00000000

 33  1     5    1  |1 0>        0.00000016 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00037569  0.00000000  0.00000000 -0.00000006  0.00000000  0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01280627  0.00003178

 35  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000124  0.00000000 -0.00000000  0.00346567  0.00000000 -0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000126 -0.00000000  0.00000000 -0.00346547  0.00000000 -0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000008  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000004 -0.00000000  0.00000000 -0.01281920 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00001460  0.00000000 -0.00000000  0.01586634  0.00000000 -0.00000000 -0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00001465  0.00000000 -0.00000000  0.01586640 -0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00004283 -0.01725161

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000003  0.70690011  0.00000000 -0.00000001  0.65970132 -0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.70690089 -0.00000003 -0.00000000  0.65970045  0.00000001 -0.00000000 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00189615  0.76176342

 44  1    16    1  |1 0>        0.00001106 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.02654793  0.00000000  0.00000000  0.00000005  0.00000000  0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00032320 -0.00000000  0.00000000 -0.00015205 -0.00000000  0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00014984  0.00026265

 47  1     3    1  |1 1>-      -0.00000013  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00032243 -0.00000000 -0.00000000 -0.00015234 -0.00000000  0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00032262  0.00000000 -0.00000000  0.00015255 -0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00018138  0.00000000 -0.00000000  0.00026313 -0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00001276 -0.00000000 -0.00000000  0.01282952  0.00000000 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.01448189  0.00304044

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000010 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000993  0.00000000  0.00000000  0.01621930  0.00000000 -0.00000000  0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000498 -0.00000000  0.00000000 -0.01282518  0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00737330  0.01373893

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000011  0.00000000  0.00000000 -0.00060296 -0.00000000  0.00000000 -0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00001783 -0.00000000 -0.00000000  0.00995139  0.00000000 -0.00000000 -0.00000000

 57  1    13    1  |1 1>-       0.00029441 -0.00000000 -0.00000000  0.00000422 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.70685662  0.00000000  0.00000000  0.65975002  0.00000000 -0.00000000  0.00000000 -0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.66067069 -0.37920153

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.70681390  0.00000003 -0.00000000  0.65980926  0.00000001 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.02654976  0.00000000  0.00000000  0.00000399  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00055730
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000002  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00000002  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000003
                                0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000026  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000  0.00000026  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000004
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000073
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000  0.00000000  0.99639019
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000744 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000744  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000014
                                0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000743 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000418 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000009 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000032  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000148
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000002 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000128  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000475
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00000129 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.04900890
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.01877221  0.00000000  0.00000000  0.00000000
                                0.00000061  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000020 -0.01877509  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000002  0.99964749 -0.00001052 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000742 -0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000742 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000865 -0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000001

 35  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000041 -0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000041 -0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000115  0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000115  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000435

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000020  0.01877193  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.01877191  0.00000020 -0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.04901575

 44  1    16    1  |1 0>       -0.00003252 -0.00000000 -0.00000000  0.00000000
                                0.99964754  0.00000002  0.00000004 -0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000744  0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000014

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000744  0.00000000  0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000743 -0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000418 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000009  0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000146

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000032  0.00000000 -0.00000000  0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000002 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000477

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000128 -0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000129 -0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000061  0.00000000  0.00000000  0.00000000
                               -0.01877223 -0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.04900890

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.01877509 -0.00000020 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000004  0.00001052  0.99964749 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.20%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.20%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.20%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.20%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.48%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   15.76%   50.10%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%   29.98%    0.00%    0.00%    0.00%    0.00%    0.00%   16.47%
 17  1     5    1  |1 1>+         0.00%   10.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.37%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.85%    0.01%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%   16.48%
 31  1     3    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   65.85%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.98%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%   16.48%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   17.18%   48.68%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.48%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%   29.99%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    9.99%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          1.20%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+        16.48%    0.00%    0.00%   47.15%    0.00%    0.00%    6.16%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.77%    0.00%    0.00%   19.55%
 15  1     3    1  |1 1>+         0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%   22.73%    0.00%    0.00%   30.62%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%   13.02%    0.00%    0.00%   27.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%   17.35%    0.00%    0.00%   35.96%    0.00%    0.00%
 31  1     3    1  |1 0>         16.48%    0.00%    0.00%   16.98%    0.00%    0.00%   36.33%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.35%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.01%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%   46.89%    0.00%    0.00%    6.42%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   32.88%    0.00%    0.00%   20.43%
 48  1     4    1  |1 1>-        16.45%    0.00%    0.00%   23.11%    0.00%    0.00%   30.25%    0.00%
 49  1     5    1  |1 1>-        49.40%    0.00%    0.00%   12.76%    0.00%    0.00%   27.26%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>         98.79%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%   98.79%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.01%   98.78%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.79%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%   98.78%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.03%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.03%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.03%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.20%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.20%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.60%    0.20%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.20%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.60%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.65%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   30.04%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.58%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    7.66%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.80%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.20%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.20%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.80%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.56%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.72%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.54%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   35.94%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.20%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.60%    0.20%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.20%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.20%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.60%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.60%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   30.03%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.65%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    7.66%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.11%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          1.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    1.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+        23.60%    0.00%    0.00%   24.46%    0.00%    8.86%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.13%
 20  1     8    1  |1 1>+         0.00%    1.29%    0.00%    0.00%   19.61%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    2.72%    0.00%    0.00%    0.00%   30.58%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   27.28%
 23  1    11    1  |1 1>+         0.00%   26.98%    0.00%    0.00%   13.70%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+        14.11%    0.00%    0.00%    6.53%    0.00%   43.47%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.39%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%   65.81%    0.00%    0.00%    0.00%    6.16%    0.00%
 36  1     8    1  |1 0>          1.72%    0.00%    0.00%   65.80%    0.00%    6.17%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.38%
 38  1    10    1  |1 0>          0.00%    0.00%    0.49%    0.00%    0.00%    0.00%   10.91%    0.00%
 39  1    11    1  |1 0>         35.94%    0.00%    0.00%    0.49%    0.00%   10.91%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%   42.40%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%   24.45%    0.00%    0.00%    0.00%    8.87%    0.00%
 51  1     7    1  |1 1>-         0.00%    1.29%    0.00%    0.00%   19.61%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.16%
 53  1     9    1  |1 1>-        23.58%    0.00%    0.00%    2.71%    0.00%   30.59%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%   26.98%    0.00%    0.00%   13.70%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   27.05%
 56  1    12    1  |1 1>-         0.00%    0.00%    6.52%    0.00%    0.00%    0.00%   43.48%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   38.22%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         2.30%    0.00%   47.72%    0.00%    0.00%    0.00%    5.80%    0.00%
 20  1     8    1  |1 1>+         0.00%   48.56%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%   36.74%    0.00%    0.00%    0.00%    6.14%
 22  1    10    1  |1 1>+        47.60%    0.00%    2.28%    0.00%    0.00%    0.00%   22.78%    0.00%
 23  1    11    1  |1 1>+         0.00%    1.20%    0.00%    0.00%    0.00%   28.55%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.80%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%   23.43%    0.00%    0.00%    0.00%    2.86%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.43%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.83%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    1.59%    0.00%    0.00%    0.00%   50.68%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.59%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.46%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%   38.22%    0.00%    0.00%    0.00%    4.61%
 51  1     7    1  |1 1>-         0.00%   48.56%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 52  1     8    1  |1 1>-         2.27%    0.00%   47.71%    0.00%    0.00%    0.00%    5.81%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   36.74%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    1.21%    0.00%    0.00%    0.00%   28.57%    0.00%    0.00%
 55  1    11    1  |1 1>-        47.83%    0.00%    2.29%    0.00%    0.00%    0.00%   22.78%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%   35.71%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%   86.09%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   86.09%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   86.09%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    1.28%   84.81%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%   84.79%    1.28%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.72%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         4.61%    0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.13%    0.02%    0.28%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%   21.54%    0.24%    0.10%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+        35.71%    0.00%    0.00%    0.00%    0.00%    0.00%    0.14%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    1.59%    7.04%    0.00%    0.00%    0.00%   33.09%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    6.47%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.46%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.23%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 36  1     8    1  |1 0>          2.87%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.23%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.35%    0.00%    0.00%
 39  1    11    1  |1 0>         50.68%    0.00%    0.00%    0.00%    0.00%    0.00%    0.35%    0.00%
 40  1    12    1  |1 0>          0.00%   56.69%    0.42%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.47%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    6.47%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    8.57%    0.06%    0.00%    0.00%    0.00%   33.09%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.13%    0.00%    0.30%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         6.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%
 54  1    10    1  |1 1>-         0.00%   21.51%    0.29%    0.05%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.14%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    6.47%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    2.79%    5.84%    0.00%    0.00%    0.00%   33.09%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    6.46%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%   12.88%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   12.87%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   12.87%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   12.86%    0.02%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%   12.87%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.02%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   43.40%   14.63%
 26  1    14    1  |1 1>+        49.96%    0.00%    0.00%   43.53%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%   49.96%    0.00%    0.00%   43.53%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 41  1    13    1  |1 0>          0.00%    0.00%   49.97%    0.00%    0.00%   43.52%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%   49.97%    0.00%    0.00%   43.52%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   58.03%
 44  1    16    1  |1 0>          0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.02%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-        49.96%    0.00%    0.00%   43.53%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   43.65%   14.38%
 59  1    15    1  |1 1>-         0.00%   49.96%    0.00%    0.00%   43.53%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     57       58       59       60

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%   99.28%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.24%
 26  1    14    1  |1 1>+         0.04%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.04%    0.00%
 28  1    16    1  |1 1>+         0.00%   99.93%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.04%    0.00%
 42  1    14    1  |1 0>          0.00%    0.04%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.24%
 44  1    16    1  |1 0>         99.93%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.04%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.24%
 59  1    15    1  |1 1>-         0.00%    0.04%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%   99.93%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       70.70       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1095.53       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5386.75   4166.03    795.44    415.58      5.60      0.44      3.24
 REAL TIME  *      5662.93 SEC
 DISK USED  *         1.14 GB (local),       27.79 GB (total)
 SF USED    *         6.96 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -25.271935674248

              CI              CI           MULTI         RHF-SCF
    -25.25170412    -25.24916363    -25.00446772    -25.09501761
 **********************************************************************************************************************************
 Molpro calculation terminated
