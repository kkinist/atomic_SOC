
 Working directory              : /wrk/irikura/molpro.jKUmHTVWjw/
 Global scratch directory       : /wrk/irikura/molpro.jKUmHTVWjw/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.jKUmHTVWjw/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   24
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Ba SO-CI
 memory,900,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCVQZ-PP
 
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
  64 bit mpp version                                                                     DATE: 02-May-24          TIME: 13:38:02  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:       900 MW
 Total memory per node:  21600 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 900.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ba   ECP ECP46MDF                 selected for group  1
 Library entry BA     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BA     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BA     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BA     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BA     G aug-cc-pwCVQZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         268
 NUMBER OF SYMMETRY AOS:          210
 NUMBER OF CONTRACTIONS:          146   (   77Ag  +   69Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 2 3 4 5 6   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.825E-05 0.527E-04 0.527E-04 0.527E-04 0.527E-04 0.527E-04 0.169E-03 0.185E-02
         2 0.515E-04 0.515E-04 0.515E-04 0.328E-02 0.328E-02 0.328E-02 0.741E-02 0.741E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     73.925 MB (compressed) written to integral file ( 16.1%)

     Node minimum: 0.786 MB, node maximum: 4.456 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1211100.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1211100      RECORD LENGTH: 524288

 Memory used in sort:       1.77 MW

 SORT1 READ    56868420. AND WROTE      229218. INTEGRALS IN      1 RECORDS. CPU TIME:     0.35 SEC, REAL TIME:     0.36 SEC
 SORT2 READ     5623101. AND WROTE    29184561. INTEGRALS IN    312 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC

 Node minimum:     1209300.  Node maximum:     1220790. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.14       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.64      1.43
 REAL TIME  *         2.21 SEC
 DISK USED  *        29.44 MB (local),      841.13 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -25.09501583     -25.09501583     0.00D+00     0.61D-01     0     0       0.00      0.02    start
   2      -25.09501583      -0.00000000     0.33D-06     0.12D-04     1     0       0.01      0.03    diag
   3      -25.09501583      -0.00000000     0.73D-07     0.28D-05     2     0       0.01      0.04    diag
   4      -25.09501583      -0.00000000     0.37D-07     0.82D-06     0     0       0.01      0.05    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -25.095015830786
  RHF One-electron energy             -41.272197745097
  RHF Two-electron energy              16.177181914311
  RHF Kinetic energy                    6.695431520636
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.748080426697

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.60487     1  1  s    0.99978
    2.1     2.00000    -0.16318     1  2  s    1.00202
    1.2     2.00000    -0.89696     1  1  pz   1.00050
    2.2     2.00000    -0.89696     1  1  px   1.00050
    3.2     2.00000    -0.89696     1  1  py   1.00050


 HOMO      2.1    -0.163179 =      -4.4403eV
 LUMO      4.2     0.006937 =       0.1888eV
 LUMO-HOMO         0.170116 =       4.6291eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.14       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.53       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.70      0.06      1.43
 REAL TIME  *         2.27 SEC
 DISK USED  *        30.19 MB (local),      859.19 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:       13 (    7    6)
 Number of external orbitals:     129 (   69   60)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              49   (85 determinants, 169 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              36   (36 determinants, 78 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.599D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.599D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.362D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.421D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 3 5 2 3 5   4 6 2 1 5 3 6 4 2 1  13101514 812 7 911 2   4 6 5 3 1 2 4 5 6 3
                                       12 8 7 91115141310 1   4 6 3 5 21310151411   9 7 812 4 6 3 5 2 1   4 6 3 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.137D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.463D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.562D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.287D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.287D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 1 2 3 3   1 2 6 9 7 4 5 810 3   1 2 5 4 7 910 8 6 1   3 2 7 9 810 4 5 6 1
                                        3 2 5 410 8 6 9 7 8  10 6 5 4 7 9 1 2 3 5   4 6 810 9 7 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
 
 Number of orbital rotations:  1117  ( 25 closed/active, 249 closed/virtual, 0 active/active, 843 active/virtual )
 Total number of variables:    2713
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   24    5    -24.94254012     -25.04022770   -0.09768758    0.05218845 0.00010534 0.00000000  0.25E+01      1.13
   2    8   14    0    -25.02129640     -25.02605534   -0.00475894    0.03633583 0.00004720 0.00000000  0.45E+00      2.03
   3    8   14    0    -25.02608798     -25.02608989   -0.00000190    0.00063735 0.00000006 0.00000000  0.72E-02      2.91
   4    5   10    0    -25.02608989     -25.02608989   -0.00000000    0.00000082 0.00000000 0.00000000  0.11E-04      3.56

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.25E-08)
                       Final energy:    -25.02608989
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -25.117267802560
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.63393455
 One electron energy                           -41.20233205
 Two electron energy                            16.08506425
 Virial ratio                                    4.78617962
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -25.054535068891
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82389394
 One electron energy                           -41.43200135
 Two electron energy                            16.37746628
 Virial ratio                                    4.67158916
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -25.054535068809
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82389394
 One electron energy                           -41.43200134
 Two electron energy                            16.37746627
 Virial ratio                                    4.67158917
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -25.054535068548
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82389394
 One electron energy                           -41.43200132
 Two electron energy                            16.37746625
 Virial ratio                                    4.67158917
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -25.054535068296
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82389393
 One electron energy                           -41.43200131
 Two electron energy                            16.37746624
 Virial ratio                                    4.67158917
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -25.054535067831
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.82389392
 One electron energy                           -41.43200127
 Two electron energy                            16.37746621
 Virial ratio                                    4.67158918
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -25.000029042839
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96501569
 One electron energy                           -41.57614113
 Two electron energy                            16.57611209
 Virial ratio                                    4.58937153
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy               -25.000029042625
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96501569
 One electron energy                           -41.57614115
 Two electron energy                            16.57611211
 Virial ratio                                    4.58937153
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy               -25.000029042580
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96501570
 One electron energy                           -41.57614115
 Two electron energy                            16.57611211
 Virial ratio                                    4.58937153
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy              -25.000029042507
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96501570
 One electron energy                           -41.57614116
 Two electron energy                            16.57611212
 Virial ratio                                    4.58937153
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy              -25.000029042375
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.96501570
 One electron energy                           -41.57614117
 Two electron energy                            16.57611213
 Virial ratio                                    4.58937153
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy              -24.998508000415
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.62358275
 One electron energy                           -40.46053496
 Two electron energy                            15.46202696
 Virial ratio                                    4.77416708
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -25.061200912807
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83374348
 One electron energy                           -41.52240484
 Two electron energy                            16.46120393
 Virial ratio                                    4.66727270
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -25.061200912700
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83374347
 One electron energy                           -41.52240483
 Two electron energy                            16.46120392
 Virial ratio                                    4.66727271
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -25.061200912327
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83374346
 One electron energy                           -41.52240481
 Two electron energy                            16.46120390
 Virial ratio                                    4.66727271
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -25.061200912062
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83374346
 One electron energy                           -41.52240480
 Two electron energy                            16.46120388
 Virial ratio                                    4.66727271
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -25.061200911400
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.83374344
 One electron energy                           -41.52240476
 Two electron energy                            16.46120385
 Virial ratio                                    4.66727272
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -25.004513000322
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06579145
 One electron energy                           -41.89072992
 Two electron energy                            16.88621692
 Virial ratio                                    4.53881277
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -25.004513000321
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06579145
 One electron energy                           -41.89072992
 Two electron energy                            16.88621692
 Virial ratio                                    4.53881277
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -25.004513000283
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06579144
 One electron energy                           -41.89072990
 Two electron energy                            16.88621690
 Virial ratio                                    4.53881277
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -25.004513000241
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06579143
 One electron energy                           -41.89072987
 Two electron energy                            16.88621687
 Virial ratio                                    4.53881278
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy              -25.004513000238
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06579143
 One electron energy                           -41.89072987
 Two electron energy                            16.88621687
 Virial ratio                                    4.53881278
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy              -25.004513000232
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06579143
 One electron energy                           -41.89072986
 Two electron energy                            16.88621686
 Virial ratio                                    4.53881278
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy              -25.004513000154
 Nuclear energy                                  0.00000000
 Kinetic energy                                  7.06579141
 One electron energy                           -41.89072981
 Two electron energy                            16.88621681
 Virial ratio                                    4.53881279
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy              -25.003618921909
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.54121661
 One electron energy                           -40.19008274
 Two electron energy                            15.18646382
 Virial ratio                                    4.82247224
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy              -25.000235351918
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92313992
 One electron energy                           -41.45670960
 Two electron energy                            16.45647425
 Virial ratio                                    4.61111225
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy              -25.000235351413
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92313993
 One electron energy                           -41.45670963
 Two electron energy                            16.45647428
 Virial ratio                                    4.61111224
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy              -25.000235351338
 Nuclear energy                                  0.00000000
 Kinetic energy                                  6.92313993
 One electron energy                           -41.45670964
 Two electron energy                            16.45647428
 Virial ratio                                    4.61111224
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999996
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     2.783394852750
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.216605615751
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.000000000003
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     2.896199209268
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     1.000000000003
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     4.000000000000
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     1.000000000000
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.103801967909
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     4.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.032777806958
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.967222234005
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     4.097531299232
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     6.402732266200
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.862641641957
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.137353909132
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     4.000000009995
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     5.902465790077
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     3.597272499073
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999999999
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.201952277454
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.798047315574
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.999999999997
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.003475313878
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     3.999999999997
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     1.000000000000
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     3.996524608529
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     2.966860064528
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.033139893600
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     4.000000000000
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.903098866221
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.011145246587
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     5.479219120383
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     4.520805135003
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     4.000000010682
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     6.096903991206
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     3.988855021915
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>    -0.000000000000
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     1.000000000000
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     1.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000005
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.014652869797
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.985347068675
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     1.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     3.100325476853
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     4.000000000000
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     0.899673423562
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     4.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000362128515
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999637872395
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999369834547
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     5.586122487213
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     2.658139237660
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     7.341840955865
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     3.999999979324
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     0.000630218718
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     4.413872479011
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     1.000000000000
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000000000000
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     1.000000000000
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 2 4 3 6 5 1 3 6   5 2 4 1 3 6 2 5 413  1014151211 8 7 9 1 3   6 5 2 4 1 5 3 6 4 2
                                       131014151211 8 7 9 1   5 3 6 4 21310141512  11 8 7 9 5 3 6 4 2 1   5 3 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 2 3 1 1   3 2 1 3 2 7 9 810 5   6 4 9 7 8 5 6 410 1   2 3 9 710 8 5 6 4 2
                                        1 3 9 710 5 8 6 4 9   710 5 8 6 4 2 1 3 9   710 8 5 6 4 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.55866     1  1  s    1.03218
    2.1     0.45615    -0.03438     1  2  s    0.63355    1  5  s    0.31180
    3.1     0.25584     0.05484     1  1  d0   0.81271
    4.1     0.25584     0.05484     1  1  d1+  0.81271
    5.1     0.25584     0.05484     1  1  d2-  0.81271
    6.1     0.25584     0.05484     1  1  d1-  0.81271
    7.1     0.25584     0.05484     1  1  d2+  0.81271
    8.1     0.06705     0.04125     1  2  s   -0.74414    1  5  s   -0.45468    1  6  s    0.57048    1 10  s    1.10185
    1.2     2.00000    -0.86037     1  1  py   1.01467
    2.2     2.00000    -0.86037     1  1  px   1.01467
    3.2     2.00000    -0.86037     1  1  pz   1.01467
    4.2     0.06482     0.04955     1  2  pz   1.73921    1  3  pz  -0.31808    1  4  pz  -0.40335
    5.2     0.06482     0.04955     1  2  py   1.73921    1  3  py  -0.31808    1  4  py  -0.40335
    6.2     0.06482     0.04955     1  2  px   1.73921    1  3  px  -0.31808    1  4  px  -0.40335
    7.2     0.00105     0.11203     1  1  py  -1.12671    1  2  py  -5.07211    1  3  py   1.55511    1  4  py   3.01674
                                    1  5  py   1.18716
    8.2     0.00105     0.11203     1  1  pz  -1.12671    1  2  pz  -5.07211    1  3  pz   1.55511    1  4  pz   3.01674
                                    1  5  pz   1.18716
    9.2     0.00105     0.11203     1  1  px  -1.12671    1  2  px  -5.07211    1  3  px   1.55511    1  4  px   3.01674
                                    1  5  px   1.18716
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                   1               2               3               4               5               6               7
 2000000 000000      0.95595251     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 b00a000 000000     -0.00000000     -0.64823144      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 a00b000 000000      0.00000000      0.64823144     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 a000b00 000000     -0.00000000      0.00000000      0.64823144      0.00000031      0.00000087      0.00000035     -0.00000001
 b000a00 000000      0.00000000     -0.00000000     -0.64823144     -0.00000031     -0.00000087     -0.00000035      0.00000001
 a0b0000 000000     -0.00000000      0.00000000     -0.00000035     -0.00000032     -0.00000011      0.64823143     -0.00000000
 b0a0000 000000      0.00000000     -0.00000000      0.00000035      0.00000032      0.00000011     -0.64823143      0.00000000
 ab00000 000000     -0.00000000     -0.00000000     -0.00000036      0.64704304      0.03923390      0.00000033      0.02007042
 ba00000 000000      0.00000000      0.00000000      0.00000036     -0.64704304     -0.03923390     -0.00000033     -0.02007042
 a0000b0 000000     -0.00000000     -0.00000000     -0.00000085     -0.03923390      0.64704304      0.00000009      0.03725781
 b0000a0 000000      0.00000000      0.00000000      0.00000085      0.03923390     -0.64704304     -0.00000009     -0.03725781
 a00000b 000000     -0.03927347     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000007
 b00000a 000000      0.03927347      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000007
 0a0b000 000000     -0.00000000      0.12580431     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 0b0a000 000000      0.00000000     -0.12580431      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0020000 000000     -0.04250121      0.00000000      0.00000018     -0.05619271     -0.11255712     -0.00000005      0.46778906
 0000020 000000     -0.04250121     -0.00000000     -0.00000007      0.12557368      0.00761424      0.00000006     -0.22194811
 0200000 000000     -0.04250121      0.00000000      0.00000007     -0.12557368     -0.00761425     -0.00000006      0.22194815
 0a000b0 000000     -0.00000000     -0.00000000     -0.00000017     -0.00761425      0.12557368      0.00000002     -0.41201442
 0b000a0 000000      0.00000000      0.00000000      0.00000017      0.00761425     -0.12557368     -0.00000002      0.41201442
 0002000 000000     -0.04250121     -0.00000000     -0.00000007      0.12557368      0.00761425      0.00000006     -0.22194810
 00a00b0 000000      0.00000000     -0.00000000      0.00000006      0.00000005      0.00000002     -0.10894973     -0.00000001
 00b00a0 000000     -0.00000000      0.00000000     -0.00000006     -0.00000005     -0.00000002      0.10894973      0.00000001
 00a0b00 000000      0.00000000     -0.10894973      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 00b0a00 000000     -0.00000000      0.10894973     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 00ab000 000000      0.00000000     -0.00000000     -0.10894973     -0.00000005     -0.00000015     -0.00000006     -0.00000007
 00ba000 000000     -0.00000000      0.00000000      0.10894973      0.00000005      0.00000015      0.00000006      0.00000007
 0000ab0 000000     -0.00000000      0.00000000      0.10894973      0.00000005      0.00000015      0.00000006      0.00000007
 0000ba0 000000      0.00000000     -0.00000000     -0.10894973     -0.00000005     -0.00000015     -0.00000006     -0.00000007
 000ab00 000000     -0.00000000     -0.00000000      0.00000006      0.00000005      0.00000002     -0.10894973     -0.00000001
 000ba00 000000      0.00000000      0.00000000     -0.00000006     -0.00000005     -0.00000002      0.10894973      0.00000001
 0000200 000000     -0.04250121     -0.00000000     -0.00000011     -0.06938097      0.10494287     -0.00000002     -0.24584086
 0000000 020000     -0.15158433     -0.00000000     -0.00000037      0.11593616      0.23222656      0.00000010      0.37487795
 0000000 200000     -0.15158433      0.00000000      0.00000014     -0.25908218     -0.01570962     -0.00000013     -0.17786540
 0000000 a0b000      0.00000000     -0.00000000      0.00000012      0.00000011      0.00000004     -0.22478385      0.00000001
 0000000 b0a000     -0.00000000      0.00000000     -0.00000012     -0.00000011     -0.00000004      0.22478385     -0.00000001
 0000000 ba0000     -0.00000000      0.00000000      0.22478384      0.00000011      0.00000030      0.00000012     -0.00000006
 0000000 ab0000      0.00000000     -0.00000000     -0.22478384     -0.00000011     -0.00000030     -0.00000012      0.00000006
 0000000 0ba000     -0.00000000      0.22478384     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0000000 0ab000      0.00000000     -0.22478384      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0000000 002000     -0.15158433      0.00000000      0.00000022      0.14314602     -0.21651694      0.00000003     -0.19701264
 0ab0000 000000      0.00000000     -0.00000000      0.00000003      0.00000003      0.00000001     -0.06290216     -0.00000001
 0ba0000 000000     -0.00000000      0.00000000     -0.00000003     -0.00000003     -0.00000001      0.06290216      0.00000001
 0a00b00 000000      0.00000000     -0.00000000     -0.06290216     -0.00000003     -0.00000008     -0.00000003     -0.00000004
 0b00a00 000000     -0.00000000      0.00000000      0.06290216      0.00000003      0.00000008      0.00000003      0.00000004
 0000002 000000     -0.01750108      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000002
 000b00a 000000      0.00000000     -0.02854858      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 000a00b 000000     -0.00000000      0.02854858     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0000b0a 000000     -0.00000000     -0.00000000     -0.02854858     -0.00000001     -0.00000004     -0.00000002      0.00000002
 0000a0b 000000      0.00000000      0.00000000      0.02854858      0.00000001      0.00000004      0.00000002     -0.00000002
 00a000b 000000      0.00000000      0.00000000     -0.00000002     -0.00000001     -0.00000000      0.02854857     -0.00000000
 00b000a 000000     -0.00000000     -0.00000000      0.00000002      0.00000001      0.00000000     -0.02854857      0.00000000
 0b0000a 000000     -0.00000000      0.00000000      0.00000002     -0.02849624     -0.00172789     -0.00000001     -0.04597102
 0a0000b 000000      0.00000000     -0.00000000     -0.00000002      0.02849624      0.00172789      0.00000001      0.04597102
 00000ba 000000     -0.00000000      0.00000000      0.00000004      0.00172789     -0.02849624     -0.00000000     -0.08533851
 00000ab 000000      0.00000000     -0.00000000     -0.00000004     -0.00172789      0.02849624      0.00000000      0.08533851
 0000000 0b0a00     -0.02754387     -0.00000000     -0.00000003      0.00970522      0.01944010      0.00000001     -0.00520575
 0000000 0a0b00      0.02754387      0.00000000      0.00000003     -0.00970522     -0.01944010     -0.00000001      0.00520575
 0000000 b000a0     -0.02754387      0.00000000      0.00000001     -0.02168823     -0.00131508     -0.00000001      0.00246995
 0000000 a000b0      0.02754387     -0.00000000     -0.00000001      0.02168823      0.00131508      0.00000001     -0.00246995
 0000000 00a00b      0.02754387     -0.00000000     -0.00000002     -0.01198301      0.01812502     -0.00000000     -0.00273583
 0000000 00b00a     -0.02754387      0.00000000      0.00000002      0.01198301     -0.01812502      0.00000000      0.00273583
 
 Energy:           -25.11726780    -25.05453507    -25.05453507    -25.05453507    -25.05453507    -25.05453507    -25.00002904

 State:                   8               9              10              11              12
 2000000 000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.01987639
 b00a000 000000     -0.00000000      0.00000000      0.04231981      0.00000000     -0.00000000
 a00b000 000000      0.00000000     -0.00000000     -0.04231981     -0.00000000      0.00000000
 a000b00 000000      0.00000004      0.04231981     -0.00000000     -0.00000000     -0.00000000
 b000a00 000000     -0.00000004     -0.04231981      0.00000000      0.00000000      0.00000000
 a0b0000 000000      0.04231981     -0.00000004      0.00000000     -0.00000000     -0.00000000
 b0a0000 000000     -0.04231981      0.00000004     -0.00000000      0.00000000      0.00000000
 ab00000 000000      0.00000000      0.00000001     -0.00000000      0.03725781     -0.00000000
 ba00000 000000     -0.00000000     -0.00000001      0.00000000     -0.03725781      0.00000000
 a0000b0 000000      0.00000000      0.00000001     -0.00000000     -0.02007042     -0.00000000
 b0000a0 000000     -0.00000000     -0.00000001      0.00000000      0.02007042      0.00000000
 a00000b 000000      0.00000000     -0.00000000      0.00000000     -0.00000001      0.61475208
 b00000a 000000     -0.00000000      0.00000000     -0.00000000      0.00000001     -0.61475208
 0a0b000 000000     -0.00000001      0.00000000      0.46799236      0.00000000     -0.00000000
 0b0a000 000000      0.00000001     -0.00000000     -0.46799236     -0.00000000      0.00000000
 0020000 000000      0.00000002      0.00000009     -0.00000000      0.01379449      0.14666896
 0000020 000000     -0.00000002     -0.00000006      0.00000000     -0.41201444      0.14666903
 0200000 000000      0.00000002      0.00000006     -0.00000000      0.41201442      0.14666898
 0a000b0 000000     -0.00000001     -0.00000007      0.00000000      0.22194813      0.00000006
 0b000a0 000000      0.00000001      0.00000007     -0.00000000     -0.22194813     -0.00000006
 0002000 000000     -0.00000002     -0.00000006      0.00000000     -0.41201442      0.14666902
 00a00b0 000000      0.40529329     -0.00000037      0.00000001     -0.00000001     -0.00000000
 00b00a0 000000     -0.40529329      0.00000037     -0.00000001      0.00000001      0.00000000
 00a0b00 000000      0.00000001     -0.00000000     -0.40529329     -0.00000000      0.00000000
 00b0a00 000000     -0.00000001      0.00000000      0.40529329      0.00000000     -0.00000000
 00ab000 000000      0.00000037      0.40529328     -0.00000000     -0.00000001      0.00000000
 00ba000 000000     -0.00000037     -0.40529328      0.00000000      0.00000001     -0.00000000
 0000ab0 000000     -0.00000037     -0.40529328      0.00000000      0.00000001     -0.00000000
 0000ba0 000000      0.00000037      0.40529328     -0.00000000     -0.00000001      0.00000000
 000ab00 000000      0.40529327     -0.00000037      0.00000001     -0.00000001     -0.00000000
 000ba00 000000     -0.40529327      0.00000037     -0.00000001      0.00000001      0.00000000
 0000200 000000      0.00000000     -0.00000003      0.00000000      0.39821992      0.14666904
 0000000 020000      0.00000001      0.00000007     -0.00000000      0.01105467     -0.15632433
 0000000 200000     -0.00000001     -0.00000004      0.00000000     -0.33018118     -0.15632427
 0000000 a0b000     -0.32479498      0.00000030     -0.00000001      0.00000001      0.00000000
 0000000 b0a000      0.32479498     -0.00000030      0.00000001     -0.00000001     -0.00000000
 0000000 ba0000      0.00000030      0.32479498     -0.00000000     -0.00000001      0.00000000
 0000000 ab0000     -0.00000030     -0.32479498      0.00000000      0.00000001     -0.00000000
 0000000 0ba000      0.00000001     -0.00000000     -0.32479498     -0.00000000      0.00000000
 0000000 0ab000     -0.00000001      0.00000000      0.32479498      0.00000000     -0.00000000
 0000000 002000      0.00000000     -0.00000002      0.00000000      0.31912653     -0.15632426
 0ab0000 000000      0.23399619     -0.00000022      0.00000000     -0.00000001     -0.00000000
 0ba0000 000000     -0.23399619      0.00000022     -0.00000000      0.00000001      0.00000000
 0a00b00 000000      0.00000022      0.23399618     -0.00000000     -0.00000001      0.00000000
 0b00a00 000000     -0.00000022     -0.23399618      0.00000000      0.00000001     -0.00000000
 0000002 000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.15921066
 000b00a 000000     -0.00000000      0.00000000      0.09693295      0.00000000     -0.00000000
 000a00b 000000      0.00000000     -0.00000000     -0.09693295     -0.00000000      0.00000000
 0000b0a 000000     -0.00000009     -0.09693295      0.00000000      0.00000000     -0.00000000
 0000a0b 000000      0.00000009      0.09693295     -0.00000000     -0.00000000      0.00000000
 00a000b 000000      0.09693293     -0.00000009      0.00000000     -0.00000000     -0.00000000
 00b000a 000000     -0.09693293      0.00000009     -0.00000000      0.00000000      0.00000000
 0b0000a 000000     -0.00000000     -0.00000001      0.00000000     -0.08533851      0.00000000
 0a0000b 000000      0.00000000      0.00000001     -0.00000000      0.08533851     -0.00000000
 00000ba 000000     -0.00000000     -0.00000001      0.00000000      0.04597102      0.00000001
 00000ab 000000      0.00000000      0.00000001     -0.00000000     -0.04597102     -0.00000001
 0000000 0b0a00     -0.00000000     -0.00000000      0.00000000     -0.00015351      0.07728710
 0000000 0a0b00      0.00000000      0.00000000     -0.00000000      0.00015351     -0.07728710
 0000000 b000a0      0.00000000      0.00000000     -0.00000000      0.00458508      0.07728710
 0000000 a000b0     -0.00000000     -0.00000000      0.00000000     -0.00458508     -0.07728710
 0000000 00a00b      0.00000000     -0.00000000      0.00000000      0.00443157     -0.07728710
 0000000 00b00a     -0.00000000      0.00000000     -0.00000000     -0.00443157      0.07728710
 
 Energy:           -25.00002904    -25.00002904    -25.00002904    -25.00002904    -24.99850800
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                   1               2               3               4               5               6               7
 0a000a0 000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000095     -0.00000092
 a0a0000 000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.99999245     -0.00000000     -0.00000000
 a000a00 000000     -0.00000007      0.99999245     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a00a000 000000      0.99999245      0.00000007      0.00000009      0.00000015      0.00000000     -0.00000000     -0.00000000
 a0000a0 000000     -0.00000015     -0.00000000      0.00951477      0.99994719      0.00000000     -0.00000000     -0.00000000
 aa00000 000000     -0.00000009     -0.00000000      0.99994719     -0.00951477     -0.00000000      0.00000000      0.00000000
 0a0a000 000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.99992123      0.00000149
 a00000a 000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 00a0a00 000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.01122645     -0.00000074
 000aa00 000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000135      0.89318022
 00aa000 000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000016      0.00000020
 00a00a0 000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000054      0.17758148
 0000aa0 000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000002     -0.00000051
 000a0a0 000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00561322     -0.00000037
 0a00a00 000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000010     -0.00000041
 0aa0000 000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000047      0.41315120
 0000000 a0a000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000004
 0000000 0aa000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0000000 aa0000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 0000000 0a0a00      0.00000000      0.00000000     -0.00035787     -0.00060645     -0.00000000      0.00000000      0.00000000
 0000000 a000a0     -0.00000000     -0.00000000      0.00070414     -0.00000670     -0.00000000      0.00000000      0.00000000
 0000000 00a00a     -0.00000000     -0.00000000     -0.00034627      0.00061315      0.00000000      0.00000000      0.00000000
 
 Energy:           -25.06120091    -25.06120091    -25.06120091    -25.06120091    -25.06120091    -25.00451300    -25.00451300

 State:                   8               9              10              11              12              13              14
 0a000a0 000000      0.00000135     -0.00000042      1.00000000      0.00007193     -0.00000079     -0.00000000     -0.00000000
 a0a0000 000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 a000a00 000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 a00a000 000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a0000a0 000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 aa00000 000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 0a0a000 000000      0.00000010     -0.00000016      0.00000004      0.01255155      0.00000033      0.00000000     -0.00000000
 a00000a 000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.98229177     -0.00000000
 00a0a00 000000     -0.00000005      0.00000002     -0.00006434      0.89435674      0.00000075      0.00000000      0.00000000
 000aa00 000000      0.00000061     -0.00000009      0.00000086      0.00000068      0.04721280      0.00000000     -0.36708537
 00aa000 000000     -0.16574581      0.87893592      0.00000059     -0.00000002     -0.00000000      0.00000000     -0.00000000
 00a00a0 000000      0.00000012     -0.00000002      0.00000086     -0.00000060      0.87662126     -0.00000000      0.36708528
 0000aa0 000000      0.80958959      0.38021665     -0.00000093      0.00000004      0.00000000      0.00000000      0.00000000
 000a0a0 000000     -0.00000003      0.00000001     -0.00003217      0.44717834      0.00000038      0.00000000     -0.00000001
 0a00a00 000000      0.56311014     -0.28793567     -0.00000088      0.00000004      0.00000000      0.00000000     -0.00000000
 0aa0000 000000      0.00000028     -0.00000004     -0.00000000      0.00000074     -0.47885918      0.00000000      0.63581038
 0000000 a0a000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.00000000     -0.57105974
 0000000 0aa000      0.00000000     -0.00000000     -0.00000000      0.00000002      0.00000000      0.00000000      0.00000001
 0000000 aa0000      0.00000001     -0.00000002     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 0000000 0a0a00      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.10817096     -0.00000000
 0000000 a000a0      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.10817096      0.00000000
 0000000 00a00a      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.10817096     -0.00000000
 
 Energy:           -25.00451300    -25.00451300    -25.00451300    -25.00451300    -25.00451300    -25.00361892    -25.00023535

 State:                  15              16
 0a000a0 000000      0.00000000      0.00000000
 a0a0000 000000      0.00000000     -0.00000000
 a000a00 000000     -0.00000000      0.00000000
 a00a000 000000     -0.00000000      0.00000000
 a0000a0 000000      0.00000000     -0.00000000
 aa00000 000000     -0.00000000      0.00000000
 0a0a000 000000      0.00000000      0.00000000
 a00000a 000000      0.00000000     -0.00000000
 00a0a00 000000     -0.36708528     -0.00000000
 000aa00 000000     -0.00000000     -0.00000000
 00aa000 000000     -0.00000000      0.36708528
 00a00a0 000000      0.00000000      0.00000000
 0000aa0 000000      0.00000000     -0.36708530
 000a0a0 000000      0.73417063      0.00000001
 0a00a00 000000     -0.00000001      0.63581042
 0aa0000 000000      0.00000001      0.00000000
 0000000 a0a000     -0.00000001     -0.00000000
 0000000 0aa000     -0.57105974     -0.00000001
 0000000 aa0000      0.00000001     -0.57105974
 0000000 0a0a00      0.00000000      0.00000000
 0000000 a000a0     -0.00000000      0.00000000
 0000000 00a00a      0.00000000     -0.00000000
 
 Energy:           -25.00023535    -25.00023535
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.39       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.05       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.81      3.11      0.06      1.43
 REAL TIME  *         6.65 SEC
 DISK USED  *        49.50 MB (local),        1.29 GB (total)
 SF USED    *        62.20 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY       LL
    -25.11726780   -0.0
    -25.05453507    6.0
    -25.05453507    6.0
    -25.05453507    6.0
    -25.05453507    6.0
    -25.05453507    6.0
    -25.00002904    6.0
    -25.00002904    6.0
    -25.00002904    6.0
    -25.00002904    6.0
    -25.00002904    6.0
    -24.99850800    0.0
    -25.06120091    6.0
    -25.06120091    6.0
    -25.06120091    6.0
    -25.06120091    6.0
    -25.06120091    6.0
    -25.00451300   12.0
    -25.00451300   12.0
    -25.00451300   12.0
    -25.00451300   12.0
    -25.00451300   12.0
    -25.00451300   12.0
    -25.00451300   12.0
    -25.00361892   -0.0
    -25.00023535    2.0
    -25.00023535    2.0
    -25.00023535    2.0
                                                  


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
 Number of external orbitals:     129 (  69  60 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  49

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.11726780
     2       -25.05453507
     3       -25.05453507
     4       -25.05453507
     5       -25.05453507
     6       -25.05453507
     7       -25.00002904
     8       -25.00002904
     9       -25.00002904
    10       -25.00002904
    11       -25.00002904
    12       -24.99850800

 Number of blocks in overlap matrix:   249   Smallest eigenvalue:  0.31D+00
 Number of N-2 electron functions:     297
 Number of N-1 electron functions:   14053

 Number of internal configurations:                22428
 Number of singly external configurations:        906414
 Number of doubly external configurations:       1239666
 Total number of contracted configurations:      2168508
 Total number of uncontracted configurations:    7925499

 Diagonal Coupling coefficients finished.               Storage:13922065 words, CPU-Time:      2.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1128961 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.11726780     0.00000000    -0.23176088  0.37D-01  0.43D-01     4.61
    1     2     2     1.00000000     0.00000000   -25.05453507    -0.00000000    -0.25051546  0.51D-01  0.51D-01     4.61
    1     3     3     1.00000000     0.00000000   -25.05453507     0.00000000    -0.25061817  0.51D-01  0.51D-01     4.61
    1     4     4     1.00000000     0.00000000   -25.05453507     0.00000000    -0.25013011  0.50D-01  0.50D-01     4.61
    1     5     5     1.00000000     0.00000000   -25.05453507    -0.00000000    -0.25046369  0.51D-01  0.50D-01     4.61
    1     6     6     1.00000000     0.00000000   -25.05453507    -0.00000000    -0.25046551  0.51D-01  0.51D-01     4.61
    1     7     7     1.00000000     0.00000000   -25.00002904    -0.00000000    -0.25771878  0.45D-01  0.60D-01     4.61
    1     8     8     1.00000000     0.00000000   -25.00002904    -0.00000000    -0.25838658  0.46D-01  0.61D-01     4.61
    1     9     9     1.00000000     0.00000000   -25.00002904    -0.00000000    -0.25840135  0.46D-01  0.61D-01     4.61
    1    10    10     1.00000000     0.00000000   -25.00002904    -0.00000000    -0.25838127  0.46D-01  0.61D-01     4.61
    1    11    11     1.00000000     0.00000000   -25.00002904    -0.00000000    -0.25746494  0.45D-01  0.60D-01     4.61
    1    12    12     1.00000000     0.00000000   -24.99850800    -0.00000000    -0.22893421  0.37D-01  0.44D-01     4.61
    2     1     1     1.06958519    -0.23900341   -25.35627121    -0.23900341    -0.00608466  0.17D-02  0.76D-03    31.22
    2     2     2     1.08252624    -0.24295802   -25.29749309    -0.24295802    -0.00744443  0.26D-02  0.11D-02    31.22
    2     3     3     1.08258959    -0.24291453   -25.29744960    -0.24291453    -0.00749065  0.27D-02  0.11D-02    31.22
    2     4     4     1.08260837    -0.24289691   -25.29743198    -0.24289691    -0.00751783  0.27D-02  0.11D-02    31.22
    2     5     5     1.08263984    -0.24289615   -25.29743122    -0.24289615    -0.00751931  0.27D-02  0.11D-02    31.22
    2     6     6     1.08264545    -0.24287625   -25.29741132    -0.24287625    -0.00754012  0.27D-02  0.11D-02    31.22
    2     7     7     1.08336410    -0.24311068   -25.24313972    -0.24311068    -0.00760393  0.29D-02  0.15D-02    31.22
    2     8     8     1.08346294    -0.24300505   -25.24303409    -0.24300505    -0.00774567  0.31D-02  0.15D-02    31.22
    2     9     9     1.08354477    -0.24287164   -25.24290068    -0.24287164    -0.00792579  0.32D-02  0.16D-02    31.22
    2    10    10     1.08355722    -0.24286882   -25.24289786    -0.24286882    -0.00792844  0.32D-02  0.16D-02    31.22
    2    11    11     1.08354239    -0.24286560   -25.24289465    -0.24286560    -0.00793223  0.32D-02  0.16D-02    31.22
    2    12    12     1.07124596    -0.23636353   -25.23487153    -0.23636353    -0.00599166  0.18D-02  0.90D-03    31.22
    3     1     1     1.07274426    -0.24534962   -25.36261742    -0.00634622    -0.00024593  0.58D-04  0.36D-04    57.67
    3     2     2     1.08436467    -0.25037618   -25.30491125    -0.00741816    -0.00037939  0.12D-03  0.69D-04    57.67
    3     3     3     1.08435443    -0.25037565   -25.30491072    -0.00746112    -0.00037948  0.12D-03  0.69D-04    57.67
    3     4     4     1.08437126    -0.25037330   -25.30490836    -0.00747638    -0.00038235  0.12D-03  0.70D-04    57.67
    3     5     5     1.08436837    -0.25037192   -25.30490698    -0.00747577    -0.00038351  0.12D-03  0.70D-04    57.67
    3     6     6     1.08436854    -0.25037187   -25.30490694    -0.00749562    -0.00038348  0.12D-03  0.70D-04    57.67
    3     7     7     1.08330621    -0.25054624   -25.25057528    -0.00743556    -0.00036596  0.79D-04  0.10D-03    57.67
    3     8     8     1.08332586    -0.25053918   -25.25056822    -0.00753413    -0.00037577  0.80D-04  0.10D-03    57.67
    3     9     9     1.08334281    -0.25053450   -25.25056355    -0.00766287    -0.00038310  0.80D-04  0.10D-03    57.67
    3    10    10     1.08334096    -0.25053403   -25.25056308    -0.00766521    -0.00038369  0.80D-04  0.10D-03    57.67
    3    11    11     1.08333563    -0.25053379   -25.25056283    -0.00766819    -0.00038364  0.81D-04  0.10D-03    57.67
    3    12    12     1.07373373    -0.24250882   -25.24101682    -0.00614529    -0.00028931  0.48D-04  0.81D-04    57.67
    4     1     1     1.07380022    -0.24561042   -25.36287823    -0.00026080    -0.00001436  0.78D-05  0.17D-05    83.36
    4     2     2     1.08661341    -0.25079146   -25.30532652    -0.00041527    -0.00003567  0.26D-04  0.48D-05    83.36
    4     3     3     1.08661289    -0.25079134   -25.30532641    -0.00041569    -0.00003580  0.26D-04  0.47D-05    83.36
    4     4     4     1.08660744    -0.25079107   -25.30532614    -0.00041777    -0.00003595  0.26D-04  0.47D-05    83.36
    4     5     5     1.08660745    -0.25079094   -25.30532600    -0.00041902    -0.00003603  0.26D-04  0.47D-05    83.36
    4     6     6     1.08660564    -0.25079085   -25.30532592    -0.00041897    -0.00003610  0.26D-04  0.47D-05    83.36
    4     7     7     1.08471221    -0.25093466   -25.25096370    -0.00038842    -0.00002747  0.18D-04  0.44D-05    83.36
    4     8     8     1.08471056    -0.25093463   -25.25096367    -0.00039545    -0.00002751  0.18D-04  0.44D-05    83.36
    4     9     9     1.08470900    -0.25093456   -25.25096360    -0.00040006    -0.00002754  0.18D-04  0.44D-05    83.36
    4    10    10     1.08471582    -0.25093377   -25.25096281    -0.00039974    -0.00002780  0.18D-04  0.45D-05    83.36
    4    11    11     1.08471763    -0.25093300   -25.25096204    -0.00039921    -0.00002795  0.18D-04  0.45D-05    83.36
    4    12    12     1.07482116    -0.24279403   -25.24130203    -0.00028521    -0.00002226  0.82D-05  0.59D-05    83.36
    5     1     1     1.07413360    -0.24562643   -25.36289424    -0.00001601    -0.00000123  0.62D-06  0.17D-06   109.02
    5     2     2     1.08774550    -0.25083751   -25.30537258    -0.00004606    -0.00000548  0.26D-05  0.90D-06   109.02
    5     3     3     1.08774574    -0.25083750   -25.30537257    -0.00004616    -0.00000548  0.26D-05  0.89D-06   109.02
    5     4     4     1.08774445    -0.25083745   -25.30537252    -0.00004639    -0.00000551  0.26D-05  0.89D-06   109.02
    5     5     5     1.08774380    -0.25083743   -25.30537250    -0.00004650    -0.00000553  0.26D-05  0.89D-06   109.02
    5     6     6     1.08774377    -0.25083742   -25.30537249    -0.00004658    -0.00000554  0.26D-05  0.89D-06   109.02
    5     7     7     1.08523751    -0.25096720   -25.25099624    -0.00003254    -0.00000313  0.18D-05  0.55D-06   109.02
    5     8     8     1.08523823    -0.25096718   -25.25099623    -0.00003255    -0.00000314  0.18D-05  0.55D-06   109.02
    5     9     9     1.08523728    -0.25096718   -25.25099622    -0.00003262    -0.00000314  0.18D-05  0.55D-06   109.02
    5    10    10     1.08523908    -0.25096696   -25.25099600    -0.00003319    -0.00000329  0.18D-05  0.58D-06   109.02
    5    11    11     1.08523950    -0.25096669   -25.25099573    -0.00003369    -0.00000348  0.18D-05  0.62D-06   109.02
    5    12    12     1.07509300    -0.24281576   -25.24132376    -0.00002173    -0.00000238  0.12D-05  0.57D-06   109.02
    6     1     1     1.07419544    -0.24562788   -25.36289568    -0.00000144    -0.00000012  0.38D-07  0.19D-07   133.84
    6     2     2     1.08799262    -0.25084425   -25.30537932    -0.00000674    -0.00000065  0.30D-06  0.93D-07   133.84
    6     3     3     1.08799240    -0.25084425   -25.30537932    -0.00000675    -0.00000065  0.30D-06  0.93D-07   133.84
    6     4     4     1.08799271    -0.25084424   -25.30537931    -0.00000679    -0.00000066  0.31D-06  0.95D-07   133.84
    6     5     5     1.08799216    -0.25084424   -25.30537931    -0.00000681    -0.00000066  0.31D-06  0.95D-07   133.84
    6     6     6     1.08799234    -0.25084424   -25.30537931    -0.00000682    -0.00000066  0.31D-06  0.95D-07   133.84
    6     7     7     1.08530183    -0.25097096   -25.25100001    -0.00000377    -0.00000035  0.81D-07  0.91D-07   133.84
    6     8     8     1.08530195    -0.25097096   -25.25100001    -0.00000378    -0.00000035  0.81D-07  0.90D-07   133.84
    6     9     9     1.08530156    -0.25097096   -25.25100001    -0.00000379    -0.00000035  0.82D-07  0.90D-07   133.84
    6    10    10     1.08530114    -0.25097094   -25.25099998    -0.00000398    -0.00000037  0.85D-07  0.96D-07   133.84
    6    11    11     1.08530017    -0.25097091   -25.25099996    -0.00000422    -0.00000039  0.88D-07  0.10D-06   133.84
    6    12    12     1.07515746    -0.24281839   -25.24132639    -0.00000263    -0.00000031  0.68D-07  0.90D-07   133.84
    7     1     1     1.07420957    -0.24562800   -25.36289580    -0.00000013    -0.00000001  0.42D-08  0.12D-08   158.35
    7     2     2     1.08806828    -0.25084494   -25.30538001    -0.00000068    -0.00000007  0.57D-07  0.95D-08   158.35
    7     3     3     1.08806815    -0.25084494   -25.30538001    -0.00000069    -0.00000007  0.58D-07  0.94D-08   158.35
    7     4     4     1.08806799    -0.25084494   -25.30538000    -0.00000069    -0.00000007  0.58D-07  0.95D-08   158.35
    7     5     5     1.08806781    -0.25084494   -25.30538000    -0.00000070    -0.00000007  0.59D-07  0.95D-08   158.35
    7     6     6     1.08806794    -0.25084494   -25.30538000    -0.00000069    -0.00000007  0.58D-07  0.96D-08   158.35
    7     7     7     1.08531157    -0.25097133   -25.25100038    -0.00000037    -0.00000004  0.26D-07  0.86D-08   158.35
    7     8     8     1.08531166    -0.25097134   -25.25100038    -0.00000037    -0.00000004  0.26D-07  0.85D-08   158.35
    7     9     9     1.08531153    -0.25097134   -25.25100038    -0.00000037    -0.00000004  0.26D-07  0.85D-08   158.35
    7    10    10     1.08531132    -0.25097133   -25.25100037    -0.00000039    -0.00000004  0.27D-07  0.91D-08   158.35
    7    11    11     1.08531105    -0.25097133   -25.25100037    -0.00000042    -0.00000004  0.28D-07  0.97D-08   158.35
    7    12    12     1.07517144    -0.24281875   -25.24132675    -0.00000035    -0.00000004  0.21D-07  0.84D-08   158.35
    8     1     1     1.07421074    -0.24562800   -25.36289581    -0.00000000    -0.00000001  0.33D-08  0.10D-08   181.64
    8     2     2     1.08809951    -0.25084502   -25.30538009    -0.00000008    -0.00000001  0.70D-08  0.23D-08   181.64
    8     3     3     1.08809941    -0.25084502   -25.30538009    -0.00000008    -0.00000001  0.71D-08  0.23D-08   181.64
    8     4     4     1.08809954    -0.25084502   -25.30538009    -0.00000008    -0.00000001  0.68D-08  0.23D-08   181.64
    8     5     5     1.08809957    -0.25084502   -25.30538009    -0.00000008    -0.00000001  0.69D-08  0.23D-08   181.64
    8     6     6     1.08809943    -0.25084502   -25.30538009    -0.00000008    -0.00000001  0.71D-08  0.23D-08   181.64
    8     7     7     1.08531574    -0.25097137   -25.25100042    -0.00000004    -0.00000001  0.26D-08  0.18D-08   181.64
    8     8     8     1.08531572    -0.25097137   -25.25100042    -0.00000004    -0.00000001  0.26D-08  0.18D-08   181.64
    8     9     9     1.08531577    -0.25097137   -25.25100042    -0.00000004    -0.00000001  0.26D-08  0.18D-08   181.64
    8    10    10     1.08531552    -0.25097137   -25.25100042    -0.00000004    -0.00000001  0.28D-08  0.19D-08   181.64
    8    11    11     1.08531525    -0.25097137   -25.25100042    -0.00000004    -0.00000001  0.30D-08  0.21D-08   181.64
    8    12    12     1.07517639    -0.24281879   -25.24132679    -0.00000004    -0.00000000  0.88D-09  0.70D-09   181.64


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  11.0%
 S   6.6%  25.8%
 P   1.0%  14.0%  11.3%

 Initialization:   1.4%
 Other:           29.0%

 Total CPU:      181.6 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22000000222000000           0.9190652   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                            -0.0000000   0.0000000  -0.0000000   0.0767752
 2/00\000222000000          -0.0000000   0.8852932   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1270650   0.0000000
                            -0.0000000   0.0000000   0.0000000  -0.0000000
 2/000\00222000000          -0.0000000  -0.0000000   0.8852932  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                             0.1270650  -0.0000000   0.0000000  -0.0000000
 2/0\0000222000000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.8852932  -0.0000000   0.1270651
                            -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2/\00000222000000           0.0000000  -0.0000000   0.0000000   0.8852231   0.0111554  -0.0000000  -0.0000000  -0.0000000
                             0.0000000  -0.0050391  -0.1269642  -0.0000000
 2/0000\0222000000          -0.0000000   0.0000000  -0.0000000  -0.0111554   0.8852230  -0.0000000   0.0000000  -0.0000000
                             0.0000000  -0.1269646   0.0050391   0.0000000
 2/00000\222000000          -0.1007044   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                             0.0000000  -0.0000001   0.0000001   0.8159368
 20/0\000222000000          -0.0000000   0.1929347  -0.0000000   0.0000000   0.0000000   0.0000000   0.6372842   0.0000000
                             0.0000000  -0.0000000  -0.0000000   0.0000000
 20/000\0222000000          -0.0000001   0.0000000  -0.0000000  -0.0024311   0.1929195  -0.0000000   0.0000000  -0.0000000
                             0.0000000   0.6367886  -0.0252730  -0.0000002
 2000/\00222000000           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1670864   0.0000000   0.5519078
                             0.0000000  -0.0000000   0.0000000   0.0000000
 200/\000222000000           0.0000000   0.0000000  -0.1670864   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                             0.5519070  -0.0000000  -0.0000000   0.0000000
 200/0\00222000000           0.0000000  -0.1670863  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.5519066   0.0000000
                             0.0000000   0.0000000  -0.0000000   0.0000000
 20000/\0222000000          -0.0000000  -0.0000000   0.1670864   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                            -0.5519045  -0.0000000   0.0000000  -0.0000000
 200/00\0222000000           0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.1670864  -0.0000000   0.5519040
                            -0.0000000  -0.0000000  -0.0000000  -0.0000000
 20002000222000000          -0.0488308   0.0000000  -0.0000000   0.1364145   0.0017190   0.0000000  -0.0000000   0.0000000
                            -0.0000000   0.0178705   0.4502766   0.1541321
 20200000222000000          -0.0488319   0.0000000  -0.0000000  -0.1364144  -0.0017191  -0.0000000  -0.0000000  -0.0000000
                             0.0000000  -0.0178709  -0.4502721   0.1541290
 20000020222000000          -0.0488319  -0.0000000   0.0000000   0.1364144   0.0017190  -0.0000000   0.0000000  -0.0000000
                            -0.0000000   0.0178712   0.4502717   0.1541290
 20000000222/0\000          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.2460300  -0.0000000  -0.4161350
                            -0.0000000  -0.0000000  -0.0000000   0.0000000
 20000000222/\0000          -0.0000000  -0.0000000  -0.2460300   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                            -0.4161350   0.0000000  -0.0000000   0.0000000
 200000002220/\000          -0.0000000  -0.2460298   0.0000000  -0.0000000  -0.0000000   0.0000000   0.4161349   0.0000000
                            -0.0000000   0.0000000   0.0000000   0.0000000
 20020000222000000          -0.0488308   0.0000000   0.0000000  -0.0667186  -0.1189978   0.0000000   0.0000000  -0.0000000
                             0.0000000  -0.3988799  -0.2096616   0.1541321
 20000200222000000          -0.0488307  -0.0000000   0.0000000  -0.0696961   0.1172786   0.0000000  -0.0000000   0.0000000
                            -0.0000000   0.3810096  -0.2406152   0.1541322
 20000000222200000          -0.1261975  -0.0000000  -0.0000000  -0.2008660  -0.0025313   0.0000000   0.0000000   0.0000000
                             0.0000000   0.0134746   0.3395066  -0.1575204
 20/00\00222000000          -0.0000000   0.0000000  -0.0964672  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                             0.3186407   0.0000000   0.0000000  -0.0000000
 20/\0000222000000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0964672  -0.0000000   0.3186406
                            -0.0000000  -0.0000000  -0.0000000  -0.0000000
 20000000222020000          -0.1261975  -0.0000000  -0.0000000   0.0982409   0.1752209  -0.0000000   0.0000000   0.0000000
                            -0.0000000  -0.3007581  -0.1580840  -0.1575204
 20000000222002000          -0.1261976   0.0000000  -0.0000000   0.1026251  -0.1726897  -0.0000000   0.0000000   0.0000000
                             0.0000000   0.2872836  -0.1814227  -0.1575203
 20000002222000000          -0.0100777  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                             0.0000000   0.0000000   0.0000000  -0.1747925
 20000/0\222000000           0.0000000  -0.0000000   0.0129438  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                             0.1215773  -0.0000000  -0.0000000  -0.0000000
 2000/00\222000000           0.0000000   0.0129438   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1215771  -0.0000000
                            -0.0000000  -0.0000000   0.0000000   0.0000000
 200/000\222000000           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0129437  -0.0000000   0.1215763
                            -0.0000000  -0.0000000  -0.0000000  -0.0000000
 20/0000\222000000          -0.0000001  -0.0000000  -0.0000000   0.0129428   0.0001631   0.0000000  -0.0000000   0.0000000
                            -0.0000000  -0.0048220  -0.1214831  -0.0000001
 200000/\222000000          -0.0000001   0.0000000  -0.0000000  -0.0001631   0.0129427  -0.0000000   0.0000000  -0.0000000
                            -0.0000000  -0.1214825   0.0048210  -0.0000003
 200000002220/0\00           0.0365880   0.0000000  -0.0000000  -0.0144542  -0.0257802  -0.0000000   0.0000000  -0.0000000
                            -0.0000000   0.0045690   0.0024014  -0.0860862
 20000000222/000\0           0.0365880   0.0000000  -0.0000000   0.0295534   0.0003724   0.0000000   0.0000000   0.0000000
                            -0.0000000  -0.0002047  -0.0051573  -0.0860862
 2000000022200/00\           0.0365880  -0.0000000  -0.0000000  -0.0150993   0.0254078  -0.0000000   0.0000000  -0.0000000
                            -0.0000000  -0.0043642   0.0027559  -0.0860861

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956608   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.056869
 2           0.000000    0.951813   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.056030
            -0.000000    0.000000
 3           0.000000    0.000000    0.951813    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.056030    0.000000
            -0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.950718    0.045650    0.000000    0.025950    0.000000   -0.000000   -0.000000
             0.049659    0.000000
 5          -0.000000   -0.000000    0.000000   -0.045650    0.950718    0.000000    0.049659    0.000000    0.000000   -0.000000
            -0.025950    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.951813    0.000000   -0.056030    0.000000    0.000000
             0.000000    0.000000
 7           0.000000   -0.055473   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.953479
            -0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.055473    0.000000    0.953479   -0.000000   -0.000000
             0.000000   -0.000000
 9          -0.000000   -0.000000    0.055473    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.953479   -0.000000
            -0.000000   -0.000000
 10         -0.000000   -0.000000   -0.000000    0.001160   -0.055460   -0.000000    0.856696    0.000000   -0.000000   -0.000000
            -0.418561    0.000000
 11          0.000000   -0.000000    0.000000   -0.055460   -0.001160   -0.000000    0.418561   -0.000000   -0.000000    0.000000
             0.856697    0.000000
 12          0.059378   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.955369

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958296    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000    0.001290
 2           0.000000    0.953461    0.000000   -0.000000   -0.000000    0.000000    0.000327    0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 3          -0.000000    0.000000    0.953461   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000327    0.000000
            -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.953461   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000009
             0.000327   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.953461    0.000000    0.000000    0.000000    0.000000    0.000327
            -0.000009   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.953461   -0.000000   -0.000327   -0.000000   -0.000000
             0.000000   -0.000000
 7          -0.000000    0.000327    0.000000   -0.000000    0.000000   -0.000000    0.955091    0.000000   -0.000000    0.000000
             0.000000   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000327    0.000000    0.955091    0.000000    0.000000
            -0.000000   -0.000000
 9           0.000000   -0.000000   -0.000327   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.955091    0.000000
             0.000000    0.000000
 10         -0.000000   -0.000000    0.000000    0.000009    0.000327   -0.000000    0.000000    0.000000    0.000000    0.955091
            -0.000000   -0.000000
 11          0.000000    0.000000   -0.000000    0.000327   -0.000009    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.955091    0.000000
 12          0.001290   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.957211


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95660845 (fixed)   0.95855467 (relaxed)   0.95829646 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01370303   -0.02276163   -0.17158995
 Singles      0.03359273   -0.07440130   -0.07590387
 Pairs        0.04163492    0.01225700    0.00186581
 Total        1.08893068   -0.08490593   -0.24562800
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.11683042
 Nuclear energy                         0.00000000
 Kinetic energy                         6.94568181
 One electron energy                  -41.22993397
 Two electron energy                   15.86703817
 Virial quotient                       -3.65160635
 Correlation energy                    -0.24606539
 !MRCI STATE 1.1 Energy               -25.362895807037

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.38477857 (Davidson, fixed reference)
 Cluster corrected energies           -25.38463423 (Davidson, relaxed reference)
 Cluster corrected energies           -25.38477857 (Davidson, rotated reference)

 Cluster corrected energies           -25.38136273 (Pople, fixed reference)
 Cluster corrected energies           -25.38123447 (Pople, relaxed reference)
 Cluster corrected energies           -25.38136273 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95181328 (fixed)   0.95443112 (relaxed)   0.95346096 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01094041   -0.01637292   -0.16091398
 Singles      0.04247595   -0.07658338   -0.07930910
 Pairs        0.04658740   -0.00000000   -0.01062194
 Total        1.10000376   -0.09295630   -0.25084502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05434903
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12179552
 One electron energy                  -41.47639503
 Two electron energy                   16.17101495
 Virial quotient                       -3.55323036
 Correlation energy                    -0.25103106
 !MRCI STATE 2.1 Energy               -25.305380086445

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33048414 (Davidson, fixed reference)
 Cluster corrected energies           -25.32992305 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33048414 (Davidson, rotated reference)

 Cluster corrected energies           -25.32670674 (Pople, fixed reference)
 Cluster corrected energies           -25.32620213 (Pople, relaxed reference)
 Cluster corrected energies           -25.32670674 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95181333 (fixed)   0.95443116 (relaxed)   0.95346101 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01094040   -0.01637292   -0.16091400
 Singles      0.04247586   -0.07658337   -0.07930909
 Pairs        0.04658739   -0.00000000   -0.01062193
 Total        1.10000365   -0.09295629   -0.25084502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05434903
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12179540
 One electron energy                  -41.47639450
 Two electron energy                   16.17101442
 Virial quotient                       -3.55323042
 Correlation energy                    -0.25103106
 !MRCI STATE 3.1 Energy               -25.305380086330

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33048411 (Davidson, fixed reference)
 Cluster corrected energies           -25.32992303 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33048411 (Davidson, rotated reference)

 Cluster corrected energies           -25.32670671 (Pople, fixed reference)
 Cluster corrected energies           -25.32620211 (Pople, relaxed reference)
 Cluster corrected energies           -25.32670671 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95071788 (fixed)   0.95443109 (relaxed)   0.95346091 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01094049   -0.01637293   -0.16091397
 Singles      0.04247599   -0.07658339   -0.07930911
 Pairs        0.04658741    0.00000000   -0.01062194
 Total        1.10000388   -0.09295632   -0.25084502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05434903
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12179512
 One electron energy                  -41.47639481
 Two electron energy                   16.17101472
 Virial quotient                       -3.55323056
 Correlation energy                    -0.25103106
 !MRCI STATE 4.1 Energy               -25.305380086319

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33048417 (Davidson, fixed reference)
 Cluster corrected energies           -25.32992306 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33048417 (Davidson, rotated reference)

 Cluster corrected energies           -25.32670676 (Pople, fixed reference)
 Cluster corrected energies           -25.32620214 (Pople, relaxed reference)
 Cluster corrected energies           -25.32670676 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95071789 (fixed)   0.95443108 (relaxed)   0.95346091 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01094045   -0.01637292   -0.16091395
 Singles      0.04247601   -0.07658340   -0.07930911
 Pairs        0.04658741   -0.00000000   -0.01062196
 Total        1.10000387   -0.09295633   -0.25084502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05434903
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12179542
 One electron energy                  -41.47639546
 Two electron energy                   16.17101538
 Virial quotient                       -3.55323042
 Correlation energy                    -0.25103106
 !MRCI STATE 5.1 Energy               -25.305380086037

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33048416 (Davidson, fixed reference)
 Cluster corrected energies           -25.32992307 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33048416 (Davidson, rotated reference)

 Cluster corrected energies           -25.32670676 (Pople, fixed reference)
 Cluster corrected energies           -25.32620215 (Pople, relaxed reference)
 Cluster corrected energies           -25.32670676 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95181332 (fixed)   0.95443115 (relaxed)   0.95346099 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01094041   -0.01637292   -0.16091400
 Singles      0.04247587   -0.07658337   -0.07930909
 Pairs        0.04658740   -0.00000000   -0.01062192
 Total        1.10000368   -0.09295629   -0.25084502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.05434903
 Nuclear energy                         0.00000000
 Kinetic energy                         7.12179539
 One electron energy                  -41.47639453
 Two electron energy                   16.17101444
 Virial quotient                       -3.55323043
 Correlation energy                    -0.25103106
 !MRCI STATE 6.1 Energy               -25.305380085346

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.33048411 (Davidson, fixed reference)
 Cluster corrected energies           -25.32992303 (Davidson, relaxed reference)
 Cluster corrected energies           -25.33048411 (Davidson, rotated reference)

 Cluster corrected energies           -25.32670672 (Pople, fixed reference)
 Cluster corrected energies           -25.32620212 (Pople, relaxed reference)
 Cluster corrected energies           -25.32670672 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95347885 (fixed)   0.95649050 (relaxed)   0.95509110 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01007659   -0.01356096   -0.16582206
 Singles      0.03403755   -0.07171754   -0.07321404
 Pairs        0.05213787    0.00000000   -0.01193527
 Total        1.09625202   -0.08527850   -0.25097137
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00021508
 Nuclear energy                         0.00000000
 Kinetic energy                         7.21083288
 One electron energy                  -41.50284657
 Two electron energy                   16.25184615
 Virial quotient                       -3.50181468
 Correlation energy                    -0.25078533
 !MRCI STATE 7.1 Energy               -25.251000416608

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27513901 (Davidson, fixed reference)
 Cluster corrected energies           -25.27433514 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27513901 (Davidson, rotated reference)

 Cluster corrected energies           -25.27146077 (Pople, fixed reference)
 Cluster corrected energies           -25.27074137 (Pople, relaxed reference)
 Cluster corrected energies           -25.27146077 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.95347885 (fixed)   0.95649051 (relaxed)   0.95509110 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01007660   -0.01356096   -0.16582207
 Singles      0.03403753   -0.07171753   -0.07321403
 Pairs        0.05213789   -0.00000000   -0.01193527
 Total        1.09625201   -0.08527849   -0.25097137
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00021508
 Nuclear energy                         0.00000000
 Kinetic energy                         7.21083278
 One electron energy                  -41.50284631
 Two electron energy                   16.25184589
 Virial quotient                       -3.50181472
 Correlation energy                    -0.25078533
 !MRCI STATE 8.1 Energy               -25.251000416595

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27513901 (Davidson, fixed reference)
 Cluster corrected energies           -25.27433513 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27513901 (Davidson, rotated reference)

 Cluster corrected energies           -25.27146077 (Pople, fixed reference)
 Cluster corrected energies           -25.27074137 (Pople, relaxed reference)
 Cluster corrected energies           -25.27146077 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95347884 (fixed)   0.95649049 (relaxed)   0.95509109 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01007657   -0.01356096   -0.16582205
 Singles      0.03403758   -0.07171754   -0.07321405
 Pairs        0.05213788    0.00000000   -0.01193527
 Total        1.09625203   -0.08527850   -0.25097137
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00021508
 Nuclear energy                         0.00000000
 Kinetic energy                         7.21083265
 One electron energy                  -41.50284579
 Two electron energy                   16.25184537
 Virial quotient                       -3.50181479
 Correlation energy                    -0.25078533
 !MRCI STATE 9.1 Energy               -25.251000416586

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27513901 (Davidson, fixed reference)
 Cluster corrected energies           -25.27433515 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27513901 (Davidson, rotated reference)

 Cluster corrected energies           -25.27146077 (Pople, fixed reference)
 Cluster corrected energies           -25.27074138 (Pople, relaxed reference)
 Cluster corrected energies           -25.27146077 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.85669644 (fixed)   0.95649060 (relaxed)   0.95509126 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01007645   -0.01356095   -0.16582203
 Singles      0.03403732   -0.07171758   -0.07321407
 Pairs        0.05213788   -0.00000002   -0.01193527
 Total        1.09625165   -0.08527855   -0.25097137
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00021508
 Nuclear energy                         0.00000000
 Kinetic energy                         7.21082959
 One electron energy                  -41.50283514
 Two electron energy                   16.25183473
 Virial quotient                       -3.50181628
 Correlation energy                    -0.25078533
 !MRCI STATE 10.1 Energy              -25.251000415919

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27513892 (Davidson, fixed reference)
 Cluster corrected energies           -25.27433508 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27513892 (Davidson, rotated reference)

 Cluster corrected energies           -25.27146068 (Pople, fixed reference)
 Cluster corrected energies           -25.27074132 (Pople, relaxed reference)
 Cluster corrected energies           -25.27146068 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.85669661 (fixed)   0.95649073 (relaxed)   0.95509144 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01007632   -0.01356094   -0.16582206
 Singles      0.03403696   -0.07171761   -0.07321410
 Pairs        0.05213796    0.00000000   -0.01193522
 Total        1.09625124   -0.08527855   -0.25097137
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00021508
 Nuclear energy                         0.00000000
 Kinetic energy                         7.21082549
 One electron energy                  -41.50282084
 Two electron energy                   16.25182043
 Virial quotient                       -3.50181827
 Correlation energy                    -0.25078533
 !MRCI STATE 11.1 Energy              -25.251000415204

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27513881 (Davidson, fixed reference)
 Cluster corrected energies           -25.27433501 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27513881 (Davidson, rotated reference)

 Cluster corrected energies           -25.27146059 (Pople, fixed reference)
 Cluster corrected energies           -25.27074126 (Pople, relaxed reference)
 Cluster corrected energies           -25.27146059 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95536853 (fixed)   0.95864260 (relaxed)   0.95721112 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01509061   -0.02093212   -0.02301223
 Singles      0.03287180   -0.07192806   -0.07321776
 Pairs        0.04343905   -0.14943943   -0.14658880
 Total        1.09140146   -0.24229962   -0.24281879
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -24.99894539
 Nuclear energy                         0.00000000
 Kinetic energy                         6.93404221
 One electron energy                  -40.43773356
 Two electron energy                   15.19640677
 Virial quotient                       -3.64020380
 Correlation energy                    -0.24238140
 !MRCI STATE 12.1 Energy              -25.241326789538

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.26348080 (Davidson, fixed reference)
 Cluster corrected energies           -25.26269136 (Davidson, relaxed reference)
 Cluster corrected energies           -25.26348080 (Davidson, rotated reference)

 Cluster corrected energies           -25.26005038 (Pople, fixed reference)
 Cluster corrected energies           -25.25934790 (Pople, relaxed reference)
 Cluster corrected energies           -25.26005038 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.39       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      206.66       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       220.52    215.70      3.11      0.06      1.43
 REAL TIME  *       239.09 SEC
 DISK USED  *       255.12 MB (local),        6.11 GB (total)
 SF USED    *         2.09 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -25.38477857  AU                              
 SETTING HLSDIAG(2)     =       -25.33048414  AU                              
 SETTING HLSDIAG(3)     =       -25.33048411  AU                              
 SETTING HLSDIAG(4)     =       -25.33048417  AU                              
 SETTING HLSDIAG(5)     =       -25.33048416  AU                              
 SETTING HLSDIAG(6)     =       -25.33048411  AU                              
 SETTING HLSDIAG(7)     =       -25.27513901  AU                              
 SETTING HLSDIAG(8)     =       -25.27513901  AU                              
 SETTING HLSDIAG(9)     =       -25.27513901  AU                              
 SETTING HLSDIAG(10)    =       -25.27513892  AU                              
 SETTING HLSDIAG(11)    =       -25.27513881  AU                              
 SETTING HLSDIAG(12)    =       -25.26348080  AU                              


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
 Number of external orbitals:     129 (  69  60 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  36

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -25.06120091
     2       -25.06120091
     3       -25.06120091
     4       -25.06120091
     5       -25.06120091
     6       -25.00451300
     7       -25.00451300
     8       -25.00451300
     9       -25.00451300
    10       -25.00451300
    11       -25.00451300
    12       -25.00451300
    13       -25.00361892
    14       -25.00023535
    15       -25.00023535
    16       -25.00023535

 Number of blocks in overlap matrix:   321   Smallest eigenvalue:  0.98D+00
 Number of N-2 electron functions:     361
 Number of N-1 electron functions:   21461

 Number of internal configurations:                35169
 Number of singly external configurations:       1384176
 Number of doubly external configurations:       1507149
 Total number of contracted configurations:      2926494
 Total number of uncontracted configurations:   11934042

 Diagonal Coupling coefficients finished.               Storage:21632631 words, CPU-Time:      5.92 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1149966 words, CPU-time:      0.13 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -25.06120091     0.00000000    -0.25517712  0.54D-01  0.51D-01     9.82
    1     2     2     1.00000000     0.00000000   -25.06120091     0.00000000    -0.25518497  0.54D-01  0.51D-01     9.82
    1     3     3     1.00000000     0.00000000   -25.06120091     0.00000000    -0.25505119  0.54D-01  0.51D-01     9.82
    1     4     4     1.00000000     0.00000000   -25.06120091     0.00000000    -0.25505837  0.54D-01  0.51D-01     9.82
    1     5     5     1.00000000     0.00000000   -25.06120091     0.00000000    -0.25518550  0.54D-01  0.51D-01     9.82
    1     6     6     1.00000000     0.00000000   -25.00451300    -0.00000000    -0.26910137  0.50D-01  0.64D-01     9.82
    1     7     7     1.00000000     0.00000000   -25.00451300     0.00000000    -0.26932763  0.50D-01  0.64D-01     9.82
    1     8     8     1.00000000     0.00000000   -25.00451300     0.00000000    -0.26895145  0.50D-01  0.64D-01     9.82
    1     9     9     1.00000000     0.00000000   -25.00451300     0.00000000    -0.26933672  0.50D-01  0.64D-01     9.82
    1    10    10     1.00000000     0.00000000   -25.00451300    -0.00000000    -0.26864405  0.50D-01  0.63D-01     9.82
    1    11    11     1.00000000     0.00000000   -25.00451300     0.00000000    -0.26931958  0.50D-01  0.64D-01     9.82
    1    12    12     1.00000000     0.00000000   -25.00451300     0.00000000    -0.26893654  0.50D-01  0.63D-01     9.82
    1    13    13     1.00000000     0.00000000   -25.00361892    -0.00000000    -0.22332584  0.37D-01  0.40D-01     9.82
    1    14    14     1.00000000     0.00000000   -25.00023535     0.00000000    -0.25443842  0.44D-01  0.59D-01     9.82
    1    15    15     1.00000000     0.00000000   -25.00023535     0.00000000    -0.25440303  0.44D-01  0.59D-01     9.82
    1    16    16     1.00000000     0.00000000   -25.00023535     0.00000000    -0.25446148  0.44D-01  0.59D-01     9.82
    2     1     1     1.08334536    -0.24517895   -25.30637986    -0.24517895    -0.00791743  0.29D-02  0.11D-02    62.60
    2     2     2     1.08333167    -0.24517802   -25.30637894    -0.24517802    -0.00791599  0.29D-02  0.11D-02    62.60
    2     3     3     1.08333876    -0.24516010   -25.30636102    -0.24516010    -0.00794084  0.29D-02  0.11D-02    62.60
    2     4     4     1.08334485    -0.24515107   -25.30635199    -0.24515107    -0.00794877  0.29D-02  0.11D-02    62.60
    2     5     5     1.08334203    -0.24514917   -25.30635008    -0.24514917    -0.00795019  0.29D-02  0.11D-02    62.60
    2     6     6     1.08637187    -0.24663195   -25.25114495    -0.24663195    -0.00754787  0.28D-02  0.13D-02    62.60
    2     7     7     1.08639665    -0.24657699   -25.25108999    -0.24657699    -0.00762157  0.28D-02  0.14D-02    62.60
    2     8     8     1.08638050    -0.24657469   -25.25108769    -0.24657469    -0.00762238  0.28D-02  0.14D-02    62.60
    2     9     9     1.08640750    -0.24655054   -25.25106354    -0.24655054    -0.00765646  0.28D-02  0.14D-02    62.60
    2    10    10     1.08641747    -0.24651454   -25.25102754    -0.24651454    -0.00770469  0.28D-02  0.14D-02    62.60
    2    11    11     1.08642311    -0.24651167   -25.25102467    -0.24651167    -0.00770530  0.28D-02  0.14D-02    62.60
    2    12    12     1.08641096    -0.24651146   -25.25102446    -0.24651146    -0.00770774  0.28D-02  0.14D-02    62.60
    2    13    13     1.08101149    -0.23746727   -25.24108619    -0.23746727    -0.00771083  0.31D-02  0.15D-02    62.60
    2    14    14     1.08100601    -0.24082900   -25.24106435    -0.24082900    -0.00773331  0.32D-02  0.15D-02    62.60
    2    15    15     1.08101573    -0.24082657   -25.24106192    -0.24082657    -0.00773698  0.32D-02  0.15D-02    62.60
    2    16    16     1.07039343    -0.23811849   -25.23835384    -0.23811849    -0.00521117  0.14D-02  0.65D-03    62.60
    3     1     1     1.08483411    -0.25312583   -25.31432675    -0.00794689    -0.00035484  0.12D-03  0.56D-04   115.72
    3     2     2     1.08483309    -0.25312578   -25.31432669    -0.00794775    -0.00035484  0.12D-03  0.56D-04   115.72
    3     3     3     1.08483635    -0.25312508   -25.31432599    -0.00796497    -0.00035565  0.12D-03  0.56D-04   115.72
    3     4     4     1.08483439    -0.25312443   -25.31432534    -0.00797335    -0.00035618  0.12D-03  0.56D-04   115.72
    3     5     5     1.08483490    -0.25312442   -25.31432533    -0.00797525    -0.00035619  0.12D-03  0.56D-04   115.72
    3     6     6     1.08730474    -0.25424055   -25.25875355    -0.00760860    -0.00028343  0.72D-04  0.58D-04   115.72
    3     7     7     1.08732519    -0.25423887   -25.25875187    -0.00766188    -0.00028707  0.72D-04  0.59D-04   115.72
    3     8     8     1.08731735    -0.25423819   -25.25875119    -0.00766349    -0.00028660  0.72D-04  0.58D-04   115.72
    3     9     9     1.08731434    -0.25423806   -25.25875106    -0.00768752    -0.00028677  0.72D-04  0.58D-04   115.72
    3    10    10     1.08732186    -0.25423698   -25.25874998    -0.00772244    -0.00028742  0.71D-04  0.59D-04   115.72
    3    11    11     1.08732114    -0.25423693   -25.25874993    -0.00772527    -0.00028757  0.71D-04  0.59D-04   115.72
    3    12    12     1.08732417    -0.25423648   -25.25874948    -0.00772502    -0.00028786  0.72D-04  0.59D-04   115.72
    3    13    13     1.08045611    -0.24509938   -25.24871830    -0.00763211    -0.00034200  0.61D-04  0.91D-04   115.72
    3    14    14     1.08045058    -0.24848100   -25.24871635    -0.00765201    -0.00034405  0.61D-04  0.91D-04   115.72
    3    15    15     1.08045326    -0.24848089   -25.24871624    -0.00765432    -0.00034421  0.61D-04  0.91D-04   115.72
    3    16    16     1.07445220    -0.24370838   -25.24394373    -0.00558989    -0.00018253  0.40D-04  0.26D-04   115.72
    4     1     1     1.08701199    -0.25352506   -25.31472597    -0.00039922    -0.00003117  0.27D-04  0.27D-05   167.20
    4     2     2     1.08701199    -0.25352496   -25.31472588    -0.00039919    -0.00003119  0.27D-04  0.27D-05   167.20
    4     3     3     1.08701166    -0.25352494   -25.31472586    -0.00039987    -0.00003121  0.27D-04  0.27D-05   167.20
    4     4     4     1.08701282    -0.25352476   -25.31472567    -0.00040033    -0.00003115  0.27D-04  0.27D-05   167.20
    4     5     5     1.08701261    -0.25352470   -25.31472562    -0.00040029    -0.00003113  0.27D-04  0.27D-05   167.20
    4     6     6     1.08889844    -0.25456281   -25.25907581    -0.00032226    -0.00002063  0.18D-04  0.20D-05   167.20
    4     7     7     1.08889759    -0.25456226   -25.25907526    -0.00032339    -0.00002067  0.18D-04  0.20D-05   167.20
    4     8     8     1.08889747    -0.25456226   -25.25907526    -0.00032407    -0.00002067  0.18D-04  0.20D-05   167.20
    4     9     9     1.08890068    -0.25456200   -25.25907500    -0.00032394    -0.00002061  0.18D-04  0.20D-05   167.20
    4    10    10     1.08889504    -0.25456112   -25.25907412    -0.00032413    -0.00002067  0.18D-04  0.20D-05   167.20
    4    11    11     1.08889512    -0.25456111   -25.25907411    -0.00032418    -0.00002067  0.18D-04  0.20D-05   167.20
    4    12    12     1.08889555    -0.25456109   -25.25907409    -0.00032461    -0.00002065  0.18D-04  0.20D-05   167.20
    4    13    13     1.08166484    -0.24547552   -25.24909444    -0.00037614    -0.00002618  0.19D-04  0.40D-05   167.20
    4    14    14     1.08166821    -0.24885908   -25.24909443    -0.00037808    -0.00002608  0.18D-04  0.40D-05   167.20
    4    15    15     1.08166541    -0.24885908   -25.24909443    -0.00037818    -0.00002620  0.19D-04  0.40D-05   167.20
    4    16    16     1.07565372    -0.24390472   -25.24414007    -0.00019634    -0.00000809  0.42D-05  0.87D-06   167.20
    5     1     1     1.08815009    -0.25356589   -25.31476680    -0.00004083    -0.00000414  0.18D-05  0.57D-06   218.61
    5     2     2     1.08814990    -0.25356582   -25.31476673    -0.00004086    -0.00000414  0.18D-05  0.57D-06   218.61
    5     3     3     1.08814983    -0.25356582   -25.31476673    -0.00004088    -0.00000415  0.18D-05  0.57D-06   218.61
    5     4     4     1.08814813    -0.25356551   -25.31476642    -0.00004075    -0.00000413  0.18D-05  0.57D-06   218.61
    5     5     5     1.08814832    -0.25356543   -25.31476634    -0.00004072    -0.00000413  0.18D-05  0.57D-06   218.61
    5     6     6     1.08961983    -0.25458886   -25.25910186    -0.00002605    -0.00000201  0.81D-06  0.35D-06   218.61
    5     7     7     1.08961864    -0.25458840   -25.25910140    -0.00002614    -0.00000203  0.82D-06  0.35D-06   218.61
    5     8     8     1.08961867    -0.25458840   -25.25910140    -0.00002614    -0.00000203  0.83D-06  0.35D-06   218.61
    5     9     9     1.08962123    -0.25458813   -25.25910113    -0.00002613    -0.00000199  0.79D-06  0.34D-06   218.61
    5    10    10     1.08961789    -0.25458729   -25.25910029    -0.00002618    -0.00000204  0.82D-06  0.35D-06   218.61
    5    11    11     1.08961784    -0.25458729   -25.25910029    -0.00002618    -0.00000204  0.82D-06  0.36D-06   218.61
    5    12    12     1.08961712    -0.25458720   -25.25910020    -0.00002611    -0.00000204  0.83D-06  0.36D-06   218.61
    5    13    13     1.08212804    -0.24550789   -25.24912681    -0.00003238    -0.00000313  0.14D-05  0.66D-06   218.61
    5    14    14     1.08212804    -0.24889146   -25.24912681    -0.00003238    -0.00000313  0.14D-05  0.67D-06   218.61
    5    15    15     1.08212801    -0.24889136   -25.24912671    -0.00003228    -0.00000314  0.14D-05  0.67D-06   218.61
    5    16    16     1.07595285    -0.24391340   -25.24414876    -0.00000868    -0.00000049  0.25D-06  0.52D-07   218.61
    6     1     1     1.08835963    -0.25357103   -25.31477195    -0.00000514    -0.00000041  0.22D-06  0.44D-07   268.24
    6     2     2     1.08835944    -0.25357097   -25.31477188    -0.00000515    -0.00000041  0.22D-06  0.44D-07   268.24
    6     3     3     1.08835950    -0.25357097   -25.31477188    -0.00000515    -0.00000041  0.22D-06  0.44D-07   268.24
    6     4     4     1.08835759    -0.25357064   -25.31477155    -0.00000513    -0.00000041  0.22D-06  0.44D-07   268.24
    6     5     5     1.08835746    -0.25357055   -25.31477147    -0.00000513    -0.00000041  0.22D-06  0.43D-07   268.24
    6     6     6     1.08968756    -0.25459133   -25.25910433    -0.00000247    -0.00000015  0.47D-07  0.31D-07   268.24
    6     7     7     1.08968748    -0.25459089   -25.25910389    -0.00000249    -0.00000015  0.47D-07  0.31D-07   268.24
    6     8     8     1.08968747    -0.25459089   -25.25910389    -0.00000249    -0.00000015  0.47D-07  0.31D-07   268.24
    6     9     9     1.08968634    -0.25459057   -25.25910357    -0.00000244    -0.00000014  0.46D-07  0.30D-07   268.24
    6    10    10     1.08968628    -0.25458979   -25.25910279    -0.00000250    -0.00000015  0.47D-07  0.31D-07   268.24
    6    11    11     1.08968627    -0.25458979   -25.25910279    -0.00000250    -0.00000015  0.47D-07  0.31D-07   268.24
    6    12    12     1.08968640    -0.25458970   -25.25910270    -0.00000251    -0.00000015  0.47D-07  0.32D-07   268.24
    6    13    13     1.08215571    -0.24551162   -25.24913054    -0.00000373    -0.00000030  0.67D-07  0.67D-07   268.24
    6    14    14     1.08215570    -0.24889519   -25.24913054    -0.00000373    -0.00000030  0.67D-07  0.68D-07   268.24
    6    15    15     1.08215548    -0.24889510   -25.24913046    -0.00000374    -0.00000030  0.67D-07  0.68D-07   268.24
    6    16    16     1.07601486    -0.24391396   -25.24414931    -0.00000056    -0.00000004  0.22D-07  0.48D-08   268.24
    7     1     1     1.08842687    -0.25357147   -25.31477238    -0.00000044    -0.00000004  0.33D-07  0.39D-08   317.94
    7     2     2     1.08842682    -0.25357141   -25.31477232    -0.00000044    -0.00000004  0.33D-07  0.39D-08   317.94
    7     3     3     1.08842685    -0.25357141   -25.31477232    -0.00000044    -0.00000004  0.33D-07  0.39D-08   317.94
    7     4     4     1.08842514    -0.25357108   -25.31477199    -0.00000044    -0.00000004  0.33D-07  0.38D-08   317.94
    7     5     5     1.08842495    -0.25357099   -25.31477191    -0.00000044    -0.00000004  0.33D-07  0.38D-08   317.94
    7     6     6     1.08970590    -0.25459149   -25.25910449    -0.00000016    -0.00000001  0.10D-07  0.24D-08   317.94
    7     7     7     1.08970584    -0.25459105   -25.25910405    -0.00000016    -0.00000001  0.10D-07  0.25D-08   317.94
    7     8     8     1.08970585    -0.25459105   -25.25910405    -0.00000016    -0.00000001  0.10D-07  0.25D-08   317.94
    7     9     9     1.08970454    -0.25459072   -25.25910372    -0.00000016    -0.00000001  0.10D-07  0.24D-08   317.94
    7    10    10     1.08970473    -0.25458996   -25.25910296    -0.00000016    -0.00000001  0.10D-07  0.25D-08   317.94
    7    11    11     1.08970474    -0.25458996   -25.25910296    -0.00000016    -0.00000001  0.10D-07  0.25D-08   317.94
    7    12    12     1.08970490    -0.25458987   -25.25910287    -0.00000016    -0.00000001  0.10D-07  0.25D-08   317.94
    7    13    13     1.08216221    -0.24551193   -25.24913086    -0.00000031    -0.00000002  0.20D-07  0.34D-08   317.94
    7    14    14     1.08216219    -0.24889550   -25.24913086    -0.00000031    -0.00000002  0.20D-07  0.34D-08   317.94
    7    15    15     1.08216204    -0.24889542   -25.24913077    -0.00000032    -0.00000002  0.20D-07  0.34D-08   317.94
    7    16    16     1.07602941    -0.24391401   -25.24414937    -0.00000005    -0.00000000  0.31D-08  0.34D-09   317.94
    8     1     1     1.08845501    -0.25357152   -25.31477243    -0.00000005    -0.00000001  0.33D-08  0.79D-09   365.60
    8     2     2     1.08845497    -0.25357146   -25.31477237    -0.00000005    -0.00000001  0.33D-08  0.79D-09   365.60
    8     3     3     1.08845498    -0.25357146   -25.31477237    -0.00000005    -0.00000001  0.33D-08  0.79D-09   365.60
    8     4     4     1.08845320    -0.25357113   -25.31477204    -0.00000005    -0.00000001  0.33D-08  0.79D-09   365.60
    8     5     5     1.08845300    -0.25357104   -25.31477195    -0.00000005    -0.00000001  0.33D-08  0.79D-09   365.60
    8     6     6     1.08971469    -0.25459151   -25.25910451    -0.00000001    -0.00000000  0.68D-09  0.40D-09   365.60
    8     7     7     1.08971469    -0.25459107   -25.25910407    -0.00000001    -0.00000000  0.69D-09  0.41D-09   365.60
    8     8     8     1.08971469    -0.25459107   -25.25910407    -0.00000001    -0.00000000  0.69D-09  0.41D-09   365.60
    8     9     9     1.08971321    -0.25459074   -25.25910374    -0.00000001    -0.00000000  0.65D-09  0.38D-09   365.60
    8    10    10     1.08971363    -0.25458997   -25.25910297    -0.00000001    -0.00000000  0.69D-09  0.41D-09   365.60
    8    11    11     1.08971363    -0.25458997   -25.25910297    -0.00000001    -0.00000000  0.69D-09  0.41D-09   365.60
    8    12    12     1.08971380    -0.25458988   -25.25910288    -0.00000001    -0.00000000  0.69D-09  0.41D-09   365.60
    8    13    13     1.08216852    -0.24551196   -25.24913088    -0.00000003    -0.00000000  0.14D-08  0.93D-09   365.60
    8    14    14     1.08216851    -0.24889553   -25.24913088    -0.00000003    -0.00000000  0.14D-08  0.94D-09   365.60
    8    15    15     1.08216836    -0.24889545   -25.24913080    -0.00000003    -0.00000000  0.14D-08  0.95D-09   365.60
    8    16    16     1.07602941    -0.24391401   -25.24414937    -0.00000000    -0.00000000  0.31D-08  0.34D-09   365.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  10.3%
 S   6.5%  29.3%
 P   0.8%  14.9%  12.3%

 Initialization:   1.7%
 Other:           24.2%

 Total CPU:      365.6 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 20/000/0222000000           0.0000000  -0.0000000   0.0000000   0.0000719   0.0000000  -0.0000000   0.0000000  -0.0000000
                             0.9548897   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 20/0/000222000000           0.0000757  -0.0000000   0.0000000  -0.0000000   0.0000000   0.9548889   0.0000000   0.0000000
                             0.0000000   0.0000000  -0.0000000   0.0000002   0.0000000  -0.0000000   0.0000000  -0.0000000
 2//00000222000000           0.0000000  -0.0000000   0.0000000  -0.0000196   0.9534673  -0.0000000   0.0000000   0.0000000
                             0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000006
 2/0000/0222000000          -0.0000000   0.0000000  -0.0000000   0.9534673   0.0000196   0.0000000   0.0000000   0.0000000
                            -0.0000776  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2/000/00222000000          -0.0000000   0.9534668  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000617  -0.0000000
                             0.0000000  -0.0000547  -0.0000000   0.0000000   0.0000000   0.0000026  -0.0000000  -0.0000000
 2/0/0000222000000          -0.0000000   0.0000000   0.9534668   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000617
                            -0.0000000  -0.0000000   0.0000547  -0.0000000   0.0000026   0.0000000  -0.0000000  -0.0000000
 2/00/000222000000           0.9534668   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000817  -0.0000000   0.0000000
                            -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 2/00000/222000000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000007   0.0000000   0.0000000   0.0000000
                            -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.9438973
 200/0/00222000000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000002  -0.0000000  -0.0000000
                             0.0000000   0.0000000   0.0000000   0.8541413   0.0000000  -0.0000000  -0.3667294   0.0000000
 20000//0222000000           0.0000000  -0.0000647   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.7652069  -0.0000000
                             0.0000000  -0.3793706  -0.0000000   0.0000000  -0.0000000  -0.3668557  -0.0000000  -0.0000000
 200/00/0222000000          -0.0000000  -0.0000000   0.0000647   0.0000000  -0.0000000  -0.0000000   0.0000000   0.7650770
                             0.0000000  -0.0000000  -0.3796325  -0.0000000   0.3668557   0.0000000  -0.0000000  -0.0000000
 2000/0/0222000000           0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000
                            -0.0000000  -0.0000000  -0.0000000   0.4269160   0.0000000  -0.0000000   0.7338152   0.0000000
 200//000222000000           0.0000000  -0.0000002   0.0000000   0.0000000   0.0000000  -0.0000000   0.5585960  -0.0000000
                            -0.0000000   0.6461507  -0.0000000   0.0000000  -0.0000000   0.3667525   0.0000000  -0.0000000
 2000//00222000000          -0.0000000   0.0000000   0.0000002  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.5588172
                             0.0000000   0.0000000   0.6459595  -0.0000000  -0.3667525   0.0000000   0.0000000  -0.0000000
 20//0000222000000          -0.0000000   0.0000000  -0.0000400  -0.0000000   0.0000000   0.0000000   0.0000000  -0.1191365
                             0.0000000   0.0000000   0.5919715  -0.0000000   0.6355228  -0.0000000   0.0000000   0.0000000
 20/00/00222000000           0.0000000  -0.0000400  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.1193391  -0.0000000
                             0.0000000  -0.5919306   0.0000000   0.0000000   0.0000000   0.6355228  -0.0000000  -0.0000000
 200000002220//000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                             0.0000000  -0.0000000   0.0000000   0.0000750   0.0000000   0.0000000  -0.4941852  -0.0000000
 20000000222//0000          -0.0000000   0.0000008   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000218   0.0000000
                            -0.0000000  -0.0000653   0.0000000  -0.0000000  -0.0000000  -0.4941805  -0.0000000   0.0000000
 20000000222/0/000           0.0000000   0.0000000   0.0000008  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000219
                            -0.0000000  -0.0000000   0.0000654  -0.0000000  -0.4941804  -0.0000000   0.0000000   0.0000000
 200000002220/0/00          -0.0000000  -0.0000000  -0.0000000  -0.0010165  -0.0005874  -0.0000000  -0.0000000  -0.0000000
                            -0.0000001   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0952877
 2000000022200/00/          -0.0000000   0.0000000  -0.0000000   0.0010165  -0.0005874  -0.0000000   0.0000000  -0.0000000
                             0.0000001  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0952876
 20000000222/000/0          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0011735  -0.0000000  -0.0000000  -0.0000000
                            -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0952870

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000000  29.1    -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000003  -0.0000000  -0.0000000  -0.0000000
                            -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0585994
 2/000000222000000  19.1     0.0000000  -0.0000000  -0.0564043   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000057
                             0.0000000  -0.0000000  -0.0000038  -0.0000000   0.0000010  -0.0000000   0.0000000   0.0000000
 2/000000222000000  16.1    -0.0000000  -0.0564042   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000057  -0.0000000
                            -0.0000000   0.0000038  -0.0000000  -0.0000000  -0.0000000   0.0000010   0.0000000  -0.0000000
 2/000000222000000  15.1    -0.0564042   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000103  -0.0000000  -0.0000000
                            -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 2/000000222000000  18.1     0.0000000  -0.0000000  -0.0000000  -0.0564016  -0.0000012  -0.0000000   0.0000000   0.0000000
                             0.0000098  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 2/000000222000000  17.1    -0.0000000  -0.0000000  -0.0000000   0.0000012  -0.0564016  -0.0000000   0.0000000   0.0000000
                             0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.953395   -0.000000    0.000000   -0.000000   -0.000000    0.000076   -0.000000    0.000000    0.000000    0.000000
             0.000001    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.953395   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000075   -0.000013   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000002
 3           0.000000   -0.000000    0.000000   -0.000000    0.953395    0.000000   -0.000005   -0.000000    0.000000    0.000000
             0.000000    0.000076    0.000000   -0.000002    0.000000   -0.000000
 4           0.000000   -0.000000    0.009051    0.953353    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000072
             0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.953353   -0.009051   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000001   -0.000000    0.000000    0.000000
 6          -0.000082    0.000000   -0.000000    0.000000   -0.000000    0.954814   -0.000000   -0.000000   -0.000000   -0.000000
             0.011985   -0.000000    0.000000   -0.000000    0.000000    0.000000
 7          -0.000000    0.000062    0.000000    0.000000   -0.000000    0.000000    0.000000    0.594170    0.747512    0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000046
 8           0.000000   -0.000000    0.000000    0.000000   -0.000062    0.000000    0.585753   -0.000000   -0.000000   -0.000000
             0.000000    0.754126    0.000000   -0.000046    0.000000   -0.000000
 9          -0.000000    0.000000   -0.000001   -0.000078   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.954890
             0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 10          0.000000   -0.000055   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.747513    0.594171    0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000135
 11          0.000000   -0.000000   -0.000000    0.000000    0.000055   -0.000000    0.754127   -0.000000   -0.000000   -0.000000
             0.000000   -0.585754   -0.000000   -0.000136   -0.000000   -0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.011985   -0.000000    0.000000    0.000000   -0.000000
             0.954815    0.000000   -0.000000   -0.000000   -0.000156    0.000000
 13          0.000000    0.000000   -0.000000   -0.000000    0.000003    0.000000    0.000138    0.000000   -0.000000   -0.000000
             0.000000   -0.000048    0.000000    0.955567   -0.000000    0.000000
 14         -0.000000    0.000003   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000079   -0.000122    0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.955567
 15         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000002    0.000000   -0.000000    0.000000    0.000000
             0.000159   -0.000000   -0.000000   -0.000000    0.955567   -0.000000
 16         -0.000000   -0.000000    0.000001   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.958105   -0.000000    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.953395    0.000000   -0.000000   -0.000000   -0.000000   -0.000003   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.953395   -0.000000    0.000000   -0.000000   -0.000000    0.000002   -0.000000   -0.000000   -0.000002
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.953395    0.000000    0.000000    0.000000   -0.000000   -0.000002   -0.000000   -0.000000
             0.000002   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.953396    0.000000    0.000000    0.000000    0.000000   -0.000003   -0.000000
             0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.953396   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 6          -0.000003   -0.000000    0.000000    0.000000   -0.000000    0.954889    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 7          -0.000000    0.000002   -0.000000    0.000000   -0.000000    0.000000    0.954889    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 8          -0.000000   -0.000000   -0.000002    0.000000    0.000000   -0.000000    0.000000    0.954889   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 9           0.000000   -0.000000   -0.000000   -0.000003    0.000000   -0.000000    0.000000   -0.000000    0.954890    0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 10         -0.000000   -0.000002   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.954890
            -0.000000    0.000000   -0.000000   -0.000001   -0.000000   -0.000000
 11         -0.000000   -0.000000    0.000002    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.954890   -0.000000    0.000001   -0.000000    0.000000   -0.000000
 12         -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.954890   -0.000000    0.000000    0.000001   -0.000000
 13          0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000001   -0.000000    0.955567    0.000000   -0.000000    0.000000
 14          0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000001
            -0.000000    0.000000    0.000000    0.955567   -0.000000    0.000000
 15         -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000001   -0.000000   -0.000000    0.955567    0.000000
 16          0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000    0.958105


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95339540 (fixed)   0.95362425 (relaxed)   0.95339540 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01074921   -0.01816790   -0.16223029
 Singles      0.04326425   -0.07781875   -0.08070727
 Pairs        0.04614157   -0.00000000   -0.01063396
 Total        1.10015504   -0.09598664   -0.25357152
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06120091
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11871712
 One electron energy                  -41.53345999
 Two electron energy                   16.21868756
 Virial quotient                       -3.55608630
 Correlation energy                    -0.25357152
 !MRCI STATE 1.1 Energy               -25.314772430848

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34016890 (Davidson, fixed reference)
 Cluster corrected energies           -25.34003502 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34016890 (Davidson, rotated reference)

 Cluster corrected energies           -25.33478229 (Pople, fixed reference)
 Cluster corrected energies           -25.33467173 (Pople, relaxed reference)
 Cluster corrected energies           -25.33478229 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95339543 (fixed)   0.95362428 (relaxed)   0.95339543 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01074919   -0.01816785   -0.16223081
 Singles      0.04326412   -0.07781872   -0.08070722
 Pairs        0.04614166    0.00000060   -0.01063344
 Total        1.10015497   -0.09598597   -0.25357146
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06120091
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11871750
 One electron energy                  -41.53346020
 Two electron energy                   16.21868783
 Virial quotient                       -3.55608610
 Correlation energy                    -0.25357146
 !MRCI STATE 2.1 Energy               -25.314772369412

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34016881 (Davidson, fixed reference)
 Cluster corrected energies           -25.34003494 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34016881 (Davidson, rotated reference)

 Cluster corrected energies           -25.33478221 (Pople, fixed reference)
 Cluster corrected energies           -25.33467166 (Pople, relaxed reference)
 Cluster corrected energies           -25.33478221 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95339543 (fixed)   0.95362427 (relaxed)   0.95339543 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01074919   -0.01816785   -0.16223026
 Singles      0.04326413   -0.07781872   -0.08070722
 Pairs        0.04614167    0.00000000   -0.01063398
 Total        1.10015498   -0.09598657   -0.25357146
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06120091
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11871750
 One electron energy                  -41.53346019
 Two electron energy                   16.21868782
 Virial quotient                       -3.55608610
 Correlation energy                    -0.25357146
 !MRCI STATE 3.1 Energy               -25.314772368319

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34016881 (Davidson, fixed reference)
 Cluster corrected energies           -25.34003494 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34016881 (Davidson, rotated reference)

 Cluster corrected energies           -25.33478221 (Pople, fixed reference)
 Cluster corrected energies           -25.33467166 (Pople, relaxed reference)
 Cluster corrected energies           -25.33478221 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95335294 (fixed)   0.95362478 (relaxed)   0.95339591 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01074981   -0.01816831   -0.16223126
 Singles      0.04326230   -0.07781762   -0.08070587
 Pairs        0.04614176   -0.00000000   -0.01063400
 Total        1.10015387   -0.09598593   -0.25357113
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06120091
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11871943
 One electron energy                  -41.53346072
 Two electron energy                   16.21868868
 Virial quotient                       -3.55608509
 Correlation energy                    -0.25357113
 !MRCI STATE 4.1 Energy               -25.314772040667

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34016817 (Davidson, fixed reference)
 Cluster corrected energies           -25.34003428 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34016817 (Davidson, rotated reference)

 Cluster corrected energies           -25.33478162 (Pople, fixed reference)
 Cluster corrected energies           -25.33467106 (Pople, relaxed reference)
 Cluster corrected energies           -25.33478162 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95335295 (fixed)   0.95362478 (relaxed)   0.95339592 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01074998   -0.01816840   -0.16223143
 Singles      0.04326198   -0.07781739   -0.08070558
 Pairs        0.04614190   -0.00000000   -0.01063403
 Total        1.10015385   -0.09598579   -0.25357104
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.06120091
 Nuclear energy                         0.00000000
 Kinetic energy                         7.11871983
 One electron energy                  -41.53346037
 Two electron energy                   16.21868842
 Virial quotient                       -3.55608488
 Correlation energy                    -0.25357104
 !MRCI STATE 5.1 Energy               -25.314771951216

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.34016807 (Davidson, fixed reference)
 Cluster corrected energies           -25.34003418 (Davidson, relaxed reference)
 Cluster corrected energies           -25.34016807 (Davidson, rotated reference)

 Cluster corrected energies           -25.33478152 (Pople, fixed reference)
 Cluster corrected energies           -25.33467096 (Pople, relaxed reference)
 Cluster corrected energies           -25.33478152 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95481363 (fixed)   0.95488885 (relaxed)   0.95488885 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00642531   -0.01215172   -0.16681254
 Singles      0.03717699   -0.07328128   -0.07544943
 Pairs        0.05311414   -0.00000000   -0.01232954
 Total        1.09671644   -0.08543300   -0.25459151
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00451300
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29181126
 One electron energy                  -41.82132866
 Two electron energy                   16.56222415
 Virial quotient                       -3.46403707
 Correlation energy                    -0.25459151
 !MRCI STATE 6.1 Energy               -25.259104505765

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28372769 (Davidson, fixed reference)
 Cluster corrected energies           -25.28372769 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28372769 (Davidson, rotated reference)

 Cluster corrected energies           -25.27847289 (Pople, fixed reference)
 Cluster corrected energies           -25.27847289 (Pople, relaxed reference)
 Cluster corrected energies           -25.27847289 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.74751236 (fixed)   0.95488898 (relaxed)   0.95488898 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00642504   -0.01215147   -0.16680500
 Singles      0.03717710   -0.07328123   -0.07544942
 Pairs        0.05311401   -0.00000785   -0.01233665
 Total        1.09671615   -0.08544055   -0.25459107
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00451300
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29182271
 One electron energy                  -41.82134690
 Two electron energy                   16.56224283
 Virial quotient                       -3.46403157
 Correlation energy                    -0.25459107
 !MRCI STATE 7.1 Energy               -25.259104067766

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28372714 (Davidson, fixed reference)
 Cluster corrected energies           -25.28372714 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28372714 (Davidson, rotated reference)

 Cluster corrected energies           -25.27847236 (Pople, fixed reference)
 Cluster corrected energies           -25.27847236 (Pople, relaxed reference)
 Cluster corrected energies           -25.27847236 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.75412616 (fixed)   0.95488897 (relaxed)   0.95488897 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00642504   -0.01215147   -0.16681216
 Singles      0.03717710   -0.07328123   -0.07544942
 Pairs        0.05311402    0.00000000   -0.01232949
 Total        1.09671616   -0.08543270   -0.25459107
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00451300
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29182272
 One electron energy                  -41.82134692
 Two electron energy                   16.56224285
 Virial quotient                       -3.46403157
 Correlation energy                    -0.25459107
 !MRCI STATE 8.1 Energy               -25.259104067616

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28372714 (Davidson, fixed reference)
 Cluster corrected energies           -25.28372714 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28372714 (Davidson, rotated reference)

 Cluster corrected energies           -25.27847236 (Pople, fixed reference)
 Cluster corrected energies           -25.27847236 (Pople, relaxed reference)
 Cluster corrected energies           -25.27847236 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95488970 (fixed)   0.95488970 (relaxed)   0.95488970 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00642488   -0.01215152   -0.16681269
 Singles      0.03717534   -0.07328056   -0.07544847
 Pairs        0.05311427    0.00000000   -0.01232957
 Total        1.09671449   -0.08543207   -0.25459074
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00451300
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29179950
 One electron energy                  -41.82131322
 Two electron energy                   16.56220948
 Virial quotient                       -3.46404255
 Correlation energy                    -0.25459074
 !MRCI STATE 9.1 Energy               -25.259103736956

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28372635 (Davidson, fixed reference)
 Cluster corrected energies           -25.28372635 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28372635 (Davidson, rotated reference)

 Cluster corrected energies           -25.27847165 (Pople, fixed reference)
 Cluster corrected energies           -25.27847165 (Pople, relaxed reference)
 Cluster corrected energies           -25.27847165 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.74751326 (fixed)   0.95488988 (relaxed)   0.95488988 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00642411   -0.01215084   -0.16679047
 Singles      0.03717582   -0.07328076   -0.07544880
 Pairs        0.05311414   -0.00002327   -0.01235070
 Total        1.09671407   -0.08545487   -0.25458997
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00451300
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29182631
 One electron energy                  -41.82135687
 Two electron energy                   16.56225390
 Virial quotient                       -3.46402971
 Correlation energy                    -0.25458997
 !MRCI STATE 10.1 Energy              -25.259102970548

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28372540 (Davidson, fixed reference)
 Cluster corrected energies           -25.28372540 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28372540 (Davidson, rotated reference)

 Cluster corrected energies           -25.27847074 (Pople, fixed reference)
 Cluster corrected energies           -25.27847074 (Pople, relaxed reference)
 Cluster corrected energies           -25.27847074 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.75412669 (fixed)   0.95488988 (relaxed)   0.95488988 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00642411   -0.01215084   -0.16681169
 Singles      0.03717582   -0.07328076   -0.07544880
 Pairs        0.05311414   -0.00000000   -0.01232949
 Total        1.09671407   -0.08543160   -0.25458997
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00451300
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29182632
 One electron energy                  -41.82135690
 Two electron energy                   16.56225393
 Virial quotient                       -3.46402971
 Correlation energy                    -0.25458997
 !MRCI STATE 11.1 Energy              -25.259102970510

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28372540 (Davidson, fixed reference)
 Cluster corrected energies           -25.28372540 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28372540 (Davidson, rotated reference)

 Cluster corrected energies           -25.27847074 (Pople, fixed reference)
 Cluster corrected energies           -25.27847074 (Pople, relaxed reference)
 Cluster corrected energies           -25.27847074 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95481463 (fixed)   0.95488986 (relaxed)   0.95488986 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00642401   -0.01215073   -0.16681149
 Singles      0.03717601   -0.07328086   -0.07544892
 Pairs        0.05311411   -0.00000000   -0.01232947
 Total        1.09671413   -0.08543159   -0.25458988
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00451300
 Nuclear energy                         0.00000000
 Kinetic energy                         7.29183240
 One electron energy                  -41.82136683
 Two electron energy                   16.56226395
 Virial quotient                       -3.46402680
 Correlation energy                    -0.25458988
 !MRCI STATE 12.1 Energy              -25.259102882245

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.28372532 (Davidson, fixed reference)
 Cluster corrected energies           -25.28372532 (Davidson, relaxed reference)
 Cluster corrected energies           -25.28372532 (Davidson, rotated reference)

 Cluster corrected energies           -25.27847066 (Pople, fixed reference)
 Cluster corrected energies           -25.27847066 (Pople, relaxed reference)
 Cluster corrected energies           -25.27847066 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95556689 (fixed)   0.95773687 (relaxed)   0.95556690 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01200559   -0.01403542   -0.16201211
 Singles      0.03194688   -0.07103020   -0.07202040
 Pairs        0.05120812   -0.00000000   -0.01147945
 Total        1.09516059   -0.08506562   -0.24551196
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00023535
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19386276
 One electron energy                  -41.43590260
 Two electron energy                   16.18677171
 Virial quotient                       -3.50981548
 Correlation energy                    -0.24889553
 !MRCI STATE 13.1 Energy              -25.249130882240

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27281593 (Davidson, fixed reference)
 Cluster corrected energies           -25.27158214 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27281593 (Davidson, rotated reference)

 Cluster corrected energies           -25.26774732 (Pople, fixed reference)
 Cluster corrected energies           -25.26673523 (Pople, relaxed reference)
 Cluster corrected energies           -25.26774732 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.95556690 (fixed)   0.95773688 (relaxed)   0.95556691 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01200558   -0.01403542   -0.01554435
 Singles      0.03194688   -0.07103020   -0.07211910
 Pairs        0.05120811   -0.16382991   -0.16123208
 Total        1.09516057   -0.24889553   -0.24889553
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00023535
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19386269
 One electron energy                  -41.43590235
 Two electron energy                   16.18677146
 Virial quotient                       -3.50981552
 Correlation energy                    -0.24889553
 !MRCI STATE 14.1 Energy              -25.249130882164

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27281592 (Davidson, fixed reference)
 Cluster corrected energies           -25.27158214 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27281592 (Davidson, rotated reference)

 Cluster corrected energies           -25.26774731 (Pople, fixed reference)
 Cluster corrected energies           -25.26673523 (Pople, relaxed reference)
 Cluster corrected energies           -25.26774731 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95556734 (fixed)   0.95773697 (relaxed)   0.95556735 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01200478   -0.01403543   -0.16513862
 Singles      0.03194681   -0.07103024   -0.07211919
 Pairs        0.05120796    0.00000000   -0.01163763
 Total        1.09515955   -0.08506567   -0.24889545
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00023535
 Nuclear energy                         0.00000000
 Kinetic energy                         7.19386067
 One electron energy                  -41.43589721
 Two electron energy                   16.18676641
 Virial quotient                       -3.50981649
 Correlation energy                    -0.24889545
 !MRCI STATE 15.1 Energy              -25.249130799599

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.27281558 (Davidson, fixed reference)
 Cluster corrected energies           -25.27158199 (Davidson, relaxed reference)
 Cluster corrected energies           -25.27281558 (Davidson, rotated reference)

 Cluster corrected energies           -25.26774701 (Pople, fixed reference)
 Cluster corrected energies           -25.26673510 (Pople, relaxed reference)
 Cluster corrected energies           -25.26774701 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95810453 (fixed)   0.95821770 (relaxed)   0.95810453 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01239518   -0.02125597   -0.15949653
 Singles      0.03605795   -0.07318711   -0.07525743
 Pairs        0.04091386    0.00000000   -0.00916005
 Total        1.08936699   -0.09444309   -0.24391401
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -25.00361892
 Nuclear energy                         0.00000000
 Kinetic energy                         6.87732736
 One electron energy                  -40.21793415
 Two electron energy                   14.97378478
 Virial quotient                       -3.67063367
 Correlation energy                    -0.24053044
 !MRCI STATE 16.1 Energy              -25.244149365499

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -25.26564485 (Davidson, fixed reference)
 Cluster corrected energies           -25.26558296 (Davidson, relaxed reference)
 Cluster corrected energies           -25.26564485 (Davidson, rotated reference)

 Cluster corrected energies           -25.26099744 (Pople, fixed reference)
 Cluster corrected energies           -25.26094684 (Pople, relaxed reference)
 Cluster corrected energies           -25.26099744 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.39       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      575.04       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       701.65    481.11    215.70      3.11      0.06      1.43
 REAL TIME  *       750.76 SEC
 DISK USED  *       623.49 MB (local),       14.74 GB (total)
 SF USED    *         3.74 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =       -25.34016890  AU                              
 SETTING HLSDIAG(14)    =       -25.34016881  AU                              
 SETTING HLSDIAG(15)    =       -25.34016881  AU                              
 SETTING HLSDIAG(16)    =       -25.34016817  AU                              
 SETTING HLSDIAG(17)    =       -25.34016807  AU                              
 SETTING HLSDIAG(18)    =       -25.28372769  AU                              
 SETTING HLSDIAG(19)    =       -25.28372714  AU                              
 SETTING HLSDIAG(20)    =       -25.28372714  AU                              
 SETTING HLSDIAG(21)    =       -25.28372635  AU                              
 SETTING HLSDIAG(22)    =       -25.28372540  AU                              
 SETTING HLSDIAG(23)    =       -25.28372540  AU                              
 SETTING HLSDIAG(24)    =       -25.28372532  AU                              
 SETTING HLSDIAG(25)    =       -25.27281593  AU                              
 SETTING HLSDIAG(26)    =       -25.27281592  AU                              
 SETTING HLSDIAG(27)    =       -25.27281558  AU                              
 SETTING HLSDIAG(28)    =       -25.26564485  AU                              


        HLSDIAG
    -25.38477857
    -25.33048414
    -25.33048411
    -25.33048417
    -25.33048416
    -25.33048411
    -25.27513901
    -25.27513901
    -25.27513901
    -25.27513892
    -25.27513881
    -25.26348080
    -25.34016890
    -25.34016881
    -25.34016881
    -25.34016817
    -25.34016807
    -25.28372769
    -25.28372714
    -25.28372714
    -25.28372635
    -25.28372540
    -25.28372540
    -25.28372532
    -25.27281593
    -25.27281592
    -25.27281558
    -25.26564485
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  12

 Original energies:    -25.362896    -25.305380    -25.305380    -25.305380    -25.305380    -25.305380    -25.251000    -25.251000
                       -25.251000    -25.251000    -25.251000    -25.241327
 Replaced energies:    -25.384779    -25.330484    -25.330484    -25.330484    -25.330484    -25.330484    -25.275139    -25.275139
                       -25.275139    -25.275139    -25.275139    -25.263481

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:    -25.314772    -25.314772    -25.314772    -25.314772    -25.314772    -25.259105    -25.259104    -25.259104
                       -25.259104    -25.259103    -25.259103    -25.259103    -25.249131    -25.249131    -25.249131    -25.244149
 Replaced energies:    -25.340169    -25.340169    -25.340169    -25.340168    -25.340168    -25.283728    -25.283727    -25.283727
                       -25.283726    -25.283725    -25.283725    -25.283725    -25.272816    -25.272816    -25.272816    -25.265645



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -25.38477857

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   11916.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   11916.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   11916.24       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   11916.24       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   11916.26       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   24063.10       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24063.10       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24063.10       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24063.12
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00       0.00      70.32      -0.00       0.00      -0.00      -0.00      -0.00      12.08      -0.00
                            0.00      -0.00      -0.00       0.00       0.00     -70.32       0.00     -12.08       0.00       0.00

   14   2.1  1.0  1.0      -0.00     -70.33      -0.00       0.00      -0.00       0.00      12.07       0.00      -0.00       0.00
                            0.00       0.00       0.00    -120.83     -71.83      -0.00      -0.00      -0.00       0.00      12.82

   15   3.1  1.0  1.0      -0.00       0.00       0.00     122.61     -68.77      -0.00       0.00       0.00       0.00      11.17
                            0.00      70.33       0.00       0.00       0.00      -0.00     -12.07      -0.00       0.00       0.00

   16   4.1  1.0  1.0      -0.00       0.00       0.00       0.00      -0.00      70.31      -0.00      12.08       0.00       0.00
                           -0.00       0.00      70.30       0.00       0.00      -0.00      -0.00       0.00      12.08      -0.00

   17   5.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       0.00    -121.78       0.00     -20.84       0.00      -0.00
                            0.00      -0.00     121.78      -0.00      -0.00       0.00      -0.00       0.00      20.84       0.00

   18   6.1  1.0  1.0      -0.00      -0.00     -22.44      -0.00      -0.00       0.00      -0.00       0.00      82.59       0.00
                           -0.00       0.00       0.00      -0.00       0.00      22.44      -0.00     -82.59       0.00      -0.00

   19   7.1  1.0  1.0       0.00     -28.33      -0.00       0.00       0.00       0.00    -104.33       0.00      -0.00      -0.00
                           -0.01      -0.00       0.00       4.54      25.64       0.00       0.00       0.00       0.00      94.73

   20   8.1  1.0  1.0      -0.01      -0.00       0.00       5.18     -25.52      -0.00       0.00       0.00       0.00     -93.33
                            0.00     -28.33       0.00      -0.00       0.00      -0.00    -104.33       0.00       0.00      -0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00     -22.44      -0.00      82.59      -0.00      -0.00
                           -0.00      -0.00     -22.44      -0.00       0.00       0.00      -0.00      -0.00      82.59       0.00

   22  10.1  1.0  1.0      -0.00       1.53       0.00      -0.00      -0.00      -0.00       5.59      -0.00      -0.00      -0.00
                           -0.02      -0.00      -0.00     -24.35      12.14      -0.00      -0.00      -0.00      -0.00      42.13

   23  11.1  1.0  1.0      -0.02       0.00      -0.00     -24.04     -12.74       0.00       0.00       0.00       0.00     -49.15
                            0.00       1.54       0.00       0.00      -0.00      -0.00       5.63      -0.00       0.00      -0.00

   24  12.1  1.0  1.0       0.00       0.00      17.38       0.00       0.00      -0.00       0.00      -0.00     -64.02      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      17.38       0.00     -64.02       0.00       0.00

   25  13.1  1.0  1.0      72.31       0.00       0.00      16.01      28.59      -0.00      -0.00       0.00      -0.00    -175.58
                           -0.00     -28.43       0.00      -0.00      -0.00      -0.00     171.72       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00      28.43      -0.00       0.00      -0.00      -0.00    -171.72      -0.00      -0.00      -0.00
                          -72.31      -0.00      -0.00     -16.73      28.17       0.00      -0.00      -0.00       0.00    -167.71

   27  15.1  1.0  1.0      -0.00      -0.00      28.44      -0.00       0.00       0.00      -0.00       0.00     171.71      -0.00
                           -0.00       0.00      -0.00       0.00       0.00      28.44       0.00     171.71       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       2.51    -198.79       0.00      -0.00       0.00       0.00      33.93

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00     -99.45      -0.00     -17.07      -0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      99.45      -0.00      -0.00       0.00       0.00       0.00      17.07       0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     198.88       0.00       0.00      -0.00       0.00     -33.95      -0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.40     -31.71      -0.00      -0.00      -0.00      -0.00    -116.68

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -7.94      -0.00      29.18       0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -7.93       0.00      -0.00       0.00      -0.00       0.00      29.13      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      31.69      -0.00       0.00       0.00      -0.00     116.78      -0.00       0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      39.34       0.00    -144.90      -0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      39.35      -0.00      -0.00       0.00      -0.00       0.00    -144.91       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.00       0.00      42.76       0.54      -0.00       0.00      -0.00       0.00       6.23

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      40.22       0.00      -0.00      -0.00      -0.00       0.00     242.84       0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00     -40.22       0.00    -242.84       0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          102.26       0.00       0.00     -46.28      -0.58       0.00       0.00      -0.00      -0.00      11.13

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   45   1.1  1.0 -1.0      -0.00       0.00      70.32      -0.00       0.00      -0.00      -0.00      -0.00      12.08      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00      70.32      -0.00      12.08      -0.00      -0.00

   46   2.1  1.0 -1.0      -0.00     -70.33      -0.00       0.00      -0.00       0.00      12.07       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00     120.83      71.83       0.00       0.00       0.00      -0.00     -12.82

   47   3.1  1.0 -1.0      -0.00       0.00       0.00     122.61     -68.77      -0.00       0.00       0.00       0.00      11.17
                           -0.00     -70.33      -0.00      -0.00      -0.00       0.00      12.07       0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00      -0.00      70.31      -0.00      12.08       0.00       0.00
                            0.00      -0.00     -70.30      -0.00      -0.00       0.00       0.00      -0.00     -12.08       0.00

   49   5.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00    -121.78       0.00     -20.84       0.00      -0.00
                           -0.00       0.00    -121.78       0.00       0.00      -0.00       0.00      -0.00     -20.84      -0.00

   50   6.1  1.0 -1.0      -0.00      -0.00     -22.44      -0.00      -0.00       0.00      -0.00       0.00      82.59       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     -22.44       0.00      82.59      -0.00       0.00

   51   7.1  1.0 -1.0       0.00     -28.33      -0.00       0.00       0.00       0.00    -104.33       0.00      -0.00      -0.00
                            0.01       0.00      -0.00      -4.54     -25.64      -0.00      -0.00      -0.00      -0.00     -94.73

   52   8.1  1.0 -1.0      -0.01      -0.00       0.00       5.18     -25.52      -0.00       0.00       0.00       0.00     -93.33
                           -0.00      28.33      -0.00       0.00      -0.00       0.00     104.33      -0.00      -0.00       0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00     -22.44      -0.00      82.59      -0.00      -0.00
                            0.00       0.00      22.44       0.00      -0.00      -0.00       0.00       0.00     -82.59      -0.00

   54  10.1  1.0 -1.0      -0.00       1.53       0.00      -0.00      -0.00      -0.00       5.59      -0.00      -0.00      -0.00
                            0.02       0.00       0.00      24.35     -12.14       0.00       0.00       0.00       0.00     -42.13

   55  11.1  1.0 -1.0      -0.02       0.00      -0.00     -24.04     -12.74       0.00       0.00       0.00       0.00     -49.15
                           -0.00      -1.54      -0.00      -0.00       0.00       0.00      -5.63       0.00      -0.00       0.00

   56  12.1  1.0 -1.0       0.00       0.00      17.38       0.00       0.00      -0.00       0.00      -0.00     -64.02      -0.00
                            0.00       0.00       0.00       0.00      -0.00     -17.38      -0.00      64.02      -0.00      -0.00

   57  13.1  1.0 -1.0      72.31       0.00       0.00      16.01      28.59      -0.00      -0.00       0.00      -0.00    -175.58
                            0.00      28.43      -0.00       0.00       0.00       0.00    -171.72      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00      28.43      -0.00       0.00      -0.00      -0.00    -171.72      -0.00      -0.00      -0.00
                           72.31       0.00       0.00      16.73     -28.17      -0.00       0.00       0.00      -0.00     167.71

   59  15.1  1.0 -1.0      -0.00      -0.00      28.44      -0.00       0.00       0.00      -0.00       0.00     171.71      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00     -28.44      -0.00    -171.71      -0.00      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.01
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.01      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00     -70.33       0.00       0.00      -0.00      -0.00     -28.33      -0.00
                            0.00       0.00       0.00      -0.00     -70.33      -0.00       0.00      -0.00       0.00      28.33

    3   3.1  0.0  0.0       0.00       0.00      70.32      -0.00       0.00       0.00      -0.00     -22.44      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00     -70.30    -121.78      -0.00      -0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00      -0.00       0.00     122.61       0.00      -0.00      -0.00       0.00       5.18
                            0.00       0.00      -0.00     120.83      -0.00      -0.00       0.00       0.00      -4.54       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00      -0.00     -68.77      -0.00       0.00      -0.00       0.00     -25.52
                            0.00       0.00      -0.00      71.83      -0.00      -0.00       0.00      -0.00     -25.64      -0.00

    6   6.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00      70.31    -121.78       0.00       0.00      -0.00
                            0.00       0.00      70.32       0.00       0.00       0.00      -0.00     -22.44      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00      -0.00      12.07       0.00      -0.00       0.00      -0.00    -104.33       0.00
                            0.00       0.00      -0.00       0.00      12.07       0.00       0.00       0.00      -0.00     104.33

    8   8.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00      12.08     -20.84       0.00       0.00       0.00
                            0.00       0.00      12.08       0.00       0.00      -0.00      -0.00      82.59      -0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00      12.08      -0.00       0.00       0.00       0.00      82.59      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00     -12.08     -20.84      -0.00      -0.00      -0.00

   10  10.1  0.0  0.0       0.00       0.00      -0.00       0.00      11.17       0.00      -0.00       0.00      -0.00     -93.33
                            0.00       0.00      -0.00     -12.82      -0.00       0.00      -0.00       0.00     -94.73       0.00

   11  11.1  0.0  0.0   24063.14       0.00       0.00      -0.00     -21.32      -0.00       0.00       0.00      -0.00      21.61
                            0.00       0.00      -0.00     -20.36       0.00      -0.00       0.00       0.00     -14.18      -0.00

   12  12.1  0.0  0.0       0.00   26621.78      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.01
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.01      -0.00

   13   1.1  1.0  1.0       0.00      -0.00    9790.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     195.94       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0      -0.00      -0.00       0.00    9790.71       0.00       0.00       0.00       0.00       0.00       0.00
                           20.36       0.00      -0.00      -0.00      97.99       0.00      -0.00       0.00      -0.00      -1.11

   15   3.1  1.0  1.0     -21.32      -0.00       0.00       0.00    9790.71       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -97.99       0.00       0.00      -0.00      -0.00      -1.11       0.00

   16   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00    9790.85       0.00       0.00       0.00       0.00
                            0.00      -0.00    -195.94      -0.00      -0.00       0.00       0.00      -4.21       0.00      -0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    9790.87       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   18   6.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   22178.10       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       4.21       0.00      -0.00       0.00      -0.00

   19   7.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22178.23       0.00
                           14.18      -0.01      -0.00       0.00       1.11      -0.00       0.00      -0.00       0.00     254.85

   20   8.1  1.0  1.0      21.61      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22178.23
                            0.00       0.00      -0.00       1.11      -0.00       0.00      -0.00       0.00    -254.85       0.00

   21   9.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -4.21       0.00       0.00       0.00      -0.00    -179.25      -0.00      -0.00

   22  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -90.68      -0.02      -0.00      -0.00      -5.28       0.00       0.00      -0.00      -0.00      69.39

   23  11.1  1.0  1.0     -87.06      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -5.28      -0.00       0.00       0.00      -0.00     -69.33      -0.00

   24  12.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -5.77       0.00      -0.00       0.00

   25  13.1  1.0  1.0     -92.35      98.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -6.79       0.00      -0.00       0.00      -0.00      -0.03       0.00

   26  14.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          105.97     -98.74       0.00      -0.00       6.79       0.00      -0.00      -0.00       0.00      -0.03

   27  15.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       7.78       0.00       0.00       0.00

   28  16.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00     -69.29       0.00       0.00       0.00      -0.00      -3.81       0.00
                           -1.35      -0.00      -0.00      -0.00     -69.29      -0.00       0.00       0.00      -0.00       3.81

   30   2.1  1.0  0.0       0.00       0.00      69.29       0.00      -0.00       0.00      -0.00      -3.05      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00     -69.28    -119.99       0.00       0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00      69.28    -119.99       0.00       0.00       0.00
                            0.00      -0.00      69.29       0.00      -0.00       0.00       0.00      -3.05       0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00      -0.00      -0.00     -69.28       0.00       0.00       0.00      -0.00      -3.42
                            0.00       0.00       0.00      69.28      -0.00      -0.00       0.00      -0.00      -3.41       0.00

   33   5.1  1.0  0.0       0.00       0.00      -0.00       0.00     119.99      -0.00      -0.00      -0.00       0.00       0.63
                            0.00       0.00      -0.00     119.99      -0.00      -0.00       0.00       0.00      -0.64       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       3.05      -0.00      -0.00       0.00       0.00      56.27      -0.00
                            4.63       0.00      -0.00      -0.00       3.05       0.00      -0.00       0.00      -0.00     -56.31

   35   7.1  1.0  0.0       0.00       0.00       3.81       0.00      -0.00       0.00      -0.00     -56.27      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       3.41       0.64       0.00      -0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00       3.42      -0.63       0.00      -0.00      -0.00
                            0.00       0.00      -3.81      -0.00      -0.00      -0.00      -0.00      56.31      -0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       3.05      -0.00       0.00       0.00      -0.00      95.82
                           -0.00      -0.00      -0.00      -3.05       0.00      -0.00      -0.00      -0.00      95.85      -0.00

   38  10.1  1.0  0.0       0.00       0.00      -0.23      -0.00       0.00      -0.00       0.00    -113.53       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       1.70      -3.23       0.00       0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       1.70       3.23       0.00       0.00      -0.00
                           -0.00      -0.00       0.24       0.00      -0.00      -0.00       0.00     113.51       0.00      -0.00

   40  12.1  1.0  0.0       0.00       0.00      -0.00      -2.31       0.00      -0.00       0.00       0.00     -30.67       0.00
                          157.01      -0.03       0.00      -0.00       2.31      -0.00      -0.00       0.00       0.00     -30.62

   41  13.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      -4.81      -2.80       0.00       0.00       0.00
                           -0.00      -0.00      -4.82      -0.00      -0.00       0.00      -0.00       0.02       0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00      -4.82       0.00      -0.00       0.00      -0.00       0.02       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       4.81      -2.80       0.00       0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00      -4.81      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                          280.46     139.65      -0.00      -0.00       4.81       0.00       0.00       0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   45   1.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.36      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0     -21.32      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -14.18       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0      21.61      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           90.68       0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0     -87.06      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0     -92.35      98.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -105.97      98.74      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00      -0.00      -0.02       0.00      72.31       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.02      -0.00       0.00       0.00      72.31       0.00      -0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       1.53       0.00       0.00       0.00      28.43      -0.00       0.00       0.00       0.00
                            0.00       0.00      -1.54       0.00      28.43       0.00      -0.00       0.00       0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00      -0.00      17.38       0.00      -0.00      28.44       0.00       0.00       0.00
                           22.44       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

    4   4.1  0.0  0.0      -0.00      -0.00     -24.04       0.00      16.01       0.00      -0.00      -0.00       0.00       0.00
                            0.00      24.35      -0.00       0.00       0.00      16.73      -0.00      -0.00      -2.51      -0.00

    5   5.1  0.0  0.0       0.00      -0.00     -12.74       0.00      28.59      -0.00       0.00       0.00       0.00       0.00
                           -0.00     -12.14       0.00      -0.00       0.00     -28.17      -0.00      -0.00     198.79       0.00

    6   6.1  0.0  0.0     -22.44      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00     -17.38       0.00      -0.00     -28.44      -0.00      -0.00      99.45

    7   7.1  0.0  0.0      -0.00       5.59       0.00       0.00      -0.00    -171.72      -0.00       0.00       0.00       0.00
                            0.00       0.00      -5.63      -0.00    -171.72       0.00      -0.00      -0.00       0.00       0.00

    8   8.1  0.0  0.0      82.59      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      64.02      -0.00       0.00    -171.71      -0.00      -0.00      17.07

    9   9.1  0.0  0.0      -0.00      -0.00       0.00     -64.02      -0.00      -0.00     171.71      -0.00       0.00       0.00
                          -82.59       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   10  10.1  0.0  0.0      -0.00      -0.00     -49.15      -0.00    -175.58      -0.00      -0.00       0.00       0.00       0.00
                           -0.00     -42.13       0.00      -0.00      -0.00     167.71      -0.00       0.00     -33.93      -0.00

   11  11.1  0.0  0.0      -0.00       0.00     -87.06       0.00     -92.35      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      90.68       0.00      -0.00       0.00    -105.97      -0.00       0.00       1.35       0.00

   12  12.1  0.0  0.0       0.00       0.00      -0.02      -0.00      98.74      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.02       0.00       0.00      -0.00      98.74      -0.00      -0.00       0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      69.29
                            4.21       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -69.29       0.00
                           -0.00       0.00       5.28       0.00       6.79       0.00      -0.00      -0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       5.28       0.00      -0.00      -0.00      -6.79      -0.00       0.00      69.29       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      69.28

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       5.77      -0.00       0.00      -7.78       0.00      -0.00     119.99

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -3.05
                          179.25       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.81      -0.00
                            0.00       0.00      69.33       0.00       0.03      -0.00      -0.00      -0.00       0.00      -0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -69.39       0.00      -0.00      -0.00       0.03      -0.00       0.00      -3.81      -0.00

   21   9.1  1.0  1.0   22178.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -3.05

   22  10.1  1.0  1.0       0.00   22178.61       0.00       0.00       0.00       0.00       0.00       0.00       0.23       0.00
                           -0.00       0.00     -75.68      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00   22178.61       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      75.68      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.24       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   22178.62       0.00       0.00       0.00       0.00       0.00       2.31
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.01       0.00      -0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   24572.96       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00    -191.36      -0.00       0.00      -4.82      -0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   24572.96       0.00       0.00       4.82      -0.00
                           -0.00      -0.00       0.00       0.00     191.36       0.00      -0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   24573.04       0.00      -0.00       4.81
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      42.82      -0.00      -0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26146.83       0.00      -0.00
                           -0.00       0.00      -0.00       0.01      -0.00      -0.00     -42.82       0.00      -0.00       0.00

   29   1.1  1.0  0.0      -0.00       0.23       0.00       0.00      -0.00       4.82      -0.00       0.00    9790.69       0.00
                            0.00       0.00      -0.24      -0.00       4.82      -0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0      -0.00       0.00      -0.00       2.31       0.00      -0.00       4.81      -0.00       0.00    9790.71
                            3.05      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   31   3.1  1.0  0.0      -3.05      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -2.31       0.00      -0.00      -4.81      -0.00      -0.00      -0.00

   32   4.1  1.0  0.0       0.00       0.00      -1.70       0.00       4.81      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -1.70       0.00       0.00      -0.00      -4.81      -0.00      -0.00      -0.00      -0.00

   33   5.1  1.0  0.0      -0.00      -0.00      -3.23      -0.00       2.80       0.00       0.00      -0.00       0.00       0.00
                            0.00       3.23      -0.00       0.00       0.00       2.80      -0.00      -0.00      -0.00      -0.00

   34   6.1  1.0  0.0      -0.00     113.53      -0.00      -0.00      -0.00      -0.02       0.00      -0.00       0.00       0.00
                            0.00      -0.00    -113.51      -0.00      -0.02      -0.00      -0.00       0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00      -0.00      -0.00      30.67      -0.00      -0.00       0.00       0.00       0.00       0.00
                          -95.85      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   36   8.1  1.0  0.0     -95.82       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      30.62       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   37   9.1  1.0  0.0      -0.00      -0.00     -82.90       0.00      -0.01      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00     -82.86      -0.00       0.00      -0.00       0.01       0.00      -0.00      -0.00      -0.00

   38  10.1  1.0  0.0       0.00      -0.00      -0.00    -152.14      -0.00       0.00      -0.04      -0.00       0.00       0.00
                           82.86      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   39  11.1  1.0  0.0      82.90       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00    -152.16       0.00      -0.00      -0.04      -0.00      -0.00      -0.00

   40  12.1  1.0  0.0      -0.00     152.14      -0.00       0.00       0.00      -0.04      -0.00       0.00       0.00       0.00
                           -0.00       0.00     152.16       0.00       0.04       0.00       0.00       0.00      -0.00      -0.00

   41  13.1  1.0  0.0       0.01       0.00      -0.00      -0.00      -0.00       0.00      -0.00      30.28       0.00       0.00
                            0.00      -0.00      -0.00      -0.04       0.00       0.00     135.32       0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00      -0.00      -0.00       0.04      -0.00       0.00    -135.32      -0.00       0.00       0.00
                           -0.01      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      30.28      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.04      -0.00       0.00       0.00     135.32      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.04      -0.00    -135.32       0.00       0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00      -0.00     -30.28       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00     -30.28       0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -69.29
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      69.29       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      69.29       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      69.28

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     119.99

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.05
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.81       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.81      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.05

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.23      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.24       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -2.31
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -4.82      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.82       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.81
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.03

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -198.88      -0.00      -0.00      -0.00      -0.00     -31.69       0.00      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -99.45      -0.00       0.00       0.00      -0.00       7.93       0.00      -0.00     -39.35      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.40       0.00      -0.00      -0.00      -0.00       0.00     -42.76

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      31.71      -0.00       0.00      -0.00       0.00       0.00      -0.54

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       7.94      -0.00       0.00     -39.34      -0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      33.95       0.00       0.00       0.00       0.00    -116.78      -0.00       0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00     -29.18      -0.00       0.00     144.90      -0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.07      -0.00       0.00       0.00      -0.00     -29.13      -0.00       0.00     144.91      -0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     116.68       0.00       0.00       0.00      -0.00      -0.00      -6.23

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -4.63       0.00      -0.00       0.00       0.00       0.00    -157.01

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.03

   13   1.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       3.81      -0.00       0.00      -0.23      -0.00      -0.00
                          -69.29      -0.00       0.00       0.00      -0.00       3.81       0.00       0.00      -0.24      -0.00

   14   2.1  1.0  1.0       0.00      -0.00       0.00       3.05       0.00      -0.00       0.00      -0.00       0.00      -2.31
                           -0.00     -69.28    -119.99       0.00       0.00       0.00       3.05      -0.00      -0.00       0.00

   15   3.1  1.0  1.0      -0.00     -69.28     119.99      -0.00      -0.00      -0.00       3.05       0.00       0.00       0.00
                            0.00       0.00       0.00      -3.05       0.00       0.00      -0.00      -0.00       0.00      -2.31

   16   4.1  1.0  1.0      69.28       0.00      -0.00      -0.00       0.00       3.42      -0.00      -0.00       1.70      -0.00
                           -0.00       0.00       0.00      -0.00      -3.41       0.00       0.00      -1.70       0.00       0.00

   17   5.1  1.0  1.0    -119.99       0.00      -0.00       0.00      -0.00      -0.63       0.00       0.00       3.23       0.00
                           -0.00      -0.00      -0.00       0.00      -0.64       0.00       0.00       3.23      -0.00       0.00

   18   6.1  1.0  1.0       0.00       0.00      -0.00       0.00     -56.27       0.00       0.00    -113.53       0.00       0.00
                            3.05       0.00      -0.00      -0.00      -0.00     -56.31       0.00      -0.00    -113.51      -0.00

   19   7.1  1.0  1.0       0.00      -0.00       0.00      56.27      -0.00      -0.00      -0.00       0.00       0.00     -30.67
                           -0.00       3.41       0.64       0.00       0.00       0.00     -95.85      -0.00      -0.00      -0.00

   20   8.1  1.0  1.0       0.00      -3.42       0.63      -0.00       0.00      -0.00      95.82      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      56.31      -0.00      -0.00       0.00       0.00       0.00      30.62

   21   9.1  1.0  1.0      -3.05       0.00      -0.00      -0.00       0.00     -95.82      -0.00       0.00      82.90      -0.00
                            0.00      -0.00      -0.00      -0.00      95.85      -0.00       0.00     -82.86      -0.00       0.00

   22  10.1  1.0  1.0      -0.00       0.00      -0.00     113.53      -0.00       0.00      -0.00      -0.00       0.00     152.14
                            0.00       1.70      -3.23       0.00       0.00      -0.00      82.86       0.00       0.00      -0.00

   23  11.1  1.0  1.0      -0.00      -1.70      -3.23      -0.00      -0.00       0.00     -82.90      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00     113.51       0.00      -0.00       0.00      -0.00      -0.00    -152.16

   24  12.1  1.0  1.0      -0.00       0.00      -0.00      -0.00      30.67      -0.00       0.00    -152.14       0.00       0.00
                            2.31      -0.00      -0.00       0.00       0.00     -30.62      -0.00       0.00     152.16      -0.00

   25  13.1  1.0  1.0      -0.00       4.81       2.80      -0.00      -0.00      -0.00      -0.01      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.02       0.00      -0.00       0.00      -0.00      -0.00      -0.04

   26  14.1  1.0  1.0       0.00      -0.00       0.00      -0.02      -0.00       0.00      -0.00       0.00       0.00      -0.04
                            0.00       4.81      -2.80       0.00       0.00       0.00      -0.01      -0.00       0.00      -0.00

   27  15.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.04       0.00      -0.00
                            4.81       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.04      -0.00

   28  16.1  1.0  1.0      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0    9790.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00    9790.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00    9790.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   22178.10       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   22178.23       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   22178.23       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   22178.40       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22178.61       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22178.61       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22178.62
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -3.81       0.00      -0.00       0.23       0.00       0.00
                          -69.29      -0.00       0.00       0.00      -0.00       3.81       0.00       0.00      -0.24      -0.00

   46   2.1  1.0 -1.0      -0.00       0.00      -0.00      -3.05      -0.00       0.00      -0.00       0.00      -0.00       2.31
                           -0.00     -69.28    -119.99       0.00       0.00       0.00       3.05      -0.00      -0.00       0.00

   47   3.1  1.0 -1.0      -0.00      69.28    -119.99       0.00       0.00       0.00      -3.05      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -3.05       0.00       0.00      -0.00      -0.00       0.00      -2.31

   48   4.1  1.0 -1.0     -69.28       0.00       0.00       0.00      -0.00      -3.42       0.00       0.00      -1.70       0.00
                           -0.00      -0.00       0.00      -0.00      -3.41       0.00       0.00      -1.70       0.00       0.00

   49   5.1  1.0 -1.0     119.99      -0.00      -0.00      -0.00       0.00       0.63      -0.00      -0.00      -3.23      -0.00
                           -0.00      -0.00       0.00       0.00      -0.64       0.00       0.00       3.23      -0.00       0.00

   50   6.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      56.27      -0.00      -0.00     113.53      -0.00      -0.00
                            3.05       0.00      -0.00       0.00      -0.00     -56.31       0.00      -0.00    -113.51      -0.00

   51   7.1  1.0 -1.0      -0.00       0.00      -0.00     -56.27      -0.00       0.00       0.00      -0.00      -0.00      30.67
                           -0.00       3.41       0.64       0.00      -0.00       0.00     -95.85      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0      -0.00       3.42      -0.63       0.00      -0.00      -0.00     -95.82       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      56.31      -0.00       0.00       0.00       0.00       0.00      30.62

   53   9.1  1.0 -1.0       3.05      -0.00       0.00       0.00      -0.00      95.82      -0.00      -0.00     -82.90       0.00
                            0.00      -0.00      -0.00      -0.00      95.85      -0.00      -0.00     -82.86      -0.00       0.00

   54  10.1  1.0 -1.0       0.00      -0.00       0.00    -113.53       0.00      -0.00       0.00      -0.00      -0.00    -152.14
                            0.00       1.70      -3.23       0.00       0.00      -0.00      82.86      -0.00       0.00      -0.00

   55  11.1  1.0 -1.0       0.00       1.70       3.23       0.00       0.00      -0.00      82.90       0.00      -0.00       0.00
                           -0.00      -0.00       0.00     113.51       0.00      -0.00       0.00      -0.00       0.00    -152.16

   56  12.1  1.0 -1.0       0.00      -0.00       0.00       0.00     -30.67       0.00      -0.00     152.14      -0.00       0.00
                            2.31      -0.00      -0.00       0.00       0.00     -30.62      -0.00       0.00     152.16       0.00

   57  13.1  1.0 -1.0       0.00      -4.81      -2.80       0.00       0.00       0.00       0.01       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.02       0.00      -0.00       0.00      -0.00      -0.00      -0.04

   58  14.1  1.0 -1.0      -0.00       0.00      -0.00       0.02       0.00      -0.00       0.00      -0.00      -0.00       0.04
                            0.00       4.81      -2.80       0.00       0.00       0.00      -0.01      -0.00       0.00      -0.00

   59  15.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.04      -0.00       0.00
                            4.81       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.04      -0.00

   60  16.1  1.0 -1.0       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00    -102.26      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00     -70.33       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      70.33       0.00      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00      70.32      -0.00       0.00       0.00      -0.00     -22.44
                          -40.22      -0.00      -0.00       0.00      -0.00       0.00       0.00      70.30     121.78       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00     122.61       0.00      -0.00      -0.00
                           -0.00      -0.00      46.28      -0.00       0.00    -120.83       0.00       0.00      -0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     -68.77      -0.00       0.00      -0.00
                            0.00      -0.00       0.58      -0.00       0.00     -71.83       0.00       0.00      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      70.31    -121.78       0.00
                            0.00      40.22      -0.00      -0.00     -70.32      -0.00      -0.00      -0.00       0.00      22.44

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      12.07       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00     -12.07      -0.00      -0.00      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      12.08     -20.84       0.00
                           -0.00     242.84       0.00       0.00     -12.08      -0.00      -0.00       0.00       0.00     -82.59

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00      12.08      -0.00       0.00       0.00       0.00      82.59
                         -242.84      -0.00       0.00       0.00       0.00       0.00       0.00      12.08      20.84       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      11.17       0.00      -0.00       0.00
                           -0.00       0.00     -11.13      -0.00       0.00      12.82       0.00      -0.00       0.00      -0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     -21.32      -0.00       0.00       0.00
                            0.00       0.00    -280.46      -0.00       0.00      20.36      -0.00       0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00    -139.65      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0       0.00      -4.82       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.82      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0      -0.00       0.00      -4.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -4.81      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0      -4.81       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -4.81      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0      -2.80      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       2.80      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00       0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00      -0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0      -0.00       0.04       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0      -0.00      -0.00       0.00     -30.28       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     135.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00     135.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      30.28       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0      -0.00    -135.32      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.32       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0      30.28      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -30.28       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      69.29      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00     -69.29      -0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00     -69.29       0.00       0.00      -0.00       0.00       3.05
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -69.28    -119.99       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -69.28     119.99      -0.00
                            0.00       0.00       0.00       0.00      69.29       0.00       0.00       0.00       0.00      -3.05

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      69.28       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      69.28      -0.00       0.00       0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00    -119.99       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00     119.99      -0.00      -0.00      -0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -3.05       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       3.05       0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00      -3.81      -0.00       0.00      -0.00       0.00      56.27
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.41       0.64       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.42       0.63      -0.00
                            0.00       0.00       0.00       0.00      -3.81      -0.00      -0.00      -0.00      -0.00      56.31

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -3.05       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -3.05       0.00      -0.00      -0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.23       0.00      -0.00       0.00      -0.00     113.53
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00       1.70      -3.23       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -1.70      -3.23      -0.00
                            0.00       0.00       0.00       0.00       0.24       0.00      -0.00      -0.00       0.00     113.51

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       2.31      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       2.31      -0.00      -0.00       0.00

   41  13.1  1.0  0.0   24572.96       0.00       0.00       0.00      -0.00       0.00      -0.00       4.81       2.80      -0.00
                            0.00       0.00       0.00       0.00      -4.82      -0.00      -0.00       0.00      -0.00       0.02

   42  14.1  1.0  0.0       0.00   24572.96       0.00       0.00       4.82      -0.00       0.00      -0.00       0.00      -0.02
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.81      -2.80       0.00

   43  15.1  1.0  0.0       0.00       0.00   24573.04       0.00      -0.00       4.81       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       4.81       0.00       0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00   26146.83       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   45   1.1  1.0 -1.0      -0.00       4.82      -0.00       0.00    9790.69       0.00       0.00       0.00       0.00       0.00
                            4.82      -0.00       0.00       0.00       0.00      -0.00       0.00    -195.94      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00      -0.00       4.81      -0.00       0.00    9790.71       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00     -97.99      -0.00       0.00      -0.00

   47   3.1  1.0 -1.0      -0.00       0.00       0.00      -0.00       0.00       0.00    9790.71       0.00       0.00       0.00
                            0.00      -0.00      -4.81      -0.00      -0.00      97.99      -0.00      -0.00       0.00       0.00

   48   4.1  1.0 -1.0       4.81      -0.00      -0.00       0.00       0.00       0.00       0.00    9790.85       0.00       0.00
                           -0.00      -4.81      -0.00      -0.00     195.94       0.00       0.00      -0.00      -0.00       4.21

   49   5.1  1.0 -1.0       2.80       0.00       0.00      -0.00       0.00       0.00       0.00       0.00    9790.87       0.00
                            0.00       2.80      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   50   6.1  1.0 -1.0      -0.00      -0.02       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   22178.10
                           -0.02      -0.00      -0.00       0.00       0.00       0.00      -0.00      -4.21      -0.00       0.00

   51   7.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -1.11       0.00      -0.00       0.00

   52   8.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -1.11       0.00      -0.00       0.00      -0.00

   53   9.1  1.0 -1.0      -0.01      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00      -0.00       4.21      -0.00      -0.00      -0.00       0.00     179.25

   54  10.1  1.0 -1.0      -0.00       0.00      -0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       5.28      -0.00      -0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.04      -0.00       0.00       5.28       0.00      -0.00      -0.00       0.00

   56  12.1  1.0 -1.0       0.00      -0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       5.77      -0.00

   57  13.1  1.0 -1.0      -0.00       0.00      -0.00      30.28       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     135.32       0.00      -0.00       6.79      -0.00       0.00      -0.00       0.00

   58  14.1  1.0 -1.0      -0.00       0.00    -135.32      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      30.28      -0.00       0.00      -6.79      -0.00       0.00       0.00

   59  15.1  1.0 -1.0       0.00     135.32      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -135.32       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -7.78      -0.00

   60  16.1  1.0 -1.0     -30.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -30.28       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0       0.00      -0.01       0.00      -0.00      -0.02       0.00      72.31       0.00      -0.00       0.00
                           -0.01       0.00      -0.00      -0.02       0.00      -0.00      -0.00     -72.31      -0.00       0.00

    2   2.1  0.0  0.0     -28.33      -0.00       0.00       1.53       0.00       0.00       0.00      28.43      -0.00       0.00
                           -0.00     -28.33      -0.00      -0.00       1.54      -0.00     -28.43      -0.00       0.00      -0.00

    3   3.1  0.0  0.0      -0.00       0.00       0.00       0.00      -0.00      17.38       0.00      -0.00      28.44       0.00
                            0.00       0.00     -22.44      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

    4   4.1  0.0  0.0       0.00       5.18      -0.00      -0.00     -24.04       0.00      16.01       0.00      -0.00      -0.00
                            4.54      -0.00      -0.00     -24.35       0.00      -0.00      -0.00     -16.73       0.00       0.00

    5   5.1  0.0  0.0       0.00     -25.52       0.00      -0.00     -12.74       0.00      28.59      -0.00       0.00       0.00
                           25.64       0.00       0.00      12.14      -0.00       0.00      -0.00      28.17       0.00       0.00

    6   6.1  0.0  0.0       0.00      -0.00     -22.44      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00      17.38      -0.00       0.00      28.44       0.00

    7   7.1  0.0  0.0    -104.33       0.00      -0.00       5.59       0.00       0.00      -0.00    -171.72      -0.00       0.00
                            0.00    -104.33      -0.00      -0.00       5.63       0.00     171.72      -0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00      82.59      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00     -64.02       0.00      -0.00     171.71       0.00

    9   9.1  0.0  0.0      -0.00       0.00      -0.00      -0.00       0.00     -64.02      -0.00      -0.00     171.71      -0.00
                            0.00       0.00      82.59      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  0.0  0.0      -0.00     -93.33      -0.00      -0.00     -49.15      -0.00    -175.58      -0.00      -0.00       0.00
                           94.73      -0.00       0.00      42.13      -0.00       0.00       0.00    -167.71       0.00      -0.00

   11  11.1  0.0  0.0      -0.00      21.61      -0.00       0.00     -87.06       0.00     -92.35      -0.00       0.00      -0.00
                           14.18       0.00       0.00     -90.68      -0.00       0.00      -0.00     105.97       0.00      -0.00

   12  12.1  0.0  0.0       0.00      -0.01       0.00       0.00      -0.02      -0.00      98.74      -0.00      -0.00      -0.00
                           -0.01       0.00      -0.00      -0.02      -0.00      -0.00       0.00     -98.74       0.00       0.00

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

   29   1.1  1.0  0.0       3.81      -0.00       0.00      -0.23      -0.00      -0.00       0.00      -4.82       0.00      -0.00
                           -0.00       3.81       0.00       0.00      -0.24      -0.00       4.82      -0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00      -0.00       0.00      -0.00       0.00      -2.31      -0.00       0.00      -4.81       0.00
                            0.00       0.00       3.05      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   31   3.1  1.0  0.0      -0.00      -0.00       3.05       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -2.31       0.00      -0.00      -4.81      -0.00

   32   4.1  1.0  0.0       0.00       3.42      -0.00      -0.00       1.70      -0.00      -4.81       0.00       0.00      -0.00
                           -3.41       0.00       0.00      -1.70       0.00       0.00      -0.00      -4.81      -0.00      -0.00

   33   5.1  1.0  0.0      -0.00      -0.63       0.00       0.00       3.23       0.00      -2.80      -0.00      -0.00       0.00
                           -0.64       0.00       0.00       3.23      -0.00       0.00       0.00       2.80      -0.00      -0.00

   34   6.1  1.0  0.0     -56.27       0.00       0.00    -113.53       0.00       0.00       0.00       0.02      -0.00       0.00
                           -0.00     -56.31       0.00      -0.00    -113.51      -0.00      -0.02      -0.00      -0.00       0.00

   35   7.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00     -30.67       0.00       0.00      -0.00      -0.00
                            0.00       0.00     -95.85      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00      -0.00      95.82      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      30.62       0.00      -0.00       0.00      -0.00

   37   9.1  1.0  0.0       0.00     -95.82      -0.00       0.00      82.90      -0.00       0.01       0.00       0.00       0.00
                           95.85      -0.00       0.00     -82.86      -0.00       0.00      -0.00       0.01       0.00      -0.00

   38  10.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       0.00     152.14       0.00      -0.00       0.04       0.00
                            0.00      -0.00      82.86       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0      -0.00       0.00     -82.90      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00    -152.16       0.00      -0.00      -0.04      -0.00

   40  12.1  1.0  0.0      30.67      -0.00       0.00    -152.14       0.00       0.00      -0.00       0.04       0.00      -0.00
                            0.00     -30.62      -0.00       0.00     152.16      -0.00       0.04       0.00       0.00       0.00

   41  13.1  1.0  0.0      -0.00      -0.00      -0.01      -0.00       0.00       0.00      -0.00      -0.00       0.00     -30.28
                            0.00      -0.00       0.00      -0.00      -0.00      -0.04      -0.00       0.00     135.32       0.00

   42  14.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00      -0.04       0.00       0.00     135.32       0.00
                            0.00       0.00      -0.01      -0.00       0.00      -0.00      -0.00       0.00      -0.00      30.28

   43  15.1  1.0  0.0       0.00      -0.00      -0.00      -0.04       0.00      -0.00      -0.00    -135.32      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.04      -0.00    -135.32       0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00      -0.00      -0.00      -0.00      -0.00       0.00      30.28      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     -30.28       0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -4.21      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.11       0.00      -0.00      -5.28      -0.00      -6.79      -0.00       0.00       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.11      -0.00       0.00      -5.28      -0.00       0.00       0.00       6.79       0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -5.77       0.00      -0.00       7.78      -0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -179.25      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   51   7.1  1.0 -1.0   22178.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -254.85      -0.00      -0.00     -69.33      -0.00      -0.03       0.00       0.00       0.00

   52   8.1  1.0 -1.0       0.00   22178.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          254.85      -0.00      -0.00      69.39      -0.00       0.00       0.00      -0.03       0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00   22178.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   22178.61       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -69.39       0.00      -0.00      75.68       0.00       0.00      -0.00      -0.00       0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   22178.61       0.00       0.00       0.00       0.00       0.00
                           69.33       0.00       0.00     -75.68       0.00       0.00       0.00       0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   22178.62       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.01

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   24572.96       0.00       0.00       0.00
                            0.03      -0.00       0.00      -0.00      -0.00       0.00       0.00     191.36       0.00      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24572.96       0.00       0.00
                           -0.00       0.03       0.00       0.00      -0.00      -0.00    -191.36      -0.00       0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24573.04       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     -42.82

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26146.83
                           -0.00       0.00       0.00      -0.00       0.00      -0.01       0.00       0.00      42.82      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by    -25.38477857 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   11916.250       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   11916.257       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   11916.244       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   11916.245       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   11916.255       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   24063.101       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   24063.102
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000       0.000      99.448      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000     -99.455      -0.000       0.000      -0.000       0.000      17.063       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.002       0.000       0.000     173.390     -97.250      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      99.432      -0.000      17.080
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000    -172.224       0.000     -29.466
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000     -31.735      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000     -40.069      -0.000       0.000       0.000       0.000    -147.551       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.007      -0.000       0.000       7.327     -36.091      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000     -31.731      -0.000     116.803
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       2.164       0.000      -0.000      -0.000      -0.000       7.905      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.027       0.000      -0.000     -33.992     -18.013       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000      24.577       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+            102.257       0.000       0.000      22.642      40.427      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000      40.211      -0.000       0.000      -0.000      -0.000    -242.851      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000      -0.000      40.219      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.001       0.000      -0.001
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       2.505    -198.793       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000     -99.453      -0.000     -17.068

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      99.453      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     198.882       0.000       0.000      -0.000       0.000     -33.953      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.004      -0.000      -0.000       0.000       0.000      -0.001      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.400     -31.709      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -7.940      -0.000      29.184

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -7.926       0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      31.686      -0.000       0.000       0.000      -0.000     116.785      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      39.342       0.000    -144.899

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      39.345      -0.000      -0.000       0.000      -0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.032      -0.000       0.000      42.758       0.539      -0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      40.216       0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000     -40.216       0.000    -242.838

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              102.257       0.000       0.000     -46.282      -0.583       0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000     -99.448       0.000     -17.078

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002       0.000       0.000    -170.884    -101.588      -0.000      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      99.455       0.000       0.000       0.000      -0.000     -17.063      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      99.425       0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     172.228      -0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      31.735      -0.000    -116.805

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.007      -0.000       0.000       6.427      36.258       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -40.069       0.000      -0.000       0.000      -0.000    -147.548       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -31.731      -0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.027      -0.000      -0.000     -34.433      17.163      -0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       2.178       0.000       0.000      -0.000      -0.000       7.956      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      24.577       0.000     -90.538

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -40.211       0.000      -0.000      -0.000      -0.000     242.851       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -102.257      -0.000      -0.000     -23.653      39.844       0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      40.219       0.000     242.839

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.001       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.002      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000     -99.455       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000      99.448      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000     173.390       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000     -97.250      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      99.432
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      17.063       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      17.080
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           24063.101       0.000       0.000       0.000      17.078      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   24063.122       0.000       0.000      -0.000       0.000      15.797       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   24063.145       0.000       0.000      -0.000     -30.147      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26621.782      -0.000      -0.000      -0.003       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             17.078      -0.000       0.000      -0.000    9790.692       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000    9790.710       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      15.797     -30.147      -0.003       0.000       0.000    9790.710       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000    9790.851
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+            116.805       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000    -131.984      30.560      -0.009       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000     -69.509    -123.121      -0.028       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+            -90.538      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000    -248.306    -130.596     139.635       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+            242.839      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      33.930      -1.347      -0.000       0.000      -0.000     -97.991      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000     -97.971

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               17.068       0.000       0.000      -0.000      97.991       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      97.971      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000     169.693      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000    -116.682       4.631       0.000      -0.000      -0.000       4.315       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       4.829

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               29.134      -0.000       0.000       0.000      -5.394      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -4.308       0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       2.402

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                             -144.909       0.000      -0.000      -0.000       0.334       0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       6.231     157.008      -0.027       0.000      -0.000       3.269      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                              242.838       0.000      -0.000      -0.000      -6.810      -0.000      -0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       6.797

   15    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      11.131     280.458     139.647      -0.000      -0.000       6.805       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000     195.937

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      18.137      28.800       0.003      -0.000      -0.000      97.989       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000     -97.989       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               17.079      -0.000       0.000      -0.000    -195.937      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               29.466       0.000      -0.000      -0.000      -0.004       0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       4.212

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     133.971      20.047      -0.009      -0.000       0.000       1.114      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       1.112      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              116.803       0.000       0.000      -0.000      -4.213       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      59.578    -128.236      -0.027      -0.000      -0.000      -5.281       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -5.282      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -6.794       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -237.175     149.865    -139.635       0.000      -0.000       6.794       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>              -0.000      -0.000       0.000      -0.007       0.000      -0.000      -0.027       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      -0.000     -40.069      -0.000       0.000       2.164       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000     -31.735      -0.000       0.000       0.000       0.000      -0.000      24.577
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000      -0.000       0.000       7.327      -0.000      -0.000     -33.992       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000      -0.000       0.000     -36.091       0.000      -0.000     -18.013       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>            -172.224       0.000       0.000      -0.000     -31.731      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000      -0.000    -147.551       0.000      -0.000       7.905       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>             -29.466       0.000       0.000       0.000     116.803      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000     116.805      -0.000       0.000      -0.000      -0.000       0.000     -90.538
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>              -0.000       0.000      -0.000    -131.984      -0.000      -0.000     -69.509      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000      -0.000      30.560      -0.000       0.000    -123.121       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000      -0.000       0.000      -0.009       0.000       0.000      -0.028      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+           9790.874       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   22178.105       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   22178.226       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   22178.226       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   22178.399       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   22178.607       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   22178.606       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   22178.624
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       5.394       0.000       0.000      -0.334      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                             -169.693       0.000       0.000       0.000       4.308      -0.000      -0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000      -4.315       0.000       0.000      -0.000      -0.000       0.000      -3.269

    4    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -4.829       0.000       0.000      -2.402       0.000       0.000

    5    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.899       0.000       0.000       4.570      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000     -79.640       0.000      -0.000    -160.532      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.899       0.000       0.000       0.000    -135.549      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000      79.640      -0.000       0.000       0.000       0.000       0.000      43.304

    9    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000     135.549      -0.000       0.000    -117.187      -0.000       0.000

   10    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -4.570       0.000       0.000      -0.000     117.187       0.000       0.000      -0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000     160.532       0.000      -0.000       0.000      -0.000       0.000    -215.180

   12    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000     -43.304      -0.000       0.000     215.180       0.000

   13    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.034       0.000      -0.000       0.000      -0.000      -0.000      -0.052

   14    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -3.957       0.000       0.000       0.000      -0.009      -0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.005      -0.000      -0.000       0.054      -0.000

   16    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.002       0.000       0.000      -0.007       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.004       0.000       0.000       0.000       4.213       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -1.112      -0.000       0.000       5.282       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -1.114       0.000      -0.000       5.281       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -4.212       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       5.774

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     179.250       0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     254.849       0.000       0.000      69.326       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -254.849       0.000       0.000     -69.387       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -179.250      -0.000      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      69.387      -0.000       0.000     -75.678      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -69.326      -0.000      -0.000      75.678      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.774       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.031       0.000      -0.000       0.000       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.031      -0.000      -0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.778       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.007

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>             102.257       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    2    1  |0 0>               0.000      40.211      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000    -198.882

    3    1  |0 0>               0.000      -0.000      40.219       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     -99.453      -0.000

    4    1  |0 0>              22.642       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -2.505      -0.000       0.000      -0.000

    5    1  |0 0>              40.427      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     198.793       0.000       0.000       0.000

    6    1  |0 0>              -0.000      -0.000       0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      99.453      -0.000      -0.000

    7    1  |0 0>              -0.000    -242.851      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      33.953

    8    1  |0 0>               0.000      -0.000       0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      17.068      -0.000       0.000

    9    1  |0 0>              -0.000      -0.000     242.839      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000     -17.068      -0.000

   10    1  |0 0>            -248.306      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -33.930      -0.000      -0.000      -0.000

   11    1  |0 0>            -130.596      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       1.347       0.000      -0.000      -0.000

   12    1  |0 0>             139.635      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     -97.991      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000     -97.971

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      97.991       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      97.971      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000     169.693      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       4.315       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       4.829

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -5.394      -0.000      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -4.308       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       2.402

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.334       0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       3.269      -0.000

   13    1  |1 1>+          24572.959       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -6.810      -0.000      -0.000       0.000

   14    1  |1 1>+              0.000   24572.961       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       6.797

   15    1  |1 1>+              0.000       0.000   24573.036       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       6.805       0.000

   16    1  |1 1>+              0.000       0.000       0.000   26146.830      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000      -0.000      -0.000    9790.692       0.000       0.000       0.000
                                6.810      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000    9790.710       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000    9790.710       0.000
                                0.000      -0.000      -6.805      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000    9790.851
                               -0.000      -6.797      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       3.957      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.034      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.002      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.005      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.009       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.007      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.054      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.052       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     191.370       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      42.819      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -191.370       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -42.819       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      97.991      -0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     -97.991       0.000       0.000      -0.000
                                6.794       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000     -97.978
                               -0.000      -6.794      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      97.978       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000    -169.689       0.000
                               -0.000       0.000      -7.778       0.000       0.000       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -4.315       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000      -5.394      -0.000       0.000      -0.000
                                0.031      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -4.830
                               -0.000       0.031      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      -4.308       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.332       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -2.400
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       3.269      -0.000       0.000
                                0.000      -0.000       0.000      -0.007      -0.000      -0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       6.797
                               -0.000    -191.363      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       6.810      -0.000       0.000      -0.000
                              191.363       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       6.805       0.000      -0.000
                                0.000       0.000      -0.000      42.824      -0.000      -0.000      -0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000     -42.824       0.000      -0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.032

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.004      -0.000      -0.000      -0.000     -31.686       0.000      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       7.926       0.000      -0.000     -39.345      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.400       0.000      -0.000      -0.000      -0.000       0.000     -42.758

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      31.709      -0.000       0.000      -0.000       0.000       0.000      -0.539

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       7.940      -0.000       0.000     -39.342      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001       0.000       0.000       0.000    -116.785      -0.000       0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -29.184      -0.000       0.000     144.899      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -29.134      -0.000       0.000     144.909      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     116.682       0.000       0.000       0.000      -0.000      -0.000      -6.231

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.631       0.000      -0.000       0.000       0.000       0.000    -157.008

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.027

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       5.394       0.000       0.000      -0.334      -0.000

    2    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                             -169.693       0.000       0.000       0.000       4.308      -0.000      -0.000       0.000

    3    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000      -4.315       0.000       0.000      -0.000      -0.000       0.000      -3.269

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -4.829       0.000       0.000      -2.402       0.000       0.000

    5    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.899       0.000       0.000       4.570      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000     -79.640       0.000      -0.000    -160.532      -0.000

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.899       0.000       0.000       0.000    -135.549      -0.000      -0.000      -0.000

    8    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000      79.640      -0.000       0.000       0.000       0.000       0.000      43.304

    9    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000     135.549      -0.000       0.000    -117.187      -0.000       0.000

   10    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -4.570       0.000       0.000      -0.000     117.187       0.000       0.000      -0.000

   11    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000     160.532       0.000      -0.000       0.000      -0.000       0.000    -215.180

   12    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000     -43.304      -0.000       0.000     215.180       0.000

   13    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.034       0.000      -0.000       0.000      -0.000      -0.000      -0.052

   14    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -3.957       0.000       0.000       0.000      -0.009      -0.000       0.000      -0.000

   15    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.005      -0.000      -0.000       0.054      -0.000

   16    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.002       0.000       0.000      -0.007       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>            9790.874       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   22178.105       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   22178.226       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   22178.226       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   22178.399       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   22178.607       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   22178.606       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   22178.624
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-             -0.000       0.000       5.394      -0.000       0.000      -0.332      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       4.315       0.000      -0.000       0.000      -0.000       0.000      -3.269
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>-            169.689      -0.000      -0.000      -0.000       4.308       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    4    1  |1 1>-             -0.000      -0.000       0.000       4.830      -0.000      -0.000       2.400      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000      -0.000      -0.898       0.000       0.000       4.571       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 1>-             -0.000       0.000     -79.585       0.000       0.000    -160.559       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000      79.585       0.000      -0.000      -0.000       0.000       0.000     -43.377
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.898      -0.000       0.000       0.000     135.509      -0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    9    1  |1 1>-             -0.000      -0.000       0.000    -135.509       0.000       0.000     117.233      -0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   10    1  |1 1>-             -0.000     160.559      -0.000       0.000      -0.000       0.000       0.000     215.165
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   11    1  |1 1>-             -4.571      -0.000      -0.000       0.000    -117.233      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   12    1  |1 1>-             -0.000      -0.000      43.377      -0.000       0.000    -215.165       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   13    1  |1 1>-              3.957      -0.000      -0.000      -0.000      -0.009      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   14    1  |1 1>-              0.000      -0.034      -0.000       0.000      -0.000       0.000       0.000      -0.052
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.005      -0.000      -0.000      -0.054       0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   16    1  |1 1>-             -0.000      -0.000       0.000      -0.002      -0.000      -0.000      -0.007       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -102.257      -0.000      -0.000      -0.002      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000     -99.455      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -40.216      -0.000      -0.000       0.000       0.000      -0.000      -0.000     -99.425

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      46.282      -0.000      -0.000     170.884      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.583      -0.000      -0.000     101.588      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      40.216      -0.000      -0.000      99.448       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      17.063       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     242.838       0.000       0.000      17.078       0.000       0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -242.838      -0.000       0.000       0.000      -0.000      -0.000      -0.000     -17.079

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -11.131      -0.000      -0.000     -18.137      -0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -280.458      -0.000      -0.000     -28.800       0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -139.647      -0.000       0.000      -0.003      -0.000       0.000

    1    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                6.810      -0.000       0.000       0.000      -0.000       0.000      -0.000     195.937

    2    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      97.989       0.000

    3    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -6.805      -0.000       0.000     -97.989       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -6.797      -0.000      -0.000    -195.937      -0.000      -0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       3.957      -0.000      -0.000      -0.004       0.000       0.000      -0.000

    6    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.034      -0.000      -0.000       0.000      -0.000      -0.000       0.000       4.212

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.002      -0.000       0.000       1.114      -0.000

    8    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.005      -0.000      -0.000       1.112      -0.000       0.000

    9    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.009       0.000      -0.000      -4.213       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.007      -0.000      -0.000      -5.281       0.000

   11    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.054      -0.000      -0.000      -5.282      -0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.052       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   13    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     191.370       0.000       0.000      -6.794       0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      42.819       0.000      -0.000       6.794       0.000

   15    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -191.370       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   16    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -42.819       0.000       0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -97.991       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      97.991       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      97.978
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000     -97.978       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000     169.689      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       4.315      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       5.394       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       4.830
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       4.308      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000      -0.332      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       2.400
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -3.269       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   13    1  |1 0>           24572.959       0.000       0.000       0.000       0.000      -0.000       0.000      -6.797
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000   24572.961       0.000       0.000      -6.810       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000   24573.036       0.000       0.000      -6.805      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 0>               0.000       0.000       0.000   26146.830      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000      -6.810       0.000      -0.000    9790.692       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000       0.000      -6.805       0.000       0.000    9790.710       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000      -0.000      -0.000       0.000       0.000       0.000    9790.710       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -6.797       0.000       0.000      -0.000       0.000       0.000       0.000    9790.851
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -3.957      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.034      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000      -0.005      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000      -0.000       0.000       0.002       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.009       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000      -0.000       0.054       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-             -0.000      -0.000      -0.000       0.007       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-             -0.000       0.052       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000      -0.000       0.000     -42.819       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000     191.370       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-             -0.000    -191.370       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-             42.819      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.007      -0.000       0.000       0.027      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      40.069       0.000       0.000      -2.178       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -172.228      -0.000      -0.000      -0.000      31.731       0.000      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -6.427       0.000       0.000      34.433      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -36.258      -0.000      -0.000     -17.163       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -31.735      -0.000       0.000      -0.000       0.000       0.000     -24.577

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     147.548       0.000       0.000      -7.956      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     116.805      -0.000      -0.000       0.000       0.000       0.000      90.538

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -29.466      -0.000      -0.000      -0.000    -116.803       0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -133.971       0.000      -0.000     -59.578       0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -20.047      -0.000      -0.000     128.236       0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.009      -0.000       0.000       0.027       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.004       0.000       0.000       0.000       4.213       0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -1.112      -0.000       0.000       5.282       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -1.114       0.000      -0.000       5.281       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -4.212       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       5.774

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     179.250       0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     254.849       0.000       0.000      69.326       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -254.849       0.000       0.000     -69.387       0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -179.250      -0.000      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      69.387      -0.000       0.000     -75.678      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -69.326      -0.000      -0.000      75.678      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.774       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.031       0.000      -0.000       0.000       0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.031      -0.000      -0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.778       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.007

    1    1  |1 0>               0.000      -0.000      -5.394       0.000      -0.000       0.332       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 0>              -0.000      -4.315      -0.000       0.000      -0.000       0.000      -0.000       3.269
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>            -169.689       0.000       0.000       0.000      -4.308      -0.000      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000      -0.000      -4.830       0.000       0.000      -2.400       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 0>               0.000      -0.000       0.000       0.898      -0.000      -0.000      -4.571      -0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000      79.585      -0.000      -0.000     160.559      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 0>              -0.000     -79.585       0.000       0.000       0.000      -0.000      -0.000      43.377
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    8    1  |1 0>              -0.898       0.000      -0.000       0.000    -135.509       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000      -0.000     135.509       0.000      -0.000    -117.233       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

   10    1  |1 0>               0.000    -160.559       0.000      -0.000       0.000       0.000      -0.000    -215.165
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 0>               4.571       0.000       0.000      -0.000     117.233       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000     -43.377       0.000      -0.000     215.165      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   13    1  |1 0>              -3.957       0.000       0.000       0.000       0.009       0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

   14    1  |1 0>              -0.000       0.034       0.000      -0.000       0.000      -0.000      -0.000       0.052
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   15    1  |1 0>              -0.000      -0.000      -0.005       0.000       0.000       0.054      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   16    1  |1 0>               0.000       0.000      -0.000       0.002       0.000       0.000       0.007      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-           9790.874       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   22178.105       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   22178.226       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   22178.226       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   22178.399       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   22178.607       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   22178.606       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   22178.624
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
                                0.000     102.257       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                               40.211       0.000      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.001

    4    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      23.653      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     -39.844      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000     -40.219      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                             -242.851       0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000    -242.839      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.001

   10    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     237.175      -0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000    -149.865      -0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     139.635      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                                6.794       0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -6.794      -0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -7.778       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.031      -0.000      -0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.031      -0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.007

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000    -191.363      -0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                              191.363       0.000      -0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      42.824

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000     -42.824       0.000

    1    1  |1 0>              -0.000       6.810      -0.000       0.000
                                0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000       6.805      -0.000
                                0.000      -0.000       0.000      -0.000

    3    1  |1 0>              -0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000

    4    1  |1 0>               6.797      -0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000

    5    1  |1 0>               3.957       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.000      -0.034       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000

    7    1  |1 0>              -0.000      -0.000       0.005       0.000
                               -0.000      -0.000      -0.000       0.000

    8    1  |1 0>              -0.000       0.000      -0.000      -0.002
                                0.000      -0.000       0.000       0.000

    9    1  |1 0>              -0.009      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000

   10    1  |1 0>              -0.000       0.000      -0.054      -0.000
                                0.000      -0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000      -0.007
                                0.000       0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.052      -0.000       0.000
                               -0.000       0.000       0.000       0.000

   13    1  |1 0>               0.000       0.000      -0.000      42.819
                                0.000      -0.000      -0.000       0.000

   14    1  |1 0>              -0.000       0.000    -191.370      -0.000
                               -0.000      -0.000       0.000      -0.000

   15    1  |1 0>               0.000     191.370       0.000      -0.000
                               -0.000       0.000       0.000      -0.000

   16    1  |1 0>             -42.819       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000

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

   13    1  |1 1>-          24572.959       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   24572.961       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   24573.036       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   26146.830
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -25.38478448    -0.00000591       -1.30      0.00000000        0.00      0.0000
    2   -25.34150781     0.04327076     9496.83      0.04327667     9498.13      1.1776
    3   -25.34150781     0.04327076     9496.83      0.04327667     9498.13      1.1776
    4   -25.34150775     0.04327082     9496.85      0.04327672     9498.14      1.1776
    5   -25.34073608     0.04404249     9666.21      0.04404840     9667.51      1.1986
    6   -25.34073597     0.04404260     9666.23      0.04404851     9667.53      1.1986
    7   -25.34073559     0.04404298     9666.32      0.04404889     9667.61      1.1986
    8   -25.34073550     0.04404307     9666.34      0.04404898     9667.63      1.1986
    9   -25.34073550     0.04404307     9666.34      0.04404898     9667.63      1.1986
   10   -25.33927591     0.04550265     9986.68      0.04550856     9987.98      1.2384
   11   -25.33927583     0.04550274     9986.70      0.04550865     9987.99      1.2384
   12   -25.33927583     0.04550274     9986.70      0.04550865     9987.99      1.2384
   13   -25.33927577     0.04550280     9986.71      0.04550871     9988.01      1.2384
   14   -25.33927569     0.04550288     9986.73      0.04550879     9988.02      1.2384
   15   -25.33927569     0.04550288     9986.73      0.04550879     9988.02      1.2384
   16   -25.33927565     0.04550292     9986.74      0.04550883     9988.03      1.2384
   17   -25.33036721     0.05441136    11941.91      0.05441727    11943.21      1.4808
   18   -25.33036715     0.05441142    11941.93      0.05441733    11943.22      1.4808
   19   -25.33036703     0.05441154    11941.95      0.05441745    11943.25      1.4808
   20   -25.33036703     0.05441154    11941.95      0.05441745    11943.25      1.4808
   21   -25.33036702     0.05441155    11941.95      0.05441746    11943.25      1.4808
   22   -25.28547539     0.09930318    21794.53      0.09930909    21795.82      2.7023
   23   -25.28547508     0.09930349    21794.60      0.09930940    21795.89      2.7023
   24   -25.28547453     0.09930404    21794.72      0.09930995    21796.02      2.7024
   25   -25.28547453     0.09930404    21794.72      0.09930995    21796.02      2.7024
   26   -25.28547444     0.09930413    21794.74      0.09931004    21796.03      2.7024
   27   -25.28413532     0.10064325    22088.64      0.10064916    22089.94      2.7388
   28   -25.28413532     0.10064325    22088.64      0.10064916    22089.94      2.7388
   29   -25.28413502     0.10064355    22088.71      0.10064946    22090.00      2.7388
   30   -25.28413427     0.10064430    22088.87      0.10065021    22090.17      2.7388
   31   -25.28413427     0.10064430    22088.87      0.10065021    22090.17      2.7388
   32   -25.28413405     0.10064452    22088.92      0.10065042    22090.21      2.7388
   33   -25.28413388     0.10064469    22088.96      0.10065060    22090.25      2.7388
   34   -25.28250228     0.10227629    22447.05      0.10228220    22448.35      2.7832
   35   -25.28250227     0.10227630    22447.05      0.10228221    22448.35      2.7832
   36   -25.28250215     0.10227642    22447.08      0.10228233    22448.38      2.7832
   37   -25.28250215     0.10227642    22447.08      0.10228233    22448.38      2.7832
   38   -25.28250152     0.10227705    22447.22      0.10228296    22448.51      2.7833
   39   -25.28250127     0.10227730    22447.27      0.10228321    22448.57      2.7833
   40   -25.28250080     0.10227777    22447.38      0.10228368    22448.67      2.7833
   41   -25.28250080     0.10227777    22447.38      0.10228368    22448.67      2.7833
   42   -25.28250059     0.10227798    22447.42      0.10228389    22448.72      2.7833
   43   -25.27567225     0.10910631    23946.07      0.10911222    23947.36      2.9691
   44   -25.27567213     0.10910644    23946.09      0.10911235    23947.39      2.9691
   45   -25.27567204     0.10910653    23946.12      0.10911244    23947.41      2.9691
   46   -25.27567191     0.10910665    23946.14      0.10911256    23947.44      2.9691
   47   -25.27567191     0.10910666    23946.14      0.10911257    23947.44      2.9691
   48   -25.27466238     0.11011619    24167.71      0.11012210    24169.01      2.9966
   49   -25.27369727     0.11108130    24379.53      0.11108721    24380.82      3.0228
   50   -25.27369713     0.11108144    24379.56      0.11108735    24380.85      3.0228
   51   -25.27369713     0.11108144    24379.56      0.11108735    24380.86      3.0228
   52   -25.27129209     0.11348648    24907.40      0.11349239    24908.70      3.0883
   53   -25.27129196     0.11348661    24907.43      0.11349252    24908.73      3.0883
   54   -25.27129196     0.11348661    24907.43      0.11349252    24908.73      3.0883
   55   -25.27129171     0.11348686    24907.49      0.11349277    24908.78      3.0883
   56   -25.27129076     0.11348781    24907.69      0.11349372    24908.99      3.0883
   57   -25.26563539     0.11914318    26148.90      0.11914908    26150.20      3.2422
   58   -25.26563539     0.11914318    26148.90      0.11914909    26150.20      3.2422
   59   -25.26563539     0.11914318    26148.90      0.11914909    26150.20      3.2422
   60   -25.26337220     0.12140637    26645.62      0.12141228    26646.91      3.3038

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99997319 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000032  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.10766567  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000109 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000150 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.10765900
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000013

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00151666  0.10759309 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.10761385  0.00151647 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000151 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00290733 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000

   8    1  |0 0>           0.00000000 -0.00000000  0.00000298  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000298 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00291382
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00290038 -0.00011978  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00011947 -0.00290890  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00006652  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000024 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.54781657  0.00000009 -0.00000000  0.00000000  0.00000000  0.00000000  0.40597817
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000050

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.54780333 -0.00000000 -0.00000000 -0.40598400  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000921 -0.00000000  0.00000000 -0.00000412 -0.00000000

   3    1  |1 1>+          0.00000022  0.00000000 -0.00000000  0.00000000  0.40691488 -0.70239148  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000009 -0.54761371  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000009
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

   5    1  |1 1>+          0.00000000  0.00000005 -0.31614320  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000015
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001

   6    1  |1 1>+          0.00000000 -0.00000452 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00003170
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000323  0.00000000  0.00000000  0.00004009 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000032  0.00000000 -0.00000000  0.00000000 -0.00003457  0.00000936 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000408 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000027 -0.00000000  0.00000000  0.00000111  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000122  0.00000000 -0.00000000  0.00000000 -0.00001392 -0.00003267  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000262  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002861
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00422726 -0.00000000  0.00000000 -0.00000000 -0.00088087 -0.00050969  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00041815  0.00000000  0.00000000  0.00088161 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000001  0.00000000

  15    1  |1 1>+          0.00000000 -0.00041562 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00087873
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000 -0.00000215  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.81175754  0.00121125 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                           0.00000000  0.00000009 -0.54778574  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000009

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000050
                           0.00000000 -0.54778594 -0.00000009  0.00000000  0.00000000  0.00000000  0.00000000  0.40602187

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000823 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00001313  0.00000000  0.00000000  0.81163551 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00001063  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.63231505 -0.00000000  0.00000000  0.00001693 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003507 -0.00000005 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000206 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000206  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000765

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00003491 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000401 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000401 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00004182

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000145  0.00000000 -0.00000000  0.00000000 -0.00000006  0.00003737 -0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00041672  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00088374

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00041672 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00422725  0.00000000  0.00000000 -0.00000000 -0.00000152  0.00101776 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000213 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000009  0.54781670 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000009

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000023  0.00000000  0.00000000 -0.00000000  0.40481719  0.70360226 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000921 -0.00000000  0.00000000 -0.00000412 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.54780365  0.00000000  0.00000000  0.40598385 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000050
                           0.00000000  0.54762662  0.00000009 -0.00000000  0.00000000  0.00000000  0.00000000  0.40577592

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000087
                          -0.00000000 -0.31612071 -0.00000005  0.00000000  0.00000000  0.00000000  0.00000000  0.70290352

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000452  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000032  0.00000000 -0.00000000  0.00000000  0.00003453  0.00000948  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000323  0.00000000  0.00000000  0.00004009 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000408 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00003162

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000121 -0.00000000  0.00000000  0.00000000  0.00001403 -0.00003262  0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000027  0.00000000 -0.00000000  0.00000110  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000262  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000001  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00041815 -0.00000000 -0.00000000 -0.00088161  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00422726 -0.00000000 -0.00000000 -0.00000000 -0.00088238  0.00050706 -0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00041562 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000215 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00001622 -0.00000000 -0.00000000 -0.00000002
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000002 -0.00000000  0.00001497 -0.00000000  0.00000000  0.00000905  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000015  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00001524 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.10765904  0.00000000 -0.00000000 -0.00001493  0.00000000  0.00000000 -0.00000904 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000667 -0.00000000  0.00000000 -0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00291383  0.00000000  0.00000000  0.00000140 -0.00000000 -0.00000000  0.00000400  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000140  0.00000000  0.00000000 -0.00000400 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000017 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000009  0.00000000  0.71628635 -0.00000057 -0.00000000 -0.14169888 -0.00000001 -0.00000000
                          -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57648258 -0.00000000 -0.00000000  0.44813137
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000220 -0.00000000  0.00000000  0.00060021

   3    1  |1 1>+          0.00000000  0.57735532 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.40580472 -0.00000000  0.00000045  0.55891417  0.00000000  0.00000003 -0.47023731 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.70288699 -0.00000000 -0.00000022 -0.27339797  0.00000000  0.00000004 -0.57048825 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00008153  0.00000000  0.00000000  0.00039865  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00017689 -0.00000000 -0.00000000  0.00009904
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000013

   8    1  |1 1>+         -0.00000000  0.00031045 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00003162  0.00000000 -0.00000000 -0.00036188  0.00000000  0.00000000 -0.00018547 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00036738  0.00000000 -0.00000000 -0.00048702
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000065

  11    1  |1 1>+         -0.00000000 -0.00026788  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00021614 -0.00000000  0.00000000  0.00044968  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000  0.00000059  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000017  0.00000000  0.00000000 -0.00000194
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.00000141 -0.00000000  0.00000000  0.00000306  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000002  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.57733939  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.40602187  0.00000000  0.00000025  0.31553941 -0.00000000 -0.00000005  0.65846618  0.00000000

   3    1  |1 0>           0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000009  0.00000000  0.31630931 -0.00000025  0.00000000  0.65809652  0.00000005  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000220  0.00000000 -0.00000000 -0.00000134
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.57750541  0.00000000 -0.00000000  0.00100258

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00103761
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00135463 -0.00000000 -0.00000000  0.77470919

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00041166  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000766  0.00000000 -0.00000000 -0.00052202  0.00000000 -0.00000000  0.00029280  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00052175 -0.00000000 -0.00000000 -0.00029337 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00041120  0.00000000 -0.00000000  0.00000073

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00004182  0.00000000 -0.00000000 -0.00019444  0.00000000  0.00000000 -0.00012587 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00019441 -0.00000000 -0.00000000  0.00012575  0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000015  0.00000000 -0.00000000 -0.00000139 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00088374 -0.00000000 -0.00000000 -0.00000015  0.00000000  0.00000000 -0.00000139 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.40597800 -0.00000000  0.00000057  0.71645160 -0.00000000  0.00000001 -0.14086097 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.57735566 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000220  0.00000000 -0.00000000 -0.00059748
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.57805969 -0.00000000  0.00000000  0.44609489

   4    1  |1 1>-          0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000009 -0.00000000 -0.55835247  0.00000045  0.00000000  0.47091423  0.00000003  0.00000000

   5    1  |1 1>-          0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000015 -0.00000000 -0.27408815  0.00000022 -0.00000000 -0.57014883 -0.00000004 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00003170  0.00000000 -0.00000000 -0.00008199 -0.00000000 -0.00000000  0.00039856  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00031054  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000013
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00017737  0.00000000 -0.00000000 -0.00009825

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00036209 -0.00000000 -0.00000000  0.00018504  0.00000000  0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00026777 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000065
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00036560 -0.00000000 -0.00000000  0.00048835

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00002861 -0.00000000 -0.00000000 -0.00021562  0.00000000  0.00000000 -0.00044993 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000016  0.00000000 -0.00000000 -0.00000194

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000059 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00087873 -0.00000000 -0.00000000 -0.00000140  0.00000000  0.00000000 -0.00000306 -0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.99415558 -0.00000001 -0.00000000  0.00000000 -0.00649673  0.00000000
                           0.00000000 -0.00000000  0.00000221 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.99415628  0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.99409904 -0.01120065  0.00000000  0.00000000 -0.00000000  0.00008068 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.01120068  0.99409688  0.00000000  0.00000000 -0.00000000 -0.00650960 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000001  0.99415627 -0.00000000  0.00000000  0.00000000  0.00650008
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00037907 -0.00000000 -0.00000000 -0.00000000  0.10677913 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000011 -0.00000000

   8    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00037996  0.00000000  0.00000000  0.00000000  0.10680562
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00037996  0.00000000  0.00000000  0.00000023
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

  10    1  |0 0>           0.00001459  0.00037864  0.00000000  0.00000000 -0.00000000  0.10678469  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00038033 -0.00001452  0.00000000  0.00000000 -0.00000000 -0.00421587  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.04395467  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.04395727  0.00000000  0.00000000 -0.00000000  0.00045240 -0.00000000
                          -0.00000000  0.00000000 -0.00000010  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.07614660 -0.04384427  0.00000000 -0.00000000  0.00000000  0.00044714  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.04394952 -0.00000000  0.00000000  0.00000000  0.00044908
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.07612440  0.00000000 -0.00000000 -0.00000000 -0.00077621
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00323644 -0.00000000 -0.00000000 -0.00000104
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000005

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00408634 -0.00000000 -0.00000000 -0.00000000  0.61282643 -0.00000000
                           0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000066 -0.00000000

   8    1  |1 1>+         -0.00070612  0.00368856  0.00000000  0.00000000 -0.00000000  0.55226638  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00323592 -0.00000000 -0.00000000 -0.00000000 -0.48526558
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000007

  10    1  |1 1>+          0.00000000  0.00000000 -0.00022015  0.00000000  0.00000000  0.00000000 -0.03288315  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000

  11    1  |1 1>+          0.00348674  0.00179697  0.00000000  0.00000000 -0.00000000  0.26748902  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00250688  0.00000000  0.00000000  0.00000080
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004

  13    1  |1 1>+         -0.00174629 -0.00303723 -0.00000000 -0.00000000  0.00000000  0.00883915  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00304064  0.00000000  0.00000000 -0.00000000  0.00881176 -0.00000000
                          -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00304158 -0.00000000 -0.00000000 -0.00000002
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000014
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00011724 -0.08786785 -0.00000000 -0.00000000  0.00000000  0.00089437  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.04395650  0.00000000 -0.00000000 -0.00000000 -0.00045351

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.04395646  0.00000000  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000020  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.08790689 -0.00000000 -0.00000000  0.00000000 -0.00089217  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000182 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000432  0.00323488  0.00000000  0.00000000 -0.00000000  0.48512913  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                          -0.00000000 -0.00000000  0.00000000  0.00080962 -0.00000000 -0.00000000 -0.00000000 -0.12121787

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00080825 -0.00000000 -0.00000000 -0.00000026

   9    1  |1 0>           0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000052 -0.00000000
                           0.00000000  0.00000000 -0.00323194  0.00000000  0.00000000  0.00000000 -0.48489599  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000009
                           0.00000000  0.00000000 -0.00000000 -0.00401245  0.00000000  0.00000000  0.00000000  0.60127012

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000006
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00401272  0.00000000  0.00000000  0.00000129

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00435991 -0.00000582 -0.00000000 -0.00000000  0.00000000 -0.00013482 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00304074 -0.00000000 -0.00000000 -0.00000002

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00304074 -0.00000000  0.00000000  0.00000000  0.00880522

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00349949  0.00000468  0.00000000  0.00000000 -0.00000000 -0.00000214 -0.00000000  0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.04395470  0.00000000  0.00000000 -0.00000000 -0.00044858

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.07602935 -0.04404737 -0.00000000 -0.00000000  0.00000000  0.00044746  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000010  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.04395727 -0.00000000 -0.00000000  0.00000000 -0.00045240  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.04394638  0.00000000  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.07612619  0.00000000  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000007
                           0.00000000  0.00000000 -0.00000000 -0.00323645  0.00000000  0.00000000  0.00000000  0.48551969

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00069748 -0.00368982 -0.00000000 -0.00000000  0.00000000 -0.55221806 -0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000066  0.00000000
                          -0.00000000 -0.00000000  0.00408627 -0.00000000 -0.00000000 -0.00000000  0.61281541 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000005
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00323593 -0.00000000 -0.00000000 -0.00000104

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00349129 -0.00178892  0.00000000  0.00000000  0.00000000 -0.26746184  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000
                           0.00000000  0.00000000 -0.00022155  0.00000000  0.00000000  0.00000000 -0.03309271  0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000005
                           0.00000000  0.00000000 -0.00000000 -0.00250689  0.00000000  0.00000000  0.00000000  0.37544962

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                          -0.00000000 -0.00000000  0.00304064 -0.00000000 -0.00000000  0.00000000 -0.00881177  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00175440 -0.00303258 -0.00000000 -0.00000000  0.00000000  0.00883703  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00304158  0.00000000 -0.00000000 -0.00000000 -0.00880772

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000000  0.00000023  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000027
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00650008  0.00000000 -0.00000216 -0.00000000 -0.00000000  0.00000264 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00652652  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00008090 -0.00000000  0.00000000 -0.00000104  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000001 -0.00000000  0.00000000 -0.00000216  0.00000000  0.00000000  0.00000265 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000558
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000023 -0.00000000  0.00000000 -0.00003422 -0.00000000  0.00000000  0.00009208  0.00000000
                          -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.10680563  0.00000000 -0.00003425 -0.00000000  0.00000000  0.00009199 -0.00000000 -0.00000000
                          -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00422420 -0.00000000  0.00000000  0.00001372 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.10699059  0.00000000  0.00000000 -0.00000059 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000 -0.00000170 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00044858  0.00000000 -0.00041904 -0.00000000  0.00000000 -0.00029494  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00040801
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

   3    1  |1 1>+         -0.00000000  0.00077534  0.00000000 -0.00000000  0.00041092 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00050774  0.00000000  0.00000000  0.00006051 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00015934 -0.00000000 -0.00000000 -0.00041970  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.48551985 -0.00000000 -0.49335813 -0.00000003  0.00000000  0.29969699 -0.00000003 -0.00000000
                           0.00000003 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000001  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.25643834
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000584

   8    1  |1 1>+         -0.00000000  0.10498960 -0.00000000  0.00000000 -0.43653637  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000104  0.00000000 -0.00000001  0.16679303  0.00000000  0.00000005  0.55244127 -0.00000000
                           0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.51654118
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001175

  11    1  |1 1>+          0.00000000 -0.52091224  0.00000000 -0.00000000  0.37746884 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.37544942  0.00000000 -0.25286657 -0.00000002  0.00000000  0.66037597 -0.00000006 -0.00000000
                          -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00512045 -0.00000000  0.00000000  0.00000338 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000540
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00880774 -0.00000000  0.00000287  0.00000000  0.00000000 -0.00000232  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000096  0.00000000  0.00000000  0.00000054 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000019 -0.00000000  0.00000000 -0.00040992  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00018481 -0.00000000  0.00000000  0.00048168 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00045351  0.00000000  0.00018468  0.00000000 -0.00000000 -0.00048173  0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00040975

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000044

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00010048  0.00000000 -0.00000000  0.57784613 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000001  0.00000000 -0.00000001  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000026  0.00000000 -0.00000005  0.81319686  0.00000000  0.00000002  0.25063419 -0.00000000

   8    1  |1 0>          -0.00000001  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000001 -0.00000000  0.00000000
                          -0.12101180 -0.00000000  0.81328389  0.00000005 -0.00000000  0.25052862 -0.00000002 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001315
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.57777568

  10    1  |1 0>           0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000129 -0.00000000 -0.00000000  0.05812226  0.00000000  0.00000003  0.32595086 -0.00000000

  11    1  |1 0>           0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                           0.60131170  0.00000000  0.05793087  0.00000000 -0.00000000  0.32584964 -0.00000003 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.65078559 -0.00000000  0.00000000  0.00000013 -0.00000000  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00880521 -0.00000000  0.00000389  0.00000000  0.00000000 -0.00000095  0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000002 -0.00000000  0.00000000 -0.00000390  0.00000000  0.00000000  0.00000096  0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.01023725  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00041896  0.00000000  0.00000000  0.00029505 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00077516  0.00000000 -0.00000000  0.00041092 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00040751

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00044904  0.00000000  0.00050776  0.00000000 -0.00000000  0.00006035 -0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00077623  0.00000000 -0.00015921 -0.00000000  0.00000000  0.00041975 -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000005 -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000104 -0.00000000 -0.00000003  0.49343867  0.00000000 -0.00000003 -0.29956537  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.10493881  0.00000000 -0.00000000  0.43666536 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000583
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.25639426

   9    1  |1 1>-         -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000000
                          -0.48526548 -0.00000000  0.16694036  0.00000001 -0.00000000  0.55239679 -0.00000005 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.52098720 -0.00000000  0.00000000 -0.37731948  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001178
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.51755321

  12    1  |1 1>-          0.00000004 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000001  0.00000001  0.00000000
                          -0.00000080 -0.00000000  0.00000002 -0.25304256  0.00000000  0.00000006  0.66030846 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000542

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00512410 -0.00000000  0.00000000  0.00000339  0.00000000  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000002  0.00000000 -0.00000000  0.00000285  0.00000000 -0.00000000 -0.00000235  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000014 -0.00000000  0.00000096 -0.00000000 -0.00000000 -0.00000054  0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000 -0.00000073 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000236  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000030  0.00000000 -0.00000000 -0.00000000  0.00000066
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000217  0.00000000  0.00000000 -0.00000000 -0.00000014  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00001088  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000030 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000004 -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000 -0.00002348  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00003305  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00003325  0.00000000  0.00000000 -0.00000000  0.00002373
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000051  0.00000000  0.00000000  0.00000000 -0.00014443 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00001637  0.00000000  0.00000000 -0.00000000  0.00000590  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000494 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000222 -0.00000000 -0.00000000  0.00000000  0.00000342
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00031500  0.00000000  0.00000263 -0.00000000  0.00000000 -0.00000000 -0.00000147  0.00000000
                          -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000276 -0.00000000 -0.00000000  0.00000000  0.00000244  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000223  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000080 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.62022756  0.00000008  0.00000000  0.00000000  0.20882294
                          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.13961951 -0.00000000 -0.69311811 -0.00000000 -0.00000000 -0.00000000  0.23317365 -0.00000000
                           0.00000634 -0.00000000  0.00011850  0.00000000 -0.00000000  0.00000000 -0.00021257  0.00000000

   8    1  |1 1>+          0.00000000  0.69808938 -0.00000000  0.00000000 -0.00000000 -0.02852281 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000007  0.60378762  0.00000000  0.00000000 -0.00000009
                          -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.69355436 -0.00000000 -0.13987852 -0.00000000 -0.00000000  0.00000000 -0.48115180  0.00000000
                          -0.00003150 -0.00000000  0.00002391  0.00000000 -0.00000000  0.00000000  0.00043863  0.00000000

  11    1  |1 1>+         -0.00000000  0.10554278 -0.00000000  0.00000000 -0.00000000 -0.53405058 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.02175121 -0.00000000  0.00000000 -0.00000000 -0.59738328
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000956  0.00000000  0.00000000 -0.00000000 -0.00000627 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000188  0.00000000 -0.00001124  0.00000000 -0.00000000  0.00000000 -0.00000803  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000

  15    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000062 -0.00000000  0.00000000  0.00000000  0.00001797
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000067  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000302  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000028  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000028 -0.00000000 -0.00000000  0.00000000 -0.00000302

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000034 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000476 -0.00000000

   5    1  |1 0>           0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00054433 -0.00000000 -0.00000241  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00023119 -0.00000000 -0.00000000 -0.00000000  0.65420596  0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000006 -0.48450937 -0.00000000 -0.00000000  0.00000006

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.48453812  0.00000006  0.00000000 -0.00000000 -0.16189984

   9    1  |1 0>           0.00000002 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00059661  0.00000000
                           0.00045836  0.00000000  0.00007509 -0.00000000 -0.00000000 -0.00000000  0.65443773 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000002 -0.12473956 -0.00000000  0.00000000 -0.00000025

  11    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.12463316  0.00000002 -0.00000000  0.00000000  0.71351567

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.05631401 -0.00000000 -0.00000000  0.00000000 -0.00012741  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00001158 -0.00000000 -0.00000000 -0.00000000 -0.00002338

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001157  0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000658 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000

  16    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000204  0.00000000 -0.00000155  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000222 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000276  0.00000000 -0.00000000 -0.00000000  0.00000244  0.00000000  0.00000000

   3    1  |1 1>-          0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00031564  0.00000000  0.00000263 -0.00000000  0.00000000 -0.00000000  0.00000147  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000223  0.00000000  0.00000000  0.00000000  0.00000401

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000080  0.00000000  0.00000000  0.00000000 -0.00000326

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000008  0.62020984  0.00000000  0.00000000  0.00000007

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.69803335 -0.00000000  0.00000000 -0.00000000  0.02884467 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000635 -0.00000000  0.00011852  0.00000000 -0.00000000  0.00000000  0.00021227  0.00000000
                           0.13978924  0.00000000  0.69321899  0.00000000  0.00000000 -0.00000000  0.23284956 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.60376654 -0.00000007 -0.00000000  0.00000000  0.25339698

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.10540428 -0.00000000  0.00000000 -0.00000000  0.53400276  0.00000000  0.00000000

  11    1  |1 1>-         -0.00003146 -0.00000000  0.00002385 -0.00000000  0.00000000 -0.00000000 -0.00043874  0.00000000
                          -0.69278207  0.00000000  0.13953023  0.00000000  0.00000000  0.00000000 -0.48126345  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.02170164  0.00000000 -0.00000000  0.00000021

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00000188 -0.00000000 -0.00001126  0.00000000  0.00000000  0.00000000  0.00000804 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000952  0.00000000  0.00000000 -0.00000000 -0.00000628  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000059 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000067  0.00000000 -0.00000000  0.00000000  0.00000282

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>           0.00000000 -0.00000251  0.00000045 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00729304
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00231836  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00231883  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000141  0.00231606 -0.00009750  0.00000000 -0.00000000 -0.00000000  0.00000067
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000002  0.00009749  0.00231520 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000066 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00231883 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.91719454  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00003290 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00002378  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.91720083 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.91720092 -0.00000002 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000010  0.06336217  0.91495484 -0.00000000 -0.00000000 -0.00000000 -0.00000276
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00000366  0.91486981 -0.06336289  0.00000000 -0.00000000  0.00000000 -0.00006800
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00001334 -0.00000417  0.00000014  0.00000000 -0.00000000 -0.00000000 -0.09807766
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00119166 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00119012  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000188 -0.00202248  0.00124522 -0.00000000  0.00000000 -0.00000000  0.00000061
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000401 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00119151  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000326 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00205538  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000007  0.00000000  0.00000000  0.00000000 -0.00000000  0.05040063 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.06368043 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000228  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.03946012  0.00922277 -0.05774390  0.00000000  0.00000000  0.00000000  0.00000855
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.25334665 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.05041521 -0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00340900  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000012 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.46283797 -0.05509737 -0.02627980  0.00000000  0.00000000  0.00000000  0.00002392
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000021  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.03907823  0.00000000  0.00000000
                           0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00002359  0.16517379  0.26740053 -0.00000000 -0.00000000 -0.00000000  0.57455739
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.27208881  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000976 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.27205138  0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>+         -0.00000282 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000036  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00006986  0.00236954 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000302  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00119062  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00119061 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00236995 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00009322 -0.00148502 -0.05036015  0.00000000  0.00000000  0.00000000  0.00000001

   7    1  |1 0>          -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.16210354  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.01259347  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000006  0.00000000  0.00000000  0.00000000 -0.00000000  0.01257201 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000181  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.05041521  0.00000000 -0.00000000  0.00000000

  10    1  |1 0>           0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.71347072 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.06254856 -0.00000000

  11    1  |1 0>           0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000025 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.06255284  0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.75386156  0.06780155 -0.00199920 -0.00000000 -0.00000000 -0.00000000  0.00003078

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.27209686  0.00000001  0.00000000

  14    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00002338  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.27209668 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00002827 -0.31420631  0.00926454  0.00000000  0.00000000  0.00000000  0.57454029

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000342  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00119166 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000188  0.00209233  0.00112389 -0.00000000 -0.00000000 -0.00000000 -0.00000061

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00119012 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00119143 -0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00205542 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.20887447  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.05040072  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.03961026  0.01262740  0.05709034 -0.00000000 -0.00000000 -0.00000000  0.00000853

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000228 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.06367941 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000000  0.05041541 -0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.46297697 -0.05344911  0.02949992 -0.00000000  0.00000000 -0.00000000  0.00002393

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00343081  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.59738505  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.03907828  0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000976 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.27208947 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00002360 -0.14913191  0.27666845 -0.00000000 -0.00000000 -0.00000000 -0.57455621

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00001796  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.27205186  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000035 -0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000028
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00389864  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00389919  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00004079 -0.00388451
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00389051 -0.00004070
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00389919 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000085  0.00000000  0.00000000 -0.38385387 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000033 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00000000 -0.00005439 -0.00000000 -0.00000003  0.38383140 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00005525  0.00000000 -0.00000000  0.38383118  0.00000003 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.38367380  0.01441832
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.01441262  0.38381930
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000011 -0.00001066
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00032334 -0.00000000 -0.00000000  0.00015853  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00032257 -0.00000000 -0.00000000 -0.00015882 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000009  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00015628 -0.00027383
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00032270 -0.00000000 -0.00000000  0.00015913 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00018143  0.00000000  0.00000000 -0.00027424  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00001445  0.00000000 -0.00000000  0.01448559  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00001147 -0.00000000  0.00000000  0.01829976  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.01649071  0.00316750
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000 -0.00000548 -0.00000000 -0.00000000  0.01448111 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000044 -0.00000000 -0.00000000 -0.00097998 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00804539 -0.01557309
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00002084 -0.00000000  0.00000000 -0.01123688 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.65336478 -0.37532835
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.70669130  0.00000000  0.00000000  0.65259548  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00019062 -0.00000000  0.00000000 -0.00000057  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.70665647 -0.00000006 -0.00000000  0.65264874  0.00000005 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000000  0.00000000 -0.03424682  0.00000000  0.00000000 -0.00000522  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00031219 -0.00000067

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00032326  0.00000000  0.00000000 -0.00015837  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00032326  0.00000000 -0.00000000  0.00015836  0.00000000 -0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.00000000 -0.00000000  0.00031313  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 0>          -0.00000010  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00037587  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.01445965  0.00003064

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000095 -0.00000000 -0.00000000  0.00361859 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000093 -0.00000000 -0.00000000  0.00361241  0.00000000 -0.00000000  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000003 -0.00000000  0.00000000 -0.01447461 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00001728  0.00000000  0.00000000 -0.01797717  0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00001724  0.00000000  0.00000000 -0.01797839 -0.00000000  0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00004128  0.01948089

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.70672728  0.00000006 -0.00000000  0.65255330  0.00000005 -0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000006  0.70672668  0.00000000  0.00000005 -0.65255403  0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00159829  0.75348961

  16    1  |1 0>          -0.00000924  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.03424435  0.00000000  0.00000000  0.00000006  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00032334  0.00000000  0.00000000 -0.00015854  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00015744  0.00027316

   3    1  |1 1>-          0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00032257 -0.00000000 -0.00000000  0.00015881  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00032271 -0.00000000 -0.00000000  0.00015912  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00018142  0.00000000 -0.00000000  0.00027424  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00001442  0.00000000  0.00000000 -0.01448563  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01650132  0.00310287

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001137  0.00000000 -0.00000000  0.01829946  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000555  0.00000000 -0.00000000  0.01448113  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00798491 -0.01560607

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000044 -0.00000000 -0.00000000 -0.00098625 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00002080  0.00000000  0.00000000 -0.01123690  0.00000000  0.00000000

  13    1  |1 1>-         -0.00019062  0.00000000 -0.00000000 -0.00000057  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.70669251  0.00000000  0.00000000 -0.65259390 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.65176799  0.37809577

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000006  0.70665707 -0.00000000 -0.00000005  0.65264789 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.03424681 -0.00000000  0.00000000  0.00000528  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00065191
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000002  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000003
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000002 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000001  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00000000 -0.00000018  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00000017 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000005
                           0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000106
                           0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.99517876
                           0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000990 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000990  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000013
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000988  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000556  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000014  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000040  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000183
                           0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00000003  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000162  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000566
                           0.00000000 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000158  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.05662108
                          -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.02421443 -0.00000000 -0.00000000 -0.00000000
                          -0.00000021 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.02421848 -0.00000002 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000002 -0.00000069  0.99941341 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000988  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000988  0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00001151 -0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000001

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000054  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000054 -0.00000000  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000139 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000140 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000519

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.02421381  0.00000002 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000002  0.02421384 -0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.05662961

  16    1  |1 0>          -0.00000847 -0.00000000 -0.00000000 -0.00000000
                           0.99941349  0.00000000  0.00000002  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000990 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000012

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000990  0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000988 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000556  0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000014 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000185

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000040 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000003  0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000565

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000162  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000158 -0.00000000

  13    1  |1 1>-          0.00000021  0.00000000  0.00000000 -0.00000000
                          -0.02421439 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.05662109

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000002  0.02421847  0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.99941341  0.00000069  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -25.38478448     -0.00000591       -1.30      0.00000000        0.00      0.0000
     2   1    -25.34150781      0.04327076     9496.83      0.04327667     9498.13      1.1776
     3   1    -25.34150781      0.04327076     9496.83      0.04327667     9498.13      1.1776
     4   1    -25.34150775      0.04327082     9496.85      0.04327672     9498.14      1.1776
     5   1    -25.34073608      0.04404249     9666.21      0.04404840     9667.51      1.1986
     6   1    -25.34073597      0.04404260     9666.23      0.04404851     9667.53      1.1986
     7   1    -25.34073559      0.04404298     9666.32      0.04404889     9667.61      1.1986
     8   1    -25.34073550      0.04404307     9666.34      0.04404898     9667.63      1.1986
     9   1    -25.34073550      0.04404307     9666.34      0.04404898     9667.63      1.1986
    10   1    -25.33927591      0.04550265     9986.68      0.04550856     9987.98      1.2384
    11   1    -25.33927583      0.04550274     9986.70      0.04550865     9987.99      1.2384
    12   1    -25.33927583      0.04550274     9986.70      0.04550865     9987.99      1.2384
    13   1    -25.33927577      0.04550280     9986.71      0.04550871     9988.01      1.2384
    14   1    -25.33927569      0.04550288     9986.73      0.04550879     9988.02      1.2384
    15   1    -25.33927569      0.04550288     9986.73      0.04550879     9988.02      1.2384
    16   1    -25.33927565      0.04550292     9986.74      0.04550883     9988.03      1.2384
    17   1    -25.33036721      0.05441136    11941.91      0.05441727    11943.21      1.4808
    18   1    -25.33036715      0.05441142    11941.93      0.05441733    11943.22      1.4808
    19   1    -25.33036703      0.05441154    11941.95      0.05441745    11943.25      1.4808
    20   1    -25.33036703      0.05441154    11941.95      0.05441745    11943.25      1.4808
    21   1    -25.33036702      0.05441155    11941.95      0.05441746    11943.25      1.4808
    22   1    -25.28547539      0.09930318    21794.53      0.09930909    21795.82      2.7023
    23   1    -25.28547508      0.09930349    21794.60      0.09930940    21795.89      2.7023
    24   1    -25.28547453      0.09930404    21794.72      0.09930995    21796.02      2.7024
    25   1    -25.28547453      0.09930404    21794.72      0.09930995    21796.02      2.7024
    26   1    -25.28547444      0.09930413    21794.74      0.09931004    21796.03      2.7024
    27   1    -25.28413532      0.10064325    22088.64      0.10064916    22089.94      2.7388
    28   1    -25.28413532      0.10064325    22088.64      0.10064916    22089.94      2.7388
    29   1    -25.28413502      0.10064355    22088.71      0.10064946    22090.00      2.7388
    30   1    -25.28413427      0.10064430    22088.87      0.10065021    22090.17      2.7388
    31   1    -25.28413427      0.10064430    22088.87      0.10065021    22090.17      2.7388
    32   1    -25.28413405      0.10064452    22088.92      0.10065042    22090.21      2.7388
    33   1    -25.28413388      0.10064469    22088.96      0.10065060    22090.25      2.7388
    34   1    -25.28250228      0.10227629    22447.05      0.10228220    22448.35      2.7832
    35   1    -25.28250227      0.10227630    22447.05      0.10228221    22448.35      2.7832
    36   1    -25.28250215      0.10227642    22447.08      0.10228233    22448.38      2.7832
    37   1    -25.28250215      0.10227642    22447.08      0.10228233    22448.38      2.7832
    38   1    -25.28250152      0.10227705    22447.22      0.10228296    22448.51      2.7833
    39   1    -25.28250127      0.10227730    22447.27      0.10228321    22448.57      2.7833
    40   1    -25.28250080      0.10227777    22447.38      0.10228368    22448.67      2.7833
    41   1    -25.28250080      0.10227777    22447.38      0.10228368    22448.67      2.7833
    42   1    -25.28250059      0.10227798    22447.42      0.10228389    22448.72      2.7833
    43   1    -25.27567225      0.10910631    23946.07      0.10911222    23947.36      2.9691
    44   1    -25.27567213      0.10910644    23946.09      0.10911235    23947.39      2.9691
    45   1    -25.27567204      0.10910653    23946.12      0.10911244    23947.41      2.9691
    46   1    -25.27567191      0.10910665    23946.14      0.10911256    23947.44      2.9691
    47   1    -25.27567191      0.10910666    23946.14      0.10911257    23947.44      2.9691
    48   1    -25.27466238      0.11011619    24167.71      0.11012210    24169.01      2.9966
    49   1    -25.27369727      0.11108130    24379.53      0.11108721    24380.82      3.0228
    50   1    -25.27369713      0.11108144    24379.56      0.11108735    24380.85      3.0228
    51   1    -25.27369713      0.11108144    24379.56      0.11108735    24380.86      3.0228
    52   1    -25.27129209      0.11348648    24907.40      0.11349239    24908.70      3.0883
    53   1    -25.27129196      0.11348661    24907.43      0.11349252    24908.73      3.0883
    54   1    -25.27129196      0.11348661    24907.43      0.11349252    24908.73      3.0883
    55   1    -25.27129171      0.11348686    24907.49      0.11349277    24908.78      3.0883
    56   1    -25.27129076      0.11348781    24907.69      0.11349372    24908.99      3.0883
    57   1    -25.26563539      0.11914318    26148.90      0.11914908    26150.20      3.2422
    58   1    -25.26563539      0.11914318    26148.90      0.11914909    26150.20      3.2422
    59   1    -25.26563539      0.11914318    26148.90      0.11914909    26150.20      3.2422
    60   1    -25.26337220      0.12140637    26645.62      0.12141228    26646.91      3.3038

 E0 =    -25.38477857 is the energy of the lowest zeroth-order state
 E1 =    -25.38478448 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99997319 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000032  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.10766567  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000109 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000150 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.10765900
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000013

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00151666  0.10759309 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.10761385  0.00151647 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000151 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00290733 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000  0.00000298  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000298 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00291382
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00290038 -0.00011978  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00011947 -0.00290890  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00006652  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000024 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.54781657  0.00000009 -0.00000000  0.00000000  0.00000000  0.00000000  0.40597817
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000050

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.54780333 -0.00000000 -0.00000000 -0.40598400  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000921 -0.00000000  0.00000000 -0.00000412 -0.00000000

 15  1     3    1  |1 1>+       0.00000022  0.00000000 -0.00000000  0.00000000  0.40691488 -0.70239148  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000009 -0.54761371  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000009
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

 17  1     5    1  |1 1>+       0.00000000  0.00000005 -0.31614320  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000015
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001

 18  1     6    1  |1 1>+       0.00000000 -0.00000452 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00003170
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000323  0.00000000  0.00000000  0.00004009 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000032  0.00000000 -0.00000000  0.00000000 -0.00003457  0.00000936 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000408 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000027 -0.00000000  0.00000000  0.00000111  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000122  0.00000000 -0.00000000  0.00000000 -0.00001392 -0.00003267  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000262  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002861
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00422726 -0.00000000  0.00000000 -0.00000000 -0.00088087 -0.00050969  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00041815  0.00000000  0.00000000  0.00088161 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000001  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00041562 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00087873
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000000 -0.00000215  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.81175754  0.00121125 -0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                                0.00000000  0.00000009 -0.54778574  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000009

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000050
                                0.00000000 -0.54778594 -0.00000009  0.00000000  0.00000000  0.00000000  0.00000000  0.40602187

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000823 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00001313  0.00000000  0.00000000  0.81163551 -0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00001063  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.63231505 -0.00000000  0.00000000  0.00001693 -0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00003507 -0.00000005 -0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000206 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000206  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000765

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00003491 -0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000401 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000401 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00004182

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000145  0.00000000 -0.00000000  0.00000000 -0.00000006  0.00003737 -0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00041672  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00088374

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00041672 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00422725  0.00000000  0.00000000 -0.00000000 -0.00000152  0.00101776 -0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000213 -0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000009  0.54781670 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000009

 46  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000023  0.00000000  0.00000000 -0.00000000  0.40481719  0.70360226 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000921 -0.00000000  0.00000000 -0.00000412 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.54780365  0.00000000  0.00000000  0.40598385 -0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000050
                                0.00000000  0.54762662  0.00000009 -0.00000000  0.00000000  0.00000000  0.00000000  0.40577592

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000087
                               -0.00000000 -0.31612071 -0.00000005  0.00000000  0.00000000  0.00000000  0.00000000  0.70290352

 50  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000452  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000032  0.00000000 -0.00000000  0.00000000  0.00003453  0.00000948  0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000323  0.00000000  0.00000000  0.00004009 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000408 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00003162

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000121 -0.00000000  0.00000000  0.00000000  0.00001403 -0.00003262  0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000027  0.00000000 -0.00000000  0.00000110  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000262  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000001  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00041815 -0.00000000 -0.00000000 -0.00088161  0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00422726 -0.00000000 -0.00000000 -0.00000000 -0.00088238  0.00050706 -0.00000000 -0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00041562 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000215 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00001622 -0.00000000 -0.00000000 -0.00000002
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000002 -0.00000000  0.00001497 -0.00000000  0.00000000  0.00000905  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000015  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00001524 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.10765904  0.00000000 -0.00000000 -0.00001493  0.00000000  0.00000000 -0.00000904 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000667 -0.00000000  0.00000000 -0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00291383  0.00000000  0.00000000  0.00000140 -0.00000000 -0.00000000  0.00000400  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000140  0.00000000  0.00000000 -0.00000400 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000017 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000009  0.00000000  0.71628635 -0.00000057 -0.00000000 -0.14169888 -0.00000001 -0.00000000
                               -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.57648258 -0.00000000 -0.00000000  0.44813137
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000220 -0.00000000  0.00000000  0.00060021

 15  1     3    1  |1 1>+       0.00000000  0.57735532 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.40580472 -0.00000000  0.00000045  0.55891417  0.00000000  0.00000003 -0.47023731 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.70288699 -0.00000000 -0.00000022 -0.27339797  0.00000000  0.00000004 -0.57048825 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00008153  0.00000000  0.00000000  0.00039865  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00017689 -0.00000000 -0.00000000  0.00009904
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000013

 20  1     8    1  |1 1>+      -0.00000000  0.00031045 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00003162  0.00000000 -0.00000000 -0.00036188  0.00000000  0.00000000 -0.00018547 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00036738  0.00000000 -0.00000000 -0.00048702
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000065

 23  1    11    1  |1 1>+      -0.00000000 -0.00026788  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000000  0.00021614 -0.00000000  0.00000000  0.00044968  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000059  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000017  0.00000000  0.00000000 -0.00000194
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000  0.00000141 -0.00000000  0.00000000  0.00000306  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000002  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.57733939  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.40602187  0.00000000  0.00000025  0.31553941 -0.00000000 -0.00000005  0.65846618  0.00000000

 31  1     3    1  |1 0>        0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000009  0.00000000  0.31630931 -0.00000025  0.00000000  0.65809652  0.00000005  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000220  0.00000000 -0.00000000 -0.00000134
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.57750541  0.00000000 -0.00000000  0.00100258

 33  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00103761
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00135463 -0.00000000 -0.00000000  0.77470919

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00041166  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000766  0.00000000 -0.00000000 -0.00052202  0.00000000 -0.00000000  0.00029280  0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00052175 -0.00000000 -0.00000000 -0.00029337 -0.00000000 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00041120  0.00000000 -0.00000000  0.00000073

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00004182  0.00000000 -0.00000000 -0.00019444  0.00000000  0.00000000 -0.00012587 -0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00019441 -0.00000000 -0.00000000  0.00012575  0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000015  0.00000000 -0.00000000 -0.00000139 -0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00088374 -0.00000000 -0.00000000 -0.00000015  0.00000000  0.00000000 -0.00000139 -0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003

 45  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.40597800 -0.00000000  0.00000057  0.71645160 -0.00000000  0.00000001 -0.14086097 -0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.57735566 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000220  0.00000000 -0.00000000 -0.00059748
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.57805969 -0.00000000  0.00000000  0.44609489

 48  1     4    1  |1 1>-       0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000009 -0.00000000 -0.55835247  0.00000045  0.00000000  0.47091423  0.00000003  0.00000000

 49  1     5    1  |1 1>-       0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000015 -0.00000000 -0.27408815  0.00000022 -0.00000000 -0.57014883 -0.00000004 -0.00000000

 50  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00003170  0.00000000 -0.00000000 -0.00008199 -0.00000000 -0.00000000  0.00039856  0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00031054  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000013
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00017737  0.00000000 -0.00000000 -0.00009825

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00036209 -0.00000000 -0.00000000  0.00018504  0.00000000  0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00026777 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000065
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00036560 -0.00000000 -0.00000000  0.00048835

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00002861 -0.00000000 -0.00000000 -0.00021562  0.00000000  0.00000000 -0.00044993 -0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000016  0.00000000 -0.00000000 -0.00000194

 58  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000059 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00087873 -0.00000000 -0.00000000 -0.00000140  0.00000000  0.00000000 -0.00000306 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000002 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.99415558 -0.00000001 -0.00000000  0.00000000 -0.00649673  0.00000000
                                0.00000000 -0.00000000  0.00000221 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.99415628  0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.99409904 -0.01120065  0.00000000  0.00000000 -0.00000000  0.00008068 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.01120068  0.99409688  0.00000000  0.00000000 -0.00000000 -0.00650960 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000001  0.99415627 -0.00000000  0.00000000  0.00000000  0.00650008
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00037907 -0.00000000 -0.00000000 -0.00000000  0.10677913 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000011 -0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00037996  0.00000000  0.00000000  0.00000000  0.10680562
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002

  9  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00037996  0.00000000  0.00000000  0.00000023
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

 10  1    10    1  |0 0>        0.00001459  0.00037864  0.00000000  0.00000000 -0.00000000  0.10678469  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00038033 -0.00001452  0.00000000  0.00000000 -0.00000000 -0.00421587  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.04395467  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000 -0.04395727  0.00000000  0.00000000 -0.00000000  0.00045240 -0.00000000
                               -0.00000000  0.00000000 -0.00000010  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.07614660 -0.04384427  0.00000000 -0.00000000  0.00000000  0.00044714  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.04394952 -0.00000000  0.00000000  0.00000000  0.00044908
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.07612440  0.00000000 -0.00000000 -0.00000000 -0.00077621
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00323644 -0.00000000 -0.00000000 -0.00000104
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000005

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00408634 -0.00000000 -0.00000000 -0.00000000  0.61282643 -0.00000000
                                0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000066 -0.00000000

 20  1     8    1  |1 1>+      -0.00070612  0.00368856  0.00000000  0.00000000 -0.00000000  0.55226638  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00323592 -0.00000000 -0.00000000 -0.00000000 -0.48526558
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000007

 22  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00022015  0.00000000  0.00000000  0.00000000 -0.03288315  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000

 23  1    11    1  |1 1>+       0.00348674  0.00179697  0.00000000  0.00000000 -0.00000000  0.26748902  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00250688  0.00000000  0.00000000  0.00000080
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000004

 25  1    13    1  |1 1>+      -0.00174629 -0.00303723 -0.00000000 -0.00000000  0.00000000  0.00883915  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00304064  0.00000000  0.00000000 -0.00000000  0.00881176 -0.00000000
                               -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00304158 -0.00000000 -0.00000000 -0.00000002
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000014
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00011724 -0.08786785 -0.00000000 -0.00000000  0.00000000  0.00089437  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.04395650  0.00000000 -0.00000000 -0.00000000 -0.00045351

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.04395646  0.00000000  0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000020  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.08790689 -0.00000000 -0.00000000  0.00000000 -0.00089217  0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000182 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000432  0.00323488  0.00000000  0.00000000 -0.00000000  0.48512913  0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                               -0.00000000 -0.00000000  0.00000000  0.00080962 -0.00000000 -0.00000000 -0.00000000 -0.12121787

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00080825 -0.00000000 -0.00000000 -0.00000026

 37  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000052 -0.00000000
                                0.00000000  0.00000000 -0.00323194  0.00000000  0.00000000  0.00000000 -0.48489599  0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000009
                                0.00000000  0.00000000 -0.00000000 -0.00401245  0.00000000  0.00000000  0.00000000  0.60127012

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000006
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00401272  0.00000000  0.00000000  0.00000129

 40  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00435991 -0.00000582 -0.00000000 -0.00000000  0.00000000 -0.00013482 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00304074 -0.00000000 -0.00000000 -0.00000002

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00304074 -0.00000000  0.00000000  0.00000000  0.00880522

 43  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00349949  0.00000468  0.00000000  0.00000000 -0.00000000 -0.00000214 -0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.04395470  0.00000000  0.00000000 -0.00000000 -0.00044858

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.07602935 -0.04404737 -0.00000000 -0.00000000  0.00000000  0.00044746  0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000010  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.04395727 -0.00000000 -0.00000000  0.00000000 -0.00045240  0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.04394638  0.00000000  0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.07612619  0.00000000  0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000007
                                0.00000000  0.00000000 -0.00000000 -0.00323645  0.00000000  0.00000000  0.00000000  0.48551969

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00069748 -0.00368982 -0.00000000 -0.00000000  0.00000000 -0.55221806 -0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000066  0.00000000
                               -0.00000000 -0.00000000  0.00408627 -0.00000000 -0.00000000 -0.00000000  0.61281541 -0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000005
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00323593 -0.00000000 -0.00000000 -0.00000104

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00349129 -0.00178892  0.00000000  0.00000000  0.00000000 -0.26746184  0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000
                                0.00000000  0.00000000 -0.00022155  0.00000000  0.00000000  0.00000000 -0.03309271  0.00000000

 56  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000005
                                0.00000000  0.00000000 -0.00000000 -0.00250689  0.00000000  0.00000000  0.00000000  0.37544962

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                               -0.00000000 -0.00000000  0.00304064 -0.00000000 -0.00000000  0.00000000 -0.00881177  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00175440 -0.00303258 -0.00000000 -0.00000000  0.00000000  0.00883703  0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00304158  0.00000000 -0.00000000 -0.00000000 -0.00880772

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000000  0.00000023  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000027
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00650008  0.00000000 -0.00000216 -0.00000000 -0.00000000  0.00000264 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00652652  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00008090 -0.00000000  0.00000000 -0.00000104  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000001 -0.00000000  0.00000000 -0.00000216  0.00000000  0.00000000  0.00000265 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000558
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000023 -0.00000000  0.00000000 -0.00003422 -0.00000000  0.00000000  0.00009208  0.00000000
                               -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.10680563  0.00000000 -0.00003425 -0.00000000  0.00000000  0.00009199 -0.00000000 -0.00000000
                               -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00422420 -0.00000000  0.00000000  0.00001372 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.10699059  0.00000000  0.00000000 -0.00000059 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000170 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00044858  0.00000000 -0.00041904 -0.00000000  0.00000000 -0.00029494  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00040801
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

 15  1     3    1  |1 1>+      -0.00000000  0.00077534  0.00000000 -0.00000000  0.00041092 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00050774  0.00000000  0.00000000  0.00006051 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00015934 -0.00000000 -0.00000000 -0.00041970  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.48551985 -0.00000000 -0.49335813 -0.00000003  0.00000000  0.29969699 -0.00000003 -0.00000000
                                0.00000003 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000001  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.25643834
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000584

 20  1     8    1  |1 1>+      -0.00000000  0.10498960 -0.00000000  0.00000000 -0.43653637  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000104  0.00000000 -0.00000001  0.16679303  0.00000000  0.00000005  0.55244127 -0.00000000
                                0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.51654118
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001175

 23  1    11    1  |1 1>+       0.00000000 -0.52091224  0.00000000 -0.00000000  0.37746884 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.37544942  0.00000000 -0.25286657 -0.00000002  0.00000000  0.66037597 -0.00000006 -0.00000000
                               -0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00512045 -0.00000000  0.00000000  0.00000338 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000540
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00880774 -0.00000000  0.00000287  0.00000000  0.00000000 -0.00000232  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000096  0.00000000  0.00000000  0.00000054 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000019 -0.00000000  0.00000000 -0.00040992  0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00018481 -0.00000000  0.00000000  0.00048168 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00045351  0.00000000  0.00018468  0.00000000 -0.00000000 -0.00048173  0.00000000  0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00040975

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000044

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00010048  0.00000000 -0.00000000  0.57784613 -0.00000000 -0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000001  0.00000000 -0.00000001  0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000026  0.00000000 -0.00000005  0.81319686  0.00000000  0.00000002  0.25063419 -0.00000000

 36  1     8    1  |1 0>       -0.00000001  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000001 -0.00000000  0.00000000
                               -0.12101180 -0.00000000  0.81328389  0.00000005 -0.00000000  0.25052862 -0.00000002 -0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001315
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.57777568

 38  1    10    1  |1 0>        0.00000006 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000129 -0.00000000 -0.00000000  0.05812226  0.00000000  0.00000003  0.32595086 -0.00000000

 39  1    11    1  |1 0>        0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                                0.60131170  0.00000000  0.05793087  0.00000000 -0.00000000  0.32584964 -0.00000003 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.65078559 -0.00000000  0.00000000  0.00000013 -0.00000000  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00880521 -0.00000000  0.00000389  0.00000000  0.00000000 -0.00000095  0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000002 -0.00000000  0.00000000 -0.00000390  0.00000000  0.00000000  0.00000096  0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.01023725  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00041896  0.00000000  0.00000000  0.00029505 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00077516  0.00000000 -0.00000000  0.00041092 -0.00000000 -0.00000000  0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00040751

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00044904  0.00000000  0.00050776  0.00000000 -0.00000000  0.00006035 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00077623  0.00000000 -0.00015921 -0.00000000  0.00000000  0.00041975 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-       0.00000005 -0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000104 -0.00000000 -0.00000003  0.49343867  0.00000000 -0.00000003 -0.29956537  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.10493881  0.00000000 -0.00000000  0.43666536 -0.00000000 -0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000583
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.25639426

 53  1     9    1  |1 1>-      -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000000
                               -0.48526548 -0.00000000  0.16694036  0.00000001 -0.00000000  0.55239679 -0.00000005 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.52098720 -0.00000000  0.00000000 -0.37731948  0.00000000  0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001178
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.51755321

 56  1    12    1  |1 1>-       0.00000004 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000001  0.00000001  0.00000000
                               -0.00000080 -0.00000000  0.00000002 -0.25304256  0.00000000  0.00000006  0.66030846 -0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000542

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00512410 -0.00000000  0.00000000  0.00000339  0.00000000  0.00000000  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000002  0.00000000 -0.00000000  0.00000285  0.00000000 -0.00000000 -0.00000235  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000014 -0.00000000  0.00000096 -0.00000000 -0.00000000 -0.00000054  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000 -0.00000073 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000236  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000030  0.00000000 -0.00000000 -0.00000000  0.00000066
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000217  0.00000000  0.00000000 -0.00000000 -0.00000014  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00001088  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000030 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000004 -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000 -0.00002348  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00003305  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00003325  0.00000000  0.00000000 -0.00000000  0.00002373
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000051  0.00000000  0.00000000  0.00000000 -0.00014443 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00001637  0.00000000  0.00000000 -0.00000000  0.00000590  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000494 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000222 -0.00000000 -0.00000000  0.00000000  0.00000342
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00031500  0.00000000  0.00000263 -0.00000000  0.00000000 -0.00000000 -0.00000147  0.00000000
                               -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000276 -0.00000000 -0.00000000  0.00000000  0.00000244  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000223  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000080 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.62022756  0.00000008  0.00000000  0.00000000  0.20882294
                               -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.13961951 -0.00000000 -0.69311811 -0.00000000 -0.00000000 -0.00000000  0.23317365 -0.00000000
                                0.00000634 -0.00000000  0.00011850  0.00000000 -0.00000000  0.00000000 -0.00021257  0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.69808938 -0.00000000  0.00000000 -0.00000000 -0.02852281 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000007  0.60378762  0.00000000  0.00000000 -0.00000009
                               -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.69355436 -0.00000000 -0.13987852 -0.00000000 -0.00000000  0.00000000 -0.48115180  0.00000000
                               -0.00003150 -0.00000000  0.00002391  0.00000000 -0.00000000  0.00000000  0.00043863  0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.10554278 -0.00000000  0.00000000 -0.00000000 -0.53405058 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.02175121 -0.00000000  0.00000000 -0.00000000 -0.59738328
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00000956  0.00000000  0.00000000 -0.00000000 -0.00000627 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000188  0.00000000 -0.00001124  0.00000000 -0.00000000  0.00000000 -0.00000803  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000062 -0.00000000  0.00000000  0.00000000  0.00001797
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000067  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000302  0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000028  0.00000000  0.00000000 -0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000028 -0.00000000 -0.00000000  0.00000000 -0.00000302

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000034 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000476 -0.00000000

 33  1     5    1  |1 0>        0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00054433 -0.00000000 -0.00000241  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00023119 -0.00000000 -0.00000000 -0.00000000  0.65420596  0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000006 -0.48450937 -0.00000000 -0.00000000  0.00000006

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.48453812  0.00000006  0.00000000 -0.00000000 -0.16189984

 37  1     9    1  |1 0>        0.00000002 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00059661  0.00000000
                                0.00045836  0.00000000  0.00007509 -0.00000000 -0.00000000 -0.00000000  0.65443773 -0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000002 -0.12473956 -0.00000000  0.00000000 -0.00000025

 39  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.12463316  0.00000002 -0.00000000  0.00000000  0.71351567

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.05631401 -0.00000000 -0.00000000  0.00000000 -0.00012741  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00001158 -0.00000000 -0.00000000 -0.00000000 -0.00002338

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001157  0.00000000 -0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000658 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000204  0.00000000 -0.00000155  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000222 -0.00000000  0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000276  0.00000000 -0.00000000 -0.00000000  0.00000244  0.00000000  0.00000000

 47  1     3    1  |1 1>-       0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00031564  0.00000000  0.00000263 -0.00000000  0.00000000 -0.00000000  0.00000147  0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000223  0.00000000  0.00000000  0.00000000  0.00000401

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000080  0.00000000  0.00000000  0.00000000 -0.00000326

 50  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000008  0.62020984  0.00000000  0.00000000  0.00000007

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.69803335 -0.00000000  0.00000000 -0.00000000  0.02884467 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000635 -0.00000000  0.00011852  0.00000000 -0.00000000  0.00000000  0.00021227  0.00000000
                                0.13978924  0.00000000  0.69321899  0.00000000  0.00000000 -0.00000000  0.23284956 -0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.60376654 -0.00000007 -0.00000000  0.00000000  0.25339698

 54  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.10540428 -0.00000000  0.00000000 -0.00000000  0.53400276  0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00003146 -0.00000000  0.00002385 -0.00000000  0.00000000 -0.00000000 -0.00043874  0.00000000
                               -0.69278207  0.00000000  0.13953023  0.00000000  0.00000000  0.00000000 -0.48126345  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.02170164  0.00000000 -0.00000000  0.00000021

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00000188 -0.00000000 -0.00001126  0.00000000  0.00000000  0.00000000  0.00000804 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000952  0.00000000  0.00000000 -0.00000000 -0.00000628  0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000059 -0.00000000 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000067  0.00000000 -0.00000000  0.00000000  0.00000282


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>        0.00000000 -0.00000251  0.00000045 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00729304
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00231836  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00231883  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000141  0.00231606 -0.00009750  0.00000000 -0.00000000 -0.00000000  0.00000067
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000002  0.00009749  0.00231520 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000066 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00231883 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.91719454  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00003290 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00002378  0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.91720083 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.91720092 -0.00000002 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000010  0.06336217  0.91495484 -0.00000000 -0.00000000 -0.00000000 -0.00000276
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000366  0.91486981 -0.06336289  0.00000000 -0.00000000  0.00000000 -0.00006800
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00001334 -0.00000417  0.00000014  0.00000000 -0.00000000 -0.00000000 -0.09807766
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00119166 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00119012  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000188 -0.00202248  0.00124522 -0.00000000  0.00000000 -0.00000000  0.00000061
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000401 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00119151  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000326 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00205538  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000007  0.00000000  0.00000000  0.00000000 -0.00000000  0.05040063 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.06368043 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000228  0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.03946012  0.00922277 -0.05774390  0.00000000  0.00000000  0.00000000  0.00000855
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.25334665 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.05041521 -0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00340900  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000012 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.46283797 -0.05509737 -0.02627980  0.00000000  0.00000000  0.00000000  0.00002392
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000021  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.03907823  0.00000000  0.00000000
                                0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00002359  0.16517379  0.26740053 -0.00000000 -0.00000000 -0.00000000  0.57455739
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.27208881  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000976 -0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.27205138  0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000282 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000036  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00006986  0.00236954 -0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000302  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00119062  0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00119061 -0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00236995 -0.00000000  0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00009322 -0.00148502 -0.05036015  0.00000000  0.00000000  0.00000000  0.00000001

 35  1     7    1  |1 0>       -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.16210354  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.01259347  0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000006  0.00000000  0.00000000  0.00000000 -0.00000000  0.01257201 -0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000181  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.05041521  0.00000000 -0.00000000  0.00000000

 38  1    10    1  |1 0>        0.00000003  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.71347072 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.06254856 -0.00000000

 39  1    11    1  |1 0>        0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000025 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.06255284  0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.75386156  0.06780155 -0.00199920 -0.00000000 -0.00000000 -0.00000000  0.00003078

 41  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.27209686  0.00000001  0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00002338  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.27209668 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00002827 -0.31420631  0.00926454  0.00000000  0.00000000  0.00000000  0.57454029

 44  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000342  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00119166 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000188  0.00209233  0.00112389 -0.00000000 -0.00000000 -0.00000000 -0.00000061

 47  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00119012 -0.00000000  0.00000000 -0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00119143 -0.00000000  0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00205542 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.20887447  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.05040072  0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.03961026  0.01262740  0.05709034 -0.00000000 -0.00000000 -0.00000000  0.00000853

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000228 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.06367941 -0.00000000  0.00000000  0.00000000

 53  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000000  0.05041541 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.46297697 -0.05344911  0.02949992 -0.00000000  0.00000000 -0.00000000  0.00002393

 55  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00343081  0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.59738505  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.03907828  0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000976 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.27208947 -0.00000000  0.00000000 -0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00002360 -0.14913191  0.27666845 -0.00000000 -0.00000000 -0.00000000 -0.57455621

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00001796  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.27205186  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000035 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000028
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00389864  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00389919  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00004079 -0.00388451
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00389051 -0.00004070
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00389919 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000085  0.00000000  0.00000000 -0.38385387 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000033 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000 -0.00005439 -0.00000000 -0.00000003  0.38383140 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00005525  0.00000000 -0.00000000  0.38383118  0.00000003 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.38367380  0.01441832
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.01441262  0.38381930
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000011 -0.00001066
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00032334 -0.00000000 -0.00000000  0.00015853  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00032257 -0.00000000 -0.00000000 -0.00015882 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000009  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00015628 -0.00027383
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00032270 -0.00000000 -0.00000000  0.00015913 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00018143  0.00000000  0.00000000 -0.00027424  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00001445  0.00000000 -0.00000000  0.01448559  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00001147 -0.00000000  0.00000000  0.01829976  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.01649071  0.00316750
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000000 -0.00000548 -0.00000000 -0.00000000  0.01448111 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000044 -0.00000000 -0.00000000 -0.00097998 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00804539 -0.01557309
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00002084 -0.00000000  0.00000000 -0.01123688 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.65336478 -0.37532835
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.70669130  0.00000000  0.00000000  0.65259548  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00019062 -0.00000000  0.00000000 -0.00000057  0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.70665647 -0.00000006 -0.00000000  0.65264874  0.00000005 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000000  0.00000000 -0.03424682  0.00000000  0.00000000 -0.00000522  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00031219 -0.00000067

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00032326  0.00000000  0.00000000 -0.00015837  0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00032326  0.00000000 -0.00000000  0.00015836  0.00000000 -0.00000000  0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.00000000 -0.00000000  0.00031313  0.00000000  0.00000000  0.00000000  0.00000000

 33  1     5    1  |1 0>       -0.00000010  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00037587  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.01445965  0.00003064

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000095 -0.00000000 -0.00000000  0.00361859 -0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000093 -0.00000000 -0.00000000  0.00361241  0.00000000 -0.00000000  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000003 -0.00000000  0.00000000 -0.01447461 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00001728  0.00000000  0.00000000 -0.01797717  0.00000000  0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00001724  0.00000000  0.00000000 -0.01797839 -0.00000000  0.00000000 -0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00004128  0.01948089

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.70672728  0.00000006 -0.00000000  0.65255330  0.00000005 -0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000006  0.70672668  0.00000000  0.00000005 -0.65255403  0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00159829  0.75348961

 44  1    16    1  |1 0>       -0.00000924  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.03424435  0.00000000  0.00000000  0.00000006  0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00032334  0.00000000  0.00000000 -0.00015854  0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00015744  0.00027316

 47  1     3    1  |1 1>-       0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00032257 -0.00000000 -0.00000000  0.00015881  0.00000000  0.00000000  0.00000000  0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00032271 -0.00000000 -0.00000000  0.00015912  0.00000000 -0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00018142  0.00000000 -0.00000000  0.00027424  0.00000000 -0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00001442  0.00000000  0.00000000 -0.01448563  0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.01650132  0.00310287

 52  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001137  0.00000000 -0.00000000  0.01829946  0.00000000  0.00000000  0.00000000  0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000555  0.00000000 -0.00000000  0.01448113  0.00000000 -0.00000000  0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00798491 -0.01560607

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000044 -0.00000000 -0.00000000 -0.00098625 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00002080  0.00000000  0.00000000 -0.01123690  0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00019062  0.00000000 -0.00000000 -0.00000057  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.70669251  0.00000000  0.00000000 -0.65259390 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.65176799  0.37809577

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000006  0.70665707 -0.00000000 -0.00000005  0.65264789 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.03424681 -0.00000000  0.00000000  0.00000528  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00065191
                                0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000002  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000003
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000002 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000001  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000 -0.00000018  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000017 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000005
                                0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000106
                                0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.99517876
                                0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000990 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000990  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000013
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000988  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000556  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000014  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000040  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000183
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00000003  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000162  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000566
                                0.00000000 -0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000158  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.05662108
                               -0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.02421443 -0.00000000 -0.00000000 -0.00000000
                               -0.00000021 -0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000 -0.02421848 -0.00000002 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000002 -0.00000069  0.99941341 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000988  0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000988  0.00000000 -0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00001151 -0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000001

 35  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000054  0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000054 -0.00000000  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000139 -0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000140 -0.00000000 -0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000519

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.02421381  0.00000002 -0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000002  0.02421384 -0.00000000

 43  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.05662961

 44  1    16    1  |1 0>       -0.00000847 -0.00000000 -0.00000000 -0.00000000
                                0.99941349  0.00000000  0.00000002  0.00000000

 45  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000990 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000012

 47  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000990  0.00000000  0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000988 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000556  0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000014 -0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000185

 52  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000040 -0.00000000  0.00000000  0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000003  0.00000000 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000565

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000162  0.00000000  0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000158 -0.00000000

 57  1    13    1  |1 1>-       0.00000021  0.00000000  0.00000000 -0.00000000
                               -0.02421439 -0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.05662109

 59  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000002  0.02421847  0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.99941341  0.00000069  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.16%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.16%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.16%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.16%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%   16.48%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.48%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.56%   49.34%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%   29.99%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    9.99%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   65.90%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%   16.49%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   65.88%    0.00%
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
 45  1     1    1  |1 1>-         0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.39%   49.51%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.48%    0.00%
 48  1     4    1  |1 1>-         0.00%   29.99%    0.00%    0.00%    0.00%    0.00%    0.00%   16.47%
 49  1     5    1  |1 1>-         0.00%    9.99%    0.00%    0.00%    0.00%    0.00%    0.00%   49.41%
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
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          1.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   51.31%    0.00%    0.00%    2.01%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.23%    0.00%    0.00%   20.08%
 15  1     3    1  |1 1>+         0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+        16.47%    0.00%    0.00%   31.24%    0.00%    0.00%   22.11%    0.00%
 17  1     5    1  |1 1>+        49.41%    0.00%    0.00%    7.47%    0.00%    0.00%   32.55%    0.00%
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
 30  1     2    1  |1 0>         16.49%    0.00%    0.00%    9.96%    0.00%    0.00%   43.36%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%   10.01%    0.00%    0.00%   43.31%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.35%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.02%
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
 45  1     1    1  |1 1>-        16.48%    0.00%    0.00%   51.33%    0.00%    0.00%    1.98%    0.00%
 46  1     2    1  |1 1>-         0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.42%    0.00%    0.00%   19.90%
 48  1     4    1  |1 1>-         0.00%    0.00%   31.18%    0.00%    0.00%   22.18%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    7.51%    0.00%    0.00%   32.51%    0.00%    0.00%
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
  2  1     2    1  |0 0>          0.00%    0.00%   98.83%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.83%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>         98.82%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.01%   98.82%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   98.83%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.14%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.14%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.14%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.58%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.58%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.56%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   30.50%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.55%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.11%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    7.16%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.77%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.77%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.54%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.47%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.51%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   36.15%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.58%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.19%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.19%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.58%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.57%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   30.49%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.55%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    7.15%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.11%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.10%
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
  9  1     9    1  |0 0>          1.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    1.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+        23.57%    0.00%   24.34%    0.00%    0.00%    8.98%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.58%
 20  1     8    1  |1 1>+         0.00%    1.10%    0.00%    0.00%   19.06%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    2.78%    0.00%    0.00%   30.52%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   26.68%
 23  1    11    1  |1 1>+         0.00%   27.13%    0.00%    0.00%   14.25%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+        14.10%    0.00%    6.39%    0.00%    0.00%   43.61%    0.00%    0.00%
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
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%   66.13%    0.00%    0.00%    6.28%    0.00%
 36  1     8    1  |1 0>          1.46%    0.00%   66.14%    0.00%    0.00%    6.28%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.38%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.34%    0.00%    0.00%   10.62%    0.00%
 39  1    11    1  |1 0>         36.16%    0.00%    0.34%    0.00%    0.00%   10.62%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%   42.35%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%   24.35%    0.00%    0.00%    8.97%    0.00%
 51  1     7    1  |1 1>-         0.00%    1.10%    0.00%    0.00%   19.07%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.57%
 53  1     9    1  |1 1>-        23.55%    0.00%    2.79%    0.00%    0.00%   30.51%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%   27.14%    0.00%    0.00%   14.24%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   26.79%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    6.40%    0.00%    0.00%   43.60%    0.00%
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
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%   38.47%    0.00%    0.00%    0.00%    4.36%
 19  1     7    1  |1 1>+         1.95%    0.00%   48.04%    0.00%    0.00%    0.00%    5.44%    0.00%
 20  1     8    1  |1 1>+         0.00%   48.73%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   36.46%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+        48.10%    0.00%    1.96%    0.00%    0.00%    0.00%   23.15%    0.00%
 23  1    11    1  |1 1>+         0.00%    1.11%    0.00%    0.00%    0.00%   28.52%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%   35.69%
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
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.47%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%   23.48%    0.00%    0.00%    0.00%    2.62%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.83%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.56%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    1.55%    0.00%    0.00%    0.00%   50.91%
 40  1    12    1  |1 0>          0.00%    0.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   38.47%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%   48.73%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%
 52  1     8    1  |1 1>-         1.95%    0.00%   48.06%    0.00%    0.00%    0.00%    5.42%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%   36.45%    0.00%    0.00%    0.00%    6.42%
 54  1    10    1  |1 1>-         0.00%    1.11%    0.00%    0.00%    0.00%   28.52%    0.00%    0.00%
 55  1    11    1  |1 1>-        47.99%    0.00%    1.95%    0.00%    0.00%    0.00%   23.16%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
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
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%   84.12%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   84.13%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   84.13%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.40%   83.71%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%   83.70%    0.40%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.96%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.41%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.16%    0.01%    0.33%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         6.42%    0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%   21.42%    0.30%    0.07%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.15%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    2.73%    7.15%    0.00%    0.00%    0.00%   33.01%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    7.40%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    7.40%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.25%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          2.63%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>         50.90%    0.00%    0.00%    0.00%    0.00%    0.00%    0.39%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.39%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%   56.83%    0.46%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    7.40%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.40%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    9.87%    0.01%    0.00%    0.00%    0.00%   33.01%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         4.36%    0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.16%    0.02%    0.33%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.41%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%   21.43%    0.29%    0.09%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-        35.69%    0.00%    0.00%    0.00%    0.00%    0.00%    0.15%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    7.40%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    2.22%    7.65%    0.00%    0.00%    0.00%   33.01%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.40%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%   14.73%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   14.73%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   14.73%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.72%    0.02%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%   14.73%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.02%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.69%   14.09%
 26  1    14    1  |1 1>+        49.94%    0.00%    0.00%   42.59%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%   49.94%    0.00%    0.00%   42.60%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
 41  1    13    1  |1 0>          0.00%   49.95%    0.00%    0.00%   42.58%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%   49.95%    0.00%    0.00%   42.58%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   56.77%
 44  1    16    1  |1 0>          0.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.02%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 57  1    13    1  |1 1>-        49.94%    0.00%    0.00%   42.59%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.48%   14.30%
 59  1    15    1  |1 1>-         0.00%    0.00%   49.94%    0.00%    0.00%   42.59%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

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
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%   99.04%
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
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.32%
 26  1    14    1  |1 1>+         0.06%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.06%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%   99.88%    0.00%
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
 41  1    13    1  |1 0>          0.00%    0.06%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.06%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.32%
 44  1    16    1  |1 0>         99.88%    0.00%    0.00%    0.00%
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
 57  1    13    1  |1 1>-         0.06%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.32%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.06%    0.00%
 60  1    16    1  |1 1>-         0.00%   99.88%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.39       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      575.04       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3745.97   3044.31    481.11    215.70      3.11      0.06      1.43
 REAL TIME  *      3898.05 SEC
 DISK USED  *       623.49 MB (local),       14.74 GB (total)
 SF USED    *         3.74 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=    -25.263372200246

              CI              CI           MULTI         RHF-SCF
    -25.24414937    -25.24132679    -25.00451300    -25.09501583
 **********************************************************************************************************************************
 Molpro calculation terminated
