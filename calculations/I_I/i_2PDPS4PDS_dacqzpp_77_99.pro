
 Working directory              : /wrk/irikura/molpro.DsOKyiiORD/
 Global scratch directory       : /wrk/irikura/molpro.DsOKyiiORD/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.DsOKyiiORD/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    8
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,I SO-CI
                                                                                 ! active space (7/7)
                                                                                 ! additional diffuse spdf functions
 memory,4000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={I};
 
 basis={
 ecp,i,ECP28MDF;
 spdfgh,i,aug-cc-pwCVQZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 {rhf;wf,charge=-1}
 
 NDOUB=12
 NQUAR=9
 
 {multi
     occ,7,9
     closed,6,3
     wf,charge=0,sym=2,spin=1;state,NDOUB; weight,3[99],(NDOUB-3)[1]
     wf,charge=0,sym=2,spin=3;state,NQUAR; weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,NDOUB; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,NQUAR; save,5303.2}
 hlsdiag(NDOUB+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5203.2,5303.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   I SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Oct-24          TIME: 17:37:26  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  32000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry I    ECP ECP28MDF                 selected for group  1
 Library entry I      S AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered I  S diffuse               selected for group 1    nprim= 1    centre=  0.011    ratio= 3.000    dratio= 1.000
 Library entry I      P AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered I  P diffuse               selected for group 1    nprim= 1    centre=  0.009    ratio= 3.000    dratio= 1.000
 Library entry I      D AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered I  D diffuse               selected for group 1    nprim= 1    centre=  0.021    ratio= 3.000    dratio= 1.000
 Library entry I      F AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered I  F diffuse               selected for group 1    nprim= 1    centre=  0.042    ratio= 3.000    dratio= 1.000
 Library entry I      G AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Library entry I      H AUG-CC-PWCVQZ-PP     selected for orbital group  1


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

   1  I      25.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   25
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

         1 0.194E-05 0.816E-04 0.816E-04 0.816E-04 0.816E-04 0.816E-04 0.434E-03 0.969E-03
         2 0.110E-03 0.110E-03 0.110E-03 0.120E-02 0.120E-02 0.120E-02 0.837E-02 0.837E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     158.859 MB (compressed) written to integral file ( 14.9%)

     Node minimum: 14.156 MB, node maximum: 27.001 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    9344772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    9344772      RECORD LENGTH: 524288

 Memory used in sort:       9.90 MW

 SORT1 READ   134353782. AND WROTE     1729514. INTEGRALS IN      5 RECORDS. CPU TIME:     0.57 SEC, REAL TIME:     0.59 SEC
 SORT2 READ    13879740. AND WROTE    74805201. INTEGRALS IN    640 RECORDS. CPU TIME:     0.19 SEC, REAL TIME:     0.21 SEC

 Node minimum:     9343692.  Node maximum:     9360852. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.52       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.16      2.96
 REAL TIME  *         5.21 SEC
 DISK USED  *        29.89 MB (local),      522.21 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -294.71888598    -294.71888598     0.00D+00     0.73D-01     0     0       0.04      0.09    start
   2     -294.74431542      -0.02542943     0.35D-02     0.39D-02     1     0       0.04      0.13    diag
   3     -294.74637849      -0.00206307     0.19D-02     0.94D-03     2     0       0.05      0.18    diag
   4     -294.74675619      -0.00037770     0.35D-03     0.57D-03     3     0       0.04      0.22    diag
   5     -294.74683481      -0.00007862     0.12D-03     0.29D-03     4     0       0.04      0.26    diag
   6     -294.74684197      -0.00000716     0.31D-04     0.11D-03     5     0       0.04      0.30    diag
   7     -294.74684226      -0.00000028     0.51D-05     0.26D-04     6     0       0.04      0.34    diag
   8     -294.74684227      -0.00000001     0.10D-05     0.46D-05     7     0       0.05      0.39    fixocc
   9     -294.74684227      -0.00000000     0.18D-06     0.15D-05     8     0       0.03      0.42    diag
  10     -294.74684227      -0.00000000     0.29D-07     0.96D-07     0     0       0.05      0.47    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -294.746842268717
  RHF One-electron energy            -520.926302813480
  RHF Two-electron energy             226.179460544764
  RHF Kinetic energy                  110.887727635260
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.658065491595

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45092     1  1  s    1.00212
    2.1     2.00000    -2.00365     1  1  d2-  0.25012    1  1  d1+  0.88631    1  1  d2+ -0.31329
    3.1     2.00000    -2.00365     1  1  d1+  0.35762    1  1  d2+  0.92970
    4.1     2.00000    -2.00365     1  1  d2-  0.95002
    5.1     2.00000    -2.00365     1  1  d1-  0.96653
    6.1     2.00000    -2.00365     1  1  d0   0.99958
    7.1     2.00000    -0.60773     1  2  s    0.97340
    1.2     2.00000    -5.27628     1  1  py   1.00040
    2.2     2.00000    -5.27628     1  1  px   1.00042
    3.2     2.00000    -5.27628     1  1  pz   1.00040
    4.2     2.00000    -0.12599     1  1  py  -0.32248    1  4  py   0.40596    1  5  py   0.45491    1  6  py   0.25437
    5.2     2.00000    -0.12599     1  1  px  -0.32248    1  4  px   0.40596    1  5  px   0.45491    1  6  px   0.25437
    6.2     2.00000    -0.12599     1  1  pz  -0.32248    1  4  pz   0.40596    1  5  pz   0.45491    1  6  pz   0.25437


 HOMO      6.2    -0.125989 =      -3.4283eV
 LUMO      7.2     0.097564 =       2.6549eV
 LUMO-HOMO         0.223553 =       6.0832eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.52       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.67       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.63      0.47      2.96
 REAL TIME  *         6.31 SEC
 DISK USED  *        31.41 MB (local),      534.35 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =        12.00000000                                  
 SETTING NQUAR          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     169 (   85   84)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:            12
 Number of CSFs:             420   (600 determinants, 1225 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             9
 Number of CSFs:             168   (180 determinants, 441 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.472D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.332D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.352D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.304D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.308D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 5 3 6 2 1 1 3 5   4 6 2 1 3 5 2 4 6 1   4 6 2 5 31415 7 812  11 91310 1 2 4 6 3 5
                                       141512 8 911 71310 2   4 6 3 5 1 812 71514  1311 910 2 6 4 3 5 1   812151411 91310 7 2
                                        6 4 3 5 1 2 6 3 4 5   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.648D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.648D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.226D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.226D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.778D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.405D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.420D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 1 2 3 1   2 3 9 7 810 6 5 4 1   2 310 8 7 9 6 5 4 1   2 3 810 7 9 5 4 6 8
                                       10 5 4 7 9 6 1 2 310   8 6 5 4 7 914161915  1718202113111210 8 7   9 5 4 6 1 2 3 2 1 3
                                        9 7 810 6 5 4 2 3 1   2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.31429   0.31429   0.31429   0.00317   0.00317   0.00317   0.00317   0.00317
                                          0.00317   0.00317   0.00317   0.00317
 Weight factors for state symmetry  2:    0.00317   0.00317   0.00317   0.00317   0.00317   0.00317   0.00317   0.00317
                                          0.00317
 
 Number of orbital rotations:  1375  ( 24 closed/active, 762 closed/virtual, 0 active/active, 589 active/virtual )
 Total number of variables:    10195
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   41    0   -294.59996731    -294.65568321   -0.05571590    0.24901320 0.00086576 0.00599970  0.16E+01      2.45
   2    9   28    0   -294.63802515    -294.64235365   -0.00432850    0.18011571 0.00011800 0.00142050  0.53E+00      4.67
   3    8   25    0   -294.64237065    -294.64237090   -0.00000025    0.00129671 0.00000099 0.00000077  0.28E-02      6.66
   4    3    8    0   -294.64237090    -294.64237090   -0.00000000    0.00000008 0.00000001 0.00000006  0.40E-06      8.32

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.29E-07)
                       Final energy:   -294.64237090
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -294.662854358846
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.78335955
 One electron energy                          -513.49776692
 Two electron energy                           218.83491256
 Virial ratio                                    3.65981151
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -294.662854358822
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.78335955
 One electron energy                          -513.49776692
 Two electron energy                           218.83491256
 Virial ratio                                    3.65981151
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -294.662854358635
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.78335956
 One electron energy                          -513.49776693
 Two electron energy                           218.83491257
 Virial ratio                                    3.65981151
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -294.301537712246
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68316833
 One electron energy                          -509.91629880
 Two electron energy                           215.61476109
 Virial ratio                                    3.65895476
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -294.301537708228
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68316832
 One electron energy                          -509.91629879
 Two electron energy                           215.61476109
 Virial ratio                                    3.65895476
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -294.301537707716
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68316832
 One electron energy                          -509.91629879
 Two electron energy                           215.61476109
 Virial ratio                                    3.65895476
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -294.295447944005
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77928323
 One electron energy                          -510.22327019
 Two electron energy                           215.92782225
 Virial ratio                                    3.65659282
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -294.295447943965
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77928323
 One electron energy                          -510.22327019
 Two electron energy                           215.92782225
 Virial ratio                                    3.65659282
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -294.295447933526
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77928327
 One electron energy                          -510.22327034
 Two electron energy                           215.92782241
 Virial ratio                                    3.65659281
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -294.295447932197
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77928328
 One electron energy                          -510.22327036
 Two electron energy                           215.92782243
 Virial ratio                                    3.65659281
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -294.295447929121
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.77928329
 One electron energy                          -510.22327041
 Two electron energy                           215.92782248
 Virial ratio                                    3.65659281
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -294.282573187473
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.76610561
 One electron energy                          -510.18468465
 Two electron energy                           215.90211146
 Virial ratio                                    3.65679263
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -294.327720051204
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68368674
 One electron energy                          -509.91336939
 Two electron energy                           215.58564934
 Virial ratio                                    3.65917886
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -294.327720042707
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68368677
 One electron energy                          -509.91336953
 Two electron energy                           215.58564949
 Virial ratio                                    3.65917886
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -294.327720041626
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.68368678
 One electron energy                          -509.91336955
 Two electron energy                           215.58564951
 Virial ratio                                    3.65917886
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -294.309447730297
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71696943
 One electron energy                          -510.02457364
 Two electron energy                           215.71512591
 Virial ratio                                    3.65821445
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -294.309447730262
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71696943
 One electron energy                          -510.02457364
 Two electron energy                           215.71512591
 Virial ratio                                    3.65821445
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -294.309447720777
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71696947
 One electron energy                          -510.02457379
 Two electron energy                           215.71512606
 Virial ratio                                    3.65821445
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -294.309447719570
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71696947
 One electron energy                          -510.02457380
 Two electron energy                           215.71512609
 Virial ratio                                    3.65821445
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -294.309447716775
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.71696948
 One electron energy                          -510.02457385
 Two electron energy                           215.71512613
 Virial ratio                                    3.65821445
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -294.284265620612
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.75079942
 One electron energy                          -510.12800596
 Two electron energy                           215.84374033
 Virial ratio                                    3.65717509
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999996163
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999999993
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.000000003843
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.000000000000
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000000000000
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     3.989349468054
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     3.999999999991
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>     1.000000000000
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     1.000000000000
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     0.010650531955
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>     0.000000000000
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000001
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999999999
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     3.989357222793
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.999999999968
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000000000
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000000000028
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.010642713031
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.000000000000
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999967810
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.000000032197
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999999993
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.000000000008
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     1.183837227591
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.000000000141
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>     3.999999999979
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     1.000000000013
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     2.816162772265
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>     0.000000000002
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     1.000000000000
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.000000000001
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     1.000000000000
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.183768523883
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000000000000
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.999999999998
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000000000002
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     2.816232044788
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.000000000001
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000000036027
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999967810
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999996163
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000000000000
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.000000000006
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.826813304354
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     0.999999999867
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     1.000000000012
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     3.999999999981
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     3.173186695776
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     0.000000000002
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999999999999
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000000000002
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.826874253323
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000000000032
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.000000000000
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     3.999999999969
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.173125242180
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.000000000000
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     2.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     2.000000000008
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000006
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     5.999999999999
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     5.999999999999
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     5.999999999992
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     5.999999999993
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     5.999999999995
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     0.000000000004
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000001
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000001
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     5.999999999998
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     5.999999999999
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     5.999999999999
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>     0.000000000001
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 3 5 4 1 1 6 3   5 2 4 1 3 5 4 6 2 1   6 2 3 5 411 71415 8  121310 9 1 2 6 3 5 4
                                       11 812 715141310 9 2   6 4 3 5 111 7 81215  141310 9 2 6 4 3 5 1  11 812 715141310 9 2
                                        6 4 3 5 1 2 6 4 3 5   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 3 2 1 1   2 3 7 9 810 6 4 5 1   2 3 7 910 8 5 6 4 1   2 3 5 810 7 9 6 4 5
                                        810 6 7 9 4 1 2 3 5  10 8 6 7 9 412192113  14161517201811 510 8   6 7 9 4 2 3 1 2 3 1
                                        5 6 810 7 9 4 2 3 1   2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.76029     1  1  s    1.00221
    2.1     2.00000    -2.31259     1  1  d1-  1.00005
    3.1     2.00000    -2.31259     1  1  d0   1.00005
    4.1     2.00000    -2.31259     1  1  d2-  1.00005
    5.1     2.00000    -2.31259     1  1  d2+  1.00005
    6.1     2.00000    -2.31259     1  1  d1+  1.00005
    7.1     1.99876    -0.88669     1  2  s    1.00276
    1.2     2.00000    -5.58512     1  1  py   0.99982
    2.2     2.00000    -5.58512     1  1  pz   0.99982
    3.2     2.00000    -5.58512     1  1  px   0.99982
    4.2     1.64294    -0.34958     1  1  px  -0.34859    1  4  px   0.45928    1  5  px   0.49388
    5.2     1.64294    -0.34958     1  1  pz  -0.34859    1  4  pz   0.45928    1  5  pz   0.49388
    6.2     1.64294    -0.34958     1  1  py  -0.34859    1  4  py   0.45928    1  5  py   0.49388
    7.2     0.02414     0.20498     1  1  pz   0.26088    1  4  pz  -0.59335    1  5  pz  -0.27312    1  6  pz   0.75434
                                    1 10  pz   0.43802
    8.2     0.02414     0.20498     1  1  py   0.26088    1  4  py  -0.59335    1  5  py  -0.27312    1  6  py   0.75434
                                    1 10  py   0.43802
    9.2     0.02414     0.20498     1  1  px   0.26088    1  4  px  -0.59335    1  5  px  -0.27312    1  6  px   0.75434
                                    1 10  px   0.43802
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a22000       0.00006168     -0.00000256      0.99573654      0.04036290      0.00000001      0.00000001     -0.00000000
 2 22a000       0.00017865      0.99573652      0.00000255      0.00000001     -0.04036290      0.00000002     -0.00000000
 2 2a2000       0.99573652     -0.00017865     -0.00006168     -0.00000001      0.00000002      0.04036290     -0.00000000
 2 2aa00b       0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.03388898
 2 a2ab00       0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.58495360
 2 a2a00b      -0.00000315     -0.01756780     -0.00000005      0.00000008     -0.40612166      0.00000019     -0.00000004
 2 aa200b      -0.01756780      0.00000315      0.00000109     -0.00000011      0.00000019      0.40612174      0.00000001
 2 a2a0b0       0.00000109     -0.00000005      0.01756780     -0.40612239     -0.00000008     -0.00000011      0.00001547
 2 aa2b00       0.00000109     -0.00000005      0.01756780     -0.40612257     -0.00000008     -0.00000011     -0.00001547
 2 2aa0b0       0.01756780     -0.00000315     -0.00000109      0.00000011     -0.00000019     -0.40612315      0.00000001
 2 2aab00      -0.00000315     -0.01756780     -0.00000005      0.00000008     -0.40612324      0.00000019      0.00000004
 2 aa20b0      -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.55106445
 2 2aba00       0.00000283      0.01576121      0.00000004     -0.00000010      0.46397828     -0.00000022     -0.00000002
 2 2ba0a0      -0.01576121      0.00000283      0.00000098     -0.00000012      0.00000022      0.46397822     -0.00000001
 2 ba2a00      -0.00000098      0.00000004     -0.01576121      0.46397792      0.00000010      0.00000012      0.00000836
 2 b2a0a0      -0.00000098      0.00000004     -0.01576121      0.46397781      0.00000010      0.00000012     -0.00000836
 2 ab200a       0.01576121     -0.00000283     -0.00000098      0.00000012     -0.00000022     -0.46397737     -0.00000001
 2 a2b00a       0.00000283      0.01576121      0.00000004     -0.00000010      0.46397732     -0.00000022      0.00000002
 2 202a00      -0.02048649      0.00000368      0.00000127     -0.00000012      0.00000022      0.45631825     -0.00000000
 2 2200a0      -0.00000368     -0.02048649     -0.00000005      0.00000009     -0.45631823      0.00000022     -0.00000000
 2 02200a      -0.00000127      0.00000005     -0.02048649      0.45631805      0.00000009      0.00000012     -0.00000000
 2 2ba00a      -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.02849461
 2 2ab00a       0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.06238358
 2 b2aa00       0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.31316309
 2 ba20a0      -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.30028505
 2 a2ba00      -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.27179051
 2 2baa00       0.00000032      0.00180660      0.00000000      0.00000001     -0.05785504      0.00000003     -0.00000002
 2 2ab0a0      -0.00180660      0.00000032      0.00000011      0.00000002     -0.00000003     -0.05785507     -0.00000001
 2 ab2a00      -0.00000011      0.00000000     -0.00180660     -0.05785535     -0.00000001     -0.00000001      0.00000712
 2 a2b0a0      -0.00000011      0.00000000     -0.00180660     -0.05785542     -0.00000001     -0.00000002     -0.00000712
 2 ba200a       0.00180660     -0.00000032     -0.00000011     -0.00000001      0.00000003      0.05785562     -0.00000001
 2 b2a00a       0.00000032      0.00180660      0.00000000      0.00000001     -0.05785566      0.00000003      0.00000002
 2 ab20a0       0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.25077940
 2 02a002      -0.00000599     -0.03340460     -0.00000009      0.00000001     -0.03485556      0.00000002     -0.00000001
 2 0a2002      -0.03340460      0.00000599      0.00000207     -0.00000001      0.00000002      0.03485557      0.00000000
 2 a20020      -0.00000207      0.00000009     -0.03340460      0.03485565      0.00000001      0.00000001     -0.00000207
 2 a02200      -0.00000207      0.00000009     -0.03340460      0.03485568      0.00000001      0.00000001      0.00000207
 2 2a0020      -0.03340460      0.00000599      0.00000207     -0.00000001      0.00000002      0.03485575     -0.00000000
 2 20a200      -0.00000599     -0.03340459     -0.00000009      0.00000001     -0.03485577      0.00000002      0.00000001
 2 220a00      -0.00653188      0.00000117      0.00000040      0.00000002     -0.00000003     -0.06551507      0.00000000
 2 2020a0      -0.00000117     -0.00653188     -0.00000002     -0.00000001      0.06551506     -0.00000003     -0.00000000
 2 022a00      -0.00653188      0.00000117      0.00000040      0.00000002     -0.00000003     -0.06551499     -0.00000000
 2 0220a0      -0.00000117     -0.00653188     -0.00000002     -0.00000001      0.06551498     -0.00000003      0.00000000
 2 20200a      -0.00000040      0.00000002     -0.00653188     -0.06551497     -0.00000001     -0.00000002     -0.00000124
 2 22000a      -0.00000040      0.00000002     -0.00653188     -0.06551496     -0.00000001     -0.00000002      0.00000124
 2 2a00ab      -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00141923
 2 20aa0b      -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00455573
 2 baa002      -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00294306
 2 a20ba0       0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.05228049
 2 02ab0a      -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.05085258
 2 aba200      -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.05079977
 
 Energy:     -294.66285436   -294.66285436   -294.66285436   -294.30153771   -294.30153771   -294.30153771   -294.29544794

 State:              8               9              10              11              12
 2 a22000      -0.00000001      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 22a000       0.00000000      0.00000005      0.00000000     -0.00000000      0.00000000
 2 2a2000      -0.00000000     -0.00000000      0.00000005      0.00000000      0.00000000
 2 2aa00b      -0.00000095      0.00000025     -0.00000035      0.65587994      0.46636247
 2 a2ab00      -0.00001593      0.00000015     -0.00000017      0.29859178     -0.46636160
 2 a2a00b      -0.00000000      0.56876726      0.00000115     -0.00000022     -0.00000000
 2 aa200b      -0.00000007     -0.00000115      0.56876720      0.00000031      0.00000000
 2 a2a0b0       0.56876680      0.00000000      0.00000007      0.00000003     -0.00000000
 2 aa2b00      -0.56876668     -0.00000000     -0.00000007     -0.00000003      0.00000000
 2 2aa0b0      -0.00000007     -0.00000115      0.56876627      0.00000031      0.00000000
 2 2aab00       0.00000000     -0.56876622     -0.00000115      0.00000022     -0.00000000
 2 aa20b0      -0.00001497     -0.00000010      0.00000018     -0.35728931      0.46636170
 2 2aba00      -0.00000000      0.30713258      0.00000062     -0.00000012      0.00000000
 2 2ba0a0       0.00000004      0.00000062     -0.30713265     -0.00000016      0.00000000
 2 ba2a00       0.30713316      0.00000000      0.00000004      0.00000002     -0.00000000
 2 b2a0a0      -0.30713331     -0.00000000     -0.00000004     -0.00000002      0.00000000
 2 ab200a       0.00000004      0.00000062     -0.30713381     -0.00000016      0.00000000
 2 a2b00a       0.00000000     -0.30713388     -0.00000062      0.00000012      0.00000000
 2 202a00       0.00000000     -0.00000000      0.00000061      0.00000000      0.00000000
 2 2200a0       0.00000000      0.00000069      0.00000000     -0.00000000     -0.00000000
 2 02200a      -0.00000008      0.00000000     -0.00000000      0.00000000     -0.00000000
 2 2ba00a      -0.00000076     -0.00000012      0.00000018     -0.33028779     -0.23318123
 2 2ab00a       0.00000171     -0.00000013      0.00000018     -0.32559215     -0.23318124
 2 b2aa00       0.00000852     -0.00000006      0.00000007     -0.10877054      0.23318084
 2 ba20a0       0.00000816      0.00000003     -0.00000007      0.14046713     -0.23318090
 2 a2ba00       0.00000740     -0.00000009      0.00000011     -0.18982124      0.23318076
 2 2baa00      -0.00000000      0.26163364      0.00000053     -0.00000010      0.00000000
 2 2ab0a0       0.00000003      0.00000053     -0.26163362     -0.00000014     -0.00000000
 2 ab2a00       0.26163352      0.00000000      0.00000003      0.00000001      0.00000000
 2 a2b0a0      -0.26163349     -0.00000000     -0.00000003     -0.00000001      0.00000000
 2 ba200a       0.00000003      0.00000053     -0.26163339     -0.00000014     -0.00000000
 2 b2a00a       0.00000000     -0.26163337     -0.00000053      0.00000010      0.00000000
 2 ab20a0       0.00000681      0.00000007     -0.00000011      0.21682218     -0.23318080
 2 02a002      -0.00000000      0.07594608      0.00000015     -0.00000003     -0.00000000
 2 0a2002      -0.00000001     -0.00000015      0.07594607      0.00000004      0.00000000
 2 a20020      -0.07594605     -0.00000000     -0.00000001     -0.00000000      0.00000000
 2 a02200       0.07594604      0.00000000      0.00000001      0.00000000     -0.00000000
 2 2a0020       0.00000001      0.00000015     -0.07594601     -0.00000004     -0.00000000
 2 20a200       0.00000000     -0.07594600     -0.00000015      0.00000003     -0.00000000
 2 220a00      -0.00000001     -0.00000009      0.04549965      0.00000002      0.00000000
 2 2020a0      -0.00000000      0.04549963      0.00000009     -0.00000002      0.00000000
 2 022a00       0.00000001      0.00000009     -0.04549983     -0.00000002     -0.00000000
 2 0220a0       0.00000000     -0.04549984     -0.00000009      0.00000002     -0.00000000
 2 20200a      -0.04549970     -0.00000000     -0.00000001     -0.00000000      0.00000000
 2 22000a       0.04549972      0.00000000      0.00000001      0.00000000     -0.00000000
 2 2a00ab       0.00000004     -0.00000002      0.00000003     -0.05790007     -0.03951161
 2 20aa0b      -0.00000013      0.00000002     -0.00000003      0.05773801      0.03951161
 2 baa002      -0.00000008      0.00000002     -0.00000003      0.05695930      0.03869510
 2 a20ba0      -0.00000142      0.00000001     -0.00000001      0.02492367     -0.03951153
 2 02ab0a       0.00000138     -0.00000001      0.00000002     -0.02772100      0.03951153
 2 aba200       0.00000138     -0.00000001      0.00000002     -0.02593093      0.03869503
 
 Energy:     -294.29544794   -294.29544793   -294.29544793   -294.29544793   -294.28257319
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2aa00a       0.00000000      0.00000000      0.00000000      0.04175770     -0.00000037      0.00000000     -0.00000082
 2 a2aa00       0.00000000     -0.00000000      0.00000000      0.72102969     -0.00000289      0.00000000     -0.00000042
 2 2aaa00       0.00000001      0.70190609      0.00000000      0.00000000      0.00000001      0.70108370      0.00000000
 2 2aa0a0       0.00000079     -0.00000000      0.70190604      0.00000005      0.00000229     -0.00000000      0.70108374
 2 aa2a00       0.70190574     -0.00000001     -0.00000079      0.00000272      0.70108404     -0.00000001     -0.00000229
 2 a2a0a0       0.70190565     -0.00000001     -0.00000079     -0.00000272     -0.70108413      0.00000001      0.00000229
 2 aa200a      -0.00000079      0.00000000     -0.70190535      0.00000005      0.00000229     -0.00000000      0.70108443
 2 a2a00a       0.00000001      0.70190531      0.00000000      0.00000000     -0.00000001     -0.70108448     -0.00000000
 2 aa20a0       0.00000000     -0.00000000     -0.00000000      0.67927188     -0.00000252     -0.00000000      0.00000040
 2 20aa0a       0.00000000      0.00000000      0.00000000     -0.00045871     -0.00000002      0.00000000     -0.00000007
 2 2a00aa      -0.00000000     -0.00000000     -0.00000000     -0.00736769      0.00000005     -0.00000000      0.00000007
 2 02aa0a      -0.00000000     -0.00000000     -0.00000000     -0.06143016      0.00000025      0.00000000      0.00000003
 2 2a0aa0       0.00000000      0.06095907      0.00000000      0.00000000      0.00000000      0.05995774      0.00000000
 2 20aaa0       0.00000007     -0.00000000      0.06095907      0.00000000      0.00000020     -0.00000000      0.05995774
 2 0a2a0a      -0.06095904      0.00000000      0.00000007     -0.00000023     -0.05995777      0.00000000      0.00000020
 2 02a0aa      -0.06095903      0.00000000      0.00000007      0.00000023      0.05995778     -0.00000000     -0.00000020
 2 a02a0a       0.00000007     -0.00000000      0.06095900     -0.00000000     -0.00000020      0.00000000     -0.05995780
 2 a200aa      -0.00000000     -0.06095900     -0.00000000     -0.00000000      0.00000000      0.05995780      0.00000000
 2 0a20aa      -0.00000000     -0.00000000      0.00000000     -0.05832575      0.00000022      0.00000000     -0.00000003
 2 a20aa0       0.00000000     -0.00000000      0.00000000      0.05786704     -0.00000023      0.00000000     -0.00000004
 2 abaa0a      -0.00000000     -0.04123137     -0.00000000      0.00000000      0.00000000      0.05603937      0.00000000
 2 aab0aa      -0.00000005      0.00000000     -0.04123137      0.00000000      0.00000018     -0.00000000      0.05603937
 2 abaaa0      -0.04123140      0.00000000      0.00000005      0.00000022      0.05603936     -0.00000000     -0.00000018
 2 aabaa0      -0.04123141      0.00000000      0.00000005     -0.00000022     -0.05603935      0.00000000      0.00000018
 2 baa0aa      -0.00000005      0.00000000     -0.04123143     -0.00000000     -0.00000018      0.00000000     -0.05603933
 2 baaa0a      -0.00000000     -0.04123143     -0.00000000     -0.00000000     -0.00000000     -0.05603933     -0.00000000
 2 a02aa0      -0.00000000     -0.00000000      0.00000000     -0.05406246      0.00000020      0.00000000     -0.00000004
 
 Energy:     -294.32772005   -294.32772004   -294.32772004   -294.30944773   -294.30944773   -294.30944772   -294.30944772

 State:              8               9
 2 2aa00a       0.80846425     -0.57123161
 2 a2aa00       0.36806921      0.57123109
 2 2aaa00      -0.00000000      0.00000000
 2 2aa0a0       0.00000071     -0.00000000
 2 aa2a00       0.00000018     -0.00000000
 2 a2a0a0      -0.00000018      0.00000000
 2 aa200a       0.00000071     -0.00000000
 2 a2a00a       0.00000000      0.00000000
 2 aa20a0      -0.44039573     -0.57123115
 2 20aa0a       0.06708391     -0.05168809
 2 2a00aa      -0.06667968      0.05168810
 2 02aa0a      -0.02695926     -0.05168806
 2 2a0aa0      -0.00000000      0.00000000
 2 20aaa0       0.00000006     -0.00000000
 2 0a2a0a      -0.00000002      0.00000000
 2 02a0aa       0.00000002     -0.00000000
 2 a02a0a      -0.00000006      0.00000000
 2 a200aa      -0.00000000     -0.00000000
 2 0a20aa       0.03314473      0.05168806
 2 a20aa0       0.03393925      0.05168805
 2 abaa0a       0.00000000      0.00000000
 2 aab0aa       0.00000006     -0.00000000
 2 abaaa0       0.00000001     -0.00000000
 2 aabaa0      -0.00000001      0.00000000
 2 baa0aa      -0.00000006      0.00000000
 2 baaa0a      -0.00000000      0.00000000
 2 a02aa0       0.03972048      0.05168806
 
 Energy:     -294.30944772   -294.28426562
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.43       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.00      6.36      0.47      2.96
 REAL TIME  *        15.51 SEC
 DISK USED  *        58.59 MB (local),      751.82 MB (total)
 SF USED    *        72.65 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -294.6628544   2.0
    -294.6628544   2.0
    -294.6628544   2.0
    -294.3015377   2.0
    -294.3015377   2.0
    -294.3015377   2.0
    -294.2954479   6.0
    -294.2954479   6.0
    -294.2954479   6.0
    -294.2954479   6.0
    -294.2954479   6.0
    -294.2825732   0.0
    -294.3277201   2.0
    -294.3277200   2.0
    -294.3277200   2.0
    -294.3094477   6.0
    -294.3094477   6.0
    -294.3094477   6.0
    -294.3094477   6.0
    -294.3094477   6.0
    -294.2842656   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 25
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      252 conf      420 CSFs
 N elec internal:    15576 conf    58240 CSFs
 N-1 el internal:    19959 conf   132244 CSFs
 N-2 el internal:    14819 conf   136456 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     169 (  85  84 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.66285436
     2      -294.66285436
     3      -294.66285436
     4      -294.30153771
     5      -294.30153771
     6      -294.30153771
     7      -294.29544794
     8      -294.29544794
     9      -294.29544793
    10      -294.29544793
    11      -294.29544793
    12      -294.28257319

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.7094D-07

 Number of blocks in overlap matrix:  1066   Smallest eigenvalue:  0.71D-07
 Number of N-2 electron functions:    3028
 Number of N-1 electron functions:  132244

 Number of internal configurations:                29358
 Number of singly external configurations:      11174352
 Number of doubly external configurations:      21633184
 Total number of contracted configurations:     32836894
 Total number of uncontracted configurations:  983949316

 Diagonal Coupling coefficients finished.               Storage:  34450777 words, CPU-Time:    175.75 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2723986 words, CPU-time:      2.45 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.66285436    -0.00000000    -1.10264791  0.32D-01  0.11D+00   192.87
    1     2     2     1.00000000     0.00000000  -294.66285436     0.00000000    -1.10287291  0.32D-01  0.11D+00   192.87
    1     3     3     1.00000000     0.00000000  -294.66285436    -0.00000000    -1.10252755  0.32D-01  0.11D+00   192.87
    1     4     4     1.00000000     0.00000000  -294.30153771    -0.00000000    -1.14949855  0.10D+00  0.12D+00   192.87
    1     5     5     1.00000000     0.00000000  -294.30153771     0.00000000    -1.14948372  0.10D+00  0.12D+00   192.87
    1     6     6     1.00000000     0.00000000  -294.30153771     0.00000000    -1.14945465  0.10D+00  0.12D+00   192.87
    1     7     7     1.00000000     0.00000000  -294.29544794    -0.00000000    -1.15280247  0.99D-01  0.11D+00   192.87
    1     8     8     1.00000000     0.00000000  -294.29544794    -0.00000000    -1.15334807  0.99D-01  0.12D+00   192.87
    1     9     9     1.00000000     0.00000000  -294.29544793    -0.00000000    -1.15331857  0.99D-01  0.12D+00   192.87
    1    10    10     1.00000000     0.00000000  -294.29544793     0.00000000    -1.15333339  0.99D-01  0.12D+00   192.87
    1    11    11     1.00000000     0.00000000  -294.29544793    -0.00000000    -1.15451565  0.11D+00  0.12D+00   192.87
    1    12    12     1.00000000     0.00000000  -294.28257319    -0.00000000    -1.16267772  0.11D+00  0.12D+00   192.87
    2     1     1     1.09732376    -0.91640065  -295.57925501    -0.91640065    -0.02423229  0.27D-02  0.17D-02  2769.85
    2     2     2     1.09732429    -0.91638838  -295.57924274    -0.91638838    -0.02425496  0.27D-02  0.17D-02  2769.85
    2     3     3     1.09732179    -0.91635323  -295.57920759    -0.91635323    -0.02427946  0.27D-02  0.17D-02  2769.85
    2     4     4     1.13514430    -0.91129727  -295.21283498    -0.91129727    -0.03370167  0.83D-02  0.21D-02  2769.85
    2     5     5     1.13550458    -0.91118367  -295.21272138    -0.91118367    -0.03382419  0.83D-02  0.22D-02  2769.85
    2     6     6     1.13552106    -0.91115197  -295.21268968    -0.91115197    -0.03386007  0.83D-02  0.22D-02  2769.85
    2     7     7     1.13554289    -0.91720502  -295.21265297    -0.91720502    -0.03389670  0.83D-02  0.22D-02  2769.85
    2     8     8     1.13648190    -0.91558870  -295.21103665    -0.91558870    -0.03463604  0.92D-02  0.22D-02  2769.85
    2     9     9     1.13660496    -0.91487346  -295.21032139    -0.91487346    -0.03685257  0.10D-01  0.22D-02  2769.85
    2    10    10     1.13662573    -0.91481813  -295.21026606    -0.91481813    -0.03691261  0.10D-01  0.22D-02  2769.85
    2    11    11     1.13661301    -0.91481126  -295.21025919    -0.91481126    -0.03691406  0.10D-01  0.22D-02  2769.85
    2    12    12     1.14564592    -0.91715299  -295.19972618    -0.91715299    -0.03686746  0.10D-01  0.23D-02  2769.85
    3     1     1     1.09248552    -0.94019968  -295.60305404    -0.02379903    -0.00084512  0.53D-04  0.12D-03  5349.90
    3     2     2     1.09248762    -0.94019685  -295.60305121    -0.02380847    -0.00084689  0.54D-04  0.12D-03  5349.90
    3     3     3     1.09247621    -0.94019367  -295.60304803    -0.02384045    -0.00085008  0.54D-04  0.12D-03  5349.90
    3     4     4     1.10636728    -0.94513407  -295.24667179    -0.03383681    -0.00112056  0.23D-03  0.13D-03  5349.90
    3     5     5     1.10635490    -0.94512876  -295.24666647    -0.03394509    -0.00112451  0.23D-03  0.13D-03  5349.90
    3     6     6     1.10636436    -0.94512873  -295.24666644    -0.03397676    -0.00112540  0.23D-03  0.13D-03  5349.90
    3     7     7     1.10912827    -0.95064220  -295.24609015    -0.03343718    -0.00102891  0.16D-03  0.13D-03  5349.90
    3     8     8     1.10912669    -0.95064099  -295.24608893    -0.03505228    -0.00102991  0.16D-03  0.13D-03  5349.90
    3     9     9     1.10908617    -0.95063795  -295.24608588    -0.03576449    -0.00102983  0.16D-03  0.13D-03  5349.90
    3    10    10     1.10912786    -0.95063650  -295.24608443    -0.03581836    -0.00103324  0.16D-03  0.13D-03  5349.90
    3    11    11     1.10937250    -0.95046801  -295.24591594    -0.03565676    -0.00116250  0.20D-03  0.15D-03  5349.90
    3    12    12     1.11163793    -0.95338760  -295.23596079    -0.03623462    -0.00110108  0.18D-03  0.14D-03  5349.90
    4     1     1     1.09474163    -0.94128835  -295.60414271    -0.00108867    -0.00010042  0.60D-05  0.12D-04  7919.16
    4     2     2     1.09473893    -0.94128757  -295.60414193    -0.00109072    -0.00010100  0.60D-05  0.12D-04  7919.16
    4     3     3     1.09473650    -0.94128746  -295.60414182    -0.00109379    -0.00010108  0.60D-05  0.12D-04  7919.16
    4     4     4     1.10440056    -0.94644501  -295.24798272    -0.00131094    -0.00008356  0.68D-05  0.13D-04  7919.16
    4     5     5     1.10439694    -0.94644474  -295.24798244    -0.00131598    -0.00008384  0.68D-05  0.13D-04  7919.16
    4     6     6     1.10439597    -0.94644467  -295.24798237    -0.00131593    -0.00008392  0.68D-05  0.13D-04  7919.16
    4     7     7     1.10772969    -0.95190124  -295.24734918    -0.00125903    -0.00010055  0.72D-05  0.16D-04  7919.16
    4     8     8     1.10773072    -0.95190101  -295.24734896    -0.00126003    -0.00010071  0.73D-05  0.16D-04  7919.16
    4     9     9     1.10772849    -0.95190037  -295.24734830    -0.00126242    -0.00010110  0.73D-05  0.16D-04  7919.16
    4    10    10     1.10772370    -0.95189916  -295.24734709    -0.00126266    -0.00010160  0.73D-05  0.16D-04  7919.16
    4    11    11     1.10774381    -0.95189023  -295.24733816    -0.00142222    -0.00010846  0.82D-05  0.17D-04  7919.16
    4    12    12     1.10952862    -0.95473277  -295.23730596    -0.00134517    -0.00009873  0.77D-05  0.16D-04  7919.16
    5     1     1     1.09561447    -0.94141437  -295.60426873    -0.00012602    -0.00000830  0.30D-06  0.11D-05 10494.73
    5     2     2     1.09561430    -0.94141431  -295.60426867    -0.00012674    -0.00000834  0.30D-06  0.11D-05 10494.73
    5     3     3     1.09561399    -0.94141431  -295.60426867    -0.00012685    -0.00000835  0.30D-06  0.11D-05 10494.73
    5     4     4     1.10456639    -0.94655235  -295.24809007    -0.00010734    -0.00000910  0.51D-06  0.15D-05 10494.73
    5     5     5     1.10456561    -0.94655232  -295.24809003    -0.00010758    -0.00000913  0.51D-06  0.15D-05 10494.73
    5     6     6     1.10456580    -0.94655226  -295.24808997    -0.00010760    -0.00000915  0.51D-06  0.15D-05 10494.73
    5     7     7     1.10822148    -0.95203876  -295.24748670    -0.00013752    -0.00001341  0.89D-06  0.21D-05 10494.73
    5     8     8     1.10822110    -0.95203871  -295.24748665    -0.00013770    -0.00001344  0.89D-06  0.21D-05 10494.73
    5     9     9     1.10822062    -0.95203864  -295.24748657    -0.00013827    -0.00001349  0.88D-06  0.21D-05 10494.73
    5    10    10     1.10822165    -0.95203830  -295.24748623    -0.00013914    -0.00001365  0.90D-06  0.22D-05 10494.73
    5    11    11     1.10822145    -0.95203703  -295.24748496    -0.00014680    -0.00001440  0.96D-06  0.23D-05 10494.73
    5    12    12     1.10997198    -0.95486666  -295.23743984    -0.00013389    -0.00001237  0.91D-06  0.20D-05 10494.73
    6     1     1     1.09560200    -0.94142481  -295.60427917    -0.00001044    -0.00000086  0.46D-07  0.11D-06 13076.30
    6     2     2     1.09560174    -0.94142480  -295.60427916    -0.00001049    -0.00000087  0.47D-07  0.11D-06 13076.30
    6     3     3     1.09560189    -0.94142480  -295.60427916    -0.00001049    -0.00000087  0.46D-07  0.11D-06 13076.30
    6     4     4     1.10464025    -0.94656457  -295.24810228    -0.00001222    -0.00000123  0.78D-07  0.18D-06 13076.30
    6     5     5     1.10464014    -0.94656457  -295.24810227    -0.00001225    -0.00000123  0.79D-07  0.18D-06 13076.30
    6     6     6     1.10464014    -0.94656455  -295.24810226    -0.00001229    -0.00000124  0.79D-07  0.19D-06 13076.30
    6     7     7     1.10832930    -0.95205722  -295.24750516    -0.00001846    -0.00000207  0.10D-06  0.31D-06 13076.30
    6     8     8     1.10832922    -0.95205721  -295.24750515    -0.00001850    -0.00000207  0.10D-06  0.31D-06 13076.30
    6     9     9     1.10832897    -0.95205721  -295.24750514    -0.00001857    -0.00000208  0.10D-06  0.32D-06 13076.30
    6    10    10     1.10832812    -0.95205713  -295.24750506    -0.00001884    -0.00000212  0.11D-06  0.32D-06 13076.30
    6    11    11     1.10832400    -0.95205690  -295.24750483    -0.00001987    -0.00000224  0.11D-06  0.34D-06 13076.30
    6    12    12     1.11005522    -0.95488359  -295.23745678    -0.00001694    -0.00000186  0.88D-07  0.29D-06 13076.30
    7     1     1     1.09563183    -0.94142590  -295.60428025    -0.00000109    -0.00000012  0.13D-07  0.13D-07 15645.50
    7     2     2     1.09563175    -0.94142589  -295.60428025    -0.00000109    -0.00000013  0.13D-07  0.13D-07 15645.50
    7     3     3     1.09563175    -0.94142589  -295.60428025    -0.00000110    -0.00000013  0.13D-07  0.13D-07 15645.50
    7     4     4     1.10469759    -0.94656615  -295.24810387    -0.00000158    -0.00000020  0.18D-07  0.28D-07 15645.50
    7     5     5     1.10469761    -0.94656616  -295.24810386    -0.00000159    -0.00000019  0.18D-07  0.27D-07 15645.50
    7     6     6     1.10469757    -0.94656615  -295.24810386    -0.00000160    -0.00000020  0.18D-07  0.28D-07 15645.50
    7     7     7     1.10840045    -0.95205992  -295.24750786    -0.00000270    -0.00000036  0.34D-07  0.49D-07 15645.50
    7     8     8     1.10840054    -0.95205991  -295.24750786    -0.00000270    -0.00000036  0.34D-07  0.49D-07 15645.50
    7     9     9     1.10840055    -0.95205992  -295.24750786    -0.00000271    -0.00000036  0.34D-07  0.49D-07 15645.50
    7    10    10     1.10840027    -0.95205991  -295.24750784    -0.00000278    -0.00000037  0.36D-07  0.51D-07 15645.50
    7    11    11     1.10839870    -0.95205983  -295.24750776    -0.00000293    -0.00000039  0.37D-07  0.53D-07 15645.50
    7    12    12     1.11012564    -0.95488604  -295.23745923    -0.00000244    -0.00000031  0.27D-07  0.43D-07 15645.50
    8     1     1     1.09563779    -0.94142604  -295.60428040    -0.00000015    -0.00000002  0.85D-09  0.21D-08 18219.82
    8     2     2     1.09563780    -0.94142604  -295.60428040    -0.00000015    -0.00000002  0.85D-09  0.21D-08 18219.82
    8     3     3     1.09563777    -0.94142604  -295.60428040    -0.00000015    -0.00000002  0.85D-09  0.21D-08 18219.82
    8     4     4     1.10469186    -0.94656640  -295.24810411    -0.00000025    -0.00000004  0.27D-08  0.52D-08 18219.82
    8     5     5     1.10469190    -0.94656640  -295.24810411    -0.00000025    -0.00000004  0.27D-08  0.51D-08 18219.82
    8     6     6     1.10469187    -0.94656640  -295.24810411    -0.00000025    -0.00000004  0.27D-08  0.52D-08 18219.82
    8     7     7     1.10839525    -0.95206037  -295.24750831    -0.00000045    -0.00000007  0.51D-08  0.99D-08 18219.82
    8     8     8     1.10839512    -0.95206036  -295.24750831    -0.00000045    -0.00000007  0.53D-08  0.10D-07 18219.82
    8     9     9     1.10839528    -0.95206037  -295.24750830    -0.00000045    -0.00000007  0.50D-08  0.98D-08 18219.82
    8    10    10     1.10839529    -0.95206037  -295.24750830    -0.00000046    -0.00000007  0.50D-08  0.98D-08 18219.82
    8    11    11     1.10839497    -0.95206031  -295.24750824    -0.00000048    -0.00000007  0.59D-08  0.11D-07 18219.82
    8    12    12     1.11012022    -0.95488643  -295.23745962    -0.00000039    -0.00000006  0.47D-08  0.80D-08 18219.82
    9     1     1     1.09563779    -0.94142604  -295.60428040    -0.00000000    -0.00000002  0.85D-09  0.21D-08 19725.32
    9     2     2     1.09563780    -0.94142604  -295.60428040    -0.00000000    -0.00000002  0.84D-09  0.21D-08 19725.32
    9     3     3     1.09563777    -0.94142604  -295.60428040    -0.00000000    -0.00000002  0.85D-09  0.21D-08 19725.32
    9     4     4     1.10469186    -0.94656640  -295.24810411    -0.00000000    -0.00000004  0.27D-08  0.52D-08 19725.32
    9     5     5     1.10469190    -0.94656640  -295.24810411    -0.00000000    -0.00000004  0.27D-08  0.51D-08 19725.32
    9     6     6     1.10469187    -0.94656640  -295.24810411    -0.00000000    -0.00000004  0.27D-08  0.52D-08 19725.32
    9     7     7     1.10840192    -0.95206047  -295.24750841    -0.00000010    -0.00000001  0.44D-09  0.94D-09 19725.32
    9     8     8     1.10840190    -0.95206047  -295.24750841    -0.00000010    -0.00000001  0.42D-09  0.91D-09 19725.32
    9     9     9     1.10840190    -0.95206047  -295.24750840    -0.00000010    -0.00000001  0.42D-09  0.90D-09 19725.32
    9    10    10     1.10840190    -0.95206047  -295.24750840    -0.00000010    -0.00000001  0.41D-09  0.90D-09 19725.32
    9    11    11     1.10840207    -0.95206042  -295.24750835    -0.00000011    -0.00000001  0.48D-09  0.98D-09 19725.32
    9    12    12     1.11012527    -0.95488651  -295.23745970    -0.00000008    -0.00000000  0.35D-09  0.70D-09 19725.32


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%  17.4%
 P   0.2%  40.7%  33.7%

 Initialization:   0.9%
 Other:            6.7%

 Total CPU:    19725.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222/000          -0.2576335  -0.0221615   0.9163474  -0.0032232   0.0274894   0.0047001  -0.0000000  -0.0000000
                           -0.0000001  -0.0000001  -0.0000000   0.0000000
 22222222222/2000           0.2559844   0.9122436   0.0940330   0.0107697   0.0055912  -0.0253160   0.0000001  -0.0000000
                            0.0000002  -0.0000001  -0.0000001  -0.0000000
 2222222222/22000           0.8801452  -0.2718071   0.2408816  -0.0257249  -0.0011035  -0.0111874   0.0000000   0.0000000
                            0.0000000   0.0000000   0.0000000  -0.0000000
 22222222222//00\          -0.0000000  -0.0000000   0.0000000   0.0000007   0.0000002  -0.0000004   0.2777883  -0.1029012
                            0.0340617  -0.0354587   0.7013092  -0.5413067
 2222222222/2/\00           0.0000000   0.0000000   0.0000000  -0.0000003  -0.0000006   0.0000028   0.6984027  -0.2615698
                            0.0831099  -0.1034241   0.0906613   0.5413054
 2222222222//200\          -0.0019710  -0.0070240  -0.0007240   0.1826081   0.0948042  -0.4292489  -0.0911021  -0.0030536
                            0.6486347  -0.0864613  -0.0002379  -0.0000000
 22222222222//0\0           0.0019710   0.0070240   0.0007240  -0.1826120  -0.0948045   0.4292606  -0.0911048  -0.0030534
                            0.6486257  -0.0864594  -0.0002354   0.0000001
 2222222222/2/00\           0.0019837   0.0001706  -0.0070556  -0.0546529   0.4661044   0.0796930  -0.0816402   0.0091929
                           -0.0978246  -0.6481953   0.0056644  -0.0000000
 22222222222//\00           0.0019837   0.0001706  -0.0070556  -0.0546521   0.4661102   0.0796944   0.0816398  -0.0091933
                            0.0978225   0.6481914  -0.0056644   0.0000001
 2222222222/2/0\0           0.0067769  -0.0020928   0.0018547   0.4361883   0.0187112   0.1896912  -0.2249824  -0.6199362
                           -0.0312830   0.0242727   0.0009002   0.0000001
 2222222222//2\00           0.0067769  -0.0020928   0.0018547   0.4361891   0.0187116   0.1896935   0.2249809   0.6199355
                            0.0312819  -0.0242734  -0.0009002   0.0000001
 2222222222//20\0          -0.0000000   0.0000000  -0.0000000  -0.0000008  -0.0000006   0.0000035   0.4206132  -0.1586681
                            0.0490481  -0.0679650  -0.6106483  -0.5413062
 22222222222200/0           0.0063635   0.0005474  -0.0226338  -0.0493077   0.4205237   0.0718999  -0.0000002  -0.0000002
                           -0.0000010  -0.0000018   0.0000000   0.0000000
 222222222202200/          -0.0217396   0.0067137  -0.0059498  -0.3935310  -0.0168815  -0.1711412   0.0000007   0.0000003
                            0.0000005   0.0000003   0.0000000  -0.0000001
 2222222222202/00          -0.0063228  -0.0225324  -0.0023226   0.1647516   0.0855329  -0.3872756   0.0000012  -0.0000001
                            0.0000042  -0.0000009  -0.0000012  -0.0000000
 22222222222/\/00          -0.0031444  -0.0002705   0.0111841   0.0400614  -0.3416661  -0.0584171  -0.0037410   0.0004214
                           -0.0044820  -0.0297024   0.0002595  -0.0000000
 2222222222/2\00/          -0.0031445  -0.0002705   0.0111842   0.0400614  -0.3416657  -0.0584170   0.0037414  -0.0004211
                            0.0044836   0.0297054  -0.0002596  -0.0000000
 2222222222/\2/00           0.0107422  -0.0033174   0.0029400   0.3197353   0.0137159   0.1390485   0.0103094   0.0284087
                            0.0014331  -0.0011126  -0.0000413   0.0000001
 2222222222/2\0/0           0.0107423  -0.0033174   0.0029400   0.3197352   0.0137158   0.1390484  -0.0103105  -0.0284093
                           -0.0014339   0.0011121   0.0000412   0.0000001
 22222222222/\0/0           0.0031243   0.0111340   0.0011477  -0.1338567  -0.0694934   0.3146522  -0.0041759  -0.0001398
                            0.0297207  -0.0039614  -0.0000099   0.0000000
 2222222222/\200/           0.0031243   0.0111341   0.0011477  -0.1338567  -0.0694934   0.3146520   0.0041739   0.0001400
                           -0.0297272   0.0039628   0.0000118   0.0000000
 22222222220/2002          -0.0077100  -0.0274757  -0.0028322   0.0137245   0.0071254  -0.0322616  -0.0105844  -0.0003548
                            0.0753586  -0.0100451  -0.0000276  -0.0000000
 22222222222/0020          -0.0077099  -0.0274757  -0.0028322   0.0137250   0.0071254  -0.0322631   0.0105846   0.0003547
                           -0.0753579   0.0100449   0.0000274  -0.0000000
 222222222202/002           0.0077596   0.0006675  -0.0275993  -0.0041077   0.0350318   0.0059896  -0.0094850   0.0010680
                           -0.0113653  -0.0753077   0.0006581  -0.0000000
 222222222220/200           0.0077596   0.0006675  -0.0275994  -0.0041076   0.0350325   0.0059898   0.0094850  -0.0010681
                            0.0113651   0.0753074  -0.0006581   0.0000000
 2222222222/20020          -0.0265090   0.0081865  -0.0072551  -0.0327833  -0.0014063  -0.0142569   0.0261386   0.0720246
                            0.0036345  -0.0028200  -0.0001046  -0.0000000
 2222222222/02200          -0.0265089   0.0081865  -0.0072551  -0.0327835  -0.0014064  -0.0142572  -0.0261385  -0.0720245
                           -0.0036344   0.0028201   0.0001046  -0.0000000
 22222222222/00/\           0.0000000   0.0000000  -0.0000000  -0.0000001  -0.0000000   0.0000000  -0.0245787   0.0090962
                           -0.0030212   0.0030952  -0.0669996   0.0491105
 222222222220//0\           0.0000000   0.0000000  -0.0000000   0.0000001   0.0000000  -0.0000000   0.0278890  -0.0103394
                            0.0034122  -0.0036022   0.0654613  -0.0491105
 22222222222020/0           0.0019166   0.0001649  -0.0068168   0.0073475  -0.0626638  -0.0107141  -0.0052907   0.0005958
                           -0.0063394  -0.0420067   0.0003671  -0.0000000
 22222222220220/0           0.0019165   0.0001649  -0.0068167   0.0073475  -0.0626635  -0.0107140   0.0052908  -0.0005957
                            0.0063397   0.0420074  -0.0003671  -0.0000000
 2222222222/02/0\           0.0067368   0.0240079   0.0024747  -0.0025009  -0.0012985   0.0058788   0.0084689   0.0002838
                           -0.0602963   0.0080373   0.0000220  -0.0000000
 222222222220//\0           0.0067368   0.0240078   0.0024747  -0.0025014  -0.0012985   0.0058800  -0.0084689  -0.0002839
                            0.0602961  -0.0080373  -0.0000220   0.0000000
 2222222222/200/\          -0.0067802  -0.0005832   0.0241159   0.0007486  -0.0063840  -0.0010915   0.0075892  -0.0008546
                            0.0090936   0.0602557  -0.0005266   0.0000000
 2222222222/2\/00           0.0000000   0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000002   0.0065450  -0.0025555
                            0.0006868  -0.0014896  -0.0601208   0.0000001
 222222222220200/          -0.0065475   0.0020220  -0.0017919   0.0586412   0.0025156   0.0255023   0.0145801   0.0401757
                            0.0020272  -0.0015731  -0.0000583   0.0000000
 222222222222000/          -0.0065475   0.0020220  -0.0017919   0.0586411   0.0025155   0.0255022  -0.0145803  -0.0401758
                           -0.0020274   0.0015730   0.0000583   0.0000000
 2222222222220/00          -0.0019043  -0.0067862  -0.0006995  -0.0245503  -0.0127455   0.0577096  -0.0059043  -0.0001979
                            0.0420347  -0.0056030  -0.0000152   0.0000000
 2222222222022/00          -0.0019043  -0.0067862  -0.0006995  -0.0245501  -0.0127455   0.0577088   0.0059039   0.0001979
                           -0.0420361   0.0056033   0.0000155   0.0000000
 2222222222/\/002           0.0000000   0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000  -0.0213908   0.0079195
                           -0.0026267   0.0027089  -0.0565336   0.0416077
 2222222222/02/\0          -0.0000000  -0.0000000  -0.0000000   0.0000001   0.0000000  -0.0000003  -0.0411659   0.0155234
                           -0.0048053   0.0066239   0.0564971   0.0491105
 2222222222//\020           0.0000000   0.0000000  -0.0000000  -0.0000001  -0.0000001   0.0000003   0.0388792  -0.0146664
                            0.0045337  -0.0062823  -0.0564450  -0.0480443
 2222222222///\0\           0.0065879   0.0005667  -0.0234319  -0.0065852   0.0561626   0.0096025  -0.0000000  -0.0000000
                           -0.0000001  -0.0000002   0.0000000   0.0000000
 2222222222/\/200           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000002  -0.0560156   0.0209810
                           -0.0066643   0.0083038  -0.0062653  -0.0416076
 2222222222/20\/0           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000002   0.0556073  -0.0208307
                            0.0066135  -0.0082562   0.0047048   0.0434542
 222222222202/\0/           0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000002  -0.0550678   0.0206200
                           -0.0065569   0.0081334  -0.0096621  -0.0434542
 2222222222///\\0           0.0225061  -0.0069504   0.0061596   0.0525575   0.0022546   0.0228566  -0.0000001  -0.0000000
                           -0.0000001  -0.0000000  -0.0000000   0.0000000
 2222222222///0\\           0.0065458   0.0233269   0.0024045  -0.0220032  -0.0114233   0.0517222  -0.0000002   0.0000000
                           -0.0000006   0.0000001   0.0000002   0.0000000
 22222222222/\00/          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000003  -0.0512793   0.0192576
                           -0.0060562   0.0078540   0.0238283   0.0000002
 22222222222/0\/0           0.0069085   0.0005943  -0.0245722   0.0021594  -0.0184165  -0.0031488   0.0063145  -0.0007110
                            0.0075662   0.0501346  -0.0004381   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 22222222222/\000  20.2     0.0000000  -0.0000000  -0.0000000  -0.0000001  -0.0000000   0.0000000  -0.0211282   0.0078265
                           -0.0025907   0.0026969  -0.0533410   0.0430090
 2222222222/2\000  22.2    -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000002  -0.0531197   0.0198947
                           -0.0063212   0.0078663  -0.0068948  -0.0430094
 22222222222/\000  30.2     0.0000000  -0.0000000  -0.0000000  -0.0000001  -0.0000000   0.0000000  -0.0210008   0.0077793
                           -0.0025751   0.0026807  -0.0530185   0.0410189
 2222222222/2\000  32.2    -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000002  -0.0527989   0.0197745
                           -0.0062831   0.0078188  -0.0068556  -0.0410190

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.256779   -0.258433    0.882877   -0.009414   -0.002756   -0.002738    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000
 2           0.915075   -0.022230   -0.272651    0.002907   -0.000237   -0.009758    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 3           0.094325    0.919192    0.241629   -0.002577    0.009802   -0.001006   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000
 4          -0.004129    0.001236    0.009862    0.871592   -0.109207   -0.364891   -0.000001    0.000000    0.000001   -0.000002
             0.000001   -0.000000
 5          -0.002144   -0.010539    0.000423    0.037389    0.931375   -0.189438   -0.000001    0.000000    0.000003    0.000000
             0.000000   -0.000000
 6           0.009705   -0.001802    0.004289    0.379043    0.159244    0.857736    0.000004    0.000002    0.000001    0.000007
            -0.000001   -0.000000
 7          -0.000000    0.000000   -0.000000   -0.000001   -0.000000   -0.000003    0.821065    0.323411    0.117357   -0.130961
             0.303857    0.000000
 8           0.000000    0.000000   -0.000000   -0.000001   -0.000000    0.000000   -0.308254    0.891157   -0.013215   -0.004389
            -0.112346   -0.000000
 9          -0.000000    0.000000   -0.000000   -0.000001   -0.000002   -0.000008    0.097050    0.044968    0.140621    0.932405
             0.037446   -0.000000
 10          0.000000    0.000000   -0.000000   -0.000001   -0.000003    0.000002   -0.125300   -0.034893    0.931777   -0.124287
            -0.037728   -0.000000
 11          0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000003   -0.328190   -0.001294   -0.008143   -0.000340
             0.891190   -0.000000
 12          0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.949003

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955143   -0.000000   -0.000000    0.000221    0.000077    0.000204   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 2          -0.000000    0.955143   -0.000000   -0.000196   -0.000056    0.000234    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000
 3          -0.000000   -0.000000    0.955143    0.000095   -0.000296    0.000009    0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000
 4           0.000221   -0.000196    0.000095    0.951241    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000
 5           0.000077   -0.000056   -0.000296    0.000000    0.951241   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 6           0.000204    0.000234    0.000009    0.000000   -0.000000    0.951241   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.949735    0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.949735    0.000000   -0.000000
             0.000000    0.000000
 9          -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.949735    0.000000
            -0.000000   -0.000000
 10         -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.949735
             0.000000    0.000000
 11          0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.949735   -0.000000
 12         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.949003


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.88287721 (fixed)   0.95532341 (relaxed)   0.95514342 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045098   -0.00045987   -0.80924757
 Singles      0.01214987   -0.05480853   -0.06043838
 Pairs        0.08353106   -0.00000000   -0.07174010
 Total        1.09613191   -0.05526840   -0.94142604
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.66281074
 Nuclear energy                         0.00000000
 Kinetic energy                       111.71083993
 One electron energy                 -513.21766919
 Two electron energy                  217.61338879
 Virial quotient                       -2.64615574
 Correlation energy                    -0.94146967
 !MRCI STATE 1.2 Energy              -295.604280402477

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.69478568 (Davidson, fixed reference)
 Cluster corrected energies          -295.69439687 (Davidson, relaxed reference)
 Cluster corrected energies          -295.69478568 (Davidson, rotated reference)

 Cluster corrected energies          -295.69439342 (Pople, fixed reference)
 Cluster corrected energies          -295.69397344 (Pople, relaxed reference)
 Cluster corrected energies          -295.69439342 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.91507524 (fixed)   0.95532340 (relaxed)   0.95514342 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045098   -0.00045987   -0.80924758
 Singles      0.01214987   -0.05480851   -0.06043837
 Pairs        0.08353107    0.00000000   -0.07174009
 Total        1.09613191   -0.05526838   -0.94142604
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.66281074
 Nuclear energy                         0.00000000
 Kinetic energy                       111.71084041
 One electron energy                 -513.21767065
 Two electron energy                  217.61339025
 Virial quotient                       -2.64615573
 Correlation energy                    -0.94146967
 !MRCI STATE 2.2 Energy              -295.604280401840

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.69478568 (Davidson, fixed reference)
 Cluster corrected energies          -295.69439687 (Davidson, relaxed reference)
 Cluster corrected energies          -295.69478568 (Davidson, rotated reference)

 Cluster corrected energies          -295.69439343 (Pople, fixed reference)
 Cluster corrected energies          -295.69397344 (Pople, relaxed reference)
 Cluster corrected energies          -295.69439343 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.91919174 (fixed)   0.95532342 (relaxed)   0.95514343 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045098   -0.00045987   -0.80924759
 Singles      0.01214987   -0.05480852   -0.06043838
 Pairs        0.08353103   -0.00000000   -0.07174007
 Total        1.09613188   -0.05526839   -0.94142604
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.66281074
 Nuclear energy                         0.00000000
 Kinetic energy                       111.71083998
 One electron energy                 -513.21766908
 Two electron energy                  217.61338868
 Virial quotient                       -2.64615574
 Correlation energy                    -0.94146967
 !MRCI STATE 3.2 Energy              -295.604280400813

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.69478565 (Davidson, fixed reference)
 Cluster corrected energies          -295.69439684 (Davidson, relaxed reference)
 Cluster corrected energies          -295.69478565 (Davidson, rotated reference)

 Cluster corrected energies          -295.69439340 (Pople, fixed reference)
 Cluster corrected energies          -295.69397341 (Pople, relaxed reference)
 Cluster corrected energies          -295.69439340 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.87159169 (fixed)   0.95137962 (relaxed)   0.95124100 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00040932   -0.00061467   -0.78389954
 Singles      0.02639285   -0.08063203   -0.09557017
 Pairs        0.07834186    0.00000008   -0.06709669
 Total        1.10514403   -0.08124662   -0.94656640
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30158133
 Nuclear energy                         0.00000000
 Kinetic energy                       111.63021756
 One electron energy                 -509.48110394
 Two electron energy                  214.23299983
 Virial quotient                       -2.64487619
 Correlation energy                    -0.94652278
 !MRCI STATE 4.2 Energy              -295.248104114452

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.34762533 (Davidson, fixed reference)
 Cluster corrected energies          -295.34732052 (Davidson, relaxed reference)
 Cluster corrected energies          -295.34762533 (Davidson, rotated reference)

 Cluster corrected energies          -295.34799169 (Pople, fixed reference)
 Cluster corrected energies          -295.34765714 (Pople, relaxed reference)
 Cluster corrected energies          -295.34799169 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.93137479 (fixed)   0.95137960 (relaxed)   0.95124098 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00040932   -0.00061467   -0.78389954
 Singles      0.02639286   -0.08063200   -0.09557014
 Pairs        0.07834189    0.00000008   -0.06709672
 Total        1.10514407   -0.08124659   -0.94656640
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30158133
 Nuclear energy                         0.00000000
 Kinetic energy                       111.63021800
 One electron energy                 -509.48110448
 Two electron energy                  214.23300037
 Virial quotient                       -2.64487618
 Correlation energy                    -0.94652278
 !MRCI STATE 5.2 Energy              -295.248104109045

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.34762537 (Davidson, fixed reference)
 Cluster corrected energies          -295.34732055 (Davidson, relaxed reference)
 Cluster corrected energies          -295.34762537 (Davidson, rotated reference)

 Cluster corrected energies          -295.34799173 (Pople, fixed reference)
 Cluster corrected energies          -295.34765718 (Pople, relaxed reference)
 Cluster corrected energies          -295.34799173 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.85773621 (fixed)   0.95137961 (relaxed)   0.95124099 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00040932   -0.00061467   -0.78389960
 Singles      0.02639286   -0.08063202   -0.09557015
 Pairs        0.07834187    0.00000014   -0.06709665
 Total        1.10514405   -0.08124654   -0.94656640
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30158133
 Nuclear energy                         0.00000000
 Kinetic energy                       111.63021799
 One electron energy                 -509.48110393
 Two electron energy                  214.23299982
 Virial quotient                       -2.64487618
 Correlation energy                    -0.94652277
 !MRCI STATE 6.2 Energy              -295.248104105824

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.34762534 (Davidson, fixed reference)
 Cluster corrected energies          -295.34732053 (Davidson, relaxed reference)
 Cluster corrected energies          -295.34762534 (Davidson, rotated reference)

 Cluster corrected energies          -295.34799170 (Pople, fixed reference)
 Cluster corrected energies          -295.34765715 (Pople, relaxed reference)
 Cluster corrected energies          -295.34799170 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.82106547 (fixed)   0.94980129 (relaxed)   0.94973468 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022600   -0.00050593   -0.78387066
 Singles      0.02914388   -0.08323534   -0.10010425
 Pairs        0.07928254   -0.00000020   -0.06808556
 Total        1.10865241   -0.08374147   -0.95206047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29544794
 Nuclear energy                         0.00000000
 Kinetic energy                       111.66938093
 One electron energy                 -509.64629266
 Two electron energy                  214.39878425
 Virial quotient                       -2.64394327
 Correlation energy                    -0.95206047
 !MRCI STATE 7.2 Energy              -295.247508412128

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.35095208 (Davidson, fixed reference)
 Cluster corrected energies          -295.35080403 (Davidson, relaxed reference)
 Cluster corrected energies          -295.35095208 (Davidson, rotated reference)

 Cluster corrected energies          -295.35165877 (Pople, fixed reference)
 Cluster corrected energies          -295.35149525 (Pople, relaxed reference)
 Cluster corrected energies          -295.35165877 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.89115663 (fixed)   0.94980130 (relaxed)   0.94973469 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022600   -0.00050593   -0.78387094
 Singles      0.02914390   -0.08323532   -0.10010427
 Pairs        0.07928250    0.00000008   -0.06808526
 Total        1.10865240   -0.08374116   -0.95206047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29544794
 Nuclear energy                         0.00000000
 Kinetic energy                       111.66938241
 One electron energy                 -509.64629297
 Two electron energy                  214.39878456
 Virial quotient                       -2.64394324
 Correlation energy                    -0.95206047
 !MRCI STATE 8.2 Energy              -295.247508410094

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.35095206 (Davidson, fixed reference)
 Cluster corrected energies          -295.35080401 (Davidson, relaxed reference)
 Cluster corrected energies          -295.35095206 (Davidson, rotated reference)

 Cluster corrected energies          -295.35165875 (Pople, fixed reference)
 Cluster corrected energies          -295.35149523 (Pople, relaxed reference)
 Cluster corrected energies          -295.35165875 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.93240476 (fixed)   0.94980130 (relaxed)   0.94973469 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022600   -0.00050593   -0.78387090
 Singles      0.02914389   -0.08323529   -0.10010426
 Pairs        0.07928251    0.00000002   -0.06808531
 Total        1.10865240   -0.08374121   -0.95206047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29544793
 Nuclear energy                         0.00000000
 Kinetic energy                       111.66938268
 One electron energy                 -509.64629269
 Two electron energy                  214.39878429
 Virial quotient                       -2.64394323
 Correlation energy                    -0.95206047
 !MRCI STATE 9.2 Energy              -295.247508401724

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.35095205 (Davidson, fixed reference)
 Cluster corrected energies          -295.35080400 (Davidson, relaxed reference)
 Cluster corrected energies          -295.35095205 (Davidson, rotated reference)

 Cluster corrected energies          -295.35165874 (Pople, fixed reference)
 Cluster corrected energies          -295.35149522 (Pople, relaxed reference)
 Cluster corrected energies          -295.35165874 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.93177679 (fixed)   0.94980130 (relaxed)   0.94973469 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022600   -0.00050593   -0.78387101
 Singles      0.02914389   -0.08323530   -0.10010425
 Pairs        0.07928250    0.00000014   -0.06808520
 Total        1.10865239   -0.08374109   -0.95206047
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29544793
 Nuclear energy                         0.00000000
 Kinetic energy                       111.66938257
 One electron energy                 -509.64629241
 Two electron energy                  214.39878401
 Virial quotient                       -2.64394323
 Correlation energy                    -0.95206047
 !MRCI STATE 10.2 Energy             -295.247508399254

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.35095204 (Davidson, fixed reference)
 Cluster corrected energies          -295.35080399 (Davidson, relaxed reference)
 Cluster corrected energies          -295.35095204 (Davidson, rotated reference)

 Cluster corrected energies          -295.35165873 (Pople, fixed reference)
 Cluster corrected energies          -295.35149521 (Pople, relaxed reference)
 Cluster corrected energies          -295.35165873 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Coefficient of reference function:   C(0) = 0.89118980 (fixed)   0.94980123 (relaxed)   0.94973461 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022600   -0.00050593   -0.78387138
 Singles      0.02914401   -0.08323546   -0.10010433
 Pairs        0.07928256    0.00000090   -0.06808471
 Total        1.10865257   -0.08374049   -0.95206042
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.29544793
 Nuclear energy                         0.00000000
 Kinetic energy                       111.66938260
 One electron energy                 -509.64628987
 Two electron energy                  214.39878152
 Virial quotient                       -2.64394323
 Correlation energy                    -0.95206042
 !MRCI STATE 11.2 Energy             -295.247508346657

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.35095216 (Davidson, fixed reference)
 Cluster corrected energies          -295.35080410 (Davidson, relaxed reference)
 Cluster corrected energies          -295.35095216 (Davidson, rotated reference)

 Cluster corrected energies          -295.35165886 (Pople, fixed reference)
 Cluster corrected energies          -295.35149534 (Pople, relaxed reference)
 Cluster corrected energies          -295.35165886 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Coefficient of reference function:   C(0) = 0.94900273 (fixed)   0.94906312 (relaxed)   0.94900273 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00021437   -0.00050525   -0.00063939
 Singles      0.03111640   -0.08685092   -0.10497654
 Pairs        0.07903248   -0.86753034   -0.84927058
 Total        1.11036325   -0.95488651   -0.95488651
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.28257319
 Nuclear energy                         0.00000000
 Kinetic energy                       111.66297017
 One electron energy                 -509.61889457
 Two electron energy                  214.38143487
 Virial quotient                       -2.64400507
 Correlation energy                    -0.95488651
 !MRCI STATE 12.2 Energy             -295.237459699694

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.34284408 (Davidson, fixed reference)
 Cluster corrected energies          -295.34270914 (Davidson, relaxed reference)
 Cluster corrected energies          -295.34284408 (Davidson, rotated reference)

 Cluster corrected energies          -295.34372658 (Pople, fixed reference)
 Cluster corrected energies          -295.34357708 (Pople, relaxed reference)
 Cluster corrected energies          -295.34372658 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     3038.91       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     22141.71  22131.70      6.36      0.47      2.96
 REAL TIME  *     22521.39 SEC
 DISK USED  *         3.02 GB (local),       24.46 GB (total)
 SF USED    *        30.23 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -295.69478568  AU                              
 SETTING HLSDIAG(2)     =      -295.69478568  AU                              
 SETTING HLSDIAG(3)     =      -295.69478565  AU                              
 SETTING HLSDIAG(4)     =      -295.34762533  AU                              
 SETTING HLSDIAG(5)     =      -295.34762537  AU                              
 SETTING HLSDIAG(6)     =      -295.34762534  AU                              
 SETTING HLSDIAG(7)     =      -295.35095208  AU                              
 SETTING HLSDIAG(8)     =      -295.35095206  AU                              
 SETTING HLSDIAG(9)     =      -295.35095205  AU                              
 SETTING HLSDIAG(10)    =      -295.35095204  AU                              
 SETTING HLSDIAG(11)    =      -295.35095216  AU                              
 SETTING HLSDIAG(12)    =      -295.34284408  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 25
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:      132 conf      168 CSFs
 N elec internal:    13636 conf    42944 CSFs
 N-1 el internal:    15469 conf   107720 CSFs
 N-2 el internal:     8549 conf   109646 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     169 (  85  84 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.32772005
     2      -294.32772004
     3      -294.32772004
     4      -294.30944773
     5      -294.30944773
     6      -294.30944772
     7      -294.30944772
     8      -294.30944772
     9      -294.28426562

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1786D-06

 Number of blocks in overlap matrix:   955   Smallest eigenvalue:  0.18D-06
 Number of N-2 electron functions:    2199
 Number of N-1 electron functions:  107720

 Number of internal configurations:                21432
 Number of singly external configurations:       9102180
 Number of doubly external configurations:      15704688
 Total number of contracted configurations:     24828300
 Total number of uncontracted configurations:  789910292

 Diagonal Coupling coefficients finished.               Storage:  19043385 words, CPU-Time:     63.62 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2565084 words, CPU-time:      1.78 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.32772005    -0.00000000    -1.13974838  0.91D-01  0.11D+00    74.05
    1     2     2     1.00000000     0.00000000  -294.32772004     0.00000000    -1.13970915  0.91D-01  0.11D+00    74.05
    1     3     3     1.00000000     0.00000000  -294.32772004     0.00000000    -1.13967922  0.91D-01  0.11D+00    74.05
    1     4     4     1.00000000     0.00000000  -294.30944773    -0.00000000    -1.14688114  0.95D-01  0.11D+00    74.05
    1     5     5     1.00000000     0.00000000  -294.30944773    -0.00000000    -1.14670578  0.96D-01  0.11D+00    74.05
    1     6     6     1.00000000     0.00000000  -294.30944772    -0.00000000    -1.14677857  0.96D-01  0.11D+00    74.05
    1     7     7     1.00000000     0.00000000  -294.30944772    -0.00000000    -1.14668339  0.96D-01  0.11D+00    74.05
    1     8     8     1.00000000     0.00000000  -294.30944772     0.00000000    -1.15078821  0.10D+00  0.12D+00    74.05
    1     9     9     1.00000000     0.00000000  -294.28426562    -0.00000000    -1.15977189  0.11D+00  0.12D+00    74.05
    2     1     1     1.12934423    -0.90739619  -295.23511624    -0.90739619    -0.03320047  0.83D-02  0.19D-02  1287.40
    2     2     2     1.12933859    -0.90738248  -295.23510252    -0.90738248    -0.03321097  0.83D-02  0.19D-02  1287.40
    2     3     3     1.12936411    -0.90734070  -295.23506074    -0.90734070    -0.03326575  0.83D-02  0.19D-02  1287.40
    2     4     4     1.13257698    -0.91287945  -295.22232718    -0.91287945    -0.03221702  0.80D-02  0.19D-02  1287.40
    2     5     5     1.13292343    -0.91219884  -295.22164657    -0.91219884    -0.03279568  0.82D-02  0.19D-02  1287.40
    2     6     6     1.13295394    -0.91218299  -295.22163071    -0.91218299    -0.03282794  0.82D-02  0.19D-02  1287.40
    2     7     7     1.13296547    -0.91209689  -295.22154461    -0.91209689    -0.03289012  0.83D-02  0.19D-02  1287.40
    2     8     8     1.13575791    -0.91002381  -295.21947153    -0.91002381    -0.03443022  0.94D-02  0.20D-02  1287.40
    2     9     9     1.14376965    -0.91549757  -295.19976319    -0.91549757    -0.03449931  0.97D-02  0.20D-02  1287.40
    3     1     1     1.10301470    -0.94053740  -295.26825745    -0.03314121    -0.00093635  0.20D-03  0.98D-04  2501.83
    3     2     2     1.10301088    -0.94053100  -295.26825105    -0.03314852    -0.00093981  0.20D-03  0.99D-04  2501.83
    3     3     3     1.10302008    -0.94052939  -295.26824943    -0.03318869    -0.00094219  0.20D-03  0.99D-04  2501.83
    3     4     4     1.10584657    -0.94531002  -295.25475775    -0.03243057    -0.00095654  0.21D-03  0.10D-03  2501.83
    3     5     5     1.10568181    -0.94526088  -295.25470861    -0.03306204    -0.00098824  0.21D-03  0.11D-03  2501.83
    3     6     6     1.10566942    -0.94525585  -295.25470357    -0.03307286    -0.00098994  0.21D-03  0.11D-03  2501.83
    3     7     7     1.10565618    -0.94524264  -295.25469036    -0.03314575    -0.00099833  0.21D-03  0.11D-03  2501.83
    3     8     8     1.10608154    -0.94516749  -295.25461520    -0.03514367    -0.00108318  0.25D-03  0.11D-03  2501.83
    3     9     9     1.10971539    -0.95073760  -295.23500322    -0.03524003    -0.00107986  0.23D-03  0.12D-03  2501.83
    4     1     1     1.10169182    -0.94164572  -295.26936577    -0.00110832    -0.00006618  0.37D-05  0.11D-04  3725.55
    4     2     2     1.10168931    -0.94164438  -295.26936443    -0.00111338    -0.00006707  0.37D-05  0.11D-04  3725.55
    4     3     3     1.10168627    -0.94164427  -295.26936431    -0.00111488    -0.00006708  0.37D-05  0.11D-04  3725.55
    4     4     4     1.10418894    -0.94644956  -295.25589729    -0.00113954    -0.00007345  0.43D-05  0.12D-04  3725.55
    4     5     5     1.10420117    -0.94644405  -295.25589178    -0.00118317    -0.00007696  0.47D-05  0.13D-04  3725.55
    4     6     6     1.10412387    -0.94644347  -295.25589119    -0.00118762    -0.00007785  0.46D-05  0.13D-04  3725.55
    4     7     7     1.10411579    -0.94644232  -295.25589003    -0.00119967    -0.00007853  0.46D-05  0.13D-04  3725.55
    4     8     8     1.10410302    -0.94644000  -295.25588772    -0.00127252    -0.00007997  0.47D-05  0.13D-04  3725.55
    4     9     9     1.10758927    -0.95203535  -295.23630097    -0.00129775    -0.00008261  0.52D-05  0.14D-04  3725.55
    5     1     1     1.10212904    -0.94173294  -295.26945300    -0.00008722    -0.00000710  0.60D-06  0.11D-05  4950.68
    5     2     2     1.10212757    -0.94173280  -295.26945285    -0.00008842    -0.00000721  0.62D-06  0.11D-05  4950.68
    5     3     3     1.10212697    -0.94173276  -295.26945280    -0.00008849    -0.00000724  0.62D-06  0.11D-05  4950.68
    5     4     4     1.10473528    -0.94655062  -295.25599835    -0.00010106    -0.00001017  0.89D-06  0.15D-05  4950.68
    5     5     5     1.10473523    -0.94655058  -295.25599831    -0.00010652    -0.00001055  0.94D-06  0.16D-05  4950.68
    5     6     6     1.10473424    -0.94655050  -295.25599822    -0.00010703    -0.00001064  0.95D-06  0.16D-05  4950.68
    5     7     7     1.10473193    -0.94655028  -295.25599800    -0.00010797    -0.00001083  0.97D-06  0.16D-05  4950.68
    5     8     8     1.10473602    -0.94654984  -295.25599756    -0.00010984    -0.00001064  0.91D-06  0.16D-05  4950.68
    5     9     9     1.10831008    -0.95215010  -295.23641572    -0.00011476    -0.00001167  0.10D-05  0.17D-05  4950.68
    6     1     1     1.10224227    -0.94174211  -295.26946216    -0.00000917    -0.00000066  0.38D-07  0.94D-07  6172.92
    6     2     2     1.10224193    -0.94174211  -295.26946215    -0.00000930    -0.00000068  0.40D-07  0.96D-07  6172.92
    6     3     3     1.10224178    -0.94174210  -295.26946214    -0.00000934    -0.00000068  0.39D-07  0.96D-07  6172.92
    6     4     4     1.10487770    -0.94656510  -295.25601283    -0.00001448    -0.00000148  0.79D-07  0.22D-06  6172.92
    6     5     5     1.10487809    -0.94656510  -295.25601283    -0.00001452    -0.00000148  0.79D-07  0.22D-06  6172.92
    6     6     6     1.10487655    -0.94656511  -295.25601283    -0.00001461    -0.00000149  0.81D-07  0.22D-06  6172.92
    6     7     7     1.10488023    -0.94656480  -295.25601252    -0.00001452    -0.00000148  0.78D-07  0.22D-06  6172.92
    6     8     8     1.10487649    -0.94656468  -295.25601240    -0.00001484    -0.00000155  0.87D-07  0.24D-06  6172.92
    6     9     9     1.10847148    -0.95216657  -295.23643219    -0.00001646    -0.00000183  0.88D-07  0.29D-06  6172.92
    7     1     1     1.10227582    -0.94174291  -295.26946296    -0.00000080    -0.00000008  0.73D-08  0.12D-07  7400.97
    7     2     2     1.10227588    -0.94174292  -295.26946296    -0.00000081    -0.00000008  0.70D-08  0.11D-07  7400.97
    7     3     3     1.10227572    -0.94174291  -295.26946296    -0.00000081    -0.00000008  0.72D-08  0.12D-07  7400.97
    7     4     4     1.10491438    -0.94656710  -295.25601483    -0.00000200    -0.00000030  0.28D-07  0.41D-07  7400.97
    7     5     5     1.10491500    -0.94656710  -295.25601483    -0.00000200    -0.00000030  0.28D-07  0.41D-07  7400.97
    7     6     6     1.10491471    -0.94656711  -295.25601483    -0.00000201    -0.00000030  0.27D-07  0.40D-07  7400.97
    7     7     7     1.10491539    -0.94656680  -295.25601452    -0.00000200    -0.00000029  0.27D-07  0.40D-07  7400.97
    7     8     8     1.10491516    -0.94656678  -295.25601449    -0.00000210    -0.00000030  0.26D-07  0.43D-07  7400.97
    7     9     9     1.10850583    -0.95216911  -295.23643473    -0.00000254    -0.00000038  0.32D-07  0.52D-07  7400.97
    8     1     1     1.10227174    -0.94174301  -295.26946306    -0.00000010    -0.00000001  0.87D-09  0.18D-08  8617.54
    8     2     2     1.10227177    -0.94174301  -295.26946306    -0.00000010    -0.00000001  0.84D-09  0.18D-08  8617.54
    8     3     3     1.10227171    -0.94174302  -295.26946306    -0.00000010    -0.00000001  0.86D-09  0.18D-08  8617.54
    8     4     4     1.10490356    -0.94656752  -295.25601525    -0.00000041    -0.00000007  0.55D-08  0.86D-08  8617.54
    8     5     5     1.10490363    -0.94656751  -295.25601524    -0.00000041    -0.00000007  0.54D-08  0.85D-08  8617.54
    8     6     6     1.10490358    -0.94656752  -295.25601524    -0.00000041    -0.00000007  0.54D-08  0.85D-08  8617.54
    8     7     7     1.10490355    -0.94656720  -295.25601492    -0.00000040    -0.00000006  0.52D-08  0.83D-08  8617.54
    8     8     8     1.10490371    -0.94656719  -295.25601491    -0.00000041    -0.00000007  0.59D-08  0.86D-08  8617.54
    8     9     9     1.10849647    -0.95216963  -295.23643525    -0.00000052    -0.00000008  0.78D-08  0.11D-07  8617.54
    9     1     1     1.10227174    -0.94174301  -295.26946306    -0.00000000    -0.00000001  0.87D-09  0.18D-08  9503.94
    9     2     2     1.10227177    -0.94174301  -295.26946306     0.00000000    -0.00000001  0.84D-09  0.18D-08  9503.94
    9     3     3     1.10227171    -0.94174302  -295.26946306     0.00000000    -0.00000001  0.86D-09  0.18D-08  9503.94
    9     4     4     1.10490459    -0.94656760  -295.25601533    -0.00000008    -0.00000001  0.78D-09  0.18D-08  9503.94
    9     5     5     1.10490460    -0.94656759  -295.25601532    -0.00000008    -0.00000001  0.76D-09  0.18D-08  9503.94
    9     6     6     1.10490461    -0.94656760  -295.25601532    -0.00000008    -0.00000001  0.76D-09  0.18D-08  9503.94
    9     7     7     1.10490614    -0.94656729  -295.25601501    -0.00000009    -0.00000001  0.66D-09  0.77D-09  9503.94
    9     8     8     1.10490642    -0.94656729  -295.25601501    -0.00000010    -0.00000001  0.67D-09  0.81D-09  9503.94
    9     9     9     1.10850076    -0.95216975  -295.23643537    -0.00000012    -0.00000001  0.97D-09  0.11D-08  9503.94


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%  25.3%
 P   0.2%  40.9%  25.0%

 Initialization:   0.7%
 Other:            7.5%

 Total CPU:     9503.9 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222//00/           0.0000000  -0.0000000   0.0000000   0.0000041  -0.0000543  -0.0001234   0.0534085   0.7672889
                           -0.5417512
 2222222222/2//00           0.0000000  -0.0000000  -0.0000000   0.0000537  -0.0000109  -0.0000840   0.6911963   0.3373917
                            0.5417504
 2222222222//2/00           0.6677745   0.0005102  -0.0032928   0.6660814   0.0011071   0.0048899  -0.0000516   0.0000009
                            0.0000000
 2222222222/2/0/0           0.6677744   0.0005102  -0.0032929  -0.6660815  -0.0011071  -0.0048899   0.0000516  -0.0000009
                           -0.0000000
 2222222222/2/00/          -0.0002353   0.6654801   0.0554036   0.0011990  -0.6659815  -0.0125395   0.0000123  -0.0000500
                            0.0000000
 22222222222///00          -0.0002353   0.6654808   0.0554037  -0.0011990   0.6659808   0.0125395  -0.0000123   0.0000500
                           -0.0000000
 2222222222//200/          -0.0033238   0.0554018  -0.6654720  -0.0048682  -0.0125480   0.6659646   0.0000303   0.0001041
                           -0.0000000
 22222222222//0/0           0.0033238  -0.0554018   0.6654727  -0.0048682  -0.0125480   0.6659639   0.0000303   0.0001041
                            0.0000000
 2222222222//20/0          -0.0000000   0.0000000  -0.0000000   0.0000496   0.0000434   0.0000393   0.6377877  -0.4298980
                           -0.5417504
 2222222222/\//0/           0.0000000   0.0000001   0.0000000  -0.0001451   0.0805951   0.0015175  -0.0000015   0.0000061
                            0.0000000
 2222222222//\//0          -0.0237335  -0.0000181   0.0001170  -0.0698079  -0.0001160  -0.0005125   0.0000054  -0.0000001
                           -0.0000000
 2222222222//\0//          -0.0001181   0.0019690  -0.0236516  -0.0005102  -0.0013151   0.0697956   0.0000032   0.0000109
                            0.0000000
 222222222220//0/           0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0000049  -0.0000108   0.0007952   0.0682034
                           -0.0526031
 22222222222/00//          -0.0000000  -0.0000000   0.0000000  -0.0000007   0.0000047   0.0000111  -0.0086614  -0.0676558
                            0.0526031
 222222222202//0/          -0.0000000  -0.0000000  -0.0000000  -0.0000049   0.0000007   0.0000070  -0.0629225  -0.0263268
                           -0.0526030
 222222222202/0//          -0.0617910  -0.0000472   0.0003047   0.0609406   0.0001013   0.0004474  -0.0000047   0.0000001
                            0.0000000
 22222222220/2/0/          -0.0617910  -0.0000472   0.0003047  -0.0609406  -0.0001013  -0.0004474   0.0000047  -0.0000001
                           -0.0000000
 22222222222/0//0          -0.0000218   0.0615787   0.0051266  -0.0001097   0.0609314   0.0011473  -0.0000011   0.0000046
                            0.0000000
 2222222222/200//           0.0000218  -0.0615786  -0.0051266  -0.0001097   0.0609314   0.0011473  -0.0000011   0.0000046
                           -0.0000000
 222222222220///0           0.0003076  -0.0051265   0.0615780  -0.0004454  -0.0011480   0.0609298   0.0000028   0.0000095
                            0.0000000
 2222222222/02/0/           0.0003076  -0.0051265   0.0615779   0.0004454   0.0011480  -0.0609298  -0.0000028  -0.0000095
                            0.0000000
 2222222222/20//0           0.0000000  -0.0000000  -0.0000000   0.0000046  -0.0000013  -0.0000079   0.0594635   0.0334129
                            0.0526030
 22222222220/20//          -0.0000000  -0.0000000   0.0000000  -0.0000046  -0.0000036  -0.0000029  -0.0586683   0.0347904
                            0.0526030
 2222222222/02//0          -0.0000000  -0.0000000   0.0000000  -0.0000042  -0.0000040  -0.0000041  -0.0542609   0.0413289
                            0.0526030
 2222222222///\/0           0.0532333   0.0000407  -0.0002625  -0.0343514  -0.0000571  -0.0002522   0.0000027  -0.0000000
                           -0.0000000
 2222222222///\0/          -0.0000188   0.0530503   0.0044166   0.0000618  -0.0343463  -0.0006467   0.0000006  -0.0000026
                            0.0000000
 2222222222///0\/           0.0002650  -0.0044165   0.0530497   0.0002511   0.0006471  -0.0343454  -0.0000016  -0.0000054
                           -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 22222222222//000  30.2    -0.0000000   0.0000000  -0.0000000  -0.0000003   0.0000036   0.0000082  -0.0035512  -0.0510176
                            0.0405409
 22222222222//000  20.2    -0.0000000   0.0000000  -0.0000000  -0.0000003   0.0000036   0.0000082  -0.0035343  -0.0507811
                            0.0417155

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.952353   -0.000336    0.004740    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 2           0.000728    0.949081   -0.079012    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.004696    0.079014    0.949070   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.000074    0.951207   -0.001712   -0.006952    0.000001   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000020    0.001581    0.951064   -0.017919   -0.000068    0.000000
 6           0.000000   -0.000000   -0.000000   -0.000040    0.006983    0.017907    0.951040   -0.000151    0.000000
 7          -0.000000   -0.000000    0.000000    0.951081   -0.000074   -0.000018    0.000043    0.017011   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.017011    0.000001    0.000071    0.000149    0.951081    0.000000
 9          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.949674

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.952365    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.952365   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.952365   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.951234    0.000000    0.000000    0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.951234    0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.951234   -0.000000    0.000000    0.000000
 7          -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.951233    0.000000    0.000000
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.951233   -0.000000
 9          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.949674


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95235298 (fixed)   0.95245189 (relaxed)   0.95236484 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00024093   -0.00037258   -0.78380493
 Singles      0.02470732   -0.07779573   -0.09166647
 Pairs        0.07758905   -0.00000000   -0.06627161
 Total        1.10253731   -0.07816830   -0.94174301
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.32772005
 Nuclear energy                         0.00000000
 Kinetic energy                       111.63737834
 One electron energy                 -509.50841153
 Two electron energy                  214.23894847
 Virial quotient                       -2.64489786
 Correlation energy                    -0.94174301
 !MRCI STATE 1.2 Energy              -295.269463062658

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.36602685 (Davidson, fixed reference)
 Cluster corrected energies          -295.36583706 (Davidson, relaxed reference)
 Cluster corrected energies          -295.36602685 (Davidson, rotated reference)

 Cluster corrected energies          -295.36518843 (Pople, fixed reference)
 Cluster corrected energies          -295.36498351 (Pople, relaxed reference)
 Cluster corrected energies          -295.36518843 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.94908133 (fixed)   0.95245188 (relaxed)   0.95236483 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00024092   -0.00037258   -0.78380494
 Singles      0.02470732   -0.07779570   -0.09166646
 Pairs        0.07758909    0.00000000   -0.06627162
 Total        1.10253734   -0.07816827   -0.94174301
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.32772004
 Nuclear energy                         0.00000000
 Kinetic energy                       111.63737764
 One electron energy                 -509.50841294
 Two electron energy                  214.23894988
 Virial quotient                       -2.64489788
 Correlation energy                    -0.94174301
 !MRCI STATE 2.2 Energy              -295.269463057430

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.36602688 (Davidson, fixed reference)
 Cluster corrected energies          -295.36583708 (Davidson, relaxed reference)
 Cluster corrected energies          -295.36602688 (Davidson, rotated reference)

 Cluster corrected energies          -295.36518845 (Pople, fixed reference)
 Cluster corrected energies          -295.36498354 (Pople, relaxed reference)
 Cluster corrected energies          -295.36518845 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.94906980 (fixed)   0.95245191 (relaxed)   0.95236485 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00024093   -0.00037258   -0.78380494
 Singles      0.02470733   -0.07779574   -0.09166648
 Pairs        0.07758901    0.00000000   -0.06627159
 Total        1.10253727   -0.07816832   -0.94174302
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.32772004
 Nuclear energy                         0.00000000
 Kinetic energy                       111.63737870
 One electron energy                 -509.50841359
 Two electron energy                  214.23895054
 Virial quotient                       -2.64489785
 Correlation energy                    -0.94174302
 !MRCI STATE 3.2 Energy              -295.269463056714

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.36602682 (Davidson, fixed reference)
 Cluster corrected energies          -295.36583702 (Davidson, relaxed reference)
 Cluster corrected energies          -295.36602682 (Davidson, rotated reference)

 Cluster corrected energies          -295.36518839 (Pople, fixed reference)
 Cluster corrected energies          -295.36498347 (Pople, relaxed reference)
 Cluster corrected energies          -295.36518839 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95120714 (fixed)   0.95131042 (relaxed)   0.95123409 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023122   -0.00043025   -0.78371990
 Singles      0.02665327   -0.08065053   -0.09580721
 Pairs        0.07827557    0.00000000   -0.06704049
 Total        1.10516007   -0.08108078   -0.94656760
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30944773
 Nuclear energy                         0.00000000
 Kinetic energy                       111.64948425
 One electron energy                 -509.56092470
 Two electron energy                  214.30490938
 Virial quotient                       -2.64449063
 Correlation energy                    -0.94656760
 !MRCI STATE 4.2 Energy              -295.256015327743

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.35555644 (Davidson, fixed reference)
 Cluster corrected energies          -295.35538858 (Davidson, relaxed reference)
 Cluster corrected energies          -295.35555644 (Davidson, rotated reference)

 Cluster corrected energies          -295.35491806 (Pople, fixed reference)
 Cluster corrected energies          -295.35473599 (Pople, relaxed reference)
 Cluster corrected energies          -295.35491806 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95106398 (fixed)   0.95131042 (relaxed)   0.95123409 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023122   -0.00043025   -0.78371982
 Singles      0.02665331   -0.08065060   -0.09580725
 Pairs        0.07827555   -0.00000000   -0.06704052
 Total        1.10516008   -0.08108085   -0.94656759
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30944772
 Nuclear energy                         0.00000000
 Kinetic energy                       111.64948410
 One electron energy                 -509.56092382
 Two electron energy                  214.30490850
 Virial quotient                       -2.64449064
 Correlation energy                    -0.94656760
 !MRCI STATE 5.2 Energy              -295.256015321447

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.35555644 (Davidson, fixed reference)
 Cluster corrected energies          -295.35538858 (Davidson, relaxed reference)
 Cluster corrected energies          -295.35555644 (Davidson, rotated reference)

 Cluster corrected energies          -295.35491806 (Pople, fixed reference)
 Cluster corrected energies          -295.35473599 (Pople, relaxed reference)
 Cluster corrected energies          -295.35491806 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95103986 (fixed)   0.95131041 (relaxed)   0.95123408 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023122   -0.00043025   -0.78371982
 Singles      0.02665332   -0.08065060   -0.09580725
 Pairs        0.07827555   -0.00000000   -0.06704053
 Total        1.10516009   -0.08108086   -0.94656760
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30944772
 Nuclear energy                         0.00000000
 Kinetic energy                       111.64948400
 One electron energy                 -509.56092356
 Two electron energy                  214.30490824
 Virial quotient                       -2.64449064
 Correlation energy                    -0.94656760
 !MRCI STATE 6.2 Energy              -295.256015320531

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.35555646 (Davidson, fixed reference)
 Cluster corrected energies          -295.35538859 (Davidson, relaxed reference)
 Cluster corrected energies          -295.35555646 (Davidson, rotated reference)

 Cluster corrected energies          -295.35491807 (Pople, fixed reference)
 Cluster corrected energies          -295.35473601 (Pople, relaxed reference)
 Cluster corrected energies          -295.35491807 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95108132 (fixed)   0.95130977 (relaxed)   0.95123344 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023120   -0.00043014   -0.78371573
 Singles      0.02665306   -0.08065362   -0.09580657
 Pairs        0.07827734    0.00000001   -0.06704499
 Total        1.10516159   -0.08108376   -0.94656729
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30944773
 Nuclear energy                         0.00000000
 Kinetic energy                       111.64946117
 One electron energy                 -509.56092019
 Two electron energy                  214.30490517
 Virial quotient                       -2.64449118
 Correlation energy                    -0.94656728
 !MRCI STATE 7.2 Energy              -295.256015013829

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.35555754 (Davidson, fixed reference)
 Cluster corrected energies          -295.35538967 (Davidson, relaxed reference)
 Cluster corrected energies          -295.35555754 (Davidson, rotated reference)

 Cluster corrected energies          -295.35491927 (Pople, fixed reference)
 Cluster corrected energies          -295.35473721 (Pople, relaxed reference)
 Cluster corrected energies          -295.35491927 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.95108120 (fixed)   0.95130965 (relaxed)   0.95123332 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023119   -0.00043014   -0.78371518
 Singles      0.02665351   -0.08065407   -0.09580702
 Pairs        0.07827716    0.00000006   -0.06704510
 Total        1.10516186   -0.08108415   -0.94656729
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.30944772
 Nuclear energy                         0.00000000
 Kinetic energy                       111.64946540
 One electron energy                 -509.56091676
 Two electron energy                  214.30490175
 Virial quotient                       -2.64449108
 Correlation energy                    -0.94656729
 !MRCI STATE 8.2 Energy              -295.256015005052

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.35555779 (Davidson, fixed reference)
 Cluster corrected energies          -295.35538992 (Davidson, relaxed reference)
 Cluster corrected energies          -295.35555779 (Davidson, rotated reference)

 Cluster corrected energies          -295.35491954 (Pople, fixed reference)
 Cluster corrected energies          -295.35473748 (Pople, relaxed reference)
 Cluster corrected energies          -295.35491954 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.94967413 (fixed)   0.94976773 (relaxed)   0.94967413 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00026436   -0.00042945   -0.00061434
 Singles      0.02921044   -0.08308174   -0.10001292
 Pairs        0.07931899   -0.86865855   -0.85154249
 Total        1.10879380   -0.95216975   -0.95216975
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.28426562
 Nuclear energy                         0.00000000
 Kinetic energy                       111.66132605
 One electron energy                 -509.60551129
 Two electron energy                  214.36907592
 Virial quotient                       -2.64403483
 Correlation energy                    -0.95216975
 !MRCI STATE 9.2 Energy              -295.236435368276

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.34002553 (Davidson, fixed reference)
 Cluster corrected energies          -295.33981744 (Davidson, relaxed reference)
 Cluster corrected energies          -295.34002553 (Davidson, rotated reference)

 Cluster corrected energies          -295.33968838 (Pople, fixed reference)
 Cluster corrected energies          -295.33946128 (Pople, relaxed reference)
 Cluster corrected energies          -295.33968838 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     4759.87       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     32327.11  10185.40  22131.70      6.36      0.47      2.96
 REAL TIME  *     32891.56 SEC
 DISK USED  *         4.70 GB (local),       37.91 GB (total)
 SF USED    *        30.23 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -295.36602685  AU                              
 SETTING HLSDIAG(14)    =      -295.36602688  AU                              
 SETTING HLSDIAG(15)    =      -295.36602682  AU                              
 SETTING HLSDIAG(16)    =      -295.35555644  AU                              
 SETTING HLSDIAG(17)    =      -295.35555644  AU                              
 SETTING HLSDIAG(18)    =      -295.35555646  AU                              
 SETTING HLSDIAG(19)    =      -295.35555754  AU                              
 SETTING HLSDIAG(20)    =      -295.35555779  AU                              
 SETTING HLSDIAG(21)    =      -295.34002553  AU                              


         HLSDIAG
    -295.6947857
    -295.6947857
    -295.6947857
    -295.3476253
    -295.3476254
    -295.3476253
    -295.3509521
    -295.3509521
    -295.3509521
    -295.3509520
    -295.3509522
    -295.3428441
    -295.3660269
    -295.3660269
    -295.3660268
    -295.3555564
    -295.3555564
    -295.3555565
    -295.3555575
    -295.3555578
    -295.3400255
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -295.604280   -295.604280   -295.604280   -295.248104   -295.248104   -295.248104   -295.247508   -295.247508
                      -295.247508   -295.247508   -295.247508   -295.237460
 Replaced energies:   -295.694786   -295.694786   -295.694786   -295.347625   -295.347625   -295.347625   -295.350952   -295.350952
                      -295.350952   -295.350952   -295.350952   -295.342844

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -295.269463   -295.269463   -295.269463   -295.256015   -295.256015   -295.256015   -295.256015   -295.256015
                      -295.236435
 Replaced energies:   -295.366027   -295.366027   -295.366027   -295.355556   -295.355556   -295.355556   -295.355558   -295.355558
                      -295.340026



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -295.69478568

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -243.39    2361.22      30.18     -76.23      -4.00      99.14      60.64     -34.13    -362.70

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          243.39       0.00    -662.58      -0.98      23.90       4.87     399.41    -136.71      61.99      48.88

    3   3.2  0.5  0.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2361.22     662.58      -0.00     -72.68     -24.34     -36.30     -96.29    -355.02     -26.70     -86.35

    4   4.2  0.5  0.5       0.00       0.00       0.00   76192.89       0.00       0.00       0.00       0.00       0.00       0.00
                          -30.18       0.98      72.68      -0.00     732.54     161.79    -357.25      36.44    -121.27    -534.57

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   76192.88       0.00       0.00       0.00       0.00       0.00
                           76.23     -23.90      24.34    -732.54       0.00    -311.63      75.60     639.25       9.92     -27.77

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   76192.89       0.00       0.00       0.00       0.00
                            4.00      -4.87      36.30    -161.79     311.63      -0.00     615.44    -124.48      39.93    -344.72

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   75462.75       0.00       0.00       0.00
                          -99.14    -399.41      96.29     357.25     -75.60    -615.44       0.00     147.51    -287.59    -335.86

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75462.76       0.00       0.00
                          -60.64     136.71     355.02     -36.44    -639.25     124.48    -147.51       0.00     -62.88   -1029.96

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75462.76       0.00
                           34.13     -61.99      26.70     121.27      -9.92     -39.93     287.59      62.88      -0.00    -107.57

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75462.76
                          362.70     -48.88      86.35     534.57      27.77     344.72     335.86    1029.96     107.57      -0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -16.81     -48.79      -6.44      28.57      18.14     -81.27    -306.09     -19.04    2156.78    -285.68

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          201.92     719.59      74.17    -661.66    -343.51    1555.33      -0.00       0.00      -0.02       0.00

   13   1.2  0.5 -0.5       0.00    2371.84      57.36     -51.22     -16.59      61.91     -78.74     118.38     340.47     -38.96
                            0.00    -623.49    -703.54       6.21      27.03     -16.96    -173.68      55.40      67.40     -94.39

   14   2.2  0.5 -0.5   -2371.84       0.00    -666.85     -65.49       1.64     -54.48     132.69     342.65     -89.50       1.72
                          623.49      -0.00   -2278.14      -8.61      80.35      11.88      -0.60     -11.82     -39.45    -362.48

   15   3.2  0.5 -0.5     -57.36     666.85      -0.00     -15.98      -4.63      16.09     231.27     -52.81     122.74     -51.34
                          703.54    2278.14       0.00     -32.43      -8.09      75.37       5.35      17.11    -367.84      16.12

   16   4.2  0.5 -0.5      51.22      65.49      15.98      -0.00     136.00    -795.43    -117.77    -250.89     569.95     -75.33
                           -6.21       8.61      32.43      -0.00     323.72     -31.93    -206.24      88.32     -66.06     282.14

   17   5.2  0.5 -0.5      16.59      -1.64       4.63    -136.00       0.00     -93.27    -446.13      30.81     -27.88      65.90
                          -27.03     -80.35       8.09    -323.72       0.00     744.39     -81.30      -0.75     633.21      44.42

   18   6.2  0.5 -0.5     -61.91      54.48     -16.09     795.43      93.27       0.00      93.21     566.46     269.93     -43.58
                           16.96     -11.88     -75.37      31.93    -744.39       0.00    -193.44      47.30       6.60    -566.90

   19   7.2  0.5 -0.5      78.74    -132.69    -231.27     117.77     446.13     -93.21       0.00     -88.74    -159.31    1687.54
                          173.68       0.60      -5.35     206.24      81.30     193.44      -0.00    2000.81    -143.45    -102.90

   20   8.2  0.5 -0.5    -118.38    -342.65      52.81     250.89     -30.81    -566.46      88.74      -0.00   -1107.13    -466.02
                          -55.40      11.82     -17.11     -88.32       0.75     -47.30   -2000.81      -0.00    -226.64     288.14

   21   9.2  0.5 -0.5    -340.47      89.50    -122.74    -569.95      27.88    -269.93     159.31    1107.13       0.00     193.90
                          -67.40      39.45     367.84      66.06    -633.21      -6.60     143.45     226.64       0.00    1092.61

   22  10.2  0.5 -0.5      38.96      -1.72      51.34      75.33     -65.90      43.58   -1687.54     466.02    -193.90       0.00
                           94.39     362.48     -16.12    -282.14     -44.42     566.90     102.90    -288.14   -1092.61      -0.00

   23  11.2  0.5 -0.5     -94.33      -7.68     336.53      67.84    -579.74     -98.22     177.56     -24.06     199.52    1299.04
                          370.29    -117.72     101.12     624.99      28.04     265.98    -295.34    -818.10     -31.68      29.97

   24  12.2  0.5 -0.5     203.23      17.48    -722.83    -198.02    1688.86     288.76      -0.00      -0.00      -0.00      -0.01
                          694.27    -214.41     190.01    1580.46      67.80     687.32      -0.00      -0.00      -0.00      -0.00

   25   1.2  1.5  1.5    -271.94    -987.89    -100.35    -600.26    -308.21    1391.20    -107.02       0.18     773.04    -103.19
                            1.52       0.47      -4.99       1.05      -7.52      -1.79     368.27    -136.47      45.83     -43.83

   26   2.2  1.5  1.5     -80.93      24.18     -22.20     117.95       4.92      52.56    -554.10     134.78     -64.65      87.57
                         -299.40    -984.73     -17.29    -605.53    -180.11    1410.17      99.69       4.42    -779.14      34.49

   27   3.2  1.5  1.5     971.06    -294.58     265.87   -1419.24     -59.48    -625.33     240.42     799.22      30.53     -23.05
                          260.77     -57.39   -1017.61     129.10   -1546.08    -144.39     110.01     -10.63      59.02     825.15

   28   4.2  1.5  1.5    -277.81   -1018.42    -102.82      98.05      50.18    -225.88      56.25      -0.99    -399.61      53.26
                           -1.64       1.64       7.81       0.05      -1.81       0.10     688.41    -258.51      80.87    -102.92

   29   5.2  1.5  1.5      18.42      -7.51       4.92       4.29       0.32       1.44    -598.03     216.02     -72.55      84.86
                         -290.82   -1017.34     -85.13      97.01      45.67    -227.37     -54.26      -2.43     401.27     -46.89

   30   6.2  1.5  1.5   -1004.02     301.93    -275.04    -219.00      -9.00     -97.23     112.35     343.63      12.79     -11.39
                          288.15       6.07   -1045.27     -25.50     234.05      35.61     -40.30       3.06     -44.95    -353.52

   31   7.2  1.5  1.5     281.58      24.33   -1001.73     -26.33     224.72      38.43      47.28      -5.32      56.68     375.15
                          -80.47      24.87     -22.06     -18.60      -0.80      -8.12    -234.31    -645.64     -32.57      25.26

   32   8.2  1.5  1.5    -189.53     -16.25     673.51      17.85    -152.61     -26.12      70.54      -7.89      84.52     560.24
                        -1155.33     356.71    -316.36    -261.17     -11.15    -113.63      16.51      45.58       2.32      -1.85

   33   9.2  1.5  1.5     491.82      42.34   -1749.33      24.95    -213.35     -36.48      -0.19       0.03      -0.24      -1.69
                        -1679.49     518.60    -459.65     203.17       8.75      88.34      -0.22      -0.60      -0.04       0.03

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          322.02      27.58   -1143.92     204.40   -1747.97    -299.09    -107.93      10.52    -134.40    -894.93

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1119.11     345.64    -307.22    1641.42      69.09     713.53     247.26     933.42      35.85     -24.11

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -94.78      28.64     -19.86     135.63      14.45      60.94     994.84    -287.12     119.45    -142.12

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -333.53     -27.99    1178.18      32.91    -283.99     -48.76     -59.22       6.10     -70.11    -463.57

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1157.01    -357.43     318.77     253.68      10.44     110.18     140.53     392.24      19.47     -15.73

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           19.40      -6.79      14.63       5.02      -1.87       1.70      79.53     -23.14       7.57     -23.20

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -350.22   -1248.09    -128.77     107.21      55.72    -252.27      47.84       1.57    -341.18      45.52

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -170.84    -609.10     -62.75      52.39      27.17    -123.21     -97.87      -3.37     696.97     -92.91

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          564.59    2011.83     207.37      94.45      49.03    -222.18       0.17      -0.02      -0.37       0.03

   43   1.2  1.5 -0.5    -157.01    -570.36     -57.94    -346.56    -177.95     803.21     -61.79       0.10     446.31     -59.58
                           -0.88      -0.27       2.88      -0.61       4.34       1.03    -212.62      78.79     -26.46      25.31

   44   2.2  1.5 -0.5     -46.72      13.96     -12.82      68.10       2.84      30.34    -319.91      77.82     -37.32      50.56
                          172.86     568.54       9.98     349.61     103.99    -814.16     -57.56      -2.55     449.84     -19.91

   45   3.2  1.5 -0.5     560.64    -170.08     153.50    -819.40     -34.34    -361.03     138.81     461.43      17.63     -13.31
                         -150.56      33.13     587.52     -74.53     892.63      83.37     -63.51       6.14     -34.07    -476.40

   46   4.2  1.5 -0.5    -160.39    -587.99     -59.36      56.61      28.97    -130.41      32.48      -0.57    -230.71      30.75
                            0.95      -0.95      -4.51      -0.03       1.05      -0.06    -397.46     149.25     -46.69      59.42

   47   5.2  1.5 -0.5      10.64      -4.34       2.84       2.48       0.19       0.83    -345.28     124.72     -41.89      48.99
                          167.90     587.36      49.15     -56.01     -26.37     131.27      31.33       1.40    -231.67      27.07

   48   6.2  1.5 -0.5    -579.67     174.32    -158.80    -126.44      -5.19     -56.13      64.87     198.39       7.39      -6.58
                         -166.36      -3.51     603.49      14.72    -135.13     -20.56      23.27      -1.76      25.95     204.10

   49   7.2  1.5 -0.5     162.57      14.05    -578.35     -15.20     129.74      22.19      27.30      -3.07      32.72     216.59
                           46.46     -14.36      12.73      10.74       0.46       4.69     135.28     372.76      18.81     -14.58

   50   8.2  1.5 -0.5    -109.42      -9.38     388.85      10.31     -88.11     -15.08      40.73      -4.56      48.80     323.45
                          667.03    -205.95     182.65     150.79       6.44      65.61      -9.53     -26.32      -1.34       1.07

   51   9.2  1.5 -0.5     283.96      24.45   -1009.98      14.40    -123.18     -21.06      -0.11       0.02      -0.14      -0.98
                          969.66    -299.41     265.38    -117.30      -5.05     -51.00       0.12       0.35       0.02      -0.02

   52   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5       0.00       0.00       0.00   -2371.84     -57.36      51.22      16.59     -61.91      78.74    -118.38
                           16.81    -201.92      -0.00    -623.49    -703.54       6.21      27.03     -16.96    -173.68      55.40

    2   2.2  0.5  0.5       0.00       0.00    2371.84       0.00     666.85      65.49      -1.64      54.48    -132.69    -342.65
                           48.79    -719.59     623.49       0.00   -2278.14      -8.61      80.35      11.88      -0.60     -11.82

    3   3.2  0.5  0.5       0.00       0.00      57.36    -666.85      -0.00      15.98       4.63     -16.09    -231.27      52.81
                            6.44     -74.17     703.54    2278.14      -0.00     -32.43      -8.09      75.37       5.35      17.11

    4   4.2  0.5  0.5       0.00       0.00     -51.22     -65.49     -15.98      -0.00    -136.00     795.43     117.77     250.89
                          -28.57     661.66      -6.21       8.61      32.43       0.00     323.72     -31.93    -206.24      88.32

    5   5.2  0.5  0.5       0.00       0.00     -16.59       1.64      -4.63     136.00       0.00      93.27     446.13     -30.81
                          -18.14     343.51     -27.03     -80.35       8.09    -323.72      -0.00     744.39     -81.30      -0.75

    6   6.2  0.5  0.5       0.00       0.00      61.91     -54.48      16.09    -795.43     -93.27       0.00     -93.21    -566.46
                           81.27   -1555.33      16.96     -11.88     -75.37      31.93    -744.39      -0.00    -193.44      47.30

    7   7.2  0.5  0.5       0.00       0.00     -78.74     132.69     231.27    -117.77    -446.13      93.21       0.00      88.74
                          306.09       0.00     173.68       0.60      -5.35     206.24      81.30     193.44       0.00    2000.81

    8   8.2  0.5  0.5       0.00       0.00     118.38     342.65     -52.81    -250.89      30.81     566.46     -88.74      -0.00
                           19.04      -0.00     -55.40      11.82     -17.11     -88.32       0.75     -47.30   -2000.81       0.00

    9   9.2  0.5  0.5       0.00       0.00     340.47     -89.50     122.74     569.95     -27.88     269.93    -159.31   -1107.13
                        -2156.78       0.02     -67.40      39.45     367.84      66.06    -633.21      -6.60     143.45     226.64

   10  10.2  0.5  0.5       0.00       0.00     -38.96       1.72     -51.34     -75.33      65.90     -43.58    1687.54    -466.02
                          285.68      -0.00      94.39     362.48     -16.12    -282.14     -44.42     566.90     102.90    -288.14

   11  11.2  0.5  0.5   75462.74       0.00      94.33       7.68    -336.53     -67.84     579.74      98.22    -177.56      24.06
                            0.00      -0.00     370.29    -117.72     101.12     624.99      28.04     265.98    -295.34    -818.10

   12  12.2  0.5  0.5       0.00   77242.25    -203.23     -17.48     722.83     198.02   -1688.86    -288.76       0.00       0.00
                            0.00      -0.00     694.27    -214.41     190.01    1580.46      67.80     687.32      -0.00      -0.00

   13   1.2  0.5 -0.5      94.33    -203.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -370.29    -694.27       0.00     243.39   -2361.22     -30.18      76.23       4.00     -99.14     -60.64

   14   2.2  0.5 -0.5       7.68     -17.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          117.72     214.41    -243.39      -0.00     662.58       0.98     -23.90      -4.87    -399.41     136.71

   15   3.2  0.5 -0.5    -336.53     722.83       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00
                         -101.12    -190.01    2361.22    -662.58       0.00      72.68      24.34      36.30      96.29     355.02

   16   4.2  0.5 -0.5     -67.84     198.02       0.00       0.00       0.00   76192.89       0.00       0.00       0.00       0.00
                         -624.99   -1580.46      30.18      -0.98     -72.68       0.00    -732.54    -161.79     357.25     -36.44

   17   5.2  0.5 -0.5     579.74   -1688.86       0.00       0.00       0.00       0.00   76192.88       0.00       0.00       0.00
                          -28.04     -67.80     -76.23      23.90     -24.34     732.54      -0.00     311.63     -75.60    -639.25

   18   6.2  0.5 -0.5      98.22    -288.76       0.00       0.00       0.00       0.00       0.00   76192.89       0.00       0.00
                         -265.98    -687.32      -4.00       4.87     -36.30     161.79    -311.63       0.00    -615.44     124.48

   19   7.2  0.5 -0.5    -177.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75462.75       0.00
                          295.34       0.00      99.14     399.41     -96.29    -357.25      75.60     615.44      -0.00    -147.51

   20   8.2  0.5 -0.5      24.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75462.76
                          818.10       0.00      60.64    -136.71    -355.02      36.44     639.25    -124.48     147.51      -0.00

   21   9.2  0.5 -0.5    -199.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           31.68       0.00     -34.13      61.99     -26.70    -121.27       9.92      39.93    -287.59     -62.88

   22  10.2  0.5 -0.5   -1299.04       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -29.97       0.00    -362.70      48.88     -86.35    -534.57     -27.77    -344.72    -335.86   -1029.96

   23  11.2  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      16.81      48.79       6.44     -28.57     -18.14      81.27     306.09      19.04

   24  12.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -201.92    -719.59     -74.17     661.66     343.51   -1555.33       0.00      -0.00

   25   1.2  1.5  1.5      -0.51       0.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          817.91    1080.16      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5     701.03   -1076.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.52       0.85      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5      57.20     -89.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.15      -5.35      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5       1.10      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -344.53     -35.63      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5    -510.88      33.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.78      -0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5     -10.08       0.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.49      -0.31      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5      -3.28      -0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.97      -0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5      -4.98      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09       0.06      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5      -0.00      -0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00    -157.01    -570.36     -57.94    -346.56    -177.95     803.21     -61.79       0.10
                            8.19      -6.27       0.88       0.27      -2.88       0.61      -4.34      -1.03     212.62     -78.79

   35   2.2  1.5  0.5       0.00       0.00     -46.72      13.96     -12.82      68.10       2.84      30.34    -319.91      77.82
                           -7.54     103.88    -172.86    -568.54      -9.98    -349.61    -103.99     814.16      57.56       2.55

   36   3.2  1.5  0.5       0.00       0.00     560.64    -170.08     153.50    -819.40     -34.34    -361.03     138.81     461.43
                           74.51   -1247.22     150.56     -33.13    -587.52      74.53    -892.63     -83.37      63.51      -6.14

   37   4.2  1.5  0.5       0.00       0.00    -160.39    -587.99     -59.36      56.61      28.97    -130.41      32.48      -0.57
                           10.92      -0.26      -0.95       0.95       4.51       0.03      -1.05       0.06     397.46    -149.25

   38   5.2  1.5  0.5       0.00       0.00      10.64      -4.34       2.84       2.48       0.19       0.83    -345.28     124.72
                           17.19      -0.79    -167.90    -587.36     -49.15      56.01      26.37    -131.27     -31.33      -1.40

   39   6.2  1.5  0.5       0.00       0.00    -579.67     174.32    -158.80    -126.44      -5.19     -56.13      64.87     198.39
                         -941.09      40.78     166.36       3.51    -603.49     -14.72     135.13      20.56     -23.27       1.76

   40   7.2  1.5  0.5       0.00       0.00     162.57      14.05    -578.35     -15.20     129.74      22.19      27.30      -3.07
                            0.11      -0.01     -46.46      14.36     -12.73     -10.74      -0.46      -4.69    -135.28    -372.76

   41   8.2  1.5  0.5       0.00       0.00    -109.42      -9.38     388.85      10.31     -88.11     -15.08      40.73      -4.56
                           -0.42       0.01    -667.03     205.95    -182.65    -150.79      -6.44     -65.61       9.53      26.32

   42   9.2  1.5  0.5       0.00       0.00     283.96      24.45   -1009.98      14.40    -123.18     -21.06      -0.11       0.02
                           -0.01      -0.00    -969.66     299.41    -265.38     117.30       5.05      51.00      -0.12      -0.35

   43   1.2  1.5 -0.5      -0.29       0.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -472.22    -623.63     322.02      27.58   -1143.92     204.40   -1747.97    -299.09    -107.93      10.52

   44   2.2  1.5 -0.5     404.74    -621.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.88      -0.49   -1119.11     345.64    -307.22    1641.42      69.09     713.53     247.26     933.42

   45   3.2  1.5 -0.5      33.03     -51.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.44       3.09     -94.78      28.64     -19.86     135.63      14.45      60.94     994.84    -287.12

   46   4.2  1.5 -0.5       0.63      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          198.92      20.57    -333.53     -27.99    1178.18      32.91    -283.99     -48.76     -59.22       6.10

   47   5.2  1.5 -0.5    -294.96      19.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.45       0.02    1157.01    -357.43     318.77     253.68      10.44     110.18     140.53     392.24

   48   6.2  1.5 -0.5      -5.82       0.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.28       0.18      19.40      -6.79      14.63       5.02      -1.87       1.70      79.53     -23.14

   49   7.2  1.5 -0.5      -1.89      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.56       0.02    -350.22   -1248.09    -128.77     107.21      55.72    -252.27      47.84       1.57

   50   8.2  1.5 -0.5      -2.88      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05      -0.03    -170.84    -609.10     -62.75      52.39      27.17    -123.21     -97.87      -3.37

   51   9.2  1.5 -0.5      -0.00      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.02     564.59    2011.83     207.37      94.45      49.03    -222.18       0.17      -0.02

   52   1.2  1.5 -1.5       0.00       0.00    -271.94    -987.89    -100.35    -600.26    -308.21    1391.20    -107.02       0.18
                           -0.00      -0.00      -1.52      -0.47       4.99      -1.05       7.52       1.79    -368.27     136.47

   53   2.2  1.5 -1.5       0.00       0.00     -80.93      24.18     -22.20     117.95       4.92      52.56    -554.10     134.78
                           -0.00      -0.00     299.40     984.73      17.29     605.53     180.11   -1410.17     -99.69      -4.42

   54   3.2  1.5 -1.5       0.00       0.00     971.06    -294.58     265.87   -1419.24     -59.48    -625.33     240.42     799.22
                           -0.00      -0.00    -260.77      57.39    1017.61    -129.10    1546.08     144.39    -110.01      10.63

   55   4.2  1.5 -1.5       0.00       0.00    -277.81   -1018.42    -102.82      98.05      50.18    -225.88      56.25      -0.99
                           -0.00      -0.00       1.64      -1.64      -7.81      -0.05       1.81      -0.10    -688.41     258.51

   56   5.2  1.5 -1.5       0.00       0.00      18.42      -7.51       4.92       4.29       0.32       1.44    -598.03     216.02
                           -0.00      -0.00     290.82    1017.34      85.13     -97.01     -45.67     227.37      54.26       2.43

   57   6.2  1.5 -1.5       0.00       0.00   -1004.02     301.93    -275.04    -219.00      -9.00     -97.23     112.35     343.63
                           -0.00      -0.00    -288.15      -6.07    1045.27      25.50    -234.05     -35.61      40.30      -3.06

   58   7.2  1.5 -1.5       0.00       0.00     281.58      24.33   -1001.73     -26.33     224.72      38.43      47.28      -5.32
                           -0.00      -0.00      80.47     -24.87      22.06      18.60       0.80       8.12     234.31     645.64

   59   8.2  1.5 -1.5       0.00       0.00    -189.53     -16.25     673.51      17.85    -152.61     -26.12      70.54      -7.89
                           -0.00      -0.00    1155.33    -356.71     316.36     261.17      11.15     113.63     -16.51     -45.58

   60   9.2  1.5 -1.5       0.00       0.00     491.82      42.34   -1749.33      24.95    -213.35     -36.48      -0.19       0.03
                           -0.00      -0.00    1679.49    -518.60     459.65    -203.17      -8.75     -88.34       0.22       0.60


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5    -340.47      38.96     -94.33     203.23    -271.94     -80.93     971.06    -277.81      18.42   -1004.02
                           67.40     -94.39    -370.29    -694.27      -1.52     299.40    -260.77       1.64     290.82    -288.15

    2   2.2  0.5  0.5      89.50      -1.72      -7.68      17.48    -987.89      24.18    -294.58   -1018.42      -7.51     301.93
                          -39.45    -362.48     117.72     214.41      -0.47     984.73      57.39      -1.64    1017.34      -6.07

    3   3.2  0.5  0.5    -122.74      51.34     336.53    -722.83    -100.35     -22.20     265.87    -102.82       4.92    -275.04
                         -367.84      16.12    -101.12    -190.01       4.99      17.29    1017.61      -7.81      85.13    1045.27

    4   4.2  0.5  0.5    -569.95      75.33      67.84    -198.02    -600.26     117.95   -1419.24      98.05       4.29    -219.00
                          -66.06     282.14    -624.99   -1580.46      -1.05     605.53    -129.10      -0.05     -97.01      25.50

    5   5.2  0.5  0.5      27.88     -65.90    -579.74    1688.86    -308.21       4.92     -59.48      50.18       0.32      -9.00
                          633.21      44.42     -28.04     -67.80       7.52     180.11    1546.08       1.81     -45.67    -234.05

    6   6.2  0.5  0.5    -269.93      43.58     -98.22     288.76    1391.20      52.56    -625.33    -225.88       1.44     -97.23
                            6.60    -566.90    -265.98    -687.32       1.79   -1410.17     144.39      -0.10     227.37     -35.61

    7   7.2  0.5  0.5     159.31   -1687.54     177.56      -0.00    -107.02    -554.10     240.42      56.25    -598.03     112.35
                         -143.45    -102.90     295.34       0.00    -368.27     -99.69    -110.01    -688.41      54.26      40.30

    8   8.2  0.5  0.5    1107.13     466.02     -24.06      -0.00       0.18     134.78     799.22      -0.99     216.02     343.63
                         -226.64     288.14     818.10       0.00     136.47      -4.42      10.63     258.51       2.43      -3.06

    9   9.2  0.5  0.5       0.00    -193.90     199.52      -0.00     773.04     -64.65      30.53    -399.61     -72.55      12.79
                           -0.00    1092.61      31.68       0.00     -45.83     779.14     -59.02     -80.87    -401.27      44.95

   10  10.2  0.5  0.5     193.90       0.00    1299.04      -0.01    -103.19      87.57     -23.05      53.26      84.86     -11.39
                        -1092.61       0.00     -29.97       0.00      43.83     -34.49    -825.15     102.92      46.89     353.52

   11  11.2  0.5  0.5    -199.52   -1299.04       0.00       0.00      -0.51     701.03      57.20       1.10    -510.88     -10.08
                          -31.68      29.97       0.00       0.00    -817.91      -1.52      11.15     344.53       0.78      -0.49

   12  12.2  0.5  0.5       0.00       0.01      -0.00       0.00       0.41   -1076.13     -89.62      -0.02      33.30       0.61
                           -0.00      -0.00      -0.00       0.00   -1080.16      -0.85       5.35      35.63       0.03       0.31

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           34.13     362.70     -16.81     201.92       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -61.99     -48.88     -48.79     719.59       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           26.70      86.35      -6.44      74.17       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          121.27     534.57      28.57    -661.66       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.92      27.77      18.14    -343.51       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -39.93     344.72     -81.27    1555.33       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          287.59     335.86    -306.09      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           62.88    1029.96     -19.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   75462.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     107.57    2156.78      -0.02       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   75462.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -107.57       0.00    -285.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   75462.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2156.78     285.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   77242.25       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   72154.22       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    -979.31     -81.53       2.50   -1723.90     -32.46

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   72154.22       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     979.31       0.00      -4.89    1718.23       1.54      12.61

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   72154.23       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      81.53       4.89       0.00     143.17       8.71       0.99

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74452.21       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -2.50   -1718.23    -143.17      -0.00    -966.58     -18.28

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74452.21       0.00
                           -0.00      -0.00      -0.00      -0.00    1723.90      -1.54      -8.71     966.58      -0.00       6.92

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74452.21
                           -0.00      -0.00      -0.00      -0.00      32.46     -12.61      -0.99      18.28      -6.92      -0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -8.94     148.57   -1782.97       6.18      16.05    -847.99

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -4.22      72.45    -870.32     -12.63     -32.73    1737.23

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      14.13    -235.50    2828.73       0.00       0.00      -0.00

   34   1.2  1.5  0.5     446.31     -59.58      -0.29       0.24       0.00     -47.07     565.41      -2.32     -18.74     995.31
                           26.46     -25.31     472.22     623.63       0.00       2.80       0.43       0.01      -4.87      -0.26

   35   2.2  1.5  0.5     -37.32      50.56     404.74    -621.31      47.07      -0.00       0.20     -82.67      -0.22       0.10
                         -449.84      19.91       0.88       0.49      -2.80      -0.00    -567.36      -7.40      63.89     993.41

   36   3.2  1.5  0.5      17.63     -13.31      33.03     -51.74    -565.41      -0.20       0.00     992.05       1.74       2.37
                           34.07     476.40      -6.44      -3.09      -0.43     567.36      -0.00       1.18    -993.42      63.90

   37   4.2  1.5  0.5    -230.71      30.75       0.63      -0.01       2.32      82.67    -992.05       0.00      10.56    -558.07
                           46.69     -59.42    -198.92     -20.57      -0.01       7.40      -1.18       0.00      -4.12       0.97

   38   5.2  1.5  0.5     -41.89      48.99    -294.96      19.23      18.74       0.22      -1.74     -10.56       0.00      -0.83
                          231.67     -27.07      -0.45      -0.02       4.87     -63.89     993.42       4.12       0.00    -558.15

   39   6.2  1.5  0.5       7.39      -6.58      -5.82       0.35    -995.31      -0.10      -2.37     558.07       0.83      -0.00
                          -25.95    -204.10       0.28      -0.18       0.26    -993.41     -63.90      -0.97     558.15      -0.00

   40   7.2  1.5  0.5      32.72     216.59      -1.89      -0.03      -0.38     949.87      79.16      -1.10     623.84      11.79
                          -18.81      14.58       0.56      -0.02      79.82       0.02      -0.42    1113.60       1.88       8.19

   41   8.2  1.5  0.5      48.80     323.45      -2.88      -0.01       0.07    -640.26     -53.30      -1.58     925.51      17.43
                            1.34      -1.07      -0.05       0.03    1146.68       0.71      -5.59     -77.51      -0.04      -0.61

   42   9.2  1.5  0.5      -0.14      -0.98      -0.00      -0.04      -0.58    1633.19     135.97       0.00      -0.00      -0.00
                           -0.02       0.02      -0.01      -0.02    1638.82       1.25      -8.08      -0.00      -0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -134.40    -894.93       8.19      -6.27      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           35.85     -24.11      -7.54     103.88      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          119.45    -142.12      74.51   -1247.22      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -70.11    -463.57      10.92      -0.26      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           19.47     -15.73      17.19      -0.79      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.57     -23.20    -941.09      40.78      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -341.18      45.52       0.11      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          696.97     -92.91      -0.42       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.37       0.03      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5     773.04    -103.19      -0.51       0.41       0.00       0.00       0.00       0.00       0.00       0.00
                          -45.83      43.83    -817.91   -1080.16      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5     -64.65      87.57     701.03   -1076.13       0.00       0.00       0.00       0.00       0.00       0.00
                          779.14     -34.49      -1.52      -0.85      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5      30.53     -23.05      57.20     -89.62       0.00       0.00       0.00       0.00       0.00       0.00
                          -59.02    -825.15      11.15       5.35      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5    -399.61      53.26       1.10      -0.02       0.00       0.00       0.00       0.00       0.00       0.00
                          -80.87     102.92     344.53      35.63      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5     -72.55      84.86    -510.88      33.30       0.00       0.00       0.00       0.00       0.00       0.00
                         -401.27      46.89       0.78       0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5      12.79     -11.39     -10.08       0.61       0.00       0.00       0.00       0.00       0.00       0.00
                           44.95     353.52      -0.49       0.31      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5      56.68     375.15      -3.28      -0.06       0.00       0.00       0.00       0.00       0.00       0.00
                           32.57     -25.26      -0.97       0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5      84.52     560.24      -4.98      -0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.32       1.85       0.09      -0.06      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5      -0.24      -1.69      -0.00      -0.07       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04      -0.03       0.01       0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5     281.58    -189.53     491.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           80.47    1155.33    1679.49    -322.02    1119.11      94.78     333.53   -1157.01     -19.40     350.22

    2   2.2  0.5  0.5      24.33     -16.25      42.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -24.87    -356.71    -518.60     -27.58    -345.64     -28.64      27.99     357.43       6.79    1248.09

    3   3.2  0.5  0.5   -1001.73     673.51   -1749.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           22.06     316.36     459.65    1143.92     307.22      19.86   -1178.18    -318.77     -14.63     128.77

    4   4.2  0.5  0.5     -26.33      17.85      24.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           18.60     261.17    -203.17    -204.40   -1641.42    -135.63     -32.91    -253.68      -5.02    -107.21

    5   5.2  0.5  0.5     224.72    -152.61    -213.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.80      11.15      -8.75    1747.97     -69.09     -14.45     283.99     -10.44       1.87     -55.72

    6   6.2  0.5  0.5      38.43     -26.12     -36.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.12     113.63     -88.34     299.09    -713.53     -60.94      48.76    -110.18      -1.70     252.27

    7   7.2  0.5  0.5      47.28      70.54      -0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          234.31     -16.51       0.22     107.93    -247.26    -994.84      59.22    -140.53     -79.53     -47.84

    8   8.2  0.5  0.5      -5.32      -7.89       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          645.64     -45.58       0.60     -10.52    -933.42     287.12      -6.10    -392.24      23.14      -1.57

    9   9.2  0.5  0.5      56.68      84.52      -0.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           32.57      -2.32       0.04     134.40     -35.85    -119.45      70.11     -19.47      -7.57     341.18

   10  10.2  0.5  0.5     375.15     560.24      -1.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.26       1.85      -0.03     894.93      24.11     142.12     463.57      15.73      23.20     -45.52

   11  11.2  0.5  0.5      -3.28      -4.98      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.97       0.09       0.01      -8.19       7.54     -74.51     -10.92     -17.19     941.09      -0.11

   12  12.2  0.5  0.5      -0.06      -0.02      -0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.06       0.03       6.27    -103.88    1247.22       0.26       0.79     -40.78       0.01

   13   1.2  0.5 -0.5       0.00       0.00       0.00    -157.01     -46.72     560.64    -160.39      10.64    -579.67     162.57
                            0.00       0.00       0.00      -0.88     172.86    -150.56       0.95     167.90    -166.36      46.46

   14   2.2  0.5 -0.5       0.00       0.00       0.00    -570.36      13.96    -170.08    -587.99      -4.34     174.32      14.05
                            0.00       0.00       0.00      -0.27     568.54      33.13      -0.95     587.36      -3.51     -14.36

   15   3.2  0.5 -0.5       0.00       0.00       0.00     -57.94     -12.82     153.50     -59.36       2.84    -158.80    -578.35
                            0.00       0.00       0.00       2.88       9.98     587.52      -4.51      49.15     603.49      12.73

   16   4.2  0.5 -0.5       0.00       0.00       0.00    -346.56      68.10    -819.40      56.61       2.48    -126.44     -15.20
                            0.00       0.00       0.00      -0.61     349.61     -74.53      -0.03     -56.01      14.72      10.74

   17   5.2  0.5 -0.5       0.00       0.00       0.00    -177.95       2.84     -34.34      28.97       0.19      -5.19     129.74
                            0.00       0.00       0.00       4.34     103.99     892.63       1.05     -26.37    -135.13       0.46

   18   6.2  0.5 -0.5       0.00       0.00       0.00     803.21      30.34    -361.03    -130.41       0.83     -56.13      22.19
                            0.00       0.00       0.00       1.03    -814.16      83.37      -0.06     131.27     -20.56       4.69

   19   7.2  0.5 -0.5       0.00       0.00       0.00     -61.79    -319.91     138.81      32.48    -345.28      64.87      27.30
                            0.00       0.00       0.00    -212.62     -57.56     -63.51    -397.46      31.33      23.27     135.28

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.10      77.82     461.43      -0.57     124.72     198.39      -3.07
                            0.00       0.00       0.00      78.79      -2.55       6.14     149.25       1.40      -1.76     372.76

   21   9.2  0.5 -0.5       0.00       0.00       0.00     446.31     -37.32      17.63    -230.71     -41.89       7.39      32.72
                            0.00       0.00       0.00     -26.46     449.84     -34.07     -46.69    -231.67      25.95      18.81

   22  10.2  0.5 -0.5       0.00       0.00       0.00     -59.58      50.56     -13.31      30.75      48.99      -6.58     216.59
                            0.00       0.00       0.00      25.31     -19.91    -476.40      59.42      27.07     204.10     -14.58

   23  11.2  0.5 -0.5       0.00       0.00       0.00      -0.29     404.74      33.03       0.63    -294.96      -5.82      -1.89
                            0.00       0.00       0.00    -472.22      -0.88       6.44     198.92       0.45      -0.28      -0.56

   24  12.2  0.5 -0.5       0.00       0.00       0.00       0.24    -621.31     -51.74      -0.01      19.23       0.35      -0.03
                            0.00       0.00       0.00    -623.63      -0.49       3.09      20.57       0.02       0.18       0.02

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00      47.07    -565.41       2.32      18.74    -995.31      -0.38
                            8.94       4.22     -14.13      -0.00       2.80       0.43       0.01      -4.87      -0.26     -79.82

   26   2.2  1.5  1.5       0.00       0.00       0.00     -47.07      -0.00      -0.20      82.67       0.22      -0.10     949.87
                         -148.57     -72.45     235.50      -2.80       0.00    -567.36      -7.40      63.89     993.41      -0.02

   27   3.2  1.5  1.5       0.00       0.00       0.00     565.41       0.20       0.00    -992.05      -1.74      -2.37      79.16
                         1782.97     870.32   -2828.73      -0.43     567.36       0.00       1.18    -993.42      63.90       0.42

   28   4.2  1.5  1.5       0.00       0.00       0.00      -2.32     -82.67     992.05       0.00     -10.56     558.07      -1.10
                           -6.18      12.63      -0.00      -0.01       7.40      -1.18      -0.00      -4.12       0.97   -1113.60

   29   5.2  1.5  1.5       0.00       0.00       0.00     -18.74      -0.22       1.74      10.56       0.00       0.83     623.84
                          -16.05      32.73      -0.00       4.87     -63.89     993.42       4.12      -0.00    -558.15      -1.88

   30   6.2  1.5  1.5       0.00       0.00       0.00     995.31       0.10       2.37    -558.07      -0.83      -0.00      11.79
                          847.99   -1737.23       0.00       0.26    -993.41     -63.90      -0.97     558.15       0.00      -8.19

   31   7.2  1.5  1.5   74451.97       0.00       0.00       0.38    -949.87     -79.16       1.10    -623.84     -11.79      -0.00
                           -0.00      -0.21      -0.00      79.82       0.02      -0.42    1113.60       1.88       8.19      -0.00

   32   8.2  1.5  1.5       0.00   74451.92       0.00      -0.07     640.26      53.30       1.58    -925.51     -17.43       0.06
                            0.21       0.00      -0.00    1146.68       0.71      -5.59     -77.51      -0.04      -0.61       0.00

   33   9.2  1.5  1.5       0.00       0.00   77860.85       0.58   -1633.19    -135.97      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    1638.82       1.25      -8.08      -0.00      -0.00       0.00      -0.00

   34   1.2  1.5  0.5       0.38      -0.07       0.58   72154.22       0.00       0.00       0.00       0.00       0.00       0.00
                          -79.82   -1146.68   -1638.82       0.00    -326.44     -27.18       0.83    -574.63     -10.82       2.98

   35   2.2  1.5  0.5    -949.87     640.26   -1633.19       0.00   72154.22       0.00       0.00       0.00       0.00       0.00
                           -0.02      -0.71      -1.25     326.44       0.00      -1.63     572.74       0.51       4.20     -49.52

   36   3.2  1.5  0.5     -79.16      53.30    -135.97       0.00       0.00   72154.23       0.00       0.00       0.00       0.00
                            0.42       5.59       8.08      27.18       1.63       0.00      47.72       2.90       0.33     594.32

   37   4.2  1.5  0.5       1.10       1.58      -0.00       0.00       0.00       0.00   74452.21       0.00       0.00       0.00
                        -1113.60      77.51       0.00      -0.83    -572.74     -47.72      -0.00    -322.19      -6.09      -2.06

   38   5.2  1.5  0.5    -623.84    -925.51       0.00       0.00       0.00       0.00       0.00   74452.21       0.00       0.00
                           -1.88       0.04       0.00     574.63      -0.51      -2.90     322.19      -0.00       2.31      -5.35

   39   6.2  1.5  0.5     -11.79     -17.43       0.00       0.00       0.00       0.00       0.00       0.00   74452.21       0.00
                           -8.19       0.61      -0.00      10.82      -4.20      -0.33       6.09      -2.31      -0.00     282.66

   40   7.2  1.5  0.5      -0.00       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74451.97
                            0.00      -0.00       0.00      -2.98      49.52    -594.32       2.06       5.35    -282.66      -0.00

   41   8.2  1.5  0.5      -0.06       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -1.41      24.15    -290.11      -4.21     -10.91     579.08       0.07

   42   9.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       4.71     -78.50     942.91       0.00       0.00      -0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00     -54.35     652.88      -2.68     -21.64    1149.28       0.44
                           -0.00      -0.00      -0.00       0.00       3.23       0.50       0.01      -5.62      -0.30     -92.16

   44   2.2  1.5 -0.5       0.00       0.00       0.00      54.35      -0.00       0.23     -95.46      -0.25       0.11   -1096.82
                           -0.00      -0.00      -0.00      -3.23      -0.00    -655.13      -8.54      73.77    1147.09      -0.02

   45   3.2  1.5 -0.5       0.00       0.00       0.00    -652.88      -0.23       0.00    1145.52       2.00       2.74     -91.40
                           -0.00      -0.00      -0.00      -0.50     655.13      -0.00       1.36   -1147.10      73.78       0.48

   46   4.2  1.5 -0.5       0.00       0.00       0.00       2.68      95.46   -1145.52       0.00      12.19    -644.40       1.27
                           -0.00      -0.00      -0.00      -0.01       8.54      -1.36       0.00      -4.76       1.12   -1285.88

   47   5.2  1.5 -0.5       0.00       0.00       0.00      21.64       0.25      -2.00     -12.19       0.00      -0.96    -720.34
                           -0.00      -0.00      -0.00       5.62     -73.77    1147.10       4.76       0.00    -644.50      -2.17

   48   6.2  1.5 -0.5       0.00       0.00       0.00   -1149.28      -0.11      -2.74     644.40       0.96      -0.00     -13.61
                           -0.00      -0.00      -0.00       0.30   -1147.09     -73.78      -1.12     644.50      -0.00      -9.45

   49   7.2  1.5 -0.5       0.00       0.00       0.00      -0.44    1096.82      91.40      -1.27     720.34      13.61      -0.00
                           -0.00      -0.00      -0.00      92.16       0.02      -0.48    1285.88       2.17       9.45       0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.08    -739.31     -61.55      -1.82    1068.69      20.12      -0.07
                           -0.00      -0.00      -0.00    1324.08       0.83      -6.46     -89.51      -0.05      -0.70       0.01

   51   9.2  1.5 -0.5       0.00       0.00       0.00      -0.67    1885.85     157.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00    1892.34       1.45      -9.33      -0.00      -0.00       0.00      -0.00

   52   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.2  0.5  0.5       0.00       0.00    -157.01     -46.72     560.64    -160.39      10.64    -579.67     162.57    -109.42
                          170.84    -564.59       0.88    -172.86     150.56      -0.95    -167.90     166.36     -46.46    -667.03

    2   2.2  0.5  0.5       0.00       0.00    -570.36      13.96    -170.08    -587.99      -4.34     174.32      14.05      -9.38
                          609.10   -2011.83       0.27    -568.54     -33.13       0.95    -587.36       3.51      14.36     205.95

    3   3.2  0.5  0.5       0.00       0.00     -57.94     -12.82     153.50     -59.36       2.84    -158.80    -578.35     388.85
                           62.75    -207.37      -2.88      -9.98    -587.52       4.51     -49.15    -603.49     -12.73    -182.65

    4   4.2  0.5  0.5       0.00       0.00    -346.56      68.10    -819.40      56.61       2.48    -126.44     -15.20      10.31
                          -52.39     -94.45       0.61    -349.61      74.53       0.03      56.01     -14.72     -10.74    -150.79

    5   5.2  0.5  0.5       0.00       0.00    -177.95       2.84     -34.34      28.97       0.19      -5.19     129.74     -88.11
                          -27.17     -49.03      -4.34    -103.99    -892.63      -1.05      26.37     135.13      -0.46      -6.44

    6   6.2  0.5  0.5       0.00       0.00     803.21      30.34    -361.03    -130.41       0.83     -56.13      22.19     -15.08
                          123.21     222.18      -1.03     814.16     -83.37       0.06    -131.27      20.56      -4.69     -65.61

    7   7.2  0.5  0.5       0.00       0.00     -61.79    -319.91     138.81      32.48    -345.28      64.87      27.30      40.73
                           97.87      -0.17     212.62      57.56      63.51     397.46     -31.33     -23.27    -135.28       9.53

    8   8.2  0.5  0.5       0.00       0.00       0.10      77.82     461.43      -0.57     124.72     198.39      -3.07      -4.56
                            3.37       0.02     -78.79       2.55      -6.14    -149.25      -1.40       1.76    -372.76      26.32

    9   9.2  0.5  0.5       0.00       0.00     446.31     -37.32      17.63    -230.71     -41.89       7.39      32.72      48.80
                         -696.97       0.37      26.46    -449.84      34.07      46.69     231.67     -25.95     -18.81       1.34

   10  10.2  0.5  0.5       0.00       0.00     -59.58      50.56     -13.31      30.75      48.99      -6.58     216.59     323.45
                           92.91      -0.03     -25.31      19.91     476.40     -59.42     -27.07    -204.10      14.58      -1.07

   11  11.2  0.5  0.5       0.00       0.00      -0.29     404.74      33.03       0.63    -294.96      -5.82      -1.89      -2.88
                            0.42       0.01     472.22       0.88      -6.44    -198.92      -0.45       0.28       0.56      -0.05

   12  12.2  0.5  0.5       0.00       0.00       0.24    -621.31     -51.74      -0.01      19.23       0.35      -0.03      -0.01
                           -0.01       0.00     623.63       0.49      -3.09     -20.57      -0.02      -0.18      -0.02       0.03

   13   1.2  0.5 -0.5    -109.42     283.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          667.03     969.66    -322.02    1119.11      94.78     333.53   -1157.01     -19.40     350.22     170.84

   14   2.2  0.5 -0.5      -9.38      24.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -205.95    -299.41     -27.58    -345.64     -28.64      27.99     357.43       6.79    1248.09     609.10

   15   3.2  0.5 -0.5     388.85   -1009.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          182.65     265.38    1143.92     307.22      19.86   -1178.18    -318.77     -14.63     128.77      62.75

   16   4.2  0.5 -0.5      10.31      14.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          150.79    -117.30    -204.40   -1641.42    -135.63     -32.91    -253.68      -5.02    -107.21     -52.39

   17   5.2  0.5 -0.5     -88.11    -123.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.44      -5.05    1747.97     -69.09     -14.45     283.99     -10.44       1.87     -55.72     -27.17

   18   6.2  0.5 -0.5     -15.08     -21.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           65.61     -51.00     299.09    -713.53     -60.94      48.76    -110.18      -1.70     252.27     123.21

   19   7.2  0.5 -0.5      40.73      -0.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.53       0.12     107.93    -247.26    -994.84      59.22    -140.53     -79.53     -47.84      97.87

   20   8.2  0.5 -0.5      -4.56       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -26.32       0.35     -10.52    -933.42     287.12      -6.10    -392.24      23.14      -1.57       3.37

   21   9.2  0.5 -0.5      48.80      -0.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.34       0.02     134.40     -35.85    -119.45      70.11     -19.47      -7.57     341.18    -696.97

   22  10.2  0.5 -0.5     323.45      -0.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.07      -0.02     894.93      24.11     142.12     463.57      15.73      23.20     -45.52      92.91

   23  11.2  0.5 -0.5      -2.88      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05       0.01      -8.19       7.54     -74.51     -10.92     -17.19     941.09      -0.11       0.42

   24  12.2  0.5 -0.5      -0.01      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.02       6.27    -103.88    1247.22       0.26       0.79     -40.78       0.01      -0.01

   25   1.2  1.5  1.5       0.07      -0.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1146.68   -1638.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5    -640.26    1633.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.71      -1.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5     -53.30     135.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.59       8.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5      -1.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           77.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5     925.51      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5      17.43      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.61      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5      -0.06      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00       0.00      54.35    -652.88       2.68      21.64   -1149.28      -0.44       0.08
                            1.41      -4.71      -0.00       3.23       0.50       0.01      -5.62      -0.30     -92.16   -1324.08

   35   2.2  1.5  0.5       0.00       0.00     -54.35      -0.00      -0.23      95.46       0.25      -0.11    1096.82    -739.31
                          -24.15      78.50      -3.23       0.00    -655.13      -8.54      73.77    1147.09      -0.02      -0.83

   36   3.2  1.5  0.5       0.00       0.00     652.88       0.23       0.00   -1145.52      -2.00      -2.74      91.40     -61.55
                          290.11    -942.91      -0.50     655.13       0.00       1.36   -1147.10      73.78       0.48       6.46

   37   4.2  1.5  0.5       0.00       0.00      -2.68     -95.46    1145.52       0.00     -12.19     644.40      -1.27      -1.82
                            4.21      -0.00      -0.01       8.54      -1.36      -0.00      -4.76       1.12   -1285.88      89.51

   38   5.2  1.5  0.5       0.00       0.00     -21.64      -0.25       2.00      12.19       0.00       0.96     720.34    1068.69
                           10.91      -0.00       5.62     -73.77    1147.10       4.76      -0.00    -644.50      -2.17       0.05

   39   6.2  1.5  0.5       0.00       0.00    1149.28       0.11       2.74    -644.40      -0.96      -0.00      13.61      20.12
                         -579.08       0.00       0.30   -1147.09     -73.78      -1.12     644.50       0.00      -9.45       0.70

   40   7.2  1.5  0.5       0.00       0.00       0.44   -1096.82     -91.40       1.27    -720.34     -13.61      -0.00      -0.07
                           -0.07      -0.00      92.16       0.02      -0.48    1285.88       2.17       9.45      -0.00      -0.01

   41   8.2  1.5  0.5   74451.92       0.00      -0.08     739.31      61.55       1.82   -1068.69     -20.12       0.07       0.00
                            0.00      -0.00    1324.08       0.83      -6.46     -89.51      -0.05      -0.70       0.01      -0.00

   42   9.2  1.5  0.5       0.00   77860.85       0.67   -1885.85    -157.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00    1892.34       1.45      -9.33      -0.00      -0.00       0.00      -0.00      -0.00

   43   1.2  1.5 -0.5      -0.08       0.67   72154.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1324.08   -1892.34      -0.00     326.44      27.18      -0.83     574.63      10.82      -2.98      -1.41

   44   2.2  1.5 -0.5     739.31   -1885.85       0.00   72154.22       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.83      -1.45    -326.44      -0.00       1.63    -572.74      -0.51      -4.20      49.52      24.15

   45   3.2  1.5 -0.5      61.55    -157.00       0.00       0.00   72154.23       0.00       0.00       0.00       0.00       0.00
                            6.46       9.33     -27.18      -1.63      -0.00     -47.72      -2.90      -0.33    -594.32    -290.11

   46   4.2  1.5 -0.5       1.82      -0.00       0.00       0.00       0.00   74452.21       0.00       0.00       0.00       0.00
                           89.51       0.00       0.83     572.74      47.72       0.00     322.19       6.09       2.06      -4.21

   47   5.2  1.5 -0.5   -1068.69       0.00       0.00       0.00       0.00       0.00   74452.21       0.00       0.00       0.00
                            0.05       0.00    -574.63       0.51       2.90    -322.19       0.00      -2.31       5.35     -10.91

   48   6.2  1.5 -0.5     -20.12       0.00       0.00       0.00       0.00       0.00       0.00   74452.21       0.00       0.00
                            0.70      -0.00     -10.82       4.20       0.33      -6.09       2.31       0.00    -282.66     579.08

   49   7.2  1.5 -0.5       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74451.97       0.00
                           -0.01       0.00       2.98     -49.52     594.32      -2.06      -5.35     282.66       0.00       0.07

   50   8.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74451.92
                            0.00       0.00       1.41     -24.15     290.11       4.21      10.91    -579.08      -0.07      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -4.71      78.50    -942.91      -0.00      -0.00       0.00      -0.00      -0.00

   52   1.2  1.5 -1.5       0.00       0.00       0.00     -47.07     565.41      -2.32     -18.74     995.31       0.38      -0.07
                           -0.00      -0.00       0.00       2.80       0.43       0.01      -4.87      -0.26     -79.82   -1146.68

   53   2.2  1.5 -1.5       0.00       0.00      47.07      -0.00       0.20     -82.67      -0.22       0.10    -949.87     640.26
                           -0.00      -0.00      -2.80      -0.00    -567.36      -7.40      63.89     993.41      -0.02      -0.71

   54   3.2  1.5 -1.5       0.00       0.00    -565.41      -0.20       0.00     992.05       1.74       2.37     -79.16      53.30
                           -0.00      -0.00      -0.43     567.36      -0.00       1.18    -993.42      63.90       0.42       5.59

   55   4.2  1.5 -1.5       0.00       0.00       2.32      82.67    -992.05       0.00      10.56    -558.07       1.10       1.58
                           -0.00      -0.00      -0.01       7.40      -1.18       0.00      -4.12       0.97   -1113.60      77.51

   56   5.2  1.5 -1.5       0.00       0.00      18.74       0.22      -1.74     -10.56       0.00      -0.83    -623.84    -925.51
                           -0.00      -0.00       4.87     -63.89     993.42       4.12       0.00    -558.15      -1.88       0.04

   57   6.2  1.5 -1.5       0.00       0.00    -995.31      -0.10      -2.37     558.07       0.83      -0.00     -11.79     -17.43
                           -0.00      -0.00       0.26    -993.41     -63.90      -0.97     558.15      -0.00      -8.19       0.61

   58   7.2  1.5 -1.5       0.00       0.00      -0.38     949.87      79.16      -1.10     623.84      11.79      -0.00       0.06
                           -0.00      -0.00      79.82       0.02      -0.42    1113.60       1.88       8.19       0.00      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.07    -640.26     -53.30      -1.58     925.51      17.43      -0.06       0.00
                           -0.00      -0.00    1146.68       0.71      -5.59     -77.51      -0.04      -0.61       0.00       0.00

   60   9.2  1.5 -1.5       0.00       0.00      -0.58    1633.19     135.97       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00    1638.82       1.25      -8.08      -0.00      -0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5     283.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -969.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5      24.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          299.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5   -1009.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -265.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5      14.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          117.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5    -123.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5     -21.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           51.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5      -0.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5      -0.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5      -0.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00    -271.94     -80.93     971.06    -277.81      18.42   -1004.02     281.58    -189.53     491.82
                         -564.59       1.52    -299.40     260.77      -1.64    -290.82     288.15     -80.47   -1155.33   -1679.49

   14   2.2  0.5 -0.5       0.00    -987.89      24.18    -294.58   -1018.42      -7.51     301.93      24.33     -16.25      42.34
                        -2011.83       0.47    -984.73     -57.39       1.64   -1017.34       6.07      24.87     356.71     518.60

   15   3.2  0.5 -0.5       0.00    -100.35     -22.20     265.87    -102.82       4.92    -275.04   -1001.73     673.51   -1749.33
                         -207.37      -4.99     -17.29   -1017.61       7.81     -85.13   -1045.27     -22.06    -316.36    -459.65

   16   4.2  0.5 -0.5       0.00    -600.26     117.95   -1419.24      98.05       4.29    -219.00     -26.33      17.85      24.95
                          -94.45       1.05    -605.53     129.10       0.05      97.01     -25.50     -18.60    -261.17     203.17

   17   5.2  0.5 -0.5       0.00    -308.21       4.92     -59.48      50.18       0.32      -9.00     224.72    -152.61    -213.35
                          -49.03      -7.52    -180.11   -1546.08      -1.81      45.67     234.05      -0.80     -11.15       8.75

   18   6.2  0.5 -0.5       0.00    1391.20      52.56    -625.33    -225.88       1.44     -97.23      38.43     -26.12     -36.48
                          222.18      -1.79    1410.17    -144.39       0.10    -227.37      35.61      -8.12    -113.63      88.34

   19   7.2  0.5 -0.5       0.00    -107.02    -554.10     240.42      56.25    -598.03     112.35      47.28      70.54      -0.19
                           -0.17     368.27      99.69     110.01     688.41     -54.26     -40.30    -234.31      16.51      -0.22

   20   8.2  0.5 -0.5       0.00       0.18     134.78     799.22      -0.99     216.02     343.63      -5.32      -7.89       0.03
                            0.02    -136.47       4.42     -10.63    -258.51      -2.43       3.06    -645.64      45.58      -0.60

   21   9.2  0.5 -0.5       0.00     773.04     -64.65      30.53    -399.61     -72.55      12.79      56.68      84.52      -0.24
                            0.37      45.83    -779.14      59.02      80.87     401.27     -44.95     -32.57       2.32      -0.04

   22  10.2  0.5 -0.5       0.00    -103.19      87.57     -23.05      53.26      84.86     -11.39     375.15     560.24      -1.69
                           -0.03     -43.83      34.49     825.15    -102.92     -46.89    -353.52      25.26      -1.85       0.03

   23  11.2  0.5 -0.5       0.00      -0.51     701.03      57.20       1.10    -510.88     -10.08      -3.28      -4.98      -0.00
                            0.01     817.91       1.52     -11.15    -344.53      -0.78       0.49       0.97      -0.09      -0.01

   24  12.2  0.5 -0.5       0.00       0.41   -1076.13     -89.62      -0.02      33.30       0.61      -0.06      -0.02      -0.07
                            0.00    1080.16       0.85      -5.35     -35.63      -0.03      -0.31      -0.03       0.06      -0.03

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5      -0.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1892.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.2  1.5  0.5    1885.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5     157.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00      47.07    -565.41       2.32      18.74    -995.31      -0.38       0.07      -0.58
                            4.71      -0.00       2.80       0.43       0.01      -4.87      -0.26     -79.82   -1146.68   -1638.82

   44   2.2  1.5 -0.5       0.00     -47.07      -0.00      -0.20      82.67       0.22      -0.10     949.87    -640.26    1633.19
                          -78.50      -2.80       0.00    -567.36      -7.40      63.89     993.41      -0.02      -0.71      -1.25

   45   3.2  1.5 -0.5       0.00     565.41       0.20       0.00    -992.05      -1.74      -2.37      79.16     -53.30     135.97
                          942.91      -0.43     567.36       0.00       1.18    -993.42      63.90       0.42       5.59       8.08

   46   4.2  1.5 -0.5       0.00      -2.32     -82.67     992.05       0.00     -10.56     558.07      -1.10      -1.58       0.00
                            0.00      -0.01       7.40      -1.18      -0.00      -4.12       0.97   -1113.60      77.51       0.00

   47   5.2  1.5 -0.5       0.00     -18.74      -0.22       1.74      10.56       0.00       0.83     623.84     925.51      -0.00
                            0.00       4.87     -63.89     993.42       4.12      -0.00    -558.15      -1.88       0.04       0.00

   48   6.2  1.5 -0.5       0.00     995.31       0.10       2.37    -558.07      -0.83      -0.00      11.79      17.43      -0.00
                           -0.00       0.26    -993.41     -63.90      -0.97     558.15       0.00      -8.19       0.61      -0.00

   49   7.2  1.5 -0.5       0.00       0.38    -949.87     -79.16       1.10    -623.84     -11.79      -0.00      -0.06      -0.00
                            0.00      79.82       0.02      -0.42    1113.60       1.88       8.19      -0.00      -0.00       0.00

   50   8.2  1.5 -0.5       0.00      -0.07     640.26      53.30       1.58    -925.51     -17.43       0.06       0.00       0.00
                            0.00    1146.68       0.71      -5.59     -77.51      -0.04      -0.61       0.00      -0.00       0.00

   51   9.2  1.5 -0.5   77860.85       0.58   -1633.19    -135.97      -0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00    1638.82       1.25      -8.08      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5       0.58   72154.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1638.82      -0.00     979.31      81.53      -2.50    1723.90      32.46      -8.94      -4.22      14.13

   53   2.2  1.5 -1.5   -1633.19       0.00   72154.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.25    -979.31      -0.00       4.89   -1718.23      -1.54     -12.61     148.57      72.45    -235.50

   54   3.2  1.5 -1.5    -135.97       0.00       0.00   72154.23       0.00       0.00       0.00       0.00       0.00       0.00
                            8.08     -81.53      -4.89      -0.00    -143.17      -8.71      -0.99   -1782.97    -870.32    2828.73

   55   4.2  1.5 -1.5      -0.00       0.00       0.00       0.00   74452.21       0.00       0.00       0.00       0.00       0.00
                            0.00       2.50    1718.23     143.17       0.00     966.58      18.28       6.18     -12.63       0.00

   56   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   74452.21       0.00       0.00       0.00       0.00
                            0.00   -1723.90       1.54       8.71    -966.58       0.00      -6.92      16.05     -32.73       0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   74452.21       0.00       0.00       0.00
                           -0.00     -32.46      12.61       0.99     -18.28       6.92       0.00    -847.99    1737.23      -0.00

   58   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74451.97       0.00       0.00
                            0.00       8.94    -148.57    1782.97      -6.18     -16.05     847.99       0.00       0.21       0.00

   59   8.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   74451.92       0.00
                            0.00       4.22     -72.45     870.32      12.63      32.73   -1737.23      -0.21      -0.00       0.00

   60   9.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   77860.85
                            0.00     -14.13     235.50   -2828.73      -0.00      -0.00       0.00      -0.00      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -295.70689284    -0.01210715    -2657.21      0.00000000        0.00      0.0000
     2  -295.70689284    -0.01210715    -2657.21      0.00000000        0.00      0.0000
     3  -295.70688417    -0.01209849    -2655.31      0.00000866        1.90      0.0002
     4  -295.70688417    -0.01209849    -2655.31      0.00000866        1.90      0.0002
     5  -295.67300367     0.02178201     4780.60      0.03388916     7437.81      0.9222
     6  -295.67300367     0.02178201     4780.60      0.03388916     7437.81      0.9222
     7  -295.37906263     0.31572305    69293.20      0.32783020    71950.41      8.9207
     8  -295.37906263     0.31572305    69293.20      0.32783020    71950.41      8.9207
     9  -295.37901511     0.31577058    69303.63      0.32787773    71960.84      8.9220
    10  -295.37901511     0.31577058    69303.63      0.32787773    71960.84      8.9220
    11  -295.37808351     0.31670218    69508.09      0.32880933    72165.31      8.9474
    12  -295.37808351     0.31670218    69508.09      0.32880933    72165.31      8.9474
    13  -295.37795112     0.31683457    69537.15      0.32894172    72194.36      8.9510
    14  -295.37795112     0.31683457    69537.15      0.32894172    72194.36      8.9510
    15  -295.37775646     0.31702922    69579.87      0.32913637    72237.08      8.9563
    16  -295.37775646     0.31702922    69579.87      0.32913637    72237.08      8.9563
    17  -295.37477485     0.32001084    70234.26      0.33211799    72891.47      9.0374
    18  -295.37477485     0.32001084    70234.26      0.33211799    72891.47      9.0374
    19  -295.36452297     0.33026272    72484.29      0.34236987    75141.50      9.3164
    20  -295.36452297     0.33026272    72484.29      0.34236987    75141.50      9.3164
    21  -295.36441653     0.33036915    72507.65      0.34247630    75164.86      9.3193
    22  -295.36441653     0.33036915    72507.65      0.34247630    75164.86      9.3193
    23  -295.36436870     0.33041699    72518.15      0.34252414    75175.36      9.3206
    24  -295.36436870     0.33041699    72518.15      0.34252414    75175.36      9.3206
    25  -295.36436727     0.33041841    72518.46      0.34252557    75175.67      9.3206
    26  -295.36436727     0.33041841    72518.46      0.34252557    75175.67      9.3206
    27  -295.36399023     0.33079546    72601.21      0.34290261    75258.42      9.3309
    28  -295.36399023     0.33079546    72601.21      0.34290261    75258.42      9.3309
    29  -295.36390652     0.33087916    72619.58      0.34298632    75276.80      9.3331
    30  -295.36390652     0.33087916    72619.58      0.34298632    75276.80      9.3331
    31  -295.36344383     0.33134185    72721.13      0.34344901    75378.34      9.3457
    32  -295.36344383     0.33134185    72721.13      0.34344901    75378.34      9.3457
    33  -295.35006819     0.34471750    75656.75      0.35682465    78313.96      9.7097
    34  -295.35006819     0.34471750    75656.75      0.35682465    78313.96      9.7097
    35  -295.34700598     0.34777971    76328.82      0.35988686    78986.04      9.7930
    36  -295.34700598     0.34777971    76328.82      0.35988686    78986.04      9.7930
    37  -295.34692731     0.34785837    76346.09      0.35996552    79003.30      9.7952
    38  -295.34692731     0.34785837    76346.09      0.35996552    79003.30      9.7952
    39  -295.34408974     0.35069594    76968.86      0.36280310    79626.08      9.8724
    40  -295.34408974     0.35069594    76968.86      0.36280310    79626.08      9.8724
    41  -295.34381145     0.35097424    77029.94      0.36308139    79687.15      9.8799
    42  -295.34381145     0.35097424    77029.94      0.36308139    79687.15      9.8799
    43  -295.34380480     0.35098089    77031.40      0.36308804    79688.61      9.8801
    44  -295.34380480     0.35098089    77031.40      0.36308804    79688.61      9.8801
    45  -295.34346298     0.35132270    77106.42      0.36342985    79763.63      9.8894
    46  -295.34346298     0.35132270    77106.42      0.36342985    79763.63      9.8894
    47  -295.34343477     0.35135091    77112.61      0.36345806    79769.82      9.8902
    48  -295.34343477     0.35135091    77112.61      0.36345806    79769.82      9.8902
    49  -295.34094360     0.35384208    77659.36      0.36594923    80316.57      9.9580
    50  -295.34094360     0.35384208    77659.36      0.36594923    80316.57      9.9580
    51  -295.33423002     0.36055566    79132.82      0.37266281    81790.03     10.1407
    52  -295.33423002     0.36055566    79132.82      0.37266281    81790.03     10.1407
    53  -295.33421573     0.36056995    79135.96      0.37267711    81793.17     10.1411
    54  -295.33421573     0.36056995    79135.96      0.37267711    81793.17     10.1411
    55  -295.33231155     0.36247413    79553.88      0.37458129    82211.09     10.1929
    56  -295.33231155     0.36247413    79553.88      0.37458129    82211.09     10.1929
    57  -295.32495898     0.36982671    81167.58      0.38193386    83824.79     10.3929
    58  -295.32495898     0.36982671    81167.58      0.38193386    83824.79     10.3929
    59  -295.32491354     0.36987214    81177.55      0.38197929    83834.76     10.3942
    60  -295.32491354     0.36987214    81177.55      0.38197929    83834.76     10.3942


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.107221413   0.739540894   0.326572711   0.006922977   0.574812251   0.046200534   0.018914302  -0.000855311
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.186257417  -0.228133822   0.450426215   0.228187205  -0.044573602   0.556255805  -0.005402493  -0.003949883
                        -0.000443755  -0.061210703   0.025968131   0.564618448   0.067565315  -0.129673672  -0.001674035  -0.001210185

    3    3.2  0.5  0.5  -0.025641407   0.076862567  -0.178010802  -0.206754963  -0.007258617   0.089617464   0.001563719  -0.000644526
                        -0.041936722   0.583336376  -0.366429701   0.328186671  -0.561912539   0.093949090   0.015705678   0.000119037

    4    4.2  0.5  0.5   0.000012318   0.000228786  -0.000039397  -0.000070554  -0.000777745   0.000514315   0.228784259   0.022284807
                        -0.000004130   0.000071913  -0.000043933  -0.000091235   0.000380249  -0.000195896   0.076933147   0.010552657

    5    5.2  0.5  0.5   0.000010866   0.000050903   0.000057490   0.000054136  -0.000279240   0.000306262   0.054942730   0.014641650
                         0.000013598  -0.000184759   0.000119174  -0.000144544  -0.000926499   0.000117563  -0.193334243   0.001368682

    6    6.2  0.5  0.5  -0.000072709   0.000103964   0.000195153   0.000061352  -0.000609371  -0.000795100   0.110375526  -0.046935628
                        -0.000000502  -0.000010617   0.000003172   0.000156890  -0.000060895   0.000166966  -0.010742241  -0.011993290

    7    7.2  0.5  0.5   0.000876776   0.000788426  -0.001419878  -0.003538450  -0.000000113   0.000001568  -0.001306806   0.002957228
                        -0.000860549  -0.000501582   0.004692212   0.002899634   0.000003391   0.000006208   0.000207046  -0.002656797

    8    8.2  0.5  0.5  -0.000104696   0.001618187  -0.003802248   0.005007163  -0.000001706  -0.000000175  -0.003334930  -0.000259707
                         0.000293797   0.000431719   0.001461380   0.001608248  -0.000000214  -0.000002638  -0.000834152   0.001113574

    9    9.2  0.5  0.5  -0.006503782  -0.000217420  -0.001617432  -0.001090543   0.000000247  -0.000001811  -0.000023149  -0.014618053
                        -0.000218140  -0.000704335   0.000194463  -0.000587118   0.000002401   0.000000766   0.000247774  -0.004500671

   10   10.2  0.5  0.5   0.000809871   0.000995779  -0.001953090  -0.001101987   0.000004547  -0.000001641  -0.000646201   0.001837124
                         0.000406505  -0.004662851  -0.003615154   0.002334603   0.000014621  -0.000003535   0.003168425   0.000817202

   11   11.2  0.5  0.5   0.000154695   0.000003990   0.000026329   0.000722224  -0.000000130   0.000001211   0.000378882   0.008029260
                        -0.006798411  -0.000430201  -0.000592722  -0.000284999   0.000001035   0.000005860   0.000474231  -0.028903787

   12   12.2  0.5  0.5  -0.000000182  -0.000000050  -0.000000181   0.000006382   0.000278315  -0.003463083  -0.000003730  -0.000083327
                         0.000008554   0.000000612  -0.000005641  -0.000002214  -0.003347300  -0.016695145  -0.000006876   0.000309951

   13    1.2  0.5 -0.5   0.719405072   0.104302046   0.005792596  -0.273250038  -0.040678875   0.506113528   0.000752066   0.016631155
                         0.171397423   0.024849841   0.003791232  -0.178841138   0.021902478  -0.272503615   0.000407373   0.009008635

   14    2.2  0.5 -0.5  -0.236108627   0.181288946   0.500131096  -0.391101724  -0.551249790  -0.071277353   0.004049487  -0.005547678
                         0.006671357   0.042735705  -0.347465508  -0.224939015   0.149530770  -0.038359051   0.000817174  -0.001101174

   15    3.2  0.5 -0.5   0.209964957   0.034662592   0.006728903   0.349613299  -0.034367995   0.259997093   0.000510030   0.008855372
                        -0.549639790  -0.034852189  -0.387825770  -0.209115071   0.125206080   0.498196649   0.000411648  -0.013065065

   16    4.2  0.5 -0.5   0.000239224  -0.000011025  -0.000108998   0.000057024  -0.000545716  -0.000865060  -0.024620899   0.237809944
                        -0.000016931  -0.000006872   0.000037701  -0.000015185   0.000071340   0.000033905  -0.001335118   0.041320420

   17    5.2  0.5 -0.5   0.000006697  -0.000013721  -0.000033860  -0.000113367  -0.000213925   0.000193363  -0.013526140  -0.043771991
                         0.000191526   0.000010709   0.000150590   0.000068232   0.000248703   0.000948149  -0.005770159   0.196165353

   18    6.2  0.5 -0.5   0.000098673   0.000070845   0.000137252  -0.000165025   0.000779228  -0.000507673   0.046982271   0.091935696
                         0.000034422   0.000016363  -0.000097675  -0.000104217  -0.000229925   0.000342505   0.011809249   0.062015968

   19    7.2  0.5 -0.5   0.000650711  -0.000653461  -0.001372766  -0.001381558   0.000001562  -0.000001707  -0.001334863  -0.001050448
                         0.000670652  -0.001040322  -0.004363946   0.004703638   0.000006210  -0.000002932  -0.003744584  -0.000804468

   20    8.2  0.5 -0.5   0.001674184   0.000033754   0.005070321   0.002381123  -0.000001097  -0.000001401  -0.000302023  -0.003329666
                        -0.000044930   0.000310062   0.001396420   0.003304993  -0.000002406   0.000000997   0.001102849  -0.000854922

   21    9.2  0.5 -0.5  -0.000374739   0.006377257  -0.001234003   0.001246845   0.000001957  -0.000000921   0.014997117   0.000097657
                         0.000634768   0.001295128  -0.000105961   0.001048467  -0.000000184  -0.000002231   0.003004993  -0.000228891

   22   10.2  0.5 -0.5  -0.000112005  -0.000882033   0.000356445   0.003613959  -0.000000231  -0.000002928  -0.002004587   0.000940881
                         0.004766677   0.000207739  -0.002556891  -0.001955302  -0.000003891  -0.000015029  -0.000156440  -0.003093741

   23   11.2  0.5 -0.5  -0.000095823   0.001425129   0.000448225   0.000302563   0.000001712  -0.000000605   0.006706450   0.000559018
                         0.000419413  -0.006649160   0.000633977  -0.000510361   0.000005734  -0.000000850  -0.029239040  -0.000236530

   24   12.2  0.5 -0.5   0.000000093  -0.000001805   0.000004127   0.000003241  -0.004865544   0.001831921  -0.000074357  -0.000006554
                        -0.000000607   0.000008363   0.000005347  -0.000004620  -0.016341582   0.002815305   0.000312225   0.000004269

   25    1.2  1.5  1.5  -0.002964593  -0.000267959   0.007126972   0.002824367   0.001541452   0.007688125   0.002198114   0.061110275
                        -0.000062237  -0.000035273  -0.000174985   0.008115426   0.000127590  -0.001597547   0.001538485   0.017260193

   26    2.2  1.5  1.5  -0.000049118   0.001612182  -0.000105173  -0.007862597  -0.000126855   0.001594781  -0.052849137  -0.022524702
                        -0.002986693   0.000171917   0.007287932   0.002984492   0.001535956   0.007658755  -0.013102099   0.077584601

   27    3.2  1.5  1.5   0.001357905  -0.019190609   0.003222945  -0.003451923  -0.000014871   0.000093651   0.622726674   0.003544417
                         0.000029802  -0.004136141  -0.001862110  -0.001651208   0.000126110   0.000645847   0.142915689   0.018567299

   28    4.2  1.5  1.5  -0.002740112  -0.000178967   0.006513950   0.002669891   0.001494885   0.008058455   0.000189086  -0.026634118
                        -0.000054596  -0.000016935  -0.000123834   0.007521089   0.000165605  -0.001695493  -0.000379484  -0.007458402

   29    5.2  1.5  1.5   0.000058288  -0.000038155   0.000037147  -0.007393961  -0.000434767   0.001734672  -0.000201592   0.006514854
                        -0.002747172  -0.000170311   0.006658126   0.002702240   0.001702667   0.008009788   0.000220108  -0.023288740

   30    6.2  1.5  1.5  -0.000180118   0.002737761   0.006487984  -0.005653318   0.016083851  -0.002678482   0.027477699   0.000139064
                        -0.000076103   0.000585310  -0.004828455  -0.003695993  -0.004756722   0.001941241   0.006197887   0.000013253

   31    7.2  1.5  1.5   0.000122675  -0.001726881  -0.003360257  -0.002562474  -0.002105896   0.000792376  -0.025161399  -0.002136094
                        -0.000573961   0.008046292  -0.004396540   0.003765124  -0.007075634   0.001218988   0.109347670   0.001011503

   32    8.2  1.5  1.5   0.000086604  -0.001499067   0.003875307   0.002982086   0.004306603  -0.001620830  -0.019294475  -0.001615127
                        -0.000459594   0.006975162   0.005024962  -0.004323899   0.014455662  -0.002489512   0.084417568   0.000730015

   33    9.2  1.5  1.5   0.000448549  -0.006693569  -0.003982622  -0.002998522  -0.000001251   0.000000319   0.077583445   0.006573569
                        -0.002172592   0.031165546  -0.005268805   0.004488362  -0.000004321   0.000001293  -0.337924824  -0.003095530

   34    1.2  1.5  0.5   0.000551997  -0.007520820   0.009727458  -0.008321079   0.004327489  -0.000792243   0.242526731   0.002539481
                         0.000127039  -0.001618334  -0.007443985  -0.005667255  -0.001293468   0.000495579   0.056119037   0.004861840

   35    2.2  1.5  0.5   0.000334415  -0.003103322   0.004341806   0.003471222   0.001504132   0.000245458   0.095694830   0.005105073
                        -0.000967455   0.014451484   0.006059197  -0.005620042   0.004544658  -0.000936240  -0.417296090  -0.004537297

   36    3.2  1.5  0.5  -0.001726994  -0.000322258   0.004520298   0.002008281  -0.001724926  -0.009096215   0.006271588   0.035848654
                        -0.000119335   0.001202539   0.000446724   0.004368396   0.000232869   0.001811568  -0.034539282   0.009617683

   37    4.2  1.5  0.5  -0.000776428   0.010031937  -0.001713259   0.001438721  -0.013594255   0.002340837   0.129885144   0.000336862
                        -0.000148099   0.002175071   0.001281116   0.000953866   0.004074923  -0.001527750   0.030048721   0.002282318

   38    5.2  1.5  0.5  -0.000347553   0.002218598   0.001210726   0.000927294  -0.004136307   0.001553070   0.029344201   0.000258287
                         0.000713655  -0.010312958   0.001653400  -0.001443735  -0.013810195   0.002377042  -0.126700312  -0.001770677

   39    6.2  1.5  0.5   0.010505900   0.000846937   0.001792445   0.000764486  -0.000180792   0.000028600  -0.000564321   0.117457238
                         0.000246336  -0.000156335   0.000022671   0.002032465  -0.000230853   0.000035442  -0.000646299   0.032578486

   40    7.2  1.5  0.5   0.000158891   0.000021304   0.000129231  -0.006011352  -0.000245744   0.003074078   0.000973765   0.021487379
                        -0.007150779  -0.000468072   0.005266704   0.002088916   0.002971167   0.014819953   0.001315226  -0.077071719

   41    8.2  1.5  0.5  -0.000182404  -0.000013455   0.000081873  -0.005218873  -0.000120849   0.001498355  -0.001245017  -0.027003299
                         0.008208535   0.000584892   0.004554596   0.001838590   0.001447152   0.007222741  -0.001734755   0.097472471

   42    9.2  1.5  0.5  -0.000185214  -0.000042120  -0.000458592   0.023255648   0.000000246  -0.000001616   0.000902327   0.019694781
                         0.008513464   0.000492925  -0.020351305  -0.008114722  -0.000002367  -0.000008068   0.001079231  -0.069978836

   43    1.2  1.5 -0.5   0.007691116   0.000566411   0.010065978   0.004062610  -0.000932499  -0.004423489   0.004548571  -0.239980071
                         0.000168769   0.000004352  -0.000185032   0.011555585  -0.000060767   0.000912672  -0.003065445  -0.066167417

   44    2.2  1.5 -0.5  -0.000330477   0.000101090   0.000173264   0.006951078   0.000659970   0.000830139   0.002327784   0.114609189
                         0.014777239   0.001018619  -0.006603350  -0.002692149   0.000707980   0.004714573   0.006421079  -0.412502438

   45    3.2  1.5 -0.5   0.000034781  -0.001707629  -0.004072636   0.004026865  -0.008867898   0.001629168   0.036102137   0.010936066
                         0.001244484  -0.000284165   0.002555330   0.002101669   0.002717222  -0.000612705   0.008617515  -0.033357118

   46    4.2  1.5 -0.5  -0.010262892  -0.000789611  -0.001726174  -0.000731940   0.002785338   0.013901352   0.001383237  -0.128518509
                        -0.000209172  -0.000035880   0.000010232  -0.002010168   0.000235431  -0.002856776  -0.001846377  -0.035441064

   47    5.2  1.5 -0.5   0.000231959  -0.000172692   0.000014747   0.001918491   0.000240561  -0.002905100  -0.000616241   0.034543647
                        -0.010546349  -0.000774774  -0.001715816  -0.000720403  -0.002829220  -0.014120585   0.001679958  -0.125382565

   48    6.2  1.5 -0.5  -0.000787644   0.010276942  -0.001752700   0.001512191   0.000008380   0.000049744   0.118795672   0.000804026
                        -0.000348366   0.002195239   0.001281949   0.000962628  -0.000044765  -0.000288971   0.027297417  -0.000299506

   49    7.2  1.5 -0.5   0.000087757  -0.001502714   0.003885867   0.002992337  -0.004319077   0.001624927  -0.017814619  -0.001482647
                        -0.000460265   0.006992906   0.005039837  -0.004335988  -0.014506087   0.002499567   0.078002543   0.000692673

   50    8.2  1.5 -0.5  -0.000122466   0.001724988   0.003359870   0.002562740  -0.002104836   0.000792463   0.022681139   0.001920972
                         0.000572085  -0.008027312   0.004396399  -0.003766087  -0.007069846   0.001216904  -0.098567879  -0.000932367

   51    9.2  1.5 -0.5  -0.000073268   0.001792926  -0.015014606  -0.011528707   0.000002402  -0.000001339  -0.016012585  -0.001307431
                         0.000489265  -0.008324589  -0.019525253   0.016777212   0.000007870  -0.000001967   0.070912051   0.000519190

   52    1.2  1.5 -1.5  -0.000268838   0.002898298   0.006807460  -0.005867455  -0.007526634   0.001296738  -0.061954452   0.002665540
                        -0.000027790   0.000626538  -0.005243633  -0.004049360   0.002238125  -0.000843104  -0.013929314  -0.000305841

   53    2.2  1.5 -1.5   0.001608130   0.000739982  -0.004944397  -0.003903093   0.002226637  -0.000839851  -0.017146790  -0.052710071
                         0.000206406  -0.002893989  -0.006802982   0.006155557   0.007499462  -0.001292247   0.078947578  -0.013650812

   54    3.2  1.5 -1.5  -0.019626698  -0.001327840  -0.003792546  -0.001676956   0.000223721  -0.000072879  -0.011959933   0.615626155
                        -0.000424128  -0.000285720  -0.000508778  -0.003323048   0.000613056  -0.000103988   0.014637879   0.170932272

   55    4.2  1.5 -1.5  -0.000178019   0.002678159   0.006352729  -0.005382539  -0.007899137   0.001237715   0.026971451  -0.000014482
                        -0.000025003   0.000581944  -0.004830936  -0.003670852   0.002327449  -0.000854499   0.006127385   0.000423736

   56    5.2  1.5 -1.5  -0.000076588   0.000579989  -0.004706849  -0.003677273   0.002269881  -0.001189996   0.005363678  -0.000072423
                         0.000156831  -0.002685883  -0.006310177   0.005550647   0.007874861  -0.001293061  -0.023580494  -0.000289554

   57    6.2  1.5 -1.5   0.002798872   0.000192852  -0.006754285  -0.002784419   0.003278656   0.016416627  -0.000128590   0.027112836
                         0.000065135  -0.000032287  -0.000003416  -0.007593084   0.000439435  -0.003436716  -0.000054581   0.007637530

   58    7.2  1.5 -1.5   0.000184962   0.000013687  -0.000082178   0.005219274  -0.000119784   0.001500165   0.001396480   0.029956705
                        -0.008227437  -0.000586765  -0.004553645  -0.001838496   0.001448945   0.007228341   0.001906798  -0.108132348

   59    8.2  1.5 -1.5   0.000158326   0.000022271   0.000127274  -0.005994370   0.000246903  -0.003061156   0.001072469   0.023241550
                        -0.007132673  -0.000467152   0.005250975   0.002082252  -0.002960372  -0.014769642   0.001411158  -0.083417222

   60    9.2  1.5 -1.5   0.000711667   0.000067188  -0.000050961   0.006217699   0.000000332   0.000000947  -0.004305712  -0.092730848
                        -0.031868302  -0.002217394  -0.005397586  -0.002227512   0.000001289   0.000004397  -0.005852773   0.334085868


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.008974671   0.000027615  -0.000441511   0.000000024   0.000223191   0.000269010  -0.000000000  -0.000483817
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.010722363  -0.016259806  -0.000016180  -0.000102938  -0.000080000  -0.000067359  -0.000006520   0.000143413
                        -0.001001844   0.000389256   0.000063929   0.000412138  -0.000058811   0.000049057  -0.000060682   0.000029720

    3    3.2  0.5  0.5   0.003204606  -0.004821048   0.000186041   0.000148665   0.000062802   0.000073211  -0.000010382  -0.000085903
                         0.009693772  -0.007594220  -0.000624983   0.000128589  -0.000004231  -0.000002029  -0.000002558  -0.000289065

    4    4.2  0.5  0.5   0.017932316   0.116811920  -0.004552716   0.001921895   0.001203619   0.000720736   0.000251400  -0.002360962
                         0.047405712  -0.033827299  -0.003891940  -0.004054395   0.002001054  -0.000702178   0.002398291  -0.001617133

    5    5.2  0.5  0.5  -0.044303923   0.099376905  -0.004000267  -0.001686987   0.000481488  -0.000404718   0.000481020  -0.001719969
                        -0.119677200   0.094695849   0.008299551  -0.003121282  -0.003409542  -0.005521115   0.001204475   0.010211062

    6    6.2  0.5  0.5  -0.183737737  -0.163947750  -0.005147843  -0.001230530  -0.000225239   0.001382260  -0.000655783  -0.001576770
                        -0.006305799   0.000987592   0.000173374   0.005785545  -0.004154775   0.001998483  -0.005379766   0.001557656

    7    7.2  0.5  0.5   0.001256816  -0.001762189  -0.063852696   0.084027816  -0.139841363   0.093071934  -0.015286989  -0.004965191
                        -0.011127388  -0.015971425   0.001902229  -0.015933792   0.003213400  -0.042337684   0.022954377   0.007477566

    8    8.2  0.5  0.5   0.002663082  -0.002247840  -0.168648042   0.005164398   0.014415420  -0.078191380   0.006575790  -0.011951418
                         0.002586201   0.007156296  -0.093317478  -0.046999787  -0.010639420   0.016760368   0.000237742  -0.003038354

    9    9.2  0.5  0.5   0.005216979   0.004488632  -0.042923634  -0.013255654  -0.004138016  -0.006113811  -0.021340243  -0.006712117
                         0.000086067  -0.002888106   0.012552272   0.093377912   0.045252414  -0.070607972  -0.145063829   0.008907035

   10   10.2  0.5  0.5   0.005876860  -0.005512310  -0.037304995  -0.033008761   0.026055099  -0.018214208   0.005708458  -0.008573212
                         0.012430036  -0.006032536   0.096051039  -0.031672883  -0.115141800  -0.109397779   0.019237551   0.060262017

   11   11.2  0.5  0.5  -0.000048355   0.000004196   0.000725413  -0.038581660   0.005008480  -0.004071562  -0.178975614  -0.000065937
                         0.001398074   0.001996640  -0.011590808  -0.007765946  -0.000153004   0.002449799   0.023684430   0.005212841

   12   12.2  0.5  0.5  -0.000008377  -0.000004447  -0.000001636   0.001993478  -0.004580147   0.003792016  -0.007352550  -0.000011870
                         0.000109411   0.000149188   0.000566635   0.000399100   0.000909588  -0.001256157   0.000965789   0.000223953

   13    1.2  0.5 -0.5   0.000023836   0.007746488  -0.000000015  -0.000272244   0.000065440  -0.000054294  -0.000013587   0.000000000
                        -0.000013944  -0.004531737   0.000000019   0.000347584   0.000260929  -0.000216487   0.000483627   0.000000000

   14    2.2  0.5 -0.5  -0.014231207   0.008749130   0.000387934  -0.000060305   0.000031197   0.000076506  -0.000025680  -0.000060475
                         0.007874361  -0.006278972   0.000173094  -0.000026682  -0.000077269   0.000063290  -0.000144191  -0.000008221

   15    3.2  0.5 -0.5  -0.000326606   0.002128789   0.000009563   0.000606741   0.000015841  -0.000011173   0.000286539  -0.000002265
                         0.008989327   0.009985338   0.000196328   0.000238914   0.000071506  -0.000061945   0.000093987  -0.000010450

   16    4.2  0.5 -0.5   0.117907227   0.008459113  -0.004376945   0.000256674  -0.000505756  -0.002233739   0.001550192   0.002390285
                        -0.029785845   0.049973122  -0.000986990   0.005984024   0.000869899  -0.000680680   0.002405445   0.000318652

   17    5.2  0.5 -0.5   0.037960757  -0.022189762  -0.001417032  -0.009000556  -0.005453715   0.003189992  -0.010255337   0.001190492
                        -0.131916845  -0.125670539  -0.003252745  -0.001968419   0.000950524  -0.001296440   0.001432532   0.000514656

   18    6.2  0.5 -0.5  -0.142010197   0.155409147   0.005313502  -0.003310756   0.002274702   0.004084759  -0.001601322  -0.005359228
                         0.081932558  -0.098220752   0.002598737   0.003945788   0.000854580  -0.000792231   0.001532404  -0.000806605

   19    7.2  0.5 -0.5   0.006543697  -0.006703567  -0.064357312  -0.040870424  -0.018424890   0.030901396  -0.007614055   0.023374630
                         0.014675550  -0.008969980   0.056326691   0.049095760   0.100575284   0.136422273   0.004753239  -0.014636329

   20    8.2  0.5 -0.5  -0.005553777  -0.000992744  -0.040185555  -0.030526644  -0.002764198   0.006813073   0.002701522   0.000052979
                        -0.005041916   0.003576996  -0.024915300   0.190311423  -0.079919716  -0.016570565   0.012032031   0.006579873

   21    9.2  0.5 -0.5   0.005332705  -0.004459576   0.081686461  -0.036349497  -0.069974195  -0.042886418  -0.009092019  -0.144407314
                         0.000226345   0.002708589   0.047143069   0.026052100   0.011246172   0.015021961   0.006459332  -0.025405672

   22   10.2  0.5 -0.5  -0.001711837   0.001203903  -0.004580939  -0.098620222  -0.110542350   0.105344727  -0.060479012   0.019069652
                         0.007990411   0.013696492  -0.045516643  -0.029858274   0.008945403  -0.053282182   0.006877485   0.006246457

   23   11.2  0.5 -0.5  -0.001004576   0.000747692   0.017676415   0.009572291   0.001385746  -0.001069971  -0.005212637   0.028701284
                        -0.001725519   0.001182331  -0.035162463   0.006576039  -0.004545200  -0.004895247  -0.000080482  -0.178239892

   24   12.2  0.5 -0.5  -0.000079171   0.000062477  -0.000915023  -0.000447098  -0.000295965   0.000231917  -0.000224198   0.001171891
                        -0.000126526   0.000090208   0.001815480  -0.000348110   0.003983682   0.004663830   0.000005576  -0.007322528

   25    1.2  1.5  1.5   0.216899639   0.280423793   0.047402365   0.032745310   0.000976522  -0.002753764   0.083930150   0.020939123
                        -0.000305700   0.006710194   0.001216565  -0.160047723   0.007587813  -0.006078780   0.637393571   0.000730793

   26    2.2  1.5  1.5  -0.007891917  -0.000143551  -0.035018852   0.003540948  -0.254973401   0.230667937   0.541874789  -0.008651787
                         0.222719926   0.278898841  -0.018309328  -0.009481130   0.053262496  -0.072480521  -0.070807329  -0.018840295

   27    3.2  1.5  1.5   0.095312411  -0.077608331   0.419267900  -0.079688605  -0.133684272  -0.111606017   0.044717557   0.110881091
                        -0.041047054   0.067249320   0.208419786   0.102697861  -0.003504793   0.000652221  -0.012741950   0.016419384

   28    4.2  1.5  1.5  -0.078775297  -0.103544194  -0.010803452  -0.007892109  -0.029391695   0.041345344   0.017160410   0.004063726
                        -0.000264711  -0.001956521   0.000066003   0.039408923  -0.149395880   0.124217744   0.132508664   0.000137043

   29    5.2  1.5  1.5   0.001555844   0.000936382   0.000755484  -0.084694961   0.079530883  -0.063523892   0.205066980  -0.000247081
                        -0.079927840  -0.101634086  -0.023514863  -0.017172894  -0.015706900   0.021428012  -0.026805776  -0.006636944

   30    6.2  1.5  1.5  -0.088620175   0.068077509  -0.034162667   0.004763889  -0.065102203  -0.078380474   0.003997409   0.023859442
                         0.052841658  -0.042214963  -0.017465285  -0.008349592  -0.006060060   0.005157972  -0.000314075   0.003677247

   31    7.2  1.5  1.5   0.036109523  -0.026729803  -0.103200617  -0.050466467   0.001627113  -0.001439125   0.001468199  -0.007219331
                         0.058611347  -0.045869537   0.207610981  -0.039219538  -0.023490832  -0.027250235   0.000008630   0.044772559

   32    8.2  1.5  1.5  -0.042973403   0.031866814  -0.031155021  -0.015234582   0.006058754  -0.005019915   0.001598754  -0.007798223
                        -0.069588574   0.054324742   0.062763849  -0.011892700  -0.086071733  -0.100366417   0.000011972   0.048600521

   33    9.2  1.5  1.5  -0.030022084   0.022207564  -0.005439695  -0.002642600   0.000271977  -0.000250045   0.000304556  -0.001486109
                        -0.048926917   0.038415432   0.010981407  -0.002073104  -0.004293086  -0.005012765   0.000018612   0.009266355

   34    1.2  1.5  0.5   0.324205353  -0.252226599  -0.287055180   0.054713163   0.309466156   0.359699137   0.000000153  -0.190616762
                        -0.199584626   0.147934625  -0.142860635  -0.070924450   0.023948675  -0.019906296   0.006911489  -0.030626062

   35    2.2  1.5  0.5   0.136996691  -0.122401485  -0.252035831  -0.124451714  -0.014011657   0.015827197   0.000109279  -0.008283874
                         0.237760462  -0.185936672   0.494763043  -0.073114379   0.055420947   0.140862419  -0.011291997   0.047834169

   36    3.2  1.5  0.5   0.133293255   0.151283320   0.049729208   0.039809823   0.088549119  -0.125287062   0.017998186   0.004680265
                         0.020820052  -0.012440277   0.042414553  -0.251866475   0.463467112  -0.369693472   0.136236938   0.004212556

   37    4.2  1.5  0.5   0.018485897  -0.014302898  -0.020350038   0.004016112  -0.101875505  -0.118836485  -0.000235954   0.038955832
                        -0.011239983   0.008302656  -0.010120616  -0.006043983  -0.007065336   0.006101203  -0.003053568   0.006193896

   38    5.2  1.5  0.5  -0.011843366   0.009308361   0.042647330   0.021084535   0.005921677  -0.005164993   0.000223454  -0.004255653
                        -0.019810900   0.015551270  -0.084306026   0.013345266  -0.086563218  -0.100889386  -0.004593789   0.026179503

   39    6.2  1.5  0.5  -0.014471680  -0.018519702  -0.037218982  -0.027277657   0.000116227  -0.002074809   0.032296280   0.008066891
                        -0.000361062  -0.000021758  -0.001800625   0.134933185   0.002415194  -0.005305879   0.244505650   0.000759734

   40    7.2  1.5  0.5   0.000042983   0.002008396  -0.000145471   0.116970229  -0.028769658   0.023857808  -0.088371705  -0.000096722
                        -0.065033228  -0.084400126   0.032925994   0.024096661   0.005744491  -0.007819112   0.011661275   0.002822678

   41    8.2  1.5  0.5  -0.000062251   0.001375460   0.000111904  -0.155859855  -0.115159607   0.095888202   0.129679057   0.000165878
                        -0.047017617  -0.060943927  -0.043903134  -0.032165177   0.022858706  -0.031338906  -0.017086112  -0.004115423

   42    9.2  1.5  0.5   0.000044959   0.006467201   0.000004461  -0.006957162   0.000766693  -0.000629656   0.001463384   0.000001615
                        -0.212100109  -0.275177732  -0.001974089  -0.001433876  -0.000137709   0.000203528  -0.000185123  -0.000034335

   43    1.2  1.5 -0.5   0.292408623   0.380617627   0.089573279   0.064535521  -0.068193270   0.098511011  -0.025260868  -0.006908758
                         0.000328607   0.008564822   0.000659942  -0.314078022  -0.353736354   0.294344052  -0.191401657  -0.000194250

   44    2.2  1.5 -0.5   0.011762604  -0.001807832  -0.019179391   0.544917897  -0.140481130   0.050347597   0.048047940   0.011290612
                        -0.222297572  -0.274399093   0.143059751   0.106663089   0.018914899  -0.027072632  -0.006937274   0.000207879

   45    3.2  1.5 -0.5  -0.136861897   0.104539052   0.222832109   0.002727264   0.389065731   0.471085447   0.004079458  -0.135677760
                         0.065652301  -0.085276919   0.123965296   0.065303525   0.031590635  -0.026855393   0.004796721  -0.021817047

   46    4.2  1.5 -0.5   0.016537953   0.021631704   0.007234607   0.004580685   0.022990627  -0.031635663   0.005097452   0.003045737
                        -0.000055773   0.000367386   0.000565116  -0.022261362   0.116750872  -0.097096459   0.039114412   0.000321615

   47    5.2  1.5 -0.5  -0.000181938  -0.000219139   0.002494952  -0.092668029   0.099115152  -0.082522358   0.026288690   0.004598252
                         0.018123313   0.023080058  -0.024827987  -0.018410250  -0.019532843   0.026801443  -0.003518772  -0.000094358

   48    6.2  1.5 -0.5   0.015974296  -0.012308914  -0.123047544   0.021532422   0.005651217   0.002370916   0.000532891  -0.243502234
                        -0.009370256   0.007619088  -0.061727927  -0.030411342   0.000721757  -0.000474792   0.008085045  -0.039150026

   49    7.2  1.5 -0.5  -0.044351175   0.032875463   0.053155875   0.026011039   0.001780500  -0.001426672   0.002824281  -0.014138429
                        -0.071835841   0.056111732  -0.106944549   0.020188315  -0.025043229  -0.029302849  -0.000017414   0.088009365

   50    8.2  1.5 -0.5  -0.031960709   0.023687694  -0.070783985  -0.034632211   0.007071418  -0.005842064  -0.004118458   0.020721167
                        -0.051909221   0.040614694   0.142536032  -0.026983470  -0.100631354  -0.117260930   0.000050239  -0.129148079

   51    9.2  1.5 -0.5  -0.144532459   0.107138216  -0.003161094  -0.001556873  -0.000044242   0.000052936  -0.000034367   0.000226147
                        -0.234254087   0.183051526   0.006361257  -0.001213752   0.000660252   0.000777161   0.000000650  -0.001457608

   52    1.2  1.5 -1.5   0.238659526  -0.187371305  -0.146190697   0.028271511  -0.006566064  -0.007597429  -0.000142469   0.634785156
                        -0.147391183   0.109259054  -0.072909595  -0.038068175  -0.001192298   0.000898649  -0.020951388   0.101797053

   53    2.2  1.5 -1.5  -0.140953164   0.119273768  -0.009647541  -0.007179125  -0.014190192   0.010363155   0.018589895  -0.085996942
                        -0.240659074   0.188255720  -0.003058609   0.038858869   0.241370590   0.260270886   0.009177469   0.539672578

   54    3.2  1.5 -1.5  -0.100945010  -0.102995521   0.129987601   0.094448440  -0.026517016   0.035919982  -0.013299020  -0.013992734
                        -0.018858127   0.012697991   0.000589892  -0.458589001  -0.108412068   0.128815849  -0.111298466   0.044342087

   55    4.2  1.5 -1.5  -0.088386240   0.067861239   0.035891529  -0.006713590   0.130544083   0.152057993  -0.000022867   0.131974483
                         0.053973148  -0.040005871   0.018087198   0.008464434   0.009885728  -0.007833752  -0.004065972   0.020874900

   56    5.2  1.5 -1.5   0.052128111  -0.041702286   0.038705096   0.018978173   0.005331291  -0.004111873   0.006627388  -0.032554126
                         0.087252647  -0.068204103  -0.077266165   0.013904981  -0.066828302  -0.080962711   0.000433370   0.204233309

   57    6.2  1.5 -1.5   0.080077445   0.103174772  -0.009510816  -0.007315665  -0.014064062   0.021714992  -0.003005749  -0.000426211
                         0.002062285   0.000861750  -0.001398106   0.037664374  -0.077280693   0.061672362  -0.023953300   0.003987012

   58    7.2  1.5 -1.5   0.000089874  -0.001572288   0.000242653  -0.227079556  -0.026781733   0.022389358  -0.044957642  -0.000032605
                         0.053089441   0.068823801  -0.063913829  -0.046771379   0.005233087  -0.007292692   0.005959130   0.001467863

   59    8.2  1.5 -1.5   0.000074703   0.001953924   0.000031299  -0.068622328  -0.098572600   0.082012292  -0.048800351  -0.000032931
                        -0.062981472  -0.081764694  -0.019326868  -0.014174347   0.019546344  -0.026814842   0.006430293   0.001598460

   60    9.2  1.5 -1.5  -0.000229313   0.001208043  -0.000002593  -0.011999456  -0.004923010   0.004097961  -0.009304435   0.000010052
                        -0.044371936  -0.057390848  -0.003358733  -0.002488902   0.000976888  -0.001308157   0.001225295   0.000304959


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.001556993   0.000253341   0.000000000   0.000150297   0.000109024  -0.000016153   0.000036422   0.000002849
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000202756   0.001626439  -0.000012188  -0.000033598   0.000209390   0.000173526   0.000022747  -0.000051684
                         0.000201661  -0.000248776   0.000032164  -0.000023121   0.000009058  -0.000015042  -0.000000201  -0.000020021

    3    3.2  0.5  0.5  -0.000065711   0.000235423   0.000010122  -0.000064725  -0.000053756   0.000117412   0.000009800  -0.000003488
                        -0.001595584   0.000177600   0.000011107   0.000222615  -0.000093469   0.000119151   0.000010468   0.000005807

    4    4.2  0.5  0.5  -0.271817885   0.162074745  -0.000042795   0.003714415  -0.001589928   0.001030064   0.000343030   0.000324015
                         0.134128465  -0.045293421   0.000447555   0.001701521   0.000862684  -0.001130986  -0.000146149   0.000011441

    5    5.2  0.5  0.5  -0.103892215   0.094256206  -0.000086359   0.000023697   0.000491541  -0.001175476  -0.000154293  -0.000332012
                        -0.315363420   0.026848920   0.000329778   0.000405684   0.000866193  -0.001097812   0.001535525   0.000882770

    6    6.2  0.5  0.5  -0.188436986  -0.287181548   0.000570771   0.001467986   0.000834363   0.001264596   0.000236034  -0.000109427
                        -0.020706823   0.037125143  -0.001536400   0.000810738   0.000552475  -0.000744936   0.000278892   0.000132860

    7    7.2  0.5  0.5   0.000169796   0.000107691  -0.009376073   0.005583970   0.014846005  -0.016654645  -0.009665825  -0.010891563
                         0.000418897   0.001283365  -0.047241623   0.000420493  -0.115182622  -0.102506716  -0.010576769   0.014241801

    8    8.2  0.5  0.5   0.000317397  -0.000096998   0.010320914   0.016948623   0.008569445  -0.010154974  -0.026875320  -0.012540375
                        -0.000207424  -0.000450954   0.000958799   0.008041488   0.035376649   0.048549725   0.001263016  -0.012401103

    9    9.2  0.5  0.5   0.000160754   0.000325162  -0.096521495   0.020935362  -0.004807632  -0.028781845   0.001460448  -0.006008508
                         0.000377640   0.000072062   0.276719902  -0.004205035  -0.003137222  -0.025578137  -0.000507252   0.000322813

   10   10.2  0.5  0.5   0.000696837  -0.000241851   0.017096285   0.012331201   0.077269394  -0.096451047   0.000170261   0.000977358
                         0.002252269  -0.000443948  -0.036512024  -0.032930005   0.096929362  -0.087304468   0.006226966   0.000607506

   11   11.2  0.5  0.5  -0.000029285   0.000157795   0.304504855  -0.000159810  -0.000855824   0.000123417  -0.000132493   0.002038422
                         0.000146647   0.001232806   0.103035779  -0.019165082  -0.055703949  -0.041571791   0.003368537  -0.005382472

   12   12.2  0.5  0.5  -0.009567506   0.059474655  -0.001788689   0.000004031   0.000009157   0.000035738  -0.000008311   0.000127866
                         0.058756808   0.444244283  -0.000607123   0.000113474   0.003079537   0.002372191   0.000217942  -0.000337608

   13    1.2  0.5 -0.5  -0.000229740   0.001411940   0.000104646  -0.000000000   0.000011481   0.000077491  -0.000002562   0.000032763
                         0.000106778  -0.000656242  -0.000107881   0.000000000  -0.000011363  -0.000076690  -0.000001244   0.000015912

   14    2.2  0.5 -0.5  -0.001579770  -0.000268863  -0.000006797   0.000031573  -0.000133917   0.000142456   0.000055238   0.000020374
                         0.000459913  -0.000097416   0.000040214   0.000013646   0.000111371  -0.000153729   0.000004570   0.000010118

   15    3.2  0.5 -0.5  -0.000138636   0.000612918  -0.000204856   0.000000924   0.000000361   0.000027541   0.000000601   0.000013389
                         0.000260280   0.001474631  -0.000108539   0.000014999   0.000167280   0.000104248   0.000006747  -0.000005135

   16    4.2  0.5 -0.5  -0.166065749  -0.303027173   0.001364872   0.000351046  -0.001527702  -0.001736904  -0.000296456   0.000244714
                         0.027237546  -0.007066829  -0.003850867   0.000280898  -0.000079291   0.000505233  -0.000131263   0.000281326

   17    5.2  0.5 -0.5  -0.074158773   0.038706125  -0.000274696   0.000296839   0.000063257  -0.000259933  -0.000087009   0.000532045
                         0.064074747   0.329771913  -0.000299471   0.000167624  -0.001607151  -0.000961425   0.000939119  -0.001448645

   18    6.2  0.5 -0.5   0.276074525  -0.162154213   0.000440164  -0.001500216  -0.001422842   0.000204411   0.000040389   0.000334159
                        -0.087374906   0.098200211  -0.001618189  -0.000660044   0.000360076  -0.000979595   0.000167316  -0.000147752

   19    7.2  0.5 -0.5   0.000443255  -0.000022579   0.003586079  -0.027381281  -0.060268517   0.091574714   0.003575296  -0.013315357
                         0.001209193  -0.000451437  -0.004300881  -0.039622558  -0.084573695   0.071424870   0.017569072   0.005291266

   20    8.2  0.5 -0.5  -0.000102107   0.000375252   0.006028589  -0.006497840   0.041369047  -0.018794046   0.016698084  -0.023623153
                        -0.000449825   0.000054324  -0.017764501   0.008075805   0.027364233  -0.031172528  -0.005676473  -0.012877293

   21    9.2  0.5 -0.5  -0.000264496  -0.000013390   0.017594811   0.265830485   0.002464800  -0.001210295   0.005263754   0.001092099
                         0.000202398  -0.000410213  -0.012099351   0.123387424  -0.038426039   0.005611656   0.002915351   0.001094319

   22   10.2  0.5 -0.5   0.000032205  -0.000317370   0.032222510  -0.038111386   0.007141787  -0.013262311  -0.001144559   0.002873565
                        -0.000504524  -0.002336145   0.014076704  -0.013150404  -0.129899459  -0.123247602   0.000119481  -0.005526908

   23   11.2  0.5 -0.5   0.000376509  -0.000088365   0.013645201  -0.138057141  -0.029330478   0.038575420   0.000517869   0.001352453
                         0.001184462  -0.000120642   0.013458619   0.290309842  -0.029461027   0.040194518  -0.005732188  -0.003087955

   24   12.2  0.5 -0.5   0.133306387  -0.033441014  -0.000078644   0.000809610   0.001643264  -0.002159724   0.000032474   0.000087738
                         0.427924789  -0.049250363  -0.000081901  -0.001706617   0.001711213  -0.002195274  -0.000359548  -0.000199674

   25    1.2  1.5  1.5   0.040089942   0.302877496  -0.003834894   0.000727357   0.000927192   0.000731183   0.001107394  -0.001702511
                         0.006485729  -0.040656803   0.011310846   0.000005342   0.000006084  -0.000027318   0.000053979  -0.000635317

   26    2.2  1.5  1.5  -0.006951267   0.042709353   0.010624032  -0.000050672   0.000208533  -0.000219591   0.000042706   0.000624671
                         0.041971226   0.317009528   0.003610686  -0.000708533   0.002263031   0.002147568   0.001020174  -0.001520316

   27    3.2  1.5  1.5   0.000902622   0.001843614   0.000933671   0.000672777  -0.002397655   0.003042030  -0.001106771  -0.000555153
                         0.002952994   0.026724458   0.000216936   0.000265074   0.002491302  -0.002843710  -0.000017303  -0.000384223

   28    4.2  1.5  1.5  -0.004903055  -0.040928440  -0.178155546   0.033438410  -0.047459290  -0.038747734   0.071472073  -0.117041178
                        -0.001029388   0.005572388   0.522284972   0.000267116  -0.001158910   0.001342250   0.003062958  -0.044016631

   29    5.2  1.5  1.5   0.001964555  -0.004569485   0.517818100   0.000178895   0.002068794  -0.000071452  -0.009299723  -0.008853325
                        -0.004692554  -0.032436737   0.176565526  -0.033278995   0.175702213   0.140341681  -0.005245387   0.005621109

   30    6.2  1.5  1.5  -0.067522219   0.007376488   0.008192556   0.006188522  -0.103354297   0.131544607   0.536211448   0.297490006
                         0.020944421  -0.005841532   0.007332387   0.002270701   0.102083420  -0.126449451   0.049444160   0.126946125

   31    7.2  1.5  1.5   0.009528503  -0.002394967  -0.005160655   0.051883630   0.114029861  -0.149847727  -0.034165440  -0.089592881
                         0.030607147  -0.003521991  -0.005393844  -0.109081881   0.119271841  -0.152170745   0.372843071   0.208881792

   32    8.2  1.5  1.5  -0.019254522   0.004839041  -0.001930017   0.023843880   0.064251311  -0.083820866   0.030902771   0.077701452
                        -0.061773881   0.007105869  -0.001839315  -0.050061891   0.066876395  -0.085764384  -0.333591963  -0.184280709

   33    9.2  1.5  1.5   0.000044484  -0.000008278  -0.000101068   0.001005124   0.000018431  -0.000023504   0.000022625   0.000054775
                         0.000145669  -0.000012553  -0.000096832  -0.002115313   0.000013625  -0.000023016  -0.000222473  -0.000122246

   34    1.2  1.5  0.5   0.166665825  -0.021061966   0.000129923   0.002756152   0.004377082  -0.005500196   0.000309911   0.000173376
                        -0.052092855   0.013311431  -0.000156174   0.001311675  -0.004145644   0.005439990   0.000029716   0.000078294

   35    2.2  1.5  0.5   0.056898777   0.017767525  -0.000225080   0.001375917  -0.000634872  -0.000421182   0.000237017   0.000599669
                         0.169762805  -0.023603305   0.000119383  -0.002858307  -0.000056810   0.000051688  -0.002505690  -0.001387653

   36    3.2  1.5  0.5  -0.045678322  -0.373295767   0.001023044  -0.000100661   0.007214576   0.005636244   0.000036750   0.000000902
                         0.006333483   0.048138660  -0.003053061  -0.000251300  -0.000005812  -0.000121561  -0.000211515  -0.000136248

   37    4.2  1.5  0.5   0.064083453  -0.007371595   0.006578348   0.147112003  -0.298033018   0.376026979  -0.084664546  -0.048782747
                        -0.020088754   0.005011903  -0.005555820   0.070289174   0.282948677  -0.371304605  -0.008077731  -0.021276067

   38    5.2  1.5  0.5   0.020033973  -0.005017454  -0.006833626   0.060989164   0.022844133  -0.040769642  -0.027413033  -0.081235247
                         0.063918768  -0.007353492  -0.003279884  -0.127229611   0.030119469  -0.038588356   0.316597304   0.178435960

   39    6.2  1.5  0.5   0.000922237   0.000385591   0.048915944  -0.007165542   0.273597989   0.215238433  -0.101866506   0.152464664
                         0.001066604  -0.000168161  -0.143967214  -0.002203557   0.002069339  -0.007127948   0.001343094   0.061312721

   40    7.2  1.5  0.5   0.001429717  -0.008919203   0.149035882  -0.000086149  -0.000912317  -0.004094176   0.003629219  -0.051406279
                        -0.008820463  -0.066642996   0.050487399  -0.009414969  -0.301047254  -0.232692350  -0.091114143   0.137373123

   41    8.2  1.5  0.5   0.000667914  -0.004160670  -0.276148115  -0.000043058   0.000021699  -0.001128372   0.002854949  -0.044366052
                        -0.004115733  -0.031086252  -0.093676052   0.017669958  -0.077929685  -0.060634026  -0.078099735   0.117814984

   42    9.2  1.5  0.5   0.000000012  -0.000007129  -0.000432077   0.000000192  -0.000000170  -0.000000078   0.000006875  -0.000089121
                        -0.000010286  -0.000061255  -0.000146610   0.000028551   0.000390878   0.000299723  -0.000165737   0.000238231

   43    1.2  1.5 -0.5  -0.024710288  -0.173094941  -0.000977497   0.000202560  -0.007735997  -0.006027246   0.000190160  -0.000291754
                        -0.003194100   0.023006615   0.002891602   0.000015481   0.000002428   0.000132376   0.000005316  -0.000108662

   44    2.2  1.5 -0.5   0.026060588   0.019953740  -0.003009657  -0.000242406  -0.000335721   0.000411284  -0.000066817   0.000881474
                         0.013915700   0.177929000  -0.001002512   0.000078439   0.000259533  -0.000486965   0.001510205  -0.002357469

   45    3.2  1.5 -0.5  -0.358808112   0.044092256  -0.000110294   0.002903758   0.004091564  -0.005131968  -0.000058712   0.000059348
                         0.113682887  -0.013509075  -0.000247224   0.001391400  -0.003878290   0.005070803   0.000122952  -0.000206317

   46    4.2  1.5 -0.5  -0.008797257  -0.066580296  -0.051975684   0.008568152   0.528453444   0.410865915  -0.053176145   0.079686567
                        -0.001438000   0.008792680   0.154534908  -0.000853557  -0.000596944  -0.008534261  -0.002173727   0.029721814

   47    5.2  1.5 -0.5  -0.001450663   0.008772946  -0.133788322  -0.002403729  -0.001833575   0.004950028   0.004881519  -0.113655147
                         0.008783181   0.066407864  -0.044807778   0.007188753   0.056105819   0.037477114  -0.195996756   0.296762253

   48    6.2  1.5 -0.5   0.000420545  -0.000386767   0.003407404   0.137396258   0.157998293  -0.193008689   0.163931336   0.091044370
                        -0.000010024   0.001355941  -0.006677593   0.065127541  -0.146338410   0.193927274   0.011456028   0.045711175

   49    7.2  1.5 -0.5   0.020000445  -0.005014173  -0.006697972   0.067528688   0.160772286  -0.211116591   0.013773956   0.036541021
                         0.064193639  -0.007396129  -0.006617117  -0.142128631   0.168269914  -0.214616090  -0.146028280  -0.083544671

   50    8.2  1.5 -0.5   0.009329193  -0.002340390   0.012713267  -0.125031736   0.041849656  -0.054833337   0.011562312   0.031551811
                         0.029943821  -0.003450789   0.012272005   0.263438891   0.043890370  -0.055374555  -0.125359602  -0.071499668

   51    9.2  1.5 -0.5   0.000019353  -0.000004346   0.000020360  -0.000195604  -0.000210889   0.000275076   0.000023911   0.000066222
                         0.000058553  -0.000009322   0.000020017   0.000412219  -0.000212978   0.000277704  -0.000253229  -0.000152088

   52    1.2  1.5 -1.5  -0.291796725   0.033621457   0.000502597   0.010788880  -0.000538917   0.000654737   0.001809000   0.001019707
                         0.090787799  -0.022778625  -0.000525808   0.005122665   0.000494918  -0.000656537   0.000172305   0.000435238

   53    2.2  1.5 -1.5   0.094882843  -0.023993717   0.000473295  -0.004805397   0.001666737  -0.001443661   0.000102284   0.000484104
                         0.305477292  -0.035131261   0.000529696   0.010139786   0.001371953  -0.001755174  -0.001640461  -0.000899012

   54    3.2  1.5 -1.5   0.009591976  -0.000426098   0.000278162  -0.000494365  -0.004162519  -0.003456625   0.000667230  -0.001003124
                         0.025011788  -0.003058323  -0.000667472   0.000821222   0.000118634  -0.000084157  -0.000103084  -0.000467957

   55    4.2  1.5 -1.5   0.039464097  -0.004012408   0.023090145   0.498932844   0.028484773  -0.032917269   0.124510894   0.065628816
                        -0.012197283   0.003000029  -0.024187679   0.235768970  -0.026302211   0.034207903   0.011538565   0.028469237

   56    5.2  1.5 -1.5  -0.009527667   0.003759352   0.024011827  -0.233800157   0.098771039  -0.122123408   0.005508031  -0.010656887
                        -0.031340799   0.003427363   0.023042474   0.494619506   0.099699922  -0.126338516   0.008924115   0.000655514

   57    6.2  1.5 -1.5  -0.009151368  -0.070059345   0.002678947  -0.000441060  -0.182445588  -0.145269110  -0.323058443   0.503934821
                        -0.002188276   0.009466102  -0.006023050   0.010985779   0.002656097   0.000144807  -0.015775447   0.189781819

   58    7.2  1.5 -1.5   0.000687396  -0.004259507   0.114422263  -0.000278473  -0.000534383  -0.002850520  -0.010664699   0.132153636
                        -0.004203305  -0.031771786   0.038708057  -0.007459783  -0.213564958  -0.164986229   0.227034693  -0.350306508

   59    8.2  1.5 -1.5  -0.001393240   0.008575753   0.052535411   0.000023558  -0.000751986  -0.001375034   0.010613675  -0.117940610
                         0.008483430   0.064134276   0.017741312  -0.002665987  -0.119920397  -0.092729674  -0.199710404   0.313573901

   60    9.2  1.5 -1.5   0.000002216  -0.000021057   0.002218176   0.000000865   0.000000516   0.000003516   0.000004135  -0.000076841
                        -0.000014873  -0.000150848   0.000751345  -0.000139965  -0.000032892  -0.000022649  -0.000133892   0.000210004


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.000004015  -0.000054151   0.000592953   0.000051390  -0.000133660   0.000111288   0.000013595   0.000122031
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000062409  -0.000112826  -0.000144527   0.000183880  -0.000423198  -0.000039975   0.000132589  -0.000005593
                        -0.000078408  -0.000009858  -0.000057340   0.000267628  -0.000015045  -0.000028264   0.000048510  -0.000011202

    3    3.2  0.5  0.5   0.000077008   0.000038917   0.000108790   0.000058115   0.000006953  -0.000444200   0.000014516   0.000025935
                        -0.000026676   0.000036499   0.000331058   0.000012075  -0.000027133   0.000054254  -0.000008660   0.000056699

    4    4.2  0.5  0.5  -0.000637529   0.000755309   0.004295178   0.000618582  -0.000497257  -0.000561735  -0.000231910   0.000492710
                        -0.000746804  -0.000803317   0.000534481   0.000237080   0.000144905  -0.001622821  -0.000223338   0.000527982

    5    5.2  0.5  0.5   0.000835557   0.000916649   0.000119304   0.000373389  -0.000608499   0.002438074  -0.000588483   0.000540606
                        -0.000243220   0.000450979   0.000660269   0.000372983   0.000139557  -0.000375283   0.000624781  -0.003682840

    6    6.2  0.5  0.5   0.000462738  -0.000428833   0.001593358  -0.001270200   0.001455415   0.000518014   0.000300716   0.000461797
                        -0.001002336  -0.000294187   0.000559327  -0.001943910   0.000170010  -0.000678269   0.000222277  -0.000612857

    7    7.2  0.5  0.5   0.001361304   0.000079075  -0.017823565   0.159739376  -0.054036356  -0.041949127  -0.083697364   0.166440835
                         0.000939360  -0.002833863  -0.063554915  -0.180111805   0.520358316   0.200610703  -0.070487555  -0.038367363

    8    8.2  0.5  0.5  -0.000923367   0.000515185  -0.006134178  -0.071310804  -0.015129910   0.055892968  -0.091209166   0.475460209
                        -0.001729683   0.000007267   0.012052545   0.054345451  -0.245153764   0.345282069  -0.051371397   0.079335863

    9    9.2  0.5  0.5  -0.000454980   0.000713942   0.035281968   0.205500655   0.209314388  -0.009845270   0.400365725   0.129335309
                         0.000668726  -0.000379376  -0.075366791   0.228390361   0.067233166   0.039773226   0.146622818  -0.082060367

   10   10.2  0.5  0.5  -0.001226837  -0.000948430   0.053206326  -0.090290557   0.001998297  -0.225318199  -0.114713354   0.035224840
                         0.000098085  -0.000103885  -0.330660260  -0.019077605  -0.094664953   0.000896132   0.071102776  -0.454370275

   11   11.2  0.5  0.5  -0.001808965  -0.000115342  -0.037363513   0.424042064   0.008214339   0.012659684  -0.012739628   0.000243873
                        -0.001622347   0.002820595  -0.048191877  -0.323167296  -0.235489065  -0.028963660   0.037996927   0.012584536

   12   12.2  0.5  0.5   0.000059320   0.000008114   0.000379625  -0.004397346   0.000119337   0.000155590  -0.000249368   0.000022341
                         0.000054265  -0.000096496   0.000539017   0.003353132  -0.003024669  -0.000362646   0.000719976   0.000166147

   13    1.2  0.5 -0.5  -0.000014533  -0.000001078   0.000024195  -0.000279166  -0.000008788  -0.000010554   0.000108448  -0.000012082
                        -0.000052165  -0.000003868   0.000045338  -0.000523125  -0.000110940  -0.000133243   0.000055953  -0.000006234

   14    2.2  0.5 -0.5  -0.000039775   0.000058783   0.000322683   0.000118632   0.000031332  -0.000048416  -0.000010106  -0.000140072
                        -0.000106041  -0.000081161   0.000036225   0.000100511   0.000037619  -0.000420689   0.000007391  -0.000017684

   15    3.2  0.5 -0.5   0.000045604   0.000005031   0.000038014  -0.000343290  -0.000019008  -0.000026499   0.000049046  -0.000008929
                         0.000027694  -0.000081342   0.000045586   0.000059886   0.000447097   0.000009074  -0.000038496  -0.000014352

   16    4.2  0.5 -0.5  -0.000571147   0.000890501   0.000500392  -0.002493734   0.001662111   0.000105187   0.000679953   0.000308499
                         0.000943186   0.000413724   0.000434117  -0.003537727   0.000431837  -0.000507146  -0.000243295  -0.000092143

   17    5.2  0.5 -0.5   0.000680435   0.000010061   0.000504853  -0.000638683   0.000181591   0.000091072  -0.001208213   0.000236505
                         0.000761995  -0.000870178   0.000153815   0.000205605  -0.002460095  -0.000617619   0.003520765   0.000825063

   18    6.2  0.5 -0.5  -0.000398480   0.000841382  -0.002313007  -0.001243621   0.000635247   0.000284405   0.000129388  -0.000369160
                        -0.000334151  -0.000714758  -0.000205412  -0.001142384  -0.000569956   0.001437446   0.000756379   0.000059651

   19    7.2  0.5 -0.5  -0.002708686  -0.001270232  -0.083694990   0.064461924  -0.196671817   0.514466550   0.130321577   0.106700369
                         0.000836692  -0.001059272   0.225725673  -0.014197434   0.057659170  -0.094957219   0.110412375  -0.024264696

   20    8.2  0.5 -0.5   0.000145260   0.001914035   0.014371996  -0.007745190  -0.348617448  -0.245582981   0.458911616   0.104610931
                         0.000494336   0.000425303  -0.088499178   0.011086208  -0.028453574   0.004275665   0.147501589  -0.003832152

   21    9.2  0.5 -0.5  -0.000173860  -0.000522093   0.298245318   0.049880389  -0.038871610   0.083551537   0.077312461  -0.423028366
                         0.000789564   0.000617755   0.073772667  -0.066610189   0.012955182   0.203351795   0.132228247  -0.053272569

   22   10.2  0.5 -0.5  -0.000354602   0.000234757  -0.059340303   0.266670772   0.016898701  -0.094211565  -0.177032358   0.069342368
                        -0.000885759   0.001208155  -0.070675795  -0.202617423   0.224685398   0.009467184   0.419943664   0.115785985

   23   11.2  0.5 -0.5   0.002686172   0.002048302  -0.085468498   0.060107612   0.027873561  -0.234105105   0.005986942  -0.006100682
                        -0.000868068   0.001307220   0.526254605   0.010274438  -0.014907241   0.026783857  -0.011071881   0.039608664

   24   12.2  0.5 -0.5  -0.000090779  -0.000068194   0.000887960  -0.000654271   0.000349228  -0.003005801   0.000096035  -0.000108511
                         0.000033713  -0.000042581  -0.005458175  -0.000081147  -0.000183740   0.000357805  -0.000137409   0.000754172

   25    1.2  1.5  1.5   0.000884452  -0.001556901   0.000286871   0.001408241   0.001640014   0.000199788   0.006723938   0.001716011
                        -0.001017629  -0.000080365  -0.000151385   0.001841052   0.000042933   0.000108708   0.002307326  -0.000234378

   26    2.2  1.5  1.5   0.001025272   0.000077433  -0.001457352   0.005886376   0.000319647   0.000287058   0.002503603  -0.002706497
                         0.000896031  -0.001562342  -0.000856301  -0.004383529  -0.007535034  -0.001550649  -0.005634188  -0.001751664

   27    3.2  1.5  1.5   0.000062159   0.000042082   0.011256456   0.000658477  -0.000431344   0.000918025  -0.005190119   0.029710731
                         0.000006464  -0.000185151   0.001786937  -0.001729051  -0.001522964   0.007646581  -0.004488682   0.004229070

   28    4.2  1.5  1.5   0.104514342  -0.182788154  -0.016590163  -0.102411392   0.171569364   0.020575695  -0.012353009  -0.002694879
                        -0.121666245  -0.010275962   0.011564203  -0.134298566   0.005906006   0.008699182  -0.004261507   0.000441619

   29    5.2  1.5  1.5   0.048076992   0.004937642  -0.008089768   0.088722506  -0.009888448  -0.012820667  -0.003775834   0.000624653
                         0.039620454  -0.078961811  -0.011031628  -0.067801303   0.268062502   0.033195475   0.010604185   0.002627399

   30    6.2  1.5  1.5   0.067940743  -0.100536021   0.020391329   0.001240364   0.004282046  -0.006998366   0.001917482  -0.011658969
                         0.206170883   0.157290405   0.003122448  -0.005182864   0.011899679  -0.058297372   0.001693048  -0.001771073

   31    7.2  1.5  1.5   0.006669578   0.004684355  -0.032262160   0.023716293   0.011356889  -0.096637735   0.043087005  -0.046908289
                        -0.003165681   0.005353860   0.198238694   0.003205758  -0.005517766   0.011092680  -0.057583377   0.321570643

   32    8.2  1.5  1.5   0.369252160   0.283503703  -0.029616221   0.021422768  -0.014104034   0.121903721   0.017684308  -0.019305428
                        -0.120622203   0.181228461   0.182566375   0.002775079   0.007233628  -0.014404674  -0.023612249   0.132030221

   33    9.2  1.5  1.5   0.000047761   0.000037041   0.000971336  -0.000708014  -0.000281487   0.002444475  -0.000389546   0.000424183
                        -0.000018433   0.000028539  -0.005964273  -0.000095567   0.000134863  -0.000279062   0.000521858  -0.002926476

   34    1.2  1.5  0.5  -0.000027271   0.000044655  -0.005065255  -0.000028975  -0.000827183   0.001438075   0.003285005  -0.018191375
                        -0.000071947  -0.000062582  -0.000820340   0.000661216  -0.001436820   0.012382269   0.002452012  -0.002668456

   35    2.2  1.5  0.5   0.000353684   0.000176277   0.000660724  -0.001110903   0.003942381  -0.016870597   0.002975636  -0.003737968
                        -0.000149082   0.000158836  -0.004638501  -0.000782491  -0.000924249   0.002102910  -0.004591635   0.024919650

   36    3.2  1.5  0.5  -0.000451732   0.000866670   0.001146324   0.006479172  -0.023469870  -0.004253424   0.004641077   0.000798698
                         0.000534812   0.000054673  -0.001121908   0.008584873  -0.000958269  -0.001029777   0.001118874   0.001916039

   37    4.2  1.5  0.5  -0.015154632   0.020764994  -0.089748167  -0.003123150   0.003497614  -0.012353207   0.000673913  -0.001959419
                        -0.045792485  -0.035131175  -0.014756802   0.008561624   0.011754865  -0.101711844   0.000366040  -0.000196425

   38    5.2  1.5  0.5   0.380833305   0.288002508  -0.029336951   0.017126155  -0.024016113   0.159861251  -0.008270379   0.010057922
                        -0.127715322   0.189761338   0.176974027  -0.002292638   0.009132346  -0.019305467   0.012449745  -0.067420079

   39    6.2  1.5  0.5  -0.068772045   0.138246000   0.031514404   0.207345357   0.290935438   0.037733192  -0.040418273  -0.008918359
                         0.084362153   0.010051178  -0.020386674   0.271550818   0.011021801   0.012558165  -0.013482818   0.000347482

   40    7.2  1.5  0.5  -0.216415292  -0.016285133   0.020593556  -0.237471674   0.003949321   0.005364455  -0.043720538   0.004850150
                        -0.190119107   0.331602663   0.028814690   0.180879832  -0.103263218  -0.012381507   0.127075697   0.029287146

   41    8.2  1.5  0.5  -0.135437130  -0.009890837  -0.015783650   0.180214890   0.009642150   0.012080085   0.112277372  -0.012544241
                        -0.119180361   0.207783037  -0.021486828  -0.137362357  -0.258417838  -0.030881730  -0.326168696  -0.075588894

   42    9.2  1.5  0.5  -0.000588059  -0.000046021   0.000204931  -0.002390041   0.000169508   0.000209003  -0.000533514   0.000060318
                        -0.000511743   0.000892490   0.000291680   0.001812503  -0.004312280  -0.000511169   0.001545297   0.000356020

   43    1.2  1.5 -0.5   0.000048302  -0.000076627  -0.000569707  -0.003108487   0.012457161   0.001497652   0.017389951   0.004043625
                        -0.000059812  -0.000006962   0.000336867  -0.004082533   0.000455831   0.000711143   0.005969622  -0.000672841

   44    2.2  1.5 -0.5  -0.000200317  -0.000048695   0.001213362  -0.003781183   0.000764173   0.000610057  -0.008104186   0.000539067
                        -0.000127184   0.000380718   0.000611678   0.002766749  -0.016983973  -0.004003053   0.023859663   0.005444900

   45    3.2  1.5 -0.5  -0.000285254   0.000393962  -0.010624324  -0.000450092  -0.001362429   0.002808552  -0.001588327   0.004637482
                        -0.000820205  -0.000578688  -0.001674354   0.001539530  -0.004158828   0.023320916   0.001336542   0.001133682

   46    4.2  1.5 -0.5   0.028269778  -0.048179673  -0.006082981  -0.055272972  -0.102369705  -0.011994346   0.001831372   0.000766732
                        -0.029431345  -0.002309467   0.006786222  -0.072231539  -0.004283055  -0.002558481   0.000723865  -0.000016295

   47    5.2  1.5 -0.5  -0.260090888  -0.020826785  -0.006040447   0.142320975  -0.006621895  -0.007207421   0.021974871  -0.001641359
                        -0.226511677   0.401137700  -0.016188711  -0.109202577   0.160886517   0.024662248  -0.064527001  -0.014856018

   48    6.2  1.5 -0.5  -0.046783273   0.062811231  -0.337191556  -0.003148701   0.015498517  -0.033960822   0.007766295  -0.042101246
                        -0.130477232  -0.088889348  -0.055079927   0.037401334   0.036623725  -0.289156656   0.004398016  -0.006550446

   49    7.2  1.5 -0.5  -0.315067893  -0.241223812  -0.047775736   0.035116949  -0.011919247   0.102628920  -0.017738895   0.019412449
                         0.104679293  -0.157454520   0.294665554   0.004602262   0.006325398  -0.012091070   0.023803204  -0.132976972

   50    8.2  1.5 -0.5  -0.197506435  -0.151155399   0.036339859  -0.026387507  -0.029831409   0.256849537   0.045806632  -0.049774338
                         0.065290332  -0.098484616  -0.223663225  -0.003808788   0.014480910  -0.030017758  -0.061423053   0.341342558

   51    9.2  1.5 -0.5  -0.000847400  -0.000650787  -0.000473810   0.000353814  -0.000493069   0.004285430  -0.000216845   0.000234417
                         0.000283848  -0.000429151   0.002961919   0.000043473   0.000248714  -0.000509494   0.000288733  -0.001617909

   52    1.2  1.5 -1.5  -0.000495239   0.000742940   0.002287252  -0.000001503  -0.000124145   0.000172301   0.001417529  -0.007033416
                        -0.001478221  -0.001125106   0.000375624  -0.000324361  -0.000190580   0.001631503   0.000995107  -0.001032547

   53    2.2  1.5 -1.5  -0.001484249  -0.001138312  -0.001095969   0.001441590   0.001523140  -0.007486265  -0.003208393   0.000358450
                         0.000493875  -0.000747196   0.007256969   0.000882578  -0.000408607   0.000913646   0.000315706  -0.006154967

   54    3.2  1.5 -1.5  -0.000167065  -0.000022908  -0.001215418  -0.006876109  -0.007695196  -0.001552269   0.028342608   0.006670520
                         0.000090227  -0.000058144   0.001394981  -0.009089558  -0.000311354  -0.000309738   0.009864540  -0.001609275

   55    4.2  1.5 -1.5  -0.058953502   0.089154787  -0.166699031  -0.002391616  -0.010296758   0.019435374  -0.002192412   0.012931917
                        -0.173325097  -0.133331717  -0.027122517   0.020080948  -0.019824524   0.170567271  -0.001628106   0.001876914

   56    5.2  1.5 -1.5  -0.074740107  -0.051069364  -0.018045709   0.013541219  -0.032079449   0.266444635   0.001759825  -0.001506661
                         0.025947338  -0.035680494   0.110195518   0.001943333   0.015401883  -0.031024868  -0.002048519   0.011155072

   57    6.2  1.5 -1.5   0.124539781  -0.216840928  -0.003988542  -0.012355100   0.058667955   0.012200649  -0.011173228  -0.002480330
                        -0.139059720  -0.010118761   0.003534418  -0.016519912   0.002373118   0.003329028  -0.003771899   0.000625391

   58    7.2  1.5 -1.5   0.006414593   0.001259651   0.013994012  -0.159704240  -0.003427137  -0.004603751   0.105758644  -0.011887900
                         0.003075712  -0.007274482   0.019414095   0.121794837   0.097211903   0.011757132  -0.307283542  -0.070929635

   59    8.2  1.5 -1.5   0.250663691   0.017101876   0.012534245  -0.147123269   0.004733685   0.006097329   0.043381546  -0.004889195
                         0.224467856  -0.388077826   0.017593429   0.112081870  -0.122660523  -0.014631191  -0.126185262  -0.029092418

   60    9.2  1.5 -1.5   0.000037433   0.000004939  -0.000417650   0.004804590   0.000085165   0.000112215  -0.000964871   0.000106903
                         0.000028023  -0.000050956  -0.000579642  -0.003664964  -0.002458878  -0.000291258   0.002795214   0.000642381


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5   0.000135259  -0.001208215  -0.030076505  -0.001047760   0.012397198   0.003344717  -0.000144130   0.000000099
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.002026662  -0.001571736   0.008230639  -0.005122460   0.012303631   0.026735812  -0.000029833   0.000065003
                         0.000023815  -0.000132448   0.002119530   0.007709412   0.003065796  -0.006011846  -0.000009477   0.000071153

    3    3.2  0.5  0.5  -0.000591577   0.000303883  -0.003427845   0.001094328  -0.011198517   0.011002055   0.000487420   0.000061469
                        -0.001116699   0.001189516  -0.023254120   0.000779875  -0.015565944   0.005266841   0.000069077   0.000085685

    4    4.2  0.5  0.5  -0.284579199   0.095648515   0.254382669  -0.023537993   0.016260324   0.100426771   0.001405987  -0.001126364
                         0.120766267  -0.145004443   0.075013739   0.039319748   0.066511906  -0.052141823   0.000081255  -0.001312987

    5    5.2  0.5  0.5  -0.172425964   0.088331196   0.048009309   0.003410345  -0.114579226   0.135940102  -0.008215867  -0.001686337
                        -0.209482283   0.220358221  -0.180222121   0.017357890  -0.139109565   0.039185119  -0.001119537  -0.002013742

    6    6.2  0.5  0.5   0.142048711   0.336525307   0.123627393   0.036044411  -0.156625742  -0.199440534  -0.002259561   0.002889492
                         0.018531042  -0.011662917  -0.005498503  -0.046081316  -0.016209468   0.038136542  -0.000417031   0.003214441

    7    7.2  0.5  0.5  -0.003423424   0.001896865   0.027008197   0.018552760   0.092665826  -0.091723617   0.013077703   0.007852538
                         0.002628592   0.003278607  -0.020869756   0.066027414  -0.171124075  -0.205467429   0.084357746   0.042059725

    8    8.2  0.5  0.5  -0.004657044   0.004987013   0.069600042  -0.018157714   0.182521423  -0.047330439  -0.032230201  -0.034951509
                         0.001483544  -0.004163428   0.016133819  -0.004625966  -0.136683441   0.205484117   0.224644384   0.023699442

    9    9.2  0.5  0.5   0.004911846   0.006788558   0.029150273   0.180989475   0.071710272   0.056921204   0.080342383  -0.152876374
                        -0.000877265   0.001970496  -0.023295278  -0.247279221   0.002112499  -0.044935202   0.016143527  -0.169553963

   10   10.2  0.5  0.5  -0.006250050   0.005698552   0.041189181  -0.013011523   0.122864896  -0.087662969   0.233157892   0.049042475
                        -0.011428038   0.011303222  -0.222050754   0.036033448   0.169646042  -0.015829523   0.021742069   0.060866362

   11   11.2  0.5  0.5  -0.000064113  -0.000075705  -0.009227225   0.248395157  -0.003945734   0.009445273  -0.001952985   0.008172977
                         0.002618996   0.002228432   0.020463140   0.171254221   0.023366693   0.048315340   0.001607887  -0.007576365

   12   12.2  0.5  0.5   0.007966757   0.000801176  -0.000078377   0.002105525   0.000128205  -0.000436325   0.000007836  -0.000063655
                        -0.178820070  -0.164057493   0.000171989   0.001465282  -0.001126099  -0.002245806  -0.000011685   0.000053110

   13    1.2  0.5 -0.5  -0.001074391  -0.000120277  -0.000757945   0.021757227   0.001947539  -0.007218556  -0.000000082  -0.000119712
                         0.000552691   0.000061873   0.000723408  -0.020765818  -0.002719232   0.010078837   0.000000055   0.000080265

   14    2.2  0.5 -0.5  -0.001337060   0.001813079  -0.009028402  -0.004490618   0.020455137  -0.004671604  -0.000014366  -0.000019501
                         0.000836759  -0.000905908  -0.002040242   0.007215967  -0.018235497   0.011787899   0.000095298   0.000024485

   15    3.2  0.5 -0.5  -0.000273913   0.000015224   0.000253181  -0.013575727   0.002124296  -0.006134410  -0.000003337   0.000366373
                        -0.001196772  -0.001263625  -0.001319719  -0.019188638  -0.012011336  -0.018167950   0.000105400  -0.000328817

   16    4.2  0.5 -0.5   0.151385798   0.308302551  -0.044174954  -0.132227458   0.100866764   0.044605776   0.000204340   0.001122537
                         0.085189595  -0.022789224  -0.012192340   0.229898897  -0.051285495   0.051947633  -0.001717811  -0.000850478

   17    5.2  0.5 -0.5  -0.022254192   0.057501223  -0.009517434  -0.159161090   0.047297044  -0.046378717   0.000279195  -0.006200483
                        -0.236357561  -0.265154954  -0.014911246  -0.097224761  -0.133334822  -0.174151901  -0.002611693   0.005505256

   18    6.2  0.5 -0.5   0.304586282  -0.117838210   0.057890459  -0.093227926  -0.147133626   0.078020784  -0.000609848  -0.001644507
                        -0.143570550   0.081457915   0.008448787   0.081378866   0.139937909  -0.136774000   0.004279005   0.001604720

   19    7.2  0.5 -0.5   0.000186984   0.004246674  -0.032166526  -0.033946798   0.113635417  -0.193079534   0.016900743  -0.036116441
                        -0.003783173   0.000771417  -0.060573417   0.003550257   0.194208853  -0.024304277   0.039307095  -0.077348939

   20    8.2  0.5 -0.5   0.006339180   0.004819861  -0.009941299  -0.039209075  -0.194616434  -0.217400039   0.042228227  -0.151873516
                         0.001420998  -0.000811115   0.015883095   0.059725325  -0.081168570   0.068801570   0.000219949  -0.168636652

   21    9.2  0.5 -0.5   0.005135253  -0.004769101   0.301656877  -0.037171028   0.069675704  -0.040037522   0.032552310   0.057740648
                        -0.004857629   0.001466800   0.053919681   0.003274604  -0.020111987   0.059530014  -0.225964774  -0.058150921

   22   10.2  0.5 -0.5  -0.000103228   0.000330090  -0.034291175  -0.183107314  -0.038174503   0.066380141  -0.006837517   0.181548622
                        -0.012658028  -0.013021298  -0.017082869  -0.132192275   0.080486504   0.198668667   0.077866082  -0.147903408

   23   11.2  0.5 -0.5  -0.001086704   0.001255058   0.061448487   0.020803371  -0.033780313   0.021294457  -0.011007578  -0.002517540
                        -0.001946976   0.002299583  -0.295384911   0.008432173  -0.035811670   0.010397944  -0.001741288  -0.000247871

   24   12.2  0.5 -0.5   0.075759638  -0.088884606   0.000511449   0.000175445   0.001571765  -0.000990161   0.000082448   0.000013016
                         0.145519689  -0.155369280  -0.002513704   0.000070303   0.001662402  -0.000551467   0.000008663   0.000005342

   25    1.2  1.5  1.5   0.253219731   0.232322547   0.000610397   0.013385736  -0.041001747  -0.080352811   0.024342317  -0.082879779
                         0.011195000   0.001047807   0.000528222  -0.019727887  -0.003903181   0.015199405   0.001530478  -0.094639080

   26    2.2  1.5  1.5  -0.010975346  -0.001074632   0.012966980   0.013336347   0.006549410  -0.015768437   0.003141555  -0.090590320
                         0.252882604   0.232117936   0.003770378   0.010099874  -0.042212723  -0.076561428  -0.046517523   0.079663456

   27    3.2  1.5  1.5  -0.003545561   0.000206813  -0.161779561   0.005141560  -0.030887604   0.010070982  -0.034081459  -0.050860510
                         0.021714220   0.018485082  -0.033611489  -0.009604524   0.027063204  -0.025588089   0.264105627   0.036660939

   28    4.2  1.5  1.5  -0.044224772  -0.039389899   0.003892733   0.041626594  -0.120487690  -0.240158814  -0.026008907   0.087499390
                        -0.001547803  -0.000474183   0.002086070  -0.061419126  -0.013161385   0.046684866  -0.000298142   0.100681238

   29    5.2  1.5  1.5   0.000355859   0.001788080  -0.003594374   0.063908805   0.015430167  -0.047765498  -0.000293779   0.108402396
                        -0.043671425  -0.041755423   0.004306662   0.043251638  -0.126778456  -0.241538129   0.028143231  -0.094339051

   30    6.2  1.5  1.5   0.082232180  -0.088376483   0.070943890  -0.000128998  -0.173416516   0.057036580   0.000896310   0.003973982
                        -0.043811467   0.049647176   0.015284063   0.004880926   0.162370390  -0.108005980  -0.008205395  -0.002140723

   31    7.2  1.5  1.5  -0.017948249   0.021063611  -0.045321071  -0.014196765   0.118034962  -0.074134367   0.435825107   0.047972924
                        -0.034490247   0.036803592   0.218561025  -0.005545100   0.123147066  -0.042607365   0.055592423   0.071202545

   32    8.2  1.5  1.5   0.039490528  -0.046335677  -0.039068967  -0.011948976  -0.127036471   0.080052464   0.222625953   0.024664753
                         0.075832384  -0.080959990   0.185675342  -0.004533854  -0.133460374   0.046034128   0.028433108   0.036225774

   33    9.2  1.5  1.5   0.001695209  -0.001991691  -0.077438806  -0.024058554   0.068227084  -0.042713925  -0.002087051  -0.000238154
                         0.003282554  -0.003504860   0.371711583  -0.009333506   0.070616490  -0.024523915  -0.000274234  -0.000338116

   34    1.2  1.5  0.5  -0.118864879   0.124050724  -0.058692889   0.001594050  -0.089813910   0.030709447   0.029589730   0.037685006
                         0.061111927  -0.071790964  -0.012096251  -0.003913206   0.085726509  -0.053872420  -0.231040120  -0.025532006

   35    2.2  1.5  0.5  -0.035616404   0.091870776  -0.027406145  -0.009420018  -0.050342293   0.038234360  -0.231393825  -0.025331073
                        -0.113132210   0.122036128   0.129818540  -0.001676484  -0.055283803   0.018194164  -0.029698226  -0.037690083

   36    3.2  1.5  0.5  -0.292163258  -0.258856561  -0.000647763   0.011836631  -0.033889768  -0.056335413  -0.019040265  -0.003551918
                        -0.022639680   0.009236591   0.011524164  -0.018613136  -0.008040942   0.013059973  -0.001467472  -0.004469919

   37    4.2  1.5  0.5  -0.064852672   0.069264918   0.274221776  -0.005757420   0.047014700  -0.015829206   0.009283936   0.012919438
                         0.033933783  -0.039809089   0.057665928   0.016105790  -0.045095067   0.028156409  -0.073870309  -0.007181632

   38    5.2  1.5  0.5  -0.036229889   0.042579447   0.055154872   0.019827057  -0.048927897   0.032198850  -0.079777482  -0.006288221
                        -0.069406779   0.074117137  -0.260832961   0.002333169  -0.051366882   0.017657045  -0.010168127  -0.010365657

   39    6.2  1.5  0.5  -0.002948202  -0.000323303  -0.013823603  -0.155276031  -0.032070593  -0.061593623   0.034817406  -0.121900542
                        -0.001118967   0.001122447  -0.012415514   0.226086573  -0.004465135   0.011868385  -0.000760351  -0.139703919

   40    7.2  1.5  0.5   0.003423562   0.000342370  -0.005837010   0.164673258   0.009824110  -0.036995339   0.000104553  -0.163038953
                        -0.076646836  -0.070336659   0.012132881   0.112981168  -0.098346859  -0.193723649  -0.042258164   0.142282926

   41    8.2  1.5  0.5   0.001946348   0.000183616   0.006130608  -0.175054120   0.008574586  -0.031601503  -0.000600327   0.336432540
                        -0.043828306  -0.040192377  -0.013163336  -0.120794000  -0.085619269  -0.168666832   0.087187593  -0.293776082

   42    9.2  1.5  0.5   0.000316496   0.000039166   0.003203699  -0.089895867  -0.017033775   0.063768284  -0.000011770  -0.001168324
                        -0.007081885  -0.006487617  -0.006474935  -0.061197460   0.170576728   0.335931878  -0.000300857   0.001027356

   43    1.2  1.5 -0.5  -0.143151021  -0.133654503  -0.003854937  -0.034106555  -0.061679198  -0.121991300   0.045519169  -0.153242152
                        -0.007092940   0.000031031  -0.001730213   0.049273902  -0.006401895   0.023101849   0.000219768  -0.175419303

   44    2.2  1.5 -0.5  -0.025870241   0.020080245   0.005656904  -0.109456534  -0.007471112   0.015632387  -0.000050049   0.175652663
                         0.150544965   0.116894007  -0.007716656  -0.074988115   0.041678248   0.073118218   0.045411486  -0.153529244

   45    3.2  1.5 -0.5   0.234410360  -0.249446320  -0.021413701  -0.008425255   0.043420270  -0.013195872  -0.000460875   0.014997268
                        -0.110198988   0.153780551  -0.005292267  -0.007889299  -0.038195835   0.032234176   0.005690685  -0.011822315

   46    4.2  1.5 -0.5  -0.079803458  -0.073192293   0.015284868   0.158556496   0.032107891   0.064037382   0.014730077  -0.048849194
                        -0.003714903  -0.000508715   0.007675752  -0.231047136   0.003525686  -0.011964982  -0.001229858  -0.056185143

   47    5.2  1.5 -0.5  -0.003958790  -0.000467248  -0.012731919   0.219986565  -0.004393470   0.013271522   0.000549717   0.060599131
                         0.085385522   0.078292321   0.015377065   0.150604796   0.036458670   0.069687605   0.012111415  -0.052873271

   48    6.2  1.5 -0.5   0.000800951  -0.002109789   0.268423762  -0.001427857   0.045513232  -0.015043722  -0.023447735  -0.029342141
                         0.000850230   0.002343667   0.056342418   0.018525609  -0.043164553   0.028673102   0.183921535   0.018758161

   49    7.2  1.5 -0.5  -0.032479568   0.038106037  -0.041118043  -0.012599414  -0.135954613   0.085675643  -0.214654070  -0.023620268
                        -0.062389425   0.066591202   0.195426029  -0.004746813  -0.142877047   0.049277806  -0.027381771  -0.035040638

   50    8.2  1.5 -0.5  -0.018549061   0.021779785   0.043233279   0.013523263  -0.118724277   0.074600634   0.443037657   0.049053096
                        -0.035656602   0.038083456  -0.208245093   0.005289531  -0.123901982   0.042882725   0.056646931   0.072082110

   51    9.2  1.5 -0.5  -0.003002553   0.003521010   0.022777561   0.006788053   0.235979766  -0.148596028  -0.001542519  -0.000157770
                        -0.005751120   0.006152703  -0.106337100   0.002472003   0.247447309  -0.085473913  -0.000202667  -0.000256441

   52    1.2  1.5 -1.5   0.206110760  -0.220051556   0.023303978  -0.000076857  -0.059144301   0.020700959   0.016134254   0.019365968
                        -0.107206427   0.125789001   0.005029120   0.000803553   0.056476082  -0.035606859  -0.124760968  -0.014827342

   53    2.2  1.5 -1.5  -0.107136684   0.125439460   0.002674173  -0.006777069   0.053062381  -0.038132202   0.119606982   0.028514769
                        -0.205916542   0.219852250  -0.016514067   0.011680310   0.057399299  -0.019254712   0.015717575   0.036887088

   54    3.2  1.5 -1.5  -0.008271993   0.013085899   0.010350667   0.093824218   0.026667006   0.039987224   0.062660168  -0.175386969
                        -0.016532246   0.017687216   0.003397971  -0.136012407   0.006711619  -0.009353233   0.002125863  -0.200381484

   55    4.2  1.5 -1.5  -0.034810089   0.038618321   0.072518322  -0.001375696  -0.177792519   0.059456636  -0.016606363  -0.021436491
                         0.018440355  -0.021606745   0.015689974   0.004196727   0.168064134  -0.105619193   0.132352120   0.014731904

   56    5.2  1.5 -1.5   0.020690818  -0.020293698   0.016369013   0.005573619   0.168556284  -0.112054594  -0.142574157  -0.015916878
                         0.036312568  -0.038671512  -0.075412830   0.000633748   0.179474203  -0.061275076  -0.017987373  -0.023211652

   57    6.2  1.5 -1.5  -0.101298570  -0.093165308  -0.003463271  -0.040767910   0.121018997   0.232981810  -0.004492879   0.005314015
                        -0.003720824  -0.001342167  -0.003441778   0.060038451   0.016518636  -0.046442520   0.000435051   0.006316100

   58    7.2  1.5 -1.5   0.001894965   0.000182893  -0.006441363   0.183686882  -0.008526958   0.031389132  -0.000192982   0.331029179
                        -0.042362592  -0.038880372   0.013813222   0.126815025   0.085079862   0.167666856   0.085855499  -0.288883582

   59    8.2  1.5 -1.5  -0.004168748  -0.000427376  -0.005513519   0.156458766   0.009186972  -0.034532443  -0.000312085   0.169074768
                         0.093188714   0.085497776   0.011529742   0.107342309  -0.091886547  -0.180990184   0.043824187  -0.147595661

   60    9.2  1.5 -1.5  -0.000167809  -0.000005858  -0.010959701   0.312660962  -0.004933398   0.017683923   0.000009511  -0.001580747
                         0.004027743   0.003694436   0.023362647   0.215428392   0.049005748   0.096586244  -0.000413460   0.001390046


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5   0.001073925   0.001885604   0.001526930   0.002385278  -0.000747021  -0.003366555  -0.000684048   0.006950135
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.003028407   0.000985619  -0.000620697  -0.000544705  -0.006245845  -0.001457731   0.000641414  -0.001926260
                        -0.002710484   0.001804749  -0.000107734  -0.000246946   0.000776285  -0.000568504  -0.000987858  -0.000649997

    3    3.2  0.5  0.5   0.001390829  -0.001655704   0.000024755   0.000073397  -0.001354531   0.001306637  -0.000244035   0.000756633
                        -0.001071199  -0.002117700   0.001497688   0.002246441  -0.001308946   0.004290510  -0.000683509   0.005371371

    4    4.2  0.5  0.5  -0.041674437   0.017849818   0.089490923   0.131370567   0.203505468  -0.028746028  -0.076000700   0.446908440
                         0.085395855  -0.110827689   0.033785999   0.052922218  -0.052006667   0.090959068   0.048214127   0.148079488

    5    5.2  0.5  0.5  -0.093735874   0.107533893   0.028323055   0.041394881   0.155482683  -0.116554470  -0.007427443   0.098682630
                         0.088159623   0.096702896  -0.091549206  -0.136713592   0.073273341  -0.266097213   0.071085369  -0.372911929

    6    6.2  0.5  0.5   0.182673683   0.116915456   0.041631593   0.067191699  -0.389996394  -0.213924490   0.020865523   0.224335723
                        -0.123723274   0.075141419  -0.004143128  -0.007830020   0.043922392  -0.029715506  -0.099001795  -0.032012886

    7    7.2  0.5  0.5  -0.117286879  -0.016634404   0.056294777   0.021006590  -0.032309624   0.014043740   0.007032780   0.005704290
                        -0.159849449  -0.011032455  -0.031611364   0.014803712  -0.279446768  -0.101130098   0.013366630  -0.005069563

    8    8.2  0.5  0.5  -0.032669652  -0.169641441   0.068807606   0.098652534   0.002378697   0.023045417  -0.005088745   0.010573646
                        -0.023187894   0.173648998   0.027776330   0.020951432   0.111500686   0.022832889  -0.001036581   0.002808067

    9    9.2  0.5  0.5  -0.010002544  -0.024406208  -0.222483497   0.162257395   0.008844611   0.006403159   0.026112643   0.007876387
                        -0.025590354  -0.023000704   0.018714148  -0.032999605  -0.034575603  -0.011377332  -0.057522006  -0.015296170

   10   10.2  0.5  0.5   0.089957768  -0.154869452   0.046791557   0.004747649   0.001843396  -0.000482770  -0.001678993   0.012865517
                        -0.048886220  -0.149108537  -0.071250003  -0.108384020   0.040805251   0.018381454   0.016186997  -0.064159555

   11   11.2  0.5  0.5  -0.028450639   0.016910482   0.027467729  -0.017842939   0.001087487  -0.000475350   0.260950254   0.025502226
                        -0.032619612  -0.013025476   0.200488982  -0.132724221   0.014782720   0.004379616   0.107243087   0.022943630

   12   12.2  0.5  0.5  -0.003366162   0.001881969   0.000471177  -0.000282205  -0.001158823   0.000211525   0.008685053   0.000833575
                        -0.004146086  -0.001634374   0.003129779  -0.002096020  -0.011852318  -0.004112745   0.003539860   0.000757718

   13    1.2  0.5 -0.5  -0.000177167   0.000100904   0.002367212  -0.001515365   0.002808005  -0.000623082  -0.003934278  -0.000387220
                         0.001877263  -0.001069175   0.000293017  -0.000187574  -0.001857093   0.000412079   0.005729384   0.000563899

   14    2.2  0.5 -0.5   0.001704158   0.002983035  -0.000570915   0.000629230   0.000902273  -0.005637812   0.000554573   0.001177433
                         0.001150829  -0.002760339   0.000178162  -0.000030669  -0.001278311   0.002797906  -0.001955869   0.000030446

   15    3.2  0.5 -0.5  -0.001952766   0.001197140   0.000348803  -0.000208550   0.001276924  -0.000407745   0.003999611   0.000425313
                        -0.001847354  -0.001284029  -0.002220410   0.001483304   0.004299447   0.001838978   0.003664319   0.000588087

   16    4.2  0.5 -0.5  -0.112014536  -0.088933713   0.136876744  -0.092963527   0.074152507   0.198430081  -0.130912259  -0.082767470
                         0.007357742   0.033466482  -0.036383290   0.022536675   0.060010766  -0.068881576   0.452235192   0.035358934

   17    5.2  0.5 -0.5   0.086171467  -0.096576826   0.024286903  -0.016862259  -0.049570470   0.089266582  -0.363273561  -0.062804097
                         0.116144163   0.085037932   0.140763237  -0.094335130  -0.286243672  -0.146885413  -0.129745475  -0.034116594

   18    6.2  0.5 -0.5   0.063823904   0.140339540   0.065720916  -0.040807316   0.162040056  -0.349520549  -0.153380213   0.093424085
                         0.123458357  -0.170240820   0.016024817  -0.009225942  -0.142792574   0.178498600   0.166810826   0.038841548

   19    7.2  0.5 -0.5  -0.009420720   0.148122304   0.022666034  -0.051985131  -0.067500140   0.127202171  -0.007408163  -0.007037797
                        -0.017597401   0.131787107  -0.012111054  -0.038287418  -0.076604533   0.250906388   0.001832625  -0.013363989

   20    8.2  0.5 -0.5   0.188819923   0.020015751   0.100479097  -0.071698613  -0.006626614  -0.059523098  -0.003670601  -0.002026086
                        -0.152575324   0.034703808  -0.008673868   0.019113346   0.031757205  -0.094313637   0.010306014   0.004781715

   21    9.2  0.5 -0.5  -0.020605802   0.024537331   0.156974650   0.218499482  -0.011616883   0.026450137  -0.017068089   0.062200233
                        -0.026459332   0.012362705   0.052682023   0.045903184  -0.005957530   0.023960169  -0.002165792   0.011035501

   22   10.2  0.5 -0.5  -0.133897737   0.057122179  -0.008602643  -0.037684518   0.010542437  -0.020971851  -0.060173105  -0.014294274
                        -0.168194230  -0.084966577   0.108146339  -0.076458419   0.015065455  -0.035052076  -0.025713176  -0.007778921

   23   11.2  0.5 -0.5  -0.014556723   0.029802154  -0.034012179  -0.051888569   0.002812413  -0.007247534   0.004477612   0.059310226
                         0.015611830   0.031389641   0.129527067   0.195596228   0.003390771  -0.012929992   0.034010655  -0.275823154

   24   12.2  0.5 -0.5  -0.001803969   0.003811468  -0.000537551  -0.000852083  -0.002445145   0.005571535   0.000152765   0.001998263
                         0.001720082   0.003740828   0.002045478   0.003048193  -0.003313711   0.010525127   0.001116085  -0.009163389

   25    1.2  1.5  1.5   0.078411181   0.031756676  -0.229732569   0.154125521   0.011907185   0.004264831  -0.038904688  -0.008524923
                        -0.064700928   0.035903621   0.032050427  -0.019857035  -0.001409254   0.000178547   0.094694687   0.009190011

   26    2.2  1.5  1.5   0.051141955  -0.029326734   0.026815014  -0.026180554   0.004325518  -0.000187555   0.103137613   0.016657616
                         0.063778544   0.023558043   0.229377149  -0.155445897   0.048402960   0.015794546   0.043027170   0.010193403

   27    3.2  1.5  1.5   0.005133346   0.000237227   0.053578977   0.071890961   0.003038513  -0.009446966   0.018235031  -0.075712241
                         0.007216188  -0.000691404   0.031839666   0.007098119   0.001955321   0.006409162   0.002003615  -0.015805008

   28    4.2  1.5  1.5   0.088686083   0.034138725   0.260898802  -0.174037923   0.407966986   0.138968585   0.022927920   0.004354768
                        -0.070426315   0.038500088  -0.034582908   0.022476895  -0.040504989   0.007963593  -0.053324276  -0.005678857

   29    5.2  1.5  1.5   0.087872471  -0.043470037  -0.034340386   0.021278611   0.037491829  -0.008764089  -0.166680619  -0.014743888
                         0.105814409   0.037583979  -0.247816885   0.165784472   0.366846166   0.127689728  -0.067963475  -0.014652644

   30    6.2  1.5  1.5  -0.099016929  -0.219302636  -0.000415036  -0.002501012  -0.031647747   0.113755554   0.004403017  -0.060449049
                        -0.102100609   0.223501063  -0.005150227   0.001251220   0.032911766  -0.057462069  -0.002776782  -0.013378998

   31    7.2  1.5  1.5  -0.050874127   0.111940290   0.038118809   0.057953981   0.019600694  -0.045065244   0.001777423   0.029430787
                         0.050689074   0.108977120  -0.147671746  -0.220875571   0.026165485  -0.084733272   0.016882994  -0.137713123

   32    8.2  1.5  1.5   0.089961871  -0.191943765   0.018933716   0.030634839  -0.019733484   0.044818993   0.002087926   0.029015647
                        -0.087531440  -0.189191667  -0.074141275  -0.109861008  -0.026594011   0.084521848   0.016494276  -0.134688546

   33    9.2  1.5  1.5  -0.000106409   0.000236293  -0.000266189  -0.000390414  -0.001799273   0.004214232  -0.000349688  -0.005424638
                         0.000115210   0.000229812   0.000991908   0.001468384  -0.002410091   0.007914713  -0.003109844   0.025298351

   34    1.2  1.5  0.5  -0.040603597  -0.089789393  -0.054135020  -0.080420167   0.032015118  -0.100048301  -0.002160043   0.017662814
                        -0.043815986   0.091777071  -0.013885089  -0.022154378  -0.023281402   0.053083758   0.000538374   0.004015971

   35    2.2  1.5  0.5   0.024027798  -0.099457721  -0.014717936  -0.021276599   0.008006601  -0.054269669  -0.000207362  -0.000521620
                        -0.026942059  -0.098753482   0.055393215   0.083102363   0.030357358  -0.093852626  -0.000445110   0.001969366

   36    3.2  1.5  0.5   0.224963059   0.078272928   0.002906857  -0.003539489   0.164726081   0.052246402  -0.000689861  -0.000632597
                        -0.183367254   0.093112467   0.005719446   0.007464325  -0.013490192  -0.005002113   0.002383513   0.000145450

   37    4.2  1.5  0.5  -0.074574484  -0.161127323  -0.078617334  -0.111876314   0.057448846  -0.188447022   0.027124806  -0.231507330
                        -0.076875536   0.164102609  -0.019405488  -0.031883752  -0.043311317   0.100081033   0.000191834  -0.049521755

   38    5.2  1.5  0.5   0.091974775  -0.197996718  -0.025978990  -0.025440335   0.022664865  -0.055067159  -0.007076478  -0.055814649
                        -0.090693513  -0.193750237   0.077667115   0.115030928   0.032552547  -0.103096113  -0.023395937   0.254459270

   39    6.2  1.5  0.5  -0.029621327  -0.018732830   0.311575269  -0.210323184   0.072836467   0.021211449   0.168116919   0.032208840
                         0.024104317  -0.016794860  -0.041749368   0.029106477  -0.006180142   0.000358362  -0.409079854  -0.035761311

   40    7.2  1.5  0.5  -0.171925030   0.096348623   0.017695488  -0.010297905   0.008356805  -0.001617985  -0.106135890  -0.010305280
                        -0.210913846  -0.082318398   0.118862207  -0.079689767   0.086239268   0.029978025  -0.043513376  -0.009262383

   41    8.2  1.5  0.5  -0.093585329   0.053026255  -0.031668984   0.020720597   0.006972116  -0.001436660   0.121580787   0.011972011
                        -0.116088305  -0.043444003  -0.237219492   0.158108541   0.072337538   0.024605162   0.049907716   0.010373245

   42    9.2  1.5  0.5  -0.000542581   0.000295153  -0.000220110   0.000141216   0.001568336  -0.000278907  -0.011083681  -0.001067215
                        -0.000687578  -0.000268638  -0.001688754   0.001138629   0.015811296   0.005475006  -0.004535561  -0.000961280

   43    1.2  1.5 -0.5  -0.099807469  -0.039807133   0.082532597  -0.055430701  -0.112731772  -0.039546176   0.006687839   0.001666552
                         0.080769022  -0.044540822  -0.012107440   0.007129758   0.010913092  -0.001758252  -0.016833771  -0.001475885

   44    2.2  1.5 -0.5   0.088971800  -0.029080468   0.010906818  -0.007801735   0.006506216   0.010067819  -0.001918733  -0.000249547
                         0.108296386   0.021390091   0.085086648  -0.056781677   0.108218213   0.029737416  -0.000684803  -0.000422905

   45    3.2  1.5 -0.5  -0.085346213  -0.203693078   0.002595733   0.003587441   0.046337456  -0.144837779  -0.000477998   0.002355374
                        -0.086675294   0.206739106   0.007842596  -0.005319037  -0.024648484   0.079615857   0.000439150   0.000780549

   46    4.2  1.5 -0.5  -0.178515799  -0.069528609   0.114945691  -0.080405734  -0.212389271  -0.071809269  -0.090226314  -0.015196458
                         0.144995828  -0.081467627  -0.017898923   0.009600838   0.020476592  -0.004434969   0.218877272   0.022469080

   47    5.2  1.5 -0.5   0.174289814  -0.098934038   0.011116783  -0.016241281   0.010940024  -0.000947543  -0.241360066  -0.015280777
                         0.215325139   0.083046545   0.117284876  -0.080270228   0.116368022   0.039654339  -0.098031186  -0.019077324

   48    6.2  1.5 -0.5   0.014960469   0.026780835   0.205154635   0.304086732   0.017494549  -0.064161236   0.047712568  -0.432393614
                         0.020227966  -0.027225503   0.054722979   0.079708329  -0.011999781   0.035024005  -0.006308058  -0.092980580

   49    7.2  1.5 -0.5   0.091006929  -0.193827129   0.020009323   0.032162978  -0.017886326   0.040601864   0.001801966   0.024210074
                        -0.088187950  -0.190981441  -0.077821159  -0.115788158  -0.024111806   0.076541074   0.013738394  -0.112125436

   50    8.2  1.5 -0.5   0.048234038  -0.106781693  -0.039986354  -0.060570129  -0.014771252   0.034088204  -0.001774222  -0.027681789
                        -0.048709780  -0.104078713   0.154365622   0.231532441  -0.019730386   0.064181961  -0.015741201   0.128477182

   51    9.2  1.5 -0.5   0.000295182  -0.000633556  -0.000280020  -0.000425896  -0.003252811   0.007413856   0.000188316   0.002535248
                        -0.000268607  -0.000604784   0.001112657   0.001648924  -0.004412788   0.014053167   0.001423918  -0.011704350

   52    1.2  1.5 -1.5   0.032761007   0.071782035   0.150518853   0.224055367  -0.003458756   0.010709037   0.012401559  -0.100084965
                         0.034989611  -0.071985157   0.038640042   0.060028958   0.002501533  -0.005392919  -0.001825359  -0.021532726

   53    2.2  1.5 -1.5   0.026209298  -0.058691221  -0.045077868  -0.054789537   0.008869186  -0.023092666  -0.001026423   0.022913640
                        -0.026983539  -0.056908196   0.151052422   0.224345778   0.013070593  -0.042758454   0.019502002  -0.109378561

   54    3.2  1.5 -1.5  -0.000710635  -0.006701948   0.072218420  -0.057084483   0.011415096   0.001455776   0.029829643   0.008670653
                         0.000171215  -0.005788653   0.001787020   0.025016653   0.000134578  -0.003307047  -0.071360592  -0.016166342

   55    4.2  1.5 -1.5   0.035122176   0.078447500  -0.169958604  -0.254674445  -0.111519185   0.362624476  -0.007146512   0.056937028
                         0.037605080  -0.081676660  -0.043686181  -0.066370846   0.083301608  -0.191262138   0.000375235   0.011284627

   56    5.2  1.5 -1.5   0.041502059  -0.097090014   0.041483085   0.064523124   0.077747535  -0.171091897  -0.003732886  -0.038327182
                        -0.039746431  -0.097425815  -0.161914867  -0.241721403   0.101670039  -0.326663909  -0.020448662   0.175876348

   57    6.2  1.5 -1.5   0.243117502   0.092345536  -0.002328364   0.001044567  -0.126580046  -0.044552155   0.023189471   0.004781481
                        -0.197332844   0.108172032  -0.001548977  -0.005060234   0.014822526  -0.009993484  -0.057404995  -0.002057794

   58    7.2  1.5 -1.5   0.097977377  -0.055244849   0.030381784  -0.019689499  -0.009153013   0.001915049  -0.130184546  -0.012911443
                         0.121684324   0.045886443   0.226321959  -0.151235947  -0.095534423  -0.032636672  -0.053694128  -0.011022222

   59    8.2  1.5 -1.5  -0.170320131   0.095596825   0.016907038  -0.009682496   0.009241780  -0.001789420  -0.127456220  -0.012415234
                        -0.208870651  -0.081339647   0.112792227  -0.075905622   0.095222237   0.033067352  -0.052324223  -0.011058144

   60    9.2  1.5 -1.5   0.000206594  -0.000124698  -0.000207075   0.000142323   0.000850951  -0.000171274   0.023925576   0.002365669
                         0.000256840   0.000095113  -0.001505222   0.001017095   0.008926271   0.003002763   0.009848861   0.002048663


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5  -0.019053080   0.000000912   0.003771149   0.000419220  -0.005068164  -0.006063355   0.000364645   0.017633698
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000208763  -0.010480944   0.003479870   0.005081730   0.001448824   0.001639093   0.009047749  -0.000314857
                        -0.001869869  -0.015401152   0.000977429  -0.004882807   0.001654450  -0.000518575  -0.014762221   0.002041301

    3    3.2  0.5  0.5  -0.000087121   0.003154628  -0.001594820   0.003244000  -0.000194933  -0.000743785   0.004854807  -0.000051740
                         0.018139341  -0.004267340  -0.004283517   0.000358342  -0.004075521  -0.005010848   0.000695950  -0.016853695

    4    4.2  0.5  0.5   0.116309007  -0.055555854   0.010739832   0.048624222   0.105054246   0.127408278  -0.056827212   0.186552336
                        -0.053340566  -0.059611731   0.040948147  -0.073714286   0.057157905   0.025135855   0.137043927  -0.093218075

    5    5.2  0.5  0.5   0.036005486   0.009901541  -0.041550706   0.094492530   0.032469916   0.026109451  -0.088249558   0.064717056
                         0.125073393  -0.047869489  -0.092670649  -0.014143929  -0.086620273  -0.121269992   0.028125047   0.225796892

    6    6.2  0.5  0.5   0.092993842   0.048754303  -0.123559931  -0.109034581   0.051556302   0.064657485   0.102073548   0.163581263
                         0.004943589   0.073596827  -0.017616820   0.097403246  -0.036479514   0.018780877  -0.157355282   0.014820481

    7    7.2  0.5  0.5   0.001064763   0.003681512  -0.131021654   0.251906510  -0.059104462  -0.011096003   0.004482002   0.001881704
                        -0.001803208  -0.003455742   0.228380729   0.174111774  -0.029337619   0.051142857   0.004465639   0.002677181

    8    8.2  0.5  0.5   0.003405348  -0.002340079  -0.252796883  -0.052818614  -0.063974373  -0.096132243  -0.002235200   0.004715882
                        -0.000436597   0.000349857   0.099264601  -0.277234211  -0.024776514  -0.017791147  -0.000060575  -0.002205445

    9    9.2  0.5  0.5   0.001227733   0.002605514  -0.078873307  -0.003362657  -0.006993933  -0.039375556   0.002844213   0.002102223
                        -0.000275273   0.003024046  -0.006333131   0.071363651   0.322403071  -0.220738761  -0.003750467   0.002018907

   10   10.2  0.5  0.5  -0.000386620  -0.000935625  -0.119034737   0.125204703  -0.045315901  -0.028443733  -0.004375380   0.003291734
                        -0.000141932   0.000049168  -0.249791983  -0.011434520   0.126184913   0.234831331  -0.000789629   0.012064727

   11   11.2  0.5  0.5  -0.000002589   0.002879670   0.004010212  -0.022349023  -0.313455448   0.263065214   0.004481197  -0.000083871
                        -0.000927669  -0.001848619  -0.015869989  -0.022340243   0.006194374  -0.035791357   0.002932398   0.001321496

   12   12.2  0.5  0.5  -0.000023091  -0.229789100   0.000965667  -0.008633108   0.010771463  -0.008959050   0.654186373  -0.013562045
                         0.074622650   0.147316511  -0.007713004  -0.009856311  -0.000146630   0.001230698   0.429774637   0.206110528

   13    1.2  0.5 -0.5  -0.000000686  -0.014338585   0.000116243  -0.001045678   0.000931713  -0.000778789   0.005102183  -0.000105507
                        -0.000000600  -0.012546905  -0.000402781   0.003623275  -0.005991343   0.005007971  -0.016879427   0.000349048

   14    2.2  0.5 -0.5   0.018029563  -0.001074246   0.006100424  -0.000025810  -0.000764284  -0.001412170  -0.002045087  -0.016748676
                        -0.004688340   0.001544664  -0.003528542   0.003614443   0.001539941  -0.001685845  -0.000289247   0.004389394

   15    3.2  0.5 -0.5   0.000436097   0.011879622   0.000555218  -0.003673334  -0.004837043   0.003997163   0.016117817  -0.000738522
                        -0.005288826  -0.013708313  -0.003216159  -0.002720034  -0.001504933   0.000818874   0.004926022   0.004848513

   16    4.2  0.5 -0.5   0.081064850   0.052403475   0.084306514   0.036364510   0.005259385  -0.040336107   0.143208292   0.147624491
                        -0.008276555   0.116734215  -0.026277798   0.021672959   0.129757541  -0.112589605  -0.151600689  -0.014743791

   17    5.2  0.5 -0.5   0.024071691   0.109460084   0.039790563  -0.077515518  -0.123841763   0.090580936  -0.197413144   0.052456385
                        -0.042545061  -0.070414762  -0.086865413  -0.065617489   0.007164646  -0.018773949  -0.127281516  -0.076336954

   18    6.2  0.5 -0.5  -0.085155793   0.073238913  -0.123817396   0.017335133   0.008622359   0.043968554   0.033144512  -0.180158740
                         0.023280160   0.057518304   0.077750785  -0.123599766   0.066775495  -0.045338432  -0.160872365   0.052177797

   19    7.2  0.5 -0.5  -0.000494871  -0.000386157  -0.097434929   0.255755657   0.052240494   0.019907015  -0.002018209   0.002977789
                        -0.005025016   0.002058194  -0.290307138  -0.062557773  -0.003105454   0.062910603  -0.002575838   0.005582387

   20    8.2  0.5 -0.5   0.001530661   0.002275219   0.251717578   0.165468716  -0.002807878   0.014651757   0.003475615   0.000588755
                         0.001804286   0.002571068   0.127620041  -0.215359766  -0.097724351   0.067021803  -0.003876033  -0.002157117

   21    9.2  0.5 -0.5  -0.003952212   0.000742669  -0.069497754   0.015785491  -0.212066549  -0.319648699  -0.001324286  -0.004412995
                         0.000559984   0.001015651  -0.016557181  -0.077536607  -0.072827286  -0.042630557  -0.002596457   0.001637383

   22   10.2  0.5 -0.5   0.000671735  -0.000384421   0.045703382  -0.206990756   0.236413062  -0.131649632  -0.010596225   0.000510131
                         0.000653133  -0.000147786  -0.117124578  -0.183630417   0.007978973   0.025387745  -0.006641773  -0.004416699

   23   11.2  0.5 -0.5  -0.000949765  -0.000612840   0.015267217  -0.016359663  -0.075789666  -0.054287312  -0.001289237   0.001510365
                        -0.003287528   0.000696422   0.027667261  -0.000547526   0.254441063   0.308780789  -0.000302082   0.005137984

   24   12.2  0.5 -0.5   0.075918661   0.049123408   0.007076006  -0.007678325   0.002592756   0.001800064  -0.201218345   0.222107174
                         0.262186082  -0.056173226   0.011027583  -0.001210890  -0.008663534  -0.010621002  -0.046654653   0.750556096

   25    1.2  1.5  1.5   0.035175166   0.069472084   0.045923064   0.057965752   0.000521730  -0.000788031  -0.062347439  -0.029920040
                        -0.000009766   0.108286805   0.005525010  -0.050768958   0.012280889  -0.010054185   0.094979950  -0.001952655

   26    2.2  1.5  1.5   0.000066563  -0.102718852  -0.007398868   0.051231673  -0.024183285   0.003482256  -0.096271054   0.001897521
                         0.033386125   0.065972688   0.047109407   0.056943625  -0.002251533  -0.003606211  -0.063167534  -0.030302785

   27    3.2  1.5  1.5  -0.000616726  -0.008799874   0.021000685   0.001677799   0.096705965   0.120296483  -0.007767397   0.001190911
                         0.002910400   0.005039014  -0.009632481   0.019929397   0.028510708   0.021487030  -0.005487728  -0.002777299

   28    4.2  1.5  1.5   0.051707419   0.108215970  -0.004576400  -0.005774782   0.000067501  -0.000266486  -0.032528178  -0.014685892
                         0.000662659   0.167687904  -0.000560820   0.005081238   0.002519469  -0.002102636   0.049865957  -0.001263983

   29    5.2  1.5  1.5  -0.006857268  -0.170957461   0.000537085  -0.004892059   0.004357646  -0.003672683  -0.048557089   0.003350451
                         0.058067980   0.112255824  -0.004437590  -0.005593340  -0.000083874   0.000476129  -0.031040407  -0.015922324

   30    6.2  1.5  1.5   0.368772427  -0.081389193  -0.000152668  -0.000127904   0.000691242   0.000691665   0.006702289  -0.126277251
                        -0.105637831  -0.065732444  -0.000008410  -0.000149439   0.000205501   0.000112014  -0.034073412   0.037059276

   31    7.2  1.5  1.5  -0.047467224  -0.030753080   0.000215371  -0.000237555  -0.000086849  -0.000076477  -0.015001027   0.016545382
                        -0.164044736   0.035122857   0.000354987  -0.000027866   0.000311478   0.000366154  -0.003499590   0.055927163

   32    8.2  1.5  1.5   0.095483742   0.061762915   0.000884553  -0.000973847  -0.000171982  -0.000120464   0.030436919  -0.033624712
                         0.329596036  -0.070619246   0.001379908  -0.000159490   0.000568707   0.000708040   0.007060248  -0.113559195

   33    9.2  1.5  1.5   0.001112508   0.000722183   0.061437652  -0.067786479  -0.121535824  -0.091899376  -0.001689696   0.001808402
                         0.003820325  -0.000837297   0.098993118  -0.010444430   0.417200683   0.507111870  -0.000460169   0.006106726

   34    1.2  1.5  0.5   0.071872976  -0.015819738   0.092350227  -0.010130258   0.044713474   0.054313152   0.004305482  -0.063210102
                        -0.020889605  -0.014088877  -0.058897273   0.064415221   0.013038706   0.010153477  -0.017562489   0.018790355

   35    2.2  1.5  0.5   0.024679861   0.020161087   0.038684207  -0.047225021   0.020579329   0.015318315   0.011607430  -0.022896760
                         0.074119297  -0.006121793   0.062745154  -0.004813390  -0.071127932  -0.084869763   0.013807665  -0.067127829

   36    3.2  1.5  0.5  -0.036676032  -0.074021100   0.028410863   0.028567239   0.001593371  -0.000062756   0.077627367   0.035188712
                         0.006267961  -0.118656178   0.008653618  -0.029128768   0.003580448  -0.015140620  -0.115489651  -0.003266626

   37    4.2  1.5  0.5  -0.315365888   0.067702967   0.003160003  -0.000345883   0.005377015   0.006528528  -0.006996721   0.113432207
                         0.091938813   0.059063708  -0.001992053   0.002185055   0.001491777   0.001284795   0.030396184  -0.033779720

   38    5.2  1.5  0.5  -0.090843041  -0.058287468   0.002274120  -0.002500740   0.001452212   0.001099338  -0.030522927   0.033988742
                        -0.311867090   0.067046288   0.003523644  -0.000392351  -0.005149690  -0.005848507  -0.007165113   0.114047374

   39    6.2  1.5  0.5  -0.005967939  -0.004445496   0.000799907   0.000868838   0.000330467  -0.001142060  -0.004766221  -0.000512422
                        -0.005228034  -0.004397975   0.000128700  -0.000737702   0.011048714  -0.009410159   0.006404367   0.001765476

   40    7.2  1.5  0.5   0.000016662  -0.290400406  -0.000072063   0.000775171  -0.000380407   0.000303961  -0.098104003   0.002017142
                         0.094313101   0.186171006   0.000671215   0.000858787  -0.000009946  -0.000045845  -0.064453134  -0.030922015

   41    8.2  1.5  0.5  -0.000006438  -0.143727081  -0.000115692   0.001081010   0.001450144  -0.001215709  -0.049045966   0.001013608
                         0.046650243   0.092136849   0.000974947   0.001233045  -0.000042499   0.000151942  -0.032220276  -0.015445653

   42    9.2  1.5  0.5  -0.000004135  -0.005701247  -0.041883866   0.379239314  -0.103976015   0.087076418   0.008455331  -0.000172209
                         0.001850222   0.003677271   0.342073760   0.432954665   0.000592575  -0.011712281   0.005547903   0.002598710

   43    1.2  1.5 -0.5  -0.021183161  -0.040332424   0.064698332   0.082195016  -0.001686965   0.006013043   0.036275993   0.018057023
                         0.000185052  -0.063050740   0.008128265  -0.072397738  -0.055228305   0.046185993  -0.055069472   0.000960262

   44    2.2  1.5 -0.5   0.011141081  -0.067382391   0.008470084  -0.049558293   0.086215650  -0.073445450  -0.057631462  -0.009858524
                         0.017883571   0.039526941  -0.046707911  -0.054565537  -0.002095041   0.009405183  -0.041340315  -0.015106077

   45    3.2  1.5 -0.5  -0.133843225   0.023473313  -0.035907804  -0.000436422   0.014951156   0.003293082  -0.013308497   0.133010562
                         0.040551239   0.028869053   0.019370128  -0.029696326   0.002388564   0.002124629   0.032738360  -0.040890805

   46    4.2  1.5 -0.5   0.089845395   0.176787853   0.002195283   0.002790158  -0.000266343   0.000647811  -0.065155599  -0.031120454
                         0.000135027   0.276865389   0.000273560  -0.002483729  -0.006648416   0.005542385   0.098806290  -0.002097476

   47    5.2  1.5 -0.5   0.000286756   0.273736713   0.000316448  -0.002754898   0.005947973  -0.005311680   0.099334664  -0.001972959
                        -0.088840033  -0.174876390  -0.002511474  -0.003161997  -0.000187582   0.000643648   0.065533675   0.031290500

   48    6.2  1.5 -0.5  -0.006241674   0.007934016  -0.000949690   0.000098148   0.009122905   0.010866711   0.001838224  -0.007509495
                         0.000382275  -0.000004380   0.000630216  -0.000804228   0.002574489   0.002024321   0.000020324   0.002709291

   49    7.2  1.5 -0.5  -0.095945696  -0.062119953   0.000610170  -0.000664877   0.000092008   0.000048626  -0.030182988   0.033310503
                        -0.331340403   0.070965292   0.000982903  -0.000116880  -0.000293306  -0.000377417  -0.007016202   0.112556706

   50    8.2  1.5 -0.5  -0.047488946  -0.030715447   0.000884949  -0.000968797  -0.000336947  -0.000264828  -0.015078254   0.016650976
                        -0.163986197   0.035111345   0.001380525  -0.000159181   0.001177923   0.001426391  -0.003498837   0.056270755

   51    9.2  1.5 -0.5  -0.001868960  -0.001215303   0.310820771  -0.340274103   0.024953602   0.016562804   0.002537379  -0.002864106
                        -0.006521773   0.001395126   0.484419908  -0.054609982  -0.084242494  -0.102650068   0.000587075  -0.009698904

   52    1.2  1.5 -1.5  -0.123591339   0.026464990   0.064851171  -0.007425357  -0.009813683  -0.012054862  -0.006788016   0.108957015
                         0.035743299   0.023171031  -0.041615395   0.045654328  -0.002323628  -0.002402652   0.029205213  -0.032198801

   53    2.2  1.5 -1.5   0.033857515   0.022035649  -0.040505045   0.047313742  -0.004098475  -0.001491285   0.029555634  -0.032610245
                         0.117291205  -0.025081228  -0.065012323   0.005953929   0.002886757   0.024242045   0.006951536  -0.110430182

   54    3.2  1.5 -1.5   0.003304123   0.001452444  -0.018682700  -0.015077922   0.002746716  -0.013311966   0.003003083  -0.003005554
                         0.009587086  -0.002596380  -0.007138108   0.017506277   0.122169521  -0.099938460  -0.000336379  -0.009022985

   55    4.2  1.5 -1.5  -0.191865469   0.039349311  -0.006483246   0.000730132  -0.002036715  -0.002479173  -0.003039340   0.057144762
                         0.054932420   0.033551872   0.004139397  -0.004552457  -0.000586419  -0.000453848   0.014423436  -0.016708449

   56    5.2  1.5 -1.5   0.054732618   0.033078637   0.004017526  -0.004412508   0.001034829   0.000752487   0.016210684  -0.015663029
                         0.197058783  -0.048215311   0.006251174  -0.000714447  -0.003555900  -0.004293004   0.001399872  -0.055461404

   57    6.2  1.5 -1.5   0.104536622   0.207958348   0.000108114   0.000034252   0.000004400  -0.000096842  -0.072011495  -0.034555200
                         0.004129108   0.322344195   0.000164325  -0.000149014   0.000700662  -0.000714610   0.110152978  -0.003443293

   58    7.2  1.5 -1.5   0.000014303  -0.143749283  -0.000039097   0.000281349   0.000373557  -0.000321124  -0.048747624   0.000990542
                         0.046683689   0.092195208   0.000235967   0.000305359  -0.000019304   0.000037955  -0.032019782  -0.015371948

   59    8.2  1.5 -1.5   0.000024151   0.288904051  -0.000116796   0.001080527   0.000718142  -0.000588380   0.098972697  -0.002048452
                        -0.093817563  -0.185162473   0.000979884   0.001232494  -0.000010234   0.000082550   0.065043965   0.031177829

   60    9.2  1.5 -1.5   0.000007894   0.003353004  -0.008761207   0.078075743   0.515210595  -0.430921281  -0.005322266   0.000048416
                        -0.001105691  -0.002142410   0.068024511   0.086477748  -0.012883581   0.055984070  -0.003497986  -0.001750566


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5   0.000728601   0.000051570  -0.000220927  -0.001434225
                        -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.001205689  -0.000693265  -0.000370618   0.000447291
                         0.000000350   0.001090804  -0.000193600   0.000148958

    3    3.2  0.5  0.5  -0.000383945  -0.000990359  -0.000097449  -0.000147192
                        -0.000740377   0.000043781  -0.000094650  -0.001127622

    4    4.2  0.5  0.5  -0.060295377   0.032020667   0.005796863  -0.299808520
                        -0.047479375  -0.134337424   0.018683316  -0.097239653

    5    5.2  0.5  0.5   0.062358652   0.202050785   0.020766131  -0.066259132
                         0.131629203  -0.044510766   0.026956095   0.235662746

    6    6.2  0.5  0.5   0.258980431  -0.096082157  -0.084156760  -0.136137703
                        -0.005998120   0.149436002  -0.028026339   0.017372993

    7    7.2  0.5  0.5   0.048817802   0.189683604  -0.054327621   0.038348629
                        -0.240402743   0.037682387   0.018220961  -0.021704004

    8    8.2  0.5  0.5   0.157559425  -0.068142271   0.010743006   0.073538521
                        -0.051973339  -0.250726903  -0.016468904   0.020202346

    9    9.2  0.5  0.5   0.078922371   0.009847640   0.268408365  -0.003607674
                        -0.016595739   0.048443614   0.129249185  -0.051894551

   10   10.2  0.5  0.5   0.084667416   0.134323900  -0.039256367   0.046839537
                         0.154415781  -0.018451358  -0.038531767  -0.214847296

   11   11.2  0.5  0.5   0.000625833  -0.026802054  -0.134221262   0.020157488
                         0.032482253  -0.018835897   0.286568921  -0.014094569

   12   12.2  0.5  0.5   0.000087749  -0.001049309   0.000621585  -0.000118374
                         0.001292319  -0.000735892  -0.001335314   0.000077025

   13    1.2  0.5 -0.5   0.000003700  -0.000052281   0.001138556  -0.000175383
                         0.000051438  -0.000726723   0.000872176  -0.000134350

   14    2.2  0.5 -0.5   0.001038247  -0.000086863  -0.000445665  -0.000411946
                        -0.000769748  -0.001202556  -0.000153755  -0.000071690

   15    3.2  0.5 -0.5  -0.000027395   0.000766019   0.000802574  -0.000134918
                        -0.000990948   0.000329830  -0.000805650   0.000015877

   16    4.2  0.5 -0.5  -0.131693508   0.051683468   0.297135372   0.015963459
                         0.041577476   0.056733083   0.105125019  -0.011306542

   17    5.2  0.5 -0.5  -0.029897926  -0.135764433  -0.090710734   0.032877593
                         0.204723819  -0.052752890   0.227373625  -0.008770810

   18    6.2  0.5 -0.5   0.142156450  -0.012600419   0.097507813  -0.083850938
                        -0.106557230  -0.258743252   0.096579094  -0.028928465

   19    7.2  0.5 -0.5   0.051195954   0.236280149  -0.017244412  -0.032047396
                         0.186490767  -0.065942004  -0.040550109  -0.047502191

   20    8.2  0.5 -0.5  -0.254970138   0.040533730  -0.070663773  -0.001486700
                        -0.049975773  -0.160882619  -0.028682399   0.019606803

   21    9.2  0.5 -0.5   0.049025356   0.010889905   0.034421876   0.291673952
                         0.006346196  -0.079909756  -0.039002489   0.060619369

   22   10.2  0.5 -0.5  -0.008765418  -0.160093034   0.093468719  -0.054595383
                         0.135301627  -0.073369103  -0.199039949   0.006715915

   23   11.2  0.5 -0.5  -0.020710519  -0.032443430  -0.007430838   0.067716030
                        -0.025381402   0.001706536  -0.023447043  -0.309114272

   24   12.2  0.5 -0.5  -0.000809288  -0.001295284   0.000047131  -0.000318583
                        -0.000993801   0.000005207   0.000133131   0.001438032

   25    1.2  1.5  1.5   0.149819380  -0.085190143  -0.050218008   0.005090386
                        -0.008471131   0.119196516  -0.023167258   0.004073488

   26    2.2  1.5  1.5   0.004121089  -0.119105745   0.019972782  -0.032776981
                         0.152680574  -0.079200974  -0.048118433  -0.003145510

   27    3.2  1.5  1.5   0.050103647  -0.010790422   0.030702137   0.350528136
                        -0.030271539  -0.075900404  -0.011604030   0.077045426

   28    4.2  1.5  1.5   0.090297665  -0.051595649  -0.028237363   0.002122477
                        -0.004746490   0.073258220  -0.012905389   0.002110713

   29    5.2  1.5  1.5   0.003858034  -0.072158396   0.014578465  -0.001736934
                         0.091241772  -0.049649363  -0.031706156   0.002221968

   30    6.2  1.5  1.5   0.066550575  -0.003223195  -0.002727864  -0.030855264
                        -0.052789966  -0.087583952  -0.000177195  -0.006912709

   31    7.2  1.5  1.5  -0.036972587  -0.059121858  -0.002123265   0.020493612
                        -0.044229623   0.001036400  -0.007542423  -0.094111081

   32    8.2  1.5  1.5   0.042029897   0.067275019  -0.001597677   0.017674836
                         0.050995636  -0.001137885  -0.006758986  -0.079800826

   33    9.2  1.5  1.5   0.056032451   0.089486470   0.010131212  -0.101540913
                         0.065756573  -0.001689899   0.037807694   0.463926845

   34    1.2  1.5  0.5   0.157514521  -0.003918624   0.010827031   0.141218717
                        -0.130775900  -0.208786412  -0.003453815   0.030541163

   35    2.2  1.5  0.5   0.075612822   0.136416072  -0.003188005   0.057632187
                         0.100995006  -0.008039111  -0.020848984  -0.261460214

   36    3.2  1.5  0.5   0.091947928  -0.037878035  -0.026822363   0.005875992
                         0.004317385   0.069428477  -0.013881542  -0.019971452

   37    4.2  1.5  0.5  -0.018002890   0.000507264  -0.010960900  -0.123966798
                         0.015154273   0.024095494   0.002286461  -0.027319013

   38    5.2  1.5  0.5   0.013230228   0.022114057   0.000467877  -0.026979062
                         0.016079950  -0.000713932   0.008989931   0.122960745

   39    6.2  1.5  0.5   0.023020766  -0.012685526   0.116545245  -0.007888530
                        -0.000807650   0.017988676   0.054818188  -0.006299623

   40    7.2  1.5  0.5   0.003776443  -0.054959746   0.034752696  -0.005405363
                         0.068529631  -0.039023272  -0.074651690   0.004427819

   41    8.2  1.5  0.5   0.003164910  -0.046205302  -0.039989833   0.006126749
                         0.058331210  -0.033290372   0.085147300  -0.004575272

   42    9.2  1.5  0.5   0.018783111  -0.273314053   0.051395601  -0.008200401
                         0.342073626  -0.194910824  -0.111872925   0.007451200

   43    1.2  1.5 -0.5   0.208529405  -0.119136384   0.130678754  -0.006494693
                        -0.011072895   0.166492290   0.061632395  -0.009325900

   44    2.2  1.5 -0.5  -0.001770113   0.106160252  -0.113247081   0.015209401
                        -0.136641277   0.068171044   0.242606700  -0.014612242

   45    3.2  1.5 -0.5  -0.066531583   0.010903957  -0.007480326   0.029734468
                         0.042762220   0.091401121   0.019427581   0.005291289

   46    4.2  1.5 -0.5  -0.024069782   0.013823417  -0.115023913   0.007310852
                         0.001223010  -0.019043875  -0.053699114   0.008480606

   47    5.2  1.5 -0.5  -0.000874697   0.016987832   0.053357187  -0.005838349
                        -0.022108282   0.012042312  -0.114018530   0.006852113

   48    6.2  1.5 -0.5  -0.017032060   0.000846282  -0.010093197  -0.125855031
                         0.013943600   0.023019378   0.000203797  -0.027355786

   49    7.2  1.5 -0.5   0.042866305   0.068623960  -0.001598406   0.017808572
                         0.052017971  -0.001150618  -0.006802105  -0.080395768

   50    8.2  1.5 -0.5   0.036520010   0.058407947   0.002081408  -0.020033635
                         0.043697456  -0.001028789   0.007357847   0.091912474

   51    9.2  1.5 -0.5   0.214019987   0.342539642  -0.001978673   0.027231485
                         0.258623755  -0.005810716  -0.010901918  -0.120064588

   52    1.2  1.5 -1.5   0.112776465  -0.002300958  -0.006518147  -0.053953846
                        -0.093523466  -0.150041036   0.000138182  -0.012147122

   53    2.2  1.5 -1.5  -0.087543221  -0.152582718   0.027932771  -0.013406264
                        -0.113115681   0.006845091   0.017435166   0.050344491

   54    3.2  1.5 -1.5  -0.076479020   0.026598333  -0.325118586   0.017316222
                        -0.005316393  -0.052146622  -0.151999595   0.027882310

   55    4.2  1.5 -1.5   0.069367149  -0.001745032  -0.002968483  -0.030264148
                        -0.056719277  -0.090405489   0.000384871  -0.006926691

   56    5.2  1.5 -1.5  -0.054699090  -0.091283411   0.000027646  -0.007707954
                        -0.068409816   0.002698941   0.002820163   0.034035267

   57    6.2  1.5 -1.5  -0.087589467   0.047878569   0.028698116  -0.002273264
                         0.003069678  -0.070166959   0.013275955  -0.001518193

   58    7.2  1.5 -1.5  -0.003208546   0.046768571   0.040961691  -0.006272221
                        -0.059043827   0.033703597  -0.087172379   0.004696344

   59    8.2  1.5 -1.5   0.003692351  -0.053880030   0.034497068  -0.005378563
                         0.067183253  -0.038262377  -0.074098070   0.004394033

   60    9.2  1.5 -1.5   0.004735537  -0.069607668  -0.201513531   0.031034122
                         0.089377060  -0.051169670   0.430036011  -0.023852598


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   1.150%  54.692%  10.665%   0.005%  33.041%   0.213%   0.036%   0.000%   0.008%   0.000%
    2    2.2  0.5  0.5   3.469%   5.579%  20.356%  37.086%   0.655%  32.624%   0.003%   0.002%   0.012%   0.026%
    3    3.2  0.5  0.5   0.242%  34.619%  16.596%  15.045%  31.580%   1.686%   0.025%   0.000%   0.010%   0.008%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.826%   0.061%   0.257%   1.479%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.040%   0.022%   1.629%   1.884%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.230%   0.235%   3.380%   2.688%
    7    7.2  0.5  0.5   0.000%   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.002%   0.013%   0.026%
    8    8.2  0.5  0.5   0.000%   0.000%   0.002%   0.003%   0.000%   0.000%   0.001%   0.000%   0.001%   0.006%
    9    9.2  0.5  0.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%   0.003%   0.003%
   10   10.2  0.5  0.5   0.000%   0.002%   0.002%   0.001%   0.000%   0.000%   0.001%   0.000%   0.019%   0.007%
   11   11.2  0.5  0.5   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.090%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.029%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5  54.692%   1.150%   0.005%  10.665%   0.213%  33.041%   0.000%   0.036%   0.000%   0.008%
   14    2.2  0.5 -0.5   5.579%   3.469%  37.086%  20.356%  32.624%   0.655%   0.002%   0.003%   0.026%   0.012%
   15    3.2  0.5 -0.5  34.619%   0.242%  15.045%  16.596%   1.686%  31.580%   0.000%   0.025%   0.008%   0.010%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.061%   5.826%   1.479%   0.257%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%   4.040%   1.884%   1.629%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.235%   1.230%   2.688%   3.380%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.002%   0.002%   0.000%   0.000%   0.002%   0.000%   0.026%   0.013%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.003%   0.002%   0.000%   0.000%   0.000%   0.001%   0.006%   0.001%
   21    9.2  0.5 -0.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.023%   0.000%   0.003%   0.003%
   22   10.2  0.5 -0.5   0.002%   0.000%   0.001%   0.002%   0.000%   0.000%   0.000%   0.001%   0.007%   0.019%
   23   11.2  0.5 -0.5   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.090%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.029%   0.001%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.001%   0.000%   0.005%   0.007%   0.000%   0.006%   0.001%   0.403%   4.705%   7.868%
   26    2.2  1.5  1.5   0.001%   0.000%   0.005%   0.007%   0.000%   0.006%   0.296%   0.653%   4.967%   7.778%
   27    3.2  1.5  1.5   0.000%   0.039%   0.001%   0.001%   0.000%   0.000%  40.821%   0.036%   1.077%   1.055%
   28    4.2  1.5  1.5   0.001%   0.000%   0.004%   0.006%   0.000%   0.007%   0.000%   0.077%   0.621%   1.073%
   29    5.2  1.5  1.5   0.001%   0.000%   0.004%   0.006%   0.000%   0.007%   0.000%   0.058%   0.639%   1.033%
   30    6.2  1.5  1.5   0.000%   0.001%   0.007%   0.005%   0.028%   0.001%   0.079%   0.000%   1.065%   0.642%
   31    7.2  1.5  1.5   0.000%   0.007%   0.003%   0.002%   0.005%   0.000%   1.259%   0.001%   0.474%   0.282%
   32    8.2  1.5  1.5   0.000%   0.005%   0.004%   0.003%   0.023%   0.001%   0.750%   0.000%   0.669%   0.397%
   33    9.2  1.5  1.5   0.000%   0.102%   0.004%   0.003%   0.000%   0.000%  12.021%   0.005%   0.330%   0.197%
   34    1.2  1.5  0.5   0.000%   0.006%   0.015%   0.010%   0.002%   0.000%   6.197%   0.003%  14.494%   8.550%
   35    2.2  1.5  0.5   0.000%   0.022%   0.006%   0.004%   0.002%   0.000%  18.329%   0.005%   7.530%   4.955%
   36    3.2  1.5  0.5   0.000%   0.000%   0.002%   0.002%   0.000%   0.009%   0.123%   0.138%   1.820%   2.304%
   37    4.2  1.5  0.5   0.000%   0.011%   0.000%   0.000%   0.020%   0.001%   1.777%   0.001%   0.047%   0.027%
   38    5.2  1.5  0.5   0.000%   0.011%   0.000%   0.000%   0.021%   0.001%   1.691%   0.000%   0.053%   0.033%
   39    6.2  1.5  0.5   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.486%   0.021%   0.034%
   40    7.2  1.5  0.5   0.005%   0.000%   0.003%   0.004%   0.001%   0.023%   0.000%   0.640%   0.423%   0.713%
   41    8.2  1.5  0.5   0.007%   0.000%   0.002%   0.003%   0.000%   0.005%   0.000%   1.023%   0.221%   0.372%
   42    9.2  1.5  0.5   0.007%   0.000%   0.041%   0.061%   0.000%   0.000%   0.000%   0.528%   4.499%   7.576%
   43    1.2  1.5 -0.5   0.006%   0.000%   0.010%   0.015%   0.000%   0.002%   0.003%   6.197%   8.550%  14.494%
   44    2.2  1.5 -0.5   0.022%   0.000%   0.004%   0.006%   0.000%   0.002%   0.005%  18.329%   4.955%   7.530%
   45    3.2  1.5 -0.5   0.000%   0.000%   0.002%   0.002%   0.009%   0.000%   0.138%   0.123%   2.304%   1.820%
   46    4.2  1.5 -0.5   0.011%   0.000%   0.000%   0.000%   0.001%   0.020%   0.001%   1.777%   0.027%   0.047%
   47    5.2  1.5 -0.5   0.011%   0.000%   0.000%   0.000%   0.001%   0.021%   0.000%   1.691%   0.033%   0.053%
   48    6.2  1.5 -0.5   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%   1.486%   0.000%   0.034%   0.021%
   49    7.2  1.5 -0.5   0.000%   0.005%   0.004%   0.003%   0.023%   0.001%   0.640%   0.000%   0.713%   0.423%
   50    8.2  1.5 -0.5   0.000%   0.007%   0.003%   0.002%   0.005%   0.000%   1.023%   0.000%   0.372%   0.221%
   51    9.2  1.5 -0.5   0.000%   0.007%   0.061%   0.041%   0.000%   0.000%   0.528%   0.000%   7.576%   4.499%
   52    1.2  1.5 -1.5   0.000%   0.001%   0.007%   0.005%   0.006%   0.000%   0.403%   0.001%   7.868%   4.705%
   53    2.2  1.5 -1.5   0.000%   0.001%   0.007%   0.005%   0.006%   0.000%   0.653%   0.296%   7.778%   4.967%
   54    3.2  1.5 -1.5   0.039%   0.000%   0.001%   0.001%   0.000%   0.000%   0.036%  40.821%   1.055%   1.077%
   55    4.2  1.5 -1.5   0.000%   0.001%   0.006%   0.004%   0.007%   0.000%   0.077%   0.000%   1.073%   0.621%
   56    5.2  1.5 -1.5   0.000%   0.001%   0.006%   0.004%   0.007%   0.000%   0.058%   0.000%   1.033%   0.639%
   57    6.2  1.5 -1.5   0.001%   0.000%   0.005%   0.007%   0.001%   0.028%   0.000%   0.079%   0.642%   1.065%
   58    7.2  1.5 -1.5   0.007%   0.000%   0.002%   0.003%   0.000%   0.005%   0.001%   1.259%   0.282%   0.474%
   59    8.2  1.5 -1.5   0.005%   0.000%   0.003%   0.004%   0.001%   0.023%   0.000%   0.750%   0.397%   0.669%
   60    9.2  1.5 -1.5   0.102%   0.000%   0.003%   0.004%   0.000%   0.000%   0.005%  12.021%   0.197%   0.330%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.004%   0.002%   0.001%   0.000%   0.001%   0.001%   9.188%   2.832%   0.000%   0.002%
    5    5.2  0.5  0.5   0.008%   0.001%   0.001%   0.003%   0.000%   0.011%  11.025%   0.961%   0.000%   0.000%
    6    6.2  0.5  0.5   0.003%   0.003%   0.002%   0.001%   0.003%   0.000%   3.594%   8.385%   0.000%   0.000%
    7    7.2  0.5  0.5   0.408%   0.731%   1.957%   1.045%   0.076%   0.008%   0.000%   0.000%   0.232%   0.003%
    8    8.2  0.5  0.5   3.715%   0.224%   0.032%   0.639%   0.004%   0.015%   0.000%   0.000%   0.011%   0.035%
    9    9.2  0.5  0.5   0.200%   0.890%   0.206%   0.502%   2.150%   0.012%   0.000%   0.000%   8.589%   0.046%
   10   10.2  0.5  0.5   1.062%   0.209%   1.394%   1.230%   0.040%   0.371%   0.001%   0.000%   0.163%   0.124%
   11   11.2  0.5  0.5   0.013%   0.155%   0.003%   0.002%   3.259%   0.003%   0.000%   0.000%  10.334%   0.037%
   12   12.2  0.5  0.5   0.000%   0.000%   0.002%   0.002%   0.005%   0.000%   0.354%  20.089%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.002%   0.004%   0.000%   0.001%   0.001%   0.001%   2.832%   9.188%   0.002%   0.000%
   17    5.2  0.5 -0.5   0.001%   0.008%   0.003%   0.001%   0.011%   0.000%   0.961%  11.025%   0.000%   0.000%
   18    6.2  0.5 -0.5   0.003%   0.003%   0.001%   0.002%   0.000%   0.003%   8.385%   3.594%   0.000%   0.000%
   19    7.2  0.5 -0.5   0.731%   0.408%   1.045%   1.957%   0.008%   0.076%   0.000%   0.000%   0.003%   0.232%
   20    8.2  0.5 -0.5   0.224%   3.715%   0.639%   0.032%   0.015%   0.004%   0.000%   0.000%   0.035%   0.011%
   21    9.2  0.5 -0.5   0.890%   0.200%   0.502%   0.206%   0.012%   2.150%   0.000%   0.000%   0.046%   8.589%
   22   10.2  0.5 -0.5   0.209%   1.062%   1.230%   1.394%   0.371%   0.040%   0.000%   0.001%   0.124%   0.163%
   23   11.2  0.5 -0.5   0.155%   0.013%   0.002%   0.003%   0.003%   3.259%   0.000%   0.000%   0.037%  10.334%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.002%   0.002%   0.000%   0.005%  20.089%   0.354%   0.000%   0.000%
   25    1.2  1.5  1.5   0.225%   2.669%   0.006%   0.004%  41.331%   0.044%   0.165%   9.339%   0.014%   0.000%
   26    2.2  1.5  1.5   0.156%   0.010%   6.785%   5.846%  29.864%   0.043%   0.181%  10.232%   0.013%   0.000%
   27    3.2  1.5  1.5  21.922%   1.690%   1.788%   1.246%   0.216%   1.256%   0.001%   0.072%   0.000%   0.000%
   28    4.2  1.5  1.5   0.012%   0.162%   2.318%   1.714%   1.785%   0.002%   0.003%   0.171%  30.452%   0.112%
   29    5.2  1.5  1.5   0.055%   0.747%   0.657%   0.449%   4.277%   0.004%   0.003%   0.107%  29.931%   0.111%
   30    6.2  1.5  1.5   0.147%   0.009%   0.428%   0.617%   0.002%   0.058%   0.500%   0.009%   0.012%   0.004%
   31    7.2  1.5  1.5   5.375%   0.409%   0.055%   0.074%   0.000%   0.206%   0.103%   0.002%   0.006%   1.459%
   32    8.2  1.5  1.5   0.491%   0.037%   0.745%   1.010%   0.000%   0.242%   0.419%   0.007%   0.001%   0.307%
   33    9.2  1.5  1.5   0.015%   0.001%   0.002%   0.003%   0.000%   0.009%   0.000%   0.000%   0.000%   0.001%
   34    1.2  1.5  0.5  10.281%   0.802%   9.634%  12.978%   0.005%   3.727%   3.049%   0.062%   0.000%   0.001%
   35    2.2  1.5  0.5  30.831%   2.083%   0.327%   2.009%   0.013%   0.236%   3.206%   0.087%   0.000%   0.001%
   36    3.2  1.5  0.5   0.427%   6.502%  22.264%  15.237%   1.888%   0.004%   0.213%  14.167%   0.001%   0.000%
   37    4.2  1.5  0.5   0.052%   0.005%   1.043%   1.416%   0.001%   0.156%   0.451%   0.008%   0.007%   2.658%
   38    5.2  1.5  0.5   0.893%   0.062%   0.753%   1.021%   0.002%   0.070%   0.449%   0.008%   0.006%   1.991%
   39    6.2  1.5  0.5   0.139%   1.895%   0.001%   0.003%   6.083%   0.007%   0.000%   0.000%   2.312%   0.006%
   40    7.2  1.5  0.5   0.108%   1.426%   0.086%   0.063%   0.795%   0.001%   0.008%   0.452%   2.476%   0.009%
   41    8.2  1.5  0.5   0.193%   2.533%   1.378%   1.018%   1.711%   0.002%   0.002%   0.098%   8.503%   0.031%
   42    9.2  1.5  0.5   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.802%  10.281%  12.978%   9.634%   3.727%   0.005%   0.062%   3.049%   0.001%   0.000%
   44    2.2  1.5 -0.5   2.083%  30.831%   2.009%   0.327%   0.236%   0.013%   0.087%   3.206%   0.001%   0.000%
   45    3.2  1.5 -0.5   6.502%   0.427%  15.237%  22.264%   0.004%   1.888%  14.167%   0.213%   0.000%   0.001%
   46    4.2  1.5 -0.5   0.005%   0.052%   1.416%   1.043%   0.156%   0.001%   0.008%   0.451%   2.658%   0.007%
   47    5.2  1.5 -0.5   0.062%   0.893%   1.021%   0.753%   0.070%   0.002%   0.008%   0.449%   1.991%   0.006%
   48    6.2  1.5 -0.5   1.895%   0.139%   0.003%   0.001%   0.007%   6.083%   0.000%   0.000%   0.006%   2.312%
   49    7.2  1.5 -0.5   1.426%   0.108%   0.063%   0.086%   0.001%   0.795%   0.452%   0.008%   0.009%   2.476%
   50    8.2  1.5 -0.5   2.533%   0.193%   1.018%   1.378%   0.002%   1.711%   0.098%   0.002%   0.031%   8.503%
   51    9.2  1.5 -0.5   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   2.669%   0.225%   0.004%   0.006%   0.044%  41.331%   9.339%   0.165%   0.000%   0.014%
   53    2.2  1.5 -1.5   0.010%   0.156%   5.846%   6.785%   0.043%  29.864%  10.232%   0.181%   0.000%   0.013%
   54    3.2  1.5 -1.5   1.690%  21.922%   1.246%   1.788%   1.256%   0.216%   0.072%   0.001%   0.000%   0.000%
   55    4.2  1.5 -1.5   0.162%   0.012%   1.714%   2.318%   0.002%   1.785%   0.171%   0.003%   0.112%  30.452%
   56    5.2  1.5 -1.5   0.747%   0.055%   0.449%   0.657%   0.004%   4.277%   0.107%   0.003%   0.111%  29.931%
   57    6.2  1.5 -1.5   0.009%   0.147%   0.617%   0.428%   0.058%   0.002%   0.009%   0.500%   0.004%   0.012%
   58    7.2  1.5 -1.5   0.409%   5.375%   0.074%   0.055%   0.206%   0.000%   0.002%   0.103%   1.459%   0.006%
   59    8.2  1.5 -1.5   0.037%   0.491%   1.010%   0.745%   0.242%   0.000%   0.007%   0.419%   0.307%   0.001%
   60    9.2  1.5 -1.5   0.001%   0.015%   0.003%   0.002%   0.009%   0.000%   0.000%   0.000%   0.001%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
    7    7.2  0.5  0.5   1.349%   1.079%   0.021%   0.032%   0.000%   0.001%   0.436%   5.796%  27.369%   4.200%
    8    8.2  0.5  0.5   0.132%   0.246%   0.072%   0.031%   0.000%   0.000%   0.018%   0.804%   6.033%  12.234%
    9    9.2  0.5  0.5   0.003%   0.148%   0.000%   0.004%   0.000%   0.000%   0.692%   9.439%   4.833%   0.168%
   10   10.2  0.5  0.5   1.537%   1.692%   0.004%   0.000%   0.000%   0.000%  11.217%   0.852%   0.897%   5.077%
   11   11.2  0.5  0.5   0.310%   0.173%   0.001%   0.003%   0.001%   0.001%   0.372%  28.425%   5.552%   0.100%
   12   12.2  0.5  0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.001%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   19    7.2  0.5 -0.5   1.079%   1.349%   0.032%   0.021%   0.001%   0.000%   5.796%   0.436%   4.200%  27.369%
   20    8.2  0.5 -0.5   0.246%   0.132%   0.031%   0.072%   0.000%   0.000%   0.804%   0.018%  12.234%   6.033%
   21    9.2  0.5 -0.5   0.148%   0.003%   0.004%   0.000%   0.000%   0.000%   9.439%   0.692%   0.168%   4.833%
   22   10.2  0.5 -0.5   1.692%   1.537%   0.000%   0.004%   0.000%   0.000%   0.852%  11.217%   5.077%   0.897%
   23   11.2  0.5 -0.5   0.173%   0.310%   0.003%   0.001%   0.001%   0.001%  28.425%   0.372%   0.100%   5.552%
   24   12.2  0.5 -0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.001%
   25    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   26    2.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.006%   0.000%
   27    3.2  1.5  1.5   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.000%   0.006%
   28    4.2  1.5  1.5   0.225%   0.150%   0.512%   1.564%   2.573%   3.352%   0.041%   2.852%   2.947%   0.050%
   29    5.2  1.5  1.5   3.088%   1.970%   0.011%   0.011%   0.388%   0.626%   0.019%   1.247%   7.196%   0.127%
   30    6.2  1.5  1.5   2.110%   3.329%  28.997%  10.462%   4.712%   3.485%   0.043%   0.003%   0.016%   0.345%
   31    7.2  1.5  1.5   2.723%   4.561%  14.018%   5.166%   0.005%   0.005%   4.034%   0.057%   0.016%   0.946%
   32    8.2  1.5  1.5   0.860%   1.438%  11.224%   4.000%  15.090%  11.322%   3.421%   0.047%   0.025%   1.507%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.001%
   34    1.2  1.5  0.5   0.004%   0.006%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.016%
   35    2.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%   0.029%
   36    3.2  1.5  0.5   0.005%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.055%   0.002%
   37    4.2  1.5  0.5  16.888%  27.926%   0.723%   0.283%   0.233%   0.167%   0.827%   0.008%   0.015%   1.050%
   38    5.2  1.5  0.5   0.143%   0.315%  10.099%   3.844%  16.135%  11.895%   3.218%   0.030%   0.066%   2.593%
   39    6.2  1.5  0.5   7.486%   4.638%   1.038%   2.700%   1.185%   1.921%   0.141%  11.673%   8.476%   0.158%
   40    7.2  1.5  0.5   9.063%   5.416%   0.831%   2.151%   8.298%  11.023%   0.125%   8.911%   1.068%   0.018%
   41    8.2  1.5  0.5   0.607%   0.368%   0.611%   1.585%   3.255%   4.327%   0.071%   5.135%   6.687%   0.110%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%
   43    1.2  1.5 -0.5   0.006%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.016%   0.000%
   44    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.029%   0.002%
   45    3.2  1.5 -0.5   0.003%   0.005%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%   0.002%   0.055%
   46    4.2  1.5 -0.5  27.926%  16.888%   0.283%   0.723%   0.167%   0.233%   0.008%   0.827%   1.050%   0.015%
   47    5.2  1.5 -0.5   0.315%   0.143%   3.844%  10.099%  11.895%  16.135%   0.030%   3.218%   2.593%   0.066%
   48    6.2  1.5 -0.5   4.638%   7.486%   2.700%   1.038%   1.921%   1.185%  11.673%   0.141%   0.158%   8.476%
   49    7.2  1.5 -0.5   5.416%   9.063%   2.151%   0.831%  11.023%   8.298%   8.911%   0.125%   0.018%   1.068%
   50    8.2  1.5 -0.5   0.368%   0.607%   1.585%   0.611%   4.327%   3.255%   5.135%   0.071%   0.110%   6.687%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%
   52    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.006%
   54    3.2  1.5 -1.5   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.006%   0.000%
   55    4.2  1.5 -1.5   0.150%   0.225%   1.564%   0.512%   3.352%   2.573%   2.852%   0.041%   0.050%   2.947%
   56    5.2  1.5 -1.5   1.970%   3.088%   0.011%   0.011%   0.626%   0.388%   1.247%   0.019%   0.127%   7.196%
   57    6.2  1.5 -1.5   3.329%   2.110%  10.462%  28.997%   3.485%   4.712%   0.003%   0.043%   0.345%   0.016%
   58    7.2  1.5 -1.5   4.561%   2.723%   5.166%  14.018%   0.005%   0.005%   0.057%   4.034%   0.946%   0.016%
   59    8.2  1.5 -1.5   1.438%   0.860%   4.000%  11.224%  11.322%  15.090%   0.047%   3.421%   1.507%   0.025%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.001%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.090%   0.000%   0.015%   0.001%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.007%   0.009%   0.016%   0.075%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.055%   0.000%   0.037%   0.015%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   9.557%   3.017%   7.034%   0.210%   0.469%   1.280%   0.000%   0.000%
    5    5.2  0.5  0.5   0.000%   0.001%   7.361%   5.636%   3.478%   0.031%   3.248%   2.002%   0.007%   0.001%
    6    6.2  0.5  0.5   0.000%   0.000%   2.052%  11.339%   1.531%   0.342%   2.479%   4.123%   0.001%   0.002%
    7    7.2  0.5  0.5   1.197%   2.917%   0.002%   0.001%   0.116%   0.470%   3.787%   5.063%   0.729%   0.183%
    8    8.2  0.5  0.5   1.096%  23.236%   0.002%   0.004%   0.510%   0.035%   5.200%   4.446%   5.150%   0.178%
    9    9.2  0.5  0.5  18.179%   2.346%   0.002%   0.005%   0.139%   9.390%   0.515%   0.526%   0.672%   5.212%
   10   10.2  0.5  0.5   1.821%  20.769%   0.017%   0.016%   5.100%   0.147%   4.388%   0.794%   5.484%   0.611%
   11   11.2  0.5  0.5   0.161%   0.016%   0.001%   0.000%   0.050%   9.103%   0.056%   0.242%   0.001%   0.012%
   12   12.2  0.5  0.5   0.000%   0.000%   3.204%   2.692%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.090%   0.001%   0.015%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.009%   0.007%   0.075%   0.016%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.055%   0.015%   0.037%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.000%   0.000%   3.017%   9.557%   0.210%   7.034%   1.280%   0.469%   0.000%   0.000%
   17    5.2  0.5 -0.5   0.001%   0.000%   5.636%   7.361%   0.031%   3.478%   2.002%   3.248%   0.001%   0.007%
   18    6.2  0.5 -0.5   0.000%   0.000%  11.339%   2.052%   0.342%   1.531%   4.123%   2.479%   0.002%   0.001%
   19    7.2  0.5 -0.5   2.917%   1.197%   0.001%   0.002%   0.470%   0.116%   5.063%   3.787%   0.183%   0.729%
   20    8.2  0.5 -0.5  23.236%   1.096%   0.004%   0.002%   0.035%   0.510%   4.446%   5.200%   0.178%   5.150%
   21    9.2  0.5 -0.5   2.346%  18.179%   0.005%   0.002%   9.390%   0.139%   0.526%   0.515%   5.212%   0.672%
   22   10.2  0.5 -0.5  20.769%   1.821%   0.016%   0.017%   0.147%   5.100%   0.794%   4.388%   0.611%   5.484%
   23   11.2  0.5 -0.5   0.016%   0.161%   0.000%   0.001%   9.103%   0.050%   0.242%   0.056%   0.012%   0.001%
   24   12.2  0.5 -0.5   0.000%   0.000%   2.692%   3.204%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.005%   0.000%   6.425%   5.397%   0.000%   0.057%   0.170%   0.669%   0.059%   1.583%
   26    2.2  1.5  1.5   0.004%   0.001%   6.407%   5.388%   0.018%   0.028%   0.182%   0.611%   0.217%   1.455%
   27    3.2  1.5  1.5   0.005%   0.090%   0.048%   0.034%   2.730%   0.012%   0.169%   0.076%   7.091%   0.393%
   28    4.2  1.5  1.5   0.017%   0.001%   0.196%   0.155%   0.002%   0.551%   1.469%   5.986%   0.068%   1.779%
   29    5.2  1.5  1.5   0.013%   0.001%   0.191%   0.175%   0.003%   0.596%   1.631%   6.062%   0.079%   2.065%
   30    6.2  1.5  1.5   0.001%   0.014%   0.868%   1.028%   0.527%   0.002%   5.644%   1.492%   0.007%   0.002%
   31    7.2  1.5  1.5   0.517%  10.561%   0.151%   0.180%   4.982%   0.023%   2.910%   0.731%  19.303%   0.737%
   32    8.2  1.5  1.5   0.087%   1.780%   0.731%   0.870%   3.600%   0.016%   3.395%   0.853%   5.037%   0.192%
   33    9.2  1.5  1.5   0.000%   0.001%   0.001%   0.002%  14.417%   0.067%   0.964%   0.243%   0.000%   0.000%
   34    1.2  1.5  0.5   0.002%   0.034%   1.786%   2.054%   0.359%   0.002%   1.542%   0.385%   5.426%   0.207%
   35    2.2  1.5  0.5   0.003%   0.063%   1.407%   2.333%   1.760%   0.009%   0.559%   0.179%   5.443%   0.206%
   36    3.2  1.5  0.5   0.002%   0.000%   8.587%   6.709%   0.013%   0.049%   0.121%   0.334%   0.036%   0.003%
   37    4.2  1.5  0.5   0.000%   0.000%   0.536%   0.638%   7.852%   0.029%   0.424%   0.104%   0.554%   0.022%
   38    5.2  1.5  0.5   0.022%   0.465%   0.613%   0.731%   7.108%   0.040%   0.503%   0.135%   0.647%   0.015%
   39    6.2  1.5  0.5   0.182%   0.008%   0.001%   0.000%   0.035%   7.523%   0.105%   0.393%   0.121%   3.438%
   40    7.2  1.5  0.5   1.806%   0.088%   0.589%   0.495%   0.018%   3.988%   0.977%   3.890%   0.179%   4.683%
   41    8.2  1.5  0.5  11.899%   0.587%   0.192%   0.162%   0.021%   4.524%   0.740%   2.945%   0.760%  19.949%
   42    9.2  1.5  0.5   0.000%   0.000%   0.005%   0.004%   0.005%   1.183%   2.939%  11.692%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.034%   0.002%   2.054%   1.786%   0.002%   0.359%   0.385%   1.542%   0.207%   5.426%
   44    2.2  1.5 -0.5   0.063%   0.003%   2.333%   1.407%   0.009%   1.760%   0.179%   0.559%   0.206%   5.443%
   45    3.2  1.5 -0.5   0.000%   0.002%   6.709%   8.587%   0.049%   0.013%   0.334%   0.121%   0.003%   0.036%
   46    4.2  1.5 -0.5   0.000%   0.000%   0.638%   0.536%   0.029%   7.852%   0.104%   0.424%   0.022%   0.554%
   47    5.2  1.5 -0.5   0.465%   0.022%   0.731%   0.613%   0.040%   7.108%   0.135%   0.503%   0.015%   0.647%
   48    6.2  1.5 -0.5   0.008%   0.182%   0.000%   0.001%   7.523%   0.035%   0.393%   0.105%   3.438%   0.121%
   49    7.2  1.5 -0.5   0.088%   1.806%   0.495%   0.589%   3.988%   0.018%   3.890%   0.977%   4.683%   0.179%
   50    8.2  1.5 -0.5   0.587%  11.899%   0.162%   0.192%   4.524%   0.021%   2.945%   0.740%  19.949%   0.760%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.004%   0.005%   1.183%   0.005%  11.692%   2.939%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.000%   0.005%   5.397%   6.425%   0.057%   0.000%   0.669%   0.170%   1.583%   0.059%
   53    2.2  1.5 -1.5   0.001%   0.004%   5.388%   6.407%   0.028%   0.018%   0.611%   0.182%   1.455%   0.217%
   54    3.2  1.5 -1.5   0.090%   0.005%   0.034%   0.048%   0.012%   2.730%   0.076%   0.169%   0.393%   7.091%
   55    4.2  1.5 -1.5   0.001%   0.017%   0.155%   0.196%   0.551%   0.002%   5.986%   1.469%   1.779%   0.068%
   56    5.2  1.5 -1.5   0.001%   0.013%   0.175%   0.191%   0.596%   0.003%   6.062%   1.631%   2.065%   0.079%
   57    6.2  1.5 -1.5   0.014%   0.001%   1.028%   0.868%   0.002%   0.527%   1.492%   5.644%   0.002%   0.007%
   58    7.2  1.5 -1.5  10.561%   0.517%   0.180%   0.151%   0.023%   4.982%   0.731%   2.910%   0.737%  19.303%
   59    8.2  1.5 -1.5   1.780%   0.087%   0.870%   0.731%   0.016%   3.600%   0.853%   3.395%   0.192%   5.037%
   60    9.2  1.5 -1.5   0.001%   0.000%   0.002%   0.001%   0.067%  14.417%   0.243%   0.964%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.005%   0.036%   0.000%
    2    2.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.035%
    3    3.2  0.5  0.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.002%   0.000%   0.003%   0.033%   0.003%
    4    4.2  0.5  0.5   0.903%   1.260%   0.915%   2.006%   4.412%   0.910%   0.810%  22.165%   1.637%   0.664%
    5    5.2  0.5  0.5   1.656%   2.091%   0.918%   2.040%   2.954%   8.439%   0.511%  14.880%   1.694%   0.239%
    6    6.2  0.5  0.5   4.868%   1.932%   0.175%   0.458%  15.403%   4.665%   1.024%   5.135%   0.867%   0.779%
    7    7.2  0.5  0.5   3.931%   0.040%   0.417%   0.066%   7.913%   1.042%   0.023%   0.006%   0.000%   0.003%
    8    8.2  0.5  0.5   0.160%   5.893%   0.551%   1.017%   1.244%   0.105%   0.003%   0.012%   0.001%   0.001%
    9    9.2  0.5  0.5   0.075%   0.112%   4.985%   2.742%   0.127%   0.017%   0.399%   0.030%   0.000%   0.002%
   10   10.2  0.5  0.5   1.048%   4.622%   0.727%   1.177%   0.167%   0.034%   0.026%   0.428%   0.000%   0.000%
   11   11.2  0.5  0.5   0.187%   0.046%   4.095%   1.793%   0.022%   0.002%   7.960%   0.118%   0.000%   0.001%
   12   12.2  0.5  0.5   0.003%   0.001%   0.001%   0.000%   0.014%   0.002%   0.009%   0.000%   0.557%   7.451%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.005%   0.000%   0.000%   0.036%
   14    2.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.035%   0.000%
   15    3.2  0.5 -0.5   0.001%   0.000%   0.001%   0.000%   0.002%   0.000%   0.003%   0.000%   0.003%   0.033%
   16    4.2  0.5 -0.5   1.260%   0.903%   2.006%   0.915%   0.910%   4.412%  22.165%   0.810%   0.664%   1.637%
   17    5.2  0.5 -0.5   2.091%   1.656%   2.040%   0.918%   8.439%   2.954%  14.880%   0.511%   0.239%   1.694%
   18    6.2  0.5 -0.5   1.932%   4.868%   0.458%   0.175%   4.665%  15.403%   5.135%   1.024%   0.779%   0.867%
   19    7.2  0.5 -0.5   0.040%   3.931%   0.066%   0.417%   1.042%   7.913%   0.006%   0.023%   0.003%   0.000%
   20    8.2  0.5 -0.5   5.893%   0.160%   1.017%   0.551%   0.105%   1.244%   0.012%   0.003%   0.001%   0.001%
   21    9.2  0.5 -0.5   0.112%   0.075%   2.742%   4.985%   0.017%   0.127%   0.030%   0.399%   0.002%   0.000%
   22   10.2  0.5 -0.5   4.622%   1.048%   1.177%   0.727%   0.034%   0.167%   0.428%   0.026%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.046%   0.187%   1.793%   4.095%   0.002%   0.022%   0.118%   7.960%   0.001%   0.000%
   24   12.2  0.5 -0.5   0.001%   0.003%   0.000%   0.001%   0.002%   0.014%   0.000%   0.009%   7.451%   0.557%
   25    1.2  1.5  1.5   1.033%   0.230%   5.380%   2.415%   0.014%   0.002%   1.048%   0.016%   0.124%   1.655%
   26    2.2  1.5  1.5   0.668%   0.142%   5.333%   2.485%   0.236%   0.025%   1.249%   0.038%   0.111%   1.490%
   27    3.2  1.5  1.5   0.008%   0.000%   0.388%   0.522%   0.001%   0.013%   0.034%   0.598%   0.001%   0.010%
   28    4.2  1.5  1.5   1.283%   0.265%   6.926%   3.079%  16.808%   1.938%   0.337%   0.005%   0.267%   3.983%
   29    5.2  1.5  1.5   1.892%   0.330%   6.259%   2.794%  13.598%   1.638%   3.240%   0.043%   0.342%   4.183%
   30    6.2  1.5  1.5   2.023%   9.805%   0.003%   0.001%   0.208%   1.624%   0.003%   0.383%  14.715%   1.094%
   31    7.2  1.5  1.5   0.516%   2.441%   2.326%   5.214%   0.107%   0.921%   0.029%   1.983%   2.916%   0.218%
   32    8.2  1.5  1.5   1.575%   7.264%   0.586%   1.301%   0.110%   0.915%   0.028%   1.898%  11.775%   0.880%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.008%   0.001%   0.067%   0.002%   0.000%
   34    1.2  1.5  0.5   0.357%   1.649%   0.312%   0.696%   0.157%   1.283%   0.000%   0.033%   0.560%   0.045%
   35    2.2  1.5  0.5   0.130%   1.964%   0.329%   0.736%   0.099%   1.175%   0.000%   0.000%   0.610%   0.044%
   36    3.2  1.5  0.5   8.423%   1.480%   0.004%   0.007%   2.732%   0.275%   0.001%   0.000%   0.138%   1.956%
   37    4.2  1.5  0.5   1.147%   5.289%   0.656%   1.353%   0.518%   4.553%   0.074%   5.605%  10.791%   0.807%
   38    5.2  1.5  0.5   1.668%   7.674%   0.671%   1.388%   0.157%   1.366%   0.060%   6.786%  10.551%   0.789%
   39    6.2  1.5  0.5   0.146%   0.063%   9.882%   4.508%   0.534%   0.045%  19.561%   0.232%   0.006%   0.004%
   40    7.2  1.5  0.5   7.404%   1.606%   1.444%   0.646%   0.751%   0.090%   1.316%   0.019%   0.889%  11.899%
   41    8.2  1.5  0.5   2.223%   0.470%   5.728%   2.543%   0.528%   0.061%   1.727%   0.025%   0.218%   2.915%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.025%   0.003%   0.014%   0.000%   0.000%   0.005%
   43    1.2  1.5 -0.5   1.649%   0.357%   0.696%   0.312%   1.283%   0.157%   0.033%   0.000%   0.045%   0.560%
   44    2.2  1.5 -0.5   1.964%   0.130%   0.736%   0.329%   1.175%   0.099%   0.000%   0.000%   0.044%   0.610%
   45    3.2  1.5 -0.5   1.480%   8.423%   0.007%   0.004%   0.275%   2.732%   0.000%   0.001%   1.956%   0.138%
   46    4.2  1.5 -0.5   5.289%   1.147%   1.353%   0.656%   4.553%   0.518%   5.605%   0.074%   0.807%  10.791%
   47    5.2  1.5 -0.5   7.674%   1.668%   1.388%   0.671%   1.366%   0.157%   6.786%   0.060%   0.789%  10.551%
   48    6.2  1.5 -0.5   0.063%   0.146%   4.508%   9.882%   0.045%   0.534%   0.232%  19.561%   0.004%   0.006%
   49    7.2  1.5 -0.5   1.606%   7.404%   0.646%   1.444%   0.090%   0.751%   0.019%   1.316%  11.899%   0.889%
   50    8.2  1.5 -0.5   0.470%   2.223%   2.543%   5.728%   0.061%   0.528%   0.025%   1.727%   2.915%   0.218%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.003%   0.025%   0.000%   0.014%   0.005%   0.000%
   52    1.2  1.5 -1.5   0.230%   1.033%   2.415%   5.380%   0.002%   0.014%   0.016%   1.048%   1.655%   0.124%
   53    2.2  1.5 -1.5   0.142%   0.668%   2.485%   5.333%   0.025%   0.236%   0.038%   1.249%   1.490%   0.111%
   54    3.2  1.5 -1.5   0.000%   0.008%   0.522%   0.388%   0.013%   0.001%   0.598%   0.034%   0.010%   0.001%
   55    4.2  1.5 -1.5   0.265%   1.283%   3.079%   6.926%   1.938%  16.808%   0.005%   0.337%   3.983%   0.267%
   56    5.2  1.5 -1.5   0.330%   1.892%   2.794%   6.259%   1.638%  13.598%   0.043%   3.240%   4.183%   0.342%
   57    6.2  1.5 -1.5   9.805%   2.023%   0.001%   0.003%   1.624%   0.208%   0.383%   0.003%   1.094%  14.715%
   58    7.2  1.5 -1.5   2.441%   0.516%   5.214%   2.326%   0.921%   0.107%   1.983%   0.029%   0.218%   2.916%
   59    8.2  1.5 -1.5   7.264%   1.575%   1.301%   0.586%   0.915%   0.110%   1.898%   0.028%   0.880%  11.775%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.008%   0.001%   0.067%   0.001%   0.000%   0.002%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.001%   0.000%   0.003%   0.004%   0.000%   0.031%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.001%   0.005%   0.000%   0.000%   0.030%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.002%   0.001%   0.002%   0.003%   0.002%   0.028%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.179%   0.780%   1.430%   1.686%   2.201%   4.349%   0.589%   1.907%   0.038%   9.934%
    5    5.2  0.5  0.5   1.031%   0.913%   0.856%   1.539%   0.858%   5.517%   2.121%   4.281%   0.116%   5.993%
    6    6.2  0.5  0.5   1.558%   2.138%   0.399%   0.453%   3.518%   2.698%   6.711%   3.156%   0.787%   1.884%
    7    7.2  0.5  0.5   6.932%   9.377%   0.435%   0.274%   0.004%   0.001%   6.018%   3.740%   0.328%   0.194%
    8    8.2  0.5  0.5   7.376%   7.965%   0.471%   0.956%   0.000%   0.003%   2.753%   6.751%   0.039%   0.582%
    9    9.2  0.5  0.5   0.626%   0.510%  10.399%   5.028%   0.002%   0.001%   0.650%   0.244%   8.875%   0.271%
   10   10.2  0.5  0.5   7.657%   1.581%   1.798%   5.595%   0.002%   0.016%   3.101%   1.838%   0.303%   4.835%
   11   11.2  0.5  0.5   0.027%   0.100%   9.829%   7.048%   0.003%   0.000%   0.106%   0.107%  10.014%   0.060%
   12   12.2  0.5  0.5   0.006%   0.017%   0.012%   0.008%  61.267%   4.267%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.001%   0.004%   0.003%   0.031%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.005%   0.001%   0.000%   0.000%   0.000%   0.030%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.001%   0.002%   0.003%   0.002%   0.028%   0.002%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.780%   0.179%   1.686%   1.430%   4.349%   2.201%   1.907%   0.589%   9.934%   0.038%
   17    5.2  0.5 -0.5   0.913%   1.031%   1.539%   0.856%   5.517%   0.858%   4.281%   2.121%   5.993%   0.116%
   18    6.2  0.5 -0.5   2.138%   1.558%   0.453%   0.399%   2.698%   3.518%   3.156%   6.711%   1.884%   0.787%
   19    7.2  0.5 -0.5   9.377%   6.932%   0.274%   0.435%   0.001%   0.004%   3.740%   6.018%   0.194%   0.328%
   20    8.2  0.5 -0.5   7.965%   7.376%   0.956%   0.471%   0.003%   0.000%   6.751%   2.753%   0.582%   0.039%
   21    9.2  0.5 -0.5   0.510%   0.626%   5.028%  10.399%   0.001%   0.002%   0.244%   0.650%   0.271%   8.875%
   22   10.2  0.5 -0.5   1.581%   7.657%   5.595%   1.798%   0.016%   0.002%   1.838%   3.101%   4.835%   0.303%
   23   11.2  0.5 -0.5   0.100%   0.027%   7.048%   9.829%   0.000%   0.003%   0.107%   0.106%   0.060%  10.014%
   24   12.2  0.5 -0.5   0.017%   0.006%   0.008%   0.012%   4.267%  61.267%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.214%   0.594%   0.015%   0.010%   1.291%   0.090%   2.252%   2.147%   0.306%   0.004%
   26    2.2  1.5  1.5   0.227%   0.587%   0.059%   0.003%   1.326%   0.092%   2.333%   2.046%   0.271%   0.108%
   27    3.2  1.5  1.5   0.053%   0.040%   1.016%   1.493%   0.009%   0.001%   0.343%   0.588%   0.108%  12.881%
   28    4.2  1.5  1.5   0.002%   0.006%   0.001%   0.000%   0.354%   0.022%   0.818%   0.803%   0.096%   0.001%
   29    5.2  1.5  1.5   0.002%   0.006%   0.002%   0.001%   0.332%   0.026%   0.834%   0.767%   0.122%   0.001%
   30    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.121%   1.732%   0.722%   0.768%   0.001%   0.100%
   31    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.024%   0.340%   0.332%   0.350%   0.006%   0.928%
   32    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.098%   1.403%   0.437%   0.453%   0.005%   0.668%
   33    9.2  1.5  1.5   1.357%   0.470%  18.883%  26.561%   0.000%   0.004%   0.746%   0.801%   0.153%  22.554%
   34    1.2  1.5  0.5   1.200%   0.425%   0.217%   0.305%   0.033%   0.435%   4.191%   4.361%   0.013%   2.088%
   35    2.2  1.5  0.5   0.543%   0.225%   0.548%   0.744%   0.033%   0.503%   1.592%   1.867%   0.044%   7.168%
   36    3.2  1.5  0.5   0.088%   0.166%   0.002%   0.023%   1.936%   0.125%   0.847%   0.626%   0.091%   0.043%
   37    4.2  1.5  0.5   0.001%   0.000%   0.003%   0.004%   0.097%   1.401%   0.055%   0.058%   0.013%   1.611%
   38    5.2  1.5  0.5   0.002%   0.001%   0.003%   0.004%   0.098%   1.416%   0.043%   0.049%   0.008%   1.585%
   39    6.2  1.5  0.5   0.000%   0.000%   0.012%   0.009%   0.006%   0.000%   0.053%   0.048%   1.659%   0.010%
   40    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   1.378%   0.096%   0.471%   0.454%   0.678%   0.005%
   41    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.344%   0.024%   0.341%   0.324%   0.885%   0.006%
   42    9.2  1.5  0.5  11.877%  33.127%   1.081%   0.772%   0.010%   0.001%  11.737%  11.269%   1.516%   0.012%
   43    1.2  1.5 -0.5   0.425%   1.200%   0.305%   0.217%   0.435%   0.033%   4.361%   4.191%   2.088%   0.013%
   44    2.2  1.5 -0.5   0.225%   0.543%   0.744%   0.548%   0.503%   0.033%   1.867%   1.592%   7.168%   0.044%
   45    3.2  1.5 -0.5   0.166%   0.088%   0.023%   0.002%   0.125%   1.936%   0.626%   0.847%   0.043%   0.091%
   46    4.2  1.5 -0.5   0.000%   0.001%   0.004%   0.003%   1.401%   0.097%   0.058%   0.055%   1.611%   0.013%
   47    5.2  1.5 -0.5   0.001%   0.002%   0.004%   0.003%   1.416%   0.098%   0.049%   0.043%   1.585%   0.008%
   48    6.2  1.5 -0.5   0.000%   0.000%   0.009%   0.012%   0.000%   0.006%   0.048%   0.053%   0.010%   1.659%
   49    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.096%   1.378%   0.454%   0.471%   0.005%   0.678%
   50    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.024%   0.344%   0.324%   0.341%   0.006%   0.885%
   51    9.2  1.5 -0.5  33.127%  11.877%   0.772%   1.081%   0.001%   0.010%  11.269%  11.737%   0.012%   1.516%
   52    1.2  1.5 -1.5   0.594%   0.214%   0.010%   0.015%   0.090%   1.291%   2.147%   2.252%   0.004%   0.306%
   53    2.2  1.5 -1.5   0.587%   0.227%   0.003%   0.059%   0.092%   1.326%   2.046%   2.333%   0.108%   0.271%
   54    3.2  1.5 -1.5   0.040%   0.053%   1.493%   1.016%   0.001%   0.009%   0.588%   0.343%  12.881%   0.108%
   55    4.2  1.5 -1.5   0.006%   0.002%   0.000%   0.001%   0.022%   0.354%   0.803%   0.818%   0.001%   0.096%
   56    5.2  1.5 -1.5   0.006%   0.002%   0.001%   0.002%   0.026%   0.332%   0.767%   0.834%   0.001%   0.122%
   57    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   1.732%   0.121%   0.768%   0.722%   0.100%   0.001%
   58    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.340%   0.024%   0.350%   0.332%   0.928%   0.006%
   59    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   1.403%   0.098%   0.453%   0.437%   0.668%   0.005%
   60    9.2  1.5 -1.5   0.470%   1.357%  26.561%  18.883%   0.004%   0.000%   0.801%   0.746%  22.554%   0.153%


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

              2       7     4759.87       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    344947.43 312620.32  10185.40  22131.70      6.36      0.47      2.96
 REAL TIME  *    347870.66 SEC
 DISK USED  *         4.70 GB (local),       37.91 GB (total)
 SF USED    *        30.23 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -295.324913544362

              CI              CI           MULTI         RHF-SCF
   -295.23643537   -295.23745970   -294.28426562   -294.74684227
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
