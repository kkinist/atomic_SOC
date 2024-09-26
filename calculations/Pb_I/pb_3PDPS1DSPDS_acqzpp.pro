
 Working directory              : /wrk/irikura/molpro.7CVgGmAkUr/
 Global scratch directory       : /wrk/irikura/molpro.7CVgGmAkUr/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.7CVgGmAkUr/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.02 sec
 ***,Pb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Pb};
 
 basis=aug-cc-pwCVQZ-PP
 
                                                                                 ! spherical anion orbitals (4S)
 {rhf; wf,charge=-1,sym=2,spin=3}
 
 NTRIP=12
 NSING=15
 
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
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Pb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 17-May-24          TIME: 11:37:39  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Pb   ECP ECP60MDF                 selected for group  1
 Library entry PB     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry PB     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry PB     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry PB     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry PB     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry PB     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         294
 NUMBER OF SYMMETRY AOS:          227
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

         1 0.360E-04 0.673E-03 0.673E-03 0.673E-03 0.673E-03 0.673E-03 0.782E-03 0.407E-02
         2 0.377E-03 0.377E-03 0.377E-03 0.206E-02 0.206E-02 0.206E-02 0.113E-01 0.113E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     116.130 MB (compressed) written to integral file ( 15.6%)

     Node minimum: 3.670 MB, node maximum: 11.796 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    3250015.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    3250015      RECORD LENGTH: 524288

 Memory used in sort:       3.81 MW

 SORT1 READ    92659037. AND WROTE      598548. INTEGRALS IN      2 RECORDS. CPU TIME:     0.48 SEC, REAL TIME:     0.49 SEC
 SORT2 READ     9613375. AND WROTE    52200630. INTEGRALS IN    320 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.11 SEC

 Node minimum:     3249565.  Node maximum:     3267114. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.33      2.01
 REAL TIME  *         3.29 SEC
 DISK USED  *        29.74 MB (local),      675.00 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -191.86187307    -191.86187307     0.00D+00     0.75D-01     0     0       0.02      0.05    start
   2     -191.86404957      -0.00217650     0.93D-03     0.18D-02     1     0       0.02      0.07    diag2
   3     -191.86428527      -0.00023570     0.52D-03     0.46D-03     2     0       0.03      0.10    diag2
   4     -191.86434573      -0.00006045     0.13D-03     0.31D-03     3     0       0.02      0.12    diag2
   5     -191.86435229      -0.00000657     0.33D-04     0.94D-04     4     0       0.03      0.15    diag2
   6     -191.86435333      -0.00000104     0.78D-05     0.54D-04     5     0       0.03      0.18    diag2
   7     -191.86435358      -0.00000024     0.29D-05     0.34D-04     6     0       0.03      0.21    diag2
   8     -191.86435360      -0.00000003     0.96D-06     0.90D-05     7     0       0.02      0.23    fixocc
   9     -191.86435361      -0.00000000     0.31D-06     0.21D-05     8     0       0.02      0.25    diag2
  10     -191.86435361      -0.00000000     0.48D-07     0.27D-06     0     0       0.03      0.28    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -191.864353606955
  RHF One-electron energy            -340.681700420368
  RHF Two-electron energy             148.817346813414
  RHF Kinetic energy                   62.712694108544
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.059418134307

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.94945     1  1  s    0.99998
    2.1     2.00000    -0.84962     1  1  d2-  0.61149    1  1  d1+  0.62407    1  1  d2+  0.29573    1  1  d1-  0.38460
    3.1     2.00000    -0.84962     1  1  d2- -0.27693    1  1  d1+ -0.36696    1  1  d2+  0.76722    1  1  d1-  0.44583
    4.1     2.00000    -0.84962     1  1  d2-  0.73175    1  1  d1+ -0.61159    1  1  d1- -0.26976
    5.1     2.00000    -0.84962     1  1  d1+ -0.31716    1  1  d2+ -0.55334    1  1  d1-  0.76112
    6.1     2.00000    -0.84962     1  1  d0   0.99937
    7.1     2.00000    -0.35278     1  1  s   -0.35027    1  4  s    0.52985    1  5  s    0.53540    1  9  s   -0.30126
    1.2     2.00000    -3.63191     1  1  py   0.92192    1  1  pz  -0.37777
    2.2     2.00000    -3.63191     1  1  px   0.99441
    3.2     2.00000    -3.63191     1  1  py   0.38366    1  1  pz   0.92174
    4.2     1.00000    -0.05163     1  1  px  -0.25128    1  4  px   0.35707    1  5  px   0.40593    1  6  px   0.28820
    5.2     1.00000    -0.05163     1  4  py   0.28015    1  5  py   0.31848    1  5  pz   0.25170
    6.2     1.00000    -0.05163     1  4  pz   0.28015    1  5  py  -0.25170    1  5  pz   0.31848


 HOMO      6.2    -0.051626 =      -1.4048eV
 LUMO      7.2     0.126813 =       3.4508eV
 LUMO-HOMO         0.178439 =       4.8556eV

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
 CPU TIMES  *         2.64      0.31      2.01
 REAL TIME  *         4.74 SEC
 DISK USED  *        32.19 MB (local),      714.20 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =        15.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     153 (   79   74)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            12
 Number of CSFs:             120   (135 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            15
 Number of CSFs:             126   (261 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.674D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.587D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.580D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.564D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.196D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 5 3 6 2 1 1 4 6   5 3 2 1 5 4 6 3 2 4   6 5 3 2 115141310 9  1112 8 7 5 3 6 4 2 7
                                       12 81415 9111310 1 5   3 4 6 2 7 812 91114  151310 1 71514 91112   81310 4 3 6 5 2 4 3
                                        5 6 2 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.336D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.131D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.326D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.441D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.441D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.720D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.353D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.449D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 1 2 3 1   2 3 9 710 8 5 4 6 1   2 3 9 710 8 5 4 6 8  10 7 9 4 5 6 2 1 3 9
                                        7 810 6 4 5 1 2 315  21171314161112192018   9 710 8 6 5 4 1 3 2   810 7 9 6 5 4 1 2 3
                                        1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704
 Weight factors for state symmetry  2:    0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
                                          0.03704   0.03704   0.03704   0.03704   0.03704   0.03704   0.03704
 
 Number of orbital rotations:  1243  ( 24 closed/active, 696 closed/virtual, 0 active/active, 523 active/virtual )
 Total number of variables:    6778
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   18    0   -191.67559737    -191.71211199   -0.03651462    0.16778215 0.00156875 0.00000000  0.74E+00      1.15
   2    6   10    0   -191.71093660    -191.71292326   -0.00198666    0.11246614 0.00001196 0.00000000  0.59E-01      2.19
   3    7   12    0   -191.71293017    -191.71293025   -0.00000008    0.00067914 0.00000000 0.00000000  0.44E-03      3.18
   4    2    4    0   -191.71293025    -191.71293025    0.00000000    0.00000004 0.00000000 0.00000000  0.60E-07      3.69

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.46E-08)
                       Final energy:   -191.71293025
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -191.834131278241
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.91758846
 One electron energy                          -336.50385129
 Two electron energy                           144.66972001
 Virial ratio                                    4.04897463
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -191.834131277914
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.91758847
 One electron energy                          -336.50385131
 Two electron energy                           144.66972003
 Virial ratio                                    4.04897463
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -191.834131277862
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.91758847
 One electron energy                          -336.50385131
 Two electron energy                           144.66972003
 Virial ratio                                    4.04897463
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -191.670554360170
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41038028
 One electron energy                          -331.72305591
 Two electron energy                           140.05250155
 Virial ratio                                    4.07113261
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -191.670554360154
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41038028
 One electron energy                          -331.72305591
 Two electron energy                           140.05250155
 Virial ratio                                    4.07113261
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -191.670554360107
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41038028
 One electron energy                          -331.72305590
 Two electron energy                           140.05250154
 Virial ratio                                    4.07113261
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -191.670554360032
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41038028
 One electron energy                          -331.72305589
 Two electron energy                           140.05250153
 Virial ratio                                    4.07113261
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -191.670554360027
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41038028
 One electron energy                          -331.72305589
 Two electron energy                           140.05250153
 Virial ratio                                    4.07113261
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -191.667254689828
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.47373341
 One electron energy                          -332.04522080
 Two electron energy                           140.37796611
 Virial ratio                                    4.06796543
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -191.667254689816
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.47373341
 One electron energy                          -332.04522078
 Two electron energy                           140.37796609
 Virial ratio                                    4.06796544
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -191.667254689783
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.47373341
 One electron energy                          -332.04522081
 Two electron energy                           140.37796612
 Virial ratio                                    4.06796543
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -191.664788218956
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41024839
 One electron energy                          -331.72204246
 Two electron energy                           140.05725424
 Virial ratio                                    4.07104671
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -191.799436652991
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88001026
 One electron energy                          -336.28488553
 Two electron energy                           144.48544888
 Virial ratio                                    4.05024500
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -191.799436652989
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88001026
 One electron energy                          -336.28488553
 Two electron energy                           144.48544888
 Virial ratio                                    4.05024500
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -191.799436652610
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88001026
 One electron energy                          -336.28488554
 Two electron energy                           144.48544889
 Virial ratio                                    4.05024500
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -191.799436652569
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88001026
 One electron energy                          -336.28488554
 Two electron energy                           144.48544889
 Virial ratio                                    4.05024500
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -191.799436652457
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.88001026
 One electron energy                          -336.28488555
 Two electron energy                           144.48544890
 Virial ratio                                    4.05024500
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -191.765166009485
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.81583834
 One electron energy                          -335.87106894
 Two electron energy                           144.10590293
 Virial ratio                                    4.05281552
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -191.674400097313
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41046458
 One electron energy                          -331.72370427
 Two electron energy                           140.04930418
 Virial ratio                                    4.07119009
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -191.674400097248
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41046458
 One electron energy                          -331.72370426
 Two electron energy                           140.04930417
 Virial ratio                                    4.07119009
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -191.674400097185
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.41046458
 One electron energy                          -331.72370425
 Two electron energy                           140.04930416
 Virial ratio                                    4.07119009
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -191.658926474388
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.51342598
 One electron energy                          -332.27301174
 Two electron energy                           140.61408526
 Virial ratio                                    4.06588422
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -191.658926474351
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.51342598
 One electron energy                          -332.27301174
 Two electron energy                           140.61408526
 Virial ratio                                    4.06588422
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -191.658926474341
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.51342598
 One electron energy                          -332.27301176
 Two electron energy                           140.61408528
 Virial ratio                                    4.06588422
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -191.658926474214
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.51342599
 One electron energy                          -332.27301177
 Two electron energy                           140.61408530
 Virial ratio                                    4.06588422
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -191.658926474211
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.51342599
 One electron energy                          -332.27301177
 Two electron energy                           140.61408530
 Virial ratio                                    4.06588422
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -191.647216838687
 Nuclear energy                                  0.00000000
 Kinetic energy                                 62.56702036
 One electron energy                          -332.59358499
 Two electron energy                           140.94636815
 Virial ratio                                    4.06307086
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000368
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999684
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.156577363469
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000001
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000000001126
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     3.999999997491
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.843416126732
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999979083
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     0.000000012837
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.992012727580
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999999999969
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000002
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.007986973968
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999999962
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.000000000007
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     3.120427359310
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     3.999999989618
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     1.000000007735
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     1.000000000000
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     0.879575725073
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.593533266062
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999999998
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000000124
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999995857
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.406456600303
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>    -0.000000000000
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.849352213069
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.999999999074
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000001
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.150645052973
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     0.005045275389
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     0.999999990543
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     0.999999998652
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     4.000000000000
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     3.994955000438
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999632
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000000316
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     2.249889370469
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000000
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999999998749
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000006652
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     1.750127272966
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000000020917
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.999999987163
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.158635059351
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000957
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999999997
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.841367973059
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.000000000038
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999999993
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     2.874527365300
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     1.000000019839
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     3.999999993614
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     1.000000000000
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     1.125469274489
 !MCSCF expec    <15.1 Singlet|LZLZ|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     6.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     6.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>     2.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>     2.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     6.000000000000
 !MCSCF expec    <13.1 Singlet|L**2|13.1 Singlet>     6.000000000000
 !MCSCF expec    <14.1 Singlet|L**2|14.1 Singlet>     6.000000000000
 !MCSCF expec    <15.1 Singlet|L**2|15.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 4   6 3 5 1 2 4 6 3 5 2   4 6 5 3 1 9 711 812  14151310 2 4 6 5 3 9
                                        711 81214151310 1 2   4 6 5 3 9 711 81215  141310 1 9 711 81214  151310 2 4 6 3 5 4 2
                                        6 3 5 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 1 3 3   1 2 4 6 5 810 9 7 3   1 2 4 6 5 810 9 7 4   6 5 810 7 9 3 1 2 4
                                        6 510 8 9 7 3 1 211  19122113141615172018   4 6 5 810 9 7 3 1 2   4 6 5 810 9 7 3 1 2
                                        3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.28479     1  1  s    0.99849
    2.1     2.00000    -1.18519     1  1  d0   1.00148
    3.1     2.00000    -1.18519     1  1  d1+  1.00148
    4.1     2.00000    -1.18519     1  1  d1-  1.00148
    5.1     2.00000    -1.18519     1  1  d2-  1.00148
    6.1     2.00000    -1.18519     1  1  d2+  1.00148
    7.1     1.97226    -0.65232     1  1  s   -0.37236    1  4  s    0.60455    1  5  s    0.60805    1  9  s   -0.31607
    1.2     2.00000    -3.96750     1  1  pz   0.99980
    2.2     2.00000    -3.96750     1  1  px   0.99980
    3.2     2.00000    -3.96750     1  1  py   0.99980
    4.2     0.45355    -0.11259     1  1  py  -0.31421    1  4  py   0.50968    1  5  py   0.46944
    5.2     0.45355    -0.11259     1  1  px  -0.31421    1  4  px   0.50968    1  5  px   0.46944
    6.2     0.45355    -0.11259     1  1  pz  -0.31421    1  4  pz   0.50968    1  5  pz   0.46944
    7.2     0.22237     0.01811     1 10  py   1.15412
    8.2     0.22237     0.01811     1 10  px   1.15412
    9.2     0.22237     0.01811     1 10  pz   1.15412
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aa0000      -0.00001891      0.98565868     -0.00000009      0.00000000     -0.00000000      0.00000000      0.00000000
 2 0aa000       0.00000003      0.00000009      0.98565867      0.00000000     -0.00000005      0.00000000     -0.00000000
 2 a0a000       0.98565867      0.00001891     -0.00000003      0.00000000      0.00000000      0.00000000     -0.00000005
 2 0a00a0       0.00000000     -0.00000000      0.00000000      0.79437207      0.00000083     -0.00002827      0.00001620
 2 a00a00       0.00000000     -0.00000000      0.00000000     -0.25833151     -0.00000014      0.00000266     -0.00005557
 2 0a0a00       0.00000187     -0.09740373      0.00000001      0.00002627      0.00000020      0.70181965      0.00001174
 2 0a000a       0.00000000      0.00000001      0.09740381     -0.00000076      0.70181965     -0.00000020      0.00000049
 2 00aa00      -0.09740373     -0.00000187      0.00000000     -0.00000436     -0.00000049     -0.00001174      0.70181964
 2 a0000a       0.09740380      0.00000187     -0.00000000     -0.00000436     -0.00000049     -0.00001174      0.70181963
 2 00a0a0      -0.00000000     -0.00000001     -0.09740373     -0.00000076      0.70181963     -0.00000020      0.00000049
 2 a000a0      -0.00000187      0.09740373     -0.00000001      0.00002627      0.00000020      0.70181962      0.00001174
 2 00a00a       0.00000000     -0.00000000      0.00000000     -0.53604054     -0.00000069      0.00002561      0.00003937
 0 aa2000       0.00000178     -0.09255849      0.00000001     -0.00000000      0.00000000     -0.00000000     -0.00000000
 0 a2a000      -0.09255849     -0.00000178      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0 2aa000      -0.00000000     -0.00000001     -0.09255849     -0.00000000      0.00000000     -0.00000000      0.00000000
 0 2a00a0      -0.00000000      0.00000000     -0.00000000     -0.06830386     -0.00000007      0.00000243     -0.00000137
 0 0a20a0      -0.00000000      0.00000000     -0.00000000     -0.06816836     -0.00000007      0.00000242     -0.00000141
 0 a20a00      -0.00000000      0.00000000     -0.00000000      0.02186596      0.00000001     -0.00000022      0.00000478
 0 a02a00      -0.00000000      0.00000000     -0.00000000      0.02251510      0.00000001     -0.00000024      0.00000477
 0 0a2a00      -0.00000015      0.00759094     -0.00000000     -0.00000226     -0.00000002     -0.06045713     -0.00000101
 0 2a000a      -0.00000000     -0.00000000     -0.00759095      0.00000007     -0.06045713      0.00000002     -0.00000004
 0 02aa00       0.00759094      0.00000015     -0.00000000      0.00000038      0.00000004      0.00000101     -0.06045712
 0 a2000a      -0.00759095     -0.00000015      0.00000000      0.00000038      0.00000004      0.00000101     -0.06045712
 0 a020a0       0.00000015     -0.00759094      0.00000000     -0.00000226     -0.00000002     -0.06045712     -0.00000101
 0 20a0a0       0.00000000      0.00000000      0.00759094      0.00000007     -0.06045712      0.00000002     -0.00000004
 0 0a200a      -0.00000000     -0.00000000     -0.01729452      0.00000006     -0.06011469      0.00000002     -0.00000004
 0 2a0a00      -0.00000033      0.01729452     -0.00000000     -0.00000225     -0.00000002     -0.06011469     -0.00000101
 0 20aa00       0.01729452      0.00000033     -0.00000000      0.00000037      0.00000004      0.00000101     -0.06011469
 0 02a0a0       0.00000000      0.00000000      0.01729452      0.00000006     -0.06011469      0.00000002     -0.00000004
 0 a0200a      -0.01729452     -0.00000033      0.00000000      0.00000037      0.00000004      0.00000101     -0.06011469
 0 a200a0       0.00000033     -0.01729452      0.00000000     -0.00000225     -0.00000002     -0.06011469     -0.00000101
 0 02a00a      -0.00000000      0.00000000     -0.00000000      0.04578876      0.00000006     -0.00000219     -0.00000340
 0 20a00a      -0.00000000     -0.00000000      0.00000000      0.04630240      0.00000006     -0.00000221     -0.00000336
 
 Energy:     -191.83413128   -191.83413128   -191.83413128   -191.67055436   -191.67055436   -191.67055436   -191.67055436

 State:              8               9              10              11              12
 2 aa0000       0.00000000     -0.13884489      0.00002008      0.00000002      0.00000000
 2 0aa000       0.00000000     -0.00000002      0.00000008     -0.13884494      0.00000000
 2 a0a000      -0.00000000     -0.00002008     -0.13884494     -0.00000008      0.00000000
 2 0a00a0      -0.16033539     -0.00000000      0.00000000      0.00000000      0.57296527
 2 a00a00       0.76811407     -0.00000000      0.00000000      0.00000000      0.57296529
 2 0a0a00       0.00000641     -0.69504689      0.00010052      0.00000012     -0.00000000
 2 0a000a      -0.00000012      0.00000012     -0.00000040      0.69504690     -0.00000000
 2 00aa00       0.00004931     -0.00010052     -0.69504690     -0.00000040      0.00000000
 2 a0000a       0.00004931      0.00010052      0.69504690      0.00000040     -0.00000000
 2 00a0a0      -0.00000012     -0.00000012      0.00000040     -0.69504692     -0.00000000
 2 a000a0       0.00000641      0.69504692     -0.00010052     -0.00000012      0.00000000
 2 00a00a      -0.60777869      0.00000000      0.00000000     -0.00000000      0.57296529
 0 aa2000      -0.00000000      0.01545623     -0.00000224     -0.00000000     -0.00000000
 0 a2a000       0.00000000      0.00000224      0.01545623      0.00000001     -0.00000000
 0 2aa000      -0.00000000      0.00000000     -0.00000001      0.01545623      0.00000000
 0 2a00a0       0.01343705      0.00000000     -0.00000000     -0.00000000     -0.04961192
 0 0a20a0       0.01410839      0.00000000     -0.00000000     -0.00000000     -0.04961192
 0 a20a00      -0.06608972      0.00000000     -0.00000000     -0.00000000     -0.04961192
 0 a02a00      -0.06587140      0.00000000     -0.00000000     -0.00000000     -0.04961192
 0 0a2a00      -0.00000055      0.06000803     -0.00000868     -0.00000001      0.00000000
 0 2a000a       0.00000001     -0.00000001      0.00000003     -0.06000803      0.00000000
 0 02aa00      -0.00000425      0.00000868      0.06000803      0.00000003     -0.00000000
 0 a2000a      -0.00000425     -0.00000868     -0.06000803     -0.00000003      0.00000000
 0 a020a0      -0.00000055     -0.06000803      0.00000868      0.00000001     -0.00000000
 0 20a0a0       0.00000001      0.00000001     -0.00000003      0.06000803      0.00000000
 0 0a200a       0.00000001     -0.00000001      0.00000003     -0.05752946      0.00000000
 0 2a0a00      -0.00000055      0.05752946     -0.00000832     -0.00000001      0.00000000
 0 20aa00      -0.00000422      0.00000832      0.05752946      0.00000003     -0.00000000
 0 02a0a0       0.00000001      0.00000001     -0.00000003      0.05752947      0.00000000
 0 a0200a      -0.00000422     -0.00000832     -0.05752947     -0.00000003      0.00000000
 0 a200a0      -0.00000055     -0.05752947      0.00000832      0.00000001     -0.00000000
 0 02a00a       0.05243435     -0.00000000     -0.00000000      0.00000000     -0.04961192
 0 20a00a       0.05198134     -0.00000000     -0.00000000      0.00000000     -0.04961192
 
 Energy:     -191.67055436   -191.66725469   -191.66725469   -191.66725469   -191.66478822
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 020000      -0.03555756     -0.00000093     -0.00000001      0.00000000      0.79492956      0.54469143     -0.00000000
 2 200000       0.70620798      0.00004921     -0.00000005     -0.00000002     -0.36667104      0.54469142     -0.00000000
 2 ab0000       0.00000006     -0.00000075      0.68911757      0.00000044      0.00000001      0.00000000      0.00000000
 2 ba0000      -0.00000006      0.00000075     -0.68911757     -0.00000044     -0.00000001     -0.00000000     -0.00000000
 2 0ba000      -0.00000002     -0.00000010      0.00000044     -0.68911756     -0.00000000      0.00000000      0.00000004
 2 0ab000       0.00000002      0.00000010     -0.00000044      0.68911756      0.00000000     -0.00000000     -0.00000004
 2 b0a000       0.00004873     -0.68911756     -0.00000075      0.00000010      0.00000138      0.00000000     -0.00000000
 2 a0b000      -0.00004873      0.68911756      0.00000075     -0.00000010     -0.00000138     -0.00000000      0.00000000
 2 002000      -0.67065040     -0.00004828      0.00000006      0.00000002     -0.42825853      0.54469141     -0.00000000
 2 a00b00       0.10308564      0.00000718     -0.00000001     -0.00000000     -0.05352321      0.11533102      0.00000000
 2 b00a00      -0.10308564     -0.00000718      0.00000001      0.00000000      0.05352321     -0.11533102     -0.00000000
 2 0a0b00       0.00000001     -0.00000011      0.10059094      0.00000006      0.00000000     -0.00000000      0.00000000
 2 0b0a00      -0.00000001      0.00000011     -0.10059094     -0.00000006     -0.00000000      0.00000000     -0.00000000
 2 00ab00      -0.00000711      0.10059094      0.00000011     -0.00000001     -0.00000020     -0.00000000      0.00000000
 2 00ba00       0.00000711     -0.10059094     -0.00000011      0.00000001      0.00000020      0.00000000     -0.00000000
 2 0a000b       0.00000000      0.00000001     -0.00000006      0.10059099     -0.00000000      0.00000000      0.49629913
 2 0b000a      -0.00000000     -0.00000001      0.00000006     -0.10059099      0.00000000     -0.00000000     -0.49629913
 2 00b0a0      -0.00000000     -0.00000001      0.00000006     -0.10059094      0.00000000     -0.00000000      0.49629913
 2 00a0b0       0.00000000      0.00000001     -0.00000006      0.10059094     -0.00000000      0.00000000     -0.49629913
 2 a0000b      -0.00000711      0.10059099      0.00000011     -0.00000001     -0.00000020      0.00000000      0.00000000
 2 b0000a       0.00000711     -0.10059099     -0.00000011      0.00000001      0.00000020     -0.00000000     -0.00000000
 2 a000b0       0.00000001     -0.00000011      0.10059094      0.00000006      0.00000000      0.00000000     -0.00000000
 2 b000a0      -0.00000001      0.00000011     -0.10059094     -0.00000006     -0.00000000     -0.00000000      0.00000000
 2 0a00b0      -0.00519036     -0.00000014     -0.00000000      0.00000000      0.11603639      0.11533102      0.00000000
 2 0b00a0       0.00519036      0.00000014      0.00000000     -0.00000000     -0.11603639     -0.11533102     -0.00000000
 2 00b00a       0.09789533      0.00000705     -0.00000001     -0.00000000      0.06251321     -0.11533106     -0.00000000
 2 00a00b      -0.09789533     -0.00000705      0.00000001      0.00000000     -0.06251321      0.11533106      0.00000000
 0 220000      -0.06288242     -0.00000453      0.00000001      0.00000000     -0.04015494     -0.09955671      0.00000000
 0 022000       0.06621641      0.00000461     -0.00000000     -0.00000000     -0.03438030     -0.09955671      0.00000000
 0 202000      -0.00333400     -0.00000009     -0.00000000      0.00000000      0.07453524     -0.09955670      0.00000000
 0 ab2000      -0.00000001      0.00000007     -0.06461396     -0.00000004     -0.00000000     -0.00000000     -0.00000000
 0 ba2000       0.00000001     -0.00000007      0.06461396      0.00000004      0.00000000      0.00000000      0.00000000
 0 b2a000      -0.00000457      0.06461396      0.00000007     -0.00000001     -0.00000013      0.00000000      0.00000000
 0 a2b000       0.00000457     -0.06461396     -0.00000007      0.00000001      0.00000013     -0.00000000     -0.00000000
 0 2ab000      -0.00000000     -0.00000001      0.00000004     -0.06461396     -0.00000000      0.00000000      0.00000000
 0 2ba000       0.00000000      0.00000001     -0.00000004      0.06461396      0.00000000     -0.00000000     -0.00000000
 
 Energy:     -191.79943665   -191.79943665   -191.79943665   -191.79943665   -191.79943665   -191.76516601   -191.67440010

 State:              8               9              10              11              12              13              14
 2 020000       0.00000000     -0.00000000      0.07752895     -0.00000698      0.00000025      0.00000017     -0.14602765
 2 200000      -0.00000000     -0.00000000     -0.16522813      0.00001841     -0.00000154     -0.00000001      0.00587178
 2 ab0000       0.00000000      0.00000000      0.00000135      0.00000575     -0.14318209     -0.00000005      0.00000047
 2 ba0000      -0.00000000     -0.00000000     -0.00000135     -0.00000575      0.14318209      0.00000005     -0.00000047
 2 0ba000       0.00000000     -0.00000000     -0.00000001     -0.00000003     -0.00000005      0.14318212      0.00000017
 2 0ab000      -0.00000000      0.00000000      0.00000001      0.00000003      0.00000005     -0.14318212     -0.00000017
 2 b0a000      -0.00000000      0.00000004      0.00001601      0.14318212      0.00000575      0.00000003      0.00000166
 2 a0b000       0.00000000     -0.00000004     -0.00001601     -0.14318212     -0.00000575     -0.00000003     -0.00000166
 2 002000      -0.00000000     -0.00000000      0.08769922     -0.00001143      0.00000129     -0.00000016      0.14015594
 2 a00b00      -0.00000000      0.00000000      0.56078430     -0.00006248      0.00000522      0.00000004     -0.01992883
 2 b00a00       0.00000000     -0.00000000     -0.56078430      0.00006248     -0.00000522     -0.00000004      0.01992883
 2 0a0b00      -0.49629913     -0.00000306     -0.00000458     -0.00001951      0.48596001      0.00000016     -0.00000159
 2 0b0a00       0.49629913      0.00000306      0.00000458      0.00001951     -0.48596001     -0.00000016      0.00000159
 2 00ab00       0.00000306     -0.49629913      0.00005435      0.48596001      0.00001951      0.00000011      0.00000563
 2 00ba00      -0.00000306      0.49629913     -0.00005435     -0.48596001     -0.00001951     -0.00000011     -0.00000563
 2 0a000b       0.00000000     -0.00000000     -0.00000002     -0.00000011     -0.00000016      0.48596001      0.00000057
 2 0b000a      -0.00000000      0.00000000      0.00000002      0.00000011      0.00000016     -0.48596001     -0.00000057
 2 00b0a0       0.00000000      0.00000000      0.00000002      0.00000011      0.00000016     -0.48596002     -0.00000057
 2 00a0b0      -0.00000000     -0.00000000     -0.00000002     -0.00000011     -0.00000016      0.48596002      0.00000057
 2 a0000b      -0.00000306      0.49629913      0.00005435      0.48596000      0.00001951      0.00000011      0.00000563
 2 b0000a       0.00000306     -0.49629913     -0.00005435     -0.48596000     -0.00001951     -0.00000011     -0.00000563
 2 a000b0       0.49629913      0.00000306     -0.00000458     -0.00001951      0.48596002      0.00000016     -0.00000159
 2 b000a0      -0.49629913     -0.00000306      0.00000458      0.00001951     -0.48596002     -0.00000016      0.00000159
 2 0a00b0      -0.00000000      0.00000000     -0.26313327      0.00002369     -0.00000086     -0.00000059      0.49561786
 2 0b00a0       0.00000000     -0.00000000      0.26313327     -0.00002369      0.00000086      0.00000059     -0.49561786
 2 00b00a      -0.00000000      0.00000000      0.29765101     -0.00003879      0.00000437     -0.00000055      0.47568902
 2 00a00b       0.00000000     -0.00000000     -0.29765101      0.00003879     -0.00000437      0.00000055     -0.47568902
 0 220000      -0.00000000      0.00000000      0.00925476     -0.00000121      0.00000014     -0.00000002      0.01479043
 0 022000      -0.00000000      0.00000000     -0.01743627      0.00000194     -0.00000016     -0.00000000      0.00061963
 0 202000       0.00000000      0.00000000      0.00818150     -0.00000074      0.00000003      0.00000002     -0.01541007
 0 ab2000      -0.00000000     -0.00000000     -0.00000014     -0.00000061      0.01510978      0.00000001     -0.00000005
 0 ba2000       0.00000000      0.00000000      0.00000014      0.00000061     -0.01510978     -0.00000001      0.00000005
 0 b2a000       0.00000000     -0.00000000     -0.00000169     -0.01510978     -0.00000061     -0.00000000     -0.00000017
 0 a2b000      -0.00000000      0.00000000      0.00000169      0.01510978      0.00000061      0.00000000      0.00000017
 0 2ab000       0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000001      0.01510978      0.00000002
 0 2ba000      -0.00000000      0.00000000      0.00000000      0.00000000      0.00000001     -0.01510978     -0.00000002
 
 Energy:     -191.67440010   -191.67440010   -191.65892647   -191.65892647   -191.65892647   -191.65892647   -191.65892647

 State:             15
 2 020000      -0.15998575
 2 200000      -0.15998574
 2 ab0000       0.00000000
 2 ba0000      -0.00000000
 2 0ba000       0.00000000
 2 0ab000      -0.00000000
 2 b0a000       0.00000000
 2 a0b000      -0.00000000
 2 002000      -0.15998580
 2 a00b00       0.38827832
 2 b00a00      -0.38827832
 2 0a0b00      -0.00000000
 2 0b0a00       0.00000000
 2 00ab00       0.00000000
 2 00ba00      -0.00000000
 2 0a000b       0.00000000
 2 0b000a      -0.00000000
 2 00b0a0      -0.00000000
 2 00a0b0       0.00000000
 2 a0000b       0.00000000
 2 b0000a      -0.00000000
 2 a000b0       0.00000000
 2 b000a0      -0.00000000
 2 0a00b0       0.38827834
 2 0b00a0      -0.38827834
 2 00b00a      -0.38827833
 2 00a00b       0.38827833
 0 220000       0.03108877
 0 022000       0.03108877
 0 202000       0.03108877
 0 ab2000      -0.00000000
 0 ba2000       0.00000000
 0 b2a000      -0.00000000
 0 a2b000       0.00000000
 0 2ab000       0.00000000
 0 2ba000      -0.00000000
 
 Energy:     -191.64721684
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.44       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.25      3.60      0.31      2.01
 REAL TIME  *         9.04 SEC
 DISK USED  *        53.90 MB (local),        1.04 GB (total)
 SF USED    *        60.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -191.8341313   2.0
    -191.8341313   2.0
    -191.8341313   2.0
    -191.6705544   6.0
    -191.6705544   6.0
    -191.6705544   6.0
    -191.6705544   6.0
    -191.6705544   6.0
    -191.6672547   2.0
    -191.6672547   2.0
    -191.6672547   2.0
    -191.6647882  -0.0
    -191.7994367   6.0
    -191.7994367   6.0
    -191.7994367   6.0
    -191.7994367   6.0
    -191.7994367   6.0
    -191.7651660  -0.0
    -191.6744001   2.0
    -191.6744001   2.0
    -191.6744001   2.0
    -191.6589265   6.0
    -191.6589265   6.0
    -191.6589265   6.0
    -191.6589265   6.0
    -191.6589265   6.0
    -191.6472168  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

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
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  15

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.83413128
     2      -191.83413128
     3      -191.83413128
     4      -191.67055436
     5      -191.67055436
     6      -191.67055436
     7      -191.67055436
     8      -191.67055436
     9      -191.66725469
    10      -191.66725469
    11      -191.66725469
    12      -191.66478822

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1015D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2981D-06

 Number of blocks in overlap matrix:  1216   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2329
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       6772860
 Number of doubly external configurations:      13635805
 Total number of contracted configurations:     20447071
 Total number of uncontracted configurations:  278531653

 Diagonal Coupling coefficients finished.               Storage:  25397627 words, CPU-Time:     66.55 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2110906 words, CPU-time:      2.53 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.83413128     0.00000000    -0.90754018  0.53D-01  0.12D+00    80.94
    1     2     2     1.00000000     0.00000000  -191.83413128     0.00000000    -0.90764592  0.53D-01  0.12D+00    80.94
    1     3     3     1.00000000     0.00000000  -191.83413128     0.00000000    -0.90741517  0.53D-01  0.12D+00    80.94
    1     4     4     1.00000000     0.00000000  -191.67055436    -0.00000000    -0.86430825  0.40D-01  0.10D+00    80.94
    1     5     5     1.00000000     0.00000000  -191.67055436     0.00000000    -0.86402714  0.40D-01  0.10D+00    80.94
    1     6     6     1.00000000     0.00000000  -191.67055436     0.00000000    -0.86405348  0.40D-01  0.10D+00    80.94
    1     7     7     1.00000000     0.00000000  -191.67055436     0.00000000    -0.86403544  0.40D-01  0.10D+00    80.94
    1     8     8     1.00000000     0.00000000  -191.67055436     0.00000000    -0.86434119  0.40D-01  0.10D+00    80.94
    1     9     9     1.00000000     0.00000000  -191.66725469     0.00000000    -0.86798372  0.41D-01  0.11D+00    80.94
    1    10    10     1.00000000     0.00000000  -191.66725469    -0.00000000    -0.86795948  0.41D-01  0.11D+00    80.94
    1    11    11     1.00000000     0.00000000  -191.66725469    -0.00000000    -0.86794443  0.41D-01  0.11D+00    80.94
    1    12    12     1.00000000     0.00000000  -191.66478822     0.00000000    -0.86468729  0.40D-01  0.10D+00    80.94
    2     1     1     1.10376039    -0.71150215  -192.54563343    -0.71150215    -0.02558022  0.44D-02  0.20D-02   797.53
    2     2     2     1.10385023    -0.71141676  -192.54554804    -0.71141676    -0.02567461  0.45D-02  0.20D-02   797.53
    2     3     3     1.10395247    -0.71131433  -192.54544561    -0.71131433    -0.02578625  0.45D-02  0.20D-02   797.53
    2     4     4     1.09408207    -0.70028377  -192.37083813    -0.70028377    -0.02024952  0.26D-02  0.15D-02   797.53
    2     5     5     1.09401927    -0.70026694  -192.37082130    -0.70026694    -0.02027687  0.27D-02  0.15D-02   797.53
    2     6     6     1.09403040    -0.70025452  -192.37080888    -0.70025452    -0.02029019  0.27D-02  0.15D-02   797.53
    2     7     7     1.09412471    -0.70024341  -192.37079777    -0.70024341    -0.02029365  0.27D-02  0.15D-02   797.53
    2     8     8     1.09404670    -0.70024109  -192.37079545    -0.70024109    -0.02030529  0.27D-02  0.15D-02   797.53
    2     9     9     1.09433944    -0.70076748  -192.36802217    -0.70076748    -0.02086668  0.29D-02  0.15D-02   797.53
    2    10    10     1.09435392    -0.70075224  -192.36800693    -0.70075224    -0.02088413  0.29D-02  0.15D-02   797.53
    2    11    11     1.09437090    -0.70073609  -192.36799078    -0.70073609    -0.02090313  0.30D-02  0.15D-02   797.53
    2    12    12     1.09416157    -0.70042424  -192.36521246    -0.70042424    -0.02044961  0.28D-02  0.15D-02   797.53
    3     1     1     1.09045940    -0.73538028  -192.56951156    -0.02387813    -0.00049004  0.83D-04  0.56D-04  1514.45
    3     2     2     1.09045954    -0.73537710  -192.56950838    -0.02396034    -0.00049319  0.83D-04  0.56D-04  1514.45
    3     3     3     1.09045628    -0.73537350  -192.56950478    -0.02405917    -0.00049659  0.84D-04  0.57D-04  1514.45
    3     4     4     1.08581778    -0.71918639  -192.38974075    -0.01890262    -0.00030469  0.34D-04  0.31D-04  1514.45
    3     5     5     1.08581752    -0.71918598  -192.38974035    -0.01891904    -0.00030504  0.34D-04  0.31D-04  1514.45
    3     6     6     1.08581741    -0.71918574  -192.38974010    -0.01893122    -0.00030535  0.34D-04  0.31D-04  1514.45
    3     7     7     1.08583442    -0.71918426  -192.38973862    -0.01894085    -0.00030700  0.34D-04  0.32D-04  1514.45
    3     8     8     1.08583337    -0.71918322  -192.38973758    -0.01894213    -0.00030811  0.34D-04  0.32D-04  1514.45
    3     9     9     1.08572969    -0.72020034  -192.38745503    -0.01943286    -0.00032084  0.37D-04  0.33D-04  1514.45
    3    10    10     1.08572901    -0.72019993  -192.38745462    -0.01944769    -0.00032159  0.37D-04  0.33D-04  1514.45
    3    11    11     1.08572924    -0.72019977  -192.38745446    -0.01946368    -0.00032129  0.37D-04  0.33D-04  1514.45
    3    12    12     1.08589176    -0.71950635  -192.38429457    -0.01908211    -0.00031234  0.33D-04  0.34D-04  1514.45
    4     1     1     1.09000022    -0.73588724  -192.57001852    -0.00050696    -0.00002263  0.40D-05  0.28D-05  2234.80
    4     2     2     1.08999975    -0.73588715  -192.57001843    -0.00051004    -0.00002271  0.40D-05  0.28D-05  2234.80
    4     3     3     1.08999894    -0.73588705  -192.57001833    -0.00051356    -0.00002279  0.40D-05  0.28D-05  2234.80
    4     4     4     1.08610641    -0.71950192  -192.39005628    -0.00031553    -0.00001250  0.23D-05  0.14D-05  2234.80
    4     5     5     1.08610641    -0.71950184  -192.39005620    -0.00031585    -0.00001249  0.23D-05  0.14D-05  2234.80
    4     6     6     1.08610639    -0.71950180  -192.39005616    -0.00031606    -0.00001249  0.23D-05  0.14D-05  2234.80
    4     7     7     1.08610233    -0.71950179  -192.39005615    -0.00031752    -0.00001276  0.24D-05  0.15D-05  2234.80
    4     8     8     1.08610214    -0.71950151  -192.39005587    -0.00031829    -0.00001275  0.24D-05  0.15D-05  2234.80
    4     9     9     1.08599506    -0.72053208  -192.38778677    -0.00033174    -0.00001342  0.26D-05  0.15D-05  2234.80
    4    10    10     1.08599438    -0.72053172  -192.38778641    -0.00033179    -0.00001342  0.26D-05  0.15D-05  2234.80
    4    11    11     1.08599423    -0.72053160  -192.38778629    -0.00033183    -0.00001342  0.26D-05  0.15D-05  2234.80
    4    12    12     1.08625022    -0.71982959  -192.38461781    -0.00032324    -0.00001349  0.23D-05  0.18D-05  2234.80
    5     1     1     1.09010243    -0.73591210  -192.57004338    -0.00002485    -0.00000089  0.71D-07  0.14D-06  2953.40
    5     2     2     1.09010223    -0.73591209  -192.57004337    -0.00002495    -0.00000089  0.71D-07  0.14D-06  2953.40
    5     3     3     1.09010185    -0.73591209  -192.57004337    -0.00002504    -0.00000089  0.71D-07  0.14D-06  2953.40
    5     4     4     1.08625424    -0.71951644  -192.39007080    -0.00001452    -0.00000056  0.35D-07  0.11D-06  2953.40
    5     5     5     1.08625431    -0.71951631  -192.39007067    -0.00001447    -0.00000055  0.35D-07  0.11D-06  2953.40
    5     6     6     1.08625432    -0.71951622  -192.39007058    -0.00001442    -0.00000056  0.35D-07  0.11D-06  2953.40
    5     7     7     1.08625429    -0.71951619  -192.39007055    -0.00001440    -0.00000055  0.35D-07  0.11D-06  2953.40
    5     8     8     1.08625413    -0.71951615  -192.39007051    -0.00001464    -0.00000056  0.35D-07  0.11D-06  2953.40
    5     9     9     1.08613848    -0.72054735  -192.38780204    -0.00001527    -0.00000061  0.48D-07  0.11D-06  2953.40
    5    10    10     1.08613809    -0.72054698  -192.38780167    -0.00001526    -0.00000061  0.48D-07  0.11D-06  2953.40
    5    11    11     1.08613797    -0.72054687  -192.38780156    -0.00001527    -0.00000061  0.48D-07  0.11D-06  2953.40
    5    12    12     1.08644334    -0.71984539  -192.38463360    -0.00001579    -0.00000071  0.37D-07  0.16D-06  2953.40
    6     1     1     1.09010827    -0.73591307  -192.57004435    -0.00000097    -0.00000005  0.46D-08  0.87D-08  3671.58
    6     2     2     1.09010835    -0.73591307  -192.57004435    -0.00000097    -0.00000005  0.46D-08  0.87D-08  3671.58
    6     3     3     1.09010833    -0.73591307  -192.57004434    -0.00000097    -0.00000005  0.46D-08  0.87D-08  3671.58
    6     4     4     1.08627307    -0.71951710  -192.39007146    -0.00000067    -0.00000004  0.34D-08  0.98D-08  3671.58
    6     5     5     1.08627350    -0.71951696  -192.39007132    -0.00000066    -0.00000004  0.35D-08  0.96D-08  3671.58
    6     6     6     1.08627338    -0.71951688  -192.39007124    -0.00000066    -0.00000004  0.35D-08  0.96D-08  3671.58
    6     7     7     1.08627333    -0.71951684  -192.39007120    -0.00000066    -0.00000004  0.35D-08  0.95D-08  3671.58
    6     8     8     1.08627275    -0.71951682  -192.39007118    -0.00000067    -0.00000004  0.34D-08  0.98D-08  3671.58
    6     9     9     1.08615484    -0.72054807  -192.38780276    -0.00000072    -0.00000005  0.48D-08  0.11D-07  3671.58
    6    10    10     1.08615432    -0.72054770  -192.38780239    -0.00000072    -0.00000005  0.47D-08  0.11D-07  3671.58
    6    11    11     1.08615421    -0.72054759  -192.38780228    -0.00000072    -0.00000005  0.47D-08  0.11D-07  3671.58
    6    12    12     1.08647004    -0.71984626  -192.38463448    -0.00000087    -0.00000006  0.56D-08  0.13D-07  3671.58
    7     1     1     1.09011550    -0.73591312  -192.57004440    -0.00000006    -0.00000000  0.28D-09  0.69D-09  4391.00
    7     2     2     1.09011546    -0.73591312  -192.57004440    -0.00000006    -0.00000000  0.27D-09  0.68D-09  4391.00
    7     3     3     1.09011547    -0.73591312  -192.57004440    -0.00000006    -0.00000000  0.27D-09  0.68D-09  4391.00
    7     4     4     1.08627776    -0.71951716  -192.39007152    -0.00000005    -0.00000000  0.38D-09  0.78D-09  4391.00
    7     5     5     1.08627754    -0.71951702  -192.39007138    -0.00000005    -0.00000000  0.37D-09  0.78D-09  4391.00
    7     6     6     1.08627743    -0.71951693  -192.39007129    -0.00000005    -0.00000000  0.37D-09  0.79D-09  4391.00
    7     7     7     1.08627738    -0.71951689  -192.39007125    -0.00000005    -0.00000000  0.36D-09  0.78D-09  4391.00
    7     8     8     1.08627745    -0.71951687  -192.39007123    -0.00000005    -0.00000000  0.37D-09  0.78D-09  4391.00
    7     9     9     1.08615876    -0.72054813  -192.38780282    -0.00000006    -0.00000001  0.53D-09  0.11D-08  4391.00
    7    10    10     1.08615824    -0.72054776  -192.38780245    -0.00000006    -0.00000001  0.52D-09  0.11D-08  4391.00
    7    11    11     1.08615813    -0.72054765  -192.38780234    -0.00000006    -0.00000001  0.52D-09  0.11D-08  4391.00
    7    12    12     1.08647492    -0.71984633  -192.38463455    -0.00000007    -0.00000001  0.54D-09  0.94D-09  4391.00


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.5%  24.5%
 P   0.3%  37.3%  22.7%

 Initialization:   1.6%
 Other:           12.3%

 Total CPU:     4391.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0/000           0.0000000   0.0000000   0.9488694  -0.0000000  -0.0000000   0.0000000   0.0000030  -0.0000000
                            0.0000009  -0.0000091  -0.0984128   0.0000000
 22222222220//000           0.0032165   0.9488639  -0.0000000   0.0000000   0.0000000   0.0000019   0.0000000  -0.0000000
                            0.0000000  -0.0984128   0.0000091   0.0000000
 2222222222//0000           0.9488639  -0.0032165  -0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000  -0.0000000
                            0.0984130   0.0000000   0.0000009  -0.0000000
 222222222200/00/          -0.0000000  -0.0000000   0.0000000  -0.0002544   0.0000000   0.0000000   0.0000047   0.7783891
                            0.0000000  -0.0000000   0.0000000   0.5503307
 22222222220/00/0          -0.0000000   0.0000000  -0.0000000   0.6742529   0.0000000  -0.0000090  -0.0000023  -0.3890008
                            0.0000000   0.0000000  -0.0000000   0.5502861
 222222222200//00          -0.0000000  -0.0000000  -0.0696112  -0.0000000  -0.0000000   0.0000000   0.6741423  -0.0000040
                            0.0000059  -0.0000623  -0.6706413  -0.0000000
 222222222200/0/0          -0.0002360  -0.0696108   0.0000000   0.0000090   0.0000000   0.6741352   0.0000000  -0.0000000
                            0.0000000  -0.6706484   0.0000623   0.0000000
 2222222222/000/0           0.0696110  -0.0002360  -0.0000000   0.0000000   0.6741218  -0.0000000  -0.0000000  -0.0000000
                           -0.6706614  -0.0000000  -0.0000059   0.0000000
 22222222220/0/00          -0.0696110   0.0002360   0.0000000   0.0000000   0.6741211  -0.0000000   0.0000000  -0.0000000
                            0.6706621   0.0000000   0.0000059  -0.0000000
 22222222220/000/           0.0002360   0.0696109  -0.0000000   0.0000090   0.0000000   0.6741079  -0.0000000   0.0000000
                           -0.0000000   0.6706758  -0.0000623  -0.0000000
 2222222222/0000/           0.0000000   0.0000000   0.0696113  -0.0000000   0.0000000  -0.0000000   0.6741008  -0.0000040
                           -0.0000059   0.0000623   0.6706829  -0.0000000
 2222222222/00/00          -0.0000000   0.0000000  -0.0000000  -0.6739899   0.0000000   0.0000090  -0.0000023  -0.3894465
                            0.0000000   0.0000000  -0.0000000   0.5502931
 2222220222/2/000          -0.0000000  -0.0000000  -0.0774229  -0.0000000   0.0000000  -0.0000000  -0.0000006  -0.0000000
                           -0.0000001   0.0000009   0.0102215  -0.0000000
 2222220222//2000          -0.0774224   0.0002625   0.0000000   0.0000000   0.0000001   0.0000000  -0.0000000   0.0000000
                           -0.0102209  -0.0000000  -0.0000001  -0.0000000
 22222202222//000          -0.0002625  -0.0774224   0.0000000  -0.0000000  -0.0000000  -0.0000004  -0.0000000   0.0000000
                           -0.0000000   0.0102221  -0.0000009  -0.0000000
 222222022220/00/           0.0000000   0.0000000   0.0000000   0.0003715  -0.0000000  -0.0000000  -0.0000003  -0.0579001
                           -0.0000000   0.0000000  -0.0000000  -0.0413552
 222222022202/00/           0.0000000   0.0000000   0.0000000  -0.0003330  -0.0000000   0.0000000  -0.0000003  -0.0578999
                           -0.0000000   0.0000000  -0.0000000  -0.0413555
 22222202220/20/0           0.0000000   0.0000000  -0.0000000  -0.0503284  -0.0000000   0.0000007   0.0000002   0.0286290
                           -0.0000000  -0.0000000   0.0000000  -0.0413516
 222222022202//00          -0.0000000   0.0000000   0.0044802   0.0000000   0.0000000  -0.0000000  -0.0503205   0.0000003
                           -0.0000004   0.0000047   0.0501421   0.0000000
 222222022220/0/0           0.0000152   0.0044801  -0.0000000  -0.0000007  -0.0000000  -0.0503199  -0.0000000   0.0000000
                           -0.0000000   0.0501425  -0.0000047  -0.0000000
 22222202220/2/00           0.0044798  -0.0000152   0.0000000   0.0000000  -0.0503192   0.0000000  -0.0000000   0.0000000
                           -0.0501445  -0.0000000  -0.0000004   0.0000000
 2222220222/020/0          -0.0044799   0.0000152   0.0000000   0.0000000  -0.0503192   0.0000000   0.0000000   0.0000000
                            0.0501442   0.0000000   0.0000004   0.0000000
 22222202222/000/          -0.0000152  -0.0044802   0.0000000  -0.0000007  -0.0000000  -0.0503179   0.0000000  -0.0000000
                            0.0000000  -0.0501444   0.0000047   0.0000000
 2222220222/2000/           0.0000000  -0.0000000  -0.0044801   0.0000000  -0.0000000   0.0000000  -0.0503177   0.0000003
                            0.0000004  -0.0000047  -0.0501457   0.0000000
 2222220222/02/00           0.0000000  -0.0000000   0.0000000   0.0503093  -0.0000000  -0.0000007   0.0000002   0.0286618
                           -0.0000000  -0.0000000   0.0000000  -0.0413521

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.956663    0.003243   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.034248    0.000000
            -0.000116   -0.000000
 2           0.000000   -0.003243    0.956663    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000116   -0.000000
            -0.034248    0.000000
 3           0.956668   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.034248
             0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.719161    0.000013    0.000000   -0.000000   -0.633846   -0.000000    0.000000
            -0.000000    0.000005
 5           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.958621    0.000000   -0.000000   -0.000001    0.000000
            -0.000000    0.000000
 6          -0.000000    0.000000   -0.000001   -0.000010    0.958621   -0.000000   -0.000000    0.000008   -0.000000   -0.000000
            -0.000019   -0.000000
 7          -0.000001   -0.000000   -0.000000   -0.000004    0.000000   -0.000000    0.958621   -0.000004    0.000000   -0.000030
            -0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.633846    0.000000   -0.000000   -0.000006   -0.719162    0.000000   -0.000000
             0.000000   -0.000034
 9          -0.000000   -0.035138   -0.000000    0.000000    0.000000    0.000001   -0.000000    0.000000    0.958039   -0.000008
            -0.000000    0.000000
 10          0.000003   -0.000000    0.035139    0.000000    0.000020    0.000000    0.000000    0.000000    0.000000    0.000089
             0.958039    0.000000
 11          0.035139   -0.000000   -0.000003   -0.000000    0.000000   -0.000000    0.000030   -0.000000    0.000008    0.958039
            -0.000089    0.000000
 12          0.000000    0.000000   -0.000000   -0.000026    0.000000   -0.000000   -0.000000   -0.000022   -0.000000   -0.000000
            -0.000000    0.958532

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957281    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000420    0.000001
            -0.000000    0.000000
 2           0.000000    0.957281   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000001    0.000420
            -0.000000   -0.000000
 3          -0.000000   -0.000000    0.957281   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000420   -0.000000
 4           0.000000   -0.000000   -0.000000    0.958621   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.958621    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.958621    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.958621    0.000000    0.000000    0.000000
             0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.958621    0.000000   -0.000000
             0.000000    0.000000
 9          -0.000420    0.000001   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.958683   -0.000000
            -0.000000   -0.000000
 10          0.000001    0.000420    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.958683
             0.000000   -0.000000
 11         -0.000000   -0.000000    0.000420   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.958683    0.000000
 12          0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.958532


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95666286 (fixed)   0.95736066 (relaxed)   0.95728110 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00103329   -0.00190338   -0.62132840
 Singles      0.01680781   -0.05865395   -0.06508179
 Pairs        0.07340080    0.00000000   -0.04950293
 Total        1.09124190   -0.06055732   -0.73591312
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83391242
 Nuclear energy                         0.00000000
 Kinetic energy                        63.18631630
 One electron energy                 -335.77186602
 Two electron energy                  143.20182162
 Virial quotient                       -3.04765423
 Correlation energy                    -0.73613199
 !MRCI STATE 1.1 Energy              -192.570044403145

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.63721049 (Davidson, fixed reference)
 Cluster corrected energies          -192.63707697 (Davidson, relaxed reference)
 Cluster corrected energies          -192.63721049 (Davidson, rotated reference)

 Cluster corrected energies          -192.63519698 (Pople, fixed reference)
 Cluster corrected energies          -192.63505754 (Pople, relaxed reference)
 Cluster corrected energies          -192.63519698 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95666287 (fixed)   0.95736067 (relaxed)   0.95728111 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00103329   -0.00190338   -0.62132848
 Singles      0.01680775   -0.05865389   -0.06508175
 Pairs        0.07340083    0.00000000   -0.04950290
 Total        1.09124187   -0.06055726   -0.73591312
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83391241
 Nuclear energy                         0.00000000
 Kinetic energy                        63.18631778
 One electron energy                 -335.77186768
 Two electron energy                  143.20182328
 Virial quotient                       -3.04765416
 Correlation energy                    -0.73613199
 !MRCI STATE 2.1 Energy              -192.570044402348

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.63721046 (Davidson, fixed reference)
 Cluster corrected energies          -192.63707695 (Davidson, relaxed reference)
 Cluster corrected energies          -192.63721046 (Davidson, rotated reference)

 Cluster corrected energies          -192.63519695 (Pople, fixed reference)
 Cluster corrected energies          -192.63505751 (Pople, relaxed reference)
 Cluster corrected energies          -192.63519695 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95666836 (fixed)   0.95736067 (relaxed)   0.95728111 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00103329   -0.00190338   -0.62132846
 Singles      0.01680777   -0.05865389   -0.06508175
 Pairs        0.07340082    0.00000000   -0.04950290
 Total        1.09124188   -0.06055727   -0.73591312
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.83391241
 Nuclear energy                         0.00000000
 Kinetic energy                        63.18631689
 One electron energy                 -335.77186693
 Two electron energy                  143.20182253
 Virial quotient                       -3.04765421
 Correlation energy                    -0.73613199
 !MRCI STATE 3.1 Energy              -192.570044400333

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.63721047 (Davidson, fixed reference)
 Cluster corrected energies          -192.63707695 (Davidson, relaxed reference)
 Cluster corrected energies          -192.63721047 (Davidson, rotated reference)

 Cluster corrected energies          -192.63519696 (Pople, fixed reference)
 Cluster corrected energies          -192.63505752 (Pople, relaxed reference)
 Cluster corrected energies          -192.63519696 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.71916147 (fixed)   0.95874698 (relaxed)   0.95862072 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176415   -0.00333221   -0.60578082
 Singles      0.01758248   -0.06157600   -0.06820758
 Pairs        0.06884749   -0.00000337   -0.04552876
 Total        1.08819412   -0.06491157   -0.71951716
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67055436
 Nuclear energy                         0.00000000
 Kinetic energy                        62.92001134
 One electron energy                 -331.49898844
 Two electron energy                  139.10891692
 Virial quotient                       -3.05769289
 Correlation energy                    -0.71951716
 !MRCI STATE 4.1 Energy              -192.390071517770

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45352870 (Davidson, fixed reference)
 Cluster corrected energies          -192.45332249 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45352870 (Davidson, rotated reference)

 Cluster corrected energies          -192.45146867 (Pople, fixed reference)
 Cluster corrected energies          -192.45125441 (Pople, relaxed reference)
 Cluster corrected energies          -192.45146867 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95862082 (fixed)   0.95874707 (relaxed)   0.95862082 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176414   -0.00333221   -0.60578410
 Singles      0.01758232   -0.06157579   -0.06820744
 Pairs        0.06884743   -0.00000000   -0.04552548
 Total        1.08819389   -0.06490800   -0.71951702
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67055436
 Nuclear energy                         0.00000000
 Kinetic energy                        62.91999607
 One electron energy                 -331.49896646
 Two electron energy                  139.10889508
 Virial quotient                       -3.05769363
 Correlation energy                    -0.71951702
 !MRCI STATE 5.1 Energy              -192.390071376358

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45352838 (Davidson, fixed reference)
 Cluster corrected energies          -192.45332219 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45352838 (Davidson, rotated reference)

 Cluster corrected energies          -192.45146835 (Pople, fixed reference)
 Cluster corrected energies          -192.45125410 (Pople, relaxed reference)
 Cluster corrected energies          -192.45146835 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95862086 (fixed)   0.95874712 (relaxed)   0.95862086 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176416   -0.00333221   -0.60578419
 Singles      0.01758221   -0.06157568   -0.06820727
 Pairs        0.06884743    0.00000000   -0.04552547
 Total        1.08819380   -0.06490789   -0.71951693
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67055436
 Nuclear energy                         0.00000000
 Kinetic energy                        62.91999713
 One electron energy                 -331.49896888
 Two electron energy                  139.10889758
 Virial quotient                       -3.05769358
 Correlation energy                    -0.71951693
 !MRCI STATE 6.1 Energy              -192.390071294107

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45352822 (Davidson, fixed reference)
 Cluster corrected energies          -192.45332202 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45352822 (Davidson, rotated reference)

 Cluster corrected energies          -192.45146819 (Pople, fixed reference)
 Cluster corrected energies          -192.45125392 (Pople, relaxed reference)
 Cluster corrected energies          -192.45146819 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95862089 (fixed)   0.95874714 (relaxed)   0.95862089 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176415   -0.00333221   -0.60578423
 Singles      0.01758216   -0.06157562   -0.06820720
 Pairs        0.06884743    0.00000000   -0.04552546
 Total        1.08819374   -0.06490783   -0.71951689
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67055436
 Nuclear energy                         0.00000000
 Kinetic energy                        62.91999640
 One electron energy                 -331.49896785
 Two electron energy                  139.10889659
 Virial quotient                       -3.05769361
 Correlation energy                    -0.71951689
 !MRCI STATE 7.1 Energy              -192.390071253912

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45352814 (Davidson, fixed reference)
 Cluster corrected energies          -192.45332194 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45352814 (Davidson, rotated reference)

 Cluster corrected energies          -192.45146810 (Pople, fixed reference)
 Cluster corrected energies          -192.45125384 (Pople, relaxed reference)
 Cluster corrected energies          -192.45146810 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.71916157 (fixed)   0.95874712 (relaxed)   0.95862085 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176416   -0.00333220   -0.60580522
 Singles      0.01758222   -0.06157574   -0.06820718
 Pairs        0.06884744    0.00002302   -0.04550447
 Total        1.08819382   -0.06488491   -0.71951687
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67055436
 Nuclear energy                         0.00000000
 Kinetic energy                        62.92001263
 One electron energy                 -331.49899087
 Two electron energy                  139.10891964
 Virial quotient                       -3.05769283
 Correlation energy                    -0.71951687
 !MRCI STATE 8.1 Energy              -192.390071228818

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45352817 (Davidson, fixed reference)
 Cluster corrected energies          -192.45332195 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45352817 (Davidson, rotated reference)

 Cluster corrected energies          -192.45146813 (Pople, fixed reference)
 Cluster corrected energies          -192.45125386 (Pople, relaxed reference)
 Cluster corrected energies          -192.45146813 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95803862 (fixed)   0.95881913 (relaxed)   0.95868270 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00174437   -0.00325098   -0.60710768
 Singles      0.01728393   -0.06123944   -0.06772627
 Pairs        0.06902512   -0.00000000   -0.04571418
 Total        1.08805342   -0.06449042   -0.72054813
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66747355
 Nuclear energy                         0.00000000
 Kinetic energy                        62.94366215
 One electron energy                 -331.65202452
 Two electron energy                  139.26422170
 Virial quotient                       -3.05650794
 Correlation energy                    -0.72032927
 !MRCI STATE 9.1 Energy              -192.387802819940

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45123028 (Davidson, fixed reference)
 Cluster corrected energies          -192.45100725 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45123028 (Davidson, rotated reference)

 Cluster corrected energies          -192.44916395 (Pople, fixed reference)
 Cluster corrected energies          -192.44893227 (Pople, relaxed reference)
 Cluster corrected energies          -192.44916395 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95803878 (fixed)   0.95881936 (relaxed)   0.95868288 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00174447   -0.00325098   -0.60710810
 Singles      0.01728345   -0.06123894   -0.06772551
 Pairs        0.06902510   -0.00000000   -0.04571415
 Total        1.08805301   -0.06448992   -0.72054776
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66747355
 Nuclear energy                         0.00000000
 Kinetic energy                        62.94366350
 One electron energy                 -331.65203536
 Two electron energy                  139.26423291
 Virial quotient                       -3.05650786
 Correlation energy                    -0.72032890
 !MRCI STATE 10.1 Energy             -192.387802449907

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45122958 (Davidson, fixed reference)
 Cluster corrected energies          -192.45100647 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45122958 (Davidson, rotated reference)

 Cluster corrected energies          -192.44916324 (Pople, fixed reference)
 Cluster corrected energies          -192.44893148 (Pople, relaxed reference)
 Cluster corrected energies          -192.44916324 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95803883 (fixed)   0.95881941 (relaxed)   0.95868293 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00174446   -0.00325098   -0.60710817
 Singles      0.01728335   -0.06123882   -0.06772536
 Pairs        0.06902508    0.00000000   -0.04571413
 Total        1.08805289   -0.06448980   -0.72054765
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66747356
 Nuclear energy                         0.00000000
 Kinetic energy                        62.94366228
 One electron energy                 -331.65203392
 Two electron energy                  139.26423158
 Virial quotient                       -3.05650792
 Correlation energy                    -0.72032879
 !MRCI STATE 11.1 Energy             -192.387802340754

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45122937 (Davidson, fixed reference)
 Cluster corrected energies          -192.45100627 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45122937 (Davidson, rotated reference)

 Cluster corrected energies          -192.44916303 (Pople, fixed reference)
 Cluster corrected energies          -192.44893128 (Pople, relaxed reference)
 Cluster corrected energies          -192.44916303 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95853220 (fixed)   0.95865682 (relaxed)   0.95853220 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176737   -0.00333613   -0.00423410
 Singles      0.01750575   -0.06154323   -0.06811875
 Pairs        0.06912200   -0.65496697   -0.64749349
 Total        1.08839512   -0.71984633   -0.71984633
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.66478822
 Nuclear energy                         0.00000000
 Kinetic energy                        62.92100210
 One electron energy                 -331.49802020
 Two electron energy                  139.11338565
 Virial quotient                       -3.05755834
 Correlation energy                    -0.71984633
 !MRCI STATE 12.1 Energy             -192.384634552375

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.44826546 (Davidson, fixed reference)
 Cluster corrected energies          -192.44806178 (Davidson, relaxed reference)
 Cluster corrected energies          -192.44826546 (Davidson, rotated reference)

 Cluster corrected energies          -192.44621020 (Pople, fixed reference)
 Cluster corrected energies          -192.44599849 (Pople, relaxed reference)
 Cluster corrected energies          -192.44621020 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1898.58       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5615.21   5608.95      3.60      0.31      2.01
 REAL TIME  *      5790.73 SEC
 DISK USED  *         1.91 GB (local),       30.68 GB (total)
 SF USED    *        18.93 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -192.63721049  AU                              
 SETTING HLSDIAG(2)     =      -192.63721046  AU                              
 SETTING HLSDIAG(3)     =      -192.63721047  AU                              
 SETTING HLSDIAG(4)     =      -192.45352870  AU                              
 SETTING HLSDIAG(5)     =      -192.45352838  AU                              
 SETTING HLSDIAG(6)     =      -192.45352822  AU                              
 SETTING HLSDIAG(7)     =      -192.45352814  AU                              
 SETTING HLSDIAG(8)     =      -192.45352817  AU                              
 SETTING HLSDIAG(9)     =      -192.45123028  AU                              
 SETTING HLSDIAG(10)    =      -192.45122958  AU                              
 SETTING HLSDIAG(11)    =      -192.45122937  AU                              
 SETTING HLSDIAG(12)    =      -192.44826546  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

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
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -191.79943665
     2      -191.79943665
     3      -191.79943665
     4      -191.79943665
     5      -191.79943665
     6      -191.76516601
     7      -191.67440010
     8      -191.67440010
     9      -191.67440010
    10      -191.65892647
    11      -191.65892647
    12      -191.65892647
    13      -191.65892647
    14      -191.65892647
    15      -191.64721684

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1275D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1297D-06

 Number of blocks in overlap matrix:  1403   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    2650
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       3940250
 Number of doubly external configurations:      15518563
 Total number of contracted configurations:     19482963
 Total number of uncontracted configurations:  162766320

 Diagonal Coupling coefficients finished.               Storage:  21829658 words, CPU-Time:     50.52 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2122965 words, CPU-time:      2.88 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -191.79943665    -0.00000000    -0.91173769  0.61D-01  0.12D+00    65.70
    1     2     2     1.00000000     0.00000000  -191.79943665     0.00000000    -0.91242639  0.62D-01  0.12D+00    65.70
    1     3     3     1.00000000     0.00000000  -191.79943665    -0.00000000    -0.91228773  0.62D-01  0.12D+00    65.70
    1     4     4     1.00000000     0.00000000  -191.79943665    -0.00000000    -0.91228593  0.62D-01  0.12D+00    65.70
    1     5     5     1.00000000     0.00000000  -191.79943665    -0.00000000    -0.91179556  0.61D-01  0.12D+00    65.70
    1     6     6     1.00000000     0.00000000  -191.76516601     0.00000000    -0.89315420  0.42D-01  0.12D+00    65.70
    1     7     7     1.00000000     0.00000000  -191.67440010     0.00000000    -0.86331881  0.40D-01  0.10D+00    65.70
    1     8     8     1.00000000     0.00000000  -191.67440010    -0.00000000    -0.86336183  0.40D-01  0.10D+00    65.70
    1     9     9     1.00000000     0.00000000  -191.67440010     0.00000000    -0.86337274  0.40D-01  0.10D+00    65.70
    1    10    10     1.00000000     0.00000000  -191.65892647     0.00000000    -0.87192392  0.44D-01  0.11D+00    65.70
    1    11    11     1.00000000     0.00000000  -191.65892647     0.00000000    -0.87242468  0.45D-01  0.11D+00    65.70
    1    12    12     1.00000000     0.00000000  -191.65892647    -0.00000000    -0.87240124  0.45D-01  0.11D+00    65.70
    1    13    13     1.00000000     0.00000000  -191.65892647     0.00000000    -0.87238443  0.45D-01  0.11D+00    65.70
    1    14    14     1.00000000     0.00000000  -191.65892647     0.00000000    -0.87192678  0.44D-01  0.11D+00    65.70
    1    15    15     1.00000000     0.00000000  -191.64721684     0.00000000    -0.87483264  0.50D-01  0.11D+00    65.70
    2     1     1     1.10869758    -0.71624795  -192.51568461    -0.71624795    -0.02681550  0.50D-02  0.21D-02   696.27
    2     2     2     1.10876261    -0.71621025  -192.51564690    -0.71621025    -0.02685463  0.50D-02  0.21D-02   696.27
    2     3     3     1.10916407    -0.71587055  -192.51530720    -0.71587055    -0.02719588  0.53D-02  0.21D-02   696.27
    2     4     4     1.10926078    -0.71577243  -192.51520908    -0.71577243    -0.02730443  0.53D-02  0.21D-02   696.27
    2     5     5     1.10927532    -0.71577156  -192.51520821    -0.71577156    -0.02730545  0.53D-02  0.21D-02   696.27
    2     6     6     1.10331376    -0.71432545  -192.47949146    -0.71432545    -0.02397717  0.50D-02  0.19D-02   696.27
    2     7     7     1.09400142    -0.70018852  -192.37458862    -0.70018852    -0.02012273  0.26D-02  0.15D-02   696.27
    2     8     8     1.09401761    -0.70017980  -192.37457990    -0.70017980    -0.02013411  0.26D-02  0.15D-02   696.27
    2     9     9     1.09401846    -0.70017630  -192.37457640    -0.70017630    -0.02013819  0.26D-02  0.15D-02   696.27
    2    10    10     1.09591361    -0.70216905  -192.36109552    -0.70216905    -0.02153702  0.34D-02  0.16D-02   696.27
    2    11    11     1.09594526    -0.70213002  -192.36105650    -0.70213002    -0.02158173  0.34D-02  0.16D-02   696.27
    2    12    12     1.09628211    -0.70191723  -192.36084370    -0.70191723    -0.02181426  0.36D-02  0.16D-02   696.27
    2    13    13     1.09629234    -0.70190834  -192.36083481    -0.70190834    -0.02182385  0.36D-02  0.16D-02   696.27
    2    14    14     1.09630109    -0.70190196  -192.36082843    -0.70190196    -0.02183227  0.36D-02  0.16D-02   696.27
    2    15    15     1.10056084    -0.70181796  -192.34903480    -0.70181796    -0.02324356  0.53D-02  0.16D-02   696.27
    3     1     1     1.09437047    -0.74129929  -192.54073595    -0.02505134    -0.00062171  0.11D-03  0.76D-04  1326.66
    3     2     2     1.09437699    -0.74129521  -192.54073186    -0.02508496    -0.00062592  0.11D-03  0.77D-04  1326.66
    3     3     3     1.09438728    -0.74128300  -192.54071965    -0.02541245    -0.00063815  0.11D-03  0.79D-04  1326.66
    3     4     4     1.09438874    -0.74128011  -192.54071676    -0.02550768    -0.00064111  0.11D-03  0.79D-04  1326.66
    3     5     5     1.09438280    -0.74128001  -192.54071666    -0.02550845    -0.00064088  0.11D-03  0.79D-04  1326.66
    3     6     6     1.09251091    -0.73706324  -192.50222924    -0.02273778    -0.00057735  0.83D-04  0.85D-04  1326.66
    3     7     7     1.08578757    -0.71899080  -192.39339090    -0.01880228    -0.00029947  0.33D-04  0.30D-04  1326.66
    3     8     8     1.08578584    -0.71899057  -192.39339067    -0.01881077    -0.00029950  0.33D-04  0.30D-04  1326.66
    3     9     9     1.08578675    -0.71899028  -192.39339038    -0.01881398    -0.00029993  0.33D-04  0.31D-04  1326.66
    3    10    10     1.08657607    -0.72221855  -192.38114503    -0.02004951    -0.00037101  0.50D-04  0.42D-04  1326.66
    3    11    11     1.08657438    -0.72221718  -192.38114366    -0.02008716    -0.00037232  0.50D-04  0.43D-04  1326.66
    3    12    12     1.08660221    -0.72220660  -192.38113307    -0.02028937    -0.00038282  0.51D-04  0.45D-04  1326.66
    3    13    13     1.08660109    -0.72220627  -192.38113274    -0.02029793    -0.00038293  0.52D-04  0.45D-04  1326.66
    3    14    14     1.08660255    -0.72220604  -192.38113252    -0.02030409    -0.00038326  0.52D-04  0.45D-04  1326.66
    3    15    15     1.08779095    -0.72368894  -192.37090578    -0.02187098    -0.00049777  0.87D-04  0.66D-04  1326.66
    4     1     1     1.09371798    -0.74196894  -192.54140559    -0.00066964    -0.00003656  0.53D-05  0.49D-05  1960.13
    4     2     2     1.09371624    -0.74196854  -192.54140519    -0.00067333    -0.00003692  0.54D-05  0.50D-05  1960.13
    4     3     3     1.09371617    -0.74196852  -192.54140517    -0.00068552    -0.00003706  0.53D-05  0.50D-05  1960.13
    4     4     4     1.09371594    -0.74196843  -192.54140508    -0.00068832    -0.00003714  0.53D-05  0.50D-05  1960.13
    4     5     5     1.09371829    -0.74196840  -192.54140506    -0.00068839    -0.00003716  0.53D-05  0.50D-05  1960.13
    4     6     6     1.09262496    -0.73767905  -192.50284505    -0.00061581    -0.00003513  0.42D-05  0.55D-05  1960.13
    4     7     7     1.08605340    -0.71930297  -192.39370307    -0.00031217    -0.00001250  0.24D-05  0.13D-05  1960.13
    4     8     8     1.08605303    -0.71930295  -192.39370305    -0.00031237    -0.00001252  0.24D-05  0.13D-05  1960.13
    4     9     9     1.08605330    -0.71930293  -192.39370303    -0.00031265    -0.00001251  0.24D-05  0.13D-05  1960.13
    4    10    10     1.08681520    -0.72261029  -192.38153677    -0.00039174    -0.00001959  0.38D-05  0.27D-05  1960.13
    4    11    11     1.08681481    -0.72261013  -192.38153660    -0.00039295    -0.00001964  0.38D-05  0.27D-05  1960.13
    4    12    12     1.08681342    -0.72261010  -192.38153657    -0.00040350    -0.00002019  0.40D-05  0.28D-05  1960.13
    4    13    13     1.08681323    -0.72261004  -192.38153652    -0.00040377    -0.00002021  0.40D-05  0.28D-05  1960.13
    4    14    14     1.08681332    -0.72260999  -192.38153646    -0.00040395    -0.00002020  0.40D-05  0.28D-05  1960.13
    4    15    15     1.08773638    -0.72422956  -192.37144639    -0.00054062    -0.00003165  0.64D-05  0.48D-05  1960.13
    5     1     1     1.09381644    -0.74201050  -192.54144715    -0.00004156    -0.00000156  0.90D-07  0.27D-06  2595.17
    5     2     2     1.09381463    -0.74201047  -192.54144712    -0.00004193    -0.00000159  0.94D-07  0.27D-06  2595.17
    5     3     3     1.09381438    -0.74201047  -192.54144712    -0.00004195    -0.00000159  0.93D-07  0.27D-06  2595.17
    5     4     4     1.09381551    -0.74201047  -192.54144712    -0.00004204    -0.00000159  0.91D-07  0.27D-06  2595.17
    5     5     5     1.09381454    -0.74201046  -192.54144711    -0.00004206    -0.00000160  0.96D-07  0.27D-06  2595.17
    5     6     6     1.09297861    -0.73771846  -192.50288447    -0.00003941    -0.00000165  0.94D-07  0.30D-06  2595.17
    5     7     7     1.08617632    -0.71931729  -192.39371739    -0.00001432    -0.00000050  0.42D-07  0.76D-07  2595.17
    5     8     8     1.08617631    -0.71931728  -192.39371738    -0.00001433    -0.00000050  0.42D-07  0.76D-07  2595.17
    5     9     9     1.08617606    -0.71931725  -192.39371735    -0.00001433    -0.00000050  0.42D-07  0.77D-07  2595.17
    5    10    10     1.08698876    -0.72263397  -192.38156044    -0.00002368    -0.00000124  0.78D-07  0.28D-06  2595.17
    5    11    11     1.08698854    -0.72263393  -192.38156040    -0.00002380    -0.00000125  0.78D-07  0.28D-06  2595.17
    5    12    12     1.08698874    -0.72263387  -192.38156034    -0.00002377    -0.00000125  0.78D-07  0.28D-06  2595.17
    5    13    13     1.08698969    -0.72263353  -192.38156000    -0.00002349    -0.00000120  0.76D-07  0.27D-06  2595.17
    5    14    14     1.08698924    -0.72263342  -192.38155989    -0.00002343    -0.00000121  0.76D-07  0.27D-06  2595.17
    5    15    15     1.08790045    -0.72426668  -192.37148352    -0.00003712    -0.00000209  0.13D-06  0.48D-06  2595.17
    6     1     1     1.09382073    -0.74201224  -192.54144889    -0.00000174    -0.00000010  0.90D-08  0.18D-07  3230.08
    6     2     2     1.09382024    -0.74201223  -192.54144889    -0.00000177    -0.00000010  0.94D-08  0.19D-07  3230.08
    6     3     3     1.09382027    -0.74201223  -192.54144889    -0.00000177    -0.00000010  0.95D-08  0.19D-07  3230.08
    6     4     4     1.09382030    -0.74201223  -192.54144889    -0.00000177    -0.00000010  0.94D-08  0.19D-07  3230.08
    6     5     5     1.09382042    -0.74201223  -192.54144888    -0.00000177    -0.00000010  0.92D-08  0.18D-07  3230.08
    6     6     6     1.09300621    -0.73772036  -192.50288637    -0.00000190    -0.00000011  0.11D-07  0.19D-07  3230.08
    6     7     7     1.08618608    -0.71931786  -192.39371796    -0.00000057    -0.00000003  0.24D-08  0.58D-08  3230.08
    6     8     8     1.08618608    -0.71931785  -192.39371795    -0.00000057    -0.00000003  0.24D-08  0.58D-08  3230.08
    6     9     9     1.08618604    -0.71931783  -192.39371792    -0.00000057    -0.00000003  0.24D-08  0.59D-08  3230.08
    6    10    10     1.08700697    -0.72263551  -192.38156199    -0.00000154    -0.00000013  0.15D-07  0.25D-07  3230.08
    6    11    11     1.08700691    -0.72263547  -192.38156195    -0.00000155    -0.00000013  0.15D-07  0.25D-07  3230.08
    6    12    12     1.08700674    -0.72263542  -192.38156189    -0.00000155    -0.00000013  0.15D-07  0.25D-07  3230.08
    6    13    13     1.08700686    -0.72263503  -192.38156151    -0.00000150    -0.00000012  0.13D-07  0.24D-07  3230.08
    6    14    14     1.08700669    -0.72263494  -192.38156141    -0.00000152    -0.00000012  0.14D-07  0.24D-07  3230.08
    6    15    15     1.08790872    -0.72426925  -192.37148609    -0.00000257    -0.00000021  0.24D-07  0.43D-07  3230.08
    7     1     1     1.09383239    -0.74201235  -192.54144901    -0.00000012    -0.00000001  0.74D-09  0.16D-08  3753.31
    7     2     2     1.09383231    -0.74201235  -192.54144901    -0.00000012    -0.00000001  0.72D-09  0.15D-08  3753.31
    7     3     3     1.09383230    -0.74201235  -192.54144900    -0.00000012    -0.00000001  0.72D-09  0.15D-08  3753.31
    7     4     4     1.09383246    -0.74201235  -192.54144900    -0.00000012    -0.00000001  0.69D-09  0.15D-08  3753.31
    7     5     5     1.09383245    -0.74201235  -192.54144900    -0.00000012    -0.00000001  0.71D-09  0.15D-08  3753.31
    7     6     6     1.09301579    -0.73772049  -192.50288650    -0.00000012    -0.00000001  0.78D-09  0.15D-08  3753.31
    7     7     7     1.08618608    -0.71931786  -192.39371796    -0.00000000    -0.00000003  0.24D-08  0.58D-08  3753.31
    7     8     8     1.08618608    -0.71931785  -192.39371795    -0.00000000    -0.00000003  0.24D-08  0.58D-08  3753.31
    7     9     9     1.08618604    -0.71931783  -192.39371792    -0.00000000    -0.00000003  0.24D-08  0.59D-08  3753.31
    7    10    10     1.08701295    -0.72263567  -192.38156214    -0.00000016    -0.00000001  0.12D-08  0.23D-08  3753.31
    7    11    11     1.08701508    -0.72263564  -192.38156211    -0.00000016    -0.00000001  0.12D-08  0.17D-08  3753.31
    7    12    12     1.08701504    -0.72263558  -192.38156206    -0.00000016    -0.00000001  0.12D-08  0.17D-08  3753.31
    7    13    13     1.08701246    -0.72263518  -192.38156166    -0.00000015    -0.00000001  0.11D-08  0.22D-08  3753.31
    7    14    14     1.08701235    -0.72263509  -192.38156156    -0.00000015    -0.00000001  0.12D-08  0.22D-08  3753.31
    7    15    15     1.08791951    -0.72426952  -192.37148636    -0.00000026    -0.00000002  0.16D-08  0.36D-08  3753.31


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.8%
 S   0.5%   7.4%
 P   0.4%  34.5%  35.1%

 Initialization:   1.5%
 Other:           19.7%

 Total CPU:     3753.3 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\0000          -0.0047616  -0.0019684   0.9423579   0.0063895  -0.0020942  -0.0000000   0.0000000  -0.0000000
                           -0.0000000  -0.0000298  -0.0000086  -0.1350248  -0.0000018   0.0000000  -0.0000000
 2222222222/0\000          -0.0246233   0.9420625   0.0018631  -0.0036672  -0.0022798  -0.0000000   0.0000000   0.0000005
                           -0.0000000  -0.0000253  -0.1350248   0.0000086   0.0000042   0.0000008  -0.0000000
 22222222220/\000           0.9420612   0.0246184   0.0048030   0.0012398  -0.0000474   0.0000000   0.0000001  -0.0000000
                            0.0000000  -0.1350246   0.0000253   0.0000298  -0.0000009  -0.0000022  -0.0000000
 2222222222002000          -0.0010590   0.0028214  -0.0053354   0.7670266  -0.0608759   0.5323796  -0.0000000  -0.0000000
                            0.0000000   0.0000004  -0.0000032   0.0000014  -0.1085735   0.0191325  -0.1151708
 222222222200/00\          -0.0001525   0.0004063  -0.0007684   0.1104596  -0.0087667   0.1180423  -0.0000000   0.0000000
                           -0.0000000  -0.0000029   0.0000227  -0.0000101   0.7587084  -0.1336992   0.5372095
 2222222222/00\00           0.0000634   0.0000573   0.0005458  -0.0476372   0.1000466   0.1180424   0.0000000  -0.0000000
                            0.0000000  -0.0000102  -0.0000039   0.0000036  -0.2635694   0.7239168   0.5371997
 2222222222200000           0.0004406   0.0003976   0.0037898  -0.3307908   0.6947202   0.5323796  -0.0000000   0.0000000
                           -0.0000000   0.0000015   0.0000006  -0.0000005   0.0377179  -0.1035951  -0.1151694
 222222222200/\00          -0.0025074   0.0959309   0.0001897  -0.0003734  -0.0002322  -0.0000000  -0.0003079  -0.6742024
                           -0.0000000   0.0001248   0.6671843  -0.0000424  -0.0000206  -0.0000039   0.0000000
 222222222200/0\0           0.0959307   0.0025069   0.0004891   0.0001262  -0.0000048  -0.0000000  -0.6742004   0.0003079
                           -0.0000754   0.6671871  -0.0001248  -0.0001470   0.0000045   0.0000110   0.0000000
 22222222220/0\00          -0.0004849  -0.0002004   0.0959609   0.0006506  -0.0002133  -0.0000000  -0.0000754   0.0000000
                            0.6742003   0.0001470   0.0000424   0.6671866   0.0000088  -0.0000001   0.0000000
 2222222222/000\0          -0.0004849  -0.0002004   0.0959609   0.0006506  -0.0002133  -0.0000000   0.0000754   0.0000000
                           -0.6742001   0.0001470   0.0000424   0.6671868   0.0000088  -0.0000001   0.0000000
 22222222220/000\           0.0959307   0.0025069   0.0004891   0.0001262  -0.0000048   0.0000000   0.6741998  -0.0003079
                            0.0000754   0.6671877  -0.0001248  -0.0001470   0.0000045   0.0000110   0.0000000
 2222222222/0000\          -0.0025074   0.0959309   0.0001897  -0.0003734  -0.0002322  -0.0000000   0.0003079   0.6741978
                            0.0000000   0.0001248   0.6671890  -0.0000424  -0.0000206  -0.0000039   0.0000000
 2222222222020000           0.0006184  -0.0032189   0.0015456  -0.4362359  -0.6338442   0.5323796   0.0000000  -0.0000000
                           -0.0000000  -0.0000019   0.0000027  -0.0000009   0.0708575   0.0844607  -0.1151701
 22222222220/00\0           0.0000891  -0.0004636   0.0002226  -0.0628224  -0.0912799   0.1180424  -0.0000000   0.0000000
                           -0.0000000   0.0000131  -0.0000188   0.0000064  -0.4951478  -0.5902098   0.5372049
 2222220222022000           0.0000359   0.0000324   0.0003091  -0.0269805   0.0566639  -0.0850087   0.0000000   0.0000000
                            0.0000000   0.0000001   0.0000001  -0.0000001   0.0036706  -0.0100819   0.0201179
 2222220222202000           0.0000504  -0.0002625   0.0001261  -0.0355810  -0.0516987  -0.0850086   0.0000000  -0.0000000
                           -0.0000000  -0.0000002   0.0000003  -0.0000001   0.0068958   0.0082201   0.0201178
 2222220222220000          -0.0000864   0.0002301  -0.0004352   0.0625615  -0.0049652  -0.0850086   0.0000000  -0.0000000
                            0.0000000   0.0000000  -0.0000003   0.0000001  -0.0105667   0.0018622   0.0201178
 2222220222/\2000           0.0003884   0.0001605  -0.0768621  -0.0005211   0.0001708   0.0000000  -0.0000000   0.0000000
                           -0.0000001   0.0000029   0.0000008   0.0131410   0.0000002  -0.0000000   0.0000000
 2222220222/2\000           0.0020084  -0.0768380  -0.0001520   0.0002991   0.0001859   0.0000000   0.0000000  -0.0000000
                            0.0000000   0.0000025   0.0131410  -0.0000008  -0.0000004  -0.0000001  -0.0000000
 22222202222/\000          -0.0768379  -0.0020080  -0.0003917  -0.0001011   0.0000039   0.0000000  -0.0000000   0.0000000
                            0.0000000   0.0131408  -0.0000025  -0.0000029   0.0000001   0.0000002   0.0000000
 222222022220/00\           0.0000156  -0.0000225   0.0000973  -0.0114098   0.0089489  -0.0020256   0.0000000  -0.0000000
                            0.0000000   0.0000002  -0.0000017   0.0000007  -0.0561416   0.0083603  -0.0417970
 222222022202/00\           0.0000177  -0.0000661   0.0000703  -0.0126786  -0.0070371  -0.0020256  -0.0000000  -0.0000000
                           -0.0000000   0.0000002  -0.0000017   0.0000007  -0.0556178   0.0113339  -0.0417970
 2222220222/02\00          -0.0000170   0.0000301  -0.0001009   0.0124333  -0.0074617  -0.0020256   0.0000000   0.0000000
                           -0.0000000   0.0000008   0.0000002  -0.0000002   0.0179932  -0.0538338  -0.0417964
 2222220222/20\00           0.0000032  -0.0000426  -0.0000181  -0.0020449  -0.0143559  -0.0020256  -0.0000000   0.0000000
                           -0.0000000   0.0000007   0.0000003  -0.0000003   0.0208311  -0.0528005  -0.0417964
 22222202220/2\00           0.0000326   0.0000135  -0.0064544  -0.0000438   0.0000143   0.0000000   0.0000056  -0.0000000
                           -0.0503426  -0.0000110  -0.0000032  -0.0498944  -0.0000007   0.0000000  -0.0000000
 222222022202/\00           0.0001686  -0.0064523  -0.0000128   0.0000251   0.0000156  -0.0000000   0.0000230   0.0503425
                            0.0000000  -0.0000093  -0.0498942   0.0000032   0.0000015   0.0000003   0.0000000
 2222220222/020\0           0.0000326   0.0000135  -0.0064544  -0.0000438   0.0000143   0.0000000  -0.0000056   0.0000000
                            0.0503425  -0.0000110  -0.0000032  -0.0498944  -0.0000007   0.0000000  -0.0000000
 222222022220/0\0          -0.0064523  -0.0001686  -0.0000329  -0.0000085   0.0000003  -0.0000000   0.0503423  -0.0000230
                            0.0000056  -0.0498942   0.0000093   0.0000110  -0.0000003  -0.0000008  -0.0000000
 22222202222/000\          -0.0064523  -0.0001686  -0.0000329  -0.0000085   0.0000003   0.0000000  -0.0503423   0.0000230
                           -0.0000056  -0.0498943   0.0000093   0.0000110  -0.0000003  -0.0000008  -0.0000000
 2222220222/2000\           0.0001686  -0.0064523  -0.0000128   0.0000251   0.0000156  -0.0000000  -0.0000230  -0.0503422
                           -0.0000000  -0.0000093  -0.0498946   0.0000032   0.0000015   0.0000003   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.001038   -0.024919   -0.004819    0.953380    0.000814    0.000000   -0.000000    0.000000    0.000000   -0.000036
             0.001520    0.000294   -0.058165   -0.000072    0.000000
 2          -0.001554    0.953381   -0.001992    0.024914   -0.004064    0.000000   -0.000000    0.000000   -0.000000   -0.000021
            -0.058165    0.000122   -0.001520    0.000265   -0.000000
 3           0.006438    0.001886    0.953680    0.004861    0.002207    0.000000   -0.000000   -0.000000   -0.000000   -0.000297
            -0.000115   -0.058184   -0.000297   -0.000290    0.000000
 4          -0.760564   -0.003711    0.006466    0.001255   -0.575382   -0.000000    0.000000   -0.000000    0.000000    0.026803
             0.000226   -0.000395   -0.000077    0.051643   -0.000000
 5           0.575392   -0.002307   -0.002119   -0.000048   -0.760588    0.000000    0.000000   -0.000000   -0.000000   -0.051645
             0.000141    0.000129    0.000003    0.026804    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.953318    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.068239
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958662   -0.000107    0.000438    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000438   -0.000000    0.958662   -0.000000
            -0.000003    0.000000    0.000000    0.000000    0.000000
 9          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000107    0.958662    0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 10         -0.000000    0.000011    0.000013    0.060253    0.000001   -0.000000    0.000000    0.000000    0.000000   -0.000012
             0.000179    0.000211    0.956398    0.000012   -0.000000
 11         -0.000001    0.060253    0.000004   -0.000011   -0.000002   -0.000000   -0.000000   -0.000000    0.000003   -0.000006
             0.956397    0.000061   -0.000179   -0.000030   -0.000000
 12          0.000001   -0.000004    0.060253   -0.000013    0.000001    0.000000    0.000000   -0.000000   -0.000000    0.000005
            -0.000061    0.956397   -0.000211    0.000012   -0.000000
 13         -0.044378   -0.000002    0.000001    0.000000   -0.040756   -0.000000   -0.000000    0.000000   -0.000000   -0.357855
            -0.000030    0.000013    0.000006   -0.886926   -0.000005
 14          0.040756   -0.000000   -0.000000    0.000001   -0.044378    0.000000   -0.000000   -0.000000    0.000000    0.886926
            -0.000006   -0.000000    0.000016   -0.357855    0.000005
 15         -0.000000    0.000000    0.000000    0.000000    0.000000    0.070407    0.000000   -0.000000   -0.000000   -0.000006
             0.000000    0.000000    0.000000   -0.000003    0.955306

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955492   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000948
            -0.000025   -0.000005   -0.000001    0.000000   -0.000000
 2          -0.000000    0.955492    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000025
             0.000948   -0.000002    0.000004    0.000002   -0.000000
 3          -0.000000    0.000000    0.955492    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000005
             0.000002    0.000948   -0.000006    0.000003   -0.000000
 4          -0.000000   -0.000000    0.000000    0.955492   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000001
            -0.000004    0.000006    0.000944   -0.000090    0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.955492   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000002   -0.000002    0.000090    0.000944   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.955756   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.001009
 7           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.958662   -0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.958662   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000
 9           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.958662    0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000
 10          0.000948    0.000025    0.000005    0.000001   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.958294
            -0.000000   -0.000000   -0.000000    0.000000    0.000000
 11         -0.000025    0.000948    0.000002   -0.000004   -0.000002   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.958293    0.000000   -0.000000   -0.000000    0.000000
 12         -0.000005   -0.000002    0.000948    0.000006   -0.000002    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.958293    0.000000   -0.000000   -0.000000
 13         -0.000001    0.000004   -0.000006    0.000944    0.000090   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.958294    0.000000    0.000000
 14          0.000000    0.000002    0.000003   -0.000090    0.000944   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.958294   -0.000000
 15         -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.001009   -0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.957897


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95338019 (fixed)   0.95557191 (relaxed)   0.95549173 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137180   -0.00261530   -0.62107177
 Singles      0.01936781   -0.06274989   -0.07040450
 Pairs        0.07459330   -0.00000000   -0.05053608
 Total        1.09533291   -0.06536520   -0.74201235
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79889849
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17238054
 One electron energy                 -335.65282518
 Two electron energy                  143.11137617
 Virial quotient                       -3.04787389
 Correlation energy                    -0.74255051
 !MRCI STATE 1.1 Energy              -192.541449006095

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.61223851 (Davidson, fixed reference)
 Cluster corrected energies          -192.61210202 (Davidson, relaxed reference)
 Cluster corrected energies          -192.61223851 (Davidson, rotated reference)

 Cluster corrected energies          -192.61118578 (Pople, fixed reference)
 Cluster corrected energies          -192.61104022 (Pople, relaxed reference)
 Cluster corrected energies          -192.61118578 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95338144 (fixed)   0.95557194 (relaxed)   0.95549176 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137180   -0.00261530   -0.62107194
 Singles      0.01936762   -0.06274975   -0.07040435
 Pairs        0.07459342    0.00000000   -0.05053606
 Total        1.09533283   -0.06536505   -0.74201235
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79889850
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17238667
 One electron energy                 -335.65283816
 Two electron energy                  143.11138915
 Virial quotient                       -3.04787359
 Correlation energy                    -0.74255051
 !MRCI STATE 2.1 Energy              -192.541449005868

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.61223845 (Davidson, fixed reference)
 Cluster corrected energies          -192.61210196 (Davidson, relaxed reference)
 Cluster corrected energies          -192.61223845 (Davidson, rotated reference)

 Cluster corrected energies          -192.61118572 (Pople, fixed reference)
 Cluster corrected energies          -192.61104016 (Pople, relaxed reference)
 Cluster corrected energies          -192.61118572 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95368040 (fixed)   0.95557195 (relaxed)   0.95549177 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137180   -0.00261530   -0.62107197
 Singles      0.01936760   -0.06274973   -0.07040434
 Pairs        0.07459341   -0.00000000   -0.05053604
 Total        1.09533282   -0.06536503   -0.74201235
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79889849
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17238717
 One electron energy                 -335.65283832
 Two electron energy                  143.11138931
 Virial quotient                       -3.04787357
 Correlation energy                    -0.74255051
 !MRCI STATE 3.1 Energy              -192.541449004704

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.61223844 (Davidson, fixed reference)
 Cluster corrected energies          -192.61210195 (Davidson, relaxed reference)
 Cluster corrected energies          -192.61223844 (Davidson, rotated reference)

 Cluster corrected energies          -192.61118571 (Pople, fixed reference)
 Cluster corrected energies          -192.61104015 (Pople, relaxed reference)
 Cluster corrected energies          -192.61118571 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.76056446 (fixed)   0.95557188 (relaxed)   0.95549170 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137179   -0.00261530   -0.62107179
 Singles      0.01936770   -0.06274985   -0.07040445
 Pairs        0.07459348    0.00000002   -0.05053611
 Total        1.09533298   -0.06536513   -0.74201235
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79889849
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17239045
 One electron energy                 -335.65283863
 Two electron energy                  143.11138962
 Virial quotient                       -3.04787341
 Correlation energy                    -0.74255052
 !MRCI STATE 4.1 Energy              -192.541449003978

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.61223855 (Davidson, fixed reference)
 Cluster corrected energies          -192.61210207 (Davidson, relaxed reference)
 Cluster corrected energies          -192.61223855 (Davidson, rotated reference)

 Cluster corrected energies          -192.61118583 (Pople, fixed reference)
 Cluster corrected energies          -192.61104028 (Pople, relaxed reference)
 Cluster corrected energies          -192.61118583 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.76058755 (fixed)   0.95557189 (relaxed)   0.95549171 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137179   -0.00261530   -0.62107179
 Singles      0.01936772   -0.06274984   -0.07040445
 Pairs        0.07459344    0.00000000   -0.05053611
 Total        1.09533296   -0.06536514   -0.74201235
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.79889849
 Nuclear energy                         0.00000000
 Kinetic energy                        63.17239048
 One electron energy                 -335.65283869
 Two electron energy                  143.11138969
 Virial quotient                       -3.04787341
 Correlation energy                    -0.74255051
 !MRCI STATE 5.1 Energy              -192.541449002001

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.61223854 (Davidson, fixed reference)
 Cluster corrected energies          -192.61210205 (Davidson, relaxed reference)
 Cluster corrected energies          -192.61223854 (Davidson, rotated reference)

 Cluster corrected energies          -192.61118582 (Pople, fixed reference)
 Cluster corrected energies          -192.61104026 (Pople, relaxed reference)
 Cluster corrected energies          -192.61118582 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95331758 (fixed)   0.95599170 (relaxed)   0.95575625 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00156531   -0.00234311   -0.68705744
 Singles      0.01329940   -0.04980893   -0.05445836
 Pairs        0.07986199    0.06307381    0.00379532
 Total        1.09472670    0.01092177   -0.73772049
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.76454688
 Nuclear energy                         0.00000000
 Kinetic energy                        63.14726308
 One electron energy                 -335.37212857
 Two electron energy                  142.86924207
 Virial quotient                       -3.04847553
 Correlation energy                    -0.73833962
 !MRCI STATE 6.1 Energy              -192.502886497204

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.57282697 (Davidson, fixed reference)
 Cluster corrected energies          -192.57242888 (Davidson, relaxed reference)
 Cluster corrected energies          -192.57282697 (Davidson, rotated reference)

 Cluster corrected energies          -192.57175066 (Pople, fixed reference)
 Cluster corrected energies          -192.57132670 (Pople, relaxed reference)
 Cluster corrected energies          -192.57175066 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95866212 (fixed)   0.95878951 (relaxed)   0.95866223 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176195   -0.00332943   -0.60563323
 Singles      0.01765554   -0.06159582   -0.06828544
 Pairs        0.06868240    0.00000000   -0.04539919
 Total        1.08809989   -0.06492525   -0.71931786
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67440010
 Nuclear energy                         0.00000000
 Kinetic energy                        62.91934740
 One electron energy                 -331.50031229
 Two electron energy                  139.10659434
 Virial quotient                       -3.05778311
 Correlation energy                    -0.71931786
 !MRCI STATE 7.1 Energy              -192.393717958652

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45708978 (Davidson, fixed reference)
 Cluster corrected energies          -192.45688200 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45708978 (Davidson, rotated reference)

 Cluster corrected energies          -192.45575779 (Pople, fixed reference)
 Cluster corrected energies          -192.45553895 (Pople, relaxed reference)
 Cluster corrected energies          -192.45575779 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95866213 (fixed)   0.95878951 (relaxed)   0.95866223 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176195   -0.00332943   -0.60563324
 Singles      0.01765552   -0.06159580   -0.06828544
 Pairs        0.06868241   -0.00000000   -0.04539918
 Total        1.08809988   -0.06492522   -0.71931785
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67440010
 Nuclear energy                         0.00000000
 Kinetic energy                        62.91934539
 One electron energy                 -331.50030972
 Two electron energy                  139.10659177
 Virial quotient                       -3.05778321
 Correlation energy                    -0.71931785
 !MRCI STATE 8.1 Energy              -192.393717947253

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45708977 (Davidson, fixed reference)
 Cluster corrected energies          -192.45688198 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45708977 (Davidson, rotated reference)

 Cluster corrected energies          -192.45575777 (Pople, fixed reference)
 Cluster corrected energies          -192.45553894 (Pople, relaxed reference)
 Cluster corrected energies          -192.45575777 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95866225 (fixed)   0.95878952 (relaxed)   0.95866225 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176195   -0.00332942   -0.60563327
 Singles      0.01765551   -0.06159576   -0.06828540
 Pairs        0.06868239   -0.00000000   -0.04539915
 Total        1.08809984   -0.06492518   -0.71931783
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.67440010
 Nuclear energy                         0.00000000
 Kinetic energy                        62.91934491
 One electron energy                 -331.50030868
 Two electron energy                  139.10659076
 Virial quotient                       -3.05778323
 Correlation energy                    -0.71931783
 !MRCI STATE 9.1 Energy              -192.393717923070

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.45708971 (Davidson, fixed reference)
 Cluster corrected energies          -192.45688193 (Davidson, relaxed reference)
 Cluster corrected energies          -192.45708971 (Davidson, rotated reference)

 Cluster corrected energies          -192.45575771 (Pople, fixed reference)
 Cluster corrected energies          -192.45553888 (Pople, relaxed reference)
 Cluster corrected energies          -192.45575771 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95639833 (fixed)   0.95842751 (relaxed)   0.95829399 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176938   -0.00331553   -0.60816445
 Singles      0.01758406   -0.06166195   -0.06828986
 Pairs        0.06958285    0.00000000   -0.04618136
 Total        1.08893629   -0.06497748   -0.72263567
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65946464
 Nuclear energy                         0.00000000
 Kinetic energy                        62.95713533
 One electron energy                 -331.74281818
 Two electron energy                  139.36125604
 Virial quotient                       -3.05575470
 Correlation energy                    -0.72209751
 !MRCI STATE 10.1 Energy             -192.381562143298

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.44578282 (Davidson, fixed reference)
 Cluster corrected energies          -192.44556374 (Davidson, relaxed reference)
 Cluster corrected energies          -192.44578282 (Davidson, rotated reference)

 Cluster corrected energies          -192.44447842 (Pople, fixed reference)
 Cluster corrected energies          -192.44424736 (Pople, relaxed reference)
 Cluster corrected energies          -192.44447842 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.95639743 (fixed)   0.95842657 (relaxed)   0.95829304 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176939   -0.00331555   -0.60816482
 Singles      0.01758332   -0.06166021   -0.06828842
 Pairs        0.06958572    0.00000000   -0.04618239
 Total        1.08893844   -0.06497576   -0.72263564
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65946463
 Nuclear energy                         0.00000000
 Kinetic energy                        62.95705251
 One electron energy                 -331.74281732
 Two electron energy                  139.36125521
 Virial quotient                       -3.05575872
 Correlation energy                    -0.72209748
 !MRCI STATE 11.1 Energy             -192.381562109661

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.44578433 (Davidson, fixed reference)
 Cluster corrected energies          -192.44556526 (Davidson, relaxed reference)
 Cluster corrected energies          -192.44578433 (Davidson, rotated reference)

 Cluster corrected energies          -192.44448002 (Pople, fixed reference)
 Cluster corrected energies          -192.44424896 (Pople, relaxed reference)
 Cluster corrected energies          -192.44448002 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95639743 (fixed)   0.95842659 (relaxed)   0.95829306 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176941   -0.00331555   -0.60816481
 Singles      0.01758329   -0.06166020   -0.06828833
 Pairs        0.06958571    0.00000000   -0.04618245
 Total        1.08893841   -0.06497574   -0.72263558
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65946463
 Nuclear energy                         0.00000000
 Kinetic energy                        62.95705330
 One electron energy                 -331.74282013
 Two electron energy                  139.36125807
 Virial quotient                       -3.05575868
 Correlation energy                    -0.72209742
 !MRCI STATE 12.1 Energy             -192.381562056483

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.44578425 (Davidson, fixed reference)
 Cluster corrected energies          -192.44556517 (Davidson, relaxed reference)
 Cluster corrected energies          -192.44578425 (Davidson, rotated reference)

 Cluster corrected energies          -192.44447994 (Pople, fixed reference)
 Cluster corrected energies          -192.44424887 (Pople, relaxed reference)
 Cluster corrected energies          -192.44447994 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.88692618 (fixed)   0.95842773 (relaxed)   0.95829418 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176943   -0.00331553   -0.60816812
 Singles      0.01758358   -0.06166141   -0.06828907
 Pairs        0.06958284    0.00000364   -0.04617800
 Total        1.08893585   -0.06497330   -0.72263518
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65946464
 Nuclear energy                         0.00000000
 Kinetic energy                        62.95712403
 One electron energy                 -331.74281710
 Two electron energy                  139.36125544
 Virial quotient                       -3.05575524
 Correlation energy                    -0.72209702
 !MRCI STATE 13.1 Energy             -192.381561658242

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.44578197 (Davidson, fixed reference)
 Cluster corrected energies          -192.44556285 (Davidson, relaxed reference)
 Cluster corrected energies          -192.44578197 (Davidson, rotated reference)

 Cluster corrected energies          -192.44447756 (Pople, fixed reference)
 Cluster corrected energies          -192.44424646 (Pople, relaxed reference)
 Cluster corrected energies          -192.44447756 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.88692621 (fixed)   0.95842778 (relaxed)   0.95829422 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176946   -0.00331553   -0.60816189
 Singles      0.01758354   -0.06166134   -0.06828892
 Pairs        0.06958278   -0.00000318   -0.04618428
 Total        1.08893577   -0.06498006   -0.72263509
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.65946464
 Nuclear energy                         0.00000000
 Kinetic energy                        62.95712469
 One electron energy                 -331.74282191
 Two electron energy                  139.36126034
 Virial quotient                       -3.05575521
 Correlation energy                    -0.72209692
 !MRCI STATE 14.1 Energy             -192.381561561972

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.44578181 (Davidson, fixed reference)
 Cluster corrected energies          -192.44556267 (Davidson, relaxed reference)
 Cluster corrected energies          -192.44578181 (Davidson, rotated reference)

 Cluster corrected energies          -192.44447739 (Pople, fixed reference)
 Cluster corrected energies          -192.44424627 (Pople, relaxed reference)
 Cluster corrected energies          -192.44447739 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95530621 (fixed)   0.95805039 (relaxed)   0.95789669 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00176509   -0.00320300   -0.00533967
 Singles      0.01708075   -0.05969842   -0.06612359
 Pairs        0.07099395   -0.66003011   -0.65280626
 Total        1.08983979   -0.72293154   -0.72426952
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -191.64783597
 Nuclear energy                         0.00000000
 Kinetic energy                        62.98246945
 One electron energy                 -331.92656884
 Two electron energy                  139.55508248
 Virial quotient                       -3.05436557
 Correlation energy                    -0.72365038
 !MRCI STATE 15.1 Energy             -192.371486355612

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -192.43649895 (Davidson, fixed reference)
 Cluster corrected energies          -192.43624591 (Davidson, relaxed reference)
 Cluster corrected energies          -192.43649895 (Davidson, rotated reference)

 Cluster corrected energies          -192.43522822 (Pople, fixed reference)
 Cluster corrected energies          -192.43496094 (Pople, relaxed reference)
 Cluster corrected energies          -192.43522822 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     4156.63       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10790.92   5175.69   5608.95      3.60      0.31      2.01
 REAL TIME  *     11178.19 SEC
 DISK USED  *         4.11 GB (local),       65.96 GB (total)
 SF USED    *        22.21 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -192.61223851  AU                              
 SETTING HLSDIAG(14)    =      -192.61223845  AU                              
 SETTING HLSDIAG(15)    =      -192.61223844  AU                              
 SETTING HLSDIAG(16)    =      -192.61223855  AU                              
 SETTING HLSDIAG(17)    =      -192.61223854  AU                              
 SETTING HLSDIAG(18)    =      -192.57282697  AU                              
 SETTING HLSDIAG(19)    =      -192.45708978  AU                              
 SETTING HLSDIAG(20)    =      -192.45708977  AU                              
 SETTING HLSDIAG(21)    =      -192.45708971  AU                              
 SETTING HLSDIAG(22)    =      -192.44578282  AU                              
 SETTING HLSDIAG(23)    =      -192.44578433  AU                              
 SETTING HLSDIAG(24)    =      -192.44578425  AU                              
 SETTING HLSDIAG(25)    =      -192.44578197  AU                              
 SETTING HLSDIAG(26)    =      -192.44578181  AU                              
 SETTING HLSDIAG(27)    =      -192.43649895  AU                              


         HLSDIAG
    -192.6372105
    -192.6372105
    -192.6372105
    -192.4535287
    -192.4535284
    -192.4535282
    -192.4535281
    -192.4535282
    -192.4512303
    -192.4512296
    -192.4512294
    -192.4482655
    -192.6122385
    -192.6122384
    -192.6122384
    -192.6122386
    -192.6122385
    -192.5728270
    -192.4570898
    -192.4570898
    -192.4570897
    -192.4457828
    -192.4457843
    -192.4457843
    -192.4457820
    -192.4457818
    -192.4364990
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -192.570044   -192.570044   -192.570044   -192.390072   -192.390071   -192.390071   -192.390071   -192.390071
                      -192.387803   -192.387802   -192.387802   -192.384635
 Replaced energies:   -192.637210   -192.637210   -192.637210   -192.453529   -192.453528   -192.453528   -192.453528   -192.453528
                      -192.451230   -192.451230   -192.451229   -192.448265

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies:   -192.541449   -192.541449   -192.541449   -192.541449   -192.541449   -192.502886   -192.393718   -192.393718
                      -192.393718   -192.381562   -192.381562   -192.381562   -192.381562   -192.381562   -192.371486
 Replaced energies:   -192.612239   -192.612238   -192.612238   -192.612239   -192.612239   -192.572827   -192.457090   -192.457090
                      -192.457090   -192.445783   -192.445784   -192.445784   -192.445782   -192.445782   -192.436499



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -192.63721049

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -11.94       0.31       0.00      -0.00      -2.74    -931.02      -0.00       0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00   -3520.80      -0.00       0.00       0.00    -806.26       3.16      -0.01       0.07

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           11.94    3520.80      -0.00       0.01       0.00     806.26       0.00      -0.00       0.00    -708.22

    4   4.1  1.0  1.0       0.00       0.00       0.00   40313.49       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.31       0.00      -0.01       0.00   -4150.20       0.00      -0.03       0.00       0.70      -0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   40313.56       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    4150.20      -0.00      -0.06       0.00       1.37       0.00       0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   40313.60       0.00       0.00       0.00       0.00
                            0.00      -0.00    -806.26      -0.00       0.06      -0.00   -2075.00       0.01       0.02      -0.17

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   40313.62       0.00       0.00       0.00
                            2.74     806.26      -0.00       0.03      -0.00    2075.00      -0.00       0.00      -0.01    1792.27

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40313.61       0.00       0.00
                          931.02      -3.16       0.00      -0.00      -1.37      -0.01      -0.00      -0.00   -2069.67      -0.01

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40817.94       0.00
                            0.00       0.01      -0.00      -0.70      -0.00      -0.02       0.01    2069.67      -0.00      -0.02

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40818.09
                           -0.00      -0.07     708.22       0.00      -0.00       0.17   -1792.27       0.01       0.02       0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.40    -708.20      -0.07       0.02       0.00    1792.32       0.17       0.02      -0.00    2162.26

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1306.18       4.43      -0.00      -0.00       0.02      -0.00       0.00      -0.00    2939.63       0.00

   13   1.1  1.0  0.0       0.00      -0.00   -2489.58      -1.93       0.00       0.00     570.09      -1.12      -0.00       0.05
                           -0.00    2489.59      -0.00      -0.01      -1.93    -570.09       0.00      -0.00      -1.70    -500.80

   14   2.1  1.0  0.0       0.00      -0.00       8.44    -570.00      -0.00       0.01      -1.93    -329.30       0.00      -0.00
                        -2489.59       0.00       0.00       0.00    -570.10       1.93      -0.00      -0.00    -500.79       1.70

   15   3.1  1.0  0.0    2489.58      -8.44       0.00       0.00    -570.10       0.00       0.00       0.00     500.80       0.00
                            0.00      -0.00      -0.00     570.21       0.00      -0.01      -0.00    -328.93       0.00       0.00

   16   4.1  1.0  0.0       1.93     570.00      -0.00      -0.00      -0.00   -1468.18      -0.00      -0.03      -0.00    1267.09
                            0.01      -0.00    -570.21      -0.00       0.02       0.00    1466.52      -0.01      -0.01      -0.12

   17   5.1  1.0  0.0      -0.00       0.00     570.10       0.00      -0.00      -0.00   -1467.35       0.01      -0.01       0.12
                            1.93     570.10      -0.00      -0.02      -0.00   -1467.34      -0.00       0.00      -0.00    1267.32

   18   6.1  1.0  0.0      -0.00      -0.01      -0.00    1468.18       0.00      -0.00      -0.02   -2540.97       0.00      -0.02
                          570.09      -1.93       0.01      -0.00    1467.34      -0.00      -0.02       0.00   -1267.38      -0.00

   19   7.1  1.0  0.0    -570.09       1.93      -0.00       0.00    1467.35       0.02       0.00       0.00    1267.40       0.00
                           -0.00       0.00       0.00   -1466.52       0.00       0.02       0.00   -2541.93      -0.00      -0.00

   20   8.1  1.0  0.0       1.12     329.30      -0.00       0.03      -0.01    2540.97      -0.00      -0.00      -0.01     732.10
                            0.00       0.00     328.93       0.01      -0.00      -0.00    2541.93      -0.00      -0.01       0.07

   21   9.1  1.0  0.0       0.00      -0.00    -500.80       0.00       0.01      -0.00   -1267.40       0.01       0.00       0.14
                            1.70     500.79      -0.00       0.01       0.00    1267.38       0.00       0.01      -0.00   -1528.85

   22  10.1  1.0  0.0      -0.05       0.00      -0.00   -1267.09      -0.12       0.02      -0.00    -732.10      -0.14       0.00
                          500.80      -1.70      -0.00       0.12   -1267.32       0.00       0.00      -0.07    1528.85       0.00

   23  11.1  1.0  0.0    -500.81       1.70      -0.00       0.12   -1267.30       0.00      -0.01       0.07   -1528.84      -0.00
                           -0.05       0.00       0.00    1267.53       0.12      -0.01      -0.00    -731.29      -0.14      -0.01

   24  12.1  1.0  0.0       3.13     923.64      -0.00       0.00      -0.00       0.05       0.00       0.00      -0.00    2078.70
                           -0.00       0.00     923.65       0.00       0.00      -0.00       0.02      -0.00      -0.02       0.19

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   1.1  0.0  0.0     -64.31       1.85      12.44    -623.34      16.28       1.58      -3.14    1078.82     -11.33      -0.29
                        -2460.50      20.78       2.28     -16.27    -622.98      -3.15       1.40     -28.21    -433.32      -2.19

   38   2.1  0.0  0.0    2460.55      -6.87       5.14     -16.29    -622.98      -5.65      -1.30      28.19     433.33      -0.26
                          -64.28       5.36     -11.89     622.62     -16.28      -1.31      -2.26    1079.24     -11.32      -0.91

   39   3.1  0.0  0.0       4.91      13.98   -2461.33      -3.18      -1.23       6.44     623.17       5.50       0.85      -2.42
                          -20.89   -2461.27       5.71       1.24      -3.18     623.17       8.53       2.13      -2.21     433.47

   40   4.1  0.0  0.0     -13.72   -1221.86     -16.69      -0.84       2.43   -1125.31       4.23       1.42      -1.69     215.16
                           -3.29     -16.68   -1611.40      -2.42      -0.82       4.23   -1026.70      -4.20      -0.57       2.97

   41   5.1  0.0  0.0       2.74    2566.22       5.47       0.02       1.51    -535.84      -1.38      -0.05      -1.05    -451.93
                            0.14       5.47   -2341.35      -1.51       0.03      -1.38     706.63      -2.62       0.02      -0.93

   42   6.1  0.0  0.0     -13.53   -3989.89       0.00      -0.00      -0.00      -0.01      -0.00       0.00      -0.00     531.47
                           -0.00      -0.00   -3989.91       0.00       0.00      -0.00      -0.02       0.00      -0.00       0.05

   43   7.1  0.0  0.0      -0.26       0.00       0.06    1465.03       0.67      -0.02      -0.16     846.39       0.58       0.00
                          574.30      -2.01       0.00      -0.67    1465.30       0.16      -0.00       0.39   -1263.42      -0.14

   44   8.1  0.0  0.0    -574.30       1.95      -0.00      -0.67    1465.30       0.00       0.00      -0.39    1263.42       0.00
                           -0.26       0.00      -0.00   -1465.57      -0.67       0.02       0.01     845.42       0.58       0.00

   45   9.1  0.0  0.0      -0.00      -0.00    -574.30       0.16       0.00       0.00    1465.34       0.09       0.01      -0.12
                            2.01     574.29      -0.00      -0.02       0.16   -1465.33      -0.00       0.00      -0.14    1263.39

   46  10.1  0.0  0.0      -0.11       0.01       0.13   -1249.94      -0.23       0.05       0.29    2163.31      -0.29      -0.02
                          585.67      -1.86      -0.01       0.23   -1249.23       0.28      -0.01       0.40    1547.29      -0.34

   47  11.1  0.0  0.0    -585.72       1.99       0.04       0.23   -1249.22      -0.08       0.08      -0.40   -1547.30      -0.01
                           -0.11       0.04       0.02    1248.50       0.23       0.06      -0.04    2164.14      -0.29      -0.10

   48  12.1  0.0  0.0       0.04      -0.00     585.72       0.28       0.08       0.03    1249.28      -0.48       0.11      -0.14
                            1.86     585.71      -0.01      -0.06       0.28    1249.26       0.03      -0.14      -0.34   -1547.29

   49  13.1  0.0  0.0       0.80     231.36       0.01      -0.04       0.04   -2347.68       0.02       0.01       0.05    -611.28
                            0.00       0.01     434.65      -0.04      -0.01       0.02   -1914.06      -0.06       0.02      -0.13

   50  14.1  0.0  0.0      -2.15    -635.47      -0.00      -0.03       0.01    -854.80      -0.00       0.04       0.01    1678.82
                            0.01      -0.00     518.12      -0.01      -0.02      -0.00    1605.83      -0.02       0.04      -0.13

   51  15.1  0.0  0.0       4.18    1233.94      -0.00       0.00      -0.00       0.04       0.00      -0.00       0.00   -2577.80
                            0.00       0.00    1233.94       0.00      -0.00       0.00       0.06       0.00       0.02      -0.24


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00    2489.58       1.93      -0.00      -0.00    -570.09       1.12
                            2.40    1306.18       0.00    2489.59      -0.00      -0.01      -1.93    -570.09       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -8.44     570.00       0.00      -0.01       1.93     329.30
                          708.20      -4.43   -2489.59      -0.00       0.00       0.00    -570.10       1.93      -0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00   -2489.58       8.44       0.00      -0.00     570.10      -0.00      -0.00      -0.00
                            0.07       0.00       0.00      -0.00       0.00     570.21       0.00      -0.01      -0.00    -328.93

    4   4.1  1.0  1.0       0.00       0.00      -1.93    -570.00       0.00      -0.00       0.00    1468.18       0.00       0.03
                           -0.02       0.00       0.01      -0.00    -570.21       0.00       0.02       0.00    1466.52      -0.01

    5   5.1  1.0  1.0       0.00       0.00       0.00      -0.00    -570.10      -0.00      -0.00       0.00    1467.35      -0.01
                           -0.00      -0.02       1.93     570.10      -0.00      -0.02       0.00   -1467.34      -0.00       0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.01       0.00   -1468.18      -0.00      -0.00       0.02    2540.97
                        -1792.32       0.00     570.09      -1.93       0.01      -0.00    1467.34       0.00      -0.02       0.00

    7   7.1  1.0  1.0       0.00       0.00     570.09      -1.93       0.00      -0.00   -1467.35      -0.02       0.00      -0.00
                           -0.17      -0.00      -0.00       0.00       0.00   -1466.52       0.00       0.02      -0.00   -2541.93

    8   8.1  1.0  1.0       0.00       0.00      -1.12    -329.30       0.00      -0.03       0.01   -2540.97       0.00      -0.00
                           -0.02       0.00       0.00       0.00     328.93       0.01      -0.00      -0.00    2541.93       0.00

    9   9.1  1.0  1.0       0.00       0.00      -0.00       0.00     500.80      -0.00      -0.01       0.00    1267.40      -0.01
                            0.00   -2939.63       1.70     500.79      -0.00       0.01       0.00    1267.38       0.00       0.01

   10  10.1  1.0  1.0       0.00       0.00       0.05      -0.00       0.00    1267.09       0.12      -0.02       0.00     732.10
                        -2162.26      -0.00     500.80      -1.70      -0.00       0.12   -1267.32       0.00       0.00      -0.07

   11  11.1  1.0  1.0   40818.14       0.00     500.81      -1.70       0.00      -0.12    1267.30      -0.00       0.01      -0.07
                            0.00      -0.03      -0.05       0.00       0.00    1267.53       0.12      -0.01      -0.00    -731.29

   12  12.1  1.0  1.0       0.00   41468.64      -3.13    -923.64       0.00      -0.00       0.00      -0.05      -0.00      -0.00
                            0.03      -0.00      -0.00       0.00     923.65       0.00       0.00      -0.00       0.02      -0.00

   13   1.1  1.0  0.0     500.81      -3.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0      -1.70    -923.64       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -923.65      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0      -0.12      -0.00       0.00       0.00       0.00   40313.49       0.00       0.00       0.00       0.00
                        -1267.53      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0    1267.30       0.00       0.00       0.00       0.00       0.00   40313.56       0.00       0.00       0.00
                           -0.12      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0      -0.00      -0.05       0.00       0.00       0.00       0.00       0.00   40313.60       0.00       0.00
                            0.01       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   40313.62       0.00
                            0.00      -0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0      -0.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   40313.61
                          731.29       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0    1528.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.14       0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0       0.00   -2078.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.19      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0       0.00       0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -2078.72      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0      -0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2078.72      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00   -2489.58      -1.93       0.00       0.00     570.09      -1.12
                           -0.00      -0.00      -0.00    2489.59      -0.00      -0.01      -1.93    -570.09       0.00      -0.00

   26   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       8.44    -570.00      -0.00       0.01      -1.93    -329.30
                           -0.00      -0.00   -2489.59       0.00       0.00       0.00    -570.10       1.93      -0.00      -0.00

   27   3.1  1.0 -1.0       0.00       0.00    2489.58      -8.44       0.00       0.00    -570.10       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     570.21       0.00      -0.01      -0.00    -328.93

   28   4.1  1.0 -1.0       0.00       0.00       1.93     570.00      -0.00      -0.00      -0.00   -1468.18      -0.00      -0.03
                           -0.00      -0.00       0.01      -0.00    -570.21      -0.00       0.02       0.00    1466.52      -0.01

   29   5.1  1.0 -1.0       0.00       0.00      -0.00       0.00     570.10       0.00      -0.00      -0.00   -1467.35       0.01
                           -0.00      -0.00       1.93     570.10      -0.00      -0.02      -0.00   -1467.34      -0.00       0.00

   30   6.1  1.0 -1.0       0.00       0.00      -0.00      -0.01      -0.00    1468.18       0.00      -0.00      -0.02   -2540.97
                           -0.00      -0.00     570.09      -1.93       0.01      -0.00    1467.34      -0.00      -0.02       0.00

   31   7.1  1.0 -1.0       0.00       0.00    -570.09       1.93      -0.00       0.00    1467.35       0.02       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00   -1466.52       0.00       0.02       0.00   -2541.93

   32   8.1  1.0 -1.0       0.00       0.00       1.12     329.30      -0.00       0.03      -0.01    2540.97      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00     328.93       0.01      -0.00      -0.00    2541.93      -0.00

   33   9.1  1.0 -1.0       0.00       0.00       0.00      -0.00    -500.80       0.00       0.01      -0.00   -1267.40       0.01
                           -0.00      -0.00       1.70     500.79      -0.00       0.01       0.00    1267.38       0.00       0.01

   34  10.1  1.0 -1.0       0.00       0.00      -0.05       0.00      -0.00   -1267.09      -0.12       0.02      -0.00    -732.10
                           -0.00      -0.00     500.80      -1.70      -0.00       0.12   -1267.32       0.00       0.00      -0.07

   35  11.1  1.0 -1.0       0.00       0.00    -500.81       1.70      -0.00       0.12   -1267.30       0.00      -0.01       0.07
                           -0.00      -0.00      -0.05       0.00       0.00    1267.53       0.12      -0.01      -0.00    -731.29

   36  12.1  1.0 -1.0       0.00       0.00       3.13     923.64      -0.00       0.00      -0.00       0.05       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     923.65       0.00       0.00      -0.00       0.02      -0.00

   37   1.1  0.0  0.0      -2.19       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.41      -0.00      -5.84     -90.93   -3479.74      -8.91      -0.24     -23.03    -881.05       0.00

   38   2.1  0.0  0.0      -0.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.09       0.03      26.53    3479.68     -90.93      -3.67       4.78     881.04     -23.02      -0.00

   39   3.1  0.0  0.0     433.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.05       0.00     -27.85       6.98     -17.74    1762.61       2.97       1.72      -4.49       0.58

   40   4.1  0.0  0.0       2.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          283.74      -0.00    4006.84     -27.13      -4.58      11.95     139.46      -3.43      -1.16       0.00

   41   5.1  0.0  0.0      -0.92      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          412.34      -0.00    -318.04      -7.34       0.18      -3.92    1757.14      -2.13       0.04      -0.00

   42   6.1  0.0  0.0      -0.05      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          531.47      -0.00   -5642.56      19.13      -0.00      -0.00       0.00       0.00      -0.00       0.00

   43   7.1  0.0  0.0       0.14    2398.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       1.10       0.00       0.37    -812.18       0.00       0.00       0.95   -2072.19      -0.26

   44   8.1  0.0  0.0       0.01      -1.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    2398.49       2.75     812.18       0.37       0.03       0.00    2072.20       0.95       0.00

   45   9.1  0.0  0.0   -1263.38       0.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.12       0.00       0.00       0.00      -0.09      -0.81      -0.00       0.00      -0.22    2392.95

   46  10.1  0.0  0.0      -0.34       0.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04       0.00       0.00      -0.15     828.27       0.78      -0.06       0.33   -1766.61       0.01

   47  11.1  0.0  0.0      -0.11      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04       0.08      -2.84    -828.32      -0.15       0.25       0.04    1766.64       0.33       0.00

   48  12.1  0.0  0.0   -1547.27      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.16       0.00       0.01       0.05      -0.18    3533.34      -0.01      -0.16       0.39       1.17

   49  13.1  0.0  0.0       0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1148.35      -0.00    -941.91       3.22       0.01       0.05     613.21      -0.05      -0.01       0.00

   50  14.1  0.0  0.0      -0.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1368.74       0.00     165.99      -0.56       0.01      -0.00    3479.73      -0.01      -0.03      -0.00

   51  15.1  0.0  0.0       0.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2577.80      -0.00    1745.04      -5.92      -0.00       0.00      -0.02       0.00       0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       0.00      -0.05    -500.81       3.13       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.70    -500.80       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0      -0.00       0.00       1.70     923.64       0.00       0.00       0.00       0.00       0.00       0.00
                         -500.79       1.70      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0    -500.80      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -923.65       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0       0.00   -1267.09       0.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.12   -1267.53      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0       0.01      -0.12   -1267.30      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1267.32      -0.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0      -0.00       0.02       0.00       0.05       0.00       0.00       0.00       0.00       0.00       0.00
                        -1267.38      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0   -1267.40      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0       0.01    -732.10       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.07     731.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0       0.00      -0.14   -1528.84      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1528.85       0.14       0.02       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0       0.14       0.00      -0.00    2078.70       0.00       0.00       0.00       0.00       0.00       0.00
                         1528.85      -0.00       0.01      -0.19       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0    1528.84       0.00       0.00      -0.19       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.14      -0.01       0.00   -2078.72       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0       0.00   -2078.70       0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.19    2078.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00    2489.58       1.93      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00    2489.59      -0.00      -0.01      -1.93    -570.09

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -8.44     570.00       0.00      -0.01
                            0.00       0.00       0.00       0.00   -2489.59      -0.00       0.00       0.00    -570.10       1.93

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00   -2489.58       8.44       0.00      -0.00     570.10      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00     570.21       0.00      -0.01

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00      -1.93    -570.00       0.00      -0.00       0.00    1468.18
                            0.00       0.00       0.00       0.00       0.01      -0.00    -570.21       0.00       0.02       0.00

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00    -570.10      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       1.93     570.10      -0.00      -0.02       0.00   -1467.34

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.01       0.00   -1468.18      -0.00      -0.00
                            0.00       0.00       0.00       0.00     570.09      -1.93       0.01      -0.00    1467.34       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00     570.09      -1.93       0.00      -0.00   -1467.35      -0.02
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00   -1466.52       0.00       0.02

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -1.12    -329.30       0.00      -0.03       0.01   -2540.97
                            0.00       0.00       0.00       0.00       0.00       0.00     328.93       0.01      -0.00      -0.00

   21   9.1  1.0  0.0   40817.94       0.00       0.00       0.00      -0.00       0.00     500.80      -0.00      -0.01       0.00
                            0.00       0.00       0.00       0.00       1.70     500.79      -0.00       0.01       0.00    1267.38

   22  10.1  1.0  0.0       0.00   40818.09       0.00       0.00       0.05      -0.00       0.00    1267.09       0.12      -0.02
                           -0.00       0.00       0.00       0.00     500.80      -1.70      -0.00       0.12   -1267.32       0.00

   23  11.1  1.0  0.0       0.00       0.00   40818.14       0.00     500.81      -1.70       0.00      -0.12    1267.30      -0.00
                           -0.00      -0.00       0.00       0.00      -0.05       0.00       0.00    1267.53       0.12      -0.01

   24  12.1  1.0  0.0       0.00       0.00       0.00   41468.64      -3.13    -923.64       0.00      -0.00       0.00      -0.05
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00     923.65       0.00       0.00      -0.00

   25   1.1  1.0 -1.0      -0.00       0.05     500.81      -3.13       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.70    -500.80       0.05       0.00       0.00      -0.00      11.94      -0.31      -0.00       0.00

   26   2.1  1.0 -1.0       0.00      -0.00      -1.70    -923.64       0.00       0.01       0.00       0.00       0.00       0.00
                         -500.79       1.70      -0.00      -0.00       0.00      -0.00    3520.80       0.00      -0.00      -0.00

   27   3.1  1.0 -1.0     500.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -923.65     -11.94   -3520.80       0.00      -0.01      -0.00    -806.26

   28   4.1  1.0 -1.0      -0.00    1267.09      -0.12      -0.00       0.00       0.00       0.00   40313.49       0.00       0.00
                           -0.01      -0.12   -1267.53      -0.00       0.31      -0.00       0.01      -0.00    4150.20      -0.00

   29   5.1  1.0 -1.0      -0.01       0.12    1267.30       0.00       0.00       0.00       0.00       0.00   40313.56       0.00
                           -0.00    1267.32      -0.12      -0.00       0.00       0.00       0.00   -4150.20       0.00       0.06

   30   6.1  1.0 -1.0       0.00      -0.02      -0.00      -0.05       0.00       0.00       0.00       0.00       0.00   40313.60
                        -1267.38      -0.00       0.01       0.00      -0.00       0.00     806.26       0.00      -0.06       0.00

   31   7.1  1.0 -1.0    1267.40       0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.02      -2.74    -806.26       0.00      -0.03       0.00   -2075.00

   32   8.1  1.0 -1.0      -0.01     732.10      -0.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.07     731.29       0.00    -931.02       3.16      -0.00       0.00       1.37       0.01

   33   9.1  1.0 -1.0       0.00       0.14    1528.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1528.85       0.14       0.02      -0.00      -0.01       0.00       0.70       0.00       0.02

   34  10.1  1.0 -1.0      -0.14       0.00       0.00   -2078.70       0.00       0.00       0.00       0.00       0.00       0.00
                         1528.85       0.00       0.01      -0.19       0.00       0.07    -708.22      -0.00       0.00      -0.17

   35  11.1  1.0 -1.0   -1528.84      -0.00       0.00       0.19       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.14      -0.01      -0.00   -2078.72       2.40     708.20       0.07      -0.02      -0.00   -1792.32

   36  12.1  1.0 -1.0      -0.00    2078.70      -0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.19    2078.72      -0.00    1306.18      -4.43       0.00       0.00      -0.02       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00     -64.31       1.85      12.44    -623.34      16.28       1.58
                           -0.98      16.07     612.78       0.00    2460.50     -20.78      -2.28      16.27     622.98       3.15

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00    2460.55      -6.87       5.14     -16.29    -622.98      -5.65
                            2.60    -612.79      16.07       0.00      64.28      -5.36      11.89    -622.62      16.28       1.31

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       4.91      13.98   -2461.33      -3.18      -1.23       6.44
                           -4.91      -1.21       3.12      -0.01      20.89    2461.27      -5.71      -1.24       3.18    -623.17

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00     -13.72   -1221.86     -16.69      -0.84       2.43   -1125.31
                          705.63       2.39       0.81      -0.00       3.29      16.68    1611.40       2.42       0.82      -4.23

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00       2.74    2566.22       5.47       0.02       1.51    -535.84
                          -56.00       1.48      -0.03       0.00      -0.14      -5.47    2341.35       1.51      -0.03       1.38

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00     -13.53   -3989.89       0.00      -0.00      -0.00      -0.01
                         -751.61      -0.00      -0.01       0.00       0.00       0.00    3989.91      -0.00      -0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.26       0.00       0.06    1465.03       0.67      -0.02
                            0.02       0.65   -1786.81       0.38    -574.30       2.01      -0.00       0.67   -1465.30      -0.16

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00    -574.30       1.95      -0.00      -0.67    1465.30       0.00
                           -0.00    1786.78       0.65      -0.00       0.26      -0.00       0.00    1465.57       0.67      -0.02

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00    -574.30       0.16       0.00       0.00
                           -0.00       0.00      -0.20   -3391.85      -2.01    -574.29       0.00       0.02      -0.16    1465.33

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.11       0.01       0.13   -1249.94      -0.23       0.05
                            0.03       0.21   -2188.26      -0.00    -585.67       1.86       0.01      -0.23    1249.23      -0.28

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00    -585.72       1.99       0.04       0.23   -1249.22      -0.08
                           -0.07    2188.27       0.21      -0.00       0.11      -0.04      -0.02   -1248.50      -0.23      -0.06

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.04      -0.00     585.72       0.28       0.08       0.03
                            0.03      -0.14       0.48      -0.02      -1.86    -585.71       0.01       0.06      -0.28   -1249.26

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.80     231.36       0.01      -0.04       0.04   -2347.68
                        -2488.39      -0.07      -0.04       0.00      -0.00      -0.01    -434.65       0.04       0.01      -0.02

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00      -2.15    -635.47      -0.00      -0.03       0.01    -854.80
                          438.53      -0.01      -0.03      -0.00      -0.01       0.00    -518.12       0.01       0.02       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       4.18    1233.94      -0.00       0.00      -0.00       0.04
                         3645.54       0.00       0.03      -0.00      -0.00      -0.00   -1233.94      -0.00       0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -64.31    2460.55       4.91     -13.72
                            0.00       0.00       0.00       0.00       0.00       0.00    2460.50      64.28      20.89       3.29

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.85      -6.87      13.98   -1221.86
                            0.00       0.00       0.00       0.00       0.00       0.00     -20.78      -5.36    2461.27      16.68

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      12.44       5.14   -2461.33     -16.69
                            0.00       0.00       0.00       0.00       0.00       0.00      -2.28      11.89      -5.71    1611.40

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -623.34     -16.29      -3.18      -0.84
                            0.00       0.00       0.00       0.00       0.00       0.00      16.27    -622.62      -1.24       2.42

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      16.28    -622.98      -1.23       2.43
                            0.00       0.00       0.00       0.00       0.00       0.00     622.98      16.28       3.18       0.82

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.58      -5.65       6.44   -1125.31
                            0.00       0.00       0.00       0.00       0.00       0.00       3.15       1.31    -623.17      -4.23

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -3.14      -1.30     623.17       4.23
                            0.00       0.00       0.00       0.00       0.00       0.00      -1.40       2.26      -8.53    1026.70

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    1078.82      28.19       5.50       1.42
                            0.00       0.00       0.00       0.00       0.00       0.00      28.21   -1079.24      -2.13       4.20

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -11.33     433.33       0.85      -1.69
                            0.00       0.00       0.00       0.00       0.00       0.00     433.32      11.32       2.21       0.57

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.29      -0.26      -2.42     215.16
                            0.00       0.00       0.00       0.00       0.00       0.00       2.19       0.91    -433.47      -2.97

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -2.19      -0.90     433.48       2.92
                            0.00       0.00       0.00       0.00       0.00       0.00       0.41      -2.09       1.05    -283.74

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.04       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.03      -0.00       0.00

   13   1.1  1.0  0.0    -570.09       1.12       0.00      -0.05    -500.81       3.13       0.00       0.00       0.00       0.00
                            0.00      -0.00      -1.70    -500.80       0.05       0.00       5.84     -26.53      27.85   -4006.84

   14   2.1  1.0  0.0       1.93     329.30      -0.00       0.00       1.70     923.64       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -500.79       1.70      -0.00      -0.00      90.93   -3479.68      -6.98      27.13

   15   3.1  1.0  0.0      -0.00      -0.00    -500.80      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00    -328.93       0.00       0.00      -0.00    -923.65    3479.74      90.93      17.74       4.58

   16   4.1  1.0  0.0       0.00       0.03       0.00   -1267.09       0.12       0.00       0.00       0.00       0.00       0.00
                         1466.52      -0.01      -0.01      -0.12   -1267.53      -0.00       8.91       3.67   -1762.61     -11.95

   17   5.1  1.0  0.0    1467.35      -0.01       0.01      -0.12   -1267.30      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    1267.32      -0.12      -0.00       0.24      -4.78      -2.97    -139.46

   18   6.1  1.0  0.0       0.02    2540.97      -0.00       0.02       0.00       0.05       0.00       0.00       0.00       0.00
                           -0.02       0.00   -1267.38      -0.00       0.01       0.00      23.03    -881.04      -1.72       3.43

   19   7.1  1.0  0.0       0.00      -0.00   -1267.40      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00
                           -0.00   -2541.93      -0.00      -0.00       0.00      -0.02     881.05      23.02       4.49       1.16

   20   8.1  1.0  0.0       0.00      -0.00       0.01    -732.10       0.07       0.00       0.00       0.00       0.00       0.00
                         2541.93       0.00      -0.01       0.07     731.29       0.00      -0.00       0.00      -0.58      -0.00

   21   9.1  1.0  0.0    1267.40      -0.01       0.00      -0.14   -1528.84      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.01       0.00   -1528.85       0.14       0.02       0.98      -2.60       4.91    -705.63

   22  10.1  1.0  0.0       0.00     732.10       0.14       0.00      -0.00    2078.70       0.00       0.00       0.00       0.00
                            0.00      -0.07    1528.85      -0.00       0.01      -0.19     -16.07     612.79       1.21      -2.39

   23  11.1  1.0  0.0       0.01      -0.07    1528.84       0.00       0.00      -0.19       0.00       0.00       0.00       0.00
                           -0.00    -731.29      -0.14      -0.01       0.00   -2078.72    -612.78     -16.07      -3.12      -0.81

   24  12.1  1.0  0.0      -0.00      -0.00       0.00   -2078.70       0.19       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00      -0.02       0.19    2078.72       0.00      -0.00      -0.00       0.01       0.00

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     -64.31    2460.55       4.91     -13.72
                            2.74     931.02       0.00      -0.00      -2.40   -1306.18   -2460.50     -64.28     -20.89      -3.29

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.85      -6.87      13.98   -1221.86
                          806.26      -3.16       0.01      -0.07    -708.20       4.43      20.78       5.36   -2461.27     -16.68

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      12.44       5.14   -2461.33     -16.69
                           -0.00       0.00      -0.00     708.22      -0.07      -0.00       2.28     -11.89       5.71   -1611.40

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -623.34     -16.29      -3.18      -0.84
                            0.03      -0.00      -0.70       0.00       0.02      -0.00     -16.27     622.62       1.24      -2.42

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      16.28    -622.98      -1.23       2.43
                           -0.00      -1.37      -0.00      -0.00       0.00       0.02    -622.98     -16.28      -3.18      -0.82

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.58      -5.65       6.44   -1125.31
                         2075.00      -0.01      -0.02       0.17    1792.32      -0.00      -3.15      -1.31     623.17       4.23

   31   7.1  1.0 -1.0   40313.62       0.00       0.00       0.00       0.00       0.00      -3.14      -1.30     623.17       4.23
                            0.00      -0.00       0.01   -1792.27       0.17       0.00       1.40      -2.26       8.53   -1026.70

   32   8.1  1.0 -1.0       0.00   40313.61       0.00       0.00       0.00       0.00    1078.82      28.19       5.50       1.42
                            0.00       0.00    2069.67       0.01       0.02      -0.00     -28.21    1079.24       2.13      -4.20

   33   9.1  1.0 -1.0       0.00       0.00   40817.94       0.00       0.00       0.00     -11.33     433.33       0.85      -1.69
                           -0.01   -2069.67       0.00       0.02      -0.00    2939.63    -433.32     -11.32      -2.21      -0.57

   34  10.1  1.0 -1.0       0.00       0.00       0.00   40818.09       0.00       0.00      -0.29      -0.26      -2.42     215.16
                         1792.27      -0.01      -0.02      -0.00    2162.26       0.00      -2.19      -0.91     433.47       2.97

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   40818.14       0.00      -2.19      -0.90     433.48       2.92
                           -0.17      -0.02       0.00   -2162.26      -0.00       0.03      -0.41       2.09      -1.05     283.74

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   41468.64       0.04       0.00       0.00       0.00
                           -0.00       0.00   -2939.63      -0.00      -0.03       0.00      -0.00       0.03       0.00      -0.00

   37   1.1  0.0  0.0      -3.14    1078.82     -11.33      -0.29      -2.19       0.04    5480.72       0.00       0.00       0.00
                           -1.40      28.21     433.32       2.19       0.41       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0      -1.30      28.19     433.33      -0.26      -0.90       0.00       0.00    5480.73       0.00       0.00
                            2.26   -1079.24      11.32       0.91      -2.09      -0.03      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0     623.17       5.50       0.85      -2.42     433.48       0.00       0.00       0.00    5480.73       0.00
                           -8.53      -2.13       2.21    -433.47       1.05      -0.00      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0       4.23       1.42      -1.69     215.16       2.92       0.00       0.00       0.00       0.00    5480.71
                         1026.70       4.20       0.57      -2.97    -283.74       0.00      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0      -1.38      -0.05      -1.05    -451.93      -0.92      -0.00       0.00       0.00       0.00       0.00
                         -706.63       2.62      -0.02       0.93    -412.34       0.00      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0      -0.00       0.00      -0.00     531.47      -0.05      -0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.00      -0.05    -531.47       0.00      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0      -0.16     846.39       0.58       0.00       0.14    2398.47       0.00       0.00       0.00       0.00
                            0.00      -0.39    1263.42       0.14       0.01      -1.10      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0       0.00      -0.39    1263.42       0.00       0.01      -1.10       0.00       0.00       0.00       0.00
                           -0.01    -845.42      -0.58      -0.00      -0.00   -2398.49      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0    1465.34       0.09       0.01      -0.12   -1263.38       0.27       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.14   -1263.39       0.12      -0.00      -0.00      -0.00      -0.00      -0.00

   46  10.1  0.0  0.0       0.29    2163.31      -0.29      -0.02      -0.34       0.09       0.00       0.00       0.00       0.00
                            0.01      -0.40   -1547.29       0.34      -0.04      -0.00      -0.00      -0.00      -0.00      -0.00

   47  11.1  0.0  0.0       0.08      -0.40   -1547.30      -0.01      -0.11      -0.00       0.00       0.00       0.00       0.00
                            0.04   -2164.14       0.29       0.10       0.04      -0.08      -0.00      -0.00      -0.00      -0.00

   48  12.1  0.0  0.0    1249.28      -0.48       0.11      -0.14   -1547.27      -0.00       0.00       0.00       0.00       0.00
                           -0.03       0.14       0.34    1547.29      -0.16      -0.00      -0.00      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0       0.02       0.01       0.05    -611.28       0.04      -0.00       0.00       0.00       0.00       0.00
                         1914.06       0.06      -0.02       0.13    1148.35       0.00      -0.00      -0.00      -0.00      -0.00

   50  14.1  0.0  0.0      -0.00       0.04       0.01    1678.82      -0.16      -0.00       0.00       0.00       0.00       0.00
                        -1605.83       0.02      -0.04       0.13    1368.74      -0.00      -0.00      -0.00      -0.00      -0.00

   51  15.1  0.0  0.0       0.00      -0.00       0.00   -2577.80       0.24       0.00       0.00       0.00       0.00       0.00
                           -0.06      -0.00      -0.02       0.24    2577.80       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.0  1.0       2.74     -13.53      -0.26    -574.30      -0.00      -0.11    -585.72       0.04       0.80      -2.15
                           -0.14       0.00    -574.30       0.26      -2.01    -585.67       0.11      -1.86      -0.00      -0.01

    2   2.1  1.0  1.0    2566.22   -3989.89       0.00       1.95      -0.00       0.01       1.99      -0.00     231.36    -635.47
                           -5.47       0.00       2.01      -0.00    -574.29       1.86      -0.04    -585.71      -0.01       0.00

    3   3.1  1.0  1.0       5.47       0.00       0.06      -0.00    -574.30       0.13       0.04     585.72       0.01      -0.00
                         2341.35    3989.91      -0.00       0.00       0.00       0.01      -0.02       0.01    -434.65    -518.12

    4   4.1  1.0  1.0       0.02      -0.00    1465.03      -0.67       0.16   -1249.94       0.23       0.28      -0.04      -0.03
                            1.51      -0.00       0.67    1465.57       0.02      -0.23   -1248.50       0.06       0.04       0.01

    5   5.1  1.0  1.0       1.51      -0.00       0.67    1465.30       0.00      -0.23   -1249.22       0.08       0.04       0.01
                           -0.03      -0.00   -1465.30       0.67      -0.16    1249.23      -0.23      -0.28       0.01       0.02

    6   6.1  1.0  1.0    -535.84      -0.01      -0.02       0.00       0.00       0.05      -0.08       0.03   -2347.68    -854.80
                            1.38       0.00      -0.16      -0.02    1465.33      -0.28      -0.06   -1249.26      -0.02       0.00

    7   7.1  1.0  1.0      -1.38      -0.00      -0.16       0.00    1465.34       0.29       0.08    1249.28       0.02      -0.00
                         -706.63       0.02       0.00      -0.01       0.00       0.01       0.04      -0.03    1914.06   -1605.83

    8   8.1  1.0  1.0      -0.05       0.00     846.39      -0.39       0.09    2163.31      -0.40      -0.48       0.01       0.04
                            2.62      -0.00      -0.39    -845.42      -0.00      -0.40   -2164.14       0.14       0.06       0.02

    9   9.1  1.0  1.0      -1.05      -0.00       0.58    1263.42       0.01      -0.29   -1547.30       0.11       0.05       0.01
                           -0.02       0.00    1263.42      -0.58       0.14   -1547.29       0.29       0.34      -0.02      -0.04

   10  10.1  1.0  1.0    -451.93     531.47       0.00       0.00      -0.12      -0.02      -0.01      -0.14    -611.28    1678.82
                            0.93      -0.05       0.14      -0.00   -1263.39       0.34       0.10    1547.29       0.13       0.13

   11  11.1  1.0  1.0      -0.92      -0.05       0.14       0.01   -1263.38      -0.34      -0.11   -1547.27       0.04      -0.16
                         -412.34    -531.47       0.01      -0.00       0.12      -0.04       0.04      -0.16    1148.35    1368.74

   12  12.1  1.0  1.0      -0.00      -0.00    2398.47      -1.10       0.27       0.09      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -1.10   -2398.49      -0.00      -0.00      -0.08      -0.00       0.00      -0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          318.04    5642.56      -0.00      -2.75      -0.00      -0.00       2.84      -0.01     941.91    -165.99

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.34     -19.13      -0.37    -812.18      -0.00       0.15     828.32      -0.05      -3.22       0.56

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.18       0.00     812.18      -0.37       0.09    -828.27       0.15       0.18      -0.01      -0.01

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.92       0.00      -0.00      -0.03       0.81      -0.78      -0.25   -3533.34      -0.05       0.00

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1757.14      -0.00      -0.00      -0.00       0.00       0.06      -0.04       0.01    -613.21   -3479.73

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.13      -0.00      -0.95   -2072.20      -0.00      -0.33   -1766.64       0.16       0.05       0.01

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04       0.00    2072.19      -0.95       0.22    1766.61      -0.33      -0.39       0.01       0.03

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.26      -0.00   -2392.95      -0.01      -0.00      -1.17      -0.00       0.00

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           56.00     751.61      -0.02       0.00       0.00      -0.03       0.07      -0.03    2488.39    -438.53

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.48       0.00      -0.65   -1786.78      -0.00      -0.21   -2188.27       0.14       0.07       0.01

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       0.01    1786.81      -0.65       0.20    2188.26      -0.21      -0.48       0.04       0.03

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.38       0.00    3391.85       0.00       0.00       0.02      -0.00       0.00

   25   1.1  1.0 -1.0       2.74     -13.53      -0.26    -574.30      -0.00      -0.11    -585.72       0.04       0.80      -2.15
                            0.14      -0.00     574.30      -0.26       2.01     585.67      -0.11       1.86       0.00       0.01

   26   2.1  1.0 -1.0    2566.22   -3989.89       0.00       1.95      -0.00       0.01       1.99      -0.00     231.36    -635.47
                            5.47      -0.00      -2.01       0.00     574.29      -1.86       0.04     585.71       0.01      -0.00

   27   3.1  1.0 -1.0       5.47       0.00       0.06      -0.00    -574.30       0.13       0.04     585.72       0.01      -0.00
                        -2341.35   -3989.91       0.00      -0.00      -0.00      -0.01       0.02      -0.01     434.65     518.12

   28   4.1  1.0 -1.0       0.02      -0.00    1465.03      -0.67       0.16   -1249.94       0.23       0.28      -0.04      -0.03
                           -1.51       0.00      -0.67   -1465.57      -0.02       0.23    1248.50      -0.06      -0.04      -0.01

   29   5.1  1.0 -1.0       1.51      -0.00       0.67    1465.30       0.00      -0.23   -1249.22       0.08       0.04       0.01
                            0.03       0.00    1465.30      -0.67       0.16   -1249.23       0.23       0.28      -0.01      -0.02

   30   6.1  1.0 -1.0    -535.84      -0.01      -0.02       0.00       0.00       0.05      -0.08       0.03   -2347.68    -854.80
                           -1.38      -0.00       0.16       0.02   -1465.33       0.28       0.06    1249.26       0.02      -0.00

   31   7.1  1.0 -1.0      -1.38      -0.00      -0.16       0.00    1465.34       0.29       0.08    1249.28       0.02      -0.00
                          706.63      -0.02      -0.00       0.01      -0.00      -0.01      -0.04       0.03   -1914.06    1605.83

   32   8.1  1.0 -1.0      -0.05       0.00     846.39      -0.39       0.09    2163.31      -0.40      -0.48       0.01       0.04
                           -2.62       0.00       0.39     845.42       0.00       0.40    2164.14      -0.14      -0.06      -0.02

   33   9.1  1.0 -1.0      -1.05      -0.00       0.58    1263.42       0.01      -0.29   -1547.30       0.11       0.05       0.01
                            0.02      -0.00   -1263.42       0.58      -0.14    1547.29      -0.29      -0.34       0.02       0.04

   34  10.1  1.0 -1.0    -451.93     531.47       0.00       0.00      -0.12      -0.02      -0.01      -0.14    -611.28    1678.82
                           -0.93       0.05      -0.14       0.00    1263.39      -0.34      -0.10   -1547.29      -0.13      -0.13

   35  11.1  1.0 -1.0      -0.92      -0.05       0.14       0.01   -1263.38      -0.34      -0.11   -1547.27       0.04      -0.16
                          412.34     531.47      -0.01       0.00      -0.12       0.04      -0.04       0.16   -1148.35   -1368.74

   36  12.1  1.0 -1.0      -0.00      -0.00    2398.47      -1.10       0.27       0.09      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       1.10    2398.49       0.00       0.00       0.08       0.00      -0.00       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5480.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   14130.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   39531.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   39531.93       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   39531.94       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   42013.52       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   42013.18       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42013.20       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42013.70       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   42013.74
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51

    1   1.1  1.0  1.0       4.18
                           -0.00

    2   2.1  1.0  1.0    1233.94
                           -0.00

    3   3.1  1.0  1.0      -0.00
                        -1233.94

    4   4.1  1.0  1.0       0.00
                           -0.00

    5   5.1  1.0  1.0      -0.00
                            0.00

    6   6.1  1.0  1.0       0.04
                           -0.00

    7   7.1  1.0  1.0       0.00
                           -0.06

    8   8.1  1.0  1.0      -0.00
                           -0.00

    9   9.1  1.0  1.0       0.00
                           -0.02

   10  10.1  1.0  1.0   -2577.80
                            0.24

   11  11.1  1.0  1.0       0.24
                         2577.80

   12  12.1  1.0  1.0       0.00
                            0.00

   13   1.1  1.0  0.0       0.00
                        -1745.04

   14   2.1  1.0  0.0       0.00
                            5.92

   15   3.1  1.0  0.0       0.00
                            0.00

   16   4.1  1.0  0.0       0.00
                           -0.00

   17   5.1  1.0  0.0       0.00
                            0.02

   18   6.1  1.0  0.0       0.00
                           -0.00

   19   7.1  1.0  0.0       0.00
                           -0.00

   20   8.1  1.0  0.0       0.00
                            0.00

   21   9.1  1.0  0.0       0.00
                        -3645.54

   22  10.1  1.0  0.0       0.00
                           -0.00

   23  11.1  1.0  0.0       0.00
                           -0.03

   24  12.1  1.0  0.0       0.00
                            0.00

   25   1.1  1.0 -1.0       4.18
                            0.00

   26   2.1  1.0 -1.0    1233.94
                            0.00

   27   3.1  1.0 -1.0      -0.00
                         1233.94

   28   4.1  1.0 -1.0       0.00
                            0.00

   29   5.1  1.0 -1.0      -0.00
                           -0.00

   30   6.1  1.0 -1.0       0.04
                            0.00

   31   7.1  1.0 -1.0       0.00
                            0.06

   32   8.1  1.0 -1.0      -0.00
                            0.00

   33   9.1  1.0 -1.0       0.00
                            0.02

   34  10.1  1.0 -1.0   -2577.80
                           -0.24

   35  11.1  1.0 -1.0       0.24
                        -2577.80

   36  12.1  1.0 -1.0       0.00
                           -0.00

   37   1.1  0.0  0.0       0.00
                            0.00

   38   2.1  0.0  0.0       0.00
                            0.00

   39   3.1  0.0  0.0       0.00
                            0.00

   40   4.1  0.0  0.0       0.00
                            0.00

   41   5.1  0.0  0.0       0.00
                            0.00

   42   6.1  0.0  0.0       0.00
                            0.00

   43   7.1  0.0  0.0       0.00
                            0.00

   44   8.1  0.0  0.0       0.00
                            0.00

   45   9.1  0.0  0.0       0.00
                            0.00

   46  10.1  0.0  0.0       0.00
                            0.00

   47  11.1  0.0  0.0       0.00
                            0.00

   48  12.1  0.0  0.0       0.00
                            0.00

   49  13.1  0.0  0.0       0.00
                            0.00

   50  14.1  0.0  0.0       0.00
                            0.00

   51  15.1  0.0  0.0   44051.09
                            0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 51)

    The diagonal matrixelements are shifted by   -192.63721049 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.005       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   40313.493       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   40313.562       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   40313.597       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   40313.615       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40313.609
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000    3520.817      -0.000      -0.011      -2.733    -806.230       0.000      -0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                            -3520.817       0.000       0.000       0.000    -806.243       2.733      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     806.400       0.000      -0.011      -0.003    -465.177

    4    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.011      -0.000    -806.400       0.000       0.028       0.000    2073.969      -0.012

    5    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                2.733     806.243      -0.000      -0.028       0.000   -2075.134      -0.000       0.000

    6    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                              806.230      -2.733       0.011      -0.000    2075.134       0.000      -0.028       0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.003   -2073.969       0.000       0.028       0.000   -3594.837

    8    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000     465.177       0.012      -0.000      -0.000    3594.837       0.000

    9    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                2.401     708.229      -0.000       0.008       0.000    1792.343       0.000       0.009

   10    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                              708.243      -2.401      -0.000       0.167   -1792.259       0.000       0.000      -0.096

   11    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.066       0.006       0.000    1792.561       0.167      -0.008      -0.006   -1034.194

   12    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000    1306.238       0.000       0.000      -0.000       0.023      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -11.935       0.315       0.000      -0.000      -2.739    -931.023

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000   -3520.796      -0.001       0.000       0.000    -806.264       3.161

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.935    3520.796      -0.000       0.011       0.000     806.262       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.315       0.001      -0.011       0.000   -4150.203       0.000      -0.028       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000    4150.203      -0.000      -0.055       0.000       1.370

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -806.262      -0.000       0.055      -0.000   -2075.002       0.012

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.739     806.264      -0.000       0.028      -0.000    2075.002      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              931.023      -3.161       0.000      -0.000      -1.370      -0.012      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.006      -0.000      -0.698      -0.000      -0.016       0.013    2069.672

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.066     708.215       0.000      -0.000       0.167   -1792.273       0.011

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.401    -708.203      -0.066       0.024       0.000    1792.319       0.167       0.018

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1306.178       4.428      -0.000      -0.000       0.021      -0.000       0.000      -0.000

    1    1  |0 0>             -90.944       2.610      17.588    -881.529      23.028       2.230      -4.444    1525.688
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            3479.742      -9.719       7.271     -23.037    -881.031      -7.989      -1.841      39.870
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               6.949      19.774   -3480.846      -4.494      -1.742       9.101     881.289       7.773
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>             -19.403   -1727.975     -23.601      -1.181       3.430   -1591.423       5.975       2.008
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               3.881    3629.187       7.736       0.034       2.132    -757.787      -1.959      -0.077
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>             -19.128   -5642.558       0.000      -0.000      -0.000      -0.014      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>              -0.371       0.001       0.091    2071.870       0.946      -0.028      -0.224    1196.977
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>            -812.177       2.753      -0.000      -0.946    2072.250       0.000       0.000      -0.547
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>              -0.000      -0.000    -812.182       0.232       0.000       0.000    2072.303       0.121
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>              -0.155       0.013       0.183   -1767.685      -0.330       0.066       0.408    3059.388
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>            -828.327       2.813       0.053       0.331   -1766.663      -0.110       0.112      -0.572
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.053      -0.005     828.329       0.390       0.112       0.044    1766.743      -0.685
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>               1.135     327.193       0.011      -0.056       0.055   -3320.124       0.023       0.020
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |0 0>              -3.042    -898.688      -0.000      -0.045       0.010   -1208.866      -0.000       0.051
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |0 0>               5.916    1745.051      -0.000       0.000      -0.000       0.063       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000    3520.817      -0.000      -0.011

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000   -3520.817       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000     806.400

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.011      -0.000    -806.400       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       2.733     806.243      -0.000      -0.028

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     806.230      -2.733       0.011      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.003   -2073.969

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     465.177       0.012

    9    1  |1 1>+          40817.938       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       2.401     708.229      -0.000       0.008

   10    1  |1 1>+              0.000   40818.091       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     708.243      -2.401      -0.000       0.167

   11    1  |1 1>+              0.000       0.000   40818.136       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.066       0.006       0.000    1792.561

   12    1  |1 1>+              0.000       0.000       0.000   41468.640      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000    1306.238       0.000

    1    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -2.401    -708.243       0.066       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.006       0.000       0.000
                             -708.229       2.401      -0.006      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.005       0.000
                                0.000       0.000      -0.000   -1306.238      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000   40313.493
                               -0.008      -0.167   -1792.561      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000    1792.259      -0.167      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                            -1792.343      -0.000       0.008       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.006      -0.023      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.009       0.096    1034.194       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000   -2162.126       0.201       0.026      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             2162.126       0.000       0.019      -0.273      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.201      -0.019       0.000   -2939.748      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.026       0.273    2939.748       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000    3520.796       2.733
                               -0.000       0.000       2.401    1306.178       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000     -11.935     806.101
                               -0.006       0.066     708.203      -4.428       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000   -3520.796      11.935       0.000      -0.000
                                0.000    -708.215       0.066       0.000      -0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -2.733    -806.101       0.000       0.000
                                0.698      -0.000      -0.024       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000    -806.248      -0.000
                                0.000       0.000      -0.000      -0.021      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.011       0.000   -2076.326
                                0.016      -0.167   -1792.319       0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000     806.222      -2.736       0.000      -0.000
                               -0.013    1792.273      -0.167      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -1.584    -465.707       0.000      -0.048
                            -2069.672      -0.011      -0.018       0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -0.006       0.000     708.233      -0.000
                               -0.000      -0.019       0.000   -2939.628      -0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.066      -0.000       0.000    1791.931
                                0.019       0.000   -2162.258      -0.000       0.000      -0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000     708.252      -2.401       0.006      -0.167
                               -0.000    2162.258       0.000      -0.026       0.000      -0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -4.428   -1306.223       0.000      -0.000
                             2939.628       0.000       0.026      -0.000       0.000      -0.000       0.000      -0.000

    1    1  |0 0>             -16.017      -0.406      -3.098       0.058       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -5.841     -90.933   -3479.743      -8.906

    2    1  |0 0>             612.815      -0.366      -1.275       0.002       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      26.534    3479.683     -90.935      -3.670

    3    1  |0 0>               1.207      -3.429     613.032       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -27.848       6.976     -17.741    1762.606

    4    1  |0 0>              -2.386     304.279       4.128       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    4006.836     -27.128      -4.580      11.951

    5    1  |0 0>              -1.483    -639.125      -1.303      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -318.038      -7.343       0.175      -3.917

    6    1  |0 0>              -0.000     751.611      -0.070      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -5642.558      19.128      -0.000      -0.000

    7    1  |0 0>               0.816       0.000       0.200    3391.953       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.001       0.371    -812.183       0.000

    8    1  |0 0>            1786.751       0.000       0.016      -1.549       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       2.753     812.181       0.371       0.028

    9    1  |0 0>               0.016      -0.166   -1786.683       0.379       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.091      -0.807

   10    1  |0 0>              -0.409      -0.034      -0.482       0.120       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.003      -0.155     828.270       0.779

   11    1  |0 0>           -2188.214      -0.013      -0.158      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -2.836    -828.319      -0.155       0.248

   12    1  |0 0>               0.158      -0.191   -2188.174      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.013       0.053      -0.183    3533.343

   13    1  |0 0>               0.068    -864.477       0.051      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -941.907       3.219       0.006       0.047

   14    1  |0 0>               0.013    2374.213      -0.220      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     165.995      -0.558       0.014      -0.001

   15    1  |0 0>               0.000   -3645.566       0.339       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1745.039      -5.915      -0.000       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -2.733    -806.230       0.000      -0.000      -2.401    -708.243       0.066       0.000

    2    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                             -806.243       2.733      -0.000      -0.000    -708.229       2.401      -0.006      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000      -0.011      -0.003    -465.177       0.000       0.000      -0.000   -1306.238

    4    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.028       0.000    2073.969      -0.012      -0.008      -0.167   -1792.561      -0.000

    5    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000   -2075.134      -0.000       0.000      -0.000    1792.259      -0.167      -0.000

    6    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                             2075.134       0.000      -0.028       0.000   -1792.343      -0.000       0.008       0.000

    7    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.028       0.000   -3594.837      -0.000      -0.000       0.006      -0.023

    8    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               -0.000      -0.000    3594.837       0.000      -0.009       0.096    1034.194       0.000

    9    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000    1792.343       0.000       0.009       0.000   -2162.126       0.201       0.026

   10    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                            -1792.259       0.000       0.000      -0.096    2162.126       0.000       0.019      -0.273

   11    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.167      -0.008      -0.006   -1034.194      -0.201      -0.019       0.000   -2939.748

   12    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.023      -0.000      -0.026       0.273    2939.748       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           40313.562       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   40313.597       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   40313.615       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   40313.609       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   40817.938       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   40818.091       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   40818.136       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   41468.640
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-             -0.000      -0.000    -806.222       1.584       0.006      -0.066    -708.252       4.428
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000      -0.011       2.736     465.707      -0.000       0.000       2.401    1306.223
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>-            806.248      -0.000      -0.000      -0.000    -708.233      -0.000      -0.006      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000    2076.326       0.000       0.048       0.000   -1791.931       0.167       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000    2075.150      -0.012       0.016      -0.167   -1792.236      -0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-             -0.000       0.000       0.022    3593.474      -0.000       0.024       0.000       0.075
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-          -2075.150      -0.022       0.000      -0.000   -1792.368      -0.006      -0.016       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.012   -3593.474       0.000       0.000       0.011   -1035.341       0.096       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 1>-             -0.016       0.000    1792.368      -0.011       0.000      -0.201   -2162.107      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

   10    1  |1 1>-              0.167      -0.024       0.006    1035.341       0.201       0.000      -0.000    2939.731
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   11    1  |1 1>-           1792.236      -0.000       0.016      -0.096    2162.107       0.000       0.000      -0.273
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000      -0.075      -0.000      -0.000       0.000   -2939.731       0.273       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.235     -23.028    -881.047       0.002      -0.980      16.074     612.781       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.783     881.042     -23.024      -0.001       2.595    -612.792      16.071       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.968       1.719      -4.492       0.583      -4.908      -1.212       3.124      -0.009

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              139.459      -3.430      -1.159       0.004     705.631       2.386       0.812      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1757.137      -2.132       0.044      -0.001     -56.003       1.483      -0.031       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000    -751.608      -0.000      -0.007       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.946   -2072.189      -0.255       0.016       0.650   -1786.808       0.379

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    2072.204       0.946       0.000      -0.000    1786.777       0.650      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.217    2392.948      -0.000       0.000      -0.200   -3391.850

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.062       0.330   -1766.610       0.011       0.029       0.206   -2188.260      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.039    1766.636       0.330       0.000      -0.075    2188.270       0.206      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.007      -0.159       0.389       1.168       0.033      -0.139       0.482      -0.016

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              613.207      -0.055      -0.012       0.000   -2488.390      -0.068      -0.036       0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             3479.733      -0.010      -0.029      -0.000     438.526      -0.013      -0.032      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.016       0.000       0.000      -0.000    3645.541       0.000       0.032      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -11.935       0.315       0.000      -0.000      -2.739    -931.023

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000   -3520.796      -0.001       0.000       0.000    -806.264       3.161

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.935    3520.796      -0.000       0.011       0.000     806.262       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.315       0.001      -0.011       0.000   -4150.203       0.000      -0.028       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000    4150.203      -0.000      -0.055       0.000       1.370

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -806.262      -0.000       0.055      -0.000   -2075.002       0.012

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.739     806.264      -0.000       0.028      -0.000    2075.002      -0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              931.023      -3.161       0.000      -0.000      -1.370      -0.012      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.006      -0.000      -0.698      -0.000      -0.016       0.013    2069.672

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.066     708.215       0.000      -0.000       0.167   -1792.273       0.011

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.401    -708.203      -0.066       0.024       0.000    1792.319       0.167       0.018

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1306.178       4.428      -0.000      -0.000       0.021      -0.000       0.000      -0.000

    1    1  |1 0>               0.000      -0.000   -3520.796      -2.733       0.000       0.000     806.222      -1.584
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000      11.935    -806.101      -0.000       0.011      -2.736    -465.707
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>            3520.796     -11.935       0.000       0.000    -806.248       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               2.733     806.101      -0.000       0.000      -0.000   -2076.326      -0.000      -0.048
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000       0.000     806.248       0.000       0.000      -0.000   -2075.150       0.012
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>              -0.000      -0.011      -0.000    2076.326       0.000       0.000      -0.022   -3593.474
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 0>            -806.222       2.736      -0.000       0.000    2075.150       0.022       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               1.584     465.707      -0.000       0.048      -0.012    3593.474      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>               0.006      -0.000    -708.233       0.000       0.016      -0.000   -1792.368       0.011
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.066       0.000      -0.000   -1791.931      -0.167       0.024      -0.006   -1035.341
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 0>            -708.252       2.401      -0.006       0.167   -1792.236       0.000      -0.016       0.096
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 0>               4.428    1306.223      -0.000       0.000      -0.000       0.075       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.005       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   40313.493       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   40313.562       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   40313.597       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   40313.615       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   40313.609
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -3479.666      29.384       3.231     -23.015    -881.029      -4.453       1.983     -39.893

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -90.909       7.579     -16.816     880.522     -23.024      -1.853      -3.197    1526.273

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -29.540   -3480.765       8.074       1.753      -4.492     881.295      12.069       3.018

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.659     -23.585   -2278.870      -3.428      -1.159       5.975   -1451.969      -5.933

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.201       7.735   -3311.167      -2.131       0.044      -1.959     999.322      -3.700

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000   -5642.589       0.000       0.000      -0.000      -0.023       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              812.176      -2.844       0.000      -0.947    2072.247       0.232      -0.000       0.546

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.371       0.001      -0.000   -2072.632      -0.946       0.028       0.007    1195.600

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.844     812.175      -0.000      -0.028       0.232   -2072.283      -0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              828.267      -2.625      -0.016       0.330   -1766.677       0.389      -0.019       0.572

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.155       0.053       0.023    1765.651       0.330       0.089      -0.052    3060.551

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.625     828.321      -0.008      -0.089       0.389    1766.722       0.036      -0.195

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006       0.011     614.688      -0.055      -0.012       0.023   -2706.883      -0.078

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.014      -0.000     732.730      -0.010      -0.029      -0.000    2270.982      -0.032

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    1745.056       0.000      -0.000       0.000       0.086       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000     -90.944    3479.742       6.949     -19.403
                               -0.000       0.000       2.401    1306.178       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       2.610      -9.719      19.774   -1727.975
                               -0.006       0.066     708.203      -4.428       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      17.588       7.271   -3480.846     -23.601
                                0.000    -708.215       0.066       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000    -881.529     -23.037      -4.494      -1.181
                                0.698      -0.000      -0.024       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      23.028    -881.031      -1.742       3.430
                                0.000       0.000      -0.000      -0.021       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       2.230      -7.989       9.101   -1591.423
                                0.016      -0.167   -1792.319       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -4.444      -1.841     881.289       5.975
                               -0.013    1792.273      -0.167      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000    1525.688      39.870       7.773       2.008
                            -2069.672      -0.011      -0.018       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000     -16.017     612.815       1.207      -2.386
                               -0.000      -0.019       0.000   -2939.628       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000      -0.406      -0.366      -3.429     304.279
                                0.019       0.000   -2162.258      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -3.098      -1.275     613.032       4.128
                               -0.000    2162.258       0.000      -0.026       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.058       0.002       0.000       0.000
                             2939.628       0.000       0.026      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.006       0.066     708.252      -4.428       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       5.841     -26.534      27.848   -4006.836

    2    1  |1 0>               0.000      -0.000      -2.401   -1306.223       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      90.933   -3479.683      -6.976      27.128

    3    1  |1 0>             708.233       0.000       0.006       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000    3479.743      90.935      17.741       4.580

    4    1  |1 0>              -0.000    1791.931      -0.167      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       8.906       3.670   -1762.606     -11.951

    5    1  |1 0>              -0.016       0.167    1792.236       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.235      -4.783      -2.968    -139.459

    6    1  |1 0>               0.000      -0.024      -0.000      -0.075       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      23.028    -881.042      -1.719       3.430

    7    1  |1 0>            1792.368       0.006       0.016      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     881.047      23.024       4.492       1.159

    8    1  |1 0>              -0.011    1035.341      -0.096      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.002       0.001      -0.583      -0.004

    9    1  |1 0>               0.000       0.201    2162.107       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.980      -2.595       4.908    -705.631

   10    1  |1 0>              -0.201       0.000       0.000   -2939.731       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -16.074     612.792       1.212      -2.386

   11    1  |1 0>           -2162.107      -0.000       0.000       0.273       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000    -612.781     -16.071      -3.124      -0.812

   12    1  |1 0>              -0.000    2939.731      -0.273       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.009       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    3479.666      90.909      29.540       4.659

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -29.384      -7.579    3480.765      23.585

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -3.231      16.816      -8.074    2278.870

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      23.015    -880.522      -1.753       3.428

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     881.029      23.024       4.492       1.159

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       4.453       1.853    -881.295      -5.975

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.983       3.197     -12.069    1451.969

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      39.893   -1526.273      -3.018       5.933

    9    1  |1 1>-          40817.938       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     612.813      16.014       3.124       0.810

   10    1  |1 1>-              0.000   40818.091       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       3.098       1.280    -613.022      -4.194

   11    1  |1 1>-              0.000       0.000   40818.136       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.574      -2.961       1.478    -401.271

   12    1  |1 1>-              0.000       0.000       0.000   41468.640       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.001      -0.049      -0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000    5480.716       0.000       0.000       0.000
                             -612.813      -3.098      -0.574      -0.001       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5480.729       0.000       0.000
                              -16.014      -1.280       2.961       0.049      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5480.732       0.000
                               -3.124     613.022      -1.478       0.000      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5480.706
                               -0.810       4.194     401.271      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.026      -1.308     583.137      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.007       0.070     751.608      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1786.744      -0.200      -0.016       1.549      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.816       0.000       0.000    3391.976      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.200    1786.702      -0.166       0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             2188.197      -0.482       0.062       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.409      -0.139      -0.062       0.114      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.482   -2188.192       0.225       0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.029      -0.180   -1624.008      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.053      -0.180   -1935.695       0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.032      -0.339   -3645.554      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |1 1>+              3.881     -19.128      -0.371    -812.177      -0.000      -0.155    -828.327       0.053
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+           3629.187   -5642.558       0.001       2.753      -0.000       0.013       2.813      -0.005
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              7.736       0.000       0.091      -0.000    -812.182       0.183       0.053     828.329
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.034      -0.000    2071.870      -0.946       0.232   -1767.685       0.331       0.390
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              2.132      -0.000       0.946    2072.250       0.000      -0.330   -1766.663       0.112
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+           -757.787      -0.014      -0.028       0.000       0.000       0.066      -0.110       0.044
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -1.959      -0.000      -0.224       0.000    2072.303       0.408       0.112    1766.743
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.077       0.000    1196.977      -0.547       0.121    3059.388      -0.572      -0.685
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -1.483      -0.000       0.816    1786.751       0.016      -0.409   -2188.214       0.158
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+           -639.125     751.611       0.000       0.000      -0.166      -0.034      -0.013      -0.191
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -1.303      -0.070       0.200       0.016   -1786.683      -0.482      -0.158   -2188.174
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000    3391.953      -1.549       0.379       0.120      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              318.038    5642.558      -0.001      -2.753      -0.000      -0.003       2.836      -0.013

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.343     -19.128      -0.371    -812.181      -0.000       0.155     828.319      -0.053

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.175       0.000     812.183      -0.371       0.091    -828.270       0.155       0.183

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.917       0.000      -0.000      -0.028       0.807      -0.779      -0.248   -3533.343

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1757.137      -0.000      -0.000      -0.000       0.000       0.062      -0.039       0.007

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.132      -0.000      -0.946   -2072.204      -0.000      -0.330   -1766.636       0.159

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.044       0.000    2072.189      -0.946       0.217    1766.610      -0.330      -0.389

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000       0.255      -0.000   -2392.948      -0.011      -0.000      -1.168

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               56.003     751.608      -0.016       0.000       0.000      -0.029       0.075      -0.033

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.483       0.000      -0.650   -1786.777      -0.000      -0.206   -2188.270       0.139

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.031       0.007    1786.808      -0.650       0.200    2188.260      -0.206      -0.482

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.379       0.000    3391.850       0.000       0.000       0.016

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.201       0.000    -812.176       0.371      -2.844    -828.267       0.155      -2.625

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -7.735       0.000       2.844      -0.001    -812.175       2.625      -0.053    -828.321

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             3311.167    5642.589      -0.000       0.000       0.000       0.016      -0.023       0.008

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.131      -0.000       0.947    2072.632       0.028      -0.330   -1765.651       0.089

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.044      -0.000   -2072.247       0.946      -0.232    1766.677      -0.330      -0.389

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.959       0.000      -0.232      -0.028    2072.283      -0.389      -0.089   -1766.722

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -999.322       0.023       0.000      -0.007       0.000       0.019       0.052      -0.036

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.700      -0.000      -0.546   -1195.600      -0.000      -0.572   -3060.551       0.195

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.026       0.007    1786.744      -0.816       0.200   -2188.197       0.409       0.482

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.308      -0.070       0.200      -0.000   -1786.702       0.482       0.139    2188.192

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -583.137    -751.608       0.016      -0.000       0.166      -0.062       0.062      -0.225

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -1.549   -3391.976      -0.000      -0.000      -0.114      -0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5480.709       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   14130.549       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   39531.925       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   39531.929       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   39531.942       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000   42013.518       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   42013.185       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   42013.202
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       49          50          51

    1    1  |1 1>+              1.135      -3.042       5.916
                                0.000       0.000       0.000

    2    1  |1 1>+            327.193    -898.688    1745.051
                                0.000       0.000       0.000

    3    1  |1 1>+              0.011      -0.000      -0.000
                                0.000       0.000       0.000

    4    1  |1 1>+             -0.056      -0.045       0.000
                                0.000       0.000       0.000

    5    1  |1 1>+              0.055       0.010      -0.000
                                0.000       0.000       0.000

    6    1  |1 1>+          -3320.124   -1208.866       0.063
                                0.000       0.000       0.000

    7    1  |1 1>+              0.023      -0.000       0.000
                                0.000       0.000       0.000

    8    1  |1 1>+              0.020       0.051      -0.000
                                0.000       0.000       0.000

    9    1  |1 1>+              0.068       0.013       0.000
                                0.000       0.000       0.000

   10    1  |1 1>+           -864.477    2374.213   -3645.566
                                0.000       0.000       0.000

   11    1  |1 1>+              0.051      -0.220       0.339
                                0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000       0.000
                                0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000
                              941.907    -165.995   -1745.039

    2    1  |1 0>               0.000       0.000       0.000
                               -3.219       0.558       5.915

    3    1  |1 0>               0.000       0.000       0.000
                               -0.006      -0.014       0.000

    4    1  |1 0>               0.000       0.000       0.000
                               -0.047       0.001      -0.000

    5    1  |1 0>               0.000       0.000       0.000
                             -613.207   -3479.733       0.016

    6    1  |1 0>               0.000       0.000       0.000
                                0.055       0.010      -0.000

    7    1  |1 0>               0.000       0.000       0.000
                                0.012       0.029      -0.000

    8    1  |1 0>               0.000       0.000       0.000
                               -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000
                             2488.390    -438.526   -3645.541

   10    1  |1 0>               0.000       0.000       0.000
                                0.068       0.013      -0.000

   11    1  |1 0>               0.000       0.000       0.000
                                0.036       0.032      -0.032

   12    1  |1 0>               0.000       0.000       0.000
                               -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000
                               -0.006      -0.014      -0.000

    2    1  |1 1>-              0.000       0.000       0.000
                               -0.011       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000
                             -614.688    -732.730   -1745.056

    4    1  |1 1>-              0.000       0.000       0.000
                                0.055       0.010      -0.000

    5    1  |1 1>-              0.000       0.000       0.000
                                0.012       0.029       0.000

    6    1  |1 1>-              0.000       0.000       0.000
                               -0.023       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000
                             2706.883   -2270.982      -0.086

    8    1  |1 1>-              0.000       0.000       0.000
                                0.078       0.032      -0.000

    9    1  |1 1>-              0.000       0.000       0.000
                               -0.029      -0.053      -0.032

   10    1  |1 1>-              0.000       0.000       0.000
                                0.180       0.180       0.339

   11    1  |1 1>-              0.000       0.000       0.000
                             1624.008    1935.695    3645.554

   12    1  |1 1>-              0.000       0.000       0.000
                                0.000      -0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000
                                0.000       0.000       0.000

   13    1  |0 0>           42013.703       0.000       0.000
                                0.000       0.000       0.000

   14    1  |0 0>               0.000   42013.738       0.000
                               -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000   44051.090
                               -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -192.68779686    -0.05058637   -11102.43      0.00000000        0.00      0.0000
    2  -192.65389530    -0.01668481    -3661.89      0.03390156     7440.53      0.9225
    3  -192.65389530    -0.01668481    -3661.89      0.03390156     7440.53      0.9225
    4  -192.65389528    -0.01668479    -3661.89      0.03390158     7440.54      0.9225
    5  -192.64032250    -0.00311201     -683.01      0.04747436    10419.42      1.2918
    6  -192.64032249    -0.00311200     -683.00      0.04747437    10419.42      1.2918
    7  -192.64032173    -0.00311124     -682.84      0.04747513    10419.59      1.2919
    8  -192.64032172    -0.00311124     -682.84      0.04747514    10419.59      1.2919
    9  -192.64032171    -0.00311123     -682.84      0.04747515    10419.59      1.2919
   10  -192.59415758     0.04305291     9449.02      0.09363928    20551.45      2.5481
   11  -192.59415753     0.04305296     9449.03      0.09363933    20551.46      2.5481
   12  -192.59415751     0.04305298     9449.04      0.09363935    20551.46      2.5481
   13  -192.59415684     0.04305364     9449.18      0.09364002    20551.61      2.5481
   14  -192.59415682     0.04305367     9449.19      0.09364004    20551.61      2.5481
   15  -192.55567455     0.08153593    17895.07      0.13212231    28997.49      3.5952
   16  -192.49198909     0.14522140    31872.41      0.19580777    42974.84      5.3282
   17  -192.49198908     0.14522141    31872.42      0.19580778    42974.84      5.3282
   18  -192.49198899     0.14522150    31872.43      0.19580787    42974.86      5.3282
   19  -192.48634521     0.15086528    33111.10      0.20145165    44213.53      5.4818
   20  -192.48537859     0.15183189    33323.25      0.20241827    44425.67      5.5081
   21  -192.48537853     0.15183196    33323.26      0.20241833    44425.69      5.5081
   22  -192.48537825     0.15183224    33323.32      0.20241861    44425.75      5.5081
   23  -192.48448638     0.15272411    33519.07      0.20331048    44621.49      5.5324
   24  -192.48448629     0.15272420    33519.09      0.20331057    44621.51      5.5324
   25  -192.48448581     0.15272468    33519.19      0.20331105    44621.62      5.5324
   26  -192.48448554     0.15272495    33519.25      0.20331132    44621.68      5.5324
   27  -192.48448551     0.15272498    33519.26      0.20331135    44621.68      5.5324
   28  -192.43795556     0.19925493    43731.40      0.24984130    54833.83      6.7985
   29  -192.43795552     0.19925497    43731.41      0.24984134    54833.84      6.7985
   30  -192.43795536     0.19925512    43731.44      0.24984150    54833.87      6.7985
   31  -192.43586756     0.20134293    44189.67      0.25192930    55292.09      6.8553
   32  -192.43586742     0.20134307    44189.70      0.25192944    55292.12      6.8553
   33  -192.43586716     0.20134333    44189.75      0.25192970    55292.18      6.8554
   34  -192.43586701     0.20134348    44189.79      0.25192985    55292.21      6.8554
   35  -192.43586679     0.20134370    44189.83      0.25193007    55292.26      6.8554
   36  -192.43461883     0.20259166    44463.73      0.25317803    55566.16      6.8893
   37  -192.43461883     0.20259166    44463.73      0.25317803    55566.16      6.8893
   38  -192.43461866     0.20259182    44463.77      0.25317820    55566.19      6.8893
   39  -192.43461859     0.20259190    44463.78      0.25317827    55566.21      6.8893
   40  -192.43461851     0.20259198    44463.80      0.25317835    55566.22      6.8893
   41  -192.43461846     0.20259203    44463.81      0.25317840    55566.24      6.8893
   42  -192.43461843     0.20259205    44463.82      0.25317842    55566.24      6.8893
   43  -192.43236363     0.20484686    44958.69      0.25543323    56061.11      6.9507
   44  -192.43236362     0.20484687    44958.69      0.25543324    56061.12      6.9507
   45  -192.43236353     0.20484696    44958.71      0.25543333    56061.14      6.9507
   46  -192.42871968     0.20849080    45758.44      0.25907717    56860.87      7.0498
   47  -192.42871942     0.20849106    45758.50      0.25907744    56860.92      7.0499
   48  -192.42871897     0.20849152    45758.60      0.25907789    56861.02      7.0499
   49  -192.42871861     0.20849188    45758.68      0.25907825    56861.10      7.0499
   50  -192.42871824     0.20849224    45758.76      0.25907861    56861.18      7.0499
   51  -192.41973665     0.21747384    47729.99      0.26806021    58832.42      7.2943

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00181877  0.70597706 -0.00033156  0.00002455  0.00038897  0.00212728 -0.54357363 -0.00080597
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.53652833 -0.00239317  0.00000112 -0.00000008  0.08338899  0.62265368  0.00187921 -0.00013610
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00002330  0.00265476  0.70597570  0.00020035  0.00009481 -0.00109423  0.54400841
                           0.00000000  0.00000000  0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000623  0.01326056 -0.00004987  0.00000179  0.00000079 -0.00104882 -0.00031992
                          -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.01326331 -0.00000623  0.00000046 -0.00000490 -0.00000076  0.02508021  0.00003717
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000050  0.00000000 -0.00000018  0.00000000  0.04975975 -0.00666416  0.00000964 -0.00001712
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000044  0.00004992  0.01326341 -0.00000924 -0.00000437  0.00005050 -0.02510012
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000360  0.00766356 -0.00002890 -0.00000195 -0.00000152  0.00181521  0.00055384
                          -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00681310 -0.00000320  0.00000030 -0.00000044 -0.00000007  0.00225593  0.00000332
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.02598309  0.00000000 -0.00000000 -0.00000063  0.00034705  0.00258392  0.00000015 -0.00000037
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000241  0.00000028 -0.00002562 -0.00681261  0.00000080  0.00000015 -0.00000452  0.00225696
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000 -0.00001974 -0.04202011  0.00015801 -0.00000000 -0.00000000  0.00000007  0.00000002
                           0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.53652862  0.00239317 -0.00000112  0.00000008  0.58092797  0.23910955  0.00196529 -0.00025224

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00181877  0.70597581 -0.00033156  0.00002455 -0.00207557 -0.00082712  0.54357492  0.00080637

   3    1  |1 0>          -0.00000000  0.00000000  0.00000077  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00033166 -0.70597497  0.00265475 -0.00002440 -0.00001905  0.02271845  0.00692981

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000018  0.00000002  0.00000485  0.00001849  0.00000875 -0.00010064  0.05020024

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.01910861 -0.04642528  0.00000228  0.00000105

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.01326324  0.00000623 -0.00000046 -0.00000490 -0.00000076  0.02508010  0.00003650

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000623  0.01326306 -0.00004997 -0.00000113 -0.00000088  0.00104821  0.00031973

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000051 -0.00005766 -0.01531359  0.00000001  0.00000000 -0.00000004  0.00001661

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.02598320  0.00000000 -0.00000006  0.00000000 -0.00241090 -0.00099233 -0.00000051  0.00000106

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00681331  0.00000383 -0.00000024 -0.00000044 -0.00000007  0.00225643  0.00000335

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000023  0.00000383  0.00681340 -0.00002562 -0.00000012 -0.00000009  0.00009411  0.00002877

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000139 -0.00015802 -0.04202083 -0.00000000 -0.00000000  0.00000000 -0.00000023

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000077  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00033157  0.70598097 -0.00026158 -0.00002508 -0.00001937  0.02272197  0.00508564

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00002443  0.00026159  0.70598041 -0.00020027 -0.00009474  0.00101721 -0.54402906

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.53653140 -0.00000000 -0.00000000 -0.00000000 -0.49754233  0.38354621 -0.00008607  0.00011614

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.01326617 -0.00000623  0.00000064 -0.00000490 -0.00000076  0.02506590  0.00003748

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000623 -0.01326322  0.00004988 -0.00000113 -0.00000088  0.00104821  0.00031974

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000061  0.00004988  0.01326336  0.00000924  0.00000437 -0.00005082  0.02510011

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000078 -0.00000005  0.00000000 -0.00000000 -0.03065107 -0.03976119 -0.00000709  0.00001817

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00765484  0.00000360 -0.00000027 -0.00000831 -0.00000109  0.04344840  0.00006438

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000023  0.00000320  0.00681305 -0.00002562  0.00000012  0.00000007 -0.00009429 -0.00002876

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000242  0.00000023 -0.00002562 -0.00681275 -0.00000102 -0.00000025  0.00000454 -0.00225723

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.02598307  0.00000000  0.00000006  0.00000063 -0.00206573  0.00159053 -0.00000036  0.00000069

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.04202028 -0.00001973  0.00000146 -0.00000000 -0.00000000  0.00000140  0.00000000

   1    1  |0 0>           0.00000000  0.00000002 -0.00000061 -0.00000000 -0.00081070 -0.00023234 -0.04311925 -0.01132869
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000068 -0.00000002  0.00000000  0.00268778 -0.00072689  0.63414451 -0.00059916
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000011 -0.00343425 -0.00255644 -0.00015889  0.63549950
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000023  0.00000000 -0.00000000  0.00000000  0.60505861  0.19465923 -0.00238885  0.00403872
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000003  0.00000000  0.00000000 -0.00000000  0.19466670 -0.60507143 -0.00151311 -0.00138063
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.36225890 -0.00000000  0.00000000  0.00000000  0.00000015  0.00000007  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00002517  0.02716425 -0.00010518 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.02716450 -0.00002516  0.00000099 -0.00000000 -0.00000000  0.00000007  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00000089  0.00010519  0.02716424 -0.00000000  0.00000000 -0.00000000  0.00000002
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000003  0.00000000 -0.00000051 -0.00000073  0.00060880  0.00018330
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000014 -0.00000000 -0.00000000  0.00000240  0.00000043 -0.01463375 -0.00002265
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000006 -0.00000520 -0.00000251  0.00003025 -0.01464523
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |0 0>          -0.00000033 -0.00000000 -0.00000000  0.00000000 -0.01430452 -0.00313926 -0.00000247  0.00000561
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |0 0>           0.00000036  0.00000000 -0.00000000 -0.00000000 -0.00313923  0.01430451 -0.00000006 -0.00000133
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |0 0>           0.05607984 -0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000008 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+         -0.02273045 -0.00721609  0.45048510  0.00028957 -0.00070803  0.00165238 -0.00070858 -0.00043621
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00005125  0.00002642 -0.00155597 -0.00029199 -0.25146880  0.45543196 -0.20902941  0.00000148
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00689011  0.00118335  0.00030947 -0.45054392  0.00032932 -0.00010602  0.00000000 -0.00000002
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.02509271  0.01114118  0.00017845  0.00002939  0.00000001 -0.00000001 -0.00000000 -0.00003393
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00104877 -0.00017837  0.01113515  0.00000718  0.00000357  0.00000268 -0.00000000 -0.46361762
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000215  0.00000055 -0.00000884  0.00001171  0.01949789  0.01076532  0.00000027  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00031816  0.00002913  0.00000765 -0.01113591  0.00000814 -0.00000262  0.00000000 -0.00002612
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.04342851 -0.01928225 -0.00030884 -0.00005079  0.00000043  0.00000027 -0.00000000 -0.00001960
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00009434  0.00032419 -0.02023856 -0.00001288 -0.00000649 -0.00000488  0.00000000 -0.00609344
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000010  0.00000009 -0.00000130 -0.00001495 -0.01129706  0.02046104 -0.01471436 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00002859  0.00005317  0.00001373 -0.02024117  0.00001585 -0.00000666  0.00000137  0.00000029
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000164 -0.00000075 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001322
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00004447  0.00001132 -0.00136269 -0.00038345 -0.52015051  0.00993775  0.20902934 -0.00000148

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.02273054  0.00721615 -0.45048581 -0.00028926  0.00161883 -0.00014221 -0.00070858 -0.00043573

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.54353503  0.45048677  0.00721535  0.00118815 -0.00001009 -0.00000630 -0.00000000  0.00000003

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00063582 -0.00005850 -0.00001515  0.02227277 -0.00001628  0.00000524 -0.00000000  0.00000615

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000088  0.00000042 -0.00000549 -0.00000493  0.00042546  0.02226835  0.00000002  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00104875 -0.00017837  0.01113547  0.00000689  0.00000357  0.00000268  0.00000000  0.46360748

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.02507816 -0.01113548 -0.00017836 -0.00002937  0.00000025  0.00000016 -0.00000000 -0.00003394

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000036  0.00000005 -0.00000000  0.00000736 -0.00000001  0.00000000  0.00000000  0.00003017

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000016  0.00000041 -0.00000739  0.00001718  0.02336857 -0.00044647 -0.01471428  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00009415  0.00032606 -0.02023805 -0.00001305 -0.00000649 -0.00000488 -0.00000000  0.00609358

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00225661  0.02023797  0.00032603  0.00005338 -0.00000025 -0.00000029 -0.00000013 -0.00000101

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000011  0.00000000 -0.00000000  0.00000000 -0.00001018

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.54355389  0.45048016  0.00721425  0.00271542 -0.00001121 -0.00000594 -0.00000000 -0.00000003

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00504756 -0.00271043 -0.00033393  0.45053734 -0.00032928  0.00010604  0.00000000 -0.00000002

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000678  0.00001510 -0.00019327  0.00009146  0.26868323  0.44549676  0.20903052 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00104817 -0.00017826  0.01112864  0.00000733  0.00000357  0.00000268 -0.00000000 -0.46370788

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.02507830 -0.01113494 -0.00017835 -0.00002937  0.00000025  0.00000016  0.00000000  0.00003394

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00031789 -0.00002925 -0.00000780  0.01113613 -0.00000814  0.00000262 -0.00000000 -0.00001996

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000271 -0.00000028  0.00000347 -0.00001665 -0.01907256  0.01150204 -0.00000043  0.00000160

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00181686 -0.00030899  0.01928994  0.00001244  0.00000630  0.00000458  0.00000000  0.26749874

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00225586 -0.02023861 -0.00032416 -0.00005338  0.00000035  0.00000011 -0.00000013 -0.00000045

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00002859 -0.00005316 -0.00001390  0.02024108 -0.00001367  0.00000662  0.00000137  0.00000034

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000005  0.00000051 -0.00000868  0.00000223  0.01207022  0.02001466  0.01471421  0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000006 -0.00000001  0.00000063  0.00000000  0.00000000  0.00000000 -0.00000000  0.18064981

   1    1  |0 0>           0.63404955  0.76929846 -0.00777964 -0.00187275 -0.00108146 -0.00009893 -0.00000000 -0.00000002
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.04311817  0.00778165  0.76929166 -0.00105631  0.00310753  0.00221796  0.00000000  0.00000084
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.01133846  0.00187543  0.00105654  0.76931418 -0.00587075  0.00157851  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00075466  0.00106677 -0.00323810  0.00576717  0.76792036  0.04620827 -0.00000006 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00010039  0.00000859 -0.00203018 -0.00192553 -0.04620384  0.76794473 -0.00000004 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000005  0.00000008  0.93112604  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000003 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00026538
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000000 -0.00000007 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.50083646
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00002825
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.01463098  0.02382056  0.00038598  0.00006808 -0.00000063 -0.00000074 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00060920 -0.00038606  0.02382252  0.00001687  0.00000834  0.00000599 -0.00000000 -0.00000615
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00018222 -0.00006780 -0.00001796  0.02382554 -0.00001773  0.00000556 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |0 0>           0.00000062  0.00000084 -0.00000917  0.00001665  0.02353727  0.00368568 -0.00000022 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |0 0>          -0.00000062  0.00000074 -0.00000461 -0.00000824 -0.00368568  0.02353727  0.00000027  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000018 -0.00000007  0.03568527  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00000003  0.00000002  0.00011812 -0.02274690  0.00000344 -0.00000028 -0.00000032  0.01184887
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.03484616  0.00007711 -0.00000001  0.00000000 -0.00000000 -0.00004090
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00043682 -0.00000000 -0.00000028 -0.00000013  0.02274495 -0.01185279 -0.00000032
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000

   4    1  |1 1>+         -0.46353301  0.00000462 -0.00000000 -0.00002716 -0.17963253 -0.00000103 -0.00005025 -0.00004935
                          -0.00000052  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00003394  0.00002612  0.00000000  0.17967999 -0.00002717  0.00000222 -0.00000816  0.30083306
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000616  0.00000000 -0.00006338 -0.00000000  0.00000239 -0.00000000 -0.00000391 -0.00001195
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000623 -0.46360683  0.00000000  0.00000222  0.00000041 -0.17972957 -0.30082031 -0.00000815
                           0.00000000  0.00000080  0.00000000 -0.00000000  0.00000000  0.00000004  0.00000019  0.00000000

   8    1  |1 1>+         -0.26780422  0.00000545  0.00000001 -0.00001571 -0.10392644  0.00000048  0.00008877  0.00008541
                          -0.00000030 -0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000045  0.00000029 -0.00000003 -0.50307485  0.00007606 -0.00000183 -0.00001059  0.29520429
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000057  0.50302122 -0.00000004  0.00000001 -0.00004676  0.00002753  0.00001816
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000006  0.00609004 -0.00004675  0.00000182  0.00000289 -0.50302691  0.29527425  0.00001058
                          -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000012 -0.00000019 -0.00000000

  12    1  |1 1>+         -0.18064676  0.00000180 -0.00000001  0.00007646  0.50566185  0.00000291  0.00000002  0.00000002
                          -0.00000020  0.00000000  0.00000000  0.00000000  0.00000012 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.03484404 -0.00007710  0.00000001 -0.00000000  0.00000008 -0.00004031

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000003  0.00000002  0.00011812 -0.02274365  0.00000344 -0.00000028  0.00000032 -0.01185479

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000
                           0.00043577 -0.00000000  0.00000000 -0.00000344 -0.02274325 -0.00000013 -0.00000198 -0.00000194

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000038  0.00000000
                          -0.00000000 -0.00017853  0.00000000 -0.00000239  0.00000000 -0.00004293  0.60164028  0.00002031

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000628 -0.00000000  0.00000001  0.00000001 -0.00000209 -0.00003371

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00003394 -0.00002612  0.00000000 -0.17976471  0.00002718 -0.00000223 -0.00001616  0.30079744

   7    1  |1 0>           0.00000052  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000 -0.00000000
                          -0.46360591  0.00000783  0.00000001 -0.00002718 -0.17978455  0.00000021  0.00005022  0.00004932

   8    1  |1 0>           0.00000000  0.00000093  0.00000000 -0.00000000  0.00000000  0.00000005  0.00000000  0.00000000
                           0.00000812  0.53533476 -0.00000000 -0.00000257 -0.00000011  0.20751963  0.00019153  0.00000001

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000005  0.00000000  0.50307370 -0.00000004 -0.00000439  0.00000001  0.00000187 -0.00000323

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000101 -0.00000035  0.00000004  0.50299151 -0.00002930  0.00000623 -0.00000801  0.29533578

  11    1  |1 0>           0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000012  0.00000000  0.00000000 -0.00000000
                          -0.00609935  0.00000006  0.00000439  0.00002930  0.50297568  0.00000289  0.00004931  0.00002098

  12    1  |1 0>          -0.00000000 -0.00000031  0.00000000 -0.00000000  0.00000000  0.00000012 -0.00000000  0.00000000
                          -0.00000180 -0.18063764 -0.00000001 -0.00000626 -0.00000291  0.50566788 -0.00002269  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00043630 -0.00000148 -0.00000000  0.00000344  0.02274744  0.00007724  0.00003820 -0.00000194

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000001  0.00000000
                           0.00000147 -0.00043682 -0.00000000 -0.00000029 -0.00007724  0.02274575  0.01185100  0.00000033

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.03484669  0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00000060

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00003395  0.00001997  0.00000000  0.17971806 -0.00002717 -0.00000016 -0.00000416  0.30066266

   5    1  |1 1>-         -0.00000052  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000
                           0.46361761 -0.00000463 -0.00000000  0.00002717  0.17966856  0.00000103  0.00005023  0.00004932

   6    1  |1 1>-         -0.00000000 -0.00000080  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000019  0.00000000
                          -0.00000462 -0.46360793  0.00000000 -0.00000016  0.00000103 -0.17971275  0.30083046  0.00000416

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00006289 -0.00000062  0.00000001  0.00000001  0.00000182 -0.00001863

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00001958 -0.00001507  0.00000000 -0.10378443  0.00001569 -0.00000129 -0.00001414  0.52112204

   9    1  |1 1>-          0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000012  0.00000000 -0.00000000  0.00000000
                          -0.00609490  0.00000006  0.00000439  0.00007606  0.50308801  0.00000293 -0.00004926 -0.00004840

  10    1  |1 1>-          0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000019 -0.00000000
                           0.00000006  0.00609534 -0.00004675  0.00000623  0.00000292 -0.50304932 -0.29523922 -0.00000801

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000005 -0.00000057 -0.50301358  0.00000001  0.00000439  0.00004675  0.00002941  0.00001494

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00001322 -0.00001018  0.00000001  0.50566027 -0.00007646  0.00000626 -0.00000000  0.00008381

   1    1  |0 0>           0.00000093 -0.00000000 -0.00000000 -0.00000013 -0.00000663  0.00000001  0.00021335  0.00107483
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000002 -0.00000000  0.00000001  0.00000489 -0.00000017  0.00000000  0.00008667 -0.04086542
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000007 -0.00000003  0.00000001 -0.00000003 -0.00000152 -0.04087880 -0.00008189
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000374 -0.00000002 -0.00000001 -0.00000001 -0.00027693  0.00015888
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000007 -0.00000001 -0.00000000  0.00000000  0.00009097  0.00010121
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.02868190  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.50083756 -0.00006100  0.00000001  0.00010994 -0.35988532  0.00003816 -0.00000001  0.00000001
                           0.00000056  0.00000000 -0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00026539 -0.00002822  0.00000000  0.35988631  0.00010994  0.00000445 -0.00000000  0.00005397
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00006098  0.50084776  0.00000000  0.00000446 -0.00003816 -0.35987054  0.00001499 -0.00000000
                           0.00000000 -0.00000087  0.00000000 -0.00000000 -0.00000000  0.00000008 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000826 -0.00000000 -0.00000001 -0.00000000  0.00008832  0.00000001  0.00002830  0.00001222
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00006475 -0.00000001 -0.00000000  0.00001931  0.52984263
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000 -0.00000063  0.00000000  0.00000000 -0.00000002  0.00002016  0.52984135 -0.00001931
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000033 -0.00000000

  13    1  |0 0>           0.00000000  0.00000000 -0.00005399  0.00000000  0.00000000 -0.00000001  0.00000383 -0.00001662
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |0 0>           0.00000000 -0.00000000  0.00000623 -0.00000000  0.00000001  0.00000001 -0.00000141 -0.00003320
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |0 0>          -0.00000000  0.00000000  0.48620828 -0.00000000  0.00000001  0.00000001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.00000194  0.00003080  0.00003553 -0.02577244  0.00000368  0.00000060  0.01264411 -0.00000117
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000057  0.00891233  0.01038580  0.00008737 -0.00000001 -0.00000000 -0.00004260  0.00000012
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000198 -0.00000006  0.00000005 -0.00000060  0.00000139 -0.02577214 -0.00000117 -0.01264479
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000001

   4    1  |1 1>+          0.30101716  0.00000077  0.00001559  0.00003263  0.22838470  0.00001231 -0.00004402 -0.00006734
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000008 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00004932  0.00001496  0.00000827  0.22841288 -0.00003264 -0.00000533  0.26717864 -0.00002465
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00003111  0.45667692 -0.39169227 -0.00000000 -0.00000304  0.00000000  0.00002978 -0.00000540
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00005335 -0.00000153  0.00000121  0.00000533 -0.00001152  0.22844774 -0.00002462 -0.26708955
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000 -0.00000025

   8    1  |1 1>+         -0.52092445  0.00000918 -0.00003599  0.00001886  0.13199408  0.00000575  0.00007617  0.00011811
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000005 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00004839  0.00001469  0.00000813  0.40811747 -0.00005831 -0.00000595 -0.44234553  0.00004467
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+          0.00001399 -0.22193985 -0.25884568  0.00000003 -0.00000000 -0.00003793  0.00000903 -0.00003696
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00004930  0.00002214  0.00002288 -0.00000595  0.00002200 -0.40807525 -0.00004465 -0.44234586
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000011 -0.00000000 -0.00000041

  12    1  |1 1>+         -0.00010913 -0.00000000 -0.00000001 -0.00000583 -0.04080996 -0.00000220 -0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000098 -0.00454319  0.01291452 -0.00008737  0.00000001  0.00000000 -0.00004343  0.00000019

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000194  0.00001481 -0.00004410 -0.02577277  0.00000368  0.00000060 -0.01264344  0.00000117

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                           0.01185739 -0.00000021  0.00000082  0.00000368  0.02577249  0.00000139 -0.00000208 -0.00000318

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000050
                           0.00010045  0.00000307 -0.00000242 -0.00000303 -0.00000000  0.00007830  0.00005284  0.53448258

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000380  0.56755817  0.19964122  0.00000000 -0.00000000 -0.00000000  0.00002310  0.00000106

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00004932  0.00001496  0.00000827 -0.22842036  0.00003263  0.00000533  0.26723206 -0.00003176

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000000 -0.00000000 -0.00000000
                          -0.30078971  0.00000530 -0.00002078  0.00003264  0.22841816  0.00001073  0.00004398  0.00006730

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000007 -0.00000000 -0.00000000
                           0.00000184 -0.00000000 -0.00000000 -0.00000616  0.00001285 -0.26376089  0.00000001  0.00018028

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00002162 -0.11311318  0.32158546  0.00000002 -0.00000357 -0.00000000  0.00002015 -0.00000655

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00002097  0.00001468  0.00000813 -0.40807983  0.00009624  0.00000952 -0.44233887  0.00004079

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000015  0.00000000  0.00000000  0.00000000
                          -0.29536066  0.00000421 -0.00001759  0.00009623  0.40806880  0.00002199 -0.00003169 -0.00011140

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000001 -0.00000095  0.00000220 -0.04081149  0.00000000  0.00000519

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.01184942 -0.00000021  0.00000082 -0.00000368 -0.02577246 -0.00008875 -0.00000208  0.00003968

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000001
                          -0.00003819  0.00000006 -0.00000005 -0.00000059  0.00008875 -0.02577214  0.00000117  0.01264428

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000041  0.01345101 -0.00251944  0.00000000  0.00000000  0.00000000  0.00000083 -0.00000007

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00004930  0.00001495  0.00000826  0.22847635 -0.00003264 -0.00000229  0.26709256 -0.00002109

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000008 -0.00000000 -0.00000000 -0.00000000
                          -0.30084354  0.00000530 -0.00002078 -0.00003264 -0.22840634 -0.00001231  0.00004397  0.00006729

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000 -0.00000025
                           0.00005023  0.00000154 -0.00000121  0.00000229 -0.00001231  0.22843480  0.00002106  0.26711070

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00003890  0.11089512  0.59133559 -0.00000079 -0.00000000 -0.00000000 -0.00000391  0.00000647

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00008544  0.00002525  0.00001078 -0.13182737  0.00001884  0.00000307  0.46285691 -0.00004267

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000015  0.00000000 -0.00000000 -0.00000000
                           0.29518308 -0.00000228  0.00001984  0.00005832  0.40812718  0.00002202  0.00007281  0.00011137

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000011 -0.00000000 -0.00000041
                          -0.00004927 -0.00003265  0.00000704 -0.00000951  0.00002202 -0.40809600  0.00004078  0.44233418

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000767 -0.33512277  0.06290094  0.00000000  0.00000357  0.00003793  0.00002918 -0.00004351

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000002  0.00000001  0.00000000  0.04081466 -0.00000583 -0.00000095 -0.00002541  0.00000000

   1    1  |0 0>          -0.04086533  0.00002459 -0.00005406 -0.00000004  0.00000297 -0.00000000  0.00126836  0.00025576
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00107462 -0.00015640  0.00010339  0.00000173  0.00000008 -0.00000000 -0.04822136  0.00010552
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00021517  0.00002891 -0.00029009  0.00000000  0.00000002  0.00000088 -0.00009977 -0.04823613
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005

   4    1  |0 0>          -0.00005668 -0.01657307  0.03736814 -0.00000001  0.00000000  0.00000001  0.00018563 -0.00032645
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000257 -0.03736955 -0.01657330 -0.00000000  0.00000000 -0.00000000  0.00011478  0.00010704
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000114 -0.00000261 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00007271  0.00000000  0.00000001  0.00041969  0.69999403 -0.00004053  0.00000001 -0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000026 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000002  0.00000000  0.00000000  0.69999163 -0.00041969 -0.00001634  0.00003851 -0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000001  0.00000000  0.00000001  0.00001637  0.00004052  0.69999829 -0.00000000  0.00001480
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000019  0.00000000  0.00000000

  10    1  |0 0>           0.52983194 -0.00001870  0.00003540  0.00000000  0.00000434  0.00000000 -0.00000945  0.00001326
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00001222  0.00003709  0.00000180 -0.00000148 -0.00000000 -0.00000000 -0.42148270  0.00001207
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00002830 -0.00000065  0.00000403 -0.00000000 -0.00000000  0.00000326 -0.00001207 -0.42150592
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000039

  13    1  |0 0>           0.00004002  0.25988212 -0.46171125  0.00000000 -0.00000000 -0.00000000 -0.00000648 -0.00000041
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |0 0>          -0.00000107  0.46171001  0.25988171 -0.00000000  0.00000000  0.00000000 -0.00001259 -0.00000168
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |0 0>           0.00000001  0.00002055 -0.00004806 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+         -0.00000208 -0.00002698  0.00004121 -0.00000042 -0.00000000  0.00000000  0.00000000 -0.00000127
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000046 -0.00781801  0.01232521  0.00000000  0.00000000  0.00000000  0.00000096  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000318 -0.00000016  0.00000002  0.00000000  0.00000000 -0.00000180  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.26739632 -0.00000933  0.00000397  0.00001450  0.71861230  0.00000148  0.00001737 -0.00000049
                          -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00006244 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00004396 -0.00001004 -0.00001198 -0.68795187  0.00001391 -0.00000677 -0.00000136  0.24510052
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00002215  0.45125941  0.28618988  0.00000100 -0.00001785  0.00000014  0.57736471  0.00000601
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000

   7    1  |1 1>+          0.00007004 -0.00000344  0.00000039  0.00000355  0.00000304 -0.52138354  0.00000068  0.00000662
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000122 -0.00000000  0.00000000

   8    1  |1 1>+          0.46266708  0.00002654 -0.00000028  0.00000104  0.04690299  0.00000346 -0.00000235 -0.00000176
                           0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000408  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00007280  0.00001664  0.00001981  0.00002077 -0.00000000 -0.00000001  0.00000000  0.00002675
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00001597 -0.27362833  0.43136833 -0.00000000  0.00000000 -0.00000001  0.00004788  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+          0.00011141  0.00001974 -0.00003945  0.00000000  0.00000000 -0.00008471 -0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00002713 -0.00000000 -0.00000000  0.00000000  0.00000213  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000084 -0.01458222 -0.00060821  0.00000000  0.00000000 -0.00000000  0.00000015 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000208  0.00004991  0.00000263  0.00000066 -0.00000000  0.00000000 -0.00000000 -0.00000013

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01264144 -0.00000073  0.00000001 -0.00000000 -0.00000101 -0.00000000  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000135  0.00000000 -0.00000000
                          -0.00013460  0.00000688 -0.00000077  0.00001251  0.00000136 -0.57337186  0.00000021  0.00002796

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000
                           0.00000160 -0.02227735  0.53395372 -0.00000100  0.00000829 -0.00000014 -0.57731022 -0.00000601

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00004397 -0.00001004 -0.00001198  0.06533846 -0.00000118  0.00003415 -0.00000768  0.72735951

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000468  0.00000000  0.00000000  0.00000000
                           0.26722195  0.00001533 -0.00000017 -0.00000120 -0.05385204  0.00000015  0.00000271  0.00000202

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000021  0.00000000 -0.00000000
                          -0.00000165  0.00000000 -0.00000000 -0.00001400  0.00000273  0.09001477  0.00000081 -0.00002018

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00002540  0.51039787  0.02128661  0.00000000 -0.00000001 -0.00000000 -0.00000686  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00003169  0.00001665  0.00001984  0.00002708 -0.00000001 -0.00000001  0.00000000  0.00002212

  11    1  |1 0>           0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.44237829 -0.00002091  0.00000046 -0.00000001 -0.00003242 -0.00000000  0.00000001  0.00000001

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000011 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.01264107 -0.00000072  0.00000001  0.00000000 -0.00000004  0.00000001 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00003967  0.00000017 -0.00000002  0.00000000  0.00000000  0.00000155 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000038  0.00676475  0.01293393  0.00000000  0.00000000  0.00000000  0.00000088  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00004396 -0.00001003 -0.00001197  0.72060728 -0.00001450  0.00002836 -0.00000249  0.11876343

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00006010  0.00000000 -0.00000000  0.00000000
                           0.26717635  0.00001533 -0.00000016  0.00001390  0.69173435  0.00000128  0.00001105  0.00000051

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000147 -0.00000000  0.00000000
                          -0.00006727  0.00000344 -0.00000039 -0.00002930  0.00000003  0.62554075  0.00000025 -0.00003151

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000
                           0.00002732 -0.47351250  0.24761360  0.00000066 -0.00000829  0.00000014  0.57737588  0.00000223

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00007618 -0.00001455 -0.00002223 -0.05637598  0.00000102 -0.00002296  0.00000319 -0.62989612

   9    1  |1 1>-         -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.44237092  0.00002331 -0.00000424  0.00000000  0.00001538  0.00000000 -0.00000001 -0.00000001

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00011138  0.00002771  0.00004143  0.00000000 -0.00000000  0.00007690  0.00000000  0.00000001

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000942  0.23674797  0.45265479 -0.00000000 -0.00000001 -0.00000000  0.00004719  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000263  0.00000000 -0.00000000 -0.00000000  0.00001304

   1    1  |0 0>           0.04822163  0.00006879  0.00000911 -0.00000007  0.00000253  0.00000004 -0.00000000 -0.00000005
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00126808 -0.00016938 -0.00013600  0.00000258  0.00000007  0.00000001 -0.00000001  0.00000180
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00025800  0.00033698 -0.00006715  0.00000001  0.00000001 -0.00000736 -0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00006626 -0.04788591 -0.00581712 -0.00000001  0.00000000 -0.00000005  0.00000030 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000284  0.00581713 -0.04788662 -0.00000001  0.00000000  0.00000002 -0.00000366 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000004  0.00000017 -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00005650 -0.00000001  0.00000000 -0.00000001 -0.00000944  0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000002 -0.00000000 -0.00000000 -0.00001348  0.00000001  0.00000000  0.00000000 -0.00002148
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000329 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.42143841  0.00002543  0.00000715  0.00000000  0.00001879 -0.00000001 -0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00000945  0.00000363  0.00001369  0.00001901 -0.00000001 -0.00000001 -0.00000000  0.00001598
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00001327  0.00000004  0.00000173 -0.00000000 -0.00000000 -0.00005799  0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.00002637 -0.41160007 -0.09037280 -0.00000000  0.00000000 -0.00000000 -0.00000181 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |0 0>           0.00000153  0.09036224 -0.41162405  0.00000000 -0.00000000 -0.00000000 -0.00003073 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |0 0>           0.00000000 -0.00000773 -0.00000206  0.00000000  0.00000000 -0.00000000 -0.00000049  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |1 1>+          0.00000000 -0.00000000 -0.02023877  0.00000035 -0.00000062 -0.02672494  0.00000051 -0.00000569
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00006861 -0.00000000  0.00000000  0.00009059 -0.00000001 -0.00000086
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000047 -0.00000062  0.00000007  0.02024079  0.00000051  0.02672367  0.00000907
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.12970307  0.00000019  0.00000035  0.02020032 -0.00000007  0.00001350  0.00002154 -0.06349930
                           0.00000281 -0.00000000  0.00000000  0.00000014 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000078 -0.00000529 -0.02020466  0.00000035 -0.00000061 -0.06345130  0.00000121 -0.00001350
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000104 -0.00000062 -0.00000000 -0.00000027 -0.00000000 -0.00000507  0.00000052  0.00001097
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000630  0.51141022 -0.00000062  0.00000014  0.02022553  0.00000120  0.06346338  0.00002219
                           0.00000000 -0.00000338 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.63079076  0.00000946  0.00000021  0.01170304 -0.00000016 -0.00002337 -0.00003766  0.10991135
                           0.00001364 -0.00000000  0.00000000  0.00000008 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000001 -0.00000000  0.28341225 -0.00000497  0.00000615 -0.46553174  0.00001294 -0.00009899
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000002  0.00000000  0.00002634  0.00000001 -0.00004313  0.00001532
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00001544 -0.00000615  0.00000095  0.28343575 -0.00001291 -0.46556158 -0.00015794
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00001437 -0.00000000  0.00001476  0.84157094 -0.00000282  0.00000001  0.00000001 -0.00001800
                          -0.00000000  0.00000000  0.00000000  0.00000583 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00006861  0.00000000 -0.00000000  0.00009166 -0.00000012 -0.00000255

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.02024100  0.00000035 -0.00000062  0.02672330 -0.00000051  0.00000569

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000014 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000003  0.00000000 -0.00000035 -0.02024163  0.00000007  0.00000568  0.00000907 -0.02672285

   4    1  |1 0>          -0.00000000  0.00000044 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000112  0.06696448  0.00000026  0.00000000  0.00000483 -0.00000325 -0.12689040 -0.00004305

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000276  0.00000063 -0.00000000 -0.00000000 -0.00000000 -0.00000254  0.00000024  0.00000193

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000199  0.00001628  0.02020279 -0.00000035  0.00000062 -0.06344786  0.00000289 -0.00001350

   7    1  |1 0>           0.00001575 -0.00000000 -0.00000000 -0.00000014  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.72830259 -0.00000985  0.00000035  0.02020687 -0.00000021 -0.00001350 -0.00002152  0.06345947

   8    1  |1 0>          -0.00000000  0.00000509 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00001114  0.76935107  0.00000071 -0.00000020 -0.02332772 -0.00000000 -0.00004316 -0.00000040

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000002  0.00000248  0.00000000  0.00001864 -0.00000199 -0.00004886

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000001 -0.28343710 -0.00002137 -0.00000862 -0.46556261  0.00000885 -0.00005573

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000196 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00003073  0.00000000  0.00002137 -0.28343863  0.00000095 -0.00005573 -0.00015794  0.46553508

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000019  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00001364 -0.00002562  0.00000282  0.84156918  0.00000001 -0.00000518 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000014 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000112 -0.00000000  0.00000035  0.02023865  0.00006854  0.00000568 -0.00008152 -0.02672479

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000115 -0.00000062 -0.00006854  0.02024006 -0.00000053 -0.02672397  0.00008153

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000107  0.00000011  0.00000169

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000021  0.00001890 -0.02021382  0.00000035 -0.00000035 -0.06341161  0.00000036 -0.00001349

   5    1  |1 1>-          0.00000507 -0.00000000  0.00000000  0.00000014 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.23421242 -0.00000704 -0.00000036 -0.02021033  0.00000007 -0.00001350 -0.00002153  0.06346664

   6    1  |1 1>-         -0.00000000  0.00000249  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000782  0.37692742 -0.00000034  0.00000007  0.02022438 -0.00000037 -0.06345761 -0.00002153

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000276 -0.00000063  0.00000007 -0.00000000  0.00000000  0.00000187 -0.00000029 -0.00000820

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000174 -0.00001486  0.01168746 -0.00000021  0.00000036 -0.10992816  0.00000210 -0.00002338

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000196 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00002233  0.00000000 -0.00000497 -0.28341720  0.00000093  0.00009900  0.00015789 -0.46549526

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000006  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00001665 -0.00000863  0.00000093  0.28343369  0.00000884  0.46555368  0.00015790

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000248 -0.00002634  0.00001865 -0.00004512 -0.00003354

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.84157102 -0.00001476  0.00002562  0.00001123 -0.00000001  0.00000001

   1    1  |0 0>          -0.00000167 -0.00000001  0.00000005  0.00000225 -0.00000000  0.00027552  0.00005640 -0.01045291
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000004 -0.00000000 -0.00000205  0.00000006 -0.00000000 -0.01045604  0.00002214 -0.00027537
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000001  0.00000135 -0.00000000  0.00000001  0.00000038 -0.00002086 -0.01046058 -0.00005685
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000001  0.00000001  0.00000000  0.00000000  0.00004033 -0.00007088 -0.00001289
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00002512  0.00002326  0.00000063
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00002585  0.00000000 -0.00015768  0.35904657 -0.00004134  0.00000000 -0.00000000  0.00000354
                          -0.00000000  0.00000000  0.00000000  0.00000249 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000001  0.00000000 -0.35905182 -0.00015768 -0.00001093  0.00000338  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00002209 -0.00001094  0.00004134  0.35903927  0.00000000  0.00000033  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000008 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00001638  0.00000000 -0.00000001  0.00004338  0.00000000 -0.00001887 -0.00008743  0.73544933
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

  11    1  |0 0>          -0.00000000 -0.00000000 -0.00003501 -0.00000001 -0.00000001  0.73541616  0.00003277  0.00001887
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00001139  0.00000001 -0.00000001  0.00000932 -0.00003277  0.73540377  0.00008742
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000490  0.00000683 -0.00005738
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000581 -0.00000100  0.00001181
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51

   1    1  |1 1>+          0.00005344 -0.00008993  0.00008017
                          -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.01549121 -0.02668801  0.02364905
                          -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000010  0.00000005 -0.00000000
                           0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000675 -0.00000182  0.00000000
                           0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000219  0.00000128 -0.00000000
                           0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.10979459 -0.06373608  0.00000617
                           0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000024  0.00000012  0.00000000
                           0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000915  0.00000169 -0.00000000
                          -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00001610  0.00000935  0.00000002
                           0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.26983312  0.46487346 -0.28177687
                           0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00002335 -0.00004407  0.00002619
                          -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000
                           0.03085916  0.00007195 -0.02364839

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000
                          -0.00010553 -0.00000078  0.00008017

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000
                          -0.00000223 -0.00000041  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000
                          -0.00000047 -0.00000024 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000
                           0.00029737 -0.12694318  0.00000121

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000
                           0.00000219  0.00000128 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000
                           0.00000529  0.00000098 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000
                           0.53750328  0.00125613 -0.28176206

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                           0.00001612  0.00000938 -0.00000002

  11    1  |1 0>           0.00000000  0.00000000  0.00000000
                           0.00004348  0.00000716 -0.00000247

  12    1  |1 0>           0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000
                          -0.00000223 -0.00000041  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                          -0.00000009 -0.00000005 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                          -0.01536651 -0.02676002 -0.02364920

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                           0.00000219  0.00000128 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                           0.00000529  0.00000098 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                          -0.00000024 -0.00000012 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                           0.11009208 -0.06323156 -0.00000724

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                           0.00000314  0.00000260 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                          -0.00004112 -0.00001123 -0.00000246

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000
                           0.00002661  0.00004419  0.00002619

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000
                           0.26766696  0.46612916  0.28178159

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>           0.00001351  0.00000126  0.00000000
                           0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00003793 -0.00002826 -0.00000000
                           0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00007249 -0.00001746  0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.01041985 -0.00085179 -0.00000030
                           0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00085124 -0.01042144 -0.00000013
                          -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000045  0.00000005 -0.03082417
                          -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00005856 -0.00000154 -0.00000000
                          -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000380 -0.00000659  0.00000000
                          -0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000689 -0.00000022 -0.00000000
                           0.00000000  0.00000000 -0.00000000

  13    1  |0 0>           0.72401321  0.12932496  0.00000535
                          -0.00000000  0.00000000  0.00000000

  14    1  |0 0>          -0.12933153  0.72400066  0.00000181
                           0.00000000 -0.00000000  0.00000000

  15    1  |0 0>          -0.00001200 -0.00000460  0.87131115
                           0.00000000 -0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -192.68779686     -0.05058637   -11102.43      0.00000000        0.00      0.0000
     2   1   -192.65389530     -0.01668481    -3661.89      0.03390156     7440.53      0.9225
     3   1   -192.65389530     -0.01668481    -3661.89      0.03390156     7440.53      0.9225
     4   1   -192.65389528     -0.01668479    -3661.89      0.03390158     7440.54      0.9225
     5   1   -192.64032250     -0.00311201     -683.01      0.04747436    10419.42      1.2918
     6   1   -192.64032249     -0.00311200     -683.00      0.04747437    10419.42      1.2918
     7   1   -192.64032173     -0.00311124     -682.84      0.04747513    10419.59      1.2919
     8   1   -192.64032172     -0.00311124     -682.84      0.04747514    10419.59      1.2919
     9   1   -192.64032171     -0.00311123     -682.84      0.04747515    10419.59      1.2919
    10   1   -192.59415758      0.04305291     9449.02      0.09363928    20551.45      2.5481
    11   1   -192.59415753      0.04305296     9449.03      0.09363933    20551.46      2.5481
    12   1   -192.59415751      0.04305298     9449.04      0.09363935    20551.46      2.5481
    13   1   -192.59415684      0.04305364     9449.18      0.09364002    20551.61      2.5481
    14   1   -192.59415682      0.04305367     9449.19      0.09364004    20551.61      2.5481
    15   1   -192.55567455      0.08153593    17895.07      0.13212231    28997.49      3.5952
    16   1   -192.49198909      0.14522140    31872.41      0.19580777    42974.84      5.3282
    17   1   -192.49198908      0.14522141    31872.42      0.19580778    42974.84      5.3282
    18   1   -192.49198899      0.14522150    31872.43      0.19580787    42974.86      5.3282
    19   1   -192.48634521      0.15086528    33111.10      0.20145165    44213.53      5.4818
    20   1   -192.48537859      0.15183189    33323.25      0.20241827    44425.67      5.5081
    21   1   -192.48537853      0.15183196    33323.26      0.20241833    44425.69      5.5081
    22   1   -192.48537825      0.15183224    33323.32      0.20241861    44425.75      5.5081
    23   1   -192.48448638      0.15272411    33519.07      0.20331048    44621.49      5.5324
    24   1   -192.48448629      0.15272420    33519.09      0.20331057    44621.51      5.5324
    25   1   -192.48448581      0.15272468    33519.19      0.20331105    44621.62      5.5324
    26   1   -192.48448554      0.15272495    33519.25      0.20331132    44621.68      5.5324
    27   1   -192.48448551      0.15272498    33519.26      0.20331135    44621.68      5.5324
    28   1   -192.43795556      0.19925493    43731.40      0.24984130    54833.83      6.7985
    29   1   -192.43795552      0.19925497    43731.41      0.24984134    54833.84      6.7985
    30   1   -192.43795536      0.19925512    43731.44      0.24984150    54833.87      6.7985
    31   1   -192.43586756      0.20134293    44189.67      0.25192930    55292.09      6.8553
    32   1   -192.43586742      0.20134307    44189.70      0.25192944    55292.12      6.8553
    33   1   -192.43586716      0.20134333    44189.75      0.25192970    55292.18      6.8554
    34   1   -192.43586701      0.20134348    44189.79      0.25192985    55292.21      6.8554
    35   1   -192.43586679      0.20134370    44189.83      0.25193007    55292.26      6.8554
    36   1   -192.43461883      0.20259166    44463.73      0.25317803    55566.16      6.8893
    37   1   -192.43461883      0.20259166    44463.73      0.25317803    55566.16      6.8893
    38   1   -192.43461866      0.20259182    44463.77      0.25317820    55566.19      6.8893
    39   1   -192.43461859      0.20259190    44463.78      0.25317827    55566.21      6.8893
    40   1   -192.43461851      0.20259198    44463.80      0.25317835    55566.22      6.8893
    41   1   -192.43461846      0.20259203    44463.81      0.25317840    55566.24      6.8893
    42   1   -192.43461843      0.20259205    44463.82      0.25317842    55566.24      6.8893
    43   1   -192.43236363      0.20484686    44958.69      0.25543323    56061.11      6.9507
    44   1   -192.43236362      0.20484687    44958.69      0.25543324    56061.12      6.9507
    45   1   -192.43236353      0.20484696    44958.71      0.25543333    56061.14      6.9507
    46   1   -192.42871968      0.20849080    45758.44      0.25907717    56860.87      7.0498
    47   1   -192.42871942      0.20849106    45758.50      0.25907744    56860.92      7.0499
    48   1   -192.42871897      0.20849152    45758.60      0.25907789    56861.02      7.0499
    49   1   -192.42871861      0.20849188    45758.68      0.25907825    56861.10      7.0499
    50   1   -192.42871824      0.20849224    45758.76      0.25907861    56861.18      7.0499
    51   1   -192.41973665      0.21747384    47729.99      0.26806021    58832.42      7.2943

 E0 =   -192.63721049 is the energy of the lowest zeroth-order state
 E1 =   -192.68779686 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00181877  0.70597706 -0.00033156  0.00002455  0.00038897  0.00212728 -0.54357363 -0.00080597
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.53652833 -0.00239317  0.00000112 -0.00000008  0.08338899  0.62265368  0.00187921 -0.00013610
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00002330  0.00265476  0.70597570  0.00020035  0.00009481 -0.00109423  0.54400841
                                0.00000000  0.00000000  0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000  0.00000623  0.01326056 -0.00004987  0.00000179  0.00000079 -0.00104882 -0.00031992
                               -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000000  0.01326331 -0.00000623  0.00000046 -0.00000490 -0.00000076  0.02508021  0.00003717
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000050  0.00000000 -0.00000018  0.00000000  0.04975975 -0.00666416  0.00000964 -0.00001712
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000000 -0.00000044  0.00004992  0.01326341 -0.00000924 -0.00000437  0.00005050 -0.02510012
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000000  0.00000360  0.00766356 -0.00002890 -0.00000195 -0.00000152  0.00181521  0.00055384
                               -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000000  0.00681310 -0.00000320  0.00000030 -0.00000044 -0.00000007  0.00225593  0.00000332
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.02598309  0.00000000 -0.00000000 -0.00000063  0.00034705  0.00258392  0.00000015 -0.00000037
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000241  0.00000028 -0.00002562 -0.00681261  0.00000080  0.00000015 -0.00000452  0.00225696
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.00000000 -0.00001974 -0.04202011  0.00015801 -0.00000000 -0.00000000  0.00000007  0.00000002
                                0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.53652862  0.00239317 -0.00000112  0.00000008  0.58092797  0.23910955  0.00196529 -0.00025224

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00181877  0.70597581 -0.00033156  0.00002455 -0.00207557 -0.00082712  0.54357492  0.00080637

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000077  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00033166 -0.70597497  0.00265475 -0.00002440 -0.00001905  0.02271845  0.00692981

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000018  0.00000002  0.00000485  0.00001849  0.00000875 -0.00010064  0.05020024

 17  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.01910861 -0.04642528  0.00000228  0.00000105

 18  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.01326324  0.00000623 -0.00000046 -0.00000490 -0.00000076  0.02508010  0.00003650

 19  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000623  0.01326306 -0.00004997 -0.00000113 -0.00000088  0.00104821  0.00031973

 20  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000051 -0.00005766 -0.01531359  0.00000001  0.00000000 -0.00000004  0.00001661

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.02598320  0.00000000 -0.00000006  0.00000000 -0.00241090 -0.00099233 -0.00000051  0.00000106

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00681331  0.00000383 -0.00000024 -0.00000044 -0.00000007  0.00225643  0.00000335

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000023  0.00000383  0.00681340 -0.00002562 -0.00000012 -0.00000009  0.00009411  0.00002877

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000139 -0.00015802 -0.04202083 -0.00000000 -0.00000000  0.00000000 -0.00000023

 25  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000077  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00033157  0.70598097 -0.00026158 -0.00002508 -0.00001937  0.02272197  0.00508564

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00002443  0.00026159  0.70598041 -0.00020027 -0.00009474  0.00101721 -0.54402906

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.53653140 -0.00000000 -0.00000000 -0.00000000 -0.49754233  0.38354621 -0.00008607  0.00011614

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.01326617 -0.00000623  0.00000064 -0.00000490 -0.00000076  0.02506590  0.00003748

 29  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000623 -0.01326322  0.00004988 -0.00000113 -0.00000088  0.00104821  0.00031974

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000061  0.00004988  0.01326336  0.00000924  0.00000437 -0.00005082  0.02510011

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000078 -0.00000005  0.00000000 -0.00000000 -0.03065107 -0.03976119 -0.00000709  0.00001817

 32  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00765484  0.00000360 -0.00000027 -0.00000831 -0.00000109  0.04344840  0.00006438

 33  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000023  0.00000320  0.00681305 -0.00002562  0.00000012  0.00000007 -0.00009429 -0.00002876

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000242  0.00000023 -0.00002562 -0.00681275 -0.00000102 -0.00000025  0.00000454 -0.00225723

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.02598307  0.00000000  0.00000006  0.00000063 -0.00206573  0.00159053 -0.00000036  0.00000069

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.04202028 -0.00001973  0.00000146 -0.00000000 -0.00000000  0.00000140  0.00000000

 37  1     1    1  |0 0>        0.00000000  0.00000002 -0.00000061 -0.00000000 -0.00081070 -0.00023234 -0.04311925 -0.01132869
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000000 -0.00000068 -0.00000002  0.00000000  0.00268778 -0.00072689  0.63414451 -0.00059916
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000011 -0.00343425 -0.00255644 -0.00015889  0.63549950
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00000023  0.00000000 -0.00000000  0.00000000  0.60505861  0.19465923 -0.00238885  0.00403872
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000003  0.00000000  0.00000000 -0.00000000  0.19466670 -0.60507143 -0.00151311 -0.00138063
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.36225890 -0.00000000  0.00000000  0.00000000  0.00000015  0.00000007  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000  0.00002517  0.02716425 -0.00010518 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000000  0.02716450 -0.00002516  0.00000099 -0.00000000 -0.00000000  0.00000007  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000 -0.00000089  0.00010519  0.02716424 -0.00000000  0.00000000 -0.00000000  0.00000002
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000003  0.00000000 -0.00000051 -0.00000073  0.00060880  0.00018330
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00000000  0.00000014 -0.00000000 -0.00000000  0.00000240  0.00000043 -0.01463375 -0.00002265
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000006 -0.00000520 -0.00000251  0.00003025 -0.01464523
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>       -0.00000033 -0.00000000 -0.00000000  0.00000000 -0.01430452 -0.00313926 -0.00000247  0.00000561
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>        0.00000036  0.00000000 -0.00000000 -0.00000000 -0.00313923  0.01430451 -0.00000006 -0.00000133
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.05607984 -0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000008 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+      -0.02273045 -0.00721609  0.45048510  0.00028957 -0.00070803  0.00165238 -0.00070858 -0.00043621
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00005125  0.00002642 -0.00155597 -0.00029199 -0.25146880  0.45543196 -0.20902941  0.00000148
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00689011  0.00118335  0.00030947 -0.45054392  0.00032932 -0.00010602  0.00000000 -0.00000002
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.02509271  0.01114118  0.00017845  0.00002939  0.00000001 -0.00000001 -0.00000000 -0.00003393
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00104877 -0.00017837  0.01113515  0.00000718  0.00000357  0.00000268 -0.00000000 -0.46361762
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00000215  0.00000055 -0.00000884  0.00001171  0.01949789  0.01076532  0.00000027  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00031816  0.00002913  0.00000765 -0.01113591  0.00000814 -0.00000262  0.00000000 -0.00002612
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.04342851 -0.01928225 -0.00030884 -0.00005079  0.00000043  0.00000027 -0.00000000 -0.00001960
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00009434  0.00032419 -0.02023856 -0.00001288 -0.00000649 -0.00000488  0.00000000 -0.00609344
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00000010  0.00000009 -0.00000130 -0.00001495 -0.01129706  0.02046104 -0.01471436 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00002859  0.00005317  0.00001373 -0.02024117  0.00001585 -0.00000666  0.00000137  0.00000029
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.00000164 -0.00000075 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001322
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00004447  0.00001132 -0.00136269 -0.00038345 -0.52015051  0.00993775  0.20902934 -0.00000148

 14  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.02273054  0.00721615 -0.45048581 -0.00028926  0.00161883 -0.00014221 -0.00070858 -0.00043573

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.54353503  0.45048677  0.00721535  0.00118815 -0.00001009 -0.00000630 -0.00000000  0.00000003

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00063582 -0.00005850 -0.00001515  0.02227277 -0.00001628  0.00000524 -0.00000000  0.00000615

 17  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000088  0.00000042 -0.00000549 -0.00000493  0.00042546  0.02226835  0.00000002  0.00000000

 18  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00104875 -0.00017837  0.01113547  0.00000689  0.00000357  0.00000268  0.00000000  0.46360748

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.02507816 -0.01113548 -0.00017836 -0.00002937  0.00000025  0.00000016 -0.00000000 -0.00003394

 20  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000036  0.00000005 -0.00000000  0.00000736 -0.00000001  0.00000000  0.00000000  0.00003017

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000016  0.00000041 -0.00000739  0.00001718  0.02336857 -0.00044647 -0.01471428  0.00000000

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00009415  0.00032606 -0.02023805 -0.00001305 -0.00000649 -0.00000488 -0.00000000  0.00609358

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00225661  0.02023797  0.00032603  0.00005338 -0.00000025 -0.00000029 -0.00000013 -0.00000101

 24  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000011  0.00000000 -0.00000000  0.00000000 -0.00001018

 25  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.54355389  0.45048016  0.00721425  0.00271542 -0.00001121 -0.00000594 -0.00000000 -0.00000003

 26  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00504756 -0.00271043 -0.00033393  0.45053734 -0.00032928  0.00010604  0.00000000 -0.00000002

 27  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000678  0.00001510 -0.00019327  0.00009146  0.26868323  0.44549676  0.20903052 -0.00000000

 28  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00104817 -0.00017826  0.01112864  0.00000733  0.00000357  0.00000268 -0.00000000 -0.46370788

 29  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.02507830 -0.01113494 -0.00017835 -0.00002937  0.00000025  0.00000016  0.00000000  0.00003394

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00031789 -0.00002925 -0.00000780  0.01113613 -0.00000814  0.00000262 -0.00000000 -0.00001996

 31  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000271 -0.00000028  0.00000347 -0.00001665 -0.01907256  0.01150204 -0.00000043  0.00000160

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00181686 -0.00030899  0.01928994  0.00001244  0.00000630  0.00000458  0.00000000  0.26749874

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00225586 -0.02023861 -0.00032416 -0.00005338  0.00000035  0.00000011 -0.00000013 -0.00000045

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00002859 -0.00005316 -0.00001390  0.02024108 -0.00001367  0.00000662  0.00000137  0.00000034

 35  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000005  0.00000051 -0.00000868  0.00000223  0.01207022  0.02001466  0.01471421  0.00000000

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000006 -0.00000001  0.00000063  0.00000000  0.00000000  0.00000000 -0.00000000  0.18064981

 37  1     1    1  |0 0>        0.63404955  0.76929846 -0.00777964 -0.00187275 -0.00108146 -0.00009893 -0.00000000 -0.00000002
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.04311817  0.00778165  0.76929166 -0.00105631  0.00310753  0.00221796  0.00000000  0.00000084
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.01133846  0.00187543  0.00105654  0.76931418 -0.00587075  0.00157851  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00075466  0.00106677 -0.00323810  0.00576717  0.76792036  0.04620827 -0.00000006 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00010039  0.00000859 -0.00203018 -0.00192553 -0.04620384  0.76794473 -0.00000004 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000005  0.00000008  0.93112604  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00000003 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00026538
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000000  0.00000000 -0.00000007 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.50083646
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00002825
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.01463098  0.02382056  0.00038598  0.00006808 -0.00000063 -0.00000074 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00060920 -0.00038606  0.02382252  0.00001687  0.00000834  0.00000599 -0.00000000 -0.00000615
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>       -0.00018222 -0.00006780 -0.00001796  0.02382554 -0.00001773  0.00000556 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.00000062  0.00000084 -0.00000917  0.00001665  0.02353727  0.00368568 -0.00000022 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000062  0.00000074 -0.00000461 -0.00000824 -0.00368568  0.02353727  0.00000027  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000018 -0.00000007  0.03568527  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00000003  0.00000002  0.00011812 -0.02274690  0.00000344 -0.00000028 -0.00000032  0.01184887
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.03484616  0.00007711 -0.00000001  0.00000000 -0.00000000 -0.00004090
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.00043682 -0.00000000 -0.00000028 -0.00000013  0.02274495 -0.01185279 -0.00000032
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000001  0.00000000

  4  1     4    1  |1 1>+      -0.46353301  0.00000462 -0.00000000 -0.00002716 -0.17963253 -0.00000103 -0.00005025 -0.00004935
                               -0.00000052  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00003394  0.00002612  0.00000000  0.17967999 -0.00002717  0.00000222 -0.00000816  0.30083306
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000616  0.00000000 -0.00006338 -0.00000000  0.00000239 -0.00000000 -0.00000391 -0.00001195
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00000623 -0.46360683  0.00000000  0.00000222  0.00000041 -0.17972957 -0.30082031 -0.00000815
                                0.00000000  0.00000080  0.00000000 -0.00000000  0.00000000  0.00000004  0.00000019  0.00000000

  8  1     8    1  |1 1>+      -0.26780422  0.00000545  0.00000001 -0.00001571 -0.10392644  0.00000048  0.00008877  0.00008541
                               -0.00000030 -0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00000045  0.00000029 -0.00000003 -0.50307485  0.00007606 -0.00000183 -0.00001059  0.29520429
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00000000  0.00000057  0.50302122 -0.00000004  0.00000001 -0.00004676  0.00002753  0.00001816
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00000006  0.00609004 -0.00004675  0.00000182  0.00000289 -0.50302691  0.29527425  0.00001058
                               -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000012 -0.00000019 -0.00000000

 12  1    12    1  |1 1>+      -0.18064676  0.00000180 -0.00000001  0.00007646  0.50566185  0.00000291  0.00000002  0.00000002
                               -0.00000020  0.00000000  0.00000000  0.00000000  0.00000012 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.03484404 -0.00007710  0.00000001 -0.00000000  0.00000008 -0.00004031

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000003  0.00000002  0.00011812 -0.02274365  0.00000344 -0.00000028  0.00000032 -0.01185479

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000
                                0.00043577 -0.00000000  0.00000000 -0.00000344 -0.02274325 -0.00000013 -0.00000198 -0.00000194

 16  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000038  0.00000000
                               -0.00000000 -0.00017853  0.00000000 -0.00000239  0.00000000 -0.00004293  0.60164028  0.00002031

 17  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000628 -0.00000000  0.00000001  0.00000001 -0.00000209 -0.00003371

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00003394 -0.00002612  0.00000000 -0.17976471  0.00002718 -0.00000223 -0.00001616  0.30079744

 19  1     7    1  |1 0>        0.00000052  0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000 -0.00000000
                               -0.46360591  0.00000783  0.00000001 -0.00002718 -0.17978455  0.00000021  0.00005022  0.00004932

 20  1     8    1  |1 0>        0.00000000  0.00000093  0.00000000 -0.00000000  0.00000000  0.00000005  0.00000000  0.00000000
                                0.00000812  0.53533476 -0.00000000 -0.00000257 -0.00000011  0.20751963  0.00019153  0.00000001

 21  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000005  0.00000000  0.50307370 -0.00000004 -0.00000439  0.00000001  0.00000187 -0.00000323

 22  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000101 -0.00000035  0.00000004  0.50299151 -0.00002930  0.00000623 -0.00000801  0.29533578

 23  1    11    1  |1 0>        0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000012  0.00000000  0.00000000 -0.00000000
                               -0.00609935  0.00000006  0.00000439  0.00002930  0.50297568  0.00000289  0.00004931  0.00002098

 24  1    12    1  |1 0>       -0.00000000 -0.00000031  0.00000000 -0.00000000  0.00000000  0.00000012 -0.00000000  0.00000000
                               -0.00000180 -0.18063764 -0.00000001 -0.00000626 -0.00000291  0.50566788 -0.00002269  0.00000000

 25  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00043630 -0.00000148 -0.00000000  0.00000344  0.02274744  0.00007724  0.00003820 -0.00000194

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000001  0.00000000
                                0.00000147 -0.00043682 -0.00000000 -0.00000029 -0.00007724  0.02274575  0.01185100  0.00000033

 27  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.03484669  0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00000060

 28  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00003395  0.00001997  0.00000000  0.17971806 -0.00002717 -0.00000016 -0.00000416  0.30066266

 29  1     5    1  |1 1>-      -0.00000052  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000
                                0.46361761 -0.00000463 -0.00000000  0.00002717  0.17966856  0.00000103  0.00005023  0.00004932

 30  1     6    1  |1 1>-      -0.00000000 -0.00000080  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000019  0.00000000
                               -0.00000462 -0.46360793  0.00000000 -0.00000016  0.00000103 -0.17971275  0.30083046  0.00000416

 31  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00006289 -0.00000062  0.00000001  0.00000001  0.00000182 -0.00001863

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00001958 -0.00001507  0.00000000 -0.10378443  0.00001569 -0.00000129 -0.00001414  0.52112204

 33  1     9    1  |1 1>-       0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000012  0.00000000 -0.00000000  0.00000000
                               -0.00609490  0.00000006  0.00000439  0.00007606  0.50308801  0.00000293 -0.00004926 -0.00004840

 34  1    10    1  |1 1>-       0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000019 -0.00000000
                                0.00000006  0.00609534 -0.00004675  0.00000623  0.00000292 -0.50304932 -0.29523922 -0.00000801

 35  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000005 -0.00000057 -0.50301358  0.00000001  0.00000439  0.00004675  0.00002941  0.00001494

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00001322 -0.00001018  0.00000001  0.50566027 -0.00007646  0.00000626 -0.00000000  0.00008381

 37  1     1    1  |0 0>        0.00000093 -0.00000000 -0.00000000 -0.00000013 -0.00000663  0.00000001  0.00021335  0.00107483
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00000002 -0.00000000  0.00000001  0.00000489 -0.00000017  0.00000000  0.00008667 -0.04086542
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000000  0.00000007 -0.00000003  0.00000001 -0.00000003 -0.00000152 -0.04087880 -0.00008189
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000

 40  1     4    1  |0 0>        0.00000000  0.00000000  0.00000374 -0.00000002 -0.00000001 -0.00000001 -0.00027693  0.00015888
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000007 -0.00000001 -0.00000000  0.00000000  0.00009097  0.00010121
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000000  0.02868190  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.50083756 -0.00006100  0.00000001  0.00010994 -0.35988532  0.00003816 -0.00000001  0.00000001
                                0.00000056  0.00000000 -0.00000000 -0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00026539 -0.00002822  0.00000000  0.35988631  0.00010994  0.00000445 -0.00000000  0.00005397
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00006098  0.50084776  0.00000000  0.00000446 -0.00003816 -0.35987054  0.00001499 -0.00000000
                                0.00000000 -0.00000087  0.00000000 -0.00000000 -0.00000000  0.00000008 -0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000826 -0.00000000 -0.00000001 -0.00000000  0.00008832  0.00000001  0.00002830  0.00001222
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 47  1    11    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00006475 -0.00000001 -0.00000000  0.00001931  0.52984263
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00000000 -0.00000063  0.00000000  0.00000000 -0.00000002  0.00002016  0.52984135 -0.00001931
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000033 -0.00000000

 49  1    13    1  |0 0>        0.00000000  0.00000000 -0.00005399  0.00000000  0.00000000 -0.00000001  0.00000383 -0.00001662
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00000000 -0.00000000  0.00000623 -0.00000000  0.00000001  0.00000001 -0.00000141 -0.00003320
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000000  0.00000000  0.48620828 -0.00000000  0.00000001  0.00000001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.00000194  0.00003080  0.00003553 -0.02577244  0.00000368  0.00000060  0.01264411 -0.00000117
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000057  0.00891233  0.01038580  0.00008737 -0.00000001 -0.00000000 -0.00004260  0.00000012
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000198 -0.00000006  0.00000005 -0.00000060  0.00000139 -0.02577214 -0.00000117 -0.01264479
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000001

  4  1     4    1  |1 1>+       0.30101716  0.00000077  0.00001559  0.00003263  0.22838470  0.00001231 -0.00004402 -0.00006734
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000008 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00004932  0.00001496  0.00000827  0.22841288 -0.00003264 -0.00000533  0.26717864 -0.00002465
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00003111  0.45667692 -0.39169227 -0.00000000 -0.00000304  0.00000000  0.00002978 -0.00000540
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00005335 -0.00000153  0.00000121  0.00000533 -0.00001152  0.22844774 -0.00002462 -0.26708955
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000006 -0.00000000 -0.00000025

  8  1     8    1  |1 1>+      -0.52092445  0.00000918 -0.00003599  0.00001886  0.13199408  0.00000575  0.00007617  0.00011811
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000005 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00004839  0.00001469  0.00000813  0.40811747 -0.00005831 -0.00000595 -0.44234553  0.00004467
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+       0.00001399 -0.22193985 -0.25884568  0.00000003 -0.00000000 -0.00003793  0.00000903 -0.00003696
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00004930  0.00002214  0.00002288 -0.00000595  0.00002200 -0.40807525 -0.00004465 -0.44234586
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000011 -0.00000000 -0.00000041

 12  1    12    1  |1 1>+      -0.00010913 -0.00000000 -0.00000001 -0.00000583 -0.04080996 -0.00000220 -0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000098 -0.00454319  0.01291452 -0.00008737  0.00000001  0.00000000 -0.00004343  0.00000019

 14  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000194  0.00001481 -0.00004410 -0.02577277  0.00000368  0.00000060 -0.01264344  0.00000117

 15  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                                0.01185739 -0.00000021  0.00000082  0.00000368  0.02577249  0.00000139 -0.00000208 -0.00000318

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000050
                                0.00010045  0.00000307 -0.00000242 -0.00000303 -0.00000000  0.00007830  0.00005284  0.53448258

 17  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000380  0.56755817  0.19964122  0.00000000 -0.00000000 -0.00000000  0.00002310  0.00000106

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00004932  0.00001496  0.00000827 -0.22842036  0.00003263  0.00000533  0.26723206 -0.00003176

 19  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000000 -0.00000000 -0.00000000
                               -0.30078971  0.00000530 -0.00002078  0.00003264  0.22841816  0.00001073  0.00004398  0.00006730

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000007 -0.00000000 -0.00000000
                                0.00000184 -0.00000000 -0.00000000 -0.00000616  0.00001285 -0.26376089  0.00000001  0.00018028

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00002162 -0.11311318  0.32158546  0.00000002 -0.00000357 -0.00000000  0.00002015 -0.00000655

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00002097  0.00001468  0.00000813 -0.40807983  0.00009624  0.00000952 -0.44233887  0.00004079

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000015  0.00000000  0.00000000  0.00000000
                               -0.29536066  0.00000421 -0.00001759  0.00009623  0.40806880  0.00002199 -0.00003169 -0.00011140

 24  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000001 -0.00000095  0.00000220 -0.04081149  0.00000000  0.00000519

 25  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.01184942 -0.00000021  0.00000082 -0.00000368 -0.02577246 -0.00008875 -0.00000208  0.00003968

 26  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000001
                               -0.00003819  0.00000006 -0.00000005 -0.00000059  0.00008875 -0.02577214  0.00000117  0.01264428

 27  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000041  0.01345101 -0.00251944  0.00000000  0.00000000  0.00000000  0.00000083 -0.00000007

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00004930  0.00001495  0.00000826  0.22847635 -0.00003264 -0.00000229  0.26709256 -0.00002109

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000008 -0.00000000 -0.00000000 -0.00000000
                               -0.30084354  0.00000530 -0.00002078 -0.00003264 -0.22840634 -0.00001231  0.00004397  0.00006729

 30  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000006 -0.00000000 -0.00000025
                                0.00005023  0.00000154 -0.00000121  0.00000229 -0.00001231  0.22843480  0.00002106  0.26711070

 31  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00003890  0.11089512  0.59133559 -0.00000079 -0.00000000 -0.00000000 -0.00000391  0.00000647

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00008544  0.00002525  0.00001078 -0.13182737  0.00001884  0.00000307  0.46285691 -0.00004267

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000015  0.00000000 -0.00000000 -0.00000000
                                0.29518308 -0.00000228  0.00001984  0.00005832  0.40812718  0.00002202  0.00007281  0.00011137

 34  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000011 -0.00000000 -0.00000041
                               -0.00004927 -0.00003265  0.00000704 -0.00000951  0.00002202 -0.40809600  0.00004078  0.44233418

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000767 -0.33512277  0.06290094  0.00000000  0.00000357  0.00003793  0.00002918 -0.00004351

 36  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000002  0.00000001  0.00000000  0.04081466 -0.00000583 -0.00000095 -0.00002541  0.00000000

 37  1     1    1  |0 0>       -0.04086533  0.00002459 -0.00005406 -0.00000004  0.00000297 -0.00000000  0.00126836  0.00025576
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00107462 -0.00015640  0.00010339  0.00000173  0.00000008 -0.00000000 -0.04822136  0.00010552
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00021517  0.00002891 -0.00029009  0.00000000  0.00000002  0.00000088 -0.00009977 -0.04823613
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005

 40  1     4    1  |0 0>       -0.00005668 -0.01657307  0.03736814 -0.00000001  0.00000000  0.00000001  0.00018563 -0.00032645
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00000257 -0.03736955 -0.01657330 -0.00000000  0.00000000 -0.00000000  0.00011478  0.00010704
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000114 -0.00000261 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00007271  0.00000000  0.00000001  0.00041969  0.69999403 -0.00004053  0.00000001 -0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000026 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000002  0.00000000  0.00000000  0.69999163 -0.00041969 -0.00001634  0.00003851 -0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000001  0.00000000  0.00000001  0.00001637  0.00004052  0.69999829 -0.00000000  0.00001480
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000019  0.00000000  0.00000000

 46  1    10    1  |0 0>        0.52983194 -0.00001870  0.00003540  0.00000000  0.00000434  0.00000000 -0.00000945  0.00001326
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00001222  0.00003709  0.00000180 -0.00000148 -0.00000000 -0.00000000 -0.42148270  0.00001207
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00002830 -0.00000065  0.00000403 -0.00000000 -0.00000000  0.00000326 -0.00001207 -0.42150592
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000039

 49  1    13    1  |0 0>        0.00004002  0.25988212 -0.46171125  0.00000000 -0.00000000 -0.00000000 -0.00000648 -0.00000041
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.00000107  0.46171001  0.25988171 -0.00000000  0.00000000  0.00000000 -0.00001259 -0.00000168
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.00000001  0.00002055 -0.00004806 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+      -0.00000208 -0.00002698  0.00004121 -0.00000042 -0.00000000  0.00000000  0.00000000 -0.00000127
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000046 -0.00781801  0.01232521  0.00000000  0.00000000  0.00000000  0.00000096  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000318 -0.00000016  0.00000002  0.00000000  0.00000000 -0.00000180  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.26739632 -0.00000933  0.00000397  0.00001450  0.71861230  0.00000148  0.00001737 -0.00000049
                               -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00006244 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00004396 -0.00001004 -0.00001198 -0.68795187  0.00001391 -0.00000677 -0.00000136  0.24510052
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00002215  0.45125941  0.28618988  0.00000100 -0.00001785  0.00000014  0.57736471  0.00000601
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000

  7  1     7    1  |1 1>+       0.00007004 -0.00000344  0.00000039  0.00000355  0.00000304 -0.52138354  0.00000068  0.00000662
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000122 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.46266708  0.00002654 -0.00000028  0.00000104  0.04690299  0.00000346 -0.00000235 -0.00000176
                                0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000408  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00007280  0.00001664  0.00001981  0.00002077 -0.00000000 -0.00000001  0.00000000  0.00002675
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00001597 -0.27362833  0.43136833 -0.00000000  0.00000000 -0.00000001  0.00004788  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+       0.00011141  0.00001974 -0.00003945  0.00000000  0.00000000 -0.00008471 -0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00002713 -0.00000000 -0.00000000  0.00000000  0.00000213  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000084 -0.01458222 -0.00060821  0.00000000  0.00000000 -0.00000000  0.00000015 -0.00000000

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000208  0.00004991  0.00000263  0.00000066 -0.00000000  0.00000000 -0.00000000 -0.00000013

 15  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01264144 -0.00000073  0.00000001 -0.00000000 -0.00000101 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000135  0.00000000 -0.00000000
                               -0.00013460  0.00000688 -0.00000077  0.00001251  0.00000136 -0.57337186  0.00000021  0.00002796

 17  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000
                                0.00000160 -0.02227735  0.53395372 -0.00000100  0.00000829 -0.00000014 -0.57731022 -0.00000601

 18  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00004397 -0.00001004 -0.00001198  0.06533846 -0.00000118  0.00003415 -0.00000768  0.72735951

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000468  0.00000000  0.00000000  0.00000000
                                0.26722195  0.00001533 -0.00000017 -0.00000120 -0.05385204  0.00000015  0.00000271  0.00000202

 20  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000021  0.00000000 -0.00000000
                               -0.00000165  0.00000000 -0.00000000 -0.00001400  0.00000273  0.09001477  0.00000081 -0.00002018

 21  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00002540  0.51039787  0.02128661  0.00000000 -0.00000001 -0.00000000 -0.00000686  0.00000000

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00003169  0.00001665  0.00001984  0.00002708 -0.00000001 -0.00000001  0.00000000  0.00002212

 23  1    11    1  |1 0>        0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.44237829 -0.00002091  0.00000046 -0.00000001 -0.00003242 -0.00000000  0.00000001  0.00000001

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000011 -0.00000000 -0.00000000

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.01264107 -0.00000072  0.00000001  0.00000000 -0.00000004  0.00000001 -0.00000000  0.00000000

 26  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00003967  0.00000017 -0.00000002  0.00000000  0.00000000  0.00000155 -0.00000000  0.00000000

 27  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000038  0.00676475  0.01293393  0.00000000  0.00000000  0.00000000  0.00000088  0.00000000

 28  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00004396 -0.00001003 -0.00001197  0.72060728 -0.00001450  0.00002836 -0.00000249  0.11876343

 29  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00006010  0.00000000 -0.00000000  0.00000000
                                0.26717635  0.00001533 -0.00000016  0.00001390  0.69173435  0.00000128  0.00001105  0.00000051

 30  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000147 -0.00000000  0.00000000
                               -0.00006727  0.00000344 -0.00000039 -0.00002930  0.00000003  0.62554075  0.00000025 -0.00003151

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000
                                0.00002732 -0.47351250  0.24761360  0.00000066 -0.00000829  0.00000014  0.57737588  0.00000223

 32  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00007618 -0.00001455 -0.00002223 -0.05637598  0.00000102 -0.00002296  0.00000319 -0.62989612

 33  1     9    1  |1 1>-      -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.44237092  0.00002331 -0.00000424  0.00000000  0.00001538  0.00000000 -0.00000001 -0.00000001

 34  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00011138  0.00002771  0.00004143  0.00000000 -0.00000000  0.00007690  0.00000000  0.00000001

 35  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000942  0.23674797  0.45265479 -0.00000000 -0.00000001 -0.00000000  0.00004719  0.00000000

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000263  0.00000000 -0.00000000 -0.00000000  0.00001304

 37  1     1    1  |0 0>        0.04822163  0.00006879  0.00000911 -0.00000007  0.00000253  0.00000004 -0.00000000 -0.00000005
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00126808 -0.00016938 -0.00013600  0.00000258  0.00000007  0.00000001 -0.00000001  0.00000180
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.00025800  0.00033698 -0.00006715  0.00000001  0.00000001 -0.00000736 -0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00006626 -0.04788591 -0.00581712 -0.00000001  0.00000000 -0.00000005  0.00000030 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00000284  0.00581713 -0.04788662 -0.00000001  0.00000000  0.00000002 -0.00000366 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000004  0.00000017 -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00005650 -0.00000001  0.00000000 -0.00000001 -0.00000944  0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000002 -0.00000000 -0.00000000 -0.00001348  0.00000001  0.00000000  0.00000000 -0.00002148
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     9    1  |0 0>       -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000329 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>        0.42143841  0.00002543  0.00000715  0.00000000  0.00001879 -0.00000001 -0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00000945  0.00000363  0.00001369  0.00001901 -0.00000001 -0.00000001 -0.00000000  0.00001598
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00001327  0.00000004  0.00000173 -0.00000000 -0.00000000 -0.00005799  0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00002637 -0.41160007 -0.09037280 -0.00000000  0.00000000 -0.00000000 -0.00000181 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>        0.00000153  0.09036224 -0.41162405  0.00000000 -0.00000000 -0.00000000 -0.00003073 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000000 -0.00000773 -0.00000206  0.00000000  0.00000000 -0.00000000 -0.00000049  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.02023877  0.00000035 -0.00000062 -0.02672494  0.00000051 -0.00000569
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00006861 -0.00000000  0.00000000  0.00009059 -0.00000001 -0.00000086
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.00000047 -0.00000062  0.00000007  0.02024079  0.00000051  0.02672367  0.00000907
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.12970307  0.00000019  0.00000035  0.02020032 -0.00000007  0.00001350  0.00002154 -0.06349930
                                0.00000281 -0.00000000  0.00000000  0.00000014 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+      -0.00000078 -0.00000529 -0.02020466  0.00000035 -0.00000061 -0.06345130  0.00000121 -0.00001350
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00000104 -0.00000062 -0.00000000 -0.00000027 -0.00000000 -0.00000507  0.00000052  0.00001097
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000630  0.51141022 -0.00000062  0.00000014  0.02022553  0.00000120  0.06346338  0.00002219
                                0.00000000 -0.00000338 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+      -0.63079076  0.00000946  0.00000021  0.01170304 -0.00000016 -0.00002337 -0.00003766  0.10991135
                                0.00001364 -0.00000000  0.00000000  0.00000008 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000001 -0.00000000  0.28341225 -0.00000497  0.00000615 -0.46553174  0.00001294 -0.00009899
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000002  0.00000000  0.00002634  0.00000001 -0.00004313  0.00001532
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00000000  0.00001544 -0.00000615  0.00000095  0.28343575 -0.00001291 -0.46556158 -0.00015794
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.00001437 -0.00000000  0.00001476  0.84157094 -0.00000282  0.00000001  0.00000001 -0.00001800
                               -0.00000000  0.00000000  0.00000000  0.00000583 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00006861  0.00000000 -0.00000000  0.00009166 -0.00000012 -0.00000255

 14  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.02024100  0.00000035 -0.00000062  0.02672330 -0.00000051  0.00000569

 15  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000014 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000003  0.00000000 -0.00000035 -0.02024163  0.00000007  0.00000568  0.00000907 -0.02672285

 16  1     4    1  |1 0>       -0.00000000  0.00000044 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000112  0.06696448  0.00000026  0.00000000  0.00000483 -0.00000325 -0.12689040 -0.00004305

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000276  0.00000063 -0.00000000 -0.00000000 -0.00000000 -0.00000254  0.00000024  0.00000193

 18  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000199  0.00001628  0.02020279 -0.00000035  0.00000062 -0.06344786  0.00000289 -0.00001350

 19  1     7    1  |1 0>        0.00001575 -0.00000000 -0.00000000 -0.00000014  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.72830259 -0.00000985  0.00000035  0.02020687 -0.00000021 -0.00001350 -0.00002152  0.06345947

 20  1     8    1  |1 0>       -0.00000000  0.00000509 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00001114  0.76935107  0.00000071 -0.00000020 -0.02332772 -0.00000000 -0.00004316 -0.00000040

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000002  0.00000248  0.00000000  0.00001864 -0.00000199 -0.00004886

 22  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000001 -0.28343710 -0.00002137 -0.00000862 -0.46556261  0.00000885 -0.00005573

 23  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000196 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00003073  0.00000000  0.00002137 -0.28343863  0.00000095 -0.00005573 -0.00015794  0.46553508

 24  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000019  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00001364 -0.00002562  0.00000282  0.84156918  0.00000001 -0.00000518 -0.00000000

 25  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000014 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000112 -0.00000000  0.00000035  0.02023865  0.00006854  0.00000568 -0.00008152 -0.02672479

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000115 -0.00000062 -0.00006854  0.02024006 -0.00000053 -0.02672397  0.00008153

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000107  0.00000011  0.00000169

 28  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000021  0.00001890 -0.02021382  0.00000035 -0.00000035 -0.06341161  0.00000036 -0.00001349

 29  1     5    1  |1 1>-       0.00000507 -0.00000000  0.00000000  0.00000014 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.23421242 -0.00000704 -0.00000036 -0.02021033  0.00000007 -0.00001350 -0.00002153  0.06346664

 30  1     6    1  |1 1>-      -0.00000000  0.00000249  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000782  0.37692742 -0.00000034  0.00000007  0.02022438 -0.00000037 -0.06345761 -0.00002153

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000276 -0.00000063  0.00000007 -0.00000000  0.00000000  0.00000187 -0.00000029 -0.00000820

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000174 -0.00001486  0.01168746 -0.00000021  0.00000036 -0.10992816  0.00000210 -0.00002338

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000196 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00002233  0.00000000 -0.00000497 -0.28341720  0.00000093  0.00009900  0.00015789 -0.46549526

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000006  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00001665 -0.00000863  0.00000093  0.28343369  0.00000884  0.46555368  0.00015790

 35  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000248 -0.00002634  0.00001865 -0.00004512 -0.00003354

 36  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.84157102 -0.00001476  0.00002562  0.00001123 -0.00000001  0.00000001

 37  1     1    1  |0 0>       -0.00000167 -0.00000001  0.00000005  0.00000225 -0.00000000  0.00027552  0.00005640 -0.01045291
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000004 -0.00000000 -0.00000205  0.00000006 -0.00000000 -0.01045604  0.00002214 -0.00027537
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 39  1     3    1  |0 0>       -0.00000001  0.00000135 -0.00000000  0.00000001  0.00000038 -0.00002086 -0.01046058 -0.00005685
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00000000  0.00000001  0.00000001  0.00000000  0.00000000  0.00004033 -0.00007088 -0.00001289
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00002512  0.00002326  0.00000063
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00002585  0.00000000 -0.00015768  0.35904657 -0.00004134  0.00000000 -0.00000000  0.00000354
                               -0.00000000  0.00000000  0.00000000  0.00000249 -0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000001  0.00000000 -0.35905182 -0.00015768 -0.00001093  0.00000338  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000 -0.00002209 -0.00001094  0.00004134  0.35903927  0.00000000  0.00000033  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000008 -0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00001638  0.00000000 -0.00000001  0.00004338  0.00000000 -0.00001887 -0.00008743  0.73544933
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

 47  1    11    1  |0 0>       -0.00000000 -0.00000000 -0.00003501 -0.00000001 -0.00000001  0.73541616  0.00003277  0.00001887
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000000  0.00001139  0.00000001 -0.00000001  0.00000932 -0.00003277  0.73540377  0.00008742
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000490  0.00000683 -0.00005738
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000581 -0.00000100  0.00001181
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51

  1  1     1    1  |1 1>+       0.00005344 -0.00008993  0.00008017
                               -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.01549121 -0.02668801  0.02364905
                               -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000010  0.00000005 -0.00000000
                                0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000675 -0.00000182  0.00000000
                                0.00000000  0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000219  0.00000128 -0.00000000
                                0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.10979459 -0.06373608  0.00000617
                                0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000024  0.00000012  0.00000000
                                0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00000915  0.00000169 -0.00000000
                               -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00001610  0.00000935  0.00000002
                                0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.26983312  0.46487346 -0.28177687
                                0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00002335 -0.00004407  0.00002619
                               -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000000 -0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000
                                0.03085916  0.00007195 -0.02364839

 14  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000
                               -0.00010553 -0.00000078  0.00008017

 15  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000
                               -0.00000223 -0.00000041  0.00000000

 16  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000
                               -0.00000047 -0.00000024 -0.00000000

 17  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000
                                0.00029737 -0.12694318  0.00000121

 18  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000
                                0.00000219  0.00000128 -0.00000000

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000
                                0.00000529  0.00000098 -0.00000000

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000
                                0.53750328  0.00125613 -0.28176206

 22  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                                0.00001612  0.00000938 -0.00000002

 23  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000
                                0.00004348  0.00000716 -0.00000247

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000
                               -0.00000223 -0.00000041  0.00000000

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                               -0.00000009 -0.00000005 -0.00000000

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                               -0.01536651 -0.02676002 -0.02364920

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                                0.00000219  0.00000128 -0.00000000

 29  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                                0.00000529  0.00000098 -0.00000000

 30  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                               -0.00000024 -0.00000012 -0.00000000

 31  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                                0.11009208 -0.06323156 -0.00000724

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                                0.00000314  0.00000260 -0.00000000

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                               -0.00004112 -0.00001123 -0.00000246

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000
                                0.00002661  0.00004419  0.00002619

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000
                                0.26766696  0.46612916  0.28178159

 36  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000

 37  1     1    1  |0 0>        0.00001351  0.00000126  0.00000000
                                0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00003793 -0.00002826 -0.00000000
                                0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00007249 -0.00001746  0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.01041985 -0.00085179 -0.00000030
                                0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>        0.00085124 -0.01042144 -0.00000013
                               -0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000045  0.00000005 -0.03082417
                               -0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>        0.00005856 -0.00000154 -0.00000000
                               -0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00000380 -0.00000659  0.00000000
                               -0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>       -0.00000689 -0.00000022 -0.00000000
                                0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>        0.72401321  0.12932496  0.00000535
                               -0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.12933153  0.72400066  0.00000181
                                0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00001200 -0.00000460  0.87131115
                                0.00000000 -0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   49.84%    0.00%    0.00%    0.00%    0.00%   29.55%    0.00%
  2  1     2    1  |1 1>+        28.79%    0.00%    0.00%    0.00%    0.70%   38.77%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   49.84%    0.00%    0.00%    0.00%   29.59%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.25%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.06%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>         28.79%    0.00%    0.00%    0.00%   33.75%    5.72%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%   49.84%    0.00%    0.00%    0.00%    0.00%   29.55%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%   49.84%    0.00%    0.00%    0.00%    0.05%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.25%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.04%    0.22%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%   49.84%    0.00%    0.00%    0.00%    0.05%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%   49.84%    0.00%    0.00%    0.00%   29.60%
 27  1     3    1  |1 1>-        28.79%    0.00%    0.00%    0.00%   24.75%   14.71%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.06%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.09%    0.16%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.19%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.19%    0.01%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   40.21%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   40.39%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   36.61%    3.79%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.79%   36.61%    0.00%    0.00%
 42  1     6    1  |0 0>         13.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 51  1    15    1  |0 0>          0.31%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.05%    0.01%   20.29%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    6.32%   20.74%    4.37%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   20.30%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.06%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   21.49%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.04%    0.01%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.19%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.04%    0.02%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   27.06%    0.01%    4.37%    0.00%
 14  1     2    1  |1 0>          0.05%    0.01%   20.29%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>         29.54%   20.29%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   21.49%
 19  1     7    1  |1 0>          0.06%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.02%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-        29.55%   20.29%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%   20.30%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    7.22%   19.85%    4.37%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   21.50%
 29  1     5    1  |1 1>-         0.06%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.04%    0.01%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    7.16%
 33  1     9    1  |1 1>-         0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.04%    0.02%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.26%
 37  1     1    1  |0 0>         40.20%   59.18%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.19%    0.01%   59.18%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.01%    0.00%    0.00%   59.18%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   58.97%    0.21%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.21%   58.97%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   86.70%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.08%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.02%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.13%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.01%    0.00%
  4  1     4    1  |1 1>+        21.49%    0.00%    0.00%    0.00%    3.23%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    3.23%    0.00%    0.00%    0.00%    9.05%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%   21.49%    0.00%    0.00%    0.00%    3.23%    9.05%    0.00%
  8  1     8    1  |1 1>+         7.17%    0.00%    0.00%    0.00%    1.08%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%   25.31%    0.00%    0.00%    0.00%    8.71%
 10  1    10    1  |1 1>+         0.00%    0.00%   25.30%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   25.30%    8.72%    0.00%
 12  1    12    1  |1 1>+         3.26%    0.00%    0.00%    0.00%   25.57%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.01%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   36.20%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    3.23%    0.00%    0.00%    0.00%    9.05%
 19  1     7    1  |1 0>         21.49%    0.00%    0.00%    0.00%    3.23%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%   28.66%    0.00%    0.00%    0.00%    4.31%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%   25.31%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%   25.30%    0.00%    0.00%    0.00%    8.72%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%   25.30%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    3.26%    0.00%    0.00%    0.00%   25.57%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.01%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.12%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    3.23%    0.00%    0.00%    0.00%    9.04%
 29  1     5    1  |1 1>-        21.49%    0.00%    0.00%    0.00%    3.23%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%   21.49%    0.00%    0.00%    0.00%    3.23%    9.05%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    1.08%    0.00%    0.00%    0.00%   27.16%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   25.31%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   25.31%    8.72%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%   25.30%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%   25.57%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.17%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.17%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>         25.08%    0.00%    0.00%    0.00%   12.95%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%   12.95%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%   25.08%    0.00%    0.00%    0.00%   12.95%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   28.07%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   28.07%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   23.64%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.02%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.02%
  4  1     4    1  |1 1>+         9.06%    0.00%    0.00%    0.00%    5.22%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    5.22%    0.00%    0.00%    7.14%    0.00%
  6  1     6    1  |1 1>+         0.00%   20.86%   15.34%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    5.22%    0.00%    7.13%
  8  1     8    1  |1 1>+        27.14%    0.00%    0.00%    0.00%    1.74%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%   16.66%    0.00%    0.00%   19.57%    0.00%
 10  1    10    1  |1 1>+         0.00%    4.93%    6.70%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   16.65%    0.00%   19.57%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.17%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.02%    0.00%
 15  1     3    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   28.57%
 17  1     5    1  |1 0>          0.00%   32.21%    3.99%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    5.22%    0.00%    0.00%    7.14%    0.00%
 19  1     7    1  |1 0>          9.05%    0.00%    0.00%    0.00%    5.22%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    6.96%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    1.28%   10.34%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%   16.65%    0.00%    0.00%   19.57%    0.00%
 23  1    11    1  |1 0>          8.72%    0.00%    0.00%    0.00%   16.65%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.17%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.02%
 27  1     3    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    5.22%    0.00%    0.00%    7.13%    0.00%
 29  1     5    1  |1 1>-         9.05%    0.00%    0.00%    0.00%    5.22%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    5.22%    0.00%    7.13%
 31  1     7    1  |1 1>-         0.00%    1.23%   34.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    1.74%    0.00%    0.00%   21.42%    0.00%
 33  1     9    1  |1 1>-         8.71%    0.00%    0.00%    0.00%   16.66%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   16.65%    0.00%   19.57%
 35  1    11    1  |1 1>-         0.00%   11.23%    0.40%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.17%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.17%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.23%
 40  1     4    1  |0 0>          0.00%    0.03%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.14%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%   49.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%   49.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   49.00%    0.00%    0.00%
 46  1    10    1  |0 0>         28.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   17.76%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   17.77%
 49  1    13    1  |0 0>          0.00%    6.75%   21.32%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%   21.32%    6.75%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.01%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         7.15%    0.00%    0.00%    0.00%   51.64%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%   47.33%    0.00%    0.00%    0.00%    6.01%
  6  1     6    1  |1 1>+         0.00%   20.36%    8.19%    0.00%    0.00%    0.00%   33.34%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   27.18%    0.00%    0.00%
  8  1     8    1  |1 1>+        21.41%    0.00%    0.00%    0.00%    0.22%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    7.49%   18.61%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   32.88%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.05%   28.51%    0.00%    0.00%    0.00%   33.33%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.43%    0.00%    0.00%    0.00%   52.91%
 19  1     7    1  |1 0>          7.14%    0.00%    0.00%    0.00%    0.29%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.81%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%   26.05%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>         19.57%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%   51.93%    0.00%    0.00%    0.00%    1.41%
 29  1     5    1  |1 1>-         7.14%    0.00%    0.00%    0.00%   47.85%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   39.13%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%   22.42%    6.13%    0.00%    0.00%    0.00%   33.34%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.32%    0.00%    0.00%    0.00%   39.68%
 33  1     9    1  |1 1>-        19.57%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    5.60%   20.49%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.23%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.23%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.23%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>         17.76%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%   16.94%    0.82%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.82%   16.94%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |1 1>+         0.00%    0.00%    0.04%    0.00%    0.00%    0.07%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.07%    0.00%
  4  1     4    1  |1 1>+         1.68%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.40%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.04%    0.00%    0.00%    0.40%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%   26.15%    0.00%    0.00%    0.04%    0.00%    0.40%    0.00%
  8  1     8    1  |1 1>+        39.79%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    1.21%
  9  1     9    1  |1 1>+         0.00%    0.00%    8.03%    0.00%    0.00%   21.67%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    8.03%    0.00%   21.67%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%   70.82%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.07%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.07%
 16  1     4    1  |1 0>          0.00%    0.45%    0.00%    0.00%    0.00%    0.00%    1.61%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.40%    0.00%    0.00%
 19  1     7    1  |1 0>         53.04%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.40%
 20  1     8    1  |1 0>          0.00%   59.19%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    8.03%    0.00%    0.00%   21.67%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    8.03%    0.00%    0.00%    0.00%   21.67%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%   70.82%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.07%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.07%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.04%    0.00%    0.00%    0.40%    0.00%    0.00%
 29  1     5    1  |1 1>-         5.49%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.40%
 30  1     6    1  |1 1>-         0.00%   14.21%    0.00%    0.00%    0.04%    0.00%    0.40%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    1.21%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    8.03%    0.00%    0.00%    0.00%   21.67%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    8.03%    0.00%   21.67%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%   70.82%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%   12.89%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%   12.89%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   12.89%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   54.09%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   54.08%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   54.08%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.02%    0.07%    0.06%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         1.21%    0.41%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         7.28%   21.61%    7.94%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.10%    0.00%    0.06%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    1.61%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%
 21  1     9    1  |1 0>         28.89%    0.00%    7.94%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.02%    0.07%    0.06%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         1.21%    0.40%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         7.16%   21.73%    7.94%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.01%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.01%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.10%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%
 49  1    13    1  |0 0>         52.42%    1.67%    0.00%
 50  1    14    1  |0 0>          1.67%   52.42%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   75.92%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     4156.63       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    103272.03  92481.11   5175.69   5608.95      3.60      0.31      2.01
 REAL TIME  *    104792.05 SEC
 DISK USED  *         4.11 GB (local),       65.96 GB (total)
 SF USED    *        22.21 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -192.419736645155

              CI              CI           MULTI         RHF-SCF
   -192.37148636   -192.38463455   -191.65892647   -191.86435361
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
