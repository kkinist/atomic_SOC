
 Working directory              : /wrk/irikura/molpro.2MjJFGPVw0/
 Global scratch directory       : /wrk/irikura/molpro.2MjJFGPVw0/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.2MjJFGPVw0/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Sr SO-CI
 memory,3000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCV5Z-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (2/10)
 {multi
     closed,1,3
     occ,8,6
     wf,sym=1,spin=2;state,9;
     wf,sym=1,spin=0;state,7;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=2;state,9; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,7; save,5201.2}
 hlsdiag(10) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5203.2,5201.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 21-Mar-24          TIME: 11:00:39  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sr   ECP ECP28MDF                 selected for group  1
 Library entry SR     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SR     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SR     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SR     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SR     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry SR     H aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  SR     10.00    0.000000000    0.000000000    0.000000000

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

         1 0.130E-03 0.301E-03 0.457E-03 0.457E-03 0.457E-03 0.457E-03 0.457E-03 0.102E-02
         2 0.253E-03 0.253E-03 0.253E-03 0.230E-02 0.230E-02 0.230E-02 0.414E-02 0.414E-02


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     243.532 MB (compressed) written to integral file ( 12.2%)

     Node minimum: 10.486 MB, node maximum: 23.593 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    8976855.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    8976855      RECORD LENGTH: 524288

 Memory used in sort:       9.53 MW

 SORT1 READ   248856419. AND WROTE     1595688. INTEGRALS IN      5 RECORDS. CPU TIME:     1.04 SEC, REAL TIME:     1.10 SEC
 SORT2 READ    25623367. AND WROTE   143766176. INTEGRALS IN    704 RECORDS. CPU TIME:     0.16 SEC, REAL TIME:     0.19 SEC

 Node minimum:     8971612.  Node maximum:     8999125. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.69      3.49
 REAL TIME  *         5.26 SEC
 DISK USED  *        30.15 MB (local),      981.95 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -29.86830971     -29.86830971     0.00D+00     0.29D+00     0     0       0.04      0.09    start
   2      -30.22552937      -0.35721966     0.20D-01     0.19D+00     1     0       0.05      0.14    diag
   3      -30.30866028      -0.08313091     0.47D-02     0.74D-01     2     0       0.05      0.19    diag
   4      -30.33645059      -0.02779031     0.21D-02     0.25D-01     3     0       0.05      0.24    diag
   5      -30.34123207      -0.00478147     0.78D-03     0.75D-02     4     0       0.05      0.29    diag
   6      -30.34125036      -0.00001829     0.75D-04     0.17D-02     5     0       0.05      0.34    diag
   7      -30.34125484      -0.00000449     0.29D-04     0.48D-03     6     0       0.05      0.39    diag
   8      -30.34125532      -0.00000047     0.90D-05     0.24D-03     7     0       0.05      0.44    fixocc
   9      -30.34125532      -0.00000001     0.12D-05     0.18D-04     8     0       0.04      0.48    diag
  10      -30.34125532      -0.00000000     0.14D-06     0.46D-05     9     0       0.06      0.54    diag/orth
  11      -30.34125532      -0.00000000     0.39D-07     0.29D-06     9     0       0.05      0.59    diag
  12      -30.34125532      -0.00000000     0.64D-08     0.26D-07     0     0       0.05      0.64    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -30.341255324628
  RHF One-electron energy             -49.818362241541
  RHF Two-electron energy              19.477106916913
  RHF Kinetic energy                    9.485769894764
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.198607562827

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.97189     1  1  s    1.00011
    2.1     2.00000    -0.18127     1  1  s   -0.29987    1  4  s    0.51265    1  5  s    0.54055
    1.2     2.00000    -1.09297     1  1  py   1.00045
    2.2     2.00000    -1.09297     1  1  px   1.00045
    3.2     2.00000    -1.09297     1  1  pz   1.00045


 HOMO      2.1    -0.181273 =      -4.9327eV
 LUMO      4.2     0.008962 =       0.2439eV
 LUMO-HOMO         0.190235 =       5.1766eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.74       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.34      0.65      3.49
 REAL TIME  *         5.95 SEC
 DISK USED  *        32.30 MB (local),     1016.28 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   4 (    1    3)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:     204 (   98  106)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.453D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.451D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.295D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 2 3   5 4 6 1 2 3 5 4 611   91310 8121415 7 3 5   6 4 2 1 3 5 6 4 2 9
                                       11 7131012 81415 1 3   5 4 6 2 812 7 91115  141310 1 3 5 4 6 2 7   911141512 81310 1 3
                                        4 6 5 2131012 8 711   91415 1 2 4 6 5 3 2   4 6 3 5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.162D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.162D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.154D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.154D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 3   2 1 6 9 7 4 510 8 2   1 3 9 710 8 6 4 518  20151714161211192113
                                        2 1 3 7 9 6 4 5 810  20181211141617152113  19 2 1 3 7 9 4 5 6 8  10182015171416111213
                                       2119 7 9 4 5 6 810 2   1 3 7 9 4 5 610 8 2   1 3 9 7 4 5 6 810 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  1436  ( 16 closed/active, 416 closed/virtual, 0 active/active, 1004 active/virtual )
 Total number of variables:    2058
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   19   36   10    -30.18651014     -30.25964237   -0.07313223    0.05023920 0.00020729 0.00000000  0.25E+01      1.51
   2    8   14    0    -30.25521151     -30.25886055   -0.00364905    0.04350027 0.00001239 0.00000000  0.41E+00      2.61
   3    9   16    0    -30.25889383     -30.25889600   -0.00000217    0.00074086 0.00000002 0.00000000  0.11E-01      3.77
   4    6   12    0    -30.25889600     -30.25889600   -0.00000000    0.00000152 0.00000001 0.00000000  0.13E-04      4.67

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.15E-08)
                       Final energy:    -30.25889600
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -30.270211850678
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.71907138
 One electron energy                           -49.98983863
 Two electron energy                            19.71962678
 Virial ratio                                    4.11451688
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -30.270211850606
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.71907137
 One electron energy                           -49.98983861
 Two electron energy                            19.71962676
 Virial ratio                                    4.11451688
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -30.270211850605
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.71907137
 One electron energy                           -49.98983861
 Two electron energy                            19.71962676
 Virial ratio                                    4.11451688
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -30.270211850568
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.71907137
 One electron energy                           -49.98983861
 Two electron energy                            19.71962676
 Virial ratio                                    4.11451688
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy               -30.270211850521
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.71907137
 One electron energy                           -49.98983860
 Two electron energy                            19.71962675
 Virial ratio                                    4.11451688
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy               -30.233600599831
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.33751102
 One electron energy                           -48.49469037
 Two electron energy                            18.26108977
 Virial ratio                                    4.23786505
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy               -30.211088397218
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.58634957
 One electron energy                           -49.29114734
 Two electron energy                            19.08005894
 Virial ratio                                    4.15146951
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy               -30.211088397214
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.58634957
 One electron energy                           -49.29114734
 Two electron energy                            19.08005894
 Virial ratio                                    4.15146951
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy               -30.211088397042
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.58634957
 One electron energy                           -49.29114736
 Two electron energy                            19.08005896
 Virial ratio                                    4.15146951
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -30.364065185374
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.46464320
 One electron energy                           -49.74371835
 Two electron energy                            19.37965317
 Virial ratio                                    4.20815741
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -30.267170076288
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.66391870
 One electron energy                           -49.76619393
 Two electron energy                            19.49902386
 Virial ratio                                    4.13197690
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -30.267170076225
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.66391870
 One electron energy                           -49.76619394
 Two electron energy                            19.49902387
 Virial ratio                                    4.13197689
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -30.267170076079
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.66391870
 One electron energy                           -49.76619394
 Two electron energy                            19.49902386
 Virial ratio                                    4.13197689
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -30.267170076077
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.66391870
 One electron energy                           -49.76619394
 Two electron energy                            19.49902386
 Virial ratio                                    4.13197689
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy               -30.267170075963
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.66391870
 One electron energy                           -49.76619395
 Two electron energy                            19.49902387
 Virial ratio                                    4.13197689
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy               -30.224495376858
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.38528760
 One electron energy                           -48.64877933
 Two electron energy                            18.42428396
 Virial ratio                                    4.22041227
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     2.997221499382
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     3.999999995318
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000272
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000035
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.002774802500
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.000000000001
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     1.000000000000
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.987476777161
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000076
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     4.000000000000
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.012523645483
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     3.002775929641
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000004609
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999999999728
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.997227761641
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999999999
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.000000000003
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999999997
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.012575719982
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000001
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999999875
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     2.987423853866
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000002570976
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000073
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999999965
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999997435859
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     1.000000000000
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999999997
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000000000003
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999947502857
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999999999
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000049
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000052500651
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 5 3 4 6 2 1 2 6   3 4 5 1 2 6 3 4 511  1310 8121415 7 9 6 3   4 2 5 1 6 5 3 4 211
                                        7 81213101415 9 1 6   5 3 4 21112 8 71415  1310 9 1 6 5 3 4 211   7141512 81310 9 1 6
                                        5 3 4 211131012 8 7  1415 9 1 2 6 5 3 4 2   6 5 3 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 1 3 2   1 3 5 6 9 710 8 4 2   1 3 5 6 9 7 810 412  18201416151719211311
                                        2 3 1 5 7 9 6 810 4  12201814161321151719  11 2 3 1 5 7 9 610 8   4121820151714161321
                                       1911 5 7 9 610 8 4 2   3 1 5 7 9 610 8 4 2   3 1 7 9 5 6 410 8 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.98057     1  1  s    0.99634
    2.1     0.79234    -0.09312     1  1  s   -0.29781    1  4  s    0.59508    1  5  s    0.54272
    3.1     0.12925     0.06687     1  1  d2+  0.89819
    4.1     0.12925     0.06687     1  1  d2-  0.89819
    5.1     0.12925     0.06687     1  1  d1+  0.89819
    6.1     0.12925     0.06687     1  1  d1-  0.89819
    7.1     0.12925     0.06687     1  1  d0   0.89819
    8.1     0.12599     0.02342     1  4  s   -0.54260    1  5  s   -0.49971    1 11  s    1.40286
    1.2     2.00000    -1.10660     1  1  py   1.00847
    2.2     2.00000    -1.10660     1  1  pz   1.00847
    3.2     2.00000    -1.10660     1  1  px   1.00847
    4.2     0.14513     0.02803     1  1  py  -0.41851    1  3  py   0.50290    1  4  py   0.45231
    5.2     0.14513     0.02803     1  1  pz  -0.41851    1  3  pz   0.50290    1  4  pz   0.45231
    6.2     0.14513     0.02803     1  1  px  -0.41851    1  3  px   0.50290    1  4  px   0.45231
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      1.00000000      0.00000000
 a0a0000 000     -0.00000000     -0.00000493      0.00000002      0.99996764      0.00000088     -0.00000000      0.00000000
 a00a000 000     -0.00000000     -0.00003920      0.99996763     -0.00000002     -0.00000002     -0.00000000      0.00000000
 a000a00 000      0.00000000      0.99996763      0.00003920      0.00000493      0.00000000      0.00000000      0.00000000
 aa00000 000     -0.00080169      0.00000000      0.00000002     -0.00000088      0.99996731      0.00000000     -0.00000000
 a0000a0 000      0.99996731     -0.00000000      0.00000000     -0.00000000      0.00080169      0.00000000     -0.00000000
 0000000 aa0     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.88254898
 0000000 0aa     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000075
 0000000 a0a      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0aa0000 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 000a0a0 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000031
 0000aa0 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.36423122
 000aa00 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 0a0a000 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000018
 0a00a00 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.21028899
 00a0a00 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000018
 00aa000 000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.21028899
 
 Energy:        -30.27021185    -30.27021185    -30.27021185    -30.27021185    -30.27021185    -30.23360060    -30.21108840

 State:                8               9
 a00000a 000      0.00000000     -0.00000000
 a0a0000 000      0.00000000     -0.00000000
 a00a000 000     -0.00000000      0.00000000
 a000a00 000      0.00000000      0.00000000
 aa00000 000     -0.00000000      0.00000000
 a0000a0 000      0.00000000      0.00000000
 0000000 aa0      0.00000075      0.00000000
 0000000 0aa      0.88254898      0.00000143
 0000000 a0a     -0.00000143      0.88254898
 0aa0000 000     -0.00000068      0.42057799
 000a0a0 000      0.36423122      0.00000059
 0000aa0 000     -0.00000031     -0.00000000
 000aa00 000     -0.00000034      0.21028899
 0a0a000 000      0.21028899      0.00000034
 0a00a00 000      0.00000018      0.00000000
 00a0a00 000      0.21028899      0.00000034
 00aa000 000     -0.00000018     -0.00000000
 
 Energy:        -30.21108840    -30.21108840
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.95823989     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.01216769
 a00000b 000      0.00484578     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.69556773
 b00000a 000     -0.00484578      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.69556773
 b0a0000 000      0.00000000     -0.00000125     -0.62236047      0.00000032      0.00000000     -0.00000003      0.00000000
 a0b0000 000     -0.00000000      0.00000125      0.62236047     -0.00000032     -0.00000000      0.00000003     -0.00000000
 b000a00 000     -0.00000000      0.00000009     -0.00000000      0.00000319     -0.62236047     -0.00000000      0.00000000
 a000b00 000      0.00000000     -0.00000009      0.00000000     -0.00000319      0.62236047      0.00000000     -0.00000000
 a00b000 000      0.00000000      0.00000235      0.00000032      0.62236047      0.00000319     -0.00000013      0.00000000
 b00a000 000     -0.00000000     -0.00000235     -0.00000032     -0.62236047     -0.00000319      0.00000013     -0.00000000
 ab00000 000      0.00000000      0.62235639     -0.00000125     -0.00000235      0.00000009      0.00225465      0.00000000
 ba00000 000     -0.00000000     -0.62235639      0.00000125      0.00000235     -0.00000009     -0.00225465     -0.00000000
 b0000a0 000      0.00000000      0.00225465      0.00000002     -0.00000014      0.00000000     -0.62235639      0.00000001
 a0000b0 000     -0.00000000     -0.00225465     -0.00000002      0.00000014     -0.00000000      0.62235639     -0.00000001
 0000000 020     -0.15908655      0.00136781      0.00000001     -0.00000009      0.00000000     -0.37755985     -0.02201403
 0000000 002     -0.15908655     -0.32766033      0.00000065      0.00000128     -0.00000005      0.18759537     -0.02201402
 0000000 ab0      0.00000000      0.00000004     -0.00000000      0.00000167     -0.32697857      0.00000000     -0.00000000
 0000000 ba0     -0.00000000     -0.00000004      0.00000000     -0.00000167      0.32697857     -0.00000000      0.00000000
 0000000 0ba      0.00000000      0.00000124      0.00000017      0.32697857      0.00000167     -0.00000007      0.00000000
 0000000 0ab     -0.00000000     -0.00000124     -0.00000017     -0.32697857     -0.00000167      0.00000007     -0.00000000
 0000000 a0b      0.00000000     -0.00000066     -0.32697857      0.00000017      0.00000000     -0.00000001      0.00000000
 0000000 b0a     -0.00000000      0.00000066      0.32697857     -0.00000017     -0.00000000      0.00000001     -0.00000000
 0000000 200     -0.15908655      0.32629252     -0.00000066     -0.00000119      0.00000004      0.18996448     -0.02201402
 0000002 000     -0.01476140      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.14210683
 00b00a0 000     -0.00000000     -0.00000011     -0.05370538      0.00000003      0.00000000     -0.00000000     -0.00000000
 00a00b0 000      0.00000000      0.00000011      0.05370538     -0.00000003     -0.00000000      0.00000000      0.00000000
 0000020 000     -0.03342413      0.00019456      0.00000000     -0.00000001      0.00000000     -0.05370502      0.04598874
 0020000 000     -0.03342413     -0.00019456     -0.00000000      0.00000001     -0.00000000      0.05370502      0.04598873
 0a000b0 000     -0.00000000      0.05370502     -0.00000011     -0.00000020      0.00000001      0.00019456      0.00000000
 0b000a0 000      0.00000000     -0.05370502      0.00000011      0.00000020     -0.00000001     -0.00019456     -0.00000000
 0200000 000     -0.03342413     -0.00019456     -0.00000000      0.00000001     -0.00000000      0.05370502      0.04598873
 
 Energy:        -30.36406519    -30.26717008    -30.26717008    -30.26717008    -30.26717008    -30.26717008    -30.22449538
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       59.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.76       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.29      3.95      0.65      3.49
 REAL TIME  *        11.39 SEC
 DISK USED  *        61.46 MB (local),        1.45 GB (total)
 SF USED    *        92.65 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -30.27021185   6.0
    -30.27021185   6.0
    -30.27021185   6.0
    -30.27021185   6.0
    -30.27021185   6.0
    -30.23360060  -0.0
    -30.21108840   2.0
    -30.21108840   2.0
    -30.21108840   2.0
    -30.36406519  -0.0
    -30.26717008   6.0
    -30.26717008   6.0
    -30.26717008   6.0
    -30.26717008   6.0
    -30.26717008   6.0
    -30.22449538  -0.0
                                                  


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

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.27021185
     2       -30.27021185
     3       -30.27021185
     4       -30.27021185
     5       -30.27021185
     6       -30.23360060
     7       -30.21108840
     8       -30.21108840
     9       -30.21108840

 Number of blocks in overlap matrix:   201   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     225
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        975676
 Number of doubly external configurations:       2344806
 Total number of contracted configurations:      3332320
 Total number of uncontracted configurations:   18697016

 Diagonal Coupling coefficients finished.               Storage: 4509206 words, CPU-Time:      0.50 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1548998 words, CPU-time:      0.15 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.27021185     0.00000000    -0.27938291  0.37D-01  0.47D-01     1.49
    1     2     2     1.00000000     0.00000000   -30.27021185    -0.00000000    -0.27953309  0.37D-01  0.47D-01     1.49
    1     3     3     1.00000000     0.00000000   -30.27021185    -0.00000000    -0.27953927  0.37D-01  0.47D-01     1.49
    1     4     4     1.00000000     0.00000000   -30.27021185    -0.00000000    -0.27953046  0.37D-01  0.47D-01     1.49
    1     5     5     1.00000000     0.00000000   -30.27021185     0.00000000    -0.27952317  0.37D-01  0.47D-01     1.49
    1     6     6     1.00000000     0.00000000   -30.23360060    -0.00000000    -0.25410388  0.36D-01  0.38D-01     1.49
    1     7     7     1.00000000     0.00000000   -30.21108840    -0.00000000    -0.25729007  0.28D-01  0.41D-01     1.49
    1     8     8     1.00000000     0.00000000   -30.21108840    -0.00000000    -0.25731735  0.28D-01  0.41D-01     1.49
    1     9     9     1.00000000     0.00000000   -30.21108840    -0.00000000    -0.25730921  0.28D-01  0.41D-01     1.49
    2     1     1     1.06970884    -0.26619682   -30.53640868    -0.26619682    -0.00599805  0.21D-02  0.68D-03    25.44
    2     2     2     1.06972789    -0.26616418   -30.53637603    -0.26616418    -0.00604016  0.21D-02  0.69D-03    25.44
    2     3     3     1.06973234    -0.26616195   -30.53637380    -0.26616195    -0.00604116  0.21D-02  0.69D-03    25.44
    2     4     4     1.06974150    -0.26615955   -30.53637140    -0.26615955    -0.00604293  0.21D-02  0.69D-03    25.44
    2     5     5     1.06973702    -0.26615642   -30.53636827    -0.26615642    -0.00604554  0.21D-02  0.69D-03    25.44
    2     6     6     1.06842864    -0.25712341   -30.49072401    -0.25712341    -0.00429579  0.12D-02  0.47D-03    25.44
    2     7     7     1.06100956    -0.25321905   -30.46430745    -0.25321905    -0.00506524  0.18D-02  0.56D-03    25.44
    2     8     8     1.06102805    -0.25321816   -30.46430656    -0.25321816    -0.00506342  0.18D-02  0.56D-03    25.44
    2     9     9     1.06102663    -0.25321009   -30.46429848    -0.25321009    -0.00507356  0.18D-02  0.56D-03    25.44
    3     1     1     1.06995130    -0.27234649   -30.54255834    -0.00614966    -0.00022608  0.63D-04  0.31D-04    48.83
    3     2     2     1.06995438    -0.27234459   -30.54255644    -0.00618041    -0.00022784  0.64D-04  0.31D-04    48.83
    3     3     3     1.06995260    -0.27234452   -30.54255637    -0.00618257    -0.00022804  0.64D-04  0.31D-04    48.83
    3     4     4     1.06995144    -0.27234424   -30.54255609    -0.00618469    -0.00022822  0.64D-04  0.31D-04    48.83
    3     5     5     1.06995010    -0.27234420   -30.54255605    -0.00618778    -0.00022826  0.64D-04  0.31D-04    48.83
    3     6     6     1.06982413    -0.26174924   -30.49534984    -0.00462583    -0.00013564  0.29D-04  0.18D-04    48.83
    3     7     7     1.05997688    -0.25837110   -30.46945950    -0.00515205    -0.00018162  0.29D-04  0.31D-04    48.83
    3     8     8     1.05997609    -0.25836977   -30.46945817    -0.00515161    -0.00018180  0.30D-04  0.31D-04    48.83
    3     9     9     1.05997401    -0.25836927   -30.46945767    -0.00515918    -0.00018244  0.30D-04  0.31D-04    48.83
    4     1     1     1.07130201    -0.27261515   -30.54282700    -0.00026866    -0.00002090  0.18D-04  0.14D-05    72.07
    4     2     2     1.07130145    -0.27261509   -30.54282694    -0.00027050    -0.00002092  0.18D-04  0.14D-05    72.07
    4     3     3     1.07130154    -0.27261508   -30.54282693    -0.00027056    -0.00002092  0.18D-04  0.14D-05    72.07
    4     4     4     1.07130571    -0.27261506   -30.54282691    -0.00027082    -0.00002075  0.18D-04  0.14D-05    72.07
    4     5     5     1.07130127    -0.27261486   -30.54282671    -0.00027066    -0.00002086  0.18D-04  0.14D-05    72.07
    4     6     6     1.07064491    -0.26190026   -30.49550086    -0.00015102    -0.00000696  0.41D-05  0.67D-06    72.07
    4     7     7     1.06044590    -0.25856768   -30.46965608    -0.00019658    -0.00000928  0.55D-05  0.96D-06    72.07
    4     8     8     1.06044569    -0.25856672   -30.46965512    -0.00019695    -0.00000932  0.55D-05  0.96D-06    72.07
    4     9     9     1.06044439    -0.25856672   -30.46965511    -0.00019745    -0.00000934  0.55D-05  0.97D-06    72.07
    5     1     1     1.07211889    -0.27264385   -30.54285570    -0.00002870    -0.00000228  0.76D-06  0.30D-06    95.13
    5     2     2     1.07211883    -0.27264381   -30.54285566    -0.00002872    -0.00000229  0.77D-06  0.30D-06    95.13
    5     3     3     1.07211882    -0.27264381   -30.54285566    -0.00002873    -0.00000229  0.77D-06  0.30D-06    95.13
    5     4     4     1.07211805    -0.27264351   -30.54285536    -0.00002845    -0.00000228  0.76D-06  0.30D-06    95.13
    5     5     5     1.07211812    -0.27264347   -30.54285532    -0.00002861    -0.00000227  0.75D-06  0.30D-06    95.13
    5     6     6     1.07091128    -0.26190822   -30.49550882    -0.00000796    -0.00000044  0.17D-06  0.55D-07    95.13
    5     7     7     1.06053805    -0.25857881   -30.46966721    -0.00001113    -0.00000064  0.24D-06  0.91D-07    95.13
    5     8     8     1.06053742    -0.25857792   -30.46966632    -0.00001120    -0.00000065  0.25D-06  0.92D-07    95.13
    5     9     9     1.06053773    -0.25857792   -30.46966632    -0.00001121    -0.00000065  0.24D-06  0.92D-07    95.13
    6     1     1     1.07218538    -0.27264661   -30.54285846    -0.00000276    -0.00000017  0.85D-07  0.17D-07   118.18
    6     2     2     1.07218529    -0.27264657   -30.54285842    -0.00000276    -0.00000018  0.85D-07  0.17D-07   118.18
    6     3     3     1.07218532    -0.27264657   -30.54285842    -0.00000276    -0.00000018  0.85D-07  0.17D-07   118.18
    6     4     4     1.07218461    -0.27264626   -30.54285811    -0.00000275    -0.00000017  0.85D-07  0.17D-07   118.18
    6     5     5     1.07218444    -0.27264621   -30.54285806    -0.00000274    -0.00000018  0.86D-07  0.17D-07   118.18
    6     6     6     1.07095186    -0.26190872   -30.49550932    -0.00000050    -0.00000003  0.20D-07  0.31D-08   118.18
    6     7     7     1.06053120    -0.25857957   -30.46966797    -0.00000076    -0.00000004  0.86D-08  0.65D-08   118.18
    6     8     8     1.06053072    -0.25857869   -30.46966709    -0.00000077    -0.00000004  0.86D-08  0.66D-08   118.18
    6     9     9     1.06053079    -0.25857869   -30.46966709    -0.00000077    -0.00000004  0.86D-08  0.65D-08   118.18
    7     1     1     1.07221479    -0.27264680   -30.54285865    -0.00000020    -0.00000002  0.11D-07  0.15D-08   141.19
    7     2     2     1.07221477    -0.27264677   -30.54285862    -0.00000020    -0.00000002  0.11D-07  0.15D-08   141.19
    7     3     3     1.07221476    -0.27264677   -30.54285862    -0.00000020    -0.00000002  0.11D-07  0.15D-08   141.19
    7     4     4     1.07221391    -0.27264646   -30.54285831    -0.00000020    -0.00000002  0.11D-07  0.15D-08   141.19
    7     5     5     1.07221372    -0.27264641   -30.54285826    -0.00000020    -0.00000002  0.11D-07  0.15D-08   141.19
    7     6     6     1.07096425    -0.26190876   -30.49550936    -0.00000004    -0.00000000  0.24D-08  0.28D-09   141.19
    7     7     7     1.06053176    -0.25857962   -30.46966802    -0.00000005    -0.00000000  0.18D-08  0.33D-09   141.19
    7     8     8     1.06053134    -0.25857874   -30.46966714    -0.00000005    -0.00000000  0.18D-08  0.33D-09   141.19
    7     9     9     1.06053136    -0.25857874   -30.46966714    -0.00000005    -0.00000000  0.18D-08  0.33D-09   141.19
    8     1     1     1.07222788    -0.27264682   -30.54285867    -0.00000002    -0.00000000  0.84D-09  0.22D-09   154.72
    8     2     2     1.07222784    -0.27264678   -30.54285863    -0.00000002    -0.00000000  0.84D-09  0.22D-09   154.72
    8     3     3     1.07222784    -0.27264678   -30.54285863    -0.00000002    -0.00000000  0.84D-09  0.22D-09   154.72
    8     4     4     1.07222701    -0.27264648   -30.54285833    -0.00000002    -0.00000000  0.83D-09  0.22D-09   154.72
    8     5     5     1.07222687    -0.27264643   -30.54285828    -0.00000002    -0.00000000  0.82D-09  0.22D-09   154.72
    8     6     6     1.07096425    -0.26190876   -30.49550936    -0.00000000    -0.00000000  0.24D-08  0.28D-09   154.72
    8     7     7     1.06053176    -0.25857962   -30.46966802    -0.00000000    -0.00000000  0.18D-08  0.33D-09   154.72
    8     8     8     1.06053134    -0.25857874   -30.46966714    -0.00000000    -0.00000000  0.18D-08  0.33D-09   154.72
    8     9     9     1.06053136    -0.25857874   -30.46966714    -0.00000000    -0.00000000  0.18D-08  0.33D-09   154.72


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.9%
 S   2.5%  17.6%
 P   0.8%  15.9%   9.8%

 Initialization:   0.5%
 Other:           50.1%

 Total CPU:      154.7 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/00000/222000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000036   0.9637562   0.0000000   0.0000000
                         -0.0000000
 2/0000/0222000          -0.0000000  -0.0000000  -0.0000000   0.0000093   0.9632307   0.0000041  -0.0000000  -0.0000000
                         -0.0000000
 2//00000222000           0.0000000   0.0000000   0.0000000   0.9632307  -0.0000093  -0.0000000  -0.0000000   0.0000000
                          0.0000000
 2/00/000222000          -0.0000000  -0.0000000   0.9632303  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000012
                          0.0000000
 2/000/00222000          -0.0000000   0.9632303   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                          0.0000012
 2/0/0000222000           0.9632303   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.0000000
 20000000222/0/          -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.8435455  -0.0000000
                         -0.0000000
 20000000222//0          -0.0000000  -0.0000009  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                          0.8435447
 200000002220//           0.0000000   0.0000000   0.0000009  -0.0000000   0.0000000  -0.0000000   0.0000000   0.8435447
                          0.0000000
 20//0000222000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.4261328  -0.0000000
                         -0.0000000
 20000//0222000          -0.0000000   0.0000054  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                         -0.3690425
 2000/0/0222000          -0.0000000  -0.0000000   0.0000054  -0.0000000   0.0000000  -0.0000000   0.0000000   0.3690425
                          0.0000000
 200//000222000          -0.0000000   0.0000002  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                         -0.2130712
 200/0/00222000           0.0000000   0.0000000   0.0000002  -0.0000000   0.0000000  -0.0000000   0.0000000   0.2130709
                          0.0000000
 20/0/000222000           0.0000000   0.0000000  -0.0000081  -0.0000000   0.0000000  -0.0000000   0.0000000   0.2130700
                          0.0000000
 2000//00222000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.2130696  -0.0000000
                         -0.0000000
 20/00/00222000           0.0000000   0.0000081   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                          0.2130694

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2000000/222000  34.1     0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000001   0.0576691   0.0000000   0.0000000
                         -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000   -0.000000    0.963147    0.000000    0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.963147   -0.000000    0.000000    0.000000   -0.000000   -0.000001    0.000000    0.000000
 3          -0.000000    0.000000    0.963147    0.000000    0.000000    0.000000   -0.000000    0.000001   -0.000000
 4           0.000009   -0.000000   -0.000000   -0.000000    0.963147    0.000000   -0.000000   -0.000000    0.000000
 5           0.963147    0.000000    0.000000    0.000000   -0.000009   -0.000004    0.000000    0.000000    0.000000
 6           0.000004    0.000000   -0.000000   -0.000000   -0.000000    0.963756    0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.968499
 8          -0.000000   -0.000000   -0.000001   -0.000000    0.000000    0.000000   -0.000000    0.968499   -0.000000
 9          -0.000000    0.000001    0.000000    0.000000    0.000000   -0.000000    0.968499    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.963147    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.963147   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.963147    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.963147   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.963147    0.000000    0.000000    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.963756   -0.000000   -0.000000    0.000000
 7           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.968499    0.000000    0.000000
 8           0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.968499   -0.000000
 9           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.968499


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96314695 (fixed)   0.96325214 (relaxed)   0.96314695 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00537433   -0.01068031   -0.19252885
 Singles      0.02994225   -0.06656787   -0.06932502
 Pairs        0.04267381   -0.00000000   -0.01079295
 Total        1.07799039   -0.07724818   -0.27264682
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.27021185
 Nuclear energy                         0.00000000
 Kinetic energy                         9.94714617
 One electron energy                  -49.92902777
 Two electron energy                   19.38616909
 Virial quotient                       -3.07051471
 Correlation energy                    -0.27264682
 !MRCI STATE 1.1 Energy               -30.542858673146

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.56412251 (Davidson, fixed reference)
 Cluster corrected energies           -30.56405832 (Davidson, relaxed reference)
 Cluster corrected energies           -30.56412251 (Davidson, rotated reference)

 Cluster corrected energies           -30.55943323 (Pople, fixed reference)
 Cluster corrected energies           -30.55938130 (Pople, relaxed reference)
 Cluster corrected energies           -30.55943323 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96314698 (fixed)   0.96325216 (relaxed)   0.96314698 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00537431   -0.01068028   -0.19252884
 Singles      0.02994219   -0.06656785   -0.06932499
 Pairs        0.04267383   -0.00000000   -0.01079295
 Total        1.07799033   -0.07724813   -0.27264678
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.27021185
 Nuclear energy                         0.00000000
 Kinetic energy                         9.94714627
 One electron energy                  -49.92902791
 Two electron energy                   19.38616927
 Virial quotient                       -3.07051468
 Correlation energy                    -0.27264678
 !MRCI STATE 2.1 Energy               -30.542858634314

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.56412245 (Davidson, fixed reference)
 Cluster corrected energies           -30.56405826 (Davidson, relaxed reference)
 Cluster corrected energies           -30.56412245 (Davidson, rotated reference)

 Cluster corrected energies           -30.55943318 (Pople, fixed reference)
 Cluster corrected energies           -30.55938125 (Pople, relaxed reference)
 Cluster corrected energies           -30.55943318 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96314698 (fixed)   0.96325216 (relaxed)   0.96314698 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00537431   -0.01068028   -0.19252883
 Singles      0.02994219   -0.06656785   -0.06932499
 Pairs        0.04267383    0.00000000   -0.01079296
 Total        1.07799033   -0.07724813   -0.27264678
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.27021185
 Nuclear energy                         0.00000000
 Kinetic energy                         9.94714627
 One electron energy                  -49.92902789
 Two electron energy                   19.38616925
 Virial quotient                       -3.07051468
 Correlation energy                    -0.27264678
 !MRCI STATE 3.1 Energy               -30.542858634312

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.56412245 (Davidson, fixed reference)
 Cluster corrected energies           -30.56405826 (Davidson, relaxed reference)
 Cluster corrected energies           -30.56412245 (Davidson, rotated reference)

 Cluster corrected energies           -30.55943318 (Pople, fixed reference)
 Cluster corrected energies           -30.55938125 (Pople, relaxed reference)
 Cluster corrected energies           -30.55943318 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96314732 (fixed)   0.96325251 (relaxed)   0.96314732 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00537439   -0.01068039   -0.19252930
 Singles      0.02994125   -0.06656721   -0.06932420
 Pairs        0.04267393   -0.00000000   -0.01079298
 Total        1.07798958   -0.07724760   -0.27264648
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.27021185
 Nuclear energy                         0.00000000
 Kinetic energy                         9.94714590
 One electron energy                  -49.92902677
 Two electron energy                   19.38616844
 Virial quotient                       -3.07051476
 Correlation energy                    -0.27264648
 !MRCI STATE 4.1 Energy               -30.542858328783

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.56412191 (Davidson, fixed reference)
 Cluster corrected energies           -30.56405772 (Davidson, relaxed reference)
 Cluster corrected energies           -30.56412191 (Davidson, rotated reference)

 Cluster corrected energies           -30.55943268 (Pople, fixed reference)
 Cluster corrected energies           -30.55938076 (Pople, relaxed reference)
 Cluster corrected energies           -30.55943268 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96314735 (fixed)   0.96325254 (relaxed)   0.96314735 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00537445   -0.01068043   -0.19252938
 Singles      0.02994109   -0.06656710   -0.06932407
 Pairs        0.04267395   -0.00000000   -0.01079298
 Total        1.07798950   -0.07724753   -0.27264643
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.27021185
 Nuclear energy                         0.00000000
 Kinetic energy                         9.94714581
 One electron energy                  -49.92902696
 Two electron energy                   19.38616868
 Virial quotient                       -3.07051479
 Correlation energy                    -0.27264643
 !MRCI STATE 5.1 Energy               -30.542858277460

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.56412184 (Davidson, fixed reference)
 Cluster corrected energies           -30.56405765 (Davidson, relaxed reference)
 Cluster corrected energies           -30.56412184 (Davidson, rotated reference)

 Cluster corrected energies           -30.55943261 (Pople, fixed reference)
 Cluster corrected energies           -30.55938068 (Pople, relaxed reference)
 Cluster corrected energies           -30.55943261 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96375619 (fixed)   0.96375619 (relaxed)   0.96375619 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00528840   -0.01162250   -0.18187836
 Singles      0.03305611   -0.06747852   -0.07071828
 Pairs        0.03828342    0.00000000   -0.00931213
 Total        1.07662793   -0.07910102   -0.26190876
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.23360060
 Nuclear energy                         0.00000000
 Kinetic energy                         9.64406387
 One electron energy                  -48.50408579
 Two electron energy                   18.00857643
 Virial quotient                       -3.16210155
 Correlation energy                    -0.26190876
 !MRCI STATE 6.1 Energy               -30.495509360657

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.51557889 (Davidson, fixed reference)
 Cluster corrected energies           -30.51557889 (Davidson, relaxed reference)
 Cluster corrected energies           -30.51557889 (Davidson, rotated reference)

 Cluster corrected energies           -30.51114260 (Pople, fixed reference)
 Cluster corrected energies           -30.51114260 (Pople, relaxed reference)
 Cluster corrected energies           -30.51114260 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96849851 (fixed)   0.96879145 (relaxed)   0.96849851 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00526002   -0.01006856   -0.01071999
 Singles      0.02082419   -0.06112473   -0.06238524
 Pairs        0.04002597   -0.18738633   -0.18547439
 Total        1.06611017   -0.25857962   -0.25857962
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.21108840
 Nuclear energy                         0.00000000
 Kinetic energy                         9.84071246
 One electron energy                  -49.16974090
 Two electron energy                   18.70007288
 Virial quotient                       -3.09628679
 Correlation energy                    -0.25857962
 !MRCI STATE 7.1 Energy               -30.469668020627

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.48676276 (Davidson, fixed reference)
 Cluster corrected energies           -30.48659607 (Davidson, relaxed reference)
 Cluster corrected energies           -30.48676276 (Davidson, rotated reference)

 Cluster corrected energies           -30.48291577 (Pople, fixed reference)
 Cluster corrected energies           -30.48278245 (Pople, relaxed reference)
 Cluster corrected energies           -30.48291577 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.96849905 (fixed)   0.96879206 (relaxed)   0.96849905 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00525929   -0.01006785   -0.18648575
 Singles      0.02082373   -0.06112455   -0.06238501
 Pairs        0.04002596    0.00000000   -0.00970799
 Total        1.06610898   -0.07119240   -0.25857874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.21108840
 Nuclear energy                         0.00000000
 Kinetic energy                         9.84070566
 One electron energy                  -49.16973615
 Two electron energy                   18.70006901
 Virial quotient                       -3.09628884
 Correlation energy                    -0.25857874
 !MRCI STATE 8.1 Energy               -30.469667137359

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.48676151 (Davidson, fixed reference)
 Cluster corrected energies           -30.48659479 (Davidson, relaxed reference)
 Cluster corrected energies           -30.48676151 (Davidson, rotated reference)

 Cluster corrected energies           -30.48291459 (Pople, fixed reference)
 Cluster corrected energies           -30.48278124 (Pople, relaxed reference)
 Cluster corrected energies           -30.48291459 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96849905 (fixed)   0.96879205 (relaxed)   0.96849905 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00525928   -0.01006786   -0.18648574
 Singles      0.02082373   -0.06112455   -0.06238500
 Pairs        0.04002598    0.00000000   -0.00970799
 Total        1.06610899   -0.07119240   -0.25857874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.21108840
 Nuclear energy                         0.00000000
 Kinetic energy                         9.84070577
 One electron energy                  -49.16973649
 Two electron energy                   18.70006935
 Virial quotient                       -3.09628881
 Correlation energy                    -0.25857874
 !MRCI STATE 9.1 Energy               -30.469667137356

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.48676152 (Davidson, fixed reference)
 Cluster corrected energies           -30.48659479 (Davidson, relaxed reference)
 Cluster corrected energies           -30.48676152 (Davidson, rotated reference)

 Cluster corrected energies           -30.48291459 (Pople, fixed reference)
 Cluster corrected energies           -30.48278124 (Pople, relaxed reference)
 Cluster corrected energies           -30.48291459 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       59.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      235.55       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       172.26    163.96      3.95      0.65      3.49
 REAL TIME  *       190.79 SEC
 DISK USED  *       295.25 MB (local),        5.10 GB (total)
 SF USED    *         2.33 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -30.56412251  AU                              
 SETTING HLSDIAG(2)     =       -30.56412245  AU                              
 SETTING HLSDIAG(3)     =       -30.56412245  AU                              
 SETTING HLSDIAG(4)     =       -30.56412191  AU                              
 SETTING HLSDIAG(5)     =       -30.56412184  AU                              
 SETTING HLSDIAG(6)     =       -30.51557889  AU                              
 SETTING HLSDIAG(7)     =       -30.48676276  AU                              
 SETTING HLSDIAG(8)     =       -30.48676151  AU                              
 SETTING HLSDIAG(9)     =       -30.48676152  AU                              


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

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.36406519
     2       -30.26717008
     3       -30.26717008
     4       -30.26717008
     5       -30.26717008
     6       -30.26717008
     7       -30.22449538

 Number of blocks in overlap matrix:   169   Smallest eigenvalue:  0.91D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        653612
 Number of doubly external configurations:       2011138
 Total number of contracted configurations:      2672601
 Total number of uncontracted configurations:   12657585

 Diagonal Coupling coefficients finished.               Storage: 3217856 words, CPU-Time:      0.23 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1534433 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.36406519     0.00000000    -0.26335137  0.30D-01  0.41D-01     0.86
    1     2     2     1.00000000     0.00000000   -30.26717008    -0.00000000    -0.27044427  0.33D-01  0.45D-01     0.86
    1     3     3     1.00000000     0.00000000   -30.26717008    -0.00000000    -0.27061010  0.33D-01  0.45D-01     0.86
    1     4     4     1.00000000     0.00000000   -30.26717008    -0.00000000    -0.27066208  0.33D-01  0.45D-01     0.86
    1     5     5     1.00000000     0.00000000   -30.26717008    -0.00000000    -0.27072173  0.33D-01  0.45D-01     0.86
    1     6     6     1.00000000     0.00000000   -30.26717008     0.00000000    -0.27059864  0.33D-01  0.45D-01     0.86
    1     7     7     1.00000000     0.00000000   -30.22449538     0.00000000    -0.26014235  0.42D-01  0.40D-01     0.86
    2     1     1     1.06272303    -0.26026180   -30.62432699    -0.26026180    -0.00542779  0.17D-02  0.59D-03    15.38
    2     2     2     1.06726858    -0.26117008   -30.52834016    -0.26117008    -0.00572343  0.21D-02  0.73D-03    15.38
    2     3     3     1.06723626    -0.26116633   -30.52833641    -0.26116633    -0.00572407  0.21D-02  0.73D-03    15.38
    2     4     4     1.06734379    -0.26115051   -30.52832059    -0.26115051    -0.00574669  0.21D-02  0.73D-03    15.38
    2     5     5     1.06738138    -0.26113948   -30.52830956    -0.26113948    -0.00575817  0.21D-02  0.73D-03    15.38
    2     6     6     1.06739549    -0.26113230   -30.52830238    -0.26113230    -0.00576613  0.21D-02  0.73D-03    15.38
    2     7     7     1.07233192    -0.25791663   -30.48241200    -0.25791663    -0.00617144  0.29D-02  0.78D-03    15.38
    3     1     1     1.06366828    -0.26577083   -30.62983602    -0.00550903    -0.00020654  0.43D-04  0.30D-04    29.80
    3     2     2     1.06716273    -0.26689502   -30.53406510    -0.00572494    -0.00026780  0.70D-04  0.45D-04    29.80
    3     3     3     1.06716832    -0.26689389   -30.53406397    -0.00572756    -0.00026906  0.70D-04  0.46D-04    29.80
    3     4     4     1.06717355    -0.26689313   -30.53406321    -0.00574262    -0.00027008  0.70D-04  0.46D-04    29.80
    3     5     5     1.06717259    -0.26689262   -30.53406269    -0.00575313    -0.00027045  0.70D-04  0.46D-04    29.80
    3     6     6     1.06717442    -0.26689246   -30.53406254    -0.00576016    -0.00027072  0.71D-04  0.46D-04    29.80
    3     7     7     1.06921558    -0.26394890   -30.48844427    -0.00603227    -0.00028000  0.73D-04  0.51D-04    29.80
    4     1     1     1.06441146    -0.26599156   -30.63005675    -0.00022073    -0.00001099  0.49D-05  0.13D-05    44.20
    4     2     2     1.06834495    -0.26719247   -30.53436255    -0.00029745    -0.00002536  0.19D-04  0.25D-05    44.20
    4     3     3     1.06834276    -0.26719243   -30.53436250    -0.00029853    -0.00002537  0.19D-04  0.25D-05    44.20
    4     4     4     1.06834610    -0.26719227   -30.53436234    -0.00029913    -0.00002554  0.19D-04  0.25D-05    44.20
    4     5     5     1.06834575    -0.26719218   -30.53436226    -0.00029957    -0.00002559  0.19D-04  0.25D-05    44.20
    4     6     6     1.06834571    -0.26719213   -30.53436221    -0.00029967    -0.00002563  0.19D-04  0.25D-05    44.20
    4     7     7     1.06996952    -0.26423843   -30.48873381    -0.00028953    -0.00001626  0.74D-05  0.25D-05    44.20
    5     1     1     1.06470310    -0.26600442   -30.63006960    -0.00001285    -0.00000070  0.33D-06  0.85D-07    58.51
    5     2     2     1.06896400    -0.26722633   -30.53439641    -0.00003386    -0.00000332  0.16D-05  0.40D-06    58.51
    5     3     3     1.06896220    -0.26722632   -30.53439639    -0.00003389    -0.00000333  0.16D-05  0.40D-06    58.51
    5     4     4     1.06896102    -0.26722626   -30.53439634    -0.00003400    -0.00000337  0.17D-05  0.40D-06    58.51
    5     5     5     1.06896079    -0.26722625   -30.53439633    -0.00003406    -0.00000338  0.17D-05  0.40D-06    58.51
    5     6     6     1.06896074    -0.26722624   -30.53439632    -0.00003411    -0.00000339  0.17D-05  0.41D-06    58.51
    5     7     7     1.07015599    -0.26425718   -30.48875256    -0.00001875    -0.00000129  0.88D-06  0.18D-06    58.51
    6     1     1     1.06473382    -0.26600522   -30.63007040    -0.00000080    -0.00000004  0.13D-07  0.70D-08    72.78
    6     2     2     1.06904572    -0.26723035   -30.53440043    -0.00000402    -0.00000033  0.12D-06  0.44D-07    72.78
    6     3     3     1.06904549    -0.26723035   -30.53440042    -0.00000403    -0.00000033  0.12D-06  0.45D-07    72.78
    6     4     4     1.06904535    -0.26723034   -30.53440042    -0.00000408    -0.00000034  0.13D-06  0.46D-07    72.78
    6     5     5     1.06904504    -0.26723034   -30.53440042    -0.00000409    -0.00000034  0.13D-06  0.46D-07    72.78
    6     6     6     1.06904493    -0.26723034   -30.53440042    -0.00000410    -0.00000034  0.13D-06  0.46D-07    72.78
    6     7     7     1.07016344    -0.26425870   -30.48875408    -0.00000152    -0.00000012  0.48D-07  0.24D-07    72.78
    7     1     1     1.06474320    -0.26600526   -30.63007045    -0.00000005    -0.00000000  0.16D-08  0.54D-09    87.13
    7     2     2     1.06906868    -0.26723071   -30.53440079    -0.00000036    -0.00000004  0.26D-07  0.45D-08    87.13
    7     3     3     1.06906868    -0.26723071   -30.53440079    -0.00000037    -0.00000004  0.26D-07  0.45D-08    87.13
    7     4     4     1.06906846    -0.26723071   -30.53440079    -0.00000037    -0.00000004  0.27D-07  0.46D-08    87.13
    7     5     5     1.06906845    -0.26723071   -30.53440079    -0.00000037    -0.00000004  0.27D-07  0.46D-08    87.13
    7     6     6     1.06906838    -0.26723071   -30.53440079    -0.00000037    -0.00000004  0.27D-07  0.47D-08    87.13
    7     7     7     1.07017496    -0.26425883   -30.48875421    -0.00000013    -0.00000002  0.97D-08  0.29D-08    87.13
    8     1     1     1.06474516    -0.26600527   -30.63007045    -0.00000000    -0.00000000  0.33D-09  0.12D-09    99.59
    8     2     2     1.06908058    -0.26723075   -30.53440083    -0.00000004    -0.00000001  0.28D-08  0.69D-09    99.59
    8     3     3     1.06908054    -0.26723075   -30.53440083    -0.00000004    -0.00000001  0.29D-08  0.70D-09    99.59
    8     4     4     1.06908040    -0.26723075   -30.53440083    -0.00000004    -0.00000001  0.30D-08  0.71D-09    99.59
    8     5     5     1.06908038    -0.26723075   -30.53440083    -0.00000004    -0.00000001  0.30D-08  0.71D-09    99.59
    8     6     6     1.06908036    -0.26723075   -30.53440083    -0.00000004    -0.00000001  0.30D-08  0.72D-09    99.59
    8     7     7     1.07017529    -0.26425885   -30.48875423    -0.00000002    -0.00000000  0.43D-09  0.18D-09    99.59


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.5%
 S   2.5%  13.7%
 P   0.9%  15.0%  12.5%

 Initialization:   0.4%
 Other:           52.5%

 Total CPU:       99.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/00000\222000          -0.0438976   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.9437860
 22000000222000           0.9323112  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0377801
 2/0\0000222000           0.0000000   0.0000000   0.0000000   0.8714420   0.0000000  -0.0000000  -0.0000000
 2/00\000222000          -0.0000000   0.0000000  -0.0000000   0.0000000   0.8714420  -0.0000000   0.0000000
 2/000\00222000          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.8714420   0.0000000
 2/0000\0222000          -0.0000000   0.8476650   0.2021763  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2/\00000222000           0.0000000  -0.2021763   0.8476650  -0.0000000   0.0000000   0.0000000  -0.0000000
 20000000222/\0          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.4030853   0.0000000
 200000002220/\          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.4030853  -0.0000000  -0.0000000
 20000000222/0\          -0.0000000   0.0000000   0.0000000  -0.4030852  -0.0000000  -0.0000000   0.0000000
 20000000222020          -0.1373207  -0.3201377  -0.0763559  -0.0000000  -0.0000000   0.0000000  -0.0378340
 20000000222200          -0.1373207   0.0939427   0.3154253  -0.0000000   0.0000000  -0.0000000  -0.0378339
 20000000222002          -0.1373207   0.2261950  -0.2390694  -0.0000000   0.0000000   0.0000000  -0.0378340
 20000002222000          -0.0101055   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.1559689
 200/00\0222000           0.0000000  -0.0000000  -0.0000000   0.0725421   0.0000000   0.0000000  -0.0000000
 20/000\0222000          -0.0000000  -0.0168299   0.0705629   0.0000000   0.0000000  -0.0000000   0.0000000
 2000/\00222000           0.0000000   0.0000000   0.0000000  -0.0628234   0.0000000  -0.0000000  -0.0000000
 20/00\00222000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0628234  -0.0000000
 20/0\000222000          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0628234  -0.0000000  -0.0000000
 200/0\00222000          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0628233  -0.0000000  -0.0000000
 200/\000222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0628233   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.964443    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.051834
 2          -0.000000   -0.227009   -0.000000    0.000000    0.000000    0.936720   -0.000000
 3          -0.000000    0.936720   -0.000000   -0.000000    0.000000    0.227009   -0.000000
 4          -0.000000    0.000000    0.963835   -0.000000   -0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.963835    0.000000    0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.963835   -0.000000   -0.000000
 7           0.056082    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.962146

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.965832   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.002185
 2          -0.000000    0.963834   -0.000000   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.963834   -0.000000    0.000000   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.963835   -0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.963835    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.963835   -0.000000
 7           0.002185    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.963776


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96444271 (fixed)   0.96621831 (relaxed)   0.96583215 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00681809   -0.01268064   -0.20102824
 Singles      0.02573917   -0.06659937   -0.06851352
 Pairs        0.03944742    0.01428367    0.00353649
 Total        1.07200469   -0.06499634   -0.26600527
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.36362864
 Nuclear energy                         0.00000000
 Kinetic energy                         9.73548965
 One electron energy                  -49.72706913
 Two electron energy                   19.09699868
 Virial quotient                       -3.14622803
 Correlation energy                    -0.26644181
 !MRCI STATE 1.1 Energy               -30.630070451100

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.64925551 (Davidson, fixed reference)
 Cluster corrected energies           -30.64902725 (Davidson, relaxed reference)
 Cluster corrected energies           -30.64925551 (Davidson, rotated reference)

 Cluster corrected energies           -30.64609701 (Pople, fixed reference)
 Cluster corrected energies           -30.64589818 (Pople, relaxed reference)
 Cluster corrected energies           -30.64609701 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.93671973 (fixed)   0.96516857 (relaxed)   0.96383442 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00689618   -0.00924365   -0.19016668
 Singles      0.02719432   -0.06436810   -0.06654828
 Pairs        0.04236266   -0.00000000   -0.01051579
 Total        1.07645315   -0.07361175   -0.26723075
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26717008
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91303551
 One electron energy                  -49.72815630
 Two electron energy                   19.19375547
 Virial quotient                       -3.08022712
 Correlation energy                    -0.26723075
 !MRCI STATE 2.1 Energy               -30.534400830968

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.55483146 (Davidson, fixed reference)
 Cluster corrected energies           -30.55403675 (Davidson, relaxed reference)
 Cluster corrected energies           -30.55483146 (Davidson, rotated reference)

 Cluster corrected energies           -30.55151358 (Pople, fixed reference)
 Cluster corrected energies           -30.55081856 (Pople, relaxed reference)
 Cluster corrected energies           -30.55151358 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.93671975 (fixed)   0.96516859 (relaxed)   0.96383445 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00689617   -0.00924365   -0.19016670
 Singles      0.02719426   -0.06436809   -0.06654828
 Pairs        0.04236267   -0.00000000   -0.01051577
 Total        1.07645310   -0.07361174   -0.26723075
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26717008
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91303508
 One electron energy                  -49.72815515
 Two electron energy                   19.19375432
 Virial quotient                       -3.08022725
 Correlation energy                    -0.26723075
 !MRCI STATE 3.1 Energy               -30.534400830933

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.55483145 (Davidson, fixed reference)
 Cluster corrected energies           -30.55403674 (Davidson, relaxed reference)
 Cluster corrected energies           -30.55483145 (Davidson, rotated reference)

 Cluster corrected energies           -30.55151356 (Pople, fixed reference)
 Cluster corrected energies           -30.55081855 (Pople, relaxed reference)
 Cluster corrected energies           -30.55151356 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96383452 (fixed)   0.96516866 (relaxed)   0.96383452 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00689615   -0.00924365   -0.19016676
 Singles      0.02719410   -0.06436805   -0.06654826
 Pairs        0.04236269   -0.00000000   -0.01051573
 Total        1.07645294   -0.07361170   -0.26723075
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26717008
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91303428
 One electron energy                  -49.72815225
 Two electron energy                   19.19375142
 Virial quotient                       -3.08022750
 Correlation energy                    -0.26723075
 !MRCI STATE 4.1 Energy               -30.534400830805

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.55483141 (Davidson, fixed reference)
 Cluster corrected energies           -30.55403670 (Davidson, relaxed reference)
 Cluster corrected energies           -30.55483141 (Davidson, rotated reference)

 Cluster corrected energies           -30.55151353 (Pople, fixed reference)
 Cluster corrected energies           -30.55081851 (Pople, relaxed reference)
 Cluster corrected energies           -30.55151353 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96383453 (fixed)   0.96516866 (relaxed)   0.96383453 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00689615   -0.00924365   -0.19016676
 Singles      0.02719409   -0.06436805   -0.06654826
 Pairs        0.04236268   -0.00000000   -0.01051573
 Total        1.07645292   -0.07361170   -0.26723075
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26717008
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91303424
 One electron energy                  -49.72815194
 Two electron energy                   19.19375111
 Virial quotient                       -3.08022752
 Correlation energy                    -0.26723075
 !MRCI STATE 5.1 Energy               -30.534400830696

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.55483140 (Davidson, fixed reference)
 Cluster corrected energies           -30.55403669 (Davidson, relaxed reference)
 Cluster corrected energies           -30.55483140 (Davidson, rotated reference)

 Cluster corrected energies           -30.55151352 (Pople, fixed reference)
 Cluster corrected energies           -30.55081851 (Pople, relaxed reference)
 Cluster corrected energies           -30.55151352 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96383454 (fixed)   0.96516868 (relaxed)   0.96383454 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00689615   -0.00924365   -0.19016677
 Singles      0.02719407   -0.06436805   -0.06654826
 Pairs        0.04236268    0.00000000   -0.01051573
 Total        1.07645289   -0.07361170   -0.26723075
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.26717008
 Nuclear energy                         0.00000000
 Kinetic energy                         9.91303419
 One electron energy                  -49.72815167
 Two electron energy                   19.19375084
 Virial quotient                       -3.08022753
 Correlation energy                    -0.26723075
 !MRCI STATE 6.1 Energy               -30.534400830671

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.55483139 (Davidson, fixed reference)
 Cluster corrected energies           -30.55403669 (Davidson, relaxed reference)
 Cluster corrected energies           -30.55483139 (Davidson, rotated reference)

 Cluster corrected energies           -30.55151351 (Pople, fixed reference)
 Cluster corrected energies           -30.55081851 (Pople, relaxed reference)
 Cluster corrected energies           -30.55151351 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96214573 (fixed)   0.96406361 (relaxed)   0.96377636 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00598740   -0.01177059   -0.01287088
 Singles      0.03154512   -0.06800192   -0.07090814
 Pairs        0.03905033   -0.18398259   -0.18047984
 Total        1.07658285   -0.26375510   -0.26425885
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.22493192
 Nuclear energy                         0.00000000
 Kinetic energy                         9.66379129
 One electron energy                  -48.56811995
 Two electron energy                   18.07936572
 Virial quotient                       -3.15494751
 Correlation energy                    -0.26382231
 !MRCI STATE 7.1 Energy               -30.488754228065

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.50895849 (Davidson, fixed reference)
 Cluster corrected energies           -30.50878927 (Davidson, relaxed reference)
 Cluster corrected energies           -30.50895849 (Davidson, rotated reference)

 Cluster corrected energies           -30.50567868 (Pople, fixed reference)
 Cluster corrected energies           -30.50553046 (Pople, relaxed reference)
 Cluster corrected energies           -30.50567868 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       59.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      380.20       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       276.08    103.81    163.96      3.95      0.65      3.49
 REAL TIME  *       304.19 SEC
 DISK USED  *       439.90 MB (local),        7.36 GB (total)
 SF USED    *         2.33 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(10)    =       -30.64925551  AU                              
 SETTING HLSDIAG(11)    =       -30.55483146  AU                              
 SETTING HLSDIAG(12)    =       -30.55483145  AU                              
 SETTING HLSDIAG(13)    =       -30.55483141  AU                              
 SETTING HLSDIAG(14)    =       -30.55483140  AU                              
 SETTING HLSDIAG(15)    =       -30.55483139  AU                              
 SETTING HLSDIAG(16)    =       -30.50895849  AU                              


        HLSDIAG
    -30.56412251
    -30.56412245
    -30.56412245
    -30.56412191
    -30.56412184
    -30.51557889
    -30.48676276
    -30.48676151
    -30.48676152
    -30.64925551
    -30.55483146
    -30.55483145
    -30.55483141
    -30.55483140
    -30.55483139
    -30.50895849
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:    -30.542859    -30.542859    -30.542859    -30.542858    -30.542858    -30.495509    -30.469668    -30.469667
                       -30.469667
 Replaced energies:    -30.564123    -30.564122    -30.564122    -30.564122    -30.564122    -30.515579    -30.486763    -30.486762
                       -30.486762

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:    -30.630070    -30.534401    -30.534401    -30.534401    -30.534401    -30.534401    -30.488754
 Replaced energies:    -30.649256    -30.554831    -30.554831    -30.554831    -30.554831    -30.554831    -30.508958



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -30.64925551

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0   18684.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      48.52      -0.00      -0.00      -0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00   18684.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -17.16
                           -0.00      -0.00      24.27       0.00       0.00      -0.00      -0.00      -4.36       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00   18684.55       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00     -24.27      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -4.36      17.16

    4   4.1  1.0  1.0       0.00       0.00       0.00   18684.67       0.00       0.00       0.00       0.00       0.00      -0.00
                          -48.52      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   18684.68       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       5.02      -0.00       0.00      -0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   29338.63       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      12.63      -0.00      -0.00      -0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   35663.04       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -5.02     -12.63       0.00      -0.00       0.00      -0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   35663.31       0.00       0.00
                           -0.00       4.36      -0.00      -0.00       0.00       0.00       0.00       0.00     151.96       3.09

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   35663.31       3.09
                           -0.00      -0.00       4.36       0.00      -0.00       0.00      -0.00    -151.96       0.00      -0.00

   10   1.1  1.0  0.0      -0.00     -17.16      -0.00      -0.00       0.00      -0.00      -0.00       0.00       3.09   18684.53
                            0.00      -0.00     -17.16       0.00       0.00       0.00       0.00      -3.09       0.00       0.00

   11   2.1  1.0  0.0      17.16       0.00      -0.00      -0.00       0.00      -0.00      -3.09       0.00      -0.00       0.00
                            0.00      -0.00      -0.00     -17.16     -29.71      -0.00       0.00       0.00      -0.00      -0.00

   12   3.1  1.0  0.0       0.00       0.00       0.00      17.16     -29.71      -0.00       0.00       0.00       0.00       0.00
                           17.16       0.00      -0.00      -0.00      -0.00       0.00       3.09       0.00      -0.00      -0.00

   13   4.1  1.0  0.0       0.00       0.00     -17.16      -0.00       0.00       0.00      -0.00      -3.08      -0.00       0.00
                           -0.00      17.16       0.00      -0.00       0.00       0.00      -0.00      -0.00      -3.08      -0.00

   14   5.1  1.0  0.0      -0.00      -0.00      29.71      -0.00      -0.00      -0.00       0.00      -1.79      -0.00       0.00
                           -0.00      29.71       0.00      -0.00      -0.00       0.00       0.00      -0.00       1.79      -0.00

   15   6.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       8.93       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -8.93      -0.00

   16   7.1  1.0  0.0       0.00       3.09      -0.00       0.00      -0.00      -0.00       0.00       0.00    -107.45       0.00
                           -0.00      -0.00      -3.09       0.00      -0.00       0.00       0.00    -107.45      -0.00      -0.00

   17   8.1  1.0  0.0      -0.00      -0.00      -0.00       3.08       1.79      -8.93      -0.00      -0.00       0.00       0.00
                            3.09      -0.00      -0.00       0.00       0.00      -0.00     107.45      -0.00      -0.00      -0.00

   18   9.1  1.0  0.0      -3.09       0.00      -0.00       0.00       0.00      -0.00     107.45      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       3.08      -1.79       8.93       0.00       0.00       0.00      -0.00

   19   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   20   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      17.16
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      17.16

   22   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       3.09

   27   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.09
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   1.1  0.0  0.0      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00     -59.69      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      59.69      -0.00

   29   2.1  0.0  0.0      -0.00      -0.00      34.02      -0.00      -0.00       0.00      -0.00     -18.28      -0.00       0.00
                           -0.00      25.78       0.00      -0.00       0.00       0.00       0.00      -0.00      44.02     -11.65

   30   3.1  0.0  0.0      -0.00      -0.00     -10.13       0.00      -0.00       0.00      -0.00     -61.38      -0.00       0.00
                           -0.00      24.40       0.00       0.00      -0.00      -0.00      -0.00       0.00     -46.52      48.83

   31   4.1  0.0  0.0      -0.00     -17.76      -0.00      -0.00       0.00       0.00       0.00      -0.00      55.47       0.00
                           -0.00      -0.00     -17.76       0.00      -0.00       0.00      -0.00     -55.47       0.00      -0.00

   32   5.1  0.0  0.0       0.00       0.00       0.00      17.76     -30.75       0.00      -0.00       0.00       0.00       0.00
                           17.76       0.00      -0.00       0.00       0.00      -0.00      55.47      -0.00      -0.00      -0.00

   33   6.1  0.0  0.0      17.76      -0.00       0.00      -0.00      -0.00       0.00     -55.47       0.00       0.00       0.00
                            0.00       0.00      -0.00     -17.76     -30.75       0.00       0.00       0.00      -0.00       0.00

   34   7.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -3.32      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       3.32      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0      17.16       0.00       0.00      -0.00       0.00       0.00      -0.00      -3.09       0.00       0.00
                           -0.00     -17.16       0.00       0.00       0.00       0.00      -3.09       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       3.09      -0.00       0.00       0.00       0.00
                            0.00      -0.00     -17.16     -29.71      -0.00       0.00       0.00      -0.00       0.00       0.00

    3   3.1  1.0  1.0      -0.00       0.00     -17.16      29.71       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       3.09       0.00      -0.00       0.00       0.00

    4   4.1  1.0  1.0      -0.00      17.16      -0.00      -0.00      -0.00       0.00       3.08       0.00       0.00       0.00
                           17.16       0.00       0.00       0.00       0.00      -0.00      -0.00      -3.08       0.00       0.00

    5   5.1  1.0  1.0       0.00     -29.71       0.00      -0.00       0.00      -0.00       1.79       0.00       0.00       0.00
                           29.71       0.00      -0.00       0.00       0.00       0.00      -0.00       1.79       0.00       0.00

    6   6.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -8.93      -0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -8.93       0.00       0.00

    7   7.1  1.0  1.0      -3.09       0.00      -0.00       0.00       0.00       0.00      -0.00     107.45       0.00       0.00
                           -0.00      -3.09       0.00      -0.00       0.00      -0.00    -107.45      -0.00       0.00       0.00

    8   8.1  1.0  1.0       0.00       0.00      -3.08      -1.79       8.93       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00     107.45       0.00      -0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00       0.00      -0.00      -0.00       0.00    -107.45       0.00      -0.00       0.00       0.00
                            0.00       0.00       3.08      -1.79       8.93       0.00       0.00      -0.00       0.00       0.00

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      17.16
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   11   2.1  1.0  0.0   18684.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -17.16       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   3.1  1.0  0.0       0.00   18684.55       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      17.16       0.00

   13   4.1  1.0  0.0       0.00       0.00   18684.67       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      17.16

   14   5.1  1.0  0.0       0.00       0.00       0.00   18684.68       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      29.71

   15   6.1  1.0  0.0       0.00       0.00       0.00       0.00   29338.63       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   16   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   35663.04       0.00       0.00      -0.00      -3.09
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   17   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   35663.31       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       3.09      -0.00

   18   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   35663.31       3.09      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   19   1.1  1.0 -1.0     -17.16      -0.00      -0.00       0.00      -0.00      -0.00       0.00       3.09   18684.53       0.00
                           -0.00     -17.16       0.00       0.00       0.00       0.00      -3.09       0.00       0.00      -0.00

   20   2.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      -0.00      -3.09       0.00      -0.00       0.00   18684.55
                           -0.00      -0.00     -17.16     -29.71      -0.00       0.00       0.00      -0.00       0.00       0.00

   21   3.1  1.0 -1.0       0.00       0.00      17.16     -29.71      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       3.09       0.00      -0.00       0.00      24.27

   22   4.1  1.0 -1.0       0.00     -17.16      -0.00       0.00       0.00      -0.00      -3.08      -0.00       0.00       0.00
                           17.16       0.00      -0.00       0.00       0.00      -0.00      -0.00      -3.08      48.52       0.00

   23   5.1  1.0 -1.0      -0.00      29.71      -0.00      -0.00      -0.00       0.00      -1.79      -0.00       0.00       0.00
                           29.71       0.00      -0.00      -0.00       0.00       0.00      -0.00       1.79      -0.00       0.00

   24   6.1  1.0 -1.0       0.00       0.00      -0.00       0.00      -0.00       0.00       8.93       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -8.93      -0.00      -0.00

   25   7.1  1.0 -1.0       3.09      -0.00       0.00      -0.00      -0.00       0.00       0.00    -107.45       0.00       0.00
                           -0.00      -3.09       0.00      -0.00       0.00       0.00    -107.45      -0.00      -0.00      -0.00

   26   8.1  1.0 -1.0      -0.00      -0.00       3.08       1.79      -8.93      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00     107.45      -0.00      -0.00       0.00      -4.36

   27   9.1  1.0 -1.0       0.00      -0.00       0.00       0.00      -0.00     107.45      -0.00      -0.00       0.00       0.00
                            0.00       0.00       3.08      -1.79       8.93       0.00       0.00       0.00       0.00       0.00

   28   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      84.42      -0.00      -0.00       0.00       0.00

   29   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00     -88.11       0.00       0.00       0.00     -25.78

   30   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00     -21.01       0.00      -0.00       0.00     -24.40

   31   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -17.76
                           -0.00      -0.00     -50.22       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   32   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           25.12       0.00      -0.00       0.00       0.00       0.00      -0.00      78.44     -17.76      -0.00

   33   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      17.76      -0.00
                            0.00     -25.12      -0.00       0.00      -0.00       0.00      78.44       0.00      -0.00      -0.00

   34   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       4.69      -0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -25.78     -24.40

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      34.02     -10.13
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -59.69     -18.28     -61.38
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     -59.69     -44.02      46.52

   10   1.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -0.00      -3.09       0.00       0.00       0.00
                          -17.16       0.00       0.00       0.00       0.00      -3.09       0.00       0.00      11.65     -48.83

   11   2.1  1.0  0.0       0.00       0.00      -0.00       0.00       3.09      -0.00       0.00       0.00       0.00       0.00
                           -0.00     -17.16     -29.71      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   12   3.1  1.0  0.0       0.00     -17.16      29.71       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       3.09       0.00      -0.00       0.00      -0.00      -0.00

   13   4.1  1.0  0.0      17.16      -0.00      -0.00      -0.00       0.00       3.08       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -3.08      -0.00       0.00       0.00

   14   5.1  1.0  0.0     -29.71       0.00      -0.00       0.00      -0.00       1.79       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00       1.79      -0.00       0.00      -0.00

   15   6.1  1.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00      -8.93      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -8.93       0.00      -0.00      -0.00

   16   7.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00      -0.00     107.45       0.00       0.00       0.00
                           -3.09       0.00      -0.00       0.00      -0.00    -107.45      -0.00     -84.42      88.11      21.01

   17   8.1  1.0  0.0       0.00      -3.08      -1.79       8.93       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     107.45       0.00      -0.00       0.00      -0.00      -0.00

   18   9.1  1.0  0.0       0.00      -0.00      -0.00       0.00    -107.45       0.00      -0.00       0.00       0.00       0.00
                            0.00       3.08      -1.79       8.93       0.00       0.00      -0.00       0.00      -0.00       0.00

   19   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00     -48.52       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   20   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                          -24.27      -0.00      -0.00       0.00       0.00       4.36      -0.00      -0.00      25.78      24.40

   21   3.1  1.0 -1.0   18684.55       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      34.02     -10.13
                            0.00      -0.00       0.00       0.00       0.00      -0.00       4.36      -0.00       0.00       0.00

   22   4.1  1.0 -1.0       0.00   18684.67       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   23   5.1  1.0 -1.0       0.00       0.00   18684.68       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -5.02       0.00      -0.00       0.00       0.00      -0.00

   24   6.1  1.0 -1.0       0.00       0.00       0.00   29338.63       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -12.63       0.00       0.00       0.00       0.00      -0.00

   25   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   35663.04       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       5.02      12.63      -0.00       0.00      -0.00       0.00       0.00      -0.00

   26   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   35663.31       0.00     -59.69     -18.28     -61.38
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00    -151.96      -0.00      -0.00       0.00

   27   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   35663.31      -0.00      -0.00      -0.00
                           -4.36      -0.00       0.00      -0.00       0.00     151.96      -0.00      59.69      44.02     -46.52

   28   1.1  0.0  0.0      -0.00       0.00      -0.00       0.00      -0.00     -59.69      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00     -59.69       0.00       0.00       0.00

   29   2.1  0.0  0.0      34.02      -0.00      -0.00       0.00      -0.00     -18.28      -0.00       0.00   20723.68       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00     -44.02      -0.00       0.00       0.00

   30   3.1  0.0  0.0     -10.13       0.00      -0.00       0.00      -0.00     -61.38      -0.00       0.00       0.00   20723.69
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      46.52      -0.00      -0.00       0.00

   31   4.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00      -0.00      55.47       0.00       0.00       0.00
                           17.76      -0.00       0.00      -0.00       0.00      55.47      -0.00      -0.00      -0.00      -0.00

   32   5.1  0.0  0.0       0.00      17.76     -30.75       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00     -55.47       0.00       0.00      -0.00      -0.00      -0.00

   33   6.1  0.0  0.0       0.00      -0.00      -0.00       0.00     -55.47       0.00       0.00       0.00       0.00       0.00
                            0.00      17.76      30.75      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   34   7.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00      -3.32      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -3.32      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34

    1   1.1  1.0  1.0      -0.00       0.00      17.76       0.00
                            0.00     -17.76      -0.00      -0.00

    2   2.1  1.0  1.0     -17.76       0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00

    3   3.1  1.0  1.0      -0.00       0.00       0.00       0.00
                           17.76       0.00       0.00      -0.00

    4   4.1  1.0  1.0      -0.00      17.76      -0.00       0.00
                           -0.00      -0.00      17.76       0.00

    5   5.1  1.0  1.0       0.00     -30.75      -0.00      -0.00
                            0.00      -0.00      30.75       0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

    7   7.1  1.0  1.0       0.00      -0.00     -55.47       0.00
                            0.00     -55.47      -0.00      -0.00

    8   8.1  1.0  1.0      -0.00       0.00       0.00      -3.32
                           55.47       0.00      -0.00       0.00

    9   9.1  1.0  1.0      55.47       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -3.32

   10   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00

   11   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00     -25.12      -0.00      -0.00

   12   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      -0.00      25.12       0.00

   13   4.1  1.0  0.0       0.00       0.00       0.00       0.00
                           50.22       0.00       0.00      -0.00

   14   5.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00

   15   6.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00

   16   7.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -4.69

   17   8.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00     -78.44       0.00

   18   9.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00     -78.44      -0.00      -0.00

   19   1.1  1.0 -1.0      -0.00       0.00      17.76       0.00
                           -0.00      17.76       0.00       0.00

   20   2.1  1.0 -1.0     -17.76       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00

   21   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00
                          -17.76      -0.00      -0.00       0.00

   22   4.1  1.0 -1.0      -0.00      17.76      -0.00       0.00
                            0.00       0.00     -17.76      -0.00

   23   5.1  1.0 -1.0       0.00     -30.75      -0.00      -0.00
                           -0.00       0.00     -30.75      -0.00

   24   6.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00

   25   7.1  1.0 -1.0       0.00      -0.00     -55.47       0.00
                           -0.00      55.47       0.00       0.00

   26   8.1  1.0 -1.0      -0.00       0.00       0.00      -3.32
                          -55.47      -0.00       0.00      -0.00

   27   9.1  1.0 -1.0      55.47       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       3.32

   28   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   29   2.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   30   3.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   31   4.1  0.0  0.0   20723.70       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   32   5.1  0.0  0.0       0.00   20723.70       0.00       0.00
                           -0.00       0.00       0.00       0.00

   33   6.1  0.0  0.0       0.00       0.00   20723.70       0.00
                           -0.00      -0.00       0.00       0.00

   34   7.1  0.0  0.0       0.00       0.00       0.00   30791.64
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 34)

    The diagonal matrixelements are shifted by    -30.64925551 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+          18684.535       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000   18684.548       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000   18684.548       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   18684.665       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   18684.682       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   29338.627       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   35663.035       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   35663.310
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000      -0.000     -24.266       0.000       0.000       0.000       0.000      -4.365

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000     -24.262     -42.022      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               24.266       0.000       0.000      -0.000      -0.000       0.000       4.365       0.000

    4    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000      24.262       0.000       0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000      42.022       0.000      -0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -4.365       0.000      -0.000       0.000       0.000    -151.955

    8    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                4.365      -0.000      -0.000       0.000       0.000      -0.000     151.955       0.000

    9    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       4.361      -2.537      12.623       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      48.523      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      24.265       0.000       0.000      -0.000      -0.000      -4.363

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -24.265      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -48.523      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       5.015      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      12.626      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -5.015     -12.626       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       4.363      -0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       4.363       0.000      -0.000       0.000      -0.000    -151.963

    1    1  |0 0>              -0.000      -0.000      -0.001       0.000      -0.000       0.000      -0.000     -84.413
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      -0.000      48.112      -0.000      -0.000       0.000      -0.000     -25.853
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -0.000      -0.000     -14.333       0.000      -0.000       0.000      -0.000     -86.801
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -0.000     -25.116      -0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000      25.113     -43.492       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              25.115      -0.000       0.000      -0.000      -0.000       0.000     -78.443       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -4.689
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000     -24.266       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -24.262     -42.022      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000      24.266       0.000       0.000      -0.000      -0.000       0.000       4.365

    4    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000      24.262       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000      42.022       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -4.365       0.000      -0.000       0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       4.365      -0.000      -0.000       0.000       0.000      -0.000     151.955

    9    1  |1 1>+          35663.309       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       4.361      -2.537      12.623       0.000

    1    1  |1 0>               0.000   18684.535       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000       0.000   18684.548       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000   18684.548       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000   18684.665       0.000       0.000       0.000
                               -4.361      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000   18684.682       0.000       0.000
                                2.537      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   29338.627       0.000
                              -12.623      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   35663.035
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000      24.266       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000     -24.266       0.000       0.000       0.000      -0.000       0.000       4.365
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 1>-              0.000      -0.000      -0.000       0.000     -24.261      42.023       0.000      -0.000
                               -4.363       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.000      -0.000      -0.000      24.261       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000     -42.023       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    6    1  |1 1>-              0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>-              0.000      -0.000      -4.365       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -4.361      -2.537      12.623       0.000
                              151.963      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 1>-              0.000       4.365      -0.000       0.000      -0.000      -0.000       0.000    -151.956
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    1    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      84.417

    2    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -11.647      -0.000       0.000      -0.000      -0.000       0.000     -88.105

    3    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      48.831       0.000       0.000      -0.000       0.000       0.000     -21.014

    4    1  |0 0>              78.441       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     -50.218       0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      25.115       0.000      -0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -25.115      -0.000       0.000      -0.000       0.000

    7    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       4.690

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.365       0.000      -0.000       0.000       0.000      48.523      -0.000      -0.000

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      24.265       0.000       0.000      -0.000

    3    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -24.265      -0.000       0.000      -0.000      -0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -4.361     -48.523      -0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       2.537       0.000      -0.000       0.000       0.000       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -12.623       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -151.955      -0.000       0.000       0.000       0.000      -0.000      -5.015     -12.626

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       4.363      -0.000      -0.000       0.000       0.000

    9    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       4.363       0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000     -24.266      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000      24.266       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      24.261     -42.023      -0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000     -24.261       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000      -0.000      -0.000      42.023      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       4.365      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 0>           35663.310       0.000      -0.000      -0.000      -0.000       4.361       2.537     -12.623
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000   35663.309      -4.365       0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-             -0.000      -4.365   18684.535       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000       0.000       0.000   18684.548       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000      -0.000       0.000       0.000   18684.548       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              4.361       0.000       0.000       0.000       0.000   18684.665       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              2.537       0.000       0.000       0.000       0.000       0.000   18684.682       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-            -12.623      -0.000       0.000       0.000       0.000       0.000       0.000   29338.627
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000     151.956       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.001      -0.000      -0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      36.464       0.000      -0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      34.505       0.000       0.000      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000     -25.116       0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      78.445      25.115       0.000      -0.000       0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               78.444       0.000       0.000       0.000      -0.000     -25.114     -43.492       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000     -25.116       0.000
                               -0.000      -4.363       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.001      48.112     -14.333      -0.000       0.000
                               -0.000       0.000      -4.363       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      25.113
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000     -43.492
                                5.015      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.626      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000     -84.413     -25.853     -86.801      -0.000       0.000
                                0.000       0.000     151.963       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000      78.441       0.000
                               -0.000    -151.963       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       4.365       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      11.647     -48.831       0.000       0.000

    2    1  |1 0>              -4.365       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000     -25.115

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    4    1  |1 0>              -0.000      -4.361      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      50.218       0.000

    5    1  |1 0>               0.000      -2.537      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               0.000      12.623       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000    -151.956       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -84.417      88.105      21.014      -0.000      -0.000

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>             151.956      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000     -78.445

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -25.115

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.001     -36.464     -34.505       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      25.116       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-          35663.035       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000     -78.443

    8    1  |1 1>-              0.000   35663.310       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      78.441       0.000

    9    1  |1 1>-              0.000       0.000   35663.309       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -84.413     -62.248      65.789      -0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      84.413       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000   20723.683       0.000       0.000       0.000
                                0.000      -0.000      62.248      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000   20723.685       0.000       0.000
                               -0.000       0.000     -65.789      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   20723.695       0.000
                               -0.000     -78.441       0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   20723.696
                               78.443      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       4.689      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       33          34

    1    1  |1 1>+             25.115       0.000
                                0.000       0.000

    2    1  |1 1>+             -0.000       0.000
                                0.000       0.000

    3    1  |1 1>+              0.000       0.000
                                0.000       0.000

    4    1  |1 1>+             -0.000       0.000
                                0.000       0.000

    5    1  |1 1>+             -0.000      -0.000
                                0.000       0.000

    6    1  |1 1>+              0.000       0.000
                                0.000       0.000

    7    1  |1 1>+            -78.443       0.000
                                0.000       0.000

    8    1  |1 1>+              0.000      -4.689
                                0.000       0.000

    9    1  |1 1>+              0.000      -0.000
                                0.000       0.000

    1    1  |1 0>               0.000       0.000
                               -0.000       0.000

    2    1  |1 0>               0.000       0.000
                               -0.000      -0.000

    3    1  |1 0>               0.000       0.000
                               25.115       0.000

    4    1  |1 0>               0.000       0.000
                                0.000      -0.000

    5    1  |1 0>               0.000       0.000
                               -0.000       0.000

    6    1  |1 0>               0.000       0.000
                                0.000      -0.000

    7    1  |1 0>               0.000       0.000
                               -0.000      -4.690

    8    1  |1 0>               0.000       0.000
                              -78.444       0.000

    9    1  |1 0>               0.000       0.000
                               -0.000      -0.000

    1    1  |1 1>-              0.000       0.000
                               -0.000      -0.000

    2    1  |1 1>-              0.000       0.000
                               -0.000      -0.000

    3    1  |1 1>-              0.000       0.000
                                0.000      -0.000

    4    1  |1 1>-              0.000       0.000
                               25.114       0.000

    5    1  |1 1>-              0.000       0.000
                               43.492       0.000

    6    1  |1 1>-              0.000       0.000
                               -0.000      -0.000

    7    1  |1 1>-              0.000       0.000
                               -0.000      -0.000

    8    1  |1 1>-              0.000       0.000
                               -0.000       0.000

    9    1  |1 1>-              0.000       0.000
                                0.000      -4.689

    1    1  |0 0>               0.000       0.000
                                0.000       0.000

    2    1  |0 0>               0.000       0.000
                                0.000       0.000

    3    1  |0 0>               0.000       0.000
                                0.000       0.000

    4    1  |0 0>               0.000       0.000
                                0.000       0.000

    5    1  |0 0>               0.000       0.000
                                0.000       0.000

    6    1  |0 0>           20723.698       0.000
                                0.000       0.000

    7    1  |0 0>               0.000   30791.636
                               -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -30.64925826    -0.00000275       -0.60      0.00000000        0.00      0.0000
    2   -30.56445389     0.08480162    18611.80      0.08480437    18612.41      2.3076
    3   -30.56445389     0.08480162    18611.80      0.08480437    18612.41      2.3076
    4   -30.56445385     0.08480166    18611.81      0.08480441    18612.42      2.3076
    5   -30.56424142     0.08501409    18658.44      0.08501684    18659.04      2.3134
    6   -30.56424138     0.08501413    18658.45      0.08501689    18659.05      2.3134
    7   -30.56424101     0.08501450    18658.53      0.08501726    18659.13      2.3134
    8   -30.56424098     0.08501453    18658.53      0.08501729    18659.14      2.3134
    9   -30.56424098     0.08501453    18658.53      0.08501729    18659.14      2.3134
   10   -30.56390134     0.08535417    18733.07      0.08535692    18733.68      2.3227
   11   -30.56390118     0.08535433    18733.11      0.08535709    18733.72      2.3227
   12   -30.56390118     0.08535433    18733.11      0.08535709    18733.72      2.3227
   13   -30.56390117     0.08535434    18733.11      0.08535710    18733.72      2.3227
   14   -30.56390104     0.08535447    18733.14      0.08535723    18733.75      2.3227
   15   -30.56390104     0.08535447    18733.14      0.08535723    18733.75      2.3227
   16   -30.56390100     0.08535451    18733.15      0.08535727    18733.75      2.3227
   17   -30.55482682     0.09442869    20724.70      0.09443144    20725.31      2.5696
   18   -30.55482681     0.09442870    20724.70      0.09443146    20725.31      2.5696
   19   -30.55482676     0.09442875    20724.72      0.09443151    20725.32      2.5696
   20   -30.55482675     0.09442876    20724.72      0.09443151    20725.32      2.5696
   21   -30.55482674     0.09442877    20724.72      0.09443152    20725.32      2.5696
   22   -30.51557912     0.13367639    29338.58      0.13367914    29339.18      3.6376
   23   -30.51557912     0.13367639    29338.58      0.13367914    29339.18      3.6376
   24   -30.51557912     0.13367639    29338.58      0.13367914    29339.18      3.6376
   25   -30.50895856     0.14029695    30791.62      0.14029971    30792.23      3.8177
   26   -30.48814385     0.16111166    35359.92      0.16111441    35360.53      4.3841
   27   -30.48745426     0.16180125    35511.27      0.16180401    35511.87      4.4029
   28   -30.48745426     0.16180125    35511.27      0.16180401    35511.88      4.4029
   29   -30.48745367     0.16180185    35511.40      0.16180460    35512.00      4.4029
   30   -30.48606627     0.16318924    35815.90      0.16319199    35816.50      4.4407
   31   -30.48606605     0.16318946    35815.95      0.16319221    35816.55      4.4407
   32   -30.48606605     0.16318946    35815.95      0.16319221    35816.55      4.4407
   33   -30.48606539     0.16319012    35816.09      0.16319287    35816.70      4.4407
   34   -30.48606539     0.16319012    35816.09      0.16319287    35816.70      4.4407

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000  0.00000003  0.54802430  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40845991
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.54797156  0.00000000  0.00000000 -0.40848243  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000005 -0.00000000  0.00000000 -0.00000000  0.40722427  0.70725292  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.54742019  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000007
                           0.00000000  0.00008027 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.31592391  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000012
                          -0.00000000  0.00004633 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000057  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00023525  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00044672
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00238723 -0.00000000 -0.00000000  0.00000000  0.00044790 -0.00025785  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00023633 -0.00000000 -0.00000000  0.00044746 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.81617785  0.00092172  0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00008034  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.54789850  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000007

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000003 -0.54789822 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.40863819

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000657 -0.00000000 -0.00000000  0.81571751 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.63202441  0.00000000 -0.00000000 -0.00000842  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000052  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00238736 -0.00000000 -0.00000000 -0.00000000 -0.00000058  0.00051692  0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00023541 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00044831

   9    1  |1 0>          -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00023540 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00008036 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.54802401 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000007

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000005  0.00000000  0.00000000  0.00000000  0.40882041 -0.70633177  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.54797099 -0.00000000 -0.00000000  0.40848292 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000003  0.54741431  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40777661

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000002 -0.31593414 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70640267

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000057  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

   7    1  |1 1>-         -0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00023525  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00023633 -0.00000000 -0.00000000  0.00044746 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00238723 -0.00000000  0.00000000  0.00000000 -0.00044732 -0.00025886 -0.00000000 -0.00000000

   1    1  |0 0>           0.99999145  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000007  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00687914 -0.02898572 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.02898716 -0.00687878  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000 -0.02980531  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000480 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000482  0.00000000  0.00000000  0.00000000 -0.00000000 -0.02980651
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000109 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.00000007  0.00000000 -0.00000002  0.66456185 -0.00000000 -0.30172706 -0.00000002 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.57700076 -0.00000000 -0.00000000  0.44698009
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.57738179 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000010  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.40776289  0.00000000  0.43584759  0.00000001  0.00000000 -0.00000004  0.58646627  0.00000000
                           0.00062114  0.00000000  0.00241814  0.00000000  0.00000000 -0.00000000  0.00057451 -0.00000000

   5    1  |1 1>+          0.70640947  0.00000000 -0.39784803 -0.00000001 -0.00000000 -0.00000003  0.49238608  0.00000000
                          -0.00107607 -0.00000000 -0.00220731 -0.00000000 -0.00000000 -0.00000000  0.00048234 -0.00000000

   6    1  |1 1>+          0.00000001  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000027  0.00000000 -0.00000052 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000024  0.00000000 -0.00000000 -0.00000097
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000010  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.57728757  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>           0.00062247 -0.00000000 -0.00254396 -0.00000000 -0.00000000 -0.00000000  0.00055624 -0.00000000
                           0.40863750 -0.00000000  0.45852581  0.00000001  0.00000000  0.00000004 -0.56782157 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000007 -0.00000000 -0.00000001  0.45831802 -0.00000000  0.56799540  0.00000004  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.57793816  0.00000000  0.00000000  0.00007916

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00010143 -0.00000000 -0.00000000  0.77494844

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000066 -0.00000000  0.00000062  0.00000000  0.00000000

   9    1  |1 0>           0.00000068  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00044831 -0.00000000 -0.00000066 -0.00000000 -0.00000000 -0.00000000  0.00000062  0.00000000

   1    1  |1 1>-          0.00062220 -0.00000000 -0.00368638 -0.00000000 -0.00000000  0.00000000 -0.00029582  0.00000000
                           0.40845971  0.00000000  0.66443744  0.00000002  0.00000000 -0.00000002  0.30197842 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000010 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.57738145 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.57711142 -0.00000000 -0.00000000  0.44683745

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000007 -0.00000000  0.00000001 -0.43608392  0.00000000  0.58629211  0.00000004  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000012  0.00000000  0.00000001 -0.39765934  0.00000000 -0.49254804 -0.00000003 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000002 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000068 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00044672 -0.00000000  0.00000027  0.00000000  0.00000000  0.00000000 -0.00000052 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000024 -0.00000000  0.00000000  0.00000097

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000105 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000442 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001829  0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.02980651  0.00000000 -0.00002273 -0.00000000 -0.00000000 -0.00000000  0.00000522  0.00000000
                          -0.00004540 -0.00000000 -0.00000013 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00002276 -0.00000000  0.00000522  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.01217084 -0.00000000  0.00000083  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.01217138 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000080
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.02315084 -0.00747648  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.01217047 -0.00000000 -0.00000083 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.02107783  0.00000000 -0.00000047 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.99999582  0.00002719  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000796  0.00000000  0.00000013

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00518525  0.00000006 -0.00204555 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00183953  0.00569712 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000 -0.00518504 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00204498
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000020

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00510202 -0.02378608  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.01217105  0.00000000 -0.00000086 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.01217102  0.00000000 -0.00000087 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.02433724  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000023 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000097

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000013 -0.00000000  0.00009964
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.99999581

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00585414 -0.00125569 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00518522 -0.00000006  0.00204499  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00518522 -0.00000000 -0.00204499 -0.00000006 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.01217087  0.00000000  0.00000083  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01804801 -0.01631342 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.01217138  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000080

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.01217087 -0.00000000  0.00000083 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.02107758  0.00000000 -0.00000047  0.00000000

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00002719  0.99999582  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00518525 -0.00000000  0.00204555  0.00000006  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000020
                           0.00000000 -0.00000000 -0.00518504 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00204498

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00401422 -0.00444152  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.99926841 -0.02282875  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.02282877  0.99926837 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.99952871  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.99952867 -0.00000000  0.00000002  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000077  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.99952867  0.00000000 -0.00000002  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00018257 -0.00000000  0.00000000  0.00000000  0.00016924
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00018253 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000001 -0.00000016 -0.00000000  0.00000000  0.00000000 -0.00029308  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.00018238 -0.00000000  0.00000000  0.00000000  0.00016904 -0.00000000
                          -0.00000000 -0.00000000 -0.00000081 -0.00000000  0.00000000 -0.00000000  0.00000102 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.00010382 -0.00000000 -0.00000000 -0.00000000 -0.00029258  0.00000000
                           0.00000000  0.00000000 -0.00000046 -0.00000000  0.00000000  0.00000000 -0.00000176  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00289242 -0.00000000 -0.00000000  0.00000000  0.00000090 -0.00000000
                          -0.00000000 -0.00000000 -0.00001282 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000 -0.00000001  0.70742223  0.00000000  0.00000000  0.00000001  0.70676903
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00102638  0.57723135 -0.00000000 -0.00000000 -0.00000000 -0.40776045  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.70710457 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000030  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000081  0.00000000 -0.00000000 -0.00000000  0.00000102 -0.00000000
                          -0.00000000 -0.00000000 -0.00018271 -0.00000000 -0.00000000 -0.00000000 -0.00016906  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00018272  0.00000000  0.00000000  0.00000000  0.00016906

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00021229  0.00000000  0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00289203 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00102659  0.57756960 -0.00000000 -0.00000000 -0.00000000  0.81631486 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000001 -0.70678520 -0.00000000  0.00000000  0.00000001  0.70740608

   9    1  |1 0>          -0.00000000  0.00000000  0.00313379  0.00000000 -0.00000000  0.00000000 -0.00424898  0.00000000
                           0.00000000 -0.00000000 -0.70677904 -0.00000001 -0.00000000  0.00000000  0.70739253 -0.00000001

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000081 -0.00000000  0.00000000 -0.00000000  0.00000102 -0.00000000
                          -0.00000000  0.00000000  0.00018257  0.00000000  0.00000000 -0.00000000 -0.00016924  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00000016 -0.00000000 -0.00000000  0.00000000  0.00029277 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00018253  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00018238 -0.00000000  0.00000000  0.00000000  0.00016905

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00010382  0.00000000  0.00000000  0.00000000  0.00029258

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00289245  0.00000000 -0.00000000 -0.00000000 -0.00000091

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00313660 -0.00000000  0.00000000  0.00000000 -0.00424517  0.00000000
                           0.00000000  0.00000000  0.70741449  0.00000001  0.00000000  0.00000000  0.70675707 -0.00000001

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.70710300 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00102638  0.57723225 -0.00000000 -0.00000000 -0.00000000 -0.40903214  0.00000000  0.00000000

   1    1  |0 0>          -0.00000844 -0.00413487  0.00000000  0.00000000  0.00000000  0.00000103 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000220 -0.00000000  0.00000000 -0.00000000  0.00714938 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000053 -0.00000000 -0.00000000 -0.00000000  0.00169840  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000328 -0.00000000  0.00000000 -0.00000000 -0.00734850  0.00000000
                          -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00004414  0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000329  0.00000000 -0.00000000 -0.00000000 -0.00734863
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.99999842 -0.00177789  0.00000000  0.00000000  0.00000000  0.00000032 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     33          34

   1    1  |1 1>+         -0.00000000 -0.00000000
                           0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00016905
                           0.00000000 -0.00000000

   3    1  |1 1>+         -0.00016879  0.00000000
                           0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000
                           0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000
                           0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000
                           0.00000000 -0.00000000

   8    1  |1 1>+          0.70745496 -0.00000010
                          -0.00000001  0.00000000

   9    1  |1 1>+          0.00000010  0.70708685
                           0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000
                          -0.00033833  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000
                          -0.00000000 -0.00033794

   5    1  |1 0>           0.00000000  0.00000000
                           0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000
                          -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000
                          -0.00073370  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000
                           0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000
                          -0.00016932  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000000 -0.00016905

   4    1  |1 1>-         -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000
                           0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000
                           0.00000010  0.70708841

   9    1  |1 1>-         -0.00000001  0.00000000
                          -0.70671973  0.00000010

   1    1  |0 0>          -0.00000000  0.00000000
                           0.00000000  0.00000000

   2    1  |0 0>           0.00169827 -0.00000000
                          -0.00000000  0.00000000

   3    1  |0 0>          -0.00714882  0.00000000
                           0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00734836
                           0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000
                           0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000
                           0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000
                           0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -30.64925826     -0.00000275       -0.60      0.00000000        0.00      0.0000
     2   1    -30.56445389      0.08480162    18611.80      0.08480437    18612.41      2.3076
     3   1    -30.56445389      0.08480162    18611.80      0.08480437    18612.41      2.3076
     4   1    -30.56445385      0.08480166    18611.81      0.08480441    18612.42      2.3076
     5   1    -30.56424142      0.08501409    18658.44      0.08501684    18659.04      2.3134
     6   1    -30.56424138      0.08501413    18658.45      0.08501689    18659.05      2.3134
     7   1    -30.56424101      0.08501450    18658.53      0.08501726    18659.13      2.3134
     8   1    -30.56424098      0.08501453    18658.53      0.08501729    18659.14      2.3134
     9   1    -30.56424098      0.08501453    18658.53      0.08501729    18659.14      2.3134
    10   1    -30.56390134      0.08535417    18733.07      0.08535692    18733.68      2.3227
    11   1    -30.56390118      0.08535433    18733.11      0.08535709    18733.72      2.3227
    12   1    -30.56390118      0.08535433    18733.11      0.08535709    18733.72      2.3227
    13   1    -30.56390117      0.08535434    18733.11      0.08535710    18733.72      2.3227
    14   1    -30.56390104      0.08535447    18733.14      0.08535723    18733.75      2.3227
    15   1    -30.56390104      0.08535447    18733.14      0.08535723    18733.75      2.3227
    16   1    -30.56390100      0.08535451    18733.15      0.08535727    18733.75      2.3227
    17   1    -30.55482682      0.09442869    20724.70      0.09443144    20725.31      2.5696
    18   1    -30.55482681      0.09442870    20724.70      0.09443146    20725.31      2.5696
    19   1    -30.55482676      0.09442875    20724.72      0.09443151    20725.32      2.5696
    20   1    -30.55482675      0.09442876    20724.72      0.09443151    20725.32      2.5696
    21   1    -30.55482674      0.09442877    20724.72      0.09443152    20725.32      2.5696
    22   1    -30.51557912      0.13367639    29338.58      0.13367914    29339.18      3.6376
    23   1    -30.51557912      0.13367639    29338.58      0.13367914    29339.18      3.6376
    24   1    -30.51557912      0.13367639    29338.58      0.13367914    29339.18      3.6376
    25   1    -30.50895856      0.14029695    30791.62      0.14029971    30792.23      3.8177
    26   1    -30.48814385      0.16111166    35359.92      0.16111441    35360.53      4.3841
    27   1    -30.48745426      0.16180125    35511.27      0.16180401    35511.87      4.4029
    28   1    -30.48745426      0.16180125    35511.27      0.16180401    35511.88      4.4029
    29   1    -30.48745367      0.16180185    35511.40      0.16180460    35512.00      4.4029
    30   1    -30.48606627      0.16318924    35815.90      0.16319199    35816.50      4.4407
    31   1    -30.48606605      0.16318946    35815.95      0.16319221    35816.55      4.4407
    32   1    -30.48606605      0.16318946    35815.95      0.16319221    35816.55      4.4407
    33   1    -30.48606539      0.16319012    35816.09      0.16319287    35816.70      4.4407
    34   1    -30.48606539      0.16319012    35816.09      0.16319287    35816.70      4.4407

 E0 =    -30.64925551 is the energy of the lowest zeroth-order state
 E1 =    -30.64925826 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000  0.00000003  0.54802430  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40845991
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.54797156  0.00000000  0.00000000 -0.40848243  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000005 -0.00000000  0.00000000 -0.00000000  0.40722427  0.70725292  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000000 -0.54742019  0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000007
                                0.00000000  0.00008027 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+       0.00000000 -0.31592391  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000012
                               -0.00000000  0.00004633 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00000000 -0.00000057  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.00000000  0.00000000  0.00023525  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00044672
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00238723 -0.00000000 -0.00000000  0.00000000  0.00044790 -0.00025785  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00023633 -0.00000000 -0.00000000  0.00044746 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.81617785  0.00092172  0.00000000  0.00000000

 11  1     2    1  |1 0>        0.00000000 -0.00008034  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.54789850  0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000007

 12  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000003 -0.54789822 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.40863819

 13  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000657 -0.00000000 -0.00000000  0.81571751 -0.00000000

 14  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.63202441  0.00000000 -0.00000000 -0.00000842  0.00000000

 15  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000052  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00238736 -0.00000000 -0.00000000 -0.00000000 -0.00000058  0.00051692  0.00000000  0.00000000

 17  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00023541 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00044831

 18  1     9    1  |1 0>       -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00023540 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     1    1  |1 1>-       0.00000000  0.00008036 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.54802401 -0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000007

 20  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000005  0.00000000  0.00000000  0.00000000  0.40882041 -0.70633177  0.00000000  0.00000000

 21  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.54797099 -0.00000000 -0.00000000  0.40848292 -0.00000000

 22  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000003  0.54741431  0.00000000 -0.00000000 -0.00000000  0.00000000  0.40777661

 23  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000002 -0.31593414 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.70640267

 24  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000057  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

 25  1     7    1  |1 1>-      -0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00023525  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00023633 -0.00000000 -0.00000000  0.00044746 -0.00000000

 27  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00238723 -0.00000000  0.00000000  0.00000000 -0.00044732 -0.00025886 -0.00000000 -0.00000000

 28  1     1    1  |0 0>        0.99999145  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000007  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00687914 -0.02898572 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 30  1     3    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.02898716 -0.00687878  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 31  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000 -0.02980531  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 32  1     5    1  |0 0>       -0.00000000  0.00000480 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 33  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000482  0.00000000  0.00000000  0.00000000 -0.00000000 -0.02980651
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 34  1     7    1  |0 0>        0.00000109 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.00000007  0.00000000 -0.00000002  0.66456185 -0.00000000 -0.30172706 -0.00000002 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.57700076 -0.00000000 -0.00000000  0.44698009
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00000000  0.57738179 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000010  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.40776289  0.00000000  0.43584759  0.00000001  0.00000000 -0.00000004  0.58646627  0.00000000
                                0.00062114  0.00000000  0.00241814  0.00000000  0.00000000 -0.00000000  0.00057451 -0.00000000

  5  1     5    1  |1 1>+       0.70640947  0.00000000 -0.39784803 -0.00000001 -0.00000000 -0.00000003  0.49238608  0.00000000
                               -0.00107607 -0.00000000 -0.00220731 -0.00000000 -0.00000000 -0.00000000  0.00048234 -0.00000000

  6  1     6    1  |1 1>+       0.00000001  0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000027  0.00000000 -0.00000052 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000024  0.00000000 -0.00000000 -0.00000097
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     1    1  |1 0>        0.00000000 -0.00000010  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.57728757  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     2    1  |1 0>        0.00062247 -0.00000000 -0.00254396 -0.00000000 -0.00000000 -0.00000000  0.00055624 -0.00000000
                                0.40863750 -0.00000000  0.45852581  0.00000001  0.00000000  0.00000004 -0.56782157 -0.00000000

 12  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000007 -0.00000000 -0.00000001  0.45831802 -0.00000000  0.56799540  0.00000004  0.00000000

 13  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.57793816  0.00000000  0.00000000  0.00007916

 14  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00010143 -0.00000000 -0.00000000  0.77494844

 15  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003

 16  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000066 -0.00000000  0.00000062  0.00000000  0.00000000

 18  1     9    1  |1 0>        0.00000068  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00044831 -0.00000000 -0.00000066 -0.00000000 -0.00000000 -0.00000000  0.00000062  0.00000000

 19  1     1    1  |1 1>-       0.00062220 -0.00000000 -0.00368638 -0.00000000 -0.00000000  0.00000000 -0.00029582  0.00000000
                                0.40845971  0.00000000  0.66443744  0.00000002  0.00000000 -0.00000002  0.30197842 -0.00000000

 20  1     2    1  |1 1>-       0.00000000  0.00000010 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.57738145 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.57711142 -0.00000000 -0.00000000  0.44683745

 22  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000007 -0.00000000  0.00000001 -0.43608392  0.00000000  0.58629211  0.00000004  0.00000000

 23  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000012  0.00000000  0.00000001 -0.39765934  0.00000000 -0.49254804 -0.00000003 -0.00000000

 24  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000002 -0.00000000  0.00000000

 25  1     7    1  |1 1>-       0.00000068 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00044672 -0.00000000  0.00000027  0.00000000  0.00000000  0.00000000 -0.00000052 -0.00000000

 26  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000024 -0.00000000  0.00000000  0.00000097

 27  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 28  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     2    1  |0 0>       -0.00000000 -0.00000105 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 30  1     3    1  |0 0>       -0.00000000  0.00000442 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 31  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00001829  0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 32  1     5    1  |0 0>        0.02980651  0.00000000 -0.00002273 -0.00000000 -0.00000000 -0.00000000  0.00000522  0.00000000
                               -0.00004540 -0.00000000 -0.00000013 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

 33  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00002276 -0.00000000  0.00000522  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 34  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.01217084 -0.00000000  0.00000083  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.01217138 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000080
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.02315084 -0.00747648  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.01217047 -0.00000000 -0.00000083 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.02107783  0.00000000 -0.00000047 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.99999582  0.00002719  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000796  0.00000000  0.00000013

  7  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00518525  0.00000006 -0.00204555 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00183953  0.00569712 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00000000 -0.00000000 -0.00518504 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00204498
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000020

 10  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00510202 -0.02378608  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.01217105  0.00000000 -0.00000086 -0.00000000 -0.00000000

 12  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.01217102  0.00000000 -0.00000087 -0.00000000

 13  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.02433724  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000023 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000097

 15  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000013 -0.00000000  0.00009964
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.99999581

 16  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00585414 -0.00125569 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00518522 -0.00000006  0.00204499  0.00000000

 18  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00518522 -0.00000000 -0.00204499 -0.00000006 -0.00000000

 19  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.01217087  0.00000000  0.00000083  0.00000000  0.00000000

 20  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01804801 -0.01631342 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.01217138  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000080

 22  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.01217087 -0.00000000  0.00000083 -0.00000000

 23  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.02107758  0.00000000 -0.00000047  0.00000000

 24  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00002719  0.99999582  0.00000000

 25  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00518525 -0.00000000  0.00204555  0.00000006  0.00000000

 26  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000020
                                0.00000000 -0.00000000 -0.00518504 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00204498

 27  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00401422 -0.00444152  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     2    1  |0 0>        0.99926841 -0.02282875  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 30  1     3    1  |0 0>        0.02282877  0.99926837 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 31  1     4    1  |0 0>       -0.00000000  0.00000000  0.99952871  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 32  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.99952867 -0.00000000  0.00000002  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000077  0.00000000  0.00000000  0.00000000  0.00000000

 33  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.99952867  0.00000000 -0.00000002  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 34  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00018257 -0.00000000  0.00000000  0.00000000  0.00016924
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00018253 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000001 -0.00000016 -0.00000000  0.00000000  0.00000000 -0.00029308  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000000  0.00000000 -0.00018238 -0.00000000  0.00000000  0.00000000  0.00016904 -0.00000000
                               -0.00000000 -0.00000000 -0.00000081 -0.00000000  0.00000000 -0.00000000  0.00000102 -0.00000000

  5  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.00010382 -0.00000000 -0.00000000 -0.00000000 -0.00029258  0.00000000
                                0.00000000  0.00000000 -0.00000046 -0.00000000  0.00000000  0.00000000 -0.00000176  0.00000000

  6  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00289242 -0.00000000 -0.00000000  0.00000000  0.00000090 -0.00000000
                               -0.00000000 -0.00000000 -0.00001282 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000

  7  1     7    1  |1 1>+       0.00000000  0.00000000 -0.00000001  0.70742223  0.00000000  0.00000000  0.00000001  0.70676903
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00102638  0.57723135 -0.00000000 -0.00000000 -0.00000000 -0.40776045  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.70710457 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000030  0.00000000 -0.00000000

 11  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000081  0.00000000 -0.00000000 -0.00000000  0.00000102 -0.00000000
                               -0.00000000 -0.00000000 -0.00018271 -0.00000000 -0.00000000 -0.00000000 -0.00016906  0.00000000

 12  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00018272  0.00000000  0.00000000  0.00000000  0.00016906

 13  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00021229  0.00000000  0.00000000  0.00000000

 15  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00289203 -0.00000000  0.00000000 -0.00000000

 16  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00102659  0.57756960 -0.00000000 -0.00000000 -0.00000000  0.81631486 -0.00000000 -0.00000000

 17  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000001 -0.70678520 -0.00000000  0.00000000  0.00000001  0.70740608

 18  1     9    1  |1 0>       -0.00000000  0.00000000  0.00313379  0.00000000 -0.00000000  0.00000000 -0.00424898  0.00000000
                                0.00000000 -0.00000000 -0.70677904 -0.00000001 -0.00000000  0.00000000  0.70739253 -0.00000001

 19  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000081 -0.00000000  0.00000000 -0.00000000  0.00000102 -0.00000000
                               -0.00000000  0.00000000  0.00018257  0.00000000  0.00000000 -0.00000000 -0.00016924  0.00000000

 20  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00000016 -0.00000000 -0.00000000  0.00000000  0.00029277 -0.00000000 -0.00000000

 21  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00018253  0.00000000 -0.00000000 -0.00000000

 22  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00018238 -0.00000000  0.00000000  0.00000000  0.00016905

 23  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00010382  0.00000000  0.00000000  0.00000000  0.00029258

 24  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00289245  0.00000000 -0.00000000 -0.00000000 -0.00000091

 25  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00313660 -0.00000000  0.00000000  0.00000000 -0.00424517  0.00000000
                                0.00000000  0.00000000  0.70741449  0.00000001  0.00000000  0.00000000  0.70675707 -0.00000001

 26  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.70710300 -0.00000000  0.00000000  0.00000000

 27  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00102638  0.57723225 -0.00000000 -0.00000000 -0.00000000 -0.40903214  0.00000000  0.00000000

 28  1     1    1  |0 0>       -0.00000844 -0.00413487  0.00000000  0.00000000  0.00000000  0.00000103 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     2    1  |0 0>        0.00000000  0.00000220 -0.00000000  0.00000000 -0.00000000  0.00714938 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 30  1     3    1  |0 0>        0.00000000  0.00000053 -0.00000000 -0.00000000 -0.00000000  0.00169840  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 31  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 32  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000328 -0.00000000  0.00000000 -0.00000000 -0.00734850  0.00000000
                               -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00004414  0.00000000

 33  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000329  0.00000000 -0.00000000 -0.00000000 -0.00734863
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 34  1     7    1  |0 0>        0.99999842 -0.00177789  0.00000000  0.00000000  0.00000000  0.00000032 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000
                                0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00016905
                                0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00016879  0.00000000
                                0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00000000 -0.00000000
                               -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00000000  0.00000000
                                0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.00000000  0.00000000
                                0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00000000 -0.00000000
                                0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.70745496 -0.00000010
                               -0.00000001  0.00000000

  9  1     9    1  |1 1>+       0.00000010  0.70708685
                                0.00000000 -0.00000000

 10  1     1    1  |1 0>       -0.00000000  0.00000000
                               -0.00033833  0.00000000

 11  1     2    1  |1 0>       -0.00000000 -0.00000000
                               -0.00000000  0.00000000

 12  1     3    1  |1 0>        0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 13  1     4    1  |1 0>        0.00000000 -0.00000000
                               -0.00000000 -0.00033794

 14  1     5    1  |1 0>        0.00000000  0.00000000
                                0.00000000  0.00000000

 15  1     6    1  |1 0>       -0.00000000  0.00000000
                               -0.00000000  0.00000000

 16  1     7    1  |1 0>       -0.00000000 -0.00000000
                               -0.00073370  0.00000000

 17  1     8    1  |1 0>       -0.00000000  0.00000000
                               -0.00000000 -0.00000000

 18  1     9    1  |1 0>        0.00000000  0.00000000
                                0.00000000 -0.00000000

 19  1     1    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000  0.00000000

 20  1     2    1  |1 1>-      -0.00000000  0.00000000
                               -0.00016932  0.00000000

 21  1     3    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000000 -0.00016905

 22  1     4    1  |1 1>-      -0.00000000  0.00000000
                               -0.00000000 -0.00000000

 23  1     5    1  |1 1>-      -0.00000000  0.00000000
                               -0.00000000 -0.00000000

 24  1     6    1  |1 1>-       0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 25  1     7    1  |1 1>-       0.00000000  0.00000000
                                0.00000000 -0.00000000

 26  1     8    1  |1 1>-      -0.00000000  0.00000000
                                0.00000010  0.70708841

 27  1     9    1  |1 1>-      -0.00000001  0.00000000
                               -0.70671973  0.00000010

 28  1     1    1  |0 0>       -0.00000000  0.00000000
                                0.00000000  0.00000000

 29  1     2    1  |0 0>        0.00169827 -0.00000000
                               -0.00000000  0.00000000

 30  1     3    1  |0 0>       -0.00714882  0.00000000
                                0.00000000 -0.00000000

 31  1     4    1  |0 0>        0.00000000  0.00734836
                                0.00000000 -0.00000000

 32  1     5    1  |0 0>       -0.00000000  0.00000000
                                0.00000000  0.00000000

 33  1     6    1  |0 0>        0.00000000  0.00000000
                                0.00000000 -0.00000000

 34  1     7    1  |0 0>       -0.00000000 -0.00000000
                                0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   30.03%    0.00%    0.00%    0.00%    0.00%   16.68%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.03%    0.00%    0.00%   16.69%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.58%   50.02%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%   29.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    9.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.61%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%   30.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%   30.02%    0.00%    0.00%    0.00%    0.00%   16.70%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.54%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.95%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%   30.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.71%   49.89%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.03%    0.00%    0.00%   16.69%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%   29.97%    0.00%    0.00%    0.00%    0.00%   16.63%
 23  1     5    1  |1 1>-         0.00%    0.00%    9.98%    0.00%    0.00%    0.00%    0.00%   49.90%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.08%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.09%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.09%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   44.16%    0.00%    9.10%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.29%    0.00%    0.00%   19.98%
  3  1     3    1  |1 1>+         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+        16.63%    0.00%   19.00%    0.00%    0.00%    0.00%   34.39%    0.00%
  5  1     5    1  |1 1>+        49.90%    0.00%   15.83%    0.00%    0.00%    0.00%   24.24%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>         16.70%    0.00%   21.03%    0.00%    0.00%    0.00%   32.24%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%   21.01%    0.00%   32.26%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.40%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.05%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-        16.68%    0.00%   44.15%    0.00%    0.00%    0.00%    9.12%    0.00%
 20  1     2    1  |1 1>-         0.00%   33.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.31%    0.00%    0.00%   19.97%
 22  1     4    1  |1 1>-         0.00%    0.00%    0.00%   19.02%    0.00%   34.37%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    0.00%   15.81%    0.00%   24.26%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.05%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
 16  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.03%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>         99.85%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     3    1  |0 0>          0.05%   99.85%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%   99.91%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%   99.91%    0.00%    0.00%    0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.91%    0.00%    0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%   50.04%    0.00%    0.00%    0.00%   49.95%
  8  1     8    1  |1 1>+         0.00%   33.32%    0.00%    0.00%    0.00%   16.63%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     7    1  |1 0>          0.00%   33.36%    0.00%    0.00%    0.00%   66.64%    0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.04%
 18  1     9    1  |1 0>          0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.04%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%   50.04%    0.00%    0.00%    0.00%   49.95%    0.00%
 26  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 27  1     9    1  |1 1>-         0.00%   33.32%    0.00%    0.00%    0.00%   16.73%    0.00%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 30  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 34  1     7    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34

  1  1     1    1  |1 1>+         0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%
  8  1     8    1  |1 1>+        50.05%    0.00%
  9  1     9    1  |1 1>+         0.00%   50.00%
 10  1     1    1  |1 0>          0.00%    0.00%
 11  1     2    1  |1 0>          0.00%    0.00%
 12  1     3    1  |1 0>          0.00%    0.00%
 13  1     4    1  |1 0>          0.00%    0.00%
 14  1     5    1  |1 0>          0.00%    0.00%
 15  1     6    1  |1 0>          0.00%    0.00%
 16  1     7    1  |1 0>          0.00%    0.00%
 17  1     8    1  |1 0>          0.00%    0.00%
 18  1     9    1  |1 0>          0.00%    0.00%
 19  1     1    1  |1 1>-         0.00%    0.00%
 20  1     2    1  |1 1>-         0.00%    0.00%
 21  1     3    1  |1 1>-         0.00%    0.00%
 22  1     4    1  |1 1>-         0.00%    0.00%
 23  1     5    1  |1 1>-         0.00%    0.00%
 24  1     6    1  |1 1>-         0.00%    0.00%
 25  1     7    1  |1 1>-         0.00%    0.00%
 26  1     8    1  |1 1>-         0.00%   50.00%
 27  1     9    1  |1 1>-        49.95%    0.00%
 28  1     1    1  |0 0>          0.00%    0.00%
 29  1     2    1  |0 0>          0.00%    0.00%
 30  1     3    1  |0 0>          0.01%    0.00%
 31  1     4    1  |0 0>          0.00%    0.01%
 32  1     5    1  |0 0>          0.00%    0.00%
 33  1     6    1  |0 0>          0.00%    0.00%
 34  1     7    1  |0 0>          0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       59.62       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      380.20       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       641.15    365.06    103.81    163.96      3.95      0.65      3.49
 REAL TIME  *       702.91 SEC
 DISK USED  *       439.90 MB (local),        7.36 GB (total)
 SF USED    *         2.33 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=    -30.486065393835

              CI              CI           MULTI         RHF-SCF
    -30.48875423    -30.46966714    -30.22449538    -30.34125532
 **********************************************************************************************************************************
 Molpro calculation terminated
