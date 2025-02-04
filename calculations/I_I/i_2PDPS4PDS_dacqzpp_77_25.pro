
 Working directory              : /wrk/irikura/molpro.uGFXn7NY0V/
 Global scratch directory       : /wrk/irikura/molpro.uGFXn7NY0V/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.uGFXn7NY0V/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    8
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
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
     wf,charge=0,sym=2,spin=1;state,NDOUB; weight,3[25],(NDOUB-3)[1]
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
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   I SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 04-Nov-24          TIME: 10:02:57  
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

     159.646 MB (compressed) written to integral file ( 14.8%)

     Node minimum: 15.466 MB, node maximum: 24.904 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    9344772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    9344772      RECORD LENGTH: 524288

 Memory used in sort:       9.90 MW

 SORT1 READ   134353782. AND WROTE     1729514. INTEGRALS IN      5 RECORDS. CPU TIME:     0.54 SEC, REAL TIME:     0.57 SEC
 SORT2 READ    13879740. AND WROTE    74805201. INTEGRALS IN    680 RECORDS. CPU TIME:     0.19 SEC, REAL TIME:     0.21 SEC

 Node minimum:     9343692.  Node maximum:     9360852. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.52       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.15      2.94
 REAL TIME  *         5.18 SEC
 DISK USED  *        29.89 MB (local),      522.56 MB (total)
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
   3     -294.74637849      -0.00206307     0.19D-02     0.94D-03     2     0       0.04      0.17    diag
   4     -294.74675619      -0.00037770     0.35D-03     0.57D-03     3     0       0.04      0.21    diag
   5     -294.74683481      -0.00007862     0.12D-03     0.29D-03     4     0       0.04      0.25    diag
   6     -294.74684197      -0.00000716     0.31D-04     0.11D-03     5     0       0.04      0.29    diag
   7     -294.74684226      -0.00000028     0.51D-05     0.26D-04     6     0       0.05      0.34    diag
   8     -294.74684227      -0.00000001     0.10D-05     0.46D-05     7     0       0.04      0.38    fixocc
   9     -294.74684227      -0.00000000     0.18D-06     0.15D-05     8     0       0.04      0.42    diag
  10     -294.74684227      -0.00000000     0.29D-07     0.96D-07     0     0       0.05      0.47    diag/orth

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -294.746842268717
  RHF One-electron energy            -520.926302813549
  RHF Two-electron energy             226.179460544832
  RHF Kinetic energy                  110.887727635287
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.658065491595

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45092     1  1  s    1.00212
    2.1     2.00000    -2.00365     1  1  d1+  0.99786
    3.1     2.00000    -2.00365     1  1  d2+  0.99931
    4.1     2.00000    -2.00365     1  1  d1-  0.96775
    5.1     2.00000    -2.00365     1  1  d2-  0.96973
    6.1     2.00000    -2.00365     1  1  d0   0.99958
    7.1     2.00000    -0.60773     1  2  s    0.97340
    1.2     2.00000    -5.27628     1  1  px   1.00042
    2.2     2.00000    -5.27628     1  1  pz   1.00033
    3.2     2.00000    -5.27628     1  1  py   1.00033
    4.2     2.00000    -0.12599     1  1  px  -0.32248    1  4  px   0.40596    1  5  px   0.45491    1  6  px   0.25437
    5.2     2.00000    -0.12599     1  1  py  -0.32248    1  4  py   0.40596    1  5  py   0.45490    1  6  py   0.25437
    6.2     2.00000    -0.12599     1  1  pz  -0.32248    1  4  pz   0.40596    1  5  pz   0.45490    1  6  pz   0.25437


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
 CPU TIMES  *         3.62      0.47      2.94
 REAL TIME  *         6.28 SEC
 DISK USED  *        31.41 MB (local),      534.71 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.586D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.276D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.250D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.208D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.298D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 5 6 3 2 1 1 3 5   4 6 2 1 3 5 2 6 4 1   4 6 2 5 31514 7 812  11 91310 1 2 6 4 3 5
                                       1415 812 911 71310 2   6 4 3 5 1 812 71415  1311 910 2 6 4 3 5 1   812151411 91310 7 2
                                        6 4 3 5 1 2 6 3 4 5   1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.133D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.133D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.255D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.255D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.392D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.170D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.272D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 2 3 1 2 3 1   2 3 7 9 810 6 5 4 1   2 310 8 7 9 6 4 5 1   2 310 8 7 9 4 5 6 8
                                       10 5 4 7 9 6 1 2 310   8 6 5 4 7 914161915  1718202113121110 8 7   9 5 4 6 1 2 3 1 2 3
                                        9 7 8 610 5 4 2 3 1   2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.26882   0.26882   0.26882   0.01075   0.01075   0.01075   0.01075   0.01075
                                          0.01075   0.01075   0.01075   0.01075
 Weight factors for state symmetry  2:    0.01075   0.01075   0.01075   0.01075   0.01075   0.01075   0.01075   0.01075
                                          0.01075
 
 Number of orbital rotations:  1375  ( 24 closed/active, 762 closed/virtual, 0 active/active, 589 active/virtual )
 Total number of variables:    10195
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   31    0   -294.54853603    -294.61667442   -0.06813839    0.27390605 0.00090373 0.00217507  0.12E+01      1.95
   2    8   24    0   -294.59385501    -294.60063387   -0.00677886    0.21765030 0.00058546 0.00064058  0.49E+00      3.96
   3    7   21    0   -294.60069168    -294.60069368   -0.00000200    0.00229100 0.00000029 0.00000182  0.14E-01      5.88
   4    5   13    0   -294.60069368    -294.60069368   -0.00000000    0.00000085 0.00000000 0.00000004  0.37E-05      7.33

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.70E-08)
                       Final energy:   -294.60069368
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -294.656626531569
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.88934988
 One electron energy                          -513.86120858
 Two electron energy                           219.20458205
 Virial ratio                                    3.65721304
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -294.656626531489
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.88934989
 One electron energy                          -513.86120860
 Two electron energy                           219.20458207
 Virial ratio                                    3.65721304
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -294.656626531469
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.88934989
 One electron energy                          -513.86120860
 Two electron energy                           219.20458207
 Virial ratio                                    3.65721304
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -294.366536218632
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.20203443
 One electron energy                          -507.68929212
 Two electron energy                           213.32275590
 Virial ratio                                    3.67115338
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -294.366536218217
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.20203444
 One electron energy                          -507.68929215
 Two electron energy                           213.32275593
 Virial ratio                                    3.67115338
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -294.366536218066
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.20203444
 One electron energy                          -507.68929216
 Two electron energy                           213.32275594
 Virial ratio                                    3.67115338
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -294.366536216682
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.20203445
 One electron energy                          -507.68929225
 Two electron energy                           213.32275604
 Virial ratio                                    3.67115337
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -294.366536216679
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.20203445
 One electron energy                          -507.68929225
 Two electron energy                           213.32275604
 Virial ratio                                    3.67115337
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -294.360199404929
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.25742815
 One electron energy                          -507.91229887
 Two electron energy                           213.55209947
 Virial ratio                                    3.66975391
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -294.360199404742
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.25742815
 One electron energy                          -507.91229888
 Two electron energy                           213.55209948
 Virial ratio                                    3.66975391
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -294.360199402933
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.25742816
 One electron energy                          -507.91229896
 Two electron energy                           213.55209955
 Virial ratio                                    3.66975391
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -294.359032689951
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.19813074
 One electron energy                          -507.67787341
 Two electron energy                           213.31884072
 Virial ratio                                    3.67117991
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -294.377996244978
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.17456889
 One electron energy                          -507.60011811
 Two electron energy                           213.22212187
 Virial ratio                                    3.67192329
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -294.377996244901
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.17456889
 One electron energy                          -507.60011812
 Two electron energy                           213.22212188
 Virial ratio                                    3.67192329
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -294.377996244225
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.17456890
 One electron energy                          -507.60011821
 Two electron energy                           213.22212196
 Virial ratio                                    3.67192329
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -294.370352940324
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18453511
 One electron energy                          -507.63351623
 Two electron energy                           213.26316329
 Virial ratio                                    3.67161224
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -294.370352940005
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18453511
 One electron energy                          -507.63351626
 Two electron energy                           213.26316332
 Virial ratio                                    3.67161224
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -294.370352939885
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18453511
 One electron energy                          -507.63351627
 Two electron energy                           213.26316333
 Virial ratio                                    3.67161224
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -294.370352938817
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18453513
 One electron energy                          -507.63351636
 Two electron energy                           213.26316342
 Virial ratio                                    3.67161224
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -294.370352938813
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.18453513
 One electron energy                          -507.63351636
 Two electron energy                           213.26316342
 Virial ratio                                    3.67161224
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -294.359457029755
 Nuclear energy                                  0.00000000
 Kinetic energy                                110.19391205
 One electron energy                          -507.66225322
 Two electron energy                           213.30279619
 Virial ratio                                    3.67128602
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999999601
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999971128
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.000000029270
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.150778657838
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.999999999328
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000549
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     0.999999231927
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     0.849222110407
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>    -0.000000000006
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     1.000000000001
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     1.000000000001
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>    -0.000000000004
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000005760
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999999994237
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     1.000000000004
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     3.154170710881
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.999999941084
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000043215
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000000000004
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.845827359052
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>    -0.000000000005
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.000000000404
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999999999994
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999999601
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.008001564729
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.999999999948
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     1.000000000010
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     3.999999958751
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     3.991998476612
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>     1.000000000001
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     1.000000000000
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>    -0.000000000005
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>    -0.000000000005
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     1.000000000004
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     1.000000000003
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>    -0.000000000007
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     0.008376742570
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000000000004
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.000000000004
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     4.000000000022
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     3.991623041878
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>    -0.000000000005
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999999999994
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.000000028877
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999971128
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     2.841219777463
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000000000754
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     3.999999999470
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     1.000000809352
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.158779413011
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     1.000000000001
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>    -0.000000000005
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     1.000000000000
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>    -0.000000000004
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999999994237
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.000000005761
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     1.000000000004
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     2.837452546578
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000000058942
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     3.999999956811
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000000000004
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     1.162549599100
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>    -0.000000000004
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000029
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000029
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     6.000000000029
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     6.000000000030
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     6.000000000030
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     1.999999999996
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     1.999999999997
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     1.999999999996
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>    -0.000000000013
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000001
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000001
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000001
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000030
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000030
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000030
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000030
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000030
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>    -0.000000000014
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 6 2   4 3 5 1 2 6 4 3 5 1   6 2 4 3 511 7 812 9  15141310 1 2 6 4 3 5
                                       11 712 8 915141310 2   6 4 3 5 111 7 9 812  15141310 2 6 4 3 5 1  11 7 9 81215141310 2
                                        6 4 3 5 1 2 6 4 3 5   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 1   3 2 5 6 810 4 9 7 1   3 2 5 610 8 4 9 7 5   6 4 810 7 9 3 1 2 5
                                        6 4 810 7 9 3 2 1 5   6 410 8 7 912192113  11141615172018 5 6 4  10 8 7 9 3 2 1 3 2 1
                                        6 5 4 810 7 9 3 2 1   3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.78665     1  1  s    1.00208
    2.1     2.00000    -2.33877     1  1  d0   1.00018
    3.1     2.00000    -2.33877     1  1  d1-  1.00018
    4.1     2.00000    -2.33877     1  1  d1+  1.00018
    5.1     2.00000    -2.33877     1  1  d2-  1.00018
    6.1     2.00000    -2.33877     1  1  d2+  1.00018
    7.1     1.99963    -0.90831     1  2  s    1.00575
    1.2     2.00000    -5.61136     1  1  pz   0.99997
    2.2     2.00000    -5.61136     1  1  py   0.99997
    3.2     2.00000    -5.61136     1  1  px   0.99997
    4.2     1.60028    -0.36421     1  1  px  -0.35116    1  4  px   0.46484    1  5  px   0.50605
    5.2     1.60028    -0.36421     1  1  py  -0.35116    1  4  py   0.46484    1  5  py   0.50605
    6.2     1.60028    -0.36421     1  1  pz  -0.35116    1  4  pz   0.46484    1  5  pz   0.50605
    7.2     0.06651     0.06466     1 10  px   0.76376    1 11  px   0.29862
    8.2     0.06651     0.06466     1 10  py   0.76376    1 11  py   0.29862
    9.2     0.06651     0.06466     1 10  pz   0.76376    1 11  pz   0.29862
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a2000       0.99847063      0.00000248      0.00001994     -0.00000000      0.00000000      0.00000000     -0.00000000
 2 22a000      -0.00000248      0.99847061      0.00016966     -0.00000000      0.00000000      0.00000001      0.00000000
 2 a22000      -0.00001994     -0.00016966      0.99847061     -0.00000000      0.00000001     -0.00000000      0.00000000
 2 a2a0b0       0.00000000      0.00000000     -0.00000000      0.66077097      0.00000559      0.00000391     -0.00006718
 2 2aab00      -0.00000000      0.00000000     -0.00000000      0.30476566      0.00000389      0.00000406     -0.00131763
 2 2aa0b0       0.00000005     -0.02207419     -0.00000375     -0.00000329      0.00000776      0.57281773      0.00000022
 2 aa20b0      -0.00000044     -0.00000375      0.02207419      0.00000479     -0.57281772      0.00000776     -0.00000070
 2 a2a00b      -0.00000044     -0.00000375      0.02207419     -0.00000479      0.57281745     -0.00000776      0.00000070
 2 a2ab00       0.00000005     -0.02207419     -0.00000375      0.00000329     -0.00000776     -0.57281744     -0.00000022
 2 2aa00b       0.02207419      0.00000005      0.00000044      0.00000069     -0.00000070     -0.00000022      0.57281616
 2 aa2b00      -0.02207419     -0.00000005     -0.00000044      0.00000069     -0.00000070     -0.00000022      0.57281613
 2 aa200b      -0.00000000      0.00000000      0.00000000      0.35600503      0.00000170     -0.00000016      0.00125045
 2 a2ba00      -0.00000003      0.01294044      0.00000220     -0.00000168      0.00000397      0.29280473      0.00000011
 2 b2a00a       0.00000026      0.00000220     -0.01294044      0.00000245     -0.29280474      0.00000397     -0.00000036
 2 ab2a00       0.01294044      0.00000003      0.00000026     -0.00000035      0.00000036      0.00000011     -0.29280408
 2 2ba00a      -0.01294044     -0.00000003     -0.00000026     -0.00000035      0.00000036      0.00000011     -0.29280410
 2 ba20a0       0.00000026      0.00000220     -0.01294044     -0.00000245      0.29280492     -0.00000397      0.00000036
 2 2ab0a0      -0.00000003      0.01294044      0.00000220      0.00000168     -0.00000397     -0.29280493     -0.00000011
 2 b2a0a0       0.00000000     -0.00000000     -0.00000000     -0.33095762     -0.00000277     -0.00000191      0.00000492
 2 a2b0a0      -0.00000000      0.00000000      0.00000000     -0.32981335     -0.00000282     -0.00000200      0.00006227
 2 2baa00      -0.00000000      0.00000000      0.00000000     -0.14102959     -0.00000186     -0.00000199      0.00067203
 2 2aba00       0.00000000     -0.00000000     -0.00000000     -0.16373607     -0.00000203     -0.00000207      0.00064560
 2 ab200a       0.00000000     -0.00000000     -0.00000000     -0.16722141     -0.00000075      0.00000017     -0.00064069
 2 2ba0a0      -0.00000002      0.00913375      0.00000155      0.00000161     -0.00000379     -0.28001280     -0.00000011
 2 ab20a0       0.00000018      0.00000155     -0.00913375     -0.00000234      0.28001280     -0.00000379      0.00000034
 2 a2b00a       0.00000018      0.00000155     -0.00913375      0.00000234     -0.28001271      0.00000379     -0.00000034
 2 b2aa00      -0.00000002      0.00913375      0.00000155     -0.00000161      0.00000379      0.28001271      0.00000011
 2 2ab00a      -0.00913375     -0.00000002     -0.00000018     -0.00000034      0.00000034      0.00000011     -0.28001205
 2 ba2a00       0.00913375      0.00000002      0.00000018     -0.00000034      0.00000034      0.00000011     -0.28001205
 2 ba200a       0.00000000      0.00000000      0.00000000     -0.18878362     -0.00000096     -0.00000001     -0.00060976
 2 2020a0      -0.00958397     -0.00000002     -0.00000019     -0.00000000      0.00000000      0.00000000     -0.00000001
 2 022a00       0.00000019      0.00000163     -0.00958397     -0.00000000      0.00000004     -0.00000000      0.00000000
 2 22000a       0.00000002     -0.00958397     -0.00000163     -0.00000000      0.00000000      0.00000005      0.00000000
 2 20a020       0.00000004     -0.01423112     -0.00000242     -0.00000036      0.00000084      0.06220261      0.00000002
 2 a02020       0.00000028      0.00000242     -0.01423112     -0.00000052      0.06220261     -0.00000084      0.00000008
 2 a20002       0.00000028      0.00000242     -0.01423113      0.00000052     -0.06220258      0.00000084     -0.00000008
 2 02a200       0.00000004     -0.01423113     -0.00000242      0.00000036     -0.00000084     -0.06220258     -0.00000002
 2 2a0002      -0.01423113     -0.00000004     -0.00000028     -0.00000008      0.00000008      0.00000002     -0.06220244
 2 0a2200      -0.01423113     -0.00000004     -0.00000028      0.00000008     -0.00000008     -0.00000002      0.06220244
 
 Energy:     -294.65662653   -294.65662653   -294.65662653   -294.36653622   -294.36653622   -294.36653622   -294.36653622

 State:              8               9              10              11              12
 2 2a2000      -0.00000000      0.00000000      0.00000004     -0.04120287     -0.00000000
 2 22a000      -0.00000000     -0.00000000      0.04120287      0.00000004      0.00000000
 2 a22000      -0.00000000     -0.04120287     -0.00000000     -0.00000000      0.00000000
 2 a2a0b0       0.02958300     -0.00000000      0.00000000      0.00000000     -0.46805368
 2 2aab00       0.58703441      0.00000000     -0.00000000     -0.00000000      0.46805389
 2 2aa0b0      -0.00000226     -0.00000001      0.52979008      0.00000046      0.00000000
 2 aa20b0       0.00000131      0.52979009      0.00000001      0.00000000     -0.00000000
 2 a2a00b      -0.00000131      0.52979037      0.00000001      0.00000000     -0.00000000
 2 a2ab00       0.00000226     -0.00000001      0.52979039      0.00000046      0.00000000
 2 2aa00b       0.00128536     -0.00000000     -0.00000046      0.52979021      0.00000000
 2 aa2b00       0.00128536      0.00000000      0.00000046     -0.52979024      0.00000000
 2 aa200b      -0.55745145      0.00000000     -0.00000000     -0.00000000      0.46805387
 2 a2ba00      -0.00000116      0.00000001     -0.40727401     -0.00000036     -0.00000000
 2 b2a00a       0.00000067     -0.40727400     -0.00000001     -0.00000000      0.00000000
 2 ab2a00      -0.00065703     -0.00000000     -0.00000036      0.40727395      0.00000000
 2 2ba00a      -0.00065703      0.00000000      0.00000036     -0.40727393     -0.00000000
 2 ba20a0      -0.00000067     -0.40727386     -0.00000001     -0.00000000      0.00000000
 2 2ab0a0       0.00000116      0.00000001     -0.40727385     -0.00000036     -0.00000000
 2 b2a0a0      -0.00201226      0.00000000     -0.00000000      0.00000000      0.23402684
 2 a2b0a0      -0.02757074      0.00000000     -0.00000000     -0.00000000      0.23402684
 2 2baa00      -0.29941134     -0.00000000      0.00000000      0.00000000     -0.23402694
 2 2aba00      -0.28762307     -0.00000000      0.00000000      0.00000000     -0.23402695
 2 ab200a       0.28561083     -0.00000000      0.00000000      0.00000000     -0.23402693
 2 2ba0a0       0.00000110      0.00000000     -0.12251623     -0.00000011     -0.00000000
 2 ab20a0      -0.00000064     -0.12251623     -0.00000000     -0.00000000      0.00000000
 2 a2b00a       0.00000064     -0.12251637     -0.00000000     -0.00000000     -0.00000000
 2 b2aa00      -0.00000110      0.00000000     -0.12251637     -0.00000011     -0.00000000
 2 2ab00a      -0.00062833      0.00000000      0.00000011     -0.12251628     -0.00000000
 2 ba2a00      -0.00062833     -0.00000000     -0.00000011      0.12251629     -0.00000000
 2 ba200a       0.27184062     -0.00000000      0.00000000     -0.00000000     -0.23402694
 2 2020a0      -0.00000000      0.00000000      0.00000021     -0.23606968     -0.00000000
 2 022a00      -0.00000000     -0.23606966     -0.00000001     -0.00000000      0.00000000
 2 22000a      -0.00000000     -0.00000001      0.23606966      0.00000021      0.00000000
 2 20a020      -0.00000025     -0.00000000      0.04781401      0.00000004      0.00000000
 2 a02020      -0.00000014     -0.04781402     -0.00000000     -0.00000000      0.00000000
 2 a20002       0.00000014     -0.04781405     -0.00000000     -0.00000000      0.00000000
 2 02a200       0.00000025     -0.00000000      0.04781405      0.00000004      0.00000000
 2 2a0002      -0.00013958      0.00000000      0.00000004     -0.04781403     -0.00000000
 2 0a2200       0.00013958      0.00000000      0.00000004     -0.04781403      0.00000000
 
 Energy:     -294.36653622   -294.36019940   -294.36019940   -294.36019940   -294.35903269
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 a2a0a0       0.00000000      0.00000000     -0.00000000      0.81085478     -0.00001915      0.00000286      0.00000001
 2 2aaa00      -0.00000000     -0.00000000      0.00000000      0.37325837     -0.00000910      0.00000137      0.00000000
 2 2aa0a0      -0.00005343      0.70351669     -0.00000076      0.00000247     -0.00009853     -0.70295713     -0.00000011
 2 aa20a0       0.70351668      0.00005343     -0.00000005      0.00001659      0.70295714     -0.00009853     -0.00000014
 2 2aa00a      -0.00000005     -0.00000076     -0.70351661     -0.00000001      0.00000014     -0.00000011      0.70295722
 2 aa2a00       0.00000005      0.00000076      0.70351660     -0.00000001      0.00000014     -0.00000011      0.70295724
 2 a2a00a       0.70351652      0.00005343     -0.00000005     -0.00001659     -0.70295730      0.00009853      0.00000014
 2 a2aa00      -0.00005343      0.70351652     -0.00000076     -0.00000247      0.00009853      0.70295731      0.00000011
 2 aa200a      -0.00000000     -0.00000000      0.00000000      0.43759621     -0.00001005      0.00000148      0.00000000
 2 02aaa0       0.00000000      0.00000000     -0.00000000      0.05453931     -0.00000129      0.00000019      0.00000000
 2 a200aa       0.00000000      0.00000000     -0.00000000      0.05434599     -0.00000128      0.00000019      0.00000000
 
 Energy:     -294.37799624   -294.37799624   -294.37799624   -294.37035294   -294.37035294   -294.37035294   -294.37035294

 State:              8               9
 2 a2a0a0       0.03714548     -0.57337417
 2 2aaa00       0.72079351      0.57337433
 2 2aa0a0       0.00000006      0.00000000
 2 aa20a0       0.00000029      0.00000000
 2 2aa00a      -0.00000000      0.00000000
 2 aa2a00       0.00000000      0.00000000
 2 a2a00a      -0.00000029      0.00000000
 2 a2aa00      -0.00000006     -0.00000000
 2 aa200a      -0.68364806      0.57337431
 2 02aaa0       0.00038407     -0.04106008
 2 a200aa       0.00460399     -0.04106008
 
 Energy:     -294.37035294   -294.35945703
 


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
 CPU TIMES  *         9.56      5.94      0.47      2.94
 REAL TIME  *        14.43 SEC
 DISK USED  *        58.59 MB (local),      752.17 MB (total)
 SF USED    *        72.65 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -294.6566265   2.0
    -294.6566265   2.0
    -294.6566265   2.0
    -294.3665362   6.0
    -294.3665362   6.0
    -294.3665362   6.0
    -294.3665362   6.0
    -294.3665362   6.0
    -294.3601994   2.0
    -294.3601994   2.0
    -294.3601994   2.0
    -294.3590327  -0.0
    -294.3779962   2.0
    -294.3779962   2.0
    -294.3779962   2.0
    -294.3703529   6.0
    -294.3703529   6.0
    -294.3703529   6.0
    -294.3703529   6.0
    -294.3703529   6.0
    -294.3594570  -0.0
                                                  


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
     1      -294.65662653
     2      -294.65662653
     3      -294.65662653
     4      -294.36653622
     5      -294.36653622
     6      -294.36653622
     7      -294.36653622
     8      -294.36653622
     9      -294.36019940
    10      -294.36019940
    11      -294.36019940
    12      -294.35903269

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3789D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1434D-06

 Number of blocks in overlap matrix:  1138   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    2969
 Number of N-1 electron functions:  132244

 Number of internal configurations:                29358
 Number of singly external configurations:      11174352
 Number of doubly external configurations:      21207416
 Total number of contracted configurations:     32411126
 Total number of uncontracted configurations:  983949316

 Diagonal Coupling coefficients finished.               Storage:  34419218 words, CPU-Time:    171.08 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2705342 words, CPU-time:      2.23 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.65662653    -0.00000000    -1.11185127  0.27D-01  0.12D+00   188.23
    1     2     2     1.00000000     0.00000000  -294.65662653     0.00000000    -1.11247723  0.27D-01  0.12D+00   188.23
    1     3     3     1.00000000     0.00000000  -294.65662653     0.00000000    -1.11228997  0.27D-01  0.12D+00   188.23
    1     4     4     1.00000000     0.00000000  -294.36653622     0.00000000    -1.10817519  0.47D-01  0.12D+00   188.23
    1     5     5     1.00000000     0.00000000  -294.36653622     0.00000000    -1.10590579  0.47D-01  0.12D+00   188.23
    1     6     6     1.00000000     0.00000000  -294.36653622     0.00000000    -1.10579674  0.47D-01  0.12D+00   188.23
    1     7     7     1.00000000     0.00000000  -294.36653622    -0.00000000    -1.10572348  0.47D-01  0.12D+00   188.23
    1     8     8     1.00000000     0.00000000  -294.36653622     0.00000000    -1.10529072  0.47D-01  0.11D+00   188.23
    1     9     9     1.00000000     0.00000000  -294.36019940     0.00000000    -1.11450161  0.53D-01  0.12D+00   188.23
    1    10    10     1.00000000     0.00000000  -294.36019940    -0.00000000    -1.11444705  0.53D-01  0.12D+00   188.23
    1    11    11     1.00000000     0.00000000  -294.36019940    -0.00000000    -1.11446580  0.53D-01  0.12D+00   188.23
    1    12    12     1.00000000     0.00000000  -294.35903269     0.00000000    -1.11071301  0.50D-01  0.12D+00   188.23
    2     1     1     1.09930917    -0.92144715  -295.57807368    -0.92144715    -0.02385783  0.29D-02  0.17D-02  2615.01
    2     2     2     1.09929977    -0.92142655  -295.57805308    -0.92142655    -0.02388079  0.29D-02  0.17D-02  2615.01
    2     3     3     1.09922607    -0.92139627  -295.57802280    -0.92139627    -0.02387914  0.29D-02  0.17D-02  2615.01
    2     4     4     1.10881176    -0.90703650  -295.27357272    -0.90703650    -0.02410887  0.35D-02  0.18D-02  2615.01
    2     5     5     1.10869121    -0.90702924  -295.27356546    -0.90702924    -0.02409789  0.35D-02  0.17D-02  2615.01
    2     6     6     1.10880513    -0.90696447  -295.27350069    -0.90696447    -0.02416782  0.35D-02  0.18D-02  2615.01
    2     7     7     1.10886764    -0.90694749  -295.27348371    -0.90694749    -0.02420548  0.35D-02  0.18D-02  2615.01
    2     8     8     1.10918210    -0.90660452  -295.27314073    -0.90660452    -0.02460918  0.35D-02  0.18D-02  2615.01
    2     9     9     1.11119185    -0.90602348  -295.26622289    -0.90602348    -0.02501041  0.38D-02  0.19D-02  2615.01
    2    10    10     1.11285882    -0.90570003  -295.26589943    -0.90570003    -0.02739100  0.52D-02  0.19D-02  2615.01
    2    11    11     1.11287837    -0.90567792  -295.26587732    -0.90567792    -0.02740640  0.52D-02  0.19D-02  2615.01
    2    12    12     1.11288889    -0.90682695  -295.26585964    -0.90682695    -0.02742836  0.52D-02  0.19D-02  2615.01
    3     1     1     1.09426387    -0.94473686  -295.60136339    -0.02328971    -0.00066547  0.50D-04  0.90D-04  5045.83
    3     2     2     1.09425820    -0.94473217  -295.60135871    -0.02330563    -0.00066984  0.51D-04  0.91D-04  5045.83
    3     3     3     1.09422304    -0.94471948  -295.60134601    -0.02332321    -0.00067763  0.51D-04  0.92D-04  5045.83
    3     4     4     1.09627267    -0.93053697  -295.29707319    -0.02350047    -0.00052809  0.56D-04  0.71D-04  5045.83
    3     5     5     1.09630139    -0.93053240  -295.29706861    -0.02350315    -0.00053224  0.56D-04  0.72D-04  5045.83
    3     6     6     1.09626917    -0.93053118  -295.29706739    -0.02356670    -0.00053271  0.57D-04  0.72D-04  5045.83
    3     7     7     1.09624973    -0.93052583  -295.29706205    -0.02357834    -0.00053500  0.57D-04  0.72D-04  5045.83
    3     8     8     1.09624856    -0.93052467  -295.29706088    -0.02392015    -0.00053636  0.57D-04  0.72D-04  5045.83
    3     9     9     1.09700207    -0.93220492  -295.29240432    -0.02618144    -0.00060917  0.69D-04  0.79D-04  5045.83
    3    10    10     1.09699795    -0.93220138  -295.29240079    -0.02650136    -0.00061097  0.69D-04  0.79D-04  5045.83
    3    11    11     1.09699945    -0.93220129  -295.29240069    -0.02652337    -0.00061162  0.69D-04  0.79D-04  5045.83
    3    12    12     1.09711753    -0.93168875  -295.29072144    -0.02486180    -0.00056832  0.66D-04  0.76D-04  5045.83
    4     1     1     1.09594289    -0.94553037  -295.60215690    -0.00079351    -0.00006054  0.33D-05  0.81D-05  7486.37
    4     2     2     1.09593783    -0.94552952  -295.60215605    -0.00079735    -0.00006115  0.33D-05  0.82D-05  7486.37
    4     3     3     1.09593098    -0.94552816  -295.60215469    -0.00080868    -0.00006223  0.34D-05  0.83D-05  7486.37
    4     4     4     1.09640915    -0.93117404  -295.29771026    -0.00063707    -0.00004808  0.26D-05  0.79D-05  7486.37
    4     5     5     1.09641122    -0.93117393  -295.29771015    -0.00064154    -0.00004807  0.26D-05  0.79D-05  7486.37
    4     6     6     1.09640764    -0.93117312  -295.29770934    -0.00064195    -0.00004857  0.26D-05  0.80D-05  7486.37
    4     7     7     1.09640196    -0.93117251  -295.29770873    -0.00064668    -0.00004919  0.27D-05  0.80D-05  7486.37
    4     8     8     1.09640112    -0.93117232  -295.29770854    -0.00064766    -0.00004916  0.26D-05  0.81D-05  7486.37
    4     9     9     1.09690960    -0.93291258  -295.29311198    -0.00070766    -0.00004937  0.33D-05  0.80D-05  7486.37
    4    10    10     1.09690653    -0.93291195  -295.29311136    -0.00071057    -0.00004974  0.33D-05  0.81D-05  7486.37
    4    11    11     1.09690577    -0.93291176  -295.29311116    -0.00071047    -0.00004978  0.33D-05  0.81D-05  7486.37
    4    12    12     1.09709435    -0.93238310  -295.29141579    -0.00069436    -0.00005071  0.27D-05  0.82D-05  7486.37
    5     1     1     1.09660500    -0.94560377  -295.60223030    -0.00007340    -0.00000420  0.15D-06  0.57D-06  9928.18
    5     2     2     1.09660475    -0.94560369  -295.60223022    -0.00007417    -0.00000426  0.15D-06  0.58D-06  9928.18
    5     3     3     1.09660419    -0.94560361  -295.60223014    -0.00007545    -0.00000432  0.15D-06  0.59D-06  9928.18
    5     4     4     1.09682595    -0.93123818  -295.29777440    -0.00006414    -0.00000486  0.23D-06  0.76D-06  9928.18
    5     5     5     1.09682845    -0.93123812  -295.29777434    -0.00006419    -0.00000492  0.22D-06  0.77D-06  9928.18
    5     6     6     1.09682803    -0.93123803  -295.29777425    -0.00006491    -0.00000498  0.23D-06  0.78D-06  9928.18
    5     7     7     1.09682799    -0.93123800  -295.29777421    -0.00006548    -0.00000502  0.23D-06  0.78D-06  9928.18
    5     8     8     1.09682736    -0.93123799  -295.29777420    -0.00006566    -0.00000497  0.23D-06  0.77D-06  9928.18
    5     9     9     1.09725686    -0.93297818  -295.29317758    -0.00006560    -0.00000520  0.25D-06  0.83D-06  9928.18
    5    10    10     1.09725665    -0.93297810  -295.29317751    -0.00006615    -0.00000526  0.25D-06  0.84D-06  9928.18
    5    11    11     1.09725690    -0.93297804  -295.29317745    -0.00006628    -0.00000527  0.25D-06  0.84D-06  9928.18
    5    12    12     1.09753331    -0.93245041  -295.29148310    -0.00006730    -0.00000476  0.23D-06  0.72D-06  9928.18
    6     1     1     1.09663395    -0.94560884  -295.60223538    -0.00000508    -0.00000032  0.16D-07  0.43D-07 12373.74
    6     2     2     1.09663384    -0.94560884  -295.60223537    -0.00000515    -0.00000033  0.17D-07  0.44D-07 12373.74
    6     3     3     1.09663321    -0.94560883  -295.60223537    -0.00000522    -0.00000033  0.17D-07  0.44D-07 12373.74
    6     4     4     1.09686699    -0.93124438  -295.29778060    -0.00000620    -0.00000052  0.21D-07  0.85D-07 12373.74
    6     5     5     1.09686683    -0.93124438  -295.29778060    -0.00000626    -0.00000053  0.21D-07  0.86D-07 12373.74
    6     6     6     1.09686654    -0.93124437  -295.29778059    -0.00000634    -0.00000053  0.21D-07  0.86D-07 12373.74
    6     7     7     1.09686670    -0.93124433  -295.29778055    -0.00000634    -0.00000050  0.20D-07  0.82D-07 12373.74
    6     8     8     1.09686594    -0.93124430  -295.29778052    -0.00000631    -0.00000052  0.21D-07  0.84D-07 12373.74
    6     9     9     1.09730030    -0.93298485  -295.29318426    -0.00000668    -0.00000058  0.27D-07  0.94D-07 12373.74
    6    10    10     1.09730043    -0.93298485  -295.29318425    -0.00000674    -0.00000057  0.27D-07  0.93D-07 12373.74
    6    11    11     1.09730030    -0.93298482  -295.29318422    -0.00000677    -0.00000058  0.28D-07  0.94D-07 12373.74
    6    12    12     1.09757279    -0.93245635  -295.29148904    -0.00000594    -0.00000045  0.16D-07  0.74D-07 12373.74
    7     1     1     1.09664940    -0.94560923  -295.60223576    -0.00000039    -0.00000004  0.37D-08  0.44D-08 14806.74
    7     2     2     1.09664951    -0.94560923  -295.60223576    -0.00000039    -0.00000004  0.37D-08  0.44D-08 14806.74
    7     3     3     1.09664959    -0.94560923  -295.60223576    -0.00000040    -0.00000004  0.35D-08  0.43D-08 14806.74
    7     4     4     1.09688416    -0.93124506  -295.29778128    -0.00000068    -0.00000007  0.61D-08  0.11D-07 14806.74
    7     5     5     1.09688402    -0.93124506  -295.29778128    -0.00000068    -0.00000007  0.61D-08  0.11D-07 14806.74
    7     6     6     1.09688414    -0.93124505  -295.29778127    -0.00000068    -0.00000007  0.59D-08  0.10D-07 14806.74
    7     7     7     1.09688421    -0.93124498  -295.29778120    -0.00000065    -0.00000007  0.56D-08  0.10D-07 14806.74
    7     8     8     1.09688391    -0.93124497  -295.29778119    -0.00000067    -0.00000007  0.60D-08  0.10D-07 14806.74
    7     9     9     1.09731980    -0.93298559  -295.29318500    -0.00000074    -0.00000008  0.73D-08  0.12D-07 14806.74
    7    10    10     1.09731980    -0.93298558  -295.29318498    -0.00000073    -0.00000008  0.72D-08  0.12D-07 14806.74
    7    11    11     1.09731975    -0.93298556  -295.29318497    -0.00000075    -0.00000008  0.74D-08  0.12D-07 14806.74
    7    12    12     1.09759107    -0.93245692  -295.29148961    -0.00000057    -0.00000006  0.45D-08  0.86D-08 14806.74
    8     1     1     1.09664931    -0.94560923  -295.60223577    -0.00000000    -0.00000004  0.36D-08  0.43D-08 16738.97
    8     2     2     1.09664945    -0.94560923  -295.60223576    -0.00000000    -0.00000004  0.36D-08  0.43D-08 16738.97
    8     3     3     1.09664954    -0.94560923  -295.60223576    -0.00000000    -0.00000003  0.35D-08  0.42D-08 16738.97
    8     4     4     1.09688348    -0.93124515  -295.29778137    -0.00000009    -0.00000001  0.49D-09  0.17D-08 16738.97
    8     5     5     1.09688348    -0.93124515  -295.29778137    -0.00000009    -0.00000001  0.49D-09  0.17D-08 16738.97
    8     6     6     1.09688353    -0.93124514  -295.29778136    -0.00000009    -0.00000001  0.47D-09  0.16D-08 16738.97
    8     7     7     1.09688349    -0.93124507  -295.29778128    -0.00000009    -0.00000001  0.46D-09  0.16D-08 16738.97
    8     8     8     1.09688347    -0.93124506  -295.29778128    -0.00000009    -0.00000001  0.47D-09  0.16D-08 16738.97
    8     9     9     1.09731868    -0.93298571  -295.29318511    -0.00000011    -0.00000001  0.37D-09  0.10D-08 16738.97
    8    10    10     1.09731776    -0.93298568  -295.29318508    -0.00000010    -0.00000001  0.61D-09  0.18D-08 16738.97
    8    11    11     1.09731859    -0.93298568  -295.29318508    -0.00000011    -0.00000001  0.38D-09  0.10D-08 16738.97
    8    12    12     1.09759179    -0.93245700  -295.29148969    -0.00000008    -0.00000000  0.22D-09  0.70D-09 16738.97


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%  18.4%
 P   0.2%  41.6%  31.5%

 Initialization:   1.0%
 Other:            6.9%

 Total CPU:    16739.0 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222/000          -0.0578841   0.1080000   0.9462652  -0.0000000  -0.0000000  -0.0000001  -0.0000000  -0.0000000
                           -0.0000802   0.0185989  -0.0037301  -0.0000000
 22222222222/2000           0.8618264   0.4094534   0.0059868   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                            0.0000852  -0.0037297  -0.0185988   0.0000000
 2222222222/22000          -0.4053854   0.8550534  -0.1223876   0.0000002  -0.0000000   0.0000000   0.0000000   0.0000000
                           -0.0189689  -0.0000954  -0.0000678   0.0000000
 22222222222//\00           0.0000000  -0.0000000  -0.0000000  -0.0011086   0.0003155  -0.0031822   0.1089359   0.7654591
                            0.0000001   0.0000001  -0.0000002  -0.5469685
 2222222222/2/0\0          -0.0000000  -0.0000000  -0.0000000  -0.0020290   0.0101389   0.0035682   0.7172868   0.2884173
                            0.0000000   0.0000001  -0.0000000   0.5469700
 2222222222/2/\00           0.0006294  -0.0011743  -0.0102892   0.0146333  -0.0215115  -0.6690602   0.0050700  -0.0034729
                           -0.0026225   0.6079144  -0.1219207   0.0000001
 22222222222//0\0           0.0006294  -0.0011743  -0.0102892  -0.0146333   0.0215114   0.6690579  -0.0050700   0.0034727
                           -0.0026226   0.6079169  -0.1219213  -0.0000002
 2222222222/2/00\          -0.0044080   0.0092975  -0.0013308  -0.6664445   0.0626866  -0.0166060  -0.0023996  -0.0007187
                            0.6200111   0.0031190   0.0022158  -0.0000001
 2222222222//20\0          -0.0044080   0.0092974  -0.0013308   0.6664368  -0.0626859   0.0166059   0.0023997   0.0007185
                            0.6200195   0.0031191   0.0022157   0.0000000
 2222222222//2\00          -0.0093711  -0.0044522  -0.0000651   0.0632012   0.6662320  -0.0201166  -0.0095793   0.0010965
                            0.0027858  -0.1219090  -0.6079159   0.0000001
 22222222222//00\           0.0093711   0.0044522   0.0000651   0.0632009   0.6662285  -0.0201164  -0.0095793   0.0010967
                           -0.0027858   0.1219098   0.6079196  -0.0000001
 2222222222//200\          -0.0000000  -0.0000000  -0.0000000  -0.0009202   0.0098234   0.0067500   0.6083548  -0.4770426
                           -0.0000001  -0.0000001  -0.0000000  -0.5469668
 2222222222022/00           0.0043221  -0.0091164   0.0013049   0.0000014  -0.0000001   0.0000000  -0.0000000   0.0000000
                           -0.2235940  -0.0011248  -0.0007991   0.0000000
 222222222222000/           0.0006172  -0.0011515  -0.0100890   0.0000000  -0.0000000  -0.0000004  -0.0000000  -0.0000000
                           -0.0009458   0.2192320  -0.0439682  -0.0000000
 22222222222020/0          -0.0091887  -0.0043656  -0.0000638   0.0000000   0.0000006  -0.0000000  -0.0000000  -0.0000000
                            0.0010046  -0.0439638  -0.2192313   0.0000000
 2222222222/\20/0          -0.0011500   0.0024255  -0.0003472   0.0086309  -0.0008118   0.0002151   0.0000311   0.0000093
                            0.1912509   0.0009621   0.0006835  -0.0000000
 2222222222/2\00/          -0.0011499   0.0024255  -0.0003472  -0.0086334   0.0008121  -0.0002151  -0.0000311  -0.0000093
                            0.1912509   0.0009621   0.0006835  -0.0000000
 2222222222/2\/00          -0.0001642   0.0003064   0.0026843  -0.0001895   0.0002787   0.0086665  -0.0000657   0.0000450
                            0.0008090  -0.1875201   0.0376082  -0.0000000
 22222222222/\0/0          -0.0001642   0.0003064   0.0026843   0.0001895  -0.0002786  -0.0086656   0.0000657  -0.0000449
                            0.0008090  -0.1875200   0.0376082   0.0000000
 22222222222/\00/           0.0024446   0.0011614   0.0000170   0.0008186   0.0086289  -0.0002605  -0.0001241   0.0000142
                           -0.0008593   0.0376044   0.1875193  -0.0000000
 2222222222/\2/00           0.0024446   0.0011614   0.0000170  -0.0008187  -0.0086300   0.0002606   0.0001241  -0.0000142
                           -0.0008593   0.0376044   0.1875193  -0.0000000
 2222222222///0\\          -0.0048672   0.0102661  -0.0014694  -0.0000004   0.0000000  -0.0000000  -0.0000000  -0.0000000
                            0.0712261   0.0003583   0.0002545  -0.0000000
 2222222222///\\0          -0.0006950   0.0012967   0.0113613   0.0000000   0.0000000   0.0000001   0.0000000   0.0000000
                            0.0003013  -0.0698370   0.0140062   0.0000000
 2222222222///\0\          -0.0103474  -0.0049160  -0.0000719   0.0000000   0.0000002  -0.0000000  -0.0000000  -0.0000000
                            0.0003200  -0.0140047  -0.0698363   0.0000000
 222222222202/200           0.0007267  -0.0013559  -0.0118797   0.0013307  -0.0019561  -0.0608402   0.0004610  -0.0003158
                           -0.0002000   0.0463579  -0.0092973   0.0000000
 222222222220/020           0.0007267  -0.0013559  -0.0118797  -0.0013307   0.0019561   0.0608400  -0.0004610   0.0003158
                           -0.0002000   0.0463580  -0.0092974  -0.0000000
 2222222222/20002           0.0050893  -0.0107345   0.0015365   0.0606022  -0.0057003   0.0015101   0.0002182   0.0000653
                           -0.0472796  -0.0002378  -0.0001690   0.0000000
 2222222222/02020           0.0050893  -0.0107345   0.0015365  -0.0606018   0.0057003  -0.0015100  -0.0002182  -0.0000653
                           -0.0472805  -0.0002379  -0.0001690  -0.0000000
 22222222220/2200          -0.0108196  -0.0051404  -0.0000752   0.0057471   0.0605831  -0.0018293  -0.0008711   0.0000997
                            0.0002124  -0.0092963  -0.0463573   0.0000000
 22222222222/0002          -0.0108195  -0.0051404  -0.0000752  -0.0057471  -0.0605828   0.0018293   0.0008711  -0.0000997
                            0.0002124  -0.0092964  -0.0463577   0.0000000
 222222222202//\0          -0.0000000   0.0000000  -0.0000000  -0.0001489   0.0007360   0.0002538   0.0522035   0.0221373
                            0.0000000   0.0000000  -0.0000000   0.0388649

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.862262   -0.057913   -0.405591   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.008615   -0.001230
            -0.018315    0.000000
 2           0.409661    0.108055    0.855486   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.018171    0.002295
            -0.008702    0.000000
 3           0.005990    0.946744   -0.122450   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.002601    0.020110
            -0.000127    0.000000
 4          -0.000000   -0.000000   -0.000000   -0.002497    0.950304   -0.020866    0.090121   -0.000246   -0.000006    0.000000
            -0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.012812   -0.089387    0.030674    0.950004   -0.006211    0.000001   -0.000000
            -0.000003   -0.000000
 6           0.000000    0.000000   -0.000000    0.004719    0.023679    0.954038   -0.028685   -0.006877   -0.000000   -0.000002
             0.000000    0.000000
 7           0.000000    0.000000    0.000000    0.900845    0.003422   -0.007230   -0.013660   -0.316021    0.000000   -0.000000
             0.000000   -0.000002
 8           0.000000    0.000000   -0.000000    0.316112    0.001025    0.004952    0.001564    0.900937   -0.000000   -0.000000
             0.000000    0.000000
 9          -0.000092    0.000087    0.020513   -0.000000    0.000006   -0.000000    0.000000    0.000000    0.954354   -0.004037
            -0.004288    0.000000
 10          0.004033   -0.020112    0.000103    0.000000    0.000000    0.000002    0.000001    0.000000    0.004801    0.935731
             0.187648    0.000000
 11          0.020112    0.004034    0.000073   -0.000000   -0.000000   -0.000000    0.000003   -0.000000    0.003411   -0.187666
             0.935733    0.000000
 12         -0.000000   -0.000000   -0.000000    0.000002    0.000000   -0.000000   -0.000000   -0.000001   -0.000000   -0.000000
            -0.000000    0.954492

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954864    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000052    0.000028
             0.000105   -0.000000
 2           0.000000    0.954864   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000108   -0.000003
             0.000054    0.000000
 3           0.000000   -0.000000    0.954864   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000015   -0.000117
             0.000024   -0.000000
 4          -0.000000    0.000000   -0.000000    0.954799    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.954799   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.954799   -0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.954799   -0.000000    0.000000    0.000000
             0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.954799    0.000000    0.000000
            -0.000000    0.000000
 9          -0.000052    0.000108   -0.000015    0.000000   -0.000000    0.000000    0.000000    0.000000    0.954593   -0.000000
             0.000000   -0.000000
 10          0.000028   -0.000003   -0.000117   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.954593
            -0.000000   -0.000000
 11          0.000105    0.000054    0.000024   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.954593   -0.000000
 12         -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.954492


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.86226248 (fixed)   0.95491010 (relaxed)   0.95486406 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011314   -0.00009178   -0.83025006
 Singles      0.00929319   -0.03512005   -0.04002544
 Pairs        0.08736706   -0.00000000   -0.07533374
 Total        1.09677339   -0.03521183   -0.94560923
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65649126
 Nuclear energy                         0.00000000
 Kinetic energy                       111.75794829
 One electron energy                 -513.44694945
 Two electron energy                  217.84471369
 Virial quotient                       -2.64502203
 Correlation energy                    -0.94574451
 !MRCI STATE 1.2 Energy              -295.602235765090

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.69375866 (Davidson, fixed reference)
 Cluster corrected energies          -295.69365865 (Davidson, relaxed reference)
 Cluster corrected energies          -295.69375866 (Davidson, rotated reference)

 Cluster corrected energies          -295.69341388 (Pople, fixed reference)
 Cluster corrected energies          -295.69330570 (Pople, relaxed reference)
 Cluster corrected energies          -295.69341388 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.85548613 (fixed)   0.95491004 (relaxed)   0.95486400 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011314   -0.00009178   -0.83025000
 Singles      0.00929317   -0.03512000   -0.04002541
 Pairs        0.08736722    0.00000000   -0.07533383
 Total        1.09677352   -0.03521178   -0.94560923
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65649126
 Nuclear energy                         0.00000000
 Kinetic energy                       111.75794882
 One electron energy                 -513.44694849
 Two electron energy                  217.84471273
 Virial quotient                       -2.64502202
 Correlation energy                    -0.94574451
 !MRCI STATE 2.2 Energy              -295.602235764808

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.69375879 (Davidson, fixed reference)
 Cluster corrected energies          -295.69365878 (Davidson, relaxed reference)
 Cluster corrected energies          -295.69375879 (Davidson, rotated reference)

 Cluster corrected energies          -295.69341401 (Pople, fixed reference)
 Cluster corrected energies          -295.69330583 (Pople, relaxed reference)
 Cluster corrected energies          -295.69341401 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94674403 (fixed)   0.95491000 (relaxed)   0.95486396 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011314   -0.00009178   -0.83025011
 Singles      0.00929307   -0.03511980   -0.04002529
 Pairs        0.08736740   -0.00000000   -0.07533382
 Total        1.09677361   -0.03521158   -0.94560923
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.65649126
 Nuclear energy                         0.00000000
 Kinetic energy                       111.75794378
 One electron energy                 -513.44694152
 Two electron energy                  217.84470576
 Virial quotient                       -2.64502214
 Correlation energy                    -0.94574451
 !MRCI STATE 3.2 Energy              -295.602235763355

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.69375888 (Davidson, fixed reference)
 Cluster corrected energies          -295.69365886 (Davidson, relaxed reference)
 Cluster corrected energies          -295.69375888 (Davidson, rotated reference)

 Cluster corrected energies          -295.69341411 (Pople, fixed reference)
 Cluster corrected energies          -295.69330592 (Pople, relaxed reference)
 Cluster corrected energies          -295.69341411 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95030432 (fixed)   0.95480572 (relaxed)   0.95479934 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003519   -0.00012590   -0.79837513
 Singles      0.01733480   -0.05552271   -0.06533612
 Pairs        0.07955209    0.00000010   -0.06753390
 Total        1.09692209   -0.05564851   -0.93124515
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36653622
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39970799
 One electron energy                 -507.95454231
 Two electron energy                  212.65676093
 Virial quotient                       -2.65079493
 Correlation energy                    -0.93124515
 !MRCI STATE 4.2 Energy              -295.297781371686

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.38803959 (Davidson, fixed reference)
 Cluster corrected energies          -295.38802595 (Davidson, relaxed reference)
 Cluster corrected energies          -295.38803959 (Davidson, rotated reference)

 Cluster corrected energies          -295.38771144 (Pople, fixed reference)
 Cluster corrected energies          -295.38769667 (Pople, relaxed reference)
 Cluster corrected energies          -295.38771144 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95000429 (fixed)   0.95480572 (relaxed)   0.95479934 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003519   -0.00012590   -0.79837506
 Singles      0.01733481   -0.05552270   -0.06533611
 Pairs        0.07955207    0.00000001   -0.06753397
 Total        1.09692208   -0.05564859   -0.93124515
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36653622
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39970676
 One electron energy                 -507.95454208
 Two electron energy                  212.65676071
 Virial quotient                       -2.65079496
 Correlation energy                    -0.93124515
 !MRCI STATE 5.2 Energy              -295.297781368298

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.38803959 (Davidson, fixed reference)
 Cluster corrected energies          -295.38802594 (Davidson, relaxed reference)
 Cluster corrected energies          -295.38803959 (Davidson, rotated reference)

 Cluster corrected energies          -295.38771143 (Pople, fixed reference)
 Cluster corrected energies          -295.38769666 (Pople, relaxed reference)
 Cluster corrected energies          -295.38771143 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95403808 (fixed)   0.95480570 (relaxed)   0.95479932 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003519   -0.00012590   -0.79837482
 Singles      0.01733483   -0.05552274   -0.06533612
 Pairs        0.07955211   -0.00000017   -0.06753421
 Total        1.09692213   -0.05564881   -0.93124514
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36653622
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39970699
 One electron energy                 -507.95454272
 Two electron energy                  212.65676136
 Virial quotient                       -2.65079496
 Correlation energy                    -0.93124514
 !MRCI STATE 6.2 Energy              -295.297781363043

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.38803963 (Davidson, fixed reference)
 Cluster corrected energies          -295.38802598 (Davidson, relaxed reference)
 Cluster corrected energies          -295.38803963 (Davidson, rotated reference)

 Cluster corrected energies          -295.38771148 (Pople, fixed reference)
 Cluster corrected energies          -295.38769671 (Pople, relaxed reference)
 Cluster corrected energies          -295.38771148 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.90084525 (fixed)   0.95480571 (relaxed)   0.95479933 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003520   -0.00012590   -0.79837713
 Singles      0.01733475   -0.05552258   -0.06533595
 Pairs        0.07955216    0.00000225   -0.06753199
 Total        1.09692210   -0.05564623   -0.93124507
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36653622
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39970662
 One electron energy                 -507.95454072
 Two electron energy                  212.65675944
 Virial quotient                       -2.65079496
 Correlation energy                    -0.93124507
 !MRCI STATE 7.2 Energy              -295.297781284713

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.38803951 (Davidson, fixed reference)
 Cluster corrected energies          -295.38802586 (Davidson, relaxed reference)
 Cluster corrected energies          -295.38803951 (Davidson, rotated reference)

 Cluster corrected energies          -295.38771136 (Pople, fixed reference)
 Cluster corrected energies          -295.38769659 (Pople, relaxed reference)
 Cluster corrected energies          -295.38771136 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.90093664 (fixed)   0.95480572 (relaxed)   0.95479934 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003520   -0.00012590   -0.79837465
 Singles      0.01733478   -0.05552268   -0.06533598
 Pairs        0.07955210   -0.00000039   -0.06753444
 Total        1.09692207   -0.05564897   -0.93124506
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36653622
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39970687
 One electron energy                 -507.95454182
 Two electron energy                  212.65676055
 Virial quotient                       -2.65079496
 Correlation energy                    -0.93124506
 !MRCI STATE 8.2 Energy              -295.297781277208

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.38803948 (Davidson, fixed reference)
 Cluster corrected energies          -295.38802583 (Davidson, relaxed reference)
 Cluster corrected energies          -295.38803948 (Davidson, rotated reference)

 Cluster corrected energies          -295.38771132 (Pople, fixed reference)
 Cluster corrected energies          -295.38769656 (Pople, relaxed reference)
 Cluster corrected energies          -295.38771132 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95435401 (fixed)   0.95460953 (relaxed)   0.95459260 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007161   -0.00018481   -0.79912312
 Singles      0.01768909   -0.05609695   -0.06615980
 Pairs        0.07963656   -0.00000005   -0.06770279
 Total        1.09739727   -0.05628180   -0.93298571
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36033468
 Nuclear energy                         0.00000000
 Kinetic energy                       111.41715865
 One electron energy                 -508.04833662
 Two electron energy                  212.75515151
 Virial quotient                       -2.65033850
 Correlation energy                    -0.93285043
 !MRCI STATE 9.2 Energy              -295.293185110300

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.38404219 (Davidson, fixed reference)
 Cluster corrected energies          -295.38400589 (Davidson, relaxed reference)
 Cluster corrected energies          -295.38404219 (Davidson, rotated reference)

 Cluster corrected energies          -295.38375005 (Pople, fixed reference)
 Cluster corrected energies          -295.38371074 (Pople, relaxed reference)
 Cluster corrected energies          -295.38375005 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Coefficient of reference function:   C(0) = 0.93573081 (fixed)   0.95460993 (relaxed)   0.95459300 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007161   -0.00018481   -0.79912459
 Singles      0.01768806   -0.05609604   -0.06615851
 Pairs        0.07963667   -0.00000004   -0.06770258
 Total        1.09739635   -0.05628089   -0.93298568
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36033468
 Nuclear energy                         0.00000000
 Kinetic energy                       111.41707853
 One electron energy                 -508.04835154
 Two electron energy                  212.75516645
 Virial quotient                       -2.65034041
 Correlation energy                    -0.93285040
 !MRCI STATE 10.2 Energy             -295.293185082730

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.38404131 (Davidson, fixed reference)
 Cluster corrected energies          -295.38400500 (Davidson, relaxed reference)
 Cluster corrected energies          -295.38404131 (Davidson, rotated reference)

 Cluster corrected energies          -295.38374910 (Pople, fixed reference)
 Cluster corrected energies          -295.38370978 (Pople, relaxed reference)
 Cluster corrected energies          -295.38374910 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Coefficient of reference function:   C(0) = 0.93573293 (fixed)   0.95460957 (relaxed)   0.95459264 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007161   -0.00018481   -0.79912318
 Singles      0.01768903   -0.05609687   -0.06615970
 Pairs        0.07963653   -0.00000011   -0.06770279
 Total        1.09739717   -0.05628178   -0.93298568
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.36033468
 Nuclear energy                         0.00000000
 Kinetic energy                       111.41715545
 One electron energy                 -508.04833674
 Two electron energy                  212.75515166
 Virial quotient                       -2.65033858
 Correlation energy                    -0.93285040
 !MRCI STATE 11.2 Energy             -295.293185078638

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.38404207 (Davidson, fixed reference)
 Cluster corrected energies          -295.38400576 (Davidson, relaxed reference)
 Cluster corrected energies          -295.38404207 (Davidson, rotated reference)

 Cluster corrected energies          -295.38374992 (Pople, fixed reference)
 Cluster corrected energies          -295.38371060 (Pople, relaxed reference)
 Cluster corrected energies          -295.38374992 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Coefficient of reference function:   C(0) = 0.95449227 (fixed)   0.95449731 (relaxed)   0.95449227 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003297   -0.00012650   -0.00014326
 Singles      0.01806129   -0.05684126   -0.06713101
 Pairs        0.07953373   -0.87548924   -0.86518273
 Total        1.09762798   -0.93245700   -0.93245700
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.35903269
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39859658
 One electron energy                 -507.94451132
 Two electron energy                  212.65302163
 Virial quotient                       -2.65076490
 Correlation energy                    -0.93245700
 !MRCI STATE 12.2 Energy             -295.291489687707

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.38252358 (Davidson, fixed reference)
 Cluster corrected energies          -295.38251276 (Davidson, relaxed reference)
 Cluster corrected energies          -295.38252358 (Davidson, rotated reference)

 Cluster corrected energies          -295.38224947 (Pople, fixed reference)
 Cluster corrected energies          -295.38223774 (Pople, relaxed reference)
 Cluster corrected energies          -295.38224947 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     2999.71       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     19064.61  19055.04      5.94      0.47      2.94
 REAL TIME  *     19407.89 SEC
 DISK USED  *         2.99 GB (local),       24.16 GB (total)
 SF USED    *        29.86 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -295.69375866  AU                              
 SETTING HLSDIAG(2)     =      -295.69375879  AU                              
 SETTING HLSDIAG(3)     =      -295.69375888  AU                              
 SETTING HLSDIAG(4)     =      -295.38803959  AU                              
 SETTING HLSDIAG(5)     =      -295.38803959  AU                              
 SETTING HLSDIAG(6)     =      -295.38803963  AU                              
 SETTING HLSDIAG(7)     =      -295.38803951  AU                              
 SETTING HLSDIAG(8)     =      -295.38803948  AU                              
 SETTING HLSDIAG(9)     =      -295.38404219  AU                              
 SETTING HLSDIAG(10)    =      -295.38404131  AU                              
 SETTING HLSDIAG(11)    =      -295.38404207  AU                              
 SETTING HLSDIAG(12)    =      -295.38252358  AU                              


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


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -294.37799624
     2      -294.37799624
     3      -294.37799624
     4      -294.37035294
     5      -294.37035294
     6      -294.37035294
     7      -294.37035294
     8      -294.37035294
     9      -294.35945703

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.7260D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1349D-06

 Number of blocks in overlap matrix:   913   Smallest eigenvalue:  0.73D-07
 Number of N-2 electron functions:    2186
 Number of N-1 electron functions:  107720

 Number of internal configurations:                21432
 Number of singly external configurations:       9102180
 Number of doubly external configurations:      15610932
 Total number of contracted configurations:     24734544
 Total number of uncontracted configurations:  789910292

 Diagonal Coupling coefficients finished.               Storage:  19082748 words, CPU-Time:     62.95 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2560976 words, CPU-time:      1.61 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -294.37799624    -0.00000000    -1.10224486  0.44D-01  0.11D+00    73.36
    1     2     2     1.00000000     0.00000000  -294.37799624     0.00000000    -1.10207186  0.43D-01  0.11D+00    73.36
    1     3     3     1.00000000     0.00000000  -294.37799624     0.00000000    -1.10224163  0.43D-01  0.11D+00    73.36
    1     4     4     1.00000000     0.00000000  -294.37035294     0.00000000    -1.10844087  0.45D-01  0.12D+00    73.36
    1     5     5     1.00000000     0.00000000  -294.37035294     0.00000000    -1.10360096  0.45D-01  0.11D+00    73.36
    1     6     6     1.00000000     0.00000000  -294.37035294     0.00000000    -1.10355403  0.45D-01  0.11D+00    73.36
    1     7     7     1.00000000     0.00000000  -294.37035294     0.00000000    -1.10355003  0.45D-01  0.11D+00    73.36
    1     8     8     1.00000000     0.00000000  -294.37035294    -0.00000000    -1.10463900  0.45D-01  0.12D+00    73.36
    1     9     9     1.00000000     0.00000000  -294.35945703     0.00000000    -1.11075667  0.50D-01  0.12D+00    73.36
    2     1     1     1.10626421    -0.90538777  -295.28338402    -0.90538777    -0.02371820  0.29D-02  0.18D-02  1315.35
    2     2     2     1.10633587    -0.90537255  -295.28336880    -0.90537255    -0.02377385  0.29D-02  0.18D-02  1315.35
    2     3     3     1.10634959    -0.90531631  -295.28331256    -0.90531631    -0.02382347  0.30D-02  0.18D-02  1315.35
    2     4     4     1.10761444    -0.90669299  -295.27704593    -0.90669299    -0.02357941  0.30D-02  0.17D-02  1315.35
    2     5     5     1.10746295    -0.90622518  -295.27657812    -0.90622518    -0.02389998  0.31D-02  0.18D-02  1315.35
    2     6     6     1.10750123    -0.90612333  -295.27647627    -0.90612333    -0.02400099  0.31D-02  0.18D-02  1315.35
    2     7     7     1.10752866    -0.90608030  -295.27643324    -0.90608030    -0.02404673  0.32D-02  0.18D-02  1315.35
    2     8     8     1.10838857    -0.90598711  -295.27634005    -0.90598711    -0.02434875  0.30D-02  0.19D-02  1315.35
    2     9     9     1.11141567    -0.90612889  -295.26558592    -0.90612889    -0.02522020  0.38D-02  0.19D-02  1315.35
    3     1     1     1.09492919    -0.92850843  -295.30650468    -0.02312066    -0.00051252  0.42D-04  0.69D-04  2562.17
    3     2     2     1.09491641    -0.92849765  -295.30649389    -0.02312510    -0.00051821  0.42D-04  0.70D-04  2562.17
    3     3     3     1.09489656    -0.92849098  -295.30648722    -0.02317466    -0.00051948  0.41D-04  0.71D-04  2562.17
    3     4     4     1.09575170    -0.92972066  -295.30007360    -0.02302767    -0.00051334  0.58D-04  0.66D-04  2562.17
    3     5     5     1.09579118    -0.92970190  -295.30005484    -0.02347672    -0.00052586  0.57D-04  0.70D-04  2562.17
    3     6     6     1.09552558    -0.92964408  -295.29999702    -0.02352075    -0.00055405  0.58D-04  0.74D-04  2562.17
    3     7     7     1.09550752    -0.92963807  -295.29999100    -0.02355777    -0.00055881  0.59D-04  0.74D-04  2562.17
    3     8     8     1.09550713    -0.92963538  -295.29998832    -0.02364826    -0.00056101  0.59D-04  0.75D-04  2562.17
    3     9     9     1.09668316    -0.93106281  -295.29051984    -0.02493391    -0.00059336  0.85D-04  0.76D-04  2562.17
    4     1     1     1.09535152    -0.92913856  -295.30713480    -0.00063012    -0.00005097  0.22D-05  0.80D-05  3803.86
    4     2     2     1.09534349    -0.92913638  -295.30713262    -0.00063873    -0.00005240  0.22D-05  0.82D-05  3803.86
    4     3     3     1.09533561    -0.92913496  -295.30713120    -0.00064398    -0.00005332  0.23D-05  0.82D-05  3803.86
    4     4     4     1.09596878    -0.93034224  -295.30069518    -0.00062157    -0.00004753  0.22D-05  0.77D-05  3803.86
    4     5     5     1.09595060    -0.93033974  -295.30069268    -0.00063784    -0.00004891  0.22D-05  0.80D-05  3803.86
    4     6     6     1.09590181    -0.93033016  -295.30068310    -0.00068609    -0.00005579  0.26D-05  0.87D-05  3803.86
    4     7     7     1.09589596    -0.93032951  -295.30068245    -0.00069144    -0.00005623  0.26D-05  0.88D-05  3803.86
    4     8     8     1.09589516    -0.93032915  -295.30068209    -0.00069377    -0.00005648  0.26D-05  0.89D-05  3803.86
    4     9     9     1.09673714    -0.93178434  -295.29124137    -0.00072153    -0.00005282  0.26D-05  0.86D-05  3803.86
    5     1     1     1.09585248    -0.92920764  -295.30720388    -0.00006908    -0.00000477  0.23D-06  0.66D-06  5050.03
    5     2     2     1.09585191    -0.92920748  -295.30720373    -0.00007110    -0.00000492  0.24D-06  0.67D-06  5050.03
    5     3     3     1.09585190    -0.92920731  -295.30720356    -0.00007236    -0.00000498  0.24D-06  0.68D-06  5050.03
    5     4     4     1.09644222    -0.93040639  -295.30075933    -0.00006415    -0.00000473  0.28D-06  0.68D-06  5050.03
    5     5     5     1.09644149    -0.93040622  -295.30075916    -0.00006648    -0.00000483  0.29D-06  0.69D-06  5050.03
    5     6     6     1.09644630    -0.93040580  -295.30075874    -0.00007564    -0.00000544  0.32D-06  0.75D-06  5050.03
    5     7     7     1.09644624    -0.93040574  -295.30075868    -0.00007623    -0.00000550  0.32D-06  0.76D-06  5050.03
    5     8     8     1.09644640    -0.93040571  -295.30075865    -0.00007656    -0.00000552  0.32D-06  0.76D-06  5050.03
    5     9     9     1.09726932    -0.93185576  -295.29131279    -0.00007143    -0.00000526  0.33D-06  0.77D-06  5050.03
    6     1     1     1.09587649    -0.92921345  -295.30720970    -0.00000582    -0.00000040  0.18D-07  0.60D-07  6298.32
    6     2     2     1.09587698    -0.92921344  -295.30720969    -0.00000596    -0.00000039  0.17D-07  0.59D-07  6298.32
    6     3     3     1.09587584    -0.92921335  -295.30720960    -0.00000604    -0.00000041  0.18D-07  0.61D-07  6298.32
    6     4     4     1.09647940    -0.93041248  -295.30076542    -0.00000610    -0.00000049  0.22D-07  0.76D-07  6298.32
    6     5     5     1.09647944    -0.93041248  -295.30076542    -0.00000626    -0.00000049  0.22D-07  0.76D-07  6298.32
    6     6     6     1.09647957    -0.93041247  -295.30076541    -0.00000667    -0.00000049  0.21D-07  0.75D-07  6298.32
    6     7     7     1.09648301    -0.93041232  -295.30076525    -0.00000658    -0.00000045  0.19D-07  0.72D-07  6298.32
    6     8     8     1.09648241    -0.93041217  -295.30076510    -0.00000646    -0.00000044  0.20D-07  0.71D-07  6298.32
    6     9     9     1.09731638    -0.93186238  -295.29131941    -0.00000662    -0.00000054  0.22D-07  0.90D-07  6298.32
    7     1     1     1.09589004    -0.92921395  -295.30721019    -0.00000050    -0.00000005  0.38D-08  0.67D-08  7543.33
    7     2     2     1.09589018    -0.92921393  -295.30721018    -0.00000049    -0.00000005  0.38D-08  0.67D-08  7543.33
    7     3     3     1.09588974    -0.92921386  -295.30721010    -0.00000051    -0.00000005  0.38D-08  0.68D-08  7543.33
    7     4     4     1.09649540    -0.93041310  -295.30076604    -0.00000062    -0.00000007  0.54D-08  0.95D-08  7543.33
    7     5     5     1.09649535    -0.93041310  -295.30076604    -0.00000062    -0.00000007  0.53D-08  0.95D-08  7543.33
    7     6     6     1.09649545    -0.93041309  -295.30076603    -0.00000062    -0.00000007  0.52D-08  0.94D-08  7543.33
    7     7     7     1.09649687    -0.93041290  -295.30076584    -0.00000058    -0.00000006  0.49D-08  0.92D-08  7543.33
    7     8     8     1.09649664    -0.93041274  -295.30076568    -0.00000057    -0.00000006  0.49D-08  0.90D-08  7543.33
    7     9     9     1.09733219    -0.93186310  -295.29132013    -0.00000072    -0.00000008  0.62D-08  0.12D-07  7543.33
    8     1     1     1.09588990    -0.92921401  -295.30721025    -0.00000006    -0.00000001  0.30D-09  0.92D-09  8799.20
    8     2     2     1.09588995    -0.92921399  -295.30721024    -0.00000006    -0.00000001  0.30D-09  0.93D-09  8799.20
    8     3     3     1.09588977    -0.92921392  -295.30721016    -0.00000006    -0.00000001  0.29D-09  0.92D-09  8799.20
    8     4     4     1.09649576    -0.93041319  -295.30076613    -0.00000009    -0.00000001  0.53D-09  0.15D-08  8799.20
    8     5     5     1.09649578    -0.93041319  -295.30076613    -0.00000009    -0.00000001  0.52D-09  0.15D-08  8799.20
    8     6     6     1.09649582    -0.93041317  -295.30076611    -0.00000009    -0.00000001  0.52D-09  0.15D-08  8799.20
    8     7     7     1.09649596    -0.93041298  -295.30076592    -0.00000008    -0.00000001  0.53D-09  0.15D-08  8799.20
    8     8     8     1.09649584    -0.93041282  -295.30076576    -0.00000008    -0.00000001  0.53D-09  0.15D-08  8799.20
    8     9     9     1.09733190    -0.93186321  -295.29132024    -0.00000011    -0.00000001  0.89D-09  0.21D-08  8799.20


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%  25.0%
 P   0.2%  39.1%  27.3%

 Initialization:   0.7%
 Other:            7.3%

 Total CPU:     8799.2 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//200/           0.0000000   0.0000001  -0.0000000   0.0007116  -0.0003836  -0.0040486   0.0278264   0.7743712
                           -0.5471065
 2222222222/2/0/0          -0.0000000  -0.0000002  -0.0000004   0.0006916  -0.0104628  -0.0072557   0.6844466   0.3630546
                            0.5471100
 2222222222/2//00           0.0153249  -0.0166612   0.6714117  -0.0118881   0.0260690  -0.6704236  -0.0049439  -0.0033036
                            0.0000001
 22222222222//0/0           0.0153250  -0.0166612   0.6714038   0.0118882  -0.0260694   0.6704317   0.0049449   0.0033036
                           -0.0000002
 2222222222//2/00          -0.0978702  -0.6644728  -0.0142552  -0.1037420   0.6623415   0.0275165   0.0104188   0.0001930
                            0.0000000
 22222222222//00/           0.0978692   0.6644653   0.0142551  -0.1037435   0.6623490   0.0275169   0.0104194   0.0001928
                            0.0000001
 2222222222//20/0           0.6644475  -0.0974891  -0.0175853   0.6628894   0.1041299  -0.0077112   0.0011799  -0.0006403
                           -0.0000000
 2222222222/2/00/           0.6644430  -0.0974887  -0.0175852  -0.6628937  -0.1041307   0.0077108  -0.0011799   0.0006403
                            0.0000000
 22222222222///00          -0.0000000  -0.0000003  -0.0000005  -0.0000201  -0.0100791  -0.0032075   0.6566191  -0.4113109
                           -0.5471111
 2222222222/\///0          -0.0000000  -0.0000000   0.0000004  -0.0011330   0.0024846  -0.0638977  -0.0004712  -0.0003149
                            0.0000000
 2222222222//\0//          -0.0183483   0.0026921   0.0004856  -0.0547150  -0.0085949   0.0006365  -0.0000974   0.0000529
                            0.0000000
 2222222222//\/0/           0.0027026   0.0183491   0.0003937   0.0085629  -0.0546698  -0.0022712  -0.0008600  -0.0000159
                           -0.0000000
 2222222222/020//          -0.0000000  -0.0000000  -0.0000000  -0.0000480  -0.0000077   0.0002622   0.0003100  -0.0535569
                            0.0405626
 22222222220/2/0/          -0.0000000   0.0000000  -0.0000000   0.0000503  -0.0000607  -0.0002970   0.0041532   0.0533961
                           -0.0405627

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.944792    0.021791    0.139163   -0.000000    0.000003    0.000000   -0.000001   -0.000000    0.000000
 2          -0.138622   -0.023691    0.944826   -0.000000   -0.000000    0.000000   -0.000005   -0.000000   -0.000000
 3          -0.025005    0.954692    0.020270   -0.000001   -0.000000   -0.000006   -0.000000   -0.000000    0.000000
 4          -0.000003    0.000000   -0.000001    0.000875    0.943337    0.016918   -0.147633   -0.000481    0.000000
 5          -0.000001   -0.000000    0.000005   -0.012565    0.148184   -0.037098    0.942560   -0.007482   -0.000000
 6          -0.000000    0.000006    0.000000   -0.008960   -0.010973    0.954062    0.039158    0.000188    0.000000
 7          -0.000000    0.000001    0.000000    0.822151    0.001679    0.007036    0.014827    0.485554    0.000001
 8          -0.000000   -0.000000   -0.000000    0.485588   -0.000911    0.004701    0.000275   -0.822282   -0.000003
 9          -0.000000   -0.000000    0.000000    0.000001   -0.000000   -0.000000    0.000000   -0.000003    0.954603

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955234   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.955234   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.955234   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.954970    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.954970    0.000000    0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.954970    0.000000    0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.954970    0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.954970   -0.000000
 9          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.954603


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.94479173 (fixed)   0.95524157 (relaxed)   0.95523438 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003036   -0.00009739   -0.79750692
 Singles      0.01694106   -0.05523591   -0.06476739
 Pairs        0.07895176   -0.00000000   -0.06693971
 Total        1.09592318   -0.05533330   -0.92921401
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37799624
 Nuclear energy                         0.00000000
 Kinetic energy                       111.38638314
 One electron energy                 -507.91618169
 Two electron energy                  212.60897144
 Virial quotient                       -2.65119669
 Correlation energy                    -0.92921401
 !MRCI STATE 1.2 Energy              -295.307210253981

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.39634342 (Davidson, fixed reference)
 Cluster corrected energies          -295.39632807 (Davidson, relaxed reference)
 Cluster corrected energies          -295.39634342 (Davidson, rotated reference)

 Cluster corrected energies          -295.39506287 (Pople, fixed reference)
 Cluster corrected energies          -295.39504649 (Pople, relaxed reference)
 Cluster corrected energies          -295.39506287 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94482557 (fixed)   0.95524155 (relaxed)   0.95523436 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003036   -0.00009739   -0.79750694
 Singles      0.01694102   -0.05523584   -0.06476732
 Pairs        0.07895184    0.00000002   -0.06693973
 Total        1.09592322   -0.05533321   -0.92921399
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37799624
 Nuclear energy                         0.00000000
 Kinetic energy                       111.38638160
 One electron energy                 -507.91618011
 Two electron energy                  212.60896988
 Virial quotient                       -2.65119673
 Correlation energy                    -0.92921399
 !MRCI STATE 2.2 Energy              -295.307210235168

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.39634344 (Davidson, fixed reference)
 Cluster corrected energies          -295.39632809 (Davidson, relaxed reference)
 Cluster corrected energies          -295.39634344 (Davidson, rotated reference)

 Cluster corrected energies          -295.39506290 (Pople, fixed reference)
 Cluster corrected energies          -295.39504652 (Pople, relaxed reference)
 Cluster corrected energies          -295.39506290 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95469195 (fixed)   0.95524163 (relaxed)   0.95523444 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003037   -0.00009739   -0.79750699
 Singles      0.01694099   -0.05523581   -0.06476724
 Pairs        0.07895168   -0.00000004   -0.06693970
 Total        1.09592304   -0.05533324   -0.92921392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37799624
 Nuclear energy                         0.00000000
 Kinetic energy                       111.38638091
 One electron energy                 -507.91618145
 Two electron energy                  212.60897129
 Virial quotient                       -2.65119674
 Correlation energy                    -0.92921392
 !MRCI STATE 3.2 Energy              -295.307210161927

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.39634319 (Davidson, fixed reference)
 Cluster corrected energies          -295.39632784 (Davidson, relaxed reference)
 Cluster corrected energies          -295.39634319 (Davidson, rotated reference)

 Cluster corrected energies          -295.39506264 (Pople, fixed reference)
 Cluster corrected energies          -295.39504625 (Pople, relaxed reference)
 Cluster corrected energies          -295.39506264 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94333721 (fixed)   0.95497617 (relaxed)   0.95496999 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003130   -0.00011001   -0.79773858
 Singles      0.01726847   -0.05569790   -0.06544984
 Pairs        0.07923031   -0.00000006   -0.06722478
 Total        1.09653008   -0.05580798   -0.93041319
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37035294
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39168023
 One electron energy                 -507.92985146
 Two electron energy                  212.62908533
 Virial quotient                       -2.65101276
 Correlation energy                    -0.93041319
 !MRCI STATE 4.2 Energy              -295.300766130588

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.39057899 (Davidson, fixed reference)
 Cluster corrected energies          -295.39056579 (Davidson, relaxed reference)
 Cluster corrected energies          -295.39057899 (Davidson, rotated reference)

 Cluster corrected energies          -295.38933532 (Pople, fixed reference)
 Cluster corrected energies          -295.38932121 (Pople, relaxed reference)
 Cluster corrected energies          -295.38933532 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.94255982 (fixed)   0.95497616 (relaxed)   0.95496998 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003130   -0.00011001   -0.79773863
 Singles      0.01726851   -0.05569794   -0.06544987
 Pairs        0.07923029    0.00000006   -0.06722468
 Total        1.09653010   -0.05580790   -0.93041319
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37035294
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39168025
 One electron energy                 -507.92985170
 Two electron energy                  212.62908558
 Virial quotient                       -2.65101276
 Correlation energy                    -0.93041319
 !MRCI STATE 5.2 Energy              -295.300766126792

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.39057900 (Davidson, fixed reference)
 Cluster corrected energies          -295.39056581 (Davidson, relaxed reference)
 Cluster corrected energies          -295.39057900 (Davidson, rotated reference)

 Cluster corrected energies          -295.38933533 (Pople, fixed reference)
 Cluster corrected energies          -295.38932123 (Pople, relaxed reference)
 Cluster corrected energies          -295.38933533 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95406161 (fixed)   0.95497614 (relaxed)   0.95496997 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003130   -0.00011001   -0.79773838
 Singles      0.01726848   -0.05569789   -0.06544981
 Pairs        0.07923036   -0.00000023   -0.06722498
 Total        1.09653014   -0.05580814   -0.93041317
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37035294
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39167836
 One electron energy                 -507.92984964
 Two electron energy                  212.62908352
 Virial quotient                       -2.65101281
 Correlation energy                    -0.93041317
 !MRCI STATE 6.2 Energy              -295.300766112344

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.39057902 (Davidson, fixed reference)
 Cluster corrected energies          -295.39056583 (Davidson, relaxed reference)
 Cluster corrected energies          -295.39057902 (Davidson, rotated reference)

 Cluster corrected energies          -295.38933535 (Pople, fixed reference)
 Cluster corrected energies          -295.38932125 (Pople, relaxed reference)
 Cluster corrected energies          -295.38933535 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.82215116 (fixed)   0.95497608 (relaxed)   0.95496991 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003130   -0.00010998   -0.79773813
 Singles      0.01726825   -0.05569759   -0.06544943
 Pairs        0.07923073   -0.00000050   -0.06722542
 Total        1.09653028   -0.05580807   -0.93041298
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37035294
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39167571
 One electron energy                 -507.92983940
 Two electron energy                  212.62907348
 Virial quotient                       -2.65101287
 Correlation energy                    -0.93041298
 !MRCI STATE 7.2 Energy              -295.300765921261

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.39057894 (Davidson, fixed reference)
 Cluster corrected energies          -295.39056574 (Davidson, relaxed reference)
 Cluster corrected energies          -295.39057894 (Davidson, rotated reference)

 Cluster corrected energies          -295.38933528 (Pople, fixed reference)
 Cluster corrected energies          -295.38932118 (Pople, relaxed reference)
 Cluster corrected energies          -295.38933528 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.82228248 (fixed)   0.95497614 (relaxed)   0.95496996 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003130   -0.00010998   -0.79774153
 Singles      0.01726810   -0.05569744   -0.06544916
 Pairs        0.07923076    0.00000315   -0.06722213
 Total        1.09653016   -0.05580427   -0.93041282
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.37035294
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39167838
 One electron energy                 -507.92984095
 Two electron energy                  212.62907519
 Virial quotient                       -2.65101281
 Correlation energy                    -0.93041282
 !MRCI STATE 8.2 Energy              -295.300765756725

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.39057866 (Davidson, fixed reference)
 Cluster corrected energies          -295.39056545 (Davidson, relaxed reference)
 Cluster corrected energies          -295.39057866 (Davidson, rotated reference)

 Cluster corrected energies          -295.38933499 (Pople, fixed reference)
 Cluster corrected energies          -295.38932088 (Pople, relaxed reference)
 Cluster corrected energies          -295.38933499 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95460280 (fixed)   0.95461297 (relaxed)   0.95460280 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003820   -0.00010621   -0.00012922
 Singles      0.01772685   -0.05606494   -0.06614673
 Pairs        0.07960877   -0.87569206   -0.86558726
 Total        1.09737382   -0.93186321   -0.93186321
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -294.35945703
 Nuclear energy                         0.00000000
 Kinetic energy                       111.39674220
 One electron energy                 -507.93715874
 Two electron energy                  212.64583850
 Virial quotient                       -2.65080750
 Correlation energy                    -0.93186321
 !MRCI STATE 9.2 Energy              -295.291320240727

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -295.38205932 (Davidson, fixed reference)
 Cluster corrected energies          -295.38203753 (Davidson, relaxed reference)
 Cluster corrected energies          -295.38205932 (Davidson, rotated reference)

 Cluster corrected energies          -295.38086839 (Pople, fixed reference)
 Cluster corrected energies          -295.38084507 (Pople, relaxed reference)
 Cluster corrected energies          -295.38086839 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     4714.53       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     28545.55   9480.94  19055.04      5.94      0.47      2.94
 REAL TIME  *     29066.23 SEC
 DISK USED  *         4.66 GB (local),       37.56 GB (total)
 SF USED    *        29.86 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -295.39634342  AU                              
 SETTING HLSDIAG(14)    =      -295.39634344  AU                              
 SETTING HLSDIAG(15)    =      -295.39634319  AU                              
 SETTING HLSDIAG(16)    =      -295.39057899  AU                              
 SETTING HLSDIAG(17)    =      -295.39057900  AU                              
 SETTING HLSDIAG(18)    =      -295.39057902  AU                              
 SETTING HLSDIAG(19)    =      -295.39057894  AU                              
 SETTING HLSDIAG(20)    =      -295.39057866  AU                              
 SETTING HLSDIAG(21)    =      -295.38205932  AU                              


         HLSDIAG
    -295.6937587
    -295.6937588
    -295.6937589
    -295.3880396
    -295.3880396
    -295.3880396
    -295.3880395
    -295.3880395
    -295.3840422
    -295.3840413
    -295.3840421
    -295.3825236
    -295.3963434
    -295.3963434
    -295.3963432
    -295.3905790
    -295.3905790
    -295.3905790
    -295.3905789
    -295.3905787
    -295.3820593
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -295.602236   -295.602236   -295.602236   -295.297781   -295.297781   -295.297781   -295.297781   -295.297781
                      -295.293185   -295.293185   -295.293185   -295.291490
 Replaced energies:   -295.693759   -295.693759   -295.693759   -295.388040   -295.388040   -295.388040   -295.388040   -295.388039
                      -295.384042   -295.384041   -295.384042   -295.382524

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -295.307210   -295.307210   -295.307210   -295.300766   -295.300766   -295.300766   -295.300766   -295.300766
                      -295.291320
 Replaced energies:   -295.396343   -295.396343   -295.396343   -295.390579   -295.390579   -295.390579   -295.390579   -295.390579
                      -295.382059



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -295.69375888

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -2476.22     282.62     228.06    -134.92       9.17     -12.16      11.55      78.98       7.72

    2   2.2  0.5  0.5       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2476.22       0.00     151.47     135.81     226.51      -4.02      24.31     -20.90      37.95     -15.25

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -282.62    -151.47      -0.00      -1.92     -30.18       3.72     239.72    -187.65       0.50       2.21

    4   4.2  0.5  0.5       0.00       0.00       0.00   67097.63       0.00       0.00       0.00       0.00       0.00       0.00
                         -228.06    -135.81       1.92       0.00    -960.89      26.52      39.99      31.59     -74.58    -163.84

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   67097.63       0.00       0.00       0.00       0.00       0.00
                          134.92    -226.51      30.18     960.89      -0.00      36.02     -36.10     -47.38    -825.70      23.05

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   67097.62       0.00       0.00       0.00       0.00
                           -9.17       4.02      -3.72     -26.52     -36.02       0.00   -1185.73   -1512.81      24.98       4.28

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   67097.64       0.00       0.00       0.00
                           12.16     -24.31    -239.72     -39.99      36.10    1185.73      -0.00      17.60       8.69     738.38

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   67097.65       0.00       0.00
                          -11.55      20.90     187.65     -31.59      47.38    1512.81     -17.60      -0.00       1.15    -579.60

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   67974.95       0.00
                          -78.98     -37.95      -0.50      74.58     825.70     -24.98      -8.69      -1.15       0.00     -25.14

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   67975.15
                           -7.72      15.25      -2.21     163.84     -23.05      -4.28    -738.38     579.60      25.14      -0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -36.78      76.85     -11.02     809.52     -70.80      21.72     151.06    -115.33     125.37       0.54

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           25.40     -47.39    -415.19      -0.00      -0.00      -0.00       0.00      -0.00      -7.53    1745.96

   13   1.2  0.5 -0.5      -0.00      15.67   -1071.47      12.84       5.75     114.39     256.10     103.90      -5.16     -36.53
                            0.00     320.27    2237.53      -6.57      -8.37     240.64     -19.94    -127.74      -0.31      76.57

   14   2.2  0.5 -0.5     -15.67      -0.00    2255.26     -25.06      -3.11    -237.88     123.75      47.81       9.59      77.05
                         -320.27       0.00    1060.83      -0.05      33.67     111.81      37.42     272.63      -0.20      38.82

   15   3.2  0.5 -0.5    1071.47   -2255.26       0.00    -262.82      25.77      27.51       0.58       0.61      86.94     -10.58
                        -2237.53   -1060.83      -0.00      24.87     262.03      -6.08      -9.32     -38.49      -0.39      17.63

   16   4.2  0.5 -0.5     -12.84      25.06     262.82      -0.00     -27.77    -955.78      74.89    -173.46     -14.65    -809.06
                            6.57       0.05     -24.87       0.00       4.31     -75.23    1896.39    -270.20       0.96      80.34

   17   5.2  0.5 -0.5      -5.75       3.11     -25.77      27.77      -0.00     105.35     713.46   -1775.48      26.38      73.80
                            8.37     -33.67    -262.03      -4.31       0.00    -959.34    -171.58      20.42      -3.76     803.96

   18   6.2  0.5 -0.5    -114.39     237.88     -27.51     955.78    -105.35      -0.00     -17.72      54.51     828.93     -16.87
                         -240.64    -111.81       6.08      75.23     959.34      -0.00      33.21      -5.01       7.77    -187.38

   19   7.2  0.5 -0.5    -256.10    -123.75      -0.58     -74.89    -713.46      17.72       0.00      24.33      -2.28    -177.66
                           19.94     -37.42       9.32   -1896.39     171.58     -33.21      -0.00      -2.96    -134.93     -11.08

   20   8.2  0.5 -0.5    -103.90     -47.81      -0.61     173.46    1775.48     -54.51     -24.33       0.00       5.91     -71.10
                          127.74    -272.63      38.49     270.20     -20.42       5.01       2.96       0.00    -948.22      -4.28

   21   9.2  0.5 -0.5       5.16      -9.59     -86.94      14.65     -26.38    -828.93       2.28      -5.91      -0.00     125.36
                            0.31       0.20       0.39      -0.96       3.76      -7.77     134.93     948.22      -0.00      -0.46

   22  10.2  0.5 -0.5      36.53     -77.05      10.58     809.06     -73.80      16.87     177.66      71.10    -125.36       0.00
                          -76.57     -38.82     -17.63     -80.34    -803.96     187.38      11.08       4.28       0.46      -0.00

   23  11.2  0.5 -0.5      -7.30      15.41      -2.52    -164.74      27.49      -2.67     870.67     350.12      25.14       0.57
                           20.78      -2.33     -85.10      -2.38     188.42     807.73      -8.01       7.87      -0.64     127.87

   24  12.2  0.5 -0.5     378.13     179.65       2.63      -0.00      -0.01       0.00       0.00       0.00      -8.00     350.13
                          177.87    -375.16      53.70       0.01      -0.00      -0.00       0.00       0.00   -1780.70      -8.96

   25   1.2  1.5  1.5      41.22     -78.28    -579.04      26.90     -19.80    -615.97      97.95      37.06      31.02   -1107.72
                            6.86      15.51      85.62       4.31      10.22     -88.54    -113.73    -680.32      -0.59     158.04

   26   2.2  1.5  1.5     -11.39      22.77      83.34     -18.66      13.22      93.18     632.23     273.70     -29.22     162.40
                          -48.67      60.03     580.65      11.92     -34.62    -616.60      21.65      96.54      -4.93    1113.56

   27   3.2  1.5  1.5     248.27    -523.89      90.61     598.69     -55.64      31.32      15.61       6.59    1149.50      35.11
                          528.94     253.08      16.14      57.10     598.76     -31.39      -5.49      18.91       5.06    -202.21

   28   4.2  1.5  1.5     -41.44      77.10     592.84      20.29     -18.79    -504.01     -58.60     148.80       9.20    -411.70
                           15.32      -6.06     -92.94       4.17     -27.57     -86.51   -1032.88     156.37      -0.29      65.90

   29   5.2  1.5  1.5      12.78      -6.21      96.40     -19.37      -0.32     -71.50     399.43    -967.12     -16.02     -63.44
                          -53.54      49.56     594.82     -16.80      35.00     500.49    -166.50      27.27      -4.59    -414.69

   30   6.2  1.5  1.5    -248.90     540.43     -83.94     527.91     -48.53      19.31      18.42     -39.55     418.19       7.81
                          542.40     258.04      28.81     -59.03    -526.35      36.71      19.42      -2.59      -3.85      65.00

   31   7.2  1.5  1.5    -561.54    -261.77      -3.40      48.54     470.10     -14.88      -0.47     -14.43       5.06     -86.81
                         -249.17     535.77     -66.89     532.12     -53.77      21.28       0.07       0.89     417.74      -3.76

   32   8.2  1.5  1.5    -297.76    -138.30      -3.01     -81.51    -886.80      27.32      12.87      -1.74       3.10     -45.05
                          160.87    -332.40      47.96     850.74     -82.63      21.44       4.10       0.76    -261.49      -1.03

   33   9.2  1.5  1.5     931.36     442.49       6.47       0.03       0.32      -0.01      -0.01      -0.00      -1.09      47.79
                         -438.13     924.12    -132.27       0.44      -0.04       0.02      -0.00       0.00     245.61       1.23

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -652.76    -201.72     -16.90     168.12     699.21     -19.05     -23.99      12.96    -199.35     255.64

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -195.17     643.27     -85.36     674.82    -168.17      20.38      19.34     -12.14   -1312.85     -44.26

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.06      20.57      -1.73      13.82     -30.20      -6.08    -619.69     512.09     -28.03      -6.93

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -670.32    -200.73     -18.84    -149.15    -569.30      15.68      -5.59     -18.01      76.85     -94.54

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          192.95    -660.61      87.60     594.07    -147.66      -0.06      33.32      37.59    -476.39     -17.66

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           19.11     -21.58       7.90      28.74      -5.63      -9.11    -763.99    -956.23     -19.81      -1.94

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.23     -13.48     -27.42     -16.05      35.42    1163.87     -14.41      -1.00      -7.59      19.90

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           49.75     -91.43    -802.05       1.16      -0.84     -41.71      -3.45      -4.92      -2.56     562.93

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           72.23    -134.76   -1180.75       0.01      -0.01      -0.34      -0.00      -0.01      -1.16     272.52

   43   1.2  1.5 -0.5      23.80     -45.19    -334.31      15.53     -11.43    -355.63      56.55      21.40      17.91    -639.54
                           -3.96      -8.95     -49.43      -2.49      -5.90      51.12      65.66     392.78       0.34     -91.24

   44   2.2  1.5 -0.5      -6.58      13.15      48.12     -10.77       7.63      53.80     365.02     158.02     -16.87      93.76
                           28.10     -34.66    -335.24      -6.88      19.99     355.99     -12.50     -55.74       2.84    -642.92

   45   3.2  1.5 -0.5     143.34    -302.47      52.31     345.65     -32.12      18.08       9.01       3.81     663.66      20.27
                         -305.38    -146.12      -9.32     -32.97    -345.69      18.12       3.17     -10.92      -2.92     116.74

   46   4.2  1.5 -0.5     -23.93      44.51     342.28      11.72     -10.85    -290.99     -33.84      85.91       5.31    -237.70
                           -8.85       3.50      53.66      -2.41      15.92      49.95     596.33     -90.28       0.17     -38.05

   47   5.2  1.5 -0.5       7.38      -3.59      55.66     -11.18      -0.18     -41.28     230.61    -558.37      -9.25     -36.63
                           30.91     -28.61    -343.42       9.70     -20.21    -288.96      96.13     -15.74       2.65     239.42

   48   6.2  1.5 -0.5    -143.71     312.02     -48.46     304.79     -28.02      11.15      10.63     -22.84     241.44       4.51
                         -313.15    -148.98     -16.64      34.08     303.89     -21.19     -11.21       1.50       2.22     -37.53

   49   7.2  1.5 -0.5    -324.21    -151.13      -1.96      28.02     271.41      -8.59      -0.27      -8.33       2.92     -50.12
                          143.86    -309.33      38.62    -307.22      31.05     -12.28      -0.04      -0.51    -241.18       2.17

   50   8.2  1.5 -0.5    -171.91     -79.85      -1.74     -47.06    -511.99      15.78       7.43      -1.00       1.79     -26.01
                          -92.88     191.91     -27.69    -491.17      47.70     -12.38      -2.37      -0.44     150.97       0.60

   51   9.2  1.5 -0.5     537.72     255.47       3.73       0.02       0.18      -0.01      -0.00      -0.00      -0.63      27.59
                          252.95    -533.54      76.37      -0.25       0.02      -0.01       0.00      -0.00    -141.80      -0.71

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

    1   1.2  0.5  0.5       0.00       0.00      -0.00     -15.67    1071.47     -12.84      -5.75    -114.39    -256.10    -103.90
                           36.78     -25.40      -0.00     320.27    2237.53      -6.57      -8.37     240.64     -19.94    -127.74

    2   2.2  0.5  0.5       0.00       0.00      15.67      -0.00   -2255.26      25.06       3.11     237.88    -123.75     -47.81
                          -76.85      47.39    -320.27      -0.00    1060.83      -0.05      33.67     111.81      37.42     272.63

    3   3.2  0.5  0.5       0.00       0.00   -1071.47    2255.26       0.00     262.82     -25.77     -27.51      -0.58      -0.61
                           11.02     415.19   -2237.53   -1060.83       0.00      24.87     262.03      -6.08      -9.32     -38.49

    4   4.2  0.5  0.5       0.00       0.00      12.84     -25.06    -262.82      -0.00      27.77     955.78     -74.89     173.46
                         -809.52       0.00       6.57       0.05     -24.87      -0.00       4.31     -75.23    1896.39    -270.20

    5   5.2  0.5  0.5       0.00       0.00       5.75      -3.11      25.77     -27.77      -0.00    -105.35    -713.46    1775.48
                           70.80       0.00       8.37     -33.67    -262.03      -4.31      -0.00    -959.34    -171.58      20.42

    6   6.2  0.5  0.5       0.00       0.00     114.39    -237.88      27.51    -955.78     105.35      -0.00      17.72     -54.51
                          -21.72       0.00    -240.64    -111.81       6.08      75.23     959.34       0.00      33.21      -5.01

    7   7.2  0.5  0.5       0.00       0.00     256.10     123.75       0.58      74.89     713.46     -17.72       0.00     -24.33
                         -151.06      -0.00      19.94     -37.42       9.32   -1896.39     171.58     -33.21       0.00      -2.96

    8   8.2  0.5  0.5       0.00       0.00     103.90      47.81       0.61    -173.46   -1775.48      54.51      24.33       0.00
                          115.33       0.00     127.74    -272.63      38.49     270.20     -20.42       5.01       2.96      -0.00

    9   9.2  0.5  0.5       0.00       0.00      -5.16       9.59      86.94     -14.65      26.38     828.93      -2.28       5.91
                         -125.37       7.53       0.31       0.20       0.39      -0.96       3.76      -7.77     134.93     948.22

   10  10.2  0.5  0.5       0.00       0.00     -36.53      77.05     -10.58    -809.06      73.80     -16.87    -177.66     -71.10
                           -0.54   -1745.96     -76.57     -38.82     -17.63     -80.34    -803.96     187.38      11.08       4.28

   11  11.2  0.5  0.5   67974.98       0.00       7.30     -15.41       2.52     164.74     -27.49       2.67    -870.67    -350.12
                            0.00     350.16      20.78      -2.33     -85.10      -2.38     188.42     807.73      -8.01       7.87

   12  12.2  0.5  0.5       0.00   68308.25    -378.13    -179.65      -2.63       0.00       0.01      -0.00      -0.00      -0.00
                         -350.16      -0.00     177.87    -375.16      53.70       0.01      -0.00      -0.00       0.00       0.00

   13   1.2  0.5 -0.5       7.30    -378.13       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.78    -177.87       0.00    2476.22    -282.62    -228.06     134.92      -9.17      12.16     -11.55

   14   2.2  0.5 -0.5     -15.41    -179.65       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                            2.33     375.16   -2476.22      -0.00    -151.47    -135.81    -226.51       4.02     -24.31      20.90

   15   3.2  0.5 -0.5       2.52      -2.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           85.10     -53.70     282.62     151.47       0.00       1.92      30.18      -3.72    -239.72     187.65

   16   4.2  0.5 -0.5     164.74       0.00       0.00       0.00       0.00   67097.63       0.00       0.00       0.00       0.00
                            2.38      -0.01     228.06     135.81      -1.92      -0.00     960.89     -26.52     -39.99     -31.59

   17   5.2  0.5 -0.5     -27.49       0.01       0.00       0.00       0.00       0.00   67097.63       0.00       0.00       0.00
                         -188.42       0.00    -134.92     226.51     -30.18    -960.89       0.00     -36.02      36.10      47.38

   18   6.2  0.5 -0.5       2.67      -0.00       0.00       0.00       0.00       0.00       0.00   67097.62       0.00       0.00
                         -807.73       0.00       9.17      -4.02       3.72      26.52      36.02      -0.00    1185.73    1512.81

   19   7.2  0.5 -0.5    -870.67      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   67097.64       0.00
                            8.01      -0.00     -12.16      24.31     239.72      39.99     -36.10   -1185.73       0.00     -17.60

   20   8.2  0.5 -0.5    -350.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   67097.65
                           -7.87      -0.00      11.55     -20.90    -187.65      31.59     -47.38   -1512.81      17.60       0.00

   21   9.2  0.5 -0.5     -25.14       8.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.64    1780.70      78.98      37.95       0.50     -74.58    -825.70      24.98       8.69       1.15

   22  10.2  0.5 -0.5      -0.57    -350.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -127.87       8.96       7.72     -15.25       2.21    -163.84      23.05       4.28     738.38    -579.60

   23  11.2  0.5 -0.5      -0.00   -1745.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       6.36      36.78     -76.85      11.02    -809.52      70.80     -21.72    -151.06     115.33

   24  12.2  0.5 -0.5    1745.96      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.36       0.00     -25.40      47.39     415.19       0.00       0.00       0.00      -0.00       0.00

   25   1.2  1.5  1.5     222.28    -135.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -58.45    -919.66      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5     -32.69    -919.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -194.24     134.93      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5      -1.77     -19.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1131.62      24.34      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5      82.15       2.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.67      14.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5      19.49     -14.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           66.58       2.20      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5       5.08      -0.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          412.84      -0.16      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5    -429.13      -0.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.81       0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5    -226.78      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.10      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5     238.33      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.87      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00      23.80     -45.19    -334.31      15.53     -11.43    -355.63      56.55      21.40
                         1278.92     -24.47       3.96       8.95      49.43       2.49       5.90     -51.12     -65.66    -392.78

   35   2.2  1.5  0.5       0.00       0.00      -6.58      13.15      48.12     -10.77       7.63      53.80     365.02     158.02
                         -192.44      26.60     -28.10      34.66     335.24       6.88     -19.99    -355.99      12.50      55.74

   36   3.2  1.5  0.5       0.00       0.00     143.34    -302.47      52.31     345.65     -32.12      18.08       9.01       3.81
                          -33.96   -1072.09     305.38     146.12       9.32      32.97     345.69     -18.12      -3.17      10.92

   37   4.2  1.5  0.5       0.00       0.00     -23.93      44.51     342.28      11.72     -10.85    -290.99     -33.84      85.91
                         -475.72      -0.29       8.85      -3.50     -53.66       2.41     -15.92     -49.95    -596.33      90.28

   38   5.2  1.5  0.5       0.00       0.00       7.38      -3.59      55.66     -11.18      -0.18     -41.28     230.61    -558.37
                          -76.40       0.64     -30.91      28.61     343.42      -9.70      20.21     288.96     -96.13      15.74

   39   6.2  1.5  0.5       0.00       0.00    -143.71     312.02     -48.46     304.79     -28.02      11.15      10.63     -22.84
                            6.07     -16.45     313.15     148.98      16.64     -34.08    -303.89      21.19      11.21      -1.50

   40   7.2  1.5  0.5       0.00       0.00    -324.21    -151.13      -1.96      28.02     271.41      -8.59      -0.27      -8.33
                           -4.90      -0.13    -143.86     309.33     -38.62     307.22     -31.05      12.28       0.04       0.51

   41   8.2  1.5  0.5       0.00       0.00    -171.91     -79.85      -1.74     -47.06    -511.99      15.78       7.43      -1.00
                         -112.42      -0.08      92.88    -191.91      27.69     491.17     -47.70      12.38       2.37       0.44

   42   9.2  1.5  0.5       0.00       0.00     537.72     255.47       3.73       0.02       0.18      -0.01      -0.00      -0.00
                          -54.66       0.00    -252.95     533.54     -76.37       0.25      -0.02       0.01      -0.00       0.00

   43   1.2  1.5 -0.5     128.33     -78.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           33.75     530.97    -652.76    -201.72     -16.90     168.12     699.21     -19.05     -23.99      12.96

   44   2.2  1.5 -0.5     -18.88    -530.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          112.15     -77.90    -195.17     643.27     -85.36     674.82    -168.17      20.38      19.34     -12.14

   45   3.2  1.5 -0.5      -1.02     -11.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          653.34     -14.05      10.06      20.57      -1.73      13.82     -30.20      -6.08    -619.69     512.09

   46   4.2  1.5 -0.5      47.43       1.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.27      -8.15    -670.32    -200.73     -18.84    -149.15    -569.30      15.68      -5.59     -18.01

   47   5.2  1.5 -0.5      11.25      -8.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -38.44      -1.27     192.95    -660.61      87.60     594.07    -147.66      -0.06      33.32      37.59

   48   6.2  1.5 -0.5       2.93      -0.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -238.35       0.09      19.11     -21.58       7.90      28.74      -5.63      -9.11    -763.99    -956.23

   49   7.2  1.5 -0.5    -247.76      -0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.36      -0.02       5.23     -13.48     -27.42     -16.05      35.42    1163.87     -14.41      -1.00

   50   8.2  1.5 -0.5    -130.93      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.64       0.01      49.75     -91.43    -802.05       1.16      -0.84     -41.71      -3.45      -4.92

   51   9.2  1.5 -0.5     137.60      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.51       0.00      72.23    -134.76   -1180.75       0.01      -0.01      -0.34      -0.00      -0.01

   52   1.2  1.5 -1.5       0.00       0.00      41.22     -78.28    -579.04      26.90     -19.80    -615.97      97.95      37.06
                           -0.00      -0.00      -6.86     -15.51     -85.62      -4.31     -10.22      88.54     113.73     680.32

   53   2.2  1.5 -1.5       0.00       0.00     -11.39      22.77      83.34     -18.66      13.22      93.18     632.23     273.70
                           -0.00      -0.00      48.67     -60.03    -580.65     -11.92      34.62     616.60     -21.65     -96.54

   54   3.2  1.5 -1.5       0.00       0.00     248.27    -523.89      90.61     598.69     -55.64      31.32      15.61       6.59
                           -0.00      -0.00    -528.94    -253.08     -16.14     -57.10    -598.76      31.39       5.49     -18.91

   55   4.2  1.5 -1.5       0.00       0.00     -41.44      77.10     592.84      20.29     -18.79    -504.01     -58.60     148.80
                           -0.00      -0.00     -15.32       6.06      92.94      -4.17      27.57      86.51    1032.88    -156.37

   56   5.2  1.5 -1.5       0.00       0.00      12.78      -6.21      96.40     -19.37      -0.32     -71.50     399.43    -967.12
                           -0.00      -0.00      53.54     -49.56    -594.82      16.80     -35.00    -500.49     166.50     -27.27

   57   6.2  1.5 -1.5       0.00       0.00    -248.90     540.43     -83.94     527.91     -48.53      19.31      18.42     -39.55
                           -0.00      -0.00    -542.40    -258.04     -28.81      59.03     526.35     -36.71     -19.42       2.59

   58   7.2  1.5 -1.5       0.00       0.00    -561.54    -261.77      -3.40      48.54     470.10     -14.88      -0.47     -14.43
                           -0.00      -0.00     249.17    -535.77      66.89    -532.12      53.77     -21.28      -0.07      -0.89

   59   8.2  1.5 -1.5       0.00       0.00    -297.76    -138.30      -3.01     -81.51    -886.80      27.32      12.87      -1.74
                           -0.00      -0.00    -160.87     332.40     -47.96    -850.74      82.63     -21.44      -4.10      -0.76

   60   9.2  1.5 -1.5       0.00       0.00     931.36     442.49       6.47       0.03       0.32      -0.01      -0.01      -0.00
                           -0.00      -0.00     438.13    -924.12     132.27      -0.44       0.04      -0.02       0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5       5.16      36.53      -7.30     378.13      41.22     -11.39     248.27     -41.44      12.78    -248.90
                           -0.31      76.57     -20.78    -177.87      -6.86      48.67    -528.94     -15.32      53.54    -542.40

    2   2.2  0.5  0.5      -9.59     -77.05      15.41     179.65     -78.28      22.77    -523.89      77.10      -6.21     540.43
                           -0.20      38.82       2.33     375.16     -15.51     -60.03    -253.08       6.06     -49.56    -258.04

    3   3.2  0.5  0.5     -86.94      10.58      -2.52       2.63    -579.04      83.34      90.61     592.84      96.40     -83.94
                           -0.39      17.63      85.10     -53.70     -85.62    -580.65     -16.14      92.94    -594.82     -28.81

    4   4.2  0.5  0.5      14.65     809.06    -164.74      -0.00      26.90     -18.66     598.69      20.29     -19.37     527.91
                            0.96      80.34       2.38      -0.01      -4.31     -11.92     -57.10      -4.17      16.80      59.03

    5   5.2  0.5  0.5     -26.38     -73.80      27.49      -0.01     -19.80      13.22     -55.64     -18.79      -0.32     -48.53
                           -3.76     803.96    -188.42       0.00     -10.22      34.62    -598.76      27.57     -35.00     526.35

    6   6.2  0.5  0.5    -828.93      16.87      -2.67       0.00    -615.97      93.18      31.32    -504.01     -71.50      19.31
                            7.77    -187.38    -807.73       0.00      88.54     616.60      31.39      86.51    -500.49     -36.71

    7   7.2  0.5  0.5       2.28     177.66     870.67       0.00      97.95     632.23      15.61     -58.60     399.43      18.42
                         -134.93     -11.08       8.01      -0.00     113.73     -21.65       5.49    1032.88     166.50     -19.42

    8   8.2  0.5  0.5      -5.91      71.10     350.12       0.00      37.06     273.70       6.59     148.80    -967.12     -39.55
                         -948.22      -4.28      -7.87      -0.00     680.32     -96.54     -18.91    -156.37     -27.27       2.59

    9   9.2  0.5  0.5      -0.00    -125.36      25.14      -8.00      31.02     -29.22    1149.50       9.20     -16.02     418.19
                            0.00      -0.46       0.64    1780.70       0.59       4.93      -5.06       0.29       4.59       3.85

   10  10.2  0.5  0.5     125.36       0.00       0.57     350.13   -1107.72     162.40      35.11    -411.70     -63.44       7.81
                            0.46       0.00    -127.87       8.96    -158.04   -1113.56     202.21     -65.90     414.69     -65.00

   11  11.2  0.5  0.5     -25.14      -0.57      -0.00    1745.96     222.28     -32.69      -1.77      82.15      19.49       5.08
                           -0.64     127.87      -0.00       6.36      58.45     194.24    1131.62       5.67     -66.58    -412.84

   12  12.2  0.5  0.5       8.00    -350.13   -1745.96      -0.00    -135.40    -919.29     -19.72       2.22     -14.18      -0.59
                        -1780.70      -8.96      -6.36      -0.00     919.66    -134.93     -24.34     -14.12      -2.20       0.16

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -78.98      -7.72     -36.78      25.40       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -37.95      15.25      76.85     -47.39       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.50      -2.21     -11.02    -415.19       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           74.58     163.84     809.52      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          825.70     -23.05     -70.80      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -24.98      -4.28      21.72      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.69    -738.38     151.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.15     579.60    -115.33      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   67974.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      25.14     125.37      -7.53       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   67975.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.14       0.00       0.54    1745.96       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   67974.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -125.37      -0.54      -0.00    -350.16       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   68308.25       0.00       0.00       0.00       0.00       0.00       0.00
                            7.53   -1745.96     350.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   65275.15       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    1251.31      31.05     -13.13    1454.52      56.82

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   65275.14       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -1251.31       0.00      28.56    1455.50      14.90     -25.43

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   65275.20       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -31.05     -28.56      -0.00      34.87     -32.00       6.86

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66540.29       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      13.13   -1455.50     -34.87       0.00   -1250.74     -46.92

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66540.29       0.00
                           -0.00      -0.00      -0.00      -0.00   -1454.52     -14.90      32.00    1250.74      -0.00     -61.24

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66540.29
                           -0.00      -0.00      -0.00      -0.00     -56.82      25.43      -6.86      46.92      61.24       0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -21.36      -0.75      60.87      63.89     -96.12    2500.75

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      38.12     -40.24    1679.46      -1.43       4.92     -89.84

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      54.46     -59.20    2385.78       0.00      -0.00       0.01

   34   1.2  1.5  0.5      17.91    -639.54     128.33     -78.17       0.00      15.34    -714.98       4.34      33.37    -832.31
                           -0.34      91.24     -33.75    -530.97       0.00      18.92    -104.90       5.11     -36.18     117.61

   35   2.2  1.5  0.5     -16.87      93.76     -18.88    -530.75     -15.34      -0.00     105.31     -17.58     -20.94     113.14
                           -2.84     642.92    -112.15      77.90     -18.92      -0.00    -714.97      11.51      -9.89     832.23

   36   3.2  1.5  0.5     663.66      20.27      -1.02     -11.39     714.98    -105.31      -0.00     830.43     129.25      12.14
                            2.92    -116.74    -653.34      14.05     104.90     714.97       0.00     130.22    -829.71     -16.53

   37   4.2  1.5  0.5       5.31    -237.70      47.43       1.28      -4.34      17.58    -830.43      -0.00      27.35    -713.77
                           -0.17      38.05      -3.27       8.15      -5.11     -11.51    -130.22      -0.00      -3.48     100.21

   38   5.2  1.5  0.5      -9.25     -36.63      11.25      -8.18     -33.37      20.94    -129.25     -27.35      -0.00    -113.12
                           -2.65    -239.42      38.44       1.27      36.18       9.89     829.71       3.48       0.00    -716.31

   39   6.2  1.5  0.5     241.44       4.51       2.93      -0.34     832.31    -113.14     -12.14     713.77     113.12      -0.00
                           -2.22      37.53     238.35      -0.09    -117.61    -832.23      16.53    -100.21     716.31      -0.00

   40   7.2  1.5  0.5       2.92     -50.12    -247.76      -0.13    -118.83    -849.03     -19.84     -99.51     669.88      26.44
                          241.18      -2.17       3.36       0.02    -814.26     112.93      34.45    -759.29    -113.44      -2.20

   41   8.2  1.5  0.5       1.79     -26.01    -130.93      -0.00     -62.15    -450.52      -8.96     201.07   -1260.69     -51.75
                         -150.97      -0.60       0.64      -0.01     509.08     -78.88     -13.34   -1211.44    -186.68      14.04

   42   9.2  1.5  0.5      -0.63      27.59     137.60      -0.00     200.78    1363.19      29.25      -0.00       0.00       0.00
                          141.80       0.71       0.51      -0.00   -1363.14     200.00      36.08       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -199.35     255.64    1278.92     -24.47      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1312.85     -44.26    -192.44      26.60      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -28.03      -6.93     -33.96   -1072.09      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           76.85     -94.54    -475.72      -0.29      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -476.39     -17.66     -76.40       0.64      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.81      -1.94       6.07     -16.45      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.59      19.90      -4.90      -0.13      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.56     562.93    -112.42      -0.08      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.16     272.52     -54.66       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5      31.02   -1107.72     222.28    -135.40       0.00       0.00       0.00       0.00       0.00       0.00
                            0.59    -158.04      58.45     919.66      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5     -29.22     162.40     -32.69    -919.29       0.00       0.00       0.00       0.00       0.00       0.00
                            4.93   -1113.56     194.24    -134.93      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5    1149.50      35.11      -1.77     -19.72       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.06     202.21    1131.62     -24.34      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       9.20    -411.70      82.15       2.22       0.00       0.00       0.00       0.00       0.00       0.00
                            0.29     -65.90       5.67     -14.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5     -16.02     -63.44      19.49     -14.18       0.00       0.00       0.00       0.00       0.00       0.00
                            4.59     414.69     -66.58      -2.20      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5     418.19       7.81       5.08      -0.59       0.00       0.00       0.00       0.00       0.00       0.00
                            3.85     -65.00    -412.84       0.16      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5       5.06     -86.81    -429.13      -0.22       0.00       0.00       0.00       0.00       0.00       0.00
                         -417.74       3.76      -5.81      -0.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5       3.10     -45.05    -226.78      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          261.49       1.03      -1.10       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5      -1.09      47.79     238.33      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                         -245.61      -1.23      -0.87       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5    -561.54    -297.76     931.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          249.17    -160.87     438.13     652.76     195.17     -10.06     670.32    -192.95     -19.11      -5.23

    2   2.2  0.5  0.5    -261.77    -138.30     442.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -535.77     332.40    -924.12     201.72    -643.27     -20.57     200.73     660.61      21.58      13.48

    3   3.2  0.5  0.5      -3.40      -3.01       6.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           66.89     -47.96     132.27      16.90      85.36       1.73      18.84     -87.60      -7.90      27.42

    4   4.2  0.5  0.5      48.54     -81.51       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -532.12    -850.74      -0.44    -168.12    -674.82     -13.82     149.15    -594.07     -28.74      16.05

    5   5.2  0.5  0.5     470.10    -886.80       0.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           53.77      82.63       0.04    -699.21     168.17      30.20     569.30     147.66       5.63     -35.42

    6   6.2  0.5  0.5     -14.88      27.32      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.28     -21.44      -0.02      19.05     -20.38       6.08     -15.68       0.06       9.11   -1163.87

    7   7.2  0.5  0.5      -0.47      12.87      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.07      -4.10       0.00      23.99     -19.34     619.69       5.59     -33.32     763.99      14.41

    8   8.2  0.5  0.5     -14.43      -1.74      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.89      -0.76      -0.00     -12.96      12.14    -512.09      18.01     -37.59     956.23       1.00

    9   9.2  0.5  0.5       5.06       3.10      -1.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -417.74     261.49    -245.61     199.35    1312.85      28.03     -76.85     476.39      19.81       7.59

   10  10.2  0.5  0.5     -86.81     -45.05      47.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.76       1.03      -1.23    -255.64      44.26       6.93      94.54      17.66       1.94     -19.90

   11  11.2  0.5  0.5    -429.13    -226.78     238.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.81      -1.10      -0.87   -1278.92     192.44      33.96     475.72      76.40      -6.07       4.90

   12  12.2  0.5  0.5      -0.22      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.01       0.00      24.47     -26.60    1072.09       0.29      -0.64      16.45       0.13

   13   1.2  0.5 -0.5       0.00       0.00       0.00      23.80      -6.58     143.34     -23.93       7.38    -143.71    -324.21
                            0.00       0.00       0.00      -3.96      28.10    -305.38      -8.85      30.91    -313.15     143.86

   14   2.2  0.5 -0.5       0.00       0.00       0.00     -45.19      13.15    -302.47      44.51      -3.59     312.02    -151.13
                            0.00       0.00       0.00      -8.95     -34.66    -146.12       3.50     -28.61    -148.98    -309.33

   15   3.2  0.5 -0.5       0.00       0.00       0.00    -334.31      48.12      52.31     342.28      55.66     -48.46      -1.96
                            0.00       0.00       0.00     -49.43    -335.24      -9.32      53.66    -343.42     -16.64      38.62

   16   4.2  0.5 -0.5       0.00       0.00       0.00      15.53     -10.77     345.65      11.72     -11.18     304.79      28.02
                            0.00       0.00       0.00      -2.49      -6.88     -32.97      -2.41       9.70      34.08    -307.22

   17   5.2  0.5 -0.5       0.00       0.00       0.00     -11.43       7.63     -32.12     -10.85      -0.18     -28.02     271.41
                            0.00       0.00       0.00      -5.90      19.99    -345.69      15.92     -20.21     303.89      31.05

   18   6.2  0.5 -0.5       0.00       0.00       0.00    -355.63      53.80      18.08    -290.99     -41.28      11.15      -8.59
                            0.00       0.00       0.00      51.12     355.99      18.12      49.95    -288.96     -21.19     -12.28

   19   7.2  0.5 -0.5       0.00       0.00       0.00      56.55     365.02       9.01     -33.84     230.61      10.63      -0.27
                            0.00       0.00       0.00      65.66     -12.50       3.17     596.33      96.13     -11.21      -0.04

   20   8.2  0.5 -0.5       0.00       0.00       0.00      21.40     158.02       3.81      85.91    -558.37     -22.84      -8.33
                            0.00       0.00       0.00     392.78     -55.74     -10.92     -90.28     -15.74       1.50      -0.51

   21   9.2  0.5 -0.5       0.00       0.00       0.00      17.91     -16.87     663.66       5.31      -9.25     241.44       2.92
                            0.00       0.00       0.00       0.34       2.84      -2.92       0.17       2.65       2.22    -241.18

   22  10.2  0.5 -0.5       0.00       0.00       0.00    -639.54      93.76      20.27    -237.70     -36.63       4.51     -50.12
                            0.00       0.00       0.00     -91.24    -642.92     116.74     -38.05     239.42     -37.53       2.17

   23  11.2  0.5 -0.5       0.00       0.00       0.00     128.33     -18.88      -1.02      47.43      11.25       2.93    -247.76
                            0.00       0.00       0.00      33.75     112.15     653.34       3.27     -38.44    -238.35      -3.36

   24  12.2  0.5 -0.5       0.00       0.00       0.00     -78.17    -530.75     -11.39       1.28      -8.18      -0.34      -0.13
                            0.00       0.00       0.00     530.97     -77.90     -14.05      -8.15      -1.27       0.09      -0.02

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00     -15.34     714.98      -4.34     -33.37     832.31    -118.83
                           21.36     -38.12     -54.46      -0.00      18.92    -104.90       5.11     -36.18     117.61     814.26

   26   2.2  1.5  1.5       0.00       0.00       0.00      15.34      -0.00    -105.31      17.58      20.94    -113.14    -849.03
                            0.75      40.24      59.20     -18.92       0.00    -714.97      11.51      -9.89     832.23    -112.93

   27   3.2  1.5  1.5       0.00       0.00       0.00    -714.98     105.31      -0.00    -830.43    -129.25     -12.14     -19.84
                          -60.87   -1679.46   -2385.78     104.90     714.97      -0.00     130.22    -829.71     -16.53     -34.45

   28   4.2  1.5  1.5       0.00       0.00       0.00       4.34     -17.58     830.43      -0.00     -27.35     713.77     -99.51
                          -63.89       1.43      -0.00      -5.11     -11.51    -130.22       0.00      -3.48     100.21     759.29

   29   5.2  1.5  1.5       0.00       0.00       0.00      33.37     -20.94     129.25      27.35      -0.00     113.12     669.88
                           96.12      -4.92       0.00      36.18       9.89     829.71       3.48      -0.00    -716.31     113.44

   30   6.2  1.5  1.5       0.00       0.00       0.00    -832.31     113.14      12.14    -713.77    -113.12      -0.00      26.44
                        -2500.75      89.84      -0.01    -117.61    -832.23      16.53    -100.21     716.31       0.00       2.20

   31   7.2  1.5  1.5   66540.30       0.00       0.00     118.83     849.03      19.84      99.51    -669.88     -26.44       0.00
                           -0.00      12.97      -0.00    -814.26     112.93      34.45    -759.29    -113.44      -2.20       0.00

   32   8.2  1.5  1.5       0.00   66540.37       0.00      62.15     450.52       8.96    -201.07    1260.69      51.75      20.02
                          -12.97      -0.00       0.00     509.08     -78.88     -13.34   -1211.44    -186.68      14.04      -2.83

   33   9.2  1.5  1.5       0.00       0.00   68410.14    -200.78   -1363.19     -29.25       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00   -1363.14     200.00      36.08       0.00       0.00       0.00      -0.00

   34   1.2  1.5  0.5     118.83      62.15    -200.78   65275.15       0.00       0.00       0.00       0.00       0.00       0.00
                          814.26    -509.08    1363.14       0.00     417.10      10.35      -4.38     484.84      18.94       7.12

   35   2.2  1.5  0.5     849.03     450.52   -1363.19       0.00   65275.14       0.00       0.00       0.00       0.00       0.00
                         -112.93      78.88    -200.00    -417.10       0.00       9.52     485.17       4.97      -8.48       0.25

   36   3.2  1.5  0.5      19.84       8.96     -29.25       0.00       0.00   65275.20       0.00       0.00       0.00       0.00
                          -34.45      13.34     -36.08     -10.35      -9.52      -0.00      11.62     -10.67       2.29     -20.29

   37   4.2  1.5  0.5      99.51    -201.07       0.00       0.00       0.00       0.00   66540.29       0.00       0.00       0.00
                          759.29    1211.44      -0.00       4.38    -485.17     -11.62       0.00    -416.91     -15.64     -21.30

   38   5.2  1.5  0.5    -669.88    1260.69      -0.00       0.00       0.00       0.00       0.00   66540.29       0.00       0.00
                          113.44     186.68      -0.00    -484.84      -4.97      10.67     416.91      -0.00     -20.41      32.04

   39   6.2  1.5  0.5     -26.44      51.75      -0.00       0.00       0.00       0.00       0.00       0.00   66540.29       0.00
                            2.20     -14.04      -0.00     -18.94       8.48      -2.29      15.64      20.41       0.00    -833.58

   40   7.2  1.5  0.5       0.00      20.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   66540.30
                           -0.00       2.83       0.00      -7.12      -0.25      20.29      21.30     -32.04     833.58      -0.00

   41   8.2  1.5  0.5     -20.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.83      -0.00       0.00      12.71     -13.41     559.82      -0.48       1.64     -29.95      -4.32

   42   9.2  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      18.15     -19.73     795.26       0.00      -0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      17.71    -825.59       5.01      38.53    -961.07     137.22
                           -0.00      -0.00      -0.00       0.00      21.85    -121.13       5.90     -41.77     135.80     940.22

   44   2.2  1.5 -0.5       0.00       0.00       0.00     -17.71      -0.00     121.60     -20.30     -24.18     130.64     980.37
                           -0.00      -0.00      -0.00     -21.85      -0.00    -825.58      13.29     -11.42     960.98    -130.40

   45   3.2  1.5 -0.5       0.00       0.00       0.00     825.59    -121.60      -0.00     958.90     149.25      14.02      22.90
                           -0.00      -0.00      -0.00     121.13     825.58       0.00     150.36    -958.07     -19.08     -39.78

   46   4.2  1.5 -0.5       0.00       0.00       0.00      -5.01      20.30    -958.90      -0.00      31.58    -824.19     114.90
                           -0.00      -0.00      -0.00      -5.90     -13.29    -150.36      -0.00      -4.02     115.71     876.75

   47   5.2  1.5 -0.5       0.00       0.00       0.00     -38.53      24.18    -149.25     -31.58      -0.00    -130.62    -773.52
                           -0.00      -0.00      -0.00      41.77      11.42     958.07       4.02       0.00    -827.12     130.99

   48   6.2  1.5 -0.5       0.00       0.00       0.00     961.07    -130.64     -14.02     824.19     130.62      -0.00     -30.53
                           -0.00      -0.00      -0.00    -135.80    -960.98      19.08    -115.71     827.12      -0.00       2.54

   49   7.2  1.5 -0.5       0.00       0.00       0.00    -137.22    -980.37     -22.90    -114.90     773.52      30.53       0.00
                           -0.00      -0.00      -0.00    -940.22     130.40      39.78    -876.75    -130.99      -2.54      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00     -71.77    -520.21     -10.34     232.18   -1455.72     -59.75     -23.12
                           -0.00      -0.00      -0.00     587.84     -91.08     -15.40   -1398.85    -215.56      16.21      -3.27

   51   9.2  1.5 -0.5       0.00       0.00       0.00     231.85    1574.08      33.77      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00   -1574.02     230.94      41.66       0.00       0.00       0.00      -0.00

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

    1   1.2  0.5  0.5       0.00       0.00      23.80      -6.58     143.34     -23.93       7.38    -143.71    -324.21    -171.91
                          -49.75     -72.23       3.96     -28.10     305.38       8.85     -30.91     313.15    -143.86      92.88

    2   2.2  0.5  0.5       0.00       0.00     -45.19      13.15    -302.47      44.51      -3.59     312.02    -151.13     -79.85
                           91.43     134.76       8.95      34.66     146.12      -3.50      28.61     148.98     309.33    -191.91

    3   3.2  0.5  0.5       0.00       0.00    -334.31      48.12      52.31     342.28      55.66     -48.46      -1.96      -1.74
                          802.05    1180.75      49.43     335.24       9.32     -53.66     343.42      16.64     -38.62      27.69

    4   4.2  0.5  0.5       0.00       0.00      15.53     -10.77     345.65      11.72     -11.18     304.79      28.02     -47.06
                           -1.16      -0.01       2.49       6.88      32.97       2.41      -9.70     -34.08     307.22     491.17

    5   5.2  0.5  0.5       0.00       0.00     -11.43       7.63     -32.12     -10.85      -0.18     -28.02     271.41    -511.99
                            0.84       0.01       5.90     -19.99     345.69     -15.92      20.21    -303.89     -31.05     -47.70

    6   6.2  0.5  0.5       0.00       0.00    -355.63      53.80      18.08    -290.99     -41.28      11.15      -8.59      15.78
                           41.71       0.34     -51.12    -355.99     -18.12     -49.95     288.96      21.19      12.28      12.38

    7   7.2  0.5  0.5       0.00       0.00      56.55     365.02       9.01     -33.84     230.61      10.63      -0.27       7.43
                            3.45       0.00     -65.66      12.50      -3.17    -596.33     -96.13      11.21       0.04       2.37

    8   8.2  0.5  0.5       0.00       0.00      21.40     158.02       3.81      85.91    -558.37     -22.84      -8.33      -1.00
                            4.92       0.01    -392.78      55.74      10.92      90.28      15.74      -1.50       0.51       0.44

    9   9.2  0.5  0.5       0.00       0.00      17.91     -16.87     663.66       5.31      -9.25     241.44       2.92       1.79
                            2.56       1.16      -0.34      -2.84       2.92      -0.17      -2.65      -2.22     241.18    -150.97

   10  10.2  0.5  0.5       0.00       0.00    -639.54      93.76      20.27    -237.70     -36.63       4.51     -50.12     -26.01
                         -562.93    -272.52      91.24     642.92    -116.74      38.05    -239.42      37.53      -2.17      -0.60

   11  11.2  0.5  0.5       0.00       0.00     128.33     -18.88      -1.02      47.43      11.25       2.93    -247.76    -130.93
                          112.42      54.66     -33.75    -112.15    -653.34      -3.27      38.44     238.35       3.36       0.64

   12  12.2  0.5  0.5       0.00       0.00     -78.17    -530.75     -11.39       1.28      -8.18      -0.34      -0.13      -0.00
                            0.08      -0.00    -530.97      77.90      14.05       8.15       1.27      -0.09       0.02      -0.01

   13   1.2  0.5 -0.5    -171.91     537.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -92.88     252.95     652.76     195.17     -10.06     670.32    -192.95     -19.11      -5.23     -49.75

   14   2.2  0.5 -0.5     -79.85     255.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          191.91    -533.54     201.72    -643.27     -20.57     200.73     660.61      21.58      13.48      91.43

   15   3.2  0.5 -0.5      -1.74       3.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -27.69      76.37      16.90      85.36       1.73      18.84     -87.60      -7.90      27.42     802.05

   16   4.2  0.5 -0.5     -47.06       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -491.17      -0.25    -168.12    -674.82     -13.82     149.15    -594.07     -28.74      16.05      -1.16

   17   5.2  0.5 -0.5    -511.99       0.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           47.70       0.02    -699.21     168.17      30.20     569.30     147.66       5.63     -35.42       0.84

   18   6.2  0.5 -0.5      15.78      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.38      -0.01      19.05     -20.38       6.08     -15.68       0.06       9.11   -1163.87      41.71

   19   7.2  0.5 -0.5       7.43      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.37       0.00      23.99     -19.34     619.69       5.59     -33.32     763.99      14.41       3.45

   20   8.2  0.5 -0.5      -1.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.44      -0.00     -12.96      12.14    -512.09      18.01     -37.59     956.23       1.00       4.92

   21   9.2  0.5 -0.5       1.79      -0.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          150.97    -141.80     199.35    1312.85      28.03     -76.85     476.39      19.81       7.59       2.56

   22  10.2  0.5 -0.5     -26.01      27.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.60      -0.71    -255.64      44.26       6.93      94.54      17.66       1.94     -19.90    -562.93

   23  11.2  0.5 -0.5    -130.93     137.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.64      -0.51   -1278.92     192.44      33.96     475.72      76.40      -6.07       4.90     112.42

   24  12.2  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00      24.47     -26.60    1072.09       0.29      -0.64      16.45       0.13       0.08

   25   1.2  1.5  1.5     -62.15     200.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -509.08    1363.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5    -450.52    1363.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           78.88    -200.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5      -8.96      29.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.34     -36.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5     201.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1211.44      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5   -1260.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          186.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5     -51.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -14.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5     -20.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00       0.00     -17.71     825.59      -5.01     -38.53     961.07    -137.22     -71.77
                          -12.71     -18.15      -0.00      21.85    -121.13       5.90     -41.77     135.80     940.22    -587.84

   35   2.2  1.5  0.5       0.00       0.00      17.71      -0.00    -121.60      20.30      24.18    -130.64    -980.37    -520.21
                           13.41      19.73     -21.85       0.00    -825.58      13.29     -11.42     960.98    -130.40      91.08

   36   3.2  1.5  0.5       0.00       0.00    -825.59     121.60      -0.00    -958.90    -149.25     -14.02     -22.90     -10.34
                         -559.82    -795.26     121.13     825.58      -0.00     150.36    -958.07     -19.08     -39.78      15.40

   37   4.2  1.5  0.5       0.00       0.00       5.01     -20.30     958.90      -0.00     -31.58     824.19    -114.90     232.18
                            0.48      -0.00      -5.90     -13.29    -150.36       0.00      -4.02     115.71     876.75    1398.85

   38   5.2  1.5  0.5       0.00       0.00      38.53     -24.18     149.25      31.58      -0.00     130.62     773.52   -1455.72
                           -1.64       0.00      41.77      11.42     958.07       4.02      -0.00    -827.12     130.99     215.56

   39   6.2  1.5  0.5       0.00       0.00    -961.07     130.64      14.02    -824.19    -130.62      -0.00      30.53     -59.75
                           29.95      -0.00    -135.80    -960.98      19.08    -115.71     827.12       0.00       2.54     -16.21

   40   7.2  1.5  0.5       0.00       0.00     137.22     980.37      22.90     114.90    -773.52     -30.53       0.00     -23.12
                            4.32      -0.00    -940.22     130.40      39.78    -876.75    -130.99      -2.54       0.00       3.27

   41   8.2  1.5  0.5   66540.37       0.00      71.77     520.21      10.34    -232.18    1455.72      59.75      23.12       0.00
                           -0.00       0.00     587.84     -91.08     -15.40   -1398.85    -215.56      16.21      -3.27       0.00

   42   9.2  1.5  0.5       0.00   68410.14    -231.85   -1574.08     -33.77       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00   -1574.02     230.94      41.66       0.00       0.00       0.00      -0.00      -0.00

   43   1.2  1.5 -0.5      71.77    -231.85   65275.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -587.84    1574.02      -0.00    -417.10     -10.35       4.38    -484.84     -18.94      -7.12      12.71

   44   2.2  1.5 -0.5     520.21   -1574.08       0.00   65275.14       0.00       0.00       0.00       0.00       0.00       0.00
                           91.08    -230.94     417.10      -0.00      -9.52    -485.17      -4.97       8.48      -0.25     -13.41

   45   3.2  1.5 -0.5      10.34     -33.77       0.00       0.00   65275.20       0.00       0.00       0.00       0.00       0.00
                           15.40     -41.66      10.35       9.52       0.00     -11.62      10.67      -2.29      20.29     559.82

   46   4.2  1.5 -0.5    -232.18       0.00       0.00       0.00       0.00   66540.29       0.00       0.00       0.00       0.00
                         1398.85      -0.00      -4.38     485.17      11.62      -0.00     416.91      15.64      21.30      -0.48

   47   5.2  1.5 -0.5    1455.72      -0.00       0.00       0.00       0.00       0.00   66540.29       0.00       0.00       0.00
                          215.56      -0.00     484.84       4.97     -10.67    -416.91       0.00      20.41     -32.04       1.64

   48   6.2  1.5 -0.5      59.75      -0.00       0.00       0.00       0.00       0.00       0.00   66540.29       0.00       0.00
                          -16.21      -0.00      18.94      -8.48       2.29     -15.64     -20.41      -0.00     833.58     -29.95

   49   7.2  1.5 -0.5      23.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   66540.30       0.00
                            3.27       0.00       7.12       0.25     -20.29     -21.30      32.04    -833.58       0.00      -4.32

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66540.37
                           -0.00       0.00     -12.71      13.41    -559.82       0.48      -1.64      29.95       4.32       0.00

   51   9.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -18.15      19.73    -795.26      -0.00       0.00      -0.00      -0.00       0.00

   52   1.2  1.5 -1.5       0.00       0.00       0.00      15.34    -714.98       4.34      33.37    -832.31     118.83      62.15
                           -0.00      -0.00       0.00      18.92    -104.90       5.11     -36.18     117.61     814.26    -509.08

   53   2.2  1.5 -1.5       0.00       0.00     -15.34      -0.00     105.31     -17.58     -20.94     113.14     849.03     450.52
                           -0.00      -0.00     -18.92      -0.00    -714.97      11.51      -9.89     832.23    -112.93      78.88

   54   3.2  1.5 -1.5       0.00       0.00     714.98    -105.31      -0.00     830.43     129.25      12.14      19.84       8.96
                           -0.00      -0.00     104.90     714.97       0.00     130.22    -829.71     -16.53     -34.45      13.34

   55   4.2  1.5 -1.5       0.00       0.00      -4.34      17.58    -830.43      -0.00      27.35    -713.77      99.51    -201.07
                           -0.00      -0.00      -5.11     -11.51    -130.22      -0.00      -3.48     100.21     759.29    1211.44

   56   5.2  1.5 -1.5       0.00       0.00     -33.37      20.94    -129.25     -27.35      -0.00    -113.12    -669.88    1260.69
                           -0.00      -0.00      36.18       9.89     829.71       3.48       0.00    -716.31     113.44     186.68

   57   6.2  1.5 -1.5       0.00       0.00     832.31    -113.14     -12.14     713.77     113.12      -0.00     -26.44      51.75
                           -0.00      -0.00    -117.61    -832.23      16.53    -100.21     716.31      -0.00       2.20     -14.04

   58   7.2  1.5 -1.5       0.00       0.00    -118.83    -849.03     -19.84     -99.51     669.88      26.44       0.00      20.02
                           -0.00      -0.00    -814.26     112.93      34.45    -759.29    -113.44      -2.20      -0.00       2.83

   59   8.2  1.5 -1.5       0.00       0.00     -62.15    -450.52      -8.96     201.07   -1260.69     -51.75     -20.02       0.00
                           -0.00      -0.00     509.08     -78.88     -13.34   -1211.44    -186.68      14.04      -2.83      -0.00

   60   9.2  1.5 -1.5       0.00       0.00     200.78    1363.19      29.25      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00   -1363.14     200.00      36.08       0.00       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5     537.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -252.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5     255.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          533.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       3.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -76.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5      -0.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          141.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5      27.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5     137.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00      41.22     -11.39     248.27     -41.44      12.78    -248.90    -561.54    -297.76     931.36
                          -72.23       6.86     -48.67     528.94      15.32     -53.54     542.40    -249.17     160.87    -438.13

   14   2.2  0.5 -0.5       0.00     -78.28      22.77    -523.89      77.10      -6.21     540.43    -261.77    -138.30     442.49
                          134.76      15.51      60.03     253.08      -6.06      49.56     258.04     535.77    -332.40     924.12

   15   3.2  0.5 -0.5       0.00    -579.04      83.34      90.61     592.84      96.40     -83.94      -3.40      -3.01       6.47
                         1180.75      85.62     580.65      16.14     -92.94     594.82      28.81     -66.89      47.96    -132.27

   16   4.2  0.5 -0.5       0.00      26.90     -18.66     598.69      20.29     -19.37     527.91      48.54     -81.51       0.03
                           -0.01       4.31      11.92      57.10       4.17     -16.80     -59.03     532.12     850.74       0.44

   17   5.2  0.5 -0.5       0.00     -19.80      13.22     -55.64     -18.79      -0.32     -48.53     470.10    -886.80       0.32
                            0.01      10.22     -34.62     598.76     -27.57      35.00    -526.35     -53.77     -82.63      -0.04

   18   6.2  0.5 -0.5       0.00    -615.97      93.18      31.32    -504.01     -71.50      19.31     -14.88      27.32      -0.01
                            0.34     -88.54    -616.60     -31.39     -86.51     500.49      36.71      21.28      21.44       0.02

   19   7.2  0.5 -0.5       0.00      97.95     632.23      15.61     -58.60     399.43      18.42      -0.47      12.87      -0.01
                            0.00    -113.73      21.65      -5.49   -1032.88    -166.50      19.42       0.07       4.10      -0.00

   20   8.2  0.5 -0.5       0.00      37.06     273.70       6.59     148.80    -967.12     -39.55     -14.43      -1.74      -0.00
                            0.01    -680.32      96.54      18.91     156.37      27.27      -2.59       0.89       0.76       0.00

   21   9.2  0.5 -0.5       0.00      31.02     -29.22    1149.50       9.20     -16.02     418.19       5.06       3.10      -1.09
                            1.16      -0.59      -4.93       5.06      -0.29      -4.59      -3.85     417.74    -261.49     245.61

   22  10.2  0.5 -0.5       0.00   -1107.72     162.40      35.11    -411.70     -63.44       7.81     -86.81     -45.05      47.79
                         -272.52     158.04    1113.56    -202.21      65.90    -414.69      65.00      -3.76      -1.03       1.23

   23  11.2  0.5 -0.5       0.00     222.28     -32.69      -1.77      82.15      19.49       5.08    -429.13    -226.78     238.33
                           54.66     -58.45    -194.24   -1131.62      -5.67      66.58     412.84       5.81       1.10       0.87

   24  12.2  0.5 -0.5       0.00    -135.40    -919.29     -19.72       2.22     -14.18      -0.59      -0.22      -0.00      -0.01
                           -0.00    -919.66     134.93      24.34      14.12       2.20      -0.16       0.03      -0.01      -0.00

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

   34   1.2  1.5  0.5     231.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1574.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.2  1.5  0.5    1574.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -230.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5      33.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -41.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00       0.00     -15.34     714.98      -4.34     -33.37     832.31    -118.83     -62.15     200.78
                           18.15      -0.00      18.92    -104.90       5.11     -36.18     117.61     814.26    -509.08    1363.14

   44   2.2  1.5 -0.5       0.00      15.34      -0.00    -105.31      17.58      20.94    -113.14    -849.03    -450.52    1363.19
                          -19.73     -18.92       0.00    -714.97      11.51      -9.89     832.23    -112.93      78.88    -200.00

   45   3.2  1.5 -0.5       0.00    -714.98     105.31      -0.00    -830.43    -129.25     -12.14     -19.84      -8.96      29.25
                          795.26     104.90     714.97      -0.00     130.22    -829.71     -16.53     -34.45      13.34     -36.08

   46   4.2  1.5 -0.5       0.00       4.34     -17.58     830.43      -0.00     -27.35     713.77     -99.51     201.07      -0.00
                            0.00      -5.11     -11.51    -130.22       0.00      -3.48     100.21     759.29    1211.44      -0.00

   47   5.2  1.5 -0.5       0.00      33.37     -20.94     129.25      27.35      -0.00     113.12     669.88   -1260.69       0.00
                           -0.00      36.18       9.89     829.71       3.48      -0.00    -716.31     113.44     186.68      -0.00

   48   6.2  1.5 -0.5       0.00    -832.31     113.14      12.14    -713.77    -113.12      -0.00      26.44     -51.75       0.00
                            0.00    -117.61    -832.23      16.53    -100.21     716.31       0.00       2.20     -14.04      -0.00

   49   7.2  1.5 -0.5       0.00     118.83     849.03      19.84      99.51    -669.88     -26.44       0.00     -20.02       0.00
                            0.00    -814.26     112.93      34.45    -759.29    -113.44      -2.20       0.00       2.83       0.00

   50   8.2  1.5 -0.5       0.00      62.15     450.52       8.96    -201.07    1260.69      51.75      20.02       0.00      -0.00
                           -0.00     509.08     -78.88     -13.34   -1211.44    -186.68      14.04      -2.83       0.00       0.00

   51   9.2  1.5 -0.5   68410.14    -200.78   -1363.19     -29.25       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00   -1363.14     200.00      36.08       0.00       0.00       0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5    -200.78   65275.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1363.14      -0.00   -1251.31     -31.05      13.13   -1454.52     -56.82     -21.36      38.12      54.46

   53   2.2  1.5 -1.5   -1363.19       0.00   65275.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -200.00    1251.31      -0.00     -28.56   -1455.50     -14.90      25.43      -0.75     -40.24     -59.20

   54   3.2  1.5 -1.5     -29.25       0.00       0.00   65275.20       0.00       0.00       0.00       0.00       0.00       0.00
                          -36.08      31.05      28.56       0.00     -34.87      32.00      -6.86      60.87    1679.46    2385.78

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00   66540.29       0.00       0.00       0.00       0.00       0.00
                           -0.00     -13.13    1455.50      34.87      -0.00    1250.74      46.92      63.89      -1.43       0.00

   56   5.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00   66540.29       0.00       0.00       0.00       0.00
                           -0.00    1454.52      14.90     -32.00   -1250.74       0.00      61.24     -96.12       4.92      -0.00

   57   6.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00   66540.29       0.00       0.00       0.00
                           -0.00      56.82     -25.43       6.86     -46.92     -61.24      -0.00    2500.75     -89.84       0.01

   58   7.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   66540.30       0.00       0.00
                            0.00      21.36       0.75     -60.87     -63.89      96.12   -2500.75       0.00     -12.97       0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   66540.37       0.00
                            0.00     -38.12      40.24   -1679.46       1.43      -4.92      89.84      12.97       0.00      -0.00

   60   9.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   68410.14
                            0.00     -54.46      59.20   -2385.78      -0.00       0.00      -0.01      -0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -295.70545695    -0.01169807    -2567.43      0.00000000        0.00      0.0000
     2  -295.70545695    -0.01169807    -2567.43      0.00000000        0.00      0.0000
     3  -295.70545563    -0.01169676    -2567.14      0.00000131        0.29      0.0000
     4  -295.70545563    -0.01169676    -2567.14      0.00000131        0.29      0.0000
     5  -295.67124638     0.02251249     4940.92      0.03421056     7508.35      0.9309
     6  -295.67124638     0.02251249     4940.92      0.03421056     7508.35      0.9309
     7  -295.40783396     0.28592492    62753.27      0.29762299    65320.70      8.0987
     8  -295.40783396     0.28592492    62753.27      0.29762299    65320.70      8.0987
     9  -295.40779275     0.28596613    62762.31      0.29766420    65329.74      8.0999
    10  -295.40779275     0.28596613    62762.31      0.29766420    65329.74      8.0999
    11  -295.40773518     0.28602369    62774.94      0.29772176    65342.37      8.1014
    12  -295.40773518     0.28602369    62774.94      0.29772176    65342.37      8.1014
    13  -295.40743850     0.28632038    62840.06      0.29801845    65407.49      8.1095
    14  -295.40743850     0.28632038    62840.06      0.29801845    65407.49      8.1095
    15  -295.40743025     0.28632862    62841.87      0.29802669    65409.30      8.1097
    16  -295.40743025     0.28632862    62841.87      0.29802669    65409.30      8.1097
    17  -295.40502669     0.28873219    63369.39      0.30043026    65936.82      8.1751
    18  -295.40502669     0.28873219    63369.39      0.30043026    65936.82      8.1751
    19  -295.40200803     0.29175085    64031.91      0.30344892    66599.34      8.2573
    20  -295.40200803     0.29175085    64031.91      0.30344892    66599.34      8.2573
    21  -295.40199801     0.29176086    64034.11      0.30345893    66601.54      8.2575
    22  -295.40199801     0.29176086    64034.11      0.30345893    66601.54      8.2575
    23  -295.40199401     0.29176487    64034.99      0.30346294    66602.42      8.2576
    24  -295.40199401     0.29176487    64034.99      0.30346294    66602.42      8.2576
    25  -295.40199378     0.29176509    64035.04      0.30346316    66602.47      8.2577
    26  -295.40199378     0.29176509    64035.04      0.30346316    66602.47      8.2577
    27  -295.40108564     0.29267324    64234.35      0.30437131    66801.78      8.2824
    28  -295.40108564     0.29267324    64234.35      0.30437131    66801.78      8.2824
    29  -295.40103971     0.29271916    64244.43      0.30441723    66811.86      8.2836
    30  -295.40103971     0.29271916    64244.43      0.30441723    66811.86      8.2836
    31  -295.40086584     0.29289304    64282.59      0.30459111    66850.02      8.2883
    32  -295.40086584     0.29289304    64282.59      0.30459111    66850.02      8.2883
    33  -295.38981186     0.30394701    66708.66      0.31564508    69276.09      8.5891
    34  -295.38981186     0.30394701    66708.66      0.31564508    69276.09      8.5891
    35  -295.38978375     0.30397512    66714.83      0.31567319    69282.26      8.5899
    36  -295.38978375     0.30397512    66714.83      0.31567319    69282.26      8.5899
    37  -295.38148865     0.31227023    68535.39      0.32396830    71102.82      8.8156
    38  -295.38148865     0.31227023    68535.39      0.32396830    71102.82      8.8156
    39  -295.37883278     0.31492609    69118.29      0.32662416    71685.72      8.8879
    40  -295.37883278     0.31492609    69118.29      0.32662416    71685.72      8.8879
    41  -295.37869904     0.31505984    69147.64      0.32675791    71715.07      8.8915
    42  -295.37869904     0.31505984    69147.64      0.32675791    71715.07      8.8915
    43  -295.37869040     0.31506848    69149.54      0.32676655    71716.97      8.8918
    44  -295.37869040     0.31506848    69149.54      0.32676655    71716.97      8.8918
    45  -295.37700486     0.31675402    69519.47      0.32845209    72086.90      8.9376
    46  -295.37700486     0.31675402    69519.47      0.32845209    72086.90      8.9376
    47  -295.37699682     0.31676205    69521.23      0.32846012    72088.66      8.9379
    48  -295.37699682     0.31676205    69521.23      0.32846012    72088.66      8.9379
    49  -295.37466598     0.31909290    70032.80      0.33079096    72600.23      9.0013
    50  -295.37466598     0.31909290    70032.80      0.33079096    72600.23      9.0013
    51  -295.37456019     0.31919868    70056.01      0.33089675    72623.44      9.0042
    52  -295.37456019     0.31919868    70056.01      0.33089675    72623.44      9.0042
    53  -295.37454375     0.31921513    70059.62      0.33091320    72627.05      9.0046
    54  -295.37454375     0.31921513    70059.62      0.33091320    72627.05      9.0046
    55  -295.36660379     0.32715508    71802.24      0.33885315    74369.67      9.2207
    56  -295.36660379     0.32715508    71802.24      0.33885315    74369.67      9.2207
    57  -295.36300555     0.33075332    72591.96      0.34245139    75159.39      9.3186
    58  -295.36300555     0.33075332    72591.96      0.34245139    75159.39      9.3186
    59  -295.36300250     0.33075638    72592.63      0.34245445    75160.06      9.3187
    60  -295.36300250     0.33075638    72592.63      0.34245445    75160.06      9.3187


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.034396528   0.503953570   0.000281850  -0.640959723   0.577122205   0.000026578   0.000034957  -0.000135933
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.080523204   0.207439210  -0.014820784   0.158760874  -0.000016582   0.068952325   0.000007138  -0.000055284
                         0.027718962   0.264134493  -0.006682200   0.721424863   0.572354217  -0.027138812  -0.000015943   0.000061416

    3    3.2  0.5  0.5   0.765464682  -0.010642267  -0.075409002  -0.049475403  -0.000012794   0.369392354  -0.000047833  -0.000013372
                         0.193918359  -0.011064020  -0.167375228  -0.077984766  -0.065303894  -0.438549915  -0.000008057  -0.000010215

    4    4.2  0.5  0.5  -0.000170011  -0.001328258  -0.000041567  -0.001034288  -0.000000121  -0.000000034   0.001749211  -0.020325645
                         0.000036990   0.004973055  -0.000097199  -0.001195203  -0.000000770  -0.000000037   0.015484029  -0.068312807

    5    5.2  0.5  0.5   0.000002871  -0.003786823  -0.000030539  -0.002970545  -0.000004221  -0.000000284   0.022204244  -0.073220648
                        -0.000062414  -0.001109630   0.000145765   0.002148640  -0.000001923   0.000000124  -0.004755353   0.020138638

    6    6.2  0.5  0.5   0.001184235   0.000060385   0.002649924  -0.000015077   0.000000173  -0.000000422   0.145087234   0.036084595
                         0.000232216   0.000136348   0.004530931  -0.000108497   0.000000043   0.000000460   0.029754708   0.005539334

    7    7.2  0.5  0.5  -0.001137723  -0.000041469  -0.001954321   0.000027489   0.000000061  -0.000000754   0.008053518   0.003257374
                         0.004746784  -0.000083969   0.001199185  -0.000047775   0.000000085  -0.000000662  -0.046786594  -0.011439555

    8    8.2  0.5  0.5   0.000660114   0.000075280  -0.004239966   0.000021918  -0.000000008   0.000001933   0.011336464   0.002825221
                        -0.002197396   0.000051459   0.002414922  -0.000099303  -0.000000158   0.000001649  -0.052312562  -0.012310193

    9    9.2  0.5  0.5   0.000010082   0.000036236   0.000004945  -0.000520531  -0.000879049   0.000056206  -0.000018301   0.000130391
                        -0.000000915  -0.000292938  -0.000018196  -0.000805651   0.001846025   0.000106974  -0.000162991   0.000686123

   10   10.2  0.5  0.5   0.000926354  -0.000152722  -0.000090228   0.000130247   0.000481594  -0.001280957   0.000659799  -0.000056331
                         0.000232342  -0.000006073  -0.000199517  -0.000073531   0.000180434   0.001516496   0.000119931   0.000079494

   11   11.2  0.5  0.5  -0.000196118  -0.000651972   0.000026356   0.000612008   0.001787267   0.000372783   0.000107016  -0.001019068
                        -0.000063052  -0.000142241   0.000044836  -0.000376265   0.000860326  -0.000355763  -0.000079899   0.000166413

   12   12.2  0.5  0.5   0.000000705   0.000000077  -0.000002227   0.000000025  -0.000000399   0.008588195  -0.000007654  -0.000011085
                        -0.000002623   0.000000061   0.000001226  -0.000000066  -0.000686783   0.007336144   0.000085480   0.000018973

   13    1.2  0.5 -0.5   0.208127988   0.014205436   0.298824573   0.000131403  -0.000010939   0.237526331  -0.000002991  -0.000000769
                        -0.458968345  -0.031326135  -0.567039012  -0.000249345  -0.000024223   0.525976503   0.000135900   0.000034949

   14    2.2  0.5 -0.5  -0.154886224  -0.008010671   0.564207668  -0.000998107  -0.003645009   0.521624239  -0.000062618  -0.000016096
                        -0.298007238   0.084782995   0.476789844   0.016226867  -0.074011163  -0.235579081   0.000053919   0.000006785

   15    3.2  0.5 -0.5   0.005681240  -0.139521258  -0.045924787   0.112915396   0.247653857  -0.059521800   0.000009918  -0.000007002
                         0.014261623   0.777222187  -0.080127107   0.144744941  -0.517150178   0.026865480   0.000013594  -0.000047998

   16    4.2  0.5 -0.5  -0.005077695   0.000103901  -0.000575162   0.000066610   0.000000048  -0.000000752   0.067849102   0.015441798
                        -0.000844133  -0.000139558  -0.001472226   0.000082089   0.000000016   0.000000207   0.021823628   0.002089441

   17    5.2  0.5 -0.5  -0.000553342  -0.000058029   0.003285752  -0.000143192   0.000000004  -0.000003489  -0.021744640  -0.005242702
                         0.003907060  -0.000023162  -0.001626231  -0.000040941   0.000000309  -0.000003055   0.072759870   0.022094251

   18    6.2  0.5 -0.5  -0.000099238  -0.000277591  -0.000088955  -0.002772955  -0.000000246   0.000000111  -0.004744121   0.026555544
                        -0.000111305   0.001174428  -0.000063922  -0.004456698   0.000000574   0.000000140  -0.036197728   0.145706730

   19    7.2  0.5 -0.5   0.000059347   0.004792933  -0.000055081  -0.001972018   0.000000913   0.000000103   0.011508450  -0.046952450
                         0.000072446   0.000924212   0.000002045   0.001169856   0.000000415   0.000000021  -0.003004912   0.007022250

   20    8.2  0.5 -0.5  -0.000015776  -0.002273867  -0.000098069  -0.004113146  -0.000002299  -0.000000147   0.012369369  -0.052549306
                        -0.000089813  -0.000306314  -0.000026906   0.002625107  -0.000001083   0.000000058  -0.002553710   0.010182828

   21    9.2  0.5 -0.5   0.000281754  -0.000004997  -0.000470058   0.000018403  -0.000120627   0.001320636  -0.000683088  -0.000162549
                         0.000087979   0.000008804  -0.000836105   0.000004108  -0.000007198  -0.001560915  -0.000145454  -0.000021883

   22   10.2  0.5 -0.5  -0.000057542  -0.000170973  -0.000125774   0.000134441  -0.000854897   0.000362653  -0.000080714   0.000105386
                         0.000141597   0.000939618   0.000080944   0.000172839   0.001791581   0.000364654   0.000054569   0.000662278

   23   11.2  0.5 -0.5  -0.000139714   0.000023571  -0.000618198  -0.000027377   0.000170808   0.001519668  -0.000188793  -0.000082234
                         0.000652518  -0.000204651   0.000366006  -0.000044220  -0.000486167   0.001274791   0.001015160   0.000105232

   24   12.2  0.5 -0.5  -0.000000024  -0.000002680  -0.000000070  -0.000002123  -0.010220646  -0.000626083  -0.000019212   0.000085628
                        -0.000000095  -0.000000441  -0.000000009   0.000001399  -0.004807754   0.000282296   0.000010665  -0.000005772

   25    1.2  1.5  1.5   0.007082791  -0.000114202  -0.000897043   0.000222658  -0.000303835   0.002685781   0.457135022   0.108133976
                         0.000725011   0.000128750  -0.001373518   0.000264766   0.000044958  -0.004277230   0.163926095   0.048928732

   26    2.2  1.5  1.5   0.000730069   0.000171567  -0.001376738  -0.000132791   0.000044693  -0.004275305  -0.165469095  -0.043038531
                        -0.007079341   0.000199180   0.000889822  -0.000331964   0.000303678  -0.002687816   0.467982505   0.100830130

   27    3.2  1.5  1.5  -0.000128467   0.000775018  -0.000081673   0.006482728   0.000006874  -0.000167315  -0.029825441   0.054241801
                        -0.000266197  -0.002717384   0.000249579   0.010367579   0.000008944   0.000031077  -0.067978192   0.324734713

   28    4.2  1.5  1.5  -0.006567545   0.000145549   0.000840893  -0.000090270   0.000403807  -0.002791279  -0.138018624  -0.032057196
                        -0.000615516  -0.000291001   0.001266943  -0.000043854  -0.000216976   0.004518022  -0.049666354  -0.012409351

   29    5.2  1.5  1.5   0.000600617   0.000032713  -0.001271089   0.000045366  -0.000271912  -0.004526514  -0.049339551  -0.012405735
                        -0.006567585   0.000352297   0.000845416  -0.000010367   0.000620362  -0.002755479   0.129758712   0.030154639

   30    6.2  1.5  1.5   0.000340989   0.001098480  -0.000065721  -0.000898167   0.004406256  -0.000394122   0.000569771  -0.000150116
                        -0.000313237  -0.006435099  -0.000062823  -0.001209603  -0.009557097  -0.000770137   0.005096919   0.004845178

   31    7.2  1.5  1.5   0.000085490   0.006564645   0.000049813   0.001003338   0.009679178   0.000520064  -0.001270628   0.002348512
                         0.000101424   0.001133892   0.000008891  -0.000815273   0.004471923  -0.000317254   0.002171054   0.000062150

   32    8.2  1.5  1.5   0.000044976   0.001237020  -0.000109511  -0.005649080  -0.000329115  -0.000020675  -0.038686313   0.165502875
                         0.000000109   0.000340695  -0.000038114   0.003529637  -0.000211976   0.000001971   0.007881575  -0.029534112

   33    9.2  1.5  1.5  -0.000124975  -0.004597480   0.000331384   0.017541251   0.000000013   0.000000006   0.000612186  -0.002613107
                        -0.000025576  -0.001298392   0.000114864  -0.010967342   0.000000042  -0.000000056  -0.000116597   0.000465887

   34    1.2  1.5  0.5  -0.000343789  -0.000929676   0.000079914  -0.001501929  -0.000859710   0.000180800  -0.004033528   0.012336923
                         0.000139792   0.009721233   0.000003241  -0.005203897   0.002790006   0.000049385  -0.070456358   0.299838686

   35    2.2  1.5  0.5   0.000178040   0.006694436   0.000186885   0.007791440   0.002750096   0.000053245   0.065411980  -0.279797019
                         0.000247587  -0.000413054   0.000018821  -0.004187331   0.000821413   0.000014726  -0.002851713   0.005624127

   36    3.2  1.5  0.5  -0.003941623   0.000277924   0.000397326   0.000187613  -0.000263536   0.003751207   0.018979899  -0.003174306
                        -0.001000330  -0.000329330   0.000859658  -0.000007277  -0.000043134  -0.004395476   0.005054953  -0.005831075

   37    4.2  1.5  0.5  -0.000042103  -0.000638973  -0.000001832  -0.002597951  -0.002594642   0.000313491  -0.001597269   0.001879040
                         0.000039032   0.001386151  -0.000201266  -0.006062990   0.008843310   0.000475783  -0.007390831   0.031185084

   38    5.2  1.5  0.5   0.000093444   0.001403136  -0.000057725  -0.006014738  -0.008792858  -0.000469417  -0.002421704   0.023105842
                         0.000043966   0.000638246   0.000218729   0.002546983  -0.002554856   0.000301795  -0.003873056   0.000093498

   39    6.2  1.5  0.5  -0.001484233   0.000106021  -0.003344914  -0.000077022  -0.000294599  -0.000068863  -0.051695269  -0.011218573
                        -0.000248083   0.000009603  -0.005621961   0.000221840  -0.000252465  -0.000029029  -0.012422069  -0.003796792

   40    7.2  1.5  0.5   0.000159728   0.000007910   0.005734783  -0.000109562  -0.000135660   0.000281258  -0.055397892  -0.014140498
                        -0.001278978   0.000043563  -0.003388502   0.000157157  -0.000069017   0.000251153   0.272717880   0.063917874

   41    8.2  1.5  0.5  -0.001637628  -0.000155690   0.001159561  -0.000032920   0.000000987   0.008095689   0.002333721   0.000618429
                         0.006446429  -0.000149131  -0.000541427   0.000066998  -0.000656496   0.006915358  -0.012864821  -0.003048916

   42    9.2  1.5  0.5  -0.005086339  -0.000492442   0.004338453  -0.000112282   0.000000048   0.000000273  -0.000268549  -0.000086428
                         0.020046866  -0.000459219  -0.001989776   0.000202633  -0.000000057   0.000000232   0.001322450   0.000306437

   43    1.2  1.5 -0.5   0.009237418  -0.000269295   0.003903521  -0.000034390   0.000119421  -0.002188919   0.299494698   0.070350567
                         0.003168088   0.000255368   0.003754845   0.000072209   0.000144452   0.001931804   0.018930479   0.005582613

   44    2.2  1.5 -0.5  -0.003140921  -0.000151957   0.007336895  -0.000070478   0.000035335  -0.001880475   0.011778385   0.004290106
                         0.005926273  -0.000264399  -0.004940674   0.000174106   0.000042466  -0.002168308  -0.279605566  -0.065333410

   45    3.2  1.5 -0.5  -0.000414713  -0.000716817   0.000093906   0.000575277  -0.002462055   0.000147775  -0.005759828  -0.004636166
                         0.000117105   0.004002903  -0.000162584   0.000752288   0.005227815   0.000222428  -0.003301823  -0.019086516

   46    4.2  1.5 -0.5   0.001526307  -0.000052935   0.004152555  -0.000177200   0.000562642  -0.006991721   0.031136196   0.007353902
                        -0.000009468   0.000022225   0.005124987  -0.000095454   0.000089891   0.006004343   0.002564666   0.001759483

   47    5.2  1.5 -0.5   0.000001792  -0.000001450  -0.005057401   0.000220415   0.000081852   0.005947318  -0.000414860   0.003818841
                         0.001541475  -0.000103260   0.004133629   0.000050906  -0.000552026   0.006962116   0.023102306   0.002506326

   48    6.2  1.5 -0.5  -0.000035040  -0.000387036  -0.000232164  -0.003414143  -0.000054798   0.000351339  -0.003549061   0.011281751
                         0.000100522   0.001454200  -0.000035285  -0.005580189  -0.000050813   0.000164584  -0.011299388   0.051956046

   49    7.2  1.5 -0.5   0.000036407   0.001230776  -0.000190112  -0.005671350   0.000344653   0.000118734   0.064213499  -0.273870643
                         0.000025195   0.000382736   0.000023658   0.003493633   0.000152965   0.000095233  -0.012730863   0.049384607

   50    8.2  1.5 -0.5  -0.000071521  -0.006547315  -0.000074619  -0.001019589   0.009634450   0.000597910  -0.003061784   0.012913050
                        -0.000203382  -0.001170867  -0.000002112   0.000773410   0.004532077  -0.000271094   0.000551202  -0.002050126

   51    9.2  1.5 -0.5  -0.000214853  -0.020357999  -0.000231611  -0.003782948   0.000000324   0.000000032   0.000308265  -0.001328038
                        -0.000638138  -0.003646854   0.000004863   0.002910445   0.000000154  -0.000000067  -0.000079665   0.000239390

   52    1.2  1.5 -1.5  -0.000164422  -0.002264832   0.000130425   0.000796898   0.002792786  -0.000084076  -0.046537909   0.153829310
                         0.000050836   0.006749971   0.000320417   0.001433943  -0.004208143  -0.000295412  -0.109184251   0.460630802

   53    2.2  1.5 -1.5  -0.000110545  -0.006748917  -0.000231770  -0.001429055   0.004209205   0.000295160  -0.101752586   0.471509607
                        -0.000238511  -0.002258800  -0.000272243   0.000803114   0.002790194  -0.000084253   0.040809821  -0.155133288

   54    3.2  1.5 -1.5   0.002794892  -0.000189379   0.006149564  -0.000258873   0.000040539   0.000010980  -0.323462779  -0.067305570
                         0.000416418  -0.000226936   0.010568600  -0.000044103   0.000165278   0.000002583  -0.061372935  -0.031313763

   55    4.2  1.5 -1.5   0.000325135   0.002151761   0.000003288  -0.000728793  -0.002968819  -0.000031552   0.011701080  -0.046617881
                        -0.000012376  -0.006235498  -0.000100305  -0.001334581   0.004403394   0.000457322   0.032322446  -0.139077893

   56    5.2  1.5 -1.5  -0.000307339  -0.006229381  -0.000030322  -0.001340515   0.004374262   0.000453473  -0.030420270   0.130812791
                        -0.000175288  -0.002165346   0.000035301   0.000730352   0.002991292  -0.000503137   0.011739322  -0.046472878

   57    6.2  1.5 -1.5   0.006314334  -0.000426101  -0.000651364   0.000024938   0.000864095  -0.006896645  -0.004847308   0.005083151
                         0.001657209   0.000181187  -0.001358517   0.000087431   0.000042228   0.007949182   0.000043484   0.000681766

   58    7.2  1.5 -1.5   0.001678460   0.000057064  -0.001189020   0.000015358   0.000075096   0.008059274  -0.000010467   0.002198483
                        -0.006446941   0.000119746   0.000507533  -0.000048213  -0.000604547   0.006980879  -0.002349311  -0.001222556

   59    8.2  1.5 -1.5   0.000200595  -0.000018476   0.005756252  -0.000017337   0.000006712  -0.000328644   0.033168077   0.008730778
                        -0.001267302   0.000041006  -0.003352015   0.000114650   0.000019654  -0.000212705  -0.164813058  -0.038503552

   60    9.2  1.5 -1.5  -0.000716224   0.000028321  -0.017880480   0.000052879   0.000000049   0.000000044  -0.000523263  -0.000130037
                         0.004723312  -0.000124382   0.010405119  -0.000346718  -0.000000029  -0.000000005   0.002602225   0.000609473


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000016389   0.000106393   0.000002290  -0.000074274  -0.000916956   0.010042815  -0.000105379  -0.008438152
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000013909  -0.000106309  -0.000002388   0.000149952   0.000509277  -0.002537480   0.000014097  -0.003131185
                        -0.000029149  -0.000135148   0.000002330  -0.000035776   0.000832852  -0.011707910  -0.001796950  -0.003826326

    3    3.2  0.5  0.5   0.000094528  -0.000000559  -0.000034636  -0.000019292   0.003102382   0.001147055  -0.002406998   0.001075142
                        -0.000025179   0.000019593  -0.000052875   0.000002474  -0.000568293   0.001257237  -0.012418378   0.000551753

    4    4.2  0.5  0.5  -0.010044156  -0.048596556  -0.000333058  -0.104288291   0.000214693   0.012872083   0.005400206   0.013707164
                        -0.005190088  -0.027879655  -0.005759672   0.016290074  -0.000900782   0.012266915   0.000045255  -0.055753808

    5    5.2  0.5  0.5  -0.014083950  -0.072652165   0.003855143   0.002390813  -0.004717999   0.037376799   0.000646329   0.035098039
                         0.020915310   0.090529234  -0.000350470  -0.040237106   0.001637403  -0.025448056   0.003059967   0.011992437

    6    6.2  0.5  0.5  -0.030703685   0.007877978   0.005403583  -0.002655804  -0.054269188  -0.004901710  -0.001714565   0.000277095
                         0.008516802  -0.004831449   0.006182662   0.001996162   0.008007492   0.001867090  -0.012907560  -0.001343130

    7    7.2  0.5  0.5   0.010750946  -0.000552131   0.099933263   0.004100949  -0.003396189  -0.000711524   0.060024266  -0.001097064
                         0.032616428  -0.008434273  -0.066286986   0.005465848  -0.026291801  -0.001485568  -0.011352442   0.005479073

    8    8.2  0.5  0.5   0.037163861  -0.005388278  -0.037603563  -0.001769195  -0.008328151  -0.000822003  -0.028468639   0.000274409
                         0.119184459  -0.025364725   0.024949219  -0.001873013  -0.054662501  -0.004049857   0.005361282  -0.002931655

    9    9.2  0.5  0.5   0.000052642   0.000268279   0.000021150   0.000447065   0.010493271  -0.152078069   0.008158942   0.015699310
                         0.000052973   0.000289876  -0.000002748  -0.000107245   0.018456546  -0.240517505  -0.001501309  -0.079929048

   10   10.2  0.5  0.5   0.001712191   0.000850964   0.001870769   0.000044641  -0.071111102   0.029027342   0.051482703  -0.066415374
                        -0.000780838  -0.001272059   0.002902137   0.001041164   0.011731830  -0.021479988   0.269331594  -0.010171389

   11   11.2  0.5  0.5   0.000782259   0.005933926  -0.000645460   0.000920633   0.000910616   0.174919956  -0.012685642  -0.193057337
                        -0.001395327  -0.006690733  -0.000556820   0.004592873   0.005772581  -0.110716129  -0.073593427  -0.036082977

   12   12.2  0.5  0.5  -0.001948983   0.000276544   0.004009008   0.000180636  -0.000348639  -0.000038967  -0.002269651   0.000019902
                        -0.006200354   0.001322546  -0.002654598   0.000194314  -0.002367175  -0.000175260   0.000428307  -0.000227077

   13    1.2  0.5 -0.5  -0.000097252   0.000014981  -0.000051981  -0.000001603   0.006519390   0.000595251  -0.008437956   0.000105377
                        -0.000043147   0.000006646  -0.000053053  -0.000001636   0.007639090   0.000697485   0.000057547  -0.000000719

   14    2.2  0.5 -0.5   0.000151983  -0.000024535   0.000079390   0.000000007  -0.010552877  -0.000964113  -0.003105017  -0.000026352
                        -0.000080423   0.000021003   0.000132146   0.000003336   0.005670162   0.000153271   0.003847591  -0.001796812

   15    3.2  0.5 -0.5  -0.000007434   0.000076195  -0.000011734   0.000062008   0.001700942  -0.001581668   0.001071354   0.002322251
                         0.000018136   0.000061350  -0.000015511  -0.000012265   0.000056363  -0.002728747  -0.000559073  -0.012434504

   16    4.2  0.5 -0.5   0.055727311  -0.011285921  -0.061350423   0.004347161   0.017686892   0.000545812   0.014087078  -0.005399772
                        -0.005776434   0.000670859  -0.085892606  -0.003793011   0.001827994  -0.000748057   0.055659030   0.000082083

   17    5.2  0.5 -0.5   0.029696714  -0.004391879  -0.027067712  -0.002447688   0.004906386   0.001817240   0.035015436  -0.000625445
                         0.112214011  -0.024829806   0.029867702  -0.002998963   0.044950596   0.004651693  -0.012231522   0.003064303

   18    6.2  0.5 -0.5  -0.005241751  -0.024611682  -0.000432830  -0.008197910  -0.001761786   0.029138446   0.000286249   0.001626497
                        -0.007611142  -0.020236534  -0.003294028   0.000467221  -0.004940536   0.046478120   0.001341209  -0.012918953

   19    7.2  0.5 -0.5   0.003925109   0.023054406   0.006774248  -0.022590307  -0.001591894   0.022203586  -0.001134405  -0.060100292
                        -0.007485674  -0.025454048  -0.000896016  -0.117772237   0.000423148  -0.014484255  -0.005471463  -0.010942821

   20    8.2  0.5 -0.5   0.015211668   0.082304502  -0.002576045   0.008495930  -0.003614145   0.046985454   0.000294396   0.028504541
                        -0.021000190  -0.093872556   0.000047113   0.044320544   0.002003745  -0.029149859   0.002929715   0.005167005

   21    9.2  0.5 -0.5  -0.000362783   0.000069602   0.000236275  -0.000012839  -0.281673117  -0.020850821   0.016244050  -0.008168991
                         0.000156172  -0.000027073   0.000394389  -0.000017031   0.040455714   0.003999513   0.079820122  -0.001445631

   22   10.2  0.5 -0.5  -0.000261980   0.001248417   0.000774935  -0.003382224   0.002504575   0.037238609  -0.066344462  -0.049644701
                        -0.001507859   0.001408106  -0.000696773   0.000694793   0.036023653   0.061706650   0.010624096   0.269676436

   23   11.2  0.5 -0.5  -0.002710726   0.000149187   0.003924944   0.000849456   0.029334491  -0.004982062  -0.192806767   0.012183450
                        -0.008522285   0.001592673  -0.002556728   0.000071354   0.204925694   0.003054664   0.037398762  -0.073678230

   24   12.2  0.5 -0.5  -0.000789126  -0.004296002   0.000265214  -0.000909557  -0.000158608   0.002026919   0.000021450   0.002272519
                         0.001096761   0.004877222  -0.000006965  -0.004721413   0.000084131  -0.001271481   0.000226936   0.000412819

   25    1.2  1.5  1.5  -0.410745818   0.094360911  -0.066812121   0.004326879  -0.089619071   0.000470188   0.109412742  -0.031029574
                         0.087508330  -0.003053772  -0.018869737  -0.004520923   0.024048065   0.014189018   0.309334414  -0.001331442

   26    2.2  1.5  1.5  -0.026347879  -0.008539189  -0.251452387  -0.015617273   0.025381668  -0.004673134   0.320758578   0.000905972
                        -0.285186161   0.052548939   0.175542760  -0.011302010   0.077284455  -0.006546875  -0.109410937   0.036140306

   27    3.2  1.5  1.5   0.079355406   0.310369718  -0.004381705   0.166643991  -0.018400023   0.307748252   0.017930223   0.026519934
                         0.041347535   0.276455423   0.014012730  -0.032361117  -0.035705999   0.489894153  -0.012031683  -0.140261236

   28    4.2  1.5  1.5   0.045233864  -0.008423625  -0.128556370   0.005559095  -0.031512913  -0.001906287   0.045448044  -0.013773662
                         0.013254630  -0.003313483  -0.158698820  -0.007964027   0.010814154   0.001689193   0.130022636   0.003059007

   29    5.2  1.5  1.5  -0.044195297   0.004933388   0.086811894   0.010394822  -0.010795410  -0.001584472  -0.124698261   0.002058298
                        -0.161087599   0.032777843  -0.095591118   0.004848819  -0.037995782  -0.004089974   0.045721691  -0.017544466

   30    6.2  1.5  1.5   0.004301486   0.030455847   0.005318954  -0.107397632  -0.000809017   0.016956853  -0.018399722  -0.022522837
                        -0.001403865   0.028883000  -0.006861020   0.022385224  -0.004076058   0.027748293   0.000860949   0.130395077

   31    7.2  1.5  1.5  -0.004825824  -0.022364320   0.007746499  -0.022662047   0.001887402  -0.022928377  -0.003388964  -0.132517626
                         0.003330879   0.026522373  -0.001703015  -0.113754838  -0.001396684   0.014614627  -0.012264192  -0.023454498

   32    8.2  1.5  1.5   0.025757142   0.140788011   0.004866762  -0.017047131  -0.008621181   0.114317321  -0.000598666  -0.027865628
                        -0.036123792  -0.159732498  -0.000069144  -0.085619814   0.004870208  -0.071582430  -0.002521571  -0.004427328

   33    9.2  1.5  1.5   0.000729672   0.003939360  -0.000177298   0.000643442  -0.024918068   0.329578584  -0.001531476  -0.096296554
                        -0.001002142  -0.004485231   0.000036903   0.003335937   0.014176795  -0.206916476  -0.008517325  -0.017592730

   34    1.2  1.5  0.5   0.080306086   0.325741338   0.003966168  -0.150729406   0.006636648  -0.075276767  -0.044665556  -0.040790242
                         0.060033941   0.331563022   0.003356366   0.100328667   0.016607388  -0.237983895   0.004999385   0.468626097

   35    2.2  1.5  0.5  -0.044547372  -0.197097494  -0.034400163   0.113963374  -0.030967394   0.379293998   0.009751423   0.304341230
                         0.031497186   0.122129360  -0.010891492   0.458729175   0.012978294  -0.196281981   0.033256485  -0.014097701

   36    3.2  1.5  0.5   0.240135224  -0.064245008   0.355074573  -0.019811796   0.058004200   0.015522937  -0.034907646   0.027104447
                        -0.076804593   0.006172923   0.537315695   0.032590690  -0.008729706  -0.000738194  -0.189705382  -0.009353068

   37    4.2  1.5  0.5   0.021294508   0.074963711  -0.002743579  -0.138057383  -0.000950908   0.051251374   0.003423267   0.011277171
                         0.009719945   0.061435597  -0.009497392   0.053869310  -0.009331052   0.120916587   0.000521348  -0.034070873

   38    5.2  1.5  0.5  -0.010111322  -0.003912150   0.011256433  -0.055071960  -0.014918861   0.124250886   0.000110742  -0.030477541
                         0.009039616   0.029556433   0.001982290  -0.163717001   0.002358055  -0.054304635  -0.004342197  -0.011213278

   39    6.2  1.5  0.5   0.242380214  -0.053477889  -0.058597966   0.004555446   0.135467307   0.013856710   0.006326105  -0.004585284
                        -0.075975313   0.010739276  -0.087682512  -0.011163730  -0.020847430  -0.006233184   0.035924014  -0.000425188

   40    7.2  1.5  0.5   0.006450159  -0.001134569   0.017824358   0.000050989   0.020125478   0.003833014  -0.025945349  -0.000079481
                         0.014469892  -0.002716034  -0.012668944  -0.001746723   0.131048085   0.008654838   0.005146212  -0.002409583

   41    8.2  1.5  0.5  -0.011824471   0.001492064   0.093974279   0.004261545   0.004585076   0.000746363   0.131711133  -0.001245876
                        -0.041841200   0.008857060  -0.062843923   0.004475159   0.026510417   0.001897075  -0.024850961   0.012888080

   42    9.2  1.5  0.5  -0.000510462   0.000076900  -0.001988200  -0.000068298  -0.014257355  -0.002383899  -0.381795487   0.003479704
                        -0.001664479   0.000343912   0.001322332  -0.000090657  -0.096907954  -0.007326969   0.072556719  -0.037317197

   43    1.2  1.5 -0.5   0.432214456  -0.097752086   0.033824429   0.005173142   0.229889620   0.016940691   0.043985259  -0.044698613
                        -0.170974034   0.022308546   0.177879463   0.000484035  -0.097230080  -0.005732664   0.468337015  -0.004694656

   44    2.2  1.5 -0.5  -0.130634423   0.027946475  -0.407422586  -0.031854655  -0.096919997  -0.010230811  -0.304430297   0.009524391
                        -0.191566307   0.046856543   0.239639194  -0.016949240  -0.415929161  -0.031980402  -0.012021808  -0.033322215

   45    3.2  1.5 -0.5  -0.056221605  -0.188355189  -0.009413871   0.632297944  -0.009515354   0.031013711  -0.027167603  -0.033613069
                        -0.031696327  -0.167589362   0.036959970  -0.122414943  -0.012286763   0.049787998  -0.009168002   0.189939036

   46    4.2  1.5 -0.5   0.093437162  -0.023406652   0.058141313  -0.008703979  -0.125245795  -0.007714977  -0.011509268   0.003419632
                        -0.025756306   0.000249057   0.136313357   0.004687049   0.039509686   0.005334031  -0.033993172  -0.000544682

   47    5.2  1.5 -0.5   0.008410246   0.005576631   0.155483417   0.009293752  -0.039351708  -0.007891061   0.030400359   0.000140353
                        -0.028603416   0.012363441  -0.075240177   0.006653040  -0.129764090  -0.012878819  -0.011420870   0.004341341

   48    6.2  1.5 -0.5  -0.044527787  -0.190743590   0.004785998  -0.103640492  -0.004253931   0.072082254   0.004582278   0.006080961
                        -0.031503854  -0.167741764  -0.011066850   0.019508792  -0.014586469   0.116576821  -0.000456449  -0.035966322

   49    7.2  1.5 -0.5  -0.002138540  -0.011764040   0.001211981   0.003425104  -0.009071560   0.112746668   0.000063046  -0.025979842
                         0.002022557   0.010610828  -0.001258867   0.021598114   0.002702780  -0.069762628  -0.002410069  -0.004969149

   50    8.2  1.5 -0.5   0.004955738   0.027776687  -0.006179003   0.020879249  -0.001927524   0.023141654   0.001333742   0.131877550
                        -0.007490956  -0.033450856   0.000087969   0.111106169   0.000663782  -0.013721843   0.012879283   0.023952131

   51    9.2  1.5 -0.5   0.000209762   0.001141612   0.000112554  -0.000446917   0.007120807  -0.082968552  -0.003734121  -0.382281435
                        -0.000283177  -0.001314452  -0.000014662  -0.002345585  -0.002943053   0.052063836  -0.037292598  -0.069951239

   52    1.2  1.5 -1.5  -0.085014830  -0.339965839  -0.000201076   0.060236964   0.011098136   0.039884863  -0.031019772  -0.107300579
                        -0.041058322  -0.246562494   0.006254614   0.034517166  -0.008853287   0.083779980   0.001543029   0.310073400

   53    2.2  1.5 -1.5  -0.013505106  -0.139737847  -0.019002663   0.050590885  -0.008013505  -0.075263348   0.000659479  -0.321497286
                         0.051496805   0.249997383  -0.003245526   0.302463429   0.000695337   0.030863321  -0.036145644  -0.107220863

   54    3.2  1.5 -1.5  -0.395815369   0.089305042   0.093510740  -0.006942600   0.572416815   0.039104399   0.027475880  -0.018011861
                         0.126835156  -0.005613247   0.141679932   0.012936625  -0.083930075  -0.009182872   0.140077112  -0.011909122

   55    4.2  1.5 -1.5   0.009043595   0.046722545  -0.001798080   0.203327109   0.000047404   0.012231099  -0.013794204  -0.044560251
                         0.000387318   0.006228283   0.009544431  -0.019239089  -0.002546578   0.030990480  -0.002965001   0.130329561

   56    5.2  1.5 -1.5  -0.017802163  -0.105725100   0.010738282   0.007524314  -0.004139623   0.035909521   0.002177901   0.125007176
                         0.027960835   0.129323788   0.004031457  -0.128908306   0.001449814  -0.016453773   0.017530020   0.044870203

   57    6.2  1.5 -1.5  -0.039552180   0.003362574  -0.059172799   0.001178277   0.032114505   0.003625644  -0.023411590   0.018405166
                         0.014050317   0.003027658  -0.092379270  -0.008600961  -0.005114801  -0.002030632  -0.130238442   0.000735445

   58    7.2  1.5 -1.5   0.009686907  -0.003060382  -0.097113887  -0.004204948  -0.003767526  -0.000162834  -0.132354588   0.003305245
                         0.033313104  -0.005001738   0.063424163  -0.006725096  -0.026927747  -0.002342327   0.024357705  -0.012287020

   59    8.2  1.5 -1.5  -0.063913652   0.008894471  -0.073087744  -0.003356618   0.019760846   0.001891988  -0.027834787   0.000581455
                        -0.203102881   0.043465470   0.047744517  -0.003524665   0.133424148   0.009719263   0.004617264  -0.002525596

   60    9.2  1.5 -1.5  -0.001781952   0.000260571   0.002833136   0.000097723   0.056557607   0.005392191  -0.096174335   0.001473354
                        -0.005697413   0.001211946  -0.001875055   0.000152469   0.385016504   0.028156986   0.018249050  -0.008527571


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.004412168  -0.000027917  -0.000006616   0.000021907  -0.000024963   0.000000497   0.000033577   0.000001448
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000047304   0.000154973  -0.000009784   0.000007240  -0.000011266   0.000000881  -0.000056479  -0.000003551
                         0.004419987   0.000505526   0.000001276   0.000001951   0.000005819   0.000000393   0.000032165   0.000001043

    3    3.2  0.5  0.5   0.000034033   0.003042469  -0.000046550  -0.000021738  -0.000000072   0.000003880   0.000007993  -0.000008949
                        -0.000484698   0.003054831   0.000013308   0.000003994  -0.000000523   0.000004124  -0.000004510   0.000019835

    4    4.2  0.5  0.5   0.000133999   0.000056400  -0.002117828  -0.001660761   0.004233899  -0.000095444   0.000392279  -0.000008672
                        -0.000944148  -0.000021005  -0.033018885   0.072126564   0.001970555  -0.000124186  -0.000207260   0.000065755

    5    5.2  0.5  0.5  -0.002751142  -0.000052478  -0.004958292   0.010490126   0.042202370  -0.001147461  -0.000143467   0.000052815
                        -0.001217719  -0.000180656   0.002516343  -0.006805154  -0.004124842  -0.000437580  -0.000226257  -0.000088742

    6    6.2  0.5  0.5   0.000123521  -0.000448125  -0.003403133  -0.002015772  -0.001259274   0.000402659   0.000061971   0.001150020
                         0.000019960  -0.000453567  -0.000298782   0.001876145   0.000172330   0.000030931   0.000107993  -0.002422043

    7    7.2  0.5  0.5   0.000041811   0.000402914  -0.016915804  -0.005445790  -0.000468925   0.006910419  -0.000014518   0.000411572
                         0.000050882  -0.000383166  -0.059986495  -0.027922749  -0.000194071  -0.006537316   0.000010943   0.000221898

    8    8.2  0.5  0.5  -0.000001595  -0.000433120   0.000391711   0.000131513  -0.000457317  -0.026059843   0.000055090  -0.001157102
                        -0.000035097   0.000430610   0.001407602   0.000770829   0.000995768   0.024681678  -0.000025575  -0.000555434

    9    9.2  0.5  0.5   0.152097577   0.017752805   0.000049039   0.000079696  -0.000291981  -0.000033061   0.000594662   0.000024098
                        -0.314653687  -0.005771197   0.000816273  -0.001779193  -0.003302559   0.000094093  -0.000264478   0.000012776

   10   10.2  0.5  0.5  -0.080596694   0.241470157  -0.002122097  -0.001444838  -0.000540933   0.001945328  -0.000032049   0.000098419
                        -0.029756191   0.242598481   0.000646653   0.000181165   0.000083476   0.002040274  -0.000073557  -0.000203972

   11   11.2  0.5  0.5  -0.306086978  -0.053253500   0.001301056  -0.001610459  -0.003096145  -0.000290562  -0.000179817  -0.000013310
                        -0.149704413  -0.067906933  -0.000172812  -0.000115759   0.000264979  -0.000385805  -0.000407207   0.000023415

   12   12.2  0.5  0.5   0.002592972   0.408622329   0.000696980   0.000217877   0.000078648   0.003789344  -0.000006553   0.000194181
                         0.031681264  -0.401971213   0.002450380   0.001154225  -0.000145945  -0.003587324   0.000010403   0.000091744

   13    1.2  0.5 -0.5  -0.000026396  -0.004171740  -0.000005195  -0.000001569   0.000000328   0.000016471   0.000000034  -0.000000794
                         0.000009090   0.001436597  -0.000021282  -0.000006428  -0.000000374  -0.000018758  -0.000001448   0.000033568

   14    2.2  0.5 -0.5  -0.000018070   0.001483869  -0.000003613  -0.000001081   0.000000286   0.000011806  -0.000001126   0.000033492
                        -0.000528438   0.004163731  -0.000006571  -0.000009807  -0.000000921  -0.000004626   0.000003525  -0.000055702

   15    3.2  0.5 -0.5   0.001882029  -0.000189996   0.000001276   0.000001889  -0.000000538  -0.000000345  -0.000020041  -0.000004697
                        -0.003878992  -0.000447205   0.000022065  -0.000048378  -0.000005637  -0.000000399   0.000008477   0.000007884

   16    4.2  0.5 -0.5   0.000060166  -0.000434111  -0.069674911  -0.032579122   0.000030341  -0.001312901  -0.000065942  -0.000216481
                         0.000001497  -0.000849070   0.018719140   0.005773456   0.000153659   0.004481660   0.000007114   0.000387267

   17    5.2  0.5 -0.5   0.000009203   0.002204739   0.004123131   0.001268628  -0.000428313  -0.030945546   0.000089966  -0.000222800
                         0.000187898  -0.002047132  -0.011804773  -0.005413615   0.001150952   0.028990128  -0.000050701  -0.000148779

   18    6.2  0.5 -0.5  -0.000276025  -0.000110292  -0.001344551  -0.001097355   0.000242441   0.000960389   0.002448568   0.000106496
                         0.000574760   0.000059091   0.002403214  -0.003235181  -0.000322976  -0.000832539  -0.001092406   0.000064508

   19    7.2  0.5 -0.5   0.000505717  -0.000022966   0.028417649  -0.062286876   0.009471929   0.000163578  -0.000212101   0.000011283
                         0.000231098   0.000061723  -0.001331826  -0.002206609  -0.000879176  -0.000480413  -0.000416706  -0.000014255

   20    8.2  0.5 -0.5  -0.000549724  -0.000009920  -0.000780028   0.001460342  -0.035741212   0.001049989   0.000527908  -0.000026871
                        -0.000266121  -0.000033704   0.000055051   0.000046704   0.003296427   0.000313392   0.001169917   0.000054469

   21    9.2  0.5 -0.5   0.018664515  -0.246260383   0.001709531   0.000804615  -0.000092518  -0.002288960  -0.000012203  -0.000278470
                        -0.000323582  -0.247984757  -0.000499381  -0.000145950  -0.000037241  -0.002398502  -0.000024393   0.000588239

   22   10.2  0.5 -0.5   0.149322146   0.066516232   0.000166666   0.000124921  -0.000249537   0.000419645   0.000206243  -0.000072778
                        -0.308001228  -0.054376915   0.001446583  -0.002214916  -0.002807980  -0.000351389  -0.000093567  -0.000033780

   23   11.2  0.5 -0.5  -0.028241182   0.240664076   0.000494398   0.000140681   0.000098183   0.002242016  -0.000023723  -0.000402840
                         0.081545830  -0.241208316   0.001537059   0.001304921   0.000472897  -0.002151673   0.000012752  -0.000189399

   24   12.2  0.5 -0.5   0.517237075   0.007863710  -0.001172968   0.002545768   0.005195886  -0.000161560  -0.000087125   0.000010555
                         0.247019982   0.030799157   0.000062079   0.000095956  -0.000480401  -0.000037200  -0.000196297  -0.000006305

   25    1.2  1.5  1.5  -0.014386886   0.211283084  -0.001221487  -0.000588254   0.000083838   0.002194855   0.000016489   0.000110716
                         0.003323340   0.160930166   0.000655941   0.000265673   0.000028743   0.001709383   0.000011681  -0.000411332

   26    2.2  1.5  1.5   0.003308073   0.155775623   0.000753374   0.000265697   0.000030887   0.001789907   0.000011375  -0.000499525
                         0.013948203  -0.207359780   0.001928604   0.000899867  -0.000085660  -0.002249831  -0.000006936  -0.000169156

   27    3.2  1.5  1.5  -0.000437517  -0.001062634   0.000031370  -0.000000935  -0.000003398  -0.000006601   0.000320495  -0.000001993
                         0.002041075  -0.008790335  -0.000223373   0.000572136  -0.000029719  -0.000093633  -0.000143625   0.000014836

   28    4.2  1.5  1.5  -0.002516114   0.029463827  -0.269677188  -0.126286929   0.004630943   0.073816567   0.006721311   0.230417534
                         0.001711687   0.020222465   0.056251864   0.007555558   0.013861284   0.133684198   0.015497084  -0.317581198

   29    5.2  1.5  1.5   0.001916946  -0.027297515  -0.004653794  -0.004316236  -0.005809053   0.194518138   0.015876087  -0.393725093
                        -0.004453963   0.034801326   0.142725555   0.080756029  -0.029007280  -0.151015781  -0.003710985  -0.253794849

   30    6.2  1.5  1.5  -0.031465072  -0.005576991   0.011205677   0.017516561   0.052105538   0.010798452   0.091485005  -0.015646280
                         0.067310547   0.002041993   0.154631162  -0.322606030   0.598192259  -0.026551006  -0.041509575  -0.002070388

   31    7.2  1.5  1.5  -0.076589764  -0.001638766   0.108083892  -0.234178522   0.517167200  -0.012805682  -0.051849546  -0.003481220
                        -0.036002791  -0.004010622  -0.002443580  -0.010133630  -0.043199372  -0.006473669  -0.117941980  -0.008430689

   32    8.2  1.5  1.5   0.005715044   0.000036395   0.136270872  -0.295165477  -0.212553135   0.006565522   0.120080162  -0.006480701
                         0.003132137   0.000338982  -0.006588102  -0.012578917   0.022549167   0.001364641   0.269612268   0.011284039

   33    9.2  1.5  1.5  -0.001048073  -0.000015233  -0.000083824   0.000181202  -0.000468283   0.000014728  -0.000137599   0.000009118
                        -0.000499563  -0.000061401   0.000005594   0.000007112   0.000042576   0.000004191  -0.000308000  -0.000012412

   34    1.2  1.5  0.5  -0.047211377  -0.003345486  -0.000152964   0.000134710   0.000397941   0.000066778   0.000057322   0.000004700
                         0.148286433   0.007975745  -0.000826116   0.001822249   0.002504793  -0.000022027  -0.000115196   0.000002028

   35    2.2  1.5  0.5   0.142556913  -0.001813041  -0.000632888   0.001433285   0.001070876  -0.000095942  -0.000241200   0.000015657
                         0.042822331   0.002459329   0.000153788  -0.000213757  -0.000473664  -0.000057167  -0.000507689  -0.000022531

   36    3.2  1.5  0.5  -0.011394505   0.203103174  -0.000578297  -0.000234456   0.000113771   0.002372535  -0.000012516  -0.000032155
                        -0.001015492   0.206308104   0.000184015   0.000004106  -0.000016522   0.002509209  -0.000012137   0.000069428

   37    4.2  1.5  0.5   0.020341626   0.003568244   0.036958497  -0.079200980   0.013875854  -0.000645370   0.223387289   0.005541554
                        -0.064636898  -0.001442198  -0.083846109   0.170198663   0.318509108  -0.013524980  -0.037564237   0.010312829

   38    5.2  1.5  0.5   0.059265502   0.001263654  -0.237655261   0.476753243   0.102684778   0.005829426  -0.112462062   0.005504157
                         0.016622803   0.003060669   0.003674432   0.046799124   0.041050836   0.005373940  -0.337673511  -0.023673870

   39    6.2  1.5  0.5   0.001750205   0.002066703   0.352977981   0.190586774  -0.004515076  -0.202730493  -0.012772517  -0.099854849
                         0.001778716   0.002869204  -0.100030777  -0.032710628  -0.008385101  -0.213504901  -0.020981564   0.202414456

   40    7.2  1.5  0.5   0.000926850   0.003113870  -0.006784153   0.006989999   0.000632887  -0.045564929  -0.021212551   0.462035723
                         0.000537880  -0.002965985  -0.021529290  -0.009425162   0.002044483   0.039855815   0.005005964   0.220068055

   41    8.2  1.5  0.5   0.000355780   0.057743834  -0.062533728  -0.019048618   0.002493685   0.125750276   0.004729032  -0.124803362
                         0.004545683  -0.056778494  -0.226066059  -0.106563267  -0.005134746  -0.120869437  -0.002922566  -0.059216319

   42    9.2  1.5  0.5  -0.000007289  -0.001452160   0.000065973   0.000020774   0.000003195   0.000112410  -0.000020900   0.000507747
                        -0.000113921   0.001430128   0.000231205   0.000109315  -0.000003322  -0.000106614   0.000012340   0.000240062

   43    1.2  1.5 -0.5   0.005760078  -0.092920641   0.001802208   0.000838824  -0.000060613  -0.001619586   0.000001916   0.000116520
                         0.006451844  -0.124834029  -0.000301304  -0.000047324   0.000035644  -0.001951739   0.000004747  -0.000054581

   44    2.2  1.5 -0.5   0.002514999   0.120845792   0.000132264   0.000000697   0.000020348   0.001062509  -0.000022895   0.000501842
                         0.001734991  -0.086905237   0.001443089   0.000651305  -0.000109813  -0.000492145   0.000015120   0.000253142

   45    3.2  1.5 -0.5  -0.124861966  -0.010442952  -0.000051615  -0.000041614   0.000320024   0.000087483   0.000070169   0.000011837
                         0.261196138   0.004670195  -0.000228741   0.000605440   0.003438406  -0.000074588  -0.000030503   0.000012800

   46    4.2  1.5 -0.5  -0.003843382   0.040278876   0.146559316   0.072688773  -0.009737138  -0.230179157   0.010178861   0.042837824
                        -0.000201793   0.054491490  -0.117306210  -0.055789270  -0.009409024  -0.220585918   0.005783947  -0.222436224

   47    5.2  1.5 -0.5  -0.000198245   0.050623637   0.158532226   0.052793465   0.000191714   0.036907168  -0.023797444   0.334918803
                         0.003305331  -0.035013778   0.452052371   0.231746359   0.007926203  -0.104245843   0.004942625   0.120418067

   48    6.2  1.5 -0.5  -0.001019874   0.001075685   0.013422766   0.013463523  -0.026666253   0.003321603   0.204719829   0.020673567
                         0.003385772  -0.002251655   0.192907058  -0.366631075  -0.293211368   0.008925401  -0.095038912   0.013265250

   49    7.2  1.5 -0.5  -0.003909911   0.000701211  -0.007498490   0.022524007   0.060013276  -0.001118677   0.209077291  -0.005506334
                        -0.001790490  -0.000810352   0.009025874   0.001484646  -0.007940749  -0.001824560   0.467112026   0.021088202

   50    8.2  1.5 -0.5  -0.073084274  -0.001143677  -0.108040630   0.234447052  -0.173796744   0.005503749  -0.056247599   0.003033611
                        -0.034883187  -0.004413821   0.006767719   0.007135098   0.014739218   0.001514208  -0.126169169  -0.004658577

   51    9.2  1.5 -0.5   0.001838677   0.000030201   0.000111123  -0.000240255  -0.000154283   0.000004604   0.000227984  -0.000012831
                         0.000879376   0.000110086  -0.000005745  -0.000009257   0.000014121  -0.000000209   0.000513284   0.000020602

   52    1.2  1.5 -1.5   0.147371146   0.014684992  -0.000118582   0.000347535   0.000163746  -0.000033720   0.000413836   0.000011288
                        -0.220954306  -0.001542111   0.000634479  -0.001342203  -0.002777151   0.000081963  -0.000100955   0.000016761

   53    2.2  1.5 -1.5   0.214803221   0.001413711  -0.000937207   0.002052253   0.002871593  -0.000084746   0.000157293  -0.000007203
                         0.145339944   0.014265242  -0.000044701   0.000274486   0.000139512  -0.000033311   0.000503386   0.000011208

   54    3.2  1.5 -1.5   0.001857395   0.001078248  -0.000555591  -0.000209560   0.000066002  -0.000020089  -0.000014879  -0.000151166
                         0.008657325   0.001787398   0.000136598   0.000083451   0.000066741  -0.000022162   0.000001642   0.000317008

   55    4.2  1.5 -1.5   0.021273870   0.002936329   0.022610606  -0.009310494  -0.051747457   0.007360077   0.322942732   0.015333759
                        -0.028713893   0.000799170   0.124475842  -0.275324123  -0.143675158   0.012625772  -0.222840862   0.007086005

   56    5.2  1.5 -1.5  -0.037141293  -0.003262694  -0.077428395   0.137549864   0.241823914  -0.017963767   0.244410496  -0.004085486
                        -0.024016889  -0.003587102   0.023345445  -0.038370258  -0.046521683  -0.023504690   0.399618298   0.015783864

   57    6.2  1.5 -1.5  -0.005937960   0.051666720   0.309247746   0.152877084   0.027076065   0.415114444   0.001699705  -0.043661985
                        -0.000114859   0.053397664  -0.093527065  -0.025786832   0.009404742   0.433853621   0.015690876   0.090477522

   58    7.2  1.5 -1.5  -0.000243612   0.060693761   0.065383025   0.023259649  -0.003585012  -0.373699220   0.008345984  -0.116682508
                         0.004325656  -0.058978473   0.225094048   0.105579768   0.013893940   0.360106916   0.003679669  -0.054624887

   59    8.2  1.5 -1.5  -0.000075960  -0.004383799   0.082222405   0.025918283   0.003306654   0.157191161  -0.011434179   0.266696402
                        -0.000332361   0.004822273   0.283761104   0.133945497  -0.005833898  -0.144838666   0.006211971   0.126424086

   60    9.2  1.5 -1.5   0.000005589   0.000828304  -0.000049884  -0.000014445   0.000006568   0.000340976   0.000012624  -0.000304659
                         0.000063015  -0.000813592  -0.000174346  -0.000082759  -0.000013832  -0.000323786  -0.000008822  -0.000144846


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000001605  -0.000007227   0.000002325  -0.000166471  -0.000114150   0.000005085   0.000069114  -0.000004318
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000002945   0.000014816  -0.000028494  -0.000060516   0.000069581  -0.000007359  -0.000001262   0.000006975
                         0.000000553   0.000002844  -0.000003503  -0.000082800   0.000145360  -0.000006969  -0.000070202  -0.000001442

    3    3.2  0.5  0.5   0.000006610  -0.000002584  -0.000211695   0.000010457  -0.000015034  -0.000023756   0.000004279   0.000068225
                        -0.000008948   0.000001601   0.000012963   0.000009632  -0.000017957  -0.000032504   0.000007125  -0.000013530

    4    4.2  0.5  0.5  -0.000353030  -0.001856611   0.006824522   0.118214737  -0.136223182   0.000126165  -0.236025169  -0.016166175
                        -0.000064404  -0.000070050  -0.030871583  -0.456101663  -0.106016912  -0.004668408  -0.379688058   0.006100722

    5    5.2  0.5  0.5  -0.000150198  -0.000208523   0.015291621   0.260472015  -0.272725275   0.013458060  -0.419790419   0.021108478
                         0.000254214   0.002501453   0.014778286   0.096870049   0.253195281  -0.004642632   0.250387791   0.000097526

    6    6.2  0.5  0.5   0.002781457  -0.000219798  -0.070848943  -0.001254656   0.007554103   0.222029793   0.007944968   0.547469776
                        -0.003560491   0.000696960   0.009058778  -0.013333584   0.002534493   0.298724226  -0.023200478  -0.108849270

    7    7.2  0.5  0.5  -0.001632781   0.000355322   0.036321551  -0.002894368   0.012851048   0.206959360   0.004595374  -0.020367196
                        -0.001259454   0.000043068   0.616260377  -0.041877644  -0.005402889  -0.158606389  -0.004383844  -0.080884011

    8    8.2  0.5  0.5  -0.001185500   0.000258349  -0.015986443   0.000439441   0.021090909   0.496735032  -0.001483559  -0.006463285
                        -0.000965801   0.000071576  -0.268348574   0.016710721  -0.002572000  -0.370142248  -0.000091737  -0.047548396

    9    9.2  0.5  0.5   0.000220268   0.001491809  -0.000011765  -0.000000555   0.000060188  -0.000004411  -0.000304189  -0.000003008
                         0.000153662   0.000234543   0.000002608   0.000039422   0.000070502  -0.000003940  -0.000589375   0.000004629

   10   10.2  0.5  0.5   0.000872386  -0.000002768   0.002767522  -0.000438484  -0.000071358   0.000738205   0.000667847  -0.000732938
                        -0.001111818  -0.000063701  -0.000165486  -0.000056179   0.000111739   0.000985768  -0.000320508   0.000138254

   11   11.2  0.5  0.5  -0.000019158   0.000245287  -0.000638941  -0.001249850  -0.000389125  -0.000141411   0.003334620   0.000121324
                        -0.000010384  -0.001544682   0.000022713  -0.000257930   0.000324064  -0.000215742  -0.001627086  -0.000067425

   12   12.2  0.5  0.5  -0.002709767   0.000597104  -0.000109761  -0.000003284   0.000070898   0.001547055  -0.000012580  -0.000180094
                        -0.002140231   0.000144372  -0.001880616   0.000123366  -0.000010432  -0.001154844   0.000001513  -0.000918395

   13    1.2  0.5 -0.5   0.000005279  -0.000001173  -0.000023250  -0.000000325   0.000001124   0.000025221  -0.000002606  -0.000041716
                        -0.000004935   0.000001096   0.000164839   0.000002303  -0.000004960  -0.000111329  -0.000003442  -0.000055105

   14    2.2  0.5 -0.5  -0.000008881   0.000001773   0.000073537   0.000000511   0.000005171   0.000126395   0.000003061   0.000056734
                         0.000012196  -0.000002415   0.000071487  -0.000028704   0.000008717   0.000099978   0.000006432  -0.000041366

   15    3.2  0.5 -0.5   0.000002981   0.000010939  -0.000008077   0.000042401   0.000026452  -0.000014192   0.000030391  -0.000008264
                        -0.000000595   0.000002023  -0.000011700  -0.000207810   0.000030351  -0.000018630   0.000062563   0.000000889

   16    4.2  0.5 -0.5   0.001308447  -0.000213913   0.468141651  -0.031522145   0.004580910  -0.073298944  -0.004893420   0.445186385
                        -0.001319044   0.000288131  -0.053355840   0.002446034   0.000908416  -0.156280536  -0.016571617  -0.040987613

   17    5.2  0.5 -0.5   0.001860560  -0.000283324  -0.059542472   0.012497781   0.007501391   0.307195253   0.012818373   0.053741146
                         0.001684953  -0.000083138  -0.271448285   0.017205723  -0.012099692  -0.210042859   0.016771006   0.485829117

   18    6.2  0.5 -0.5   0.000636516   0.004463342   0.013027675   0.018864934  -0.242285147   0.000802811   0.243654821   0.013702423
                         0.000359042   0.000701552   0.003104561  -0.068889393  -0.282544332   0.007927396   0.502198812  -0.020337854

   19    7.2  0.5 -0.5  -0.000230157  -0.000332698   0.041062974   0.605147754   0.200413337  -0.008108743  -0.076782329   0.000721589
                         0.000274110   0.002035070   0.008714736   0.122034029  -0.166801251   0.011339706   0.032580973  -0.006309901

   20    8.2  0.5 -0.5  -0.000139850  -0.000206486  -0.016485568  -0.263485828   0.470745939  -0.007168375  -0.041811618   0.000968586
                         0.000228712   0.001515106  -0.002768995  -0.053307993  -0.402677583   0.020001401   0.023545968   0.001127477

   21    9.2  0.5 -0.5  -0.000929622   0.000055975  -0.000039113   0.000004226   0.000002868   0.000055461   0.000001875   0.000653513
                         0.001190086  -0.000262673  -0.000004957  -0.000011286   0.000005173   0.000074278  -0.000005193  -0.000113203

   22   10.2  0.5 -0.5  -0.000041479   0.001396547  -0.000005612  -0.000550383  -0.000798303   0.000124744  -0.000332155  -0.000147556
                        -0.000048425   0.000216453   0.000442032   0.002717286  -0.000937762  -0.000044906  -0.000667822  -0.000725929

   23   11.2  0.5 -0.5  -0.001234042  -0.000006904   0.000080845   0.000111726   0.000179166   0.000402031   0.000019470  -0.000715422
                        -0.000960909   0.000020668   0.001273623  -0.000629507   0.000185584  -0.000307907   0.000137429  -0.003640779

   24   12.2  0.5 -0.5  -0.000337603  -0.000517975  -0.000122616  -0.001846855   0.001468118  -0.000025839  -0.000840941   0.000006387
                         0.000513226   0.003413960  -0.000013978  -0.000371337  -0.001253663   0.000066841   0.000410733   0.000010944

   25    1.2  1.5  1.5   0.000797726  -0.000023579   0.007739786  -0.000531150   0.000133987   0.009511756   0.000185011   0.004639044
                        -0.001442028   0.000292192  -0.003230252   0.000284996   0.000830782   0.016671582   0.000309525   0.000032383

   26    2.2  1.5  1.5  -0.001568589   0.000324586  -0.002257363   0.000074815  -0.000722193  -0.014641914  -0.000116588   0.000576890
                        -0.000933152   0.000034653  -0.018774448   0.001086737  -0.000182368   0.007505727  -0.000395260   0.006358994

   27    3.2  1.5  1.5  -0.000066471  -0.000057366  -0.000269106  -0.000964368   0.005645308  -0.000873506   0.007796333   0.000089628
                         0.000002906  -0.000014546  -0.000079532   0.004877165   0.006641596  -0.000305752   0.016032672   0.000037702

   28    4.2  1.5  1.5   0.126714103  -0.008624564  -0.267693334   0.016789486  -0.001067124   0.055913565  -0.000229808   0.107350820
                        -0.204893841   0.042397087   0.039022946   0.000137246   0.005114219   0.141945906  -0.001322464  -0.006517569

   29    5.2  1.5  1.5   0.156077576  -0.023340763  -0.050701942   0.005927654   0.009262076   0.220466927  -0.001016322  -0.001485620
                         0.075278415  -0.005392241  -0.145866552   0.007089637   0.000815768  -0.136508381   0.000190795  -0.093719461

   30    6.2  1.5  1.5  -0.020321697  -0.162687789   0.002272166  -0.013693241  -0.015680984   0.008394591  -0.002533141  -0.002063370
                        -0.009885840  -0.028808878  -0.001407575   0.076886712  -0.019941928  -0.007489716  -0.008627781  -0.003472694

   31    7.2  1.5  1.5  -0.034087189  -0.057429006  -0.012090205  -0.177649275   0.033825681   0.002906787   0.001529719  -0.000107531
                         0.056930836   0.369746219  -0.003716378  -0.034999484  -0.028887781  -0.000768600  -0.000826647  -0.001483349

   32    8.2  1.5  1.5  -0.013851414  -0.022222246  -0.005030966  -0.081603700  -0.150191903   0.002447977  -0.284048704   0.002029183
                         0.021126957   0.138612068  -0.000651523  -0.016024531   0.127491604  -0.006695649   0.138045490   0.003233831

   33    9.2  1.5  1.5   0.000002187   0.000005332  -0.000099988  -0.001511382  -0.002229558   0.000036365   0.002733908  -0.000019998
                        -0.000004267  -0.000024864  -0.000011989  -0.000304668   0.001895803  -0.000095723  -0.001328879  -0.000030477

   34    1.2  1.5  0.5  -0.000123607  -0.000937523  -0.001054133  -0.001452725   0.007056013  -0.000484309   0.002218316   0.000112071
                        -0.000107607  -0.000024871  -0.000447571  -0.007996566   0.010851816  -0.000319214   0.008586637  -0.000042045

   35    2.2  1.5  0.5  -0.000081126   0.000026300  -0.000321650  -0.020625796  -0.009771380   0.000289887  -0.011305346   0.000055752
                         0.000159034   0.000749333  -0.000151092  -0.003008290   0.005841352  -0.000233784   0.004077629   0.000135023

   36    3.2  1.5  0.5   0.001126208  -0.000053429  -0.040499841   0.002109620  -0.000421663  -0.003441254  -0.000332609   0.000497388
                        -0.001419139   0.000333502   0.002372794   0.000145322  -0.000298883  -0.004608173  -0.000102187  -0.000090996

   37    4.2  1.5  0.5   0.079043380   0.501594621  -0.001096608  -0.014185223  -0.042109336   0.005166772  -0.017807344  -0.001048005
                         0.043742783   0.044298983   0.012190444   0.191744453  -0.036068651   0.004559505  -0.039325243   0.000222782

   38    5.2  1.5  0.5  -0.010382034   0.048825788  -0.007510853  -0.155155925   0.036269117  -0.008557761  -0.009732242   0.002220518
                         0.037913737   0.211383454   0.000460900  -0.000604136  -0.042638800  -0.006504602  -0.002796050   0.004964297

   39    6.2  1.5  0.5   0.024600438  -0.008326867  -0.061057749  -0.001854558   0.003574375   0.179170700  -0.000005146  -0.031124606
                        -0.038154415   0.015591778   0.004146356  -0.003345731   0.009518193   0.240592510   0.000996731   0.008883335

   40    7.2  1.5  0.5   0.099427880  -0.021452826  -0.000342700  -0.002351867   0.004041214   0.080123843  -0.004276609  -0.066098582
                         0.077626145  -0.002067514   0.004621033  -0.000438525  -0.001016916  -0.057305363   0.000250093  -0.332647957

   41    8.2  1.5  0.5   0.480865860  -0.106229025  -0.009966330  -0.000144064   0.001151697   0.026335033   0.000107499   0.001340762
                         0.380224303  -0.026168946  -0.165368817   0.010385294  -0.000039463  -0.017884739   0.000035233   0.007597132

   42    9.2  1.5  0.5   0.000128844  -0.000027978   0.000315425   0.000004853  -0.000047038  -0.001110638  -0.000022898  -0.000350062
                         0.000100823  -0.000007374   0.005402713  -0.000344335   0.000003996   0.000830484   0.000001331  -0.001769691

   43    1.2  1.5 -0.5  -0.000667892   0.000016812  -0.007715302   0.000295961  -0.000204319  -0.009024632  -0.000034121   0.008185086
                         0.000658399  -0.000163019  -0.002555308   0.001106310  -0.000542869  -0.009279291  -0.000114732  -0.003414034

   44    2.2  1.5 -0.5  -0.000492503   0.000167867  -0.000098156   0.000104688  -0.000292055  -0.007855932  -0.000141305  -0.003572550
                        -0.000565360   0.000060777  -0.020843792   0.000339600   0.000231070   0.008239272   0.000037045  -0.011474964

   45    3.2  1.5 -0.5  -0.000266778  -0.001791837  -0.000150737  -0.008005847  -0.003733958   0.000198332  -0.000227661  -0.000282230
                        -0.000207142  -0.000267622   0.002109240   0.039771518  -0.004374362   0.000477279  -0.000451493  -0.000203513

   46    4.2  1.5 -0.5   0.336171462  -0.027870734   0.191846341  -0.012224122   0.003305248   0.025873393   0.000454928  -0.042102292
                        -0.374897736   0.085933167   0.012733312  -0.000616688   0.006046483   0.049037856   0.000970045   0.009537991

   47    5.2  1.5 -0.5  -0.108684735   0.033475357   0.021071248  -0.001505367  -0.004453051   0.049598527  -0.005298310  -0.008103470
                        -0.187761952   0.020606759  -0.153719642   0.007372870  -0.009783428  -0.025951921   0.001225913  -0.006071920

   48    6.2  1.5 -0.5  -0.016730464  -0.044026491  -0.003053928  -0.012633196   0.195059608  -0.008493220   0.011703413   0.000791591
                        -0.005703669  -0.011072897  -0.002303655   0.059880242   0.227900516  -0.005589040   0.030177556  -0.000605708

   49    7.2  1.5 -0.5  -0.014259743  -0.019623154  -0.000105759  -0.004623605  -0.073592123   0.001884672   0.305117164  -0.002381868
                         0.016160386   0.124605993  -0.002390063  -0.000306044   0.065482320  -0.003716657  -0.148078366  -0.003560708

   50    8.2  1.5 -0.5  -0.059731380  -0.091626943   0.010303629   0.162356142  -0.023261343   0.000292950  -0.006866478   0.000092975
                         0.091660142   0.606141073   0.001307784   0.032964472   0.021732643  -0.001114515   0.003516468   0.000064444

   51    9.2  1.5 -0.5  -0.000015403  -0.000025271  -0.000341638  -0.005305709   0.001055350  -0.000014290   0.001622271  -0.000012760
                         0.000024493   0.000161640  -0.000043285  -0.001066890  -0.000899698   0.000044992  -0.000789041  -0.000019060

   52    1.2  1.5 -1.5   0.000216761   0.001567506  -0.000356385  -0.004279551  -0.014157984   0.000780647   0.002825845  -0.000358454
                         0.000197348   0.000508662   0.000486141   0.007212785  -0.012960194   0.000314234   0.003679182   0.000039313

   53    2.2  1.5 -1.5  -0.000213451  -0.000508635  -0.001065637  -0.018275174  -0.010555295  -0.000018296   0.005418249   0.000385512
                         0.000246973   0.001752865  -0.000225858  -0.004857325   0.012621700  -0.000744638  -0.003378193  -0.000145615

   54    3.2  1.5 -1.5   0.000031974  -0.000050543  -0.004964050  -0.000041169   0.000105199   0.005230152   0.000084157  -0.017488608
                        -0.000049801   0.000043270   0.000273760  -0.000277576   0.000919473   0.006973220   0.000048705   0.003460923

   55    4.2  1.5 -1.5   0.035253155   0.232487754   0.002208960   0.076027206  -0.126084035   0.005223603   0.059598121   0.001193113
                         0.025082087   0.063145818  -0.016644103  -0.259619674  -0.085894022   0.000089212   0.089525087  -0.000614983

   56    5.2  1.5 -1.5   0.013368471   0.062609932  -0.006192282  -0.137355779   0.181845891  -0.001250806  -0.075619577   0.000461308
                        -0.019878417  -0.161576749  -0.006859714  -0.070577107  -0.184857448   0.009213415   0.055382524   0.000925477

   57    6.2  1.5 -1.5   0.099172628  -0.008094337  -0.078045590  -0.001711116   0.009159363  -0.015984445  -0.004014198   0.008407912
                        -0.132144080   0.021099359   0.002820846   0.002053311  -0.006532310  -0.019699524   0.000450909  -0.003187857

   58    7.2  1.5 -1.5   0.294450778  -0.063779046   0.009845520  -0.001991406   0.001391846  -0.035647482  -0.001247583  -0.000264216
                         0.230887628  -0.018310920   0.180796279  -0.012490750  -0.002665130   0.026607097   0.000809583  -0.001718597

   59    8.2  1.5 -1.5   0.110891242  -0.024546183   0.004470502   0.000057500   0.007071043   0.157525009   0.003803116   0.061381372
                         0.086082903  -0.005974520   0.083041942  -0.005072652  -0.000908105  -0.118311404  -0.000333994   0.309794369

   60    9.2  1.5 -1.5  -0.000020875   0.000004511   0.000090599   0.000002093   0.000101392   0.002341561  -0.000036370  -0.000590606
                        -0.000014522   0.000001624   0.001539120  -0.000100682  -0.000014317  -0.001755588   0.000002451  -0.002981838


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5   0.010436463  -0.004817385   0.001545461   0.013369930  -0.004647962   0.000208267  -0.000000025   0.000009990
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.003015915  -0.003824433  -0.000111535  -0.003700674  -0.000008348   0.000283908   0.000001325   0.000003369
                         0.004966865  -0.001320444  -0.002235751  -0.015621063  -0.004615136  -0.000325147   0.000000785   0.000005466

    3    3.2  0.5  0.5  -0.007219709  -0.012503650   0.004439072   0.000611352   0.000005936  -0.000016143   0.000009627  -0.000000502
                         0.003237135   0.008414144  -0.000774206   0.001909835   0.000315784  -0.004672838   0.000003676  -0.000000604

    4    4.2  0.5  0.5   0.069105301  -0.024398216  -0.015105328  -0.061081855  -0.000832291  -0.000015977  -0.011754750  -0.028131989
                        -0.254688838   0.146141775  -0.006211202  -0.058626438   0.000947395  -0.000119850   0.011553942   0.240840206

    5    5.2  0.5  0.5   0.186639802  -0.101929968  -0.014607811  -0.181178201  -0.003295624   0.000248820   0.022380759   0.253534213
                         0.063703624  -0.021483983   0.017173169   0.123820854  -0.001674221  -0.000084456   0.009609303   0.032956088

    6    6.2  0.5  0.5   0.030801771   0.061418812   0.291984084  -0.035654785   0.000007615  -0.000014658   0.248066352  -0.025247967
                        -0.023456602  -0.031670302  -0.070130334   0.002517694   0.000133145   0.001248739   0.095594349   0.003371648

    7    7.2  0.5  0.5   0.059372701   0.136471333   0.026185722  -0.000191433   0.000041775  -0.000095974   0.005633965  -0.003711507
                         0.122088930   0.208041691   0.119474106  -0.017955225   0.000019677  -0.000007308  -0.020901735   0.001388339

    8    8.2  0.5  0.5  -0.026935437  -0.059132639   0.065815241  -0.007891044   0.000003315   0.000172273   0.003805925   0.000233931
                        -0.053781684  -0.090878002   0.271921516  -0.037661283   0.000010777   0.000008847  -0.005971050   0.000761341

    9    9.2  0.5  0.5   0.025401488  -0.005680661   0.037868635   0.262992850  -0.113422332  -0.009512059  -0.000044983  -0.000368257
                        -0.116082779   0.063918317   0.054881900   0.409642593   0.237949304  -0.016472335   0.000091804   0.001672275

   10   10.2  0.5  0.5  -0.268892487  -0.317472076   0.113324202  -0.075625846   0.063451204  -0.003357145  -0.001457356   0.000022583
                         0.093078966   0.232983546  -0.023000096   0.043484271   0.011674492  -0.264945283  -0.000564494  -0.000005874

   11   11.2  0.5  0.5  -0.257646546   0.240890625  -0.062956134  -0.291707703   0.233890879  -0.017594691   0.000272118  -0.000384622
                        -0.082021183  -0.031430371   0.033178682   0.189639299   0.115122492   0.062999973   0.000102417  -0.000076792

   12   12.2  0.5  0.5  -0.000343202  -0.000743879   0.000352322  -0.000040480  -0.013354573  -0.298044034  -0.000074298  -0.000000742
                        -0.000672259  -0.001139139   0.001488950  -0.000207891  -0.018294025  -0.000225677   0.000192812  -0.000013184

   13    1.2  0.5 -0.5   0.001788835   0.003875361   0.009584643  -0.001107911   0.000188355   0.004203593  -0.000005515  -0.000000014
                         0.004472949   0.009690270   0.009321462  -0.001077489   0.000088867   0.001983270   0.000008329   0.000000021

   14    2.2  0.5 -0.5   0.002646157   0.005731638  -0.013543885   0.001638714   0.000118026   0.001976813   0.000002697   0.000000077
                         0.003060672   0.000955940   0.008618341  -0.001525005   0.000415204  -0.004170343   0.000005827  -0.000001539

   15    3.2  0.5 -0.5  -0.003169576   0.000324797   0.001769796  -0.002642511  -0.002008484  -0.000140112  -0.000000226   0.000002250
                         0.014734072  -0.007905552  -0.000942892  -0.003649917   0.004219203   0.000283060  -0.000000752  -0.000010056

   16    4.2  0.5 -0.5  -0.126633071  -0.210818127  -0.084662512   0.015159142  -0.000065589   0.000348469   0.216337231  -0.016123272
                         0.076920458   0.158737720  -0.000557874   0.006078685   0.000101574   0.001211954   0.109515368   0.003421672

   17    5.2  0.5 -0.5   0.057797462   0.128453675  -0.043555720  -0.001501010   0.000188994   0.003694930  -0.112501707   0.004344760
                         0.086664488   0.149640305  -0.215081482   0.022495618   0.000182552  -0.000107924   0.229584553  -0.023965812

   18    6.2  0.5 -0.5   0.006599331  -0.010341896  -0.023804895  -0.160423118   0.000519576  -0.000063699   0.016750903   0.057256963
                        -0.068787552   0.037309603  -0.026663260  -0.253845214  -0.001135607   0.000117167  -0.019189453  -0.259609004

   19    7.2  0.5 -0.5  -0.243842757   0.135406543  -0.012655546  -0.102068906  -0.000089917  -0.000046177   0.003206726   0.020537812
                        -0.049461901   0.009792472   0.012738285   0.067392081  -0.000034343  -0.000000030  -0.002328021   0.006842687

   20    8.2  0.5 -0.5   0.106338012  -0.059938275  -0.031914232  -0.236764265   0.000159578  -0.000007596   0.000505626   0.007079779
                         0.021159097  -0.005038891   0.021497037   0.149049120   0.000065507   0.000008332   0.000615391   0.000123429

   21    9.2  0.5 -0.5  -0.057238849  -0.098350708   0.474135642  -0.065410730  -0.015631347   0.001046384   0.001597611  -0.000101379
                         0.029009227   0.066690220  -0.110307235   0.012941904   0.010838729   0.263597045   0.000616243  -0.000013181

   22   10.2  0.5 -0.5  -0.098438946  -0.013423636  -0.023897637  -0.065204339  -0.116087460  -0.062366405  -0.000017366  -0.000333967
                         0.381286802  -0.284229959  -0.083899067  -0.095497504   0.238182650  -0.016516069   0.000015586   0.001526763

   23   11.2  0.5 -0.5  -0.060266536  -0.171828417  -0.076903811   0.021999983   0.010969333  -0.260652078   0.000148328   0.000064847
                        -0.235338280  -0.208768322  -0.339326173   0.067677917  -0.064484444   0.004315717  -0.000363083  -0.000283429

   24   12.2  0.5 -0.5   0.001333915  -0.000751634  -0.000173960  -0.001290663  -0.269645766   0.019883806  -0.000010583  -0.000201782
                         0.000267697  -0.000069034   0.000120811   0.000821762  -0.126970302  -0.010846669  -0.000007898  -0.000044506

   25    1.2  1.5  1.5   0.035926714   0.059338940  -0.021733393   0.005129830  -0.021769318   0.058110945  -0.121120377   0.007195029
                        -0.024776197  -0.053219557   0.008854073   0.001904560   0.021378912   0.397451238  -0.069301517   0.007344874

   26    2.2  1.5  1.5  -0.025575804  -0.053189911   0.007957142  -0.003182605   0.021343689   0.396587958   0.071600947  -0.000368911
                        -0.037557383  -0.059775949   0.019484758  -0.006200975   0.021745695  -0.058005578  -0.129619005   0.002893896

   27    3.2  1.5  1.5  -0.008732632  -0.001103001   0.012938334   0.084103056   0.001283597   0.008537429  -0.003332319  -0.054260799
                         0.035519859  -0.020849854   0.017818932   0.132056108  -0.000493543  -0.010471242   0.011675017   0.244365207

   28    4.2  1.5  1.5  -0.049645480  -0.080583439   0.031132079  -0.004923008  -0.003308045   0.007106945  -0.153497026   0.010201473
                         0.037219241   0.071675829  -0.012507779   0.001217846   0.004036987   0.046925126  -0.084157922   0.001772955

   29    5.2  1.5  1.5  -0.032777782  -0.073706597   0.012362406  -0.001345501   0.000349115  -0.045936086  -0.079126792   0.002243856
                        -0.052663158  -0.077939140   0.029436287  -0.003001511  -0.005166117   0.007643851   0.129841326  -0.008840691

   30    6.2  1.5  1.5  -0.020784567   0.003355838  -0.002600186  -0.016567634  -0.039328067  -0.005373050   0.000011294   0.003848550
                         0.103574615  -0.064433042  -0.002426123  -0.027020358   0.084991847  -0.006778192   0.006240832  -0.006539140

   31    7.2  1.5  1.5  -0.110486325   0.061169582   0.003570872   0.023906080  -0.086146653   0.005581239  -0.001717033  -0.010693901
                        -0.022081510   0.003750108  -0.001894146  -0.015539475  -0.039824542  -0.003418252   0.001745174  -0.002571031

   32    8.2  1.5  1.5  -0.024643610   0.014219633  -0.013940248  -0.104833812   0.003737939  -0.000319905  -0.026180043  -0.483444472
                        -0.004509666   0.000676898   0.009701530   0.066635596   0.002265934   0.000081622  -0.015472871  -0.106997128

   33    9.2  1.5  1.5   0.105717888  -0.060643434   0.052704351   0.397430246  -0.001651383   0.000121879   0.000024271   0.000445105
                         0.021438226  -0.004619854  -0.036798126  -0.253323695  -0.000777899  -0.000065417   0.000014504   0.000097965

   34    1.2  1.5  0.5   0.011210297  -0.000511561  -0.002451910  -0.018758192  -0.067422709  -0.010594985  -0.008840560  -0.077696221
                        -0.111055865   0.063196933  -0.008139991  -0.061216781   0.221867240  -0.003451038   0.010700633   0.209406387

   35    2.2  1.5  0.5  -0.072106598   0.041024653   0.013565086   0.103243214   0.223266796  -0.014127875  -0.009768726  -0.196139622
                         0.001796553  -0.006159624  -0.008123508  -0.055005600   0.067187500  -0.000879057  -0.008158309  -0.076642386

   36    3.2  1.5  0.5  -0.026524885  -0.040162749   0.014762580   0.000907088  -0.021392166  -0.000460955  -0.010989071  -0.002367633
                         0.014974007   0.025324782  -0.003428882   0.000450224   0.017392038   0.463914683  -0.004659572  -0.006652824

   37    4.2  1.5  0.5   0.009537220  -0.004038746  -0.009464541  -0.048847650   0.023524970   0.003942880   0.005834770   0.031115572
                        -0.025898364   0.015625910  -0.014630856  -0.112460653  -0.079957512   0.005040025  -0.003547355  -0.090083534

   38    5.2  1.5  0.5  -0.026012505   0.016788033  -0.009990631  -0.113136171   0.079363150  -0.005049501  -0.005599907  -0.065542135
                        -0.009898300   0.003346477   0.008109234   0.048963435   0.023065525   0.003812794  -0.012379818  -0.029302859

   39    6.2  1.5  0.5  -0.016116721  -0.024027137  -0.118763641   0.012797260   0.002608307  -0.000776459   0.133626079  -0.011876501
                         0.007199425   0.015649687   0.029652712   0.000607556   0.002302285   0.000610590   0.047147245   0.000251605

   40    7.2  1.5  0.5  -0.006956772  -0.014130694  -0.029857438   0.001616543   0.001460284   0.005229182  -0.184660494   0.000516155
                        -0.013200098  -0.021470574  -0.121448116   0.017585290   0.000741024   0.000060563   0.482855258  -0.032286247

   41    8.2  1.5  0.5   0.028099063   0.061124082  -0.007132337   0.000936221   0.004310575   0.096405357   0.010519399  -0.000161357
                         0.055751517   0.093774216  -0.027393287   0.004132436   0.005997849   0.000073281  -0.025401192   0.001780970

   42    9.2  1.5  0.5   0.104433133   0.226854328  -0.028390562   0.003498636  -0.000140487  -0.003111173   0.000031268   0.000000543
                         0.206276239   0.347155230  -0.119474059   0.017339254  -0.000193399  -0.000002851  -0.000081107   0.000006703

   43    1.2  1.5 -0.5   0.058488480   0.098952812   0.056127479  -0.007432896   0.011054596   0.033693271  -0.217493721   0.013802847
                        -0.023941840  -0.051647041  -0.030806982   0.004125940   0.001399744  -0.229424623  -0.050835213  -0.001463032

   44    2.2  1.5 -0.5   0.009514425   0.025107170  -0.035663365   0.004060869   0.013152267   0.230590010  -0.044389118  -0.001408710
                         0.040378693   0.067618186  -0.111413202   0.015281108   0.005233303   0.034503179   0.205850462  -0.012649172

   45    3.2  1.5 -0.5   0.008600500  -0.004053927  -0.000964168   0.008192404  -0.197533975  -0.011925838   0.004239720   0.002182199
                        -0.046694993   0.030188675  -0.000309661   0.012750511   0.419758709  -0.024857235   0.005647170  -0.011734961

   46    4.2  1.5 -0.5   0.013008975   0.020505219   0.113425050  -0.016985520  -0.005716482  -0.012841746   0.092288202  -0.006179127
                        -0.009552335  -0.018472136  -0.046564467   0.003889935   0.002875758   0.082351184   0.023793060   0.002906313

   47    5.2  1.5 -0.5   0.009341092   0.018849782   0.046968007  -0.001508363   0.002939836   0.081617603  -0.011754824  -0.007230133
                         0.014345067   0.020477120   0.113979022  -0.012778780   0.005602876   0.013003653   0.070825512  -0.011504087

   48    6.2  1.5 -0.5   0.005608782  -0.000700070  -0.009597692  -0.064465591   0.000441689   0.003341317  -0.006766949  -0.034466737
                        -0.028120412   0.017637753  -0.008486654  -0.104058990   0.000883526  -0.000969219   0.009763350   0.137443937

   49    7.2  1.5 -0.5  -0.025182594   0.014839560  -0.013419262  -0.106077359  -0.004755087   0.001636866   0.027204262   0.504543373
                        -0.005147721   0.001557793   0.011479505   0.066247303  -0.002176502  -0.000047080   0.017395296   0.112626295

   50    8.2  1.5 -0.5   0.109766632  -0.062199356  -0.003552276  -0.024211525  -0.087219771   0.006457724  -0.001574006  -0.026986632
                         0.021932706  -0.005387863   0.002309734   0.014665077  -0.041069572  -0.003585115  -0.000848762  -0.005253570

   51    9.2  1.5 -0.5   0.406571694  -0.230306820  -0.014596963  -0.103649480   0.002814945  -0.000209579  -0.000005289  -0.000084888
                         0.081725742  -0.020369953   0.009990938   0.065854840   0.001324949   0.000114963  -0.000004154  -0.000018710

   52    1.2  1.5 -1.5   0.027380160  -0.009664101   0.005005328   0.009407222   0.222146364   0.010565746   0.002151464  -0.009090625
                        -0.074858252   0.042558124   0.002211155   0.021499748  -0.334657080   0.028623873   0.010054194   0.139248721

   53    2.2  1.5 -1.5   0.075253007  -0.044369119  -0.006604843  -0.019289016   0.333921294  -0.028581937   0.002616522   0.147604162
                         0.027190361  -0.009801022   0.002226459   0.008420556   0.221682712   0.010559411   0.001290170   0.011865631

   54    3.2  1.5 -1.5   0.019768694   0.029737558   0.152360837  -0.021698528   0.003253162  -0.000950286   0.233702320  -0.011574088
                        -0.006718018  -0.021297815  -0.036032138   0.003753491   0.013113029  -0.000994064   0.089676164  -0.003667541

   55    4.2  1.5 -1.5  -0.036628136   0.016123308  -0.002680132  -0.013597607   0.026450280   0.001269210  -0.004154128  -0.014579371
                         0.101437147  -0.059916480  -0.004305352  -0.030671745  -0.039406330   0.005062562   0.009484548   0.174445793

   56    5.2  1.5 -1.5   0.099735995  -0.061069154  -0.003057205  -0.029385230  -0.038282751   0.001888628  -0.008609959  -0.151944642
                         0.039495611  -0.010878856   0.001213647   0.012483281  -0.026513835  -0.004821176  -0.003010200  -0.005713558

   57    6.2  1.5 -1.5   0.058580047   0.088451257  -0.030715500   0.003555506  -0.007751590  -0.000697641  -0.007576969  -0.005197179
                        -0.027041758  -0.057758758   0.007819480   0.000073599   0.003837499   0.093647340  -0.000401539  -0.003455060

   58    7.2  1.5 -1.5  -0.026196021  -0.061529490   0.006303743  -0.001239298   0.003589087   0.094903584   0.003760592  -0.002403069
                        -0.055403515  -0.094387197   0.027807171  -0.003847474   0.005472946   0.000741384  -0.010335747   0.000468077

   59    8.2  1.5 -1.5  -0.005908663  -0.013338119  -0.028695247   0.003229624  -0.000254492  -0.004347439   0.177704948  -0.001553531
                        -0.012951596  -0.021207056  -0.120859478   0.016673924  -0.000210321   0.000454332  -0.462155704   0.030370890

   60    9.2  1.5 -1.5   0.026808207   0.059161541   0.108293737  -0.012127217   0.000082314   0.001825429  -0.000164068   0.000001307
                         0.054592025   0.090198567   0.458689613  -0.063125124   0.000111169   0.000001112   0.000425203  -0.000028244


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5   0.000012438  -0.000198949   0.000006670   0.000241854  -0.010452525   0.000814158  -0.008604772   0.001121852
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000019245  -0.000039766  -0.000000834  -0.000081849   0.002557261  -0.000431112  -0.003027625   0.001081459
                        -0.000015910  -0.000158047  -0.000007522  -0.000290276   0.012141281  -0.001224331  -0.004207146  -0.001118222

    3    3.2  0.5  0.5  -0.000214615  -0.000002394   0.000007633   0.000024012  -0.000867645  -0.000114470   0.001338514   0.002216061
                        -0.000119677   0.000010708   0.000009642   0.000032849  -0.001608240  -0.003169372  -0.001249311  -0.012809873

    4    4.2  0.5  0.5   0.008727565   0.090022758   0.005393443   0.067476352   0.012785335  -0.001238939  -0.015398535  -0.002604342
                         0.002093559  -0.211158484   0.005741247   0.072866146   0.013578678   0.000306865   0.055190856  -0.009838541

    5    5.2  0.5  0.5  -0.004775026   0.155983029  -0.002405022   0.125944367   0.031591401  -0.001714514  -0.042298640   0.006936069
                         0.009614672   0.076419279  -0.006627845  -0.096273303  -0.021486004   0.000389710  -0.014202014  -0.001448908

    6    6.2  0.5  0.5  -0.021034584  -0.002740608  -0.142273613   0.001958951   0.000070817  -0.002858883  -0.000450844  -0.003009010
                        -0.008649763  -0.008020823  -0.169708546   0.009195212  -0.003243136  -0.055604987   0.003084635   0.011901832

    7    7.2  0.5  0.5  -0.144996364  -0.010861309  -0.125769867   0.001716910   0.001090724   0.019153935  -0.004942303  -0.042111748
                         0.260207207  -0.007949370   0.107815299  -0.002135885   0.000610578  -0.000462417  -0.004611216  -0.007548381

    8    8.2  0.5  0.5   0.080908771   0.004875246  -0.228953530   0.006261662   0.002904844   0.038122724   0.002747126   0.020544102
                        -0.145311280   0.003536877   0.190871040  -0.005958065   0.000551900  -0.002325013   0.002468007   0.003561806

    9    9.2  0.5  0.5  -0.000123724  -0.000846279  -0.000028310  -0.001512807   0.225891575  -0.023661769   0.028097207   0.007291285
                        -0.000030415   0.002466027  -0.000055744  -0.002179741   0.363203083  -0.022998267  -0.124463134   0.020360725

   10   10.2  0.5  0.5   0.006273202  -0.000377843  -0.002889375   0.000926781  -0.053734279   0.009838141  -0.107426132  -0.062303646
                         0.003490741   0.000143072  -0.003480408  -0.000489830   0.041411295   0.095315775   0.042382368   0.407132112

   11   11.2  0.5  0.5  -0.001247722  -0.001077817   0.000711917   0.004190773  -0.262803381   0.016029494  -0.286095080   0.063199371
                        -0.000750215  -0.000413481   0.000622653  -0.002878045   0.164427543  -0.037159099  -0.070678988  -0.100566868

   12   12.2  0.5  0.5  -0.002015254  -0.000112244   0.002536828  -0.000059328   0.000272066   0.003733580   0.000496353   0.003720972
                         0.003613342  -0.000092755  -0.002129907   0.000062122   0.000063013  -0.000199324   0.000451928   0.000640986

   13    1.2  0.5 -0.5  -0.000148211  -0.000009266  -0.000066010   0.000001821   0.000669381   0.008593818  -0.001043916  -0.008006991
                         0.000132718   0.000008298   0.000232672  -0.000006417  -0.000463446  -0.005949922  -0.000410842  -0.003151221

   14    2.2  0.5 -0.5   0.000075808   0.000003724  -0.000256916   0.000007008   0.000342479   0.004808698  -0.000596816  -0.004358025
                         0.000144269  -0.000024691  -0.000157967   0.000002856   0.001252019   0.011437951  -0.001436588   0.002806102

   15    3.2  0.5 -0.5  -0.000008927   0.000080046   0.000025049  -0.000007193   0.001709997  -0.000202106   0.002629094   0.000788006
                        -0.000006380  -0.000232324   0.000032066  -0.000009975   0.002670943  -0.001816149  -0.012731522   0.001652708

   16    4.2  0.5 -0.5   0.207927243  -0.005105196   0.051683309  -0.004051236  -0.001193304  -0.002782368   0.006026465   0.005883088
                         0.097253606   0.007381758   0.084801939  -0.006755637   0.000452948   0.018441901  -0.008201293  -0.056995918

   17    5.2  0.5 -0.5   0.065224205   0.009971163  -0.126992257   0.005719805  -0.001631469  -0.038204243  -0.005923598  -0.044561148
                        -0.160985760   0.003977274   0.094886769   0.004122655   0.000655548   0.000317585  -0.003888363  -0.002275127

   18    6.2  0.5 -0.5   0.003308972   0.009899981   0.008311445   0.124434481   0.029301686  -0.001904324  -0.001558691   0.000710125
                         0.007803540  -0.020475901   0.004394233   0.183190697   0.047344472  -0.002626118   0.012176955  -0.003035450

   19    7.2  0.5 -0.5  -0.002788396   0.281601234  -0.002523391  -0.138048419   0.016011134  -0.000549206   0.041950561  -0.006287666
                         0.013167588   0.097120961   0.001068776   0.091568728  -0.010522863   0.001122879   0.008398083   0.002480912

   20    8.2  0.5 -0.5   0.001272493  -0.157211240  -0.007440860  -0.246112839   0.032667073  -0.002074134  -0.020421283   0.003460109
                        -0.005887128  -0.054279125   0.004397790   0.168166415  -0.019789141   0.002107292  -0.004209252  -0.001290506

   21    9.2  0.5 -0.5  -0.002275528   0.000071881  -0.001684093   0.000045901  -0.006362773   0.021024478  -0.014241214  -0.019435345
                        -0.001272574  -0.000105194  -0.002050289   0.000042449   0.032377688   0.427201890   0.016276050   0.126106273

   22   10.2  0.5 -0.5  -0.000376925  -0.002344709  -0.000724180   0.002559670  -0.046168196   0.067751724  -0.091123669  -0.084441971
                         0.000145472   0.006785328   0.000757905   0.003729587  -0.083966563   0.003460061   0.401665007  -0.078779392

   23   11.2  0.5 -0.5  -0.000527114   0.000429054  -0.003912567  -0.000404709   0.034331254   0.309668283  -0.021979480  -0.292103718
                         0.001027038  -0.001391239   0.003246157  -0.000854829   0.021426813  -0.014407926  -0.116725138  -0.039004253

   24   12.2  0.5 -0.5  -0.000021742   0.003911751   0.000075956   0.002741421   0.003183122  -0.000187818  -0.003697214   0.000627375
                         0.000143977   0.001347476  -0.000040121  -0.001859196  -0.001961397   0.000206677  -0.000766230  -0.000238759

   25    1.2  1.5  1.5  -0.061075851   0.000966032   0.156614607  -0.003484760  -0.000386651   0.000395329  -0.001389626  -0.000198943
                        -0.011351353  -0.002458169   0.245789390  -0.004285301   0.000215314   0.008279958   0.002154480   0.015117360

   26    2.2  1.5  1.5  -0.058046942  -0.004571835  -0.225789536   0.004415102   0.000180966  -0.000806018   0.002361838   0.016367442
                         0.121657946  -0.001932220   0.134197064  -0.007101823   0.000329969  -0.001253438   0.001689037   0.000650795

   27    3.2  1.5  1.5   0.001016506   0.009141781  -0.007475909   0.069440788  -0.010287210   0.001050976   0.000881103   0.000681070
                         0.003602576  -0.026973305   0.000850575   0.102104746  -0.016621522   0.000839203  -0.004176856   0.000317129

   28    4.2  1.5  1.5   0.344861898  -0.005152549   0.124065954  -0.005106435   0.001668359  -0.020086725   0.035118475   0.007182404
                         0.141539220   0.008061240   0.236312204  -0.006941983  -0.004645158  -0.082388389  -0.058896685  -0.356674270

   29    5.2  1.5  1.5  -0.087634829  -0.015431833   0.304804907  -0.007689506   0.005786175   0.092106414   0.044765962   0.356208540
                         0.275743837   0.002913072  -0.202569482   0.007767791  -0.002599693  -0.018805822   0.045561774   0.003562522

   30    6.2  1.5  1.5  -0.001228694   0.073884278   0.009129850  -0.020579254   0.043995387  -0.000702616   0.067828130   0.034858881
                         0.009759781  -0.222115499  -0.012772409  -0.031539658   0.075248702  -0.003187022  -0.339158664   0.063725855

   31    7.2  1.5  1.5  -0.003190179   0.221457086   0.005152916   0.023223817  -0.063325270   0.004571106   0.346472672  -0.052329431
                         0.012482300   0.074398267  -0.003715537  -0.016034020   0.038658830  -0.004265118   0.068391023   0.021694773

   32    8.2  1.5  1.5  -0.000905106   0.046718022  -0.006548946  -0.211494084   0.304003291  -0.019343381   0.072357475  -0.010936398
                         0.001755299   0.014829178   0.003258566   0.143118937  -0.187825499   0.019792742   0.011990624   0.005335966

   33    9.2  1.5  1.5   0.000003166   0.000337354   0.000230850   0.007623800  -0.091497347   0.005842711  -0.026669643   0.004167963
                         0.000005809   0.000116764  -0.000128777  -0.005166875   0.056705025  -0.005945936  -0.005112022  -0.001720386

   34    1.2  1.5  0.5   0.001571629  -0.019931450   0.000721532   0.065252988   0.004591521  -0.000568209  -0.001710941  -0.001107954
                         0.003867930   0.143560325   0.002439359   0.117479605   0.011809745  -0.000864800   0.015340722  -0.002675329

   35    2.2  1.5  0.5  -0.008049105   0.186651013  -0.001626569  -0.077768381  -0.014599995   0.000944702   0.009168108  -0.001423245
                         0.002795029   0.041925835   0.001667633   0.028969794   0.006847830  -0.000744920  -0.000353616   0.001164110

   36    3.2  1.5  0.5   0.295649573  -0.002237205  -0.034830074  -0.002648264  -0.000440393  -0.000074596   0.001584214   0.001954938
                         0.165050112   0.007511604  -0.041358333  -0.000982981  -0.000180761  -0.001395504  -0.001843840  -0.011087454

   37    4.2  1.5  0.5   0.012481483   0.051459554   0.004787003  -0.054851151   0.138721549  -0.016421211  -0.029272248  -0.003703006
                         0.001236109  -0.307994181   0.004882635  -0.080826008   0.329362717  -0.015698847   0.085425041  -0.016162729

   38    5.2  1.5  0.5  -0.003694880   0.327333539  -0.016081759  -0.007892824   0.329586040  -0.017427534   0.076884190  -0.015098556
                         0.010404255   0.061392817  -0.013846539  -0.012423668  -0.139655986   0.001989620   0.029356718   0.006168179

   39    6.2  1.5  0.5   0.077224818   0.010086243   0.335216613  -0.010088439   0.005220749   0.021228110   0.013808917   0.016981478
                         0.042494866   0.010927530   0.401850160  -0.009679571   0.016641846   0.365916464  -0.010749876  -0.085906448

   40    7.2  1.5  0.5   0.003286774   0.005417495   0.162644636  -0.004415949  -0.022208216  -0.358095022   0.009997216   0.072768680
                        -0.004342669   0.001246063  -0.131597276   0.004053861  -0.007404853   0.021206230   0.008844837   0.013286359

   41    8.2  1.5  0.5  -0.111155590  -0.006614790   0.022689207  -0.000486821  -0.005060568  -0.075095259  -0.046394150  -0.347920034
                         0.200111085  -0.004612595  -0.015717412   0.000366880  -0.001717661   0.006850264  -0.041003055  -0.061535524

   42    9.2  1.5  0.5  -0.004716480  -0.000282386  -0.000465949   0.000013406  -0.002018664  -0.029440466  -0.013169234  -0.098422692
                         0.008451731  -0.000206520   0.000392984  -0.000020101  -0.000549963   0.001843263  -0.011559454  -0.017265233

   43    1.2  1.5 -0.5   0.110616742  -0.001409455  -0.095209784   0.002149817  -0.000025105  -0.002947456  -0.002010736  -0.004025965
                         0.093652368  -0.003929928  -0.094839375   0.001359915  -0.001034461  -0.012323337   0.002083719   0.014901566

   44    2.2  1.5 -0.5  -0.111081417  -0.007860914  -0.049095305   0.002048260  -0.001200745  -0.015901780  -0.000898054  -0.008401692
                         0.155747537   0.003287296   0.066909051  -0.001109665  -0.000074700   0.002680675  -0.001604456  -0.003686574

   45    3.2  1.5 -0.5   0.006677609   0.110146807   0.000222868  -0.030281908  -0.000733036  -0.000259186  -0.002241297  -0.000798910
                         0.004103513  -0.320184151   0.002816005  -0.044795667  -0.001189813   0.000399304   0.011033132  -0.002295914

   46    4.2  1.5 -0.5  -0.243797301   0.008473763   0.062786771   0.003390738   0.004564829  -0.073430553  -0.009364834  -0.004045491
                        -0.195118881  -0.009247201   0.074828562   0.005937880  -0.022254714  -0.349759091   0.013683784   0.090210510

   47    5.2  1.5 -0.5  -0.202899748  -0.009693210   0.009797792  -0.008931629   0.015461063   0.350474614  -0.011790750  -0.082293933
                         0.264098498  -0.005286052   0.010983964  -0.019250341  -0.008284509  -0.072789403  -0.011269031  -0.000839077

   48    6.2  1.5 -0.5  -0.000224277   0.029182282   0.006558627   0.295102438   0.190838468  -0.005180711  -0.015658711  -0.008912804
                         0.014869193  -0.083173798   0.012347271   0.432166958   0.312931574  -0.016654354   0.086157374  -0.015060145

   49    7.2  1.5 -0.5  -0.003204644   0.005345529  -0.005105199  -0.170991743   0.306488516  -0.014043982   0.072579080  -0.012541838
                         0.004542266   0.001042581   0.003141868   0.120552663  -0.186404235   0.018729743   0.014285842   0.004569220

   50    8.2  1.5 -0.5   0.001850801  -0.216300964  -0.000485820  -0.021313263   0.065640936  -0.003182930  -0.346285142   0.058187158
                        -0.007848950  -0.074925991   0.000368205   0.017538015  -0.037114573   0.004292862  -0.070153912  -0.021164175

   51    9.2  1.5 -0.5   0.000072602  -0.009151756   0.000022996   0.000505235   0.025254499  -0.001346640  -0.097908020   0.016487634
                        -0.000342230  -0.003149970  -0.000007411  -0.000341002  -0.015242997   0.001601257  -0.019978339  -0.005933601

   52    1.2  1.5 -1.5   0.002359499   0.037927418  -0.003171506  -0.193712715  -0.004388195   0.000440459  -0.005351124  -0.000504078
                         0.001186834  -0.049199835  -0.004522047  -0.217752023  -0.007032619  -0.000043069   0.014140000  -0.002513712

   53    2.2  1.5 -1.5  -0.002116918   0.124400782  -0.008037210  -0.190727015   0.000050809   0.000039044  -0.015468715   0.002816314
                         0.004489299   0.051909044   0.002309171   0.180590620   0.001489359   0.000374305  -0.005388465  -0.000706751

   54    3.2  1.5 -1.5   0.024804131   0.001645991   0.079275672  -0.002858687   0.000386385  -0.001003618  -0.000749894  -0.000709747
                         0.013995944   0.003361927   0.094671907   0.006959928  -0.001288223  -0.019521640   0.000045678   0.004209362

   55    4.2  1.5 -1.5  -0.009216120  -0.162492645  -0.005284718  -0.193478873   0.030383359  -0.004015862   0.123937032   0.011109751
                        -0.002568166   0.335498465  -0.006807243  -0.183852507   0.079171805  -0.002869454  -0.334526134   0.067666094

   56    5.2  1.5 -1.5  -0.013439591   0.249232857   0.009571579   0.278069313   0.086432602  -0.006237087  -0.332767093   0.058341566
                         0.008124337   0.146960912  -0.005277494  -0.237945127  -0.036968307   0.001156276  -0.127134879  -0.026002467

   57    6.2  1.5 -1.5   0.203213883   0.007426043  -0.024725500   0.014779305   0.001236484   0.006662079  -0.055774748  -0.061089889
                         0.116182182   0.006451116  -0.028406079  -0.005297239   0.003020246   0.086911323   0.046532824   0.340436896

   58    7.2  1.5 -1.5   0.115348803   0.010703475  -0.021763762   0.004980862   0.006186101   0.074070415   0.040749050   0.347448935
                        -0.203157567   0.007170822   0.017965916  -0.003943194   0.000904655  -0.004262459   0.039351588   0.063244620

   59    8.2  1.5 -1.5   0.024911187   0.001845230   0.195408488  -0.004922259  -0.027170351  -0.356860759   0.008222512   0.071721921
                        -0.042212686   0.000703859  -0.164402861   0.005410943  -0.005262233   0.018623028   0.008970376   0.015340970

   60    9.2  1.5 -1.5   0.000173427   0.000001517  -0.007051478   0.000186894   0.008188361   0.107505318  -0.003248375  -0.026688994
                        -0.000312033   0.000006440   0.005924153  -0.000186939   0.001562744  -0.005461781  -0.003127252  -0.005010012


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5   0.000020111  -0.008979039   0.000046256  -0.001741825  -0.000349726   0.002903027   0.011961194  -0.000421311
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000811458  -0.000303448  -0.000091566   0.002629279  -0.000246698   0.000502597   0.000020105  -0.001240794
                        -0.000890827  -0.008635896  -0.000000557   0.001895243  -0.000323188   0.002374430   0.011774306  -0.001349528

    3    3.2  0.5  0.5   0.002336851   0.000094635  -0.000827288  -0.000405734  -0.001360685  -0.000086891  -0.000436934  -0.011842512
                        -0.009060218   0.000964886  -0.000036389  -0.000217765   0.000276327  -0.000242322  -0.001412320  -0.001785684

    4    4.2  0.5  0.5  -0.001103308  -0.021577363   0.008754554  -0.154363602   0.021951631  -0.150573473  -0.000562964   0.000074898
                        -0.002862149   0.029436460   0.000950871  -0.059359336  -0.050222751   0.332027772   0.000505314  -0.000038744

    5    5.2  0.5  0.5   0.003643149  -0.072773163  -0.013013062  -0.100039828   0.040788969  -0.285132901  -0.002831474   0.000233146
                        -0.002180472  -0.036269630  -0.002773651   0.214729805   0.013907674  -0.138990931  -0.001392494   0.000165693

    6    6.2  0.5  0.5  -0.011809696  -0.001189662  -0.401185311   0.000457915  -0.049569502  -0.001635107   0.000004429  -0.000756668
                         0.046277419   0.001961545  -0.017513961  -0.008565687   0.003437715   0.012363435   0.000051806  -0.000117284

    7    7.2  0.5  0.5   0.022835580   0.001083289   0.012452611   0.001483029  -0.060035757  -0.003271900   0.000038400  -0.000067861
                         0.005756721   0.002090674  -0.216445173  -0.003017198  -0.341538406  -0.048766714   0.000060433   0.000420134

    8    8.2  0.5  0.5  -0.073745606  -0.000325066   0.013474753  -0.000194984   0.035346525   0.003415729   0.000000614   0.000180635
                        -0.019305248  -0.004905745  -0.348266372   0.000840082   0.203908273   0.030734456  -0.000113889  -0.001141379

    9    9.2  0.5  0.5  -0.009661743  -0.080640547  -0.000017750  -0.083808152  -0.002645263   0.021110444  -0.127327226   0.013598607
                        -0.007326819   0.177109770  -0.000108811  -0.045795507   0.008720535  -0.058015904   0.269424782  -0.024797882

   10   10.2  0.5  0.5   0.055062947   0.052206580  -0.022763044   0.002625986  -0.032255521  -0.018451816   0.081248804   0.287058494
                        -0.212639209   0.017620183  -0.000990634  -0.005766515   0.006694583  -0.004370200   0.027952865   0.044298207

   11   11.2  0.5  0.5  -0.020285692   0.187956751   0.004641477   0.014791549   0.016972001  -0.065530253   0.260203357  -0.082809720
                         0.053191421   0.086553869   0.000209556  -0.027581602   0.002048727  -0.024255238   0.124919060  -0.024130246

   12   12.2  0.5  0.5   0.457074300   0.001034694   0.002820364   0.000001009   0.012201198   0.001419562  -0.003308342  -0.093899417
                         0.121131490   0.030412517  -0.062723957   0.000107836   0.069803891   0.010453963   0.056463516   0.578930019

   13    1.2  0.5 -0.5   0.006975519   0.000015623   0.001488347   0.000039525  -0.000493372  -0.000059436   0.000236976   0.006727864
                         0.005653784   0.000012663   0.000904862   0.000024030   0.002860796   0.000344638  -0.000348346  -0.009889693

   14    2.2  0.5 -0.5   0.005673457   0.000069473  -0.003231217  -0.000078531   0.002254471   0.000276560  -0.000417895  -0.009723862
                        -0.006517873   0.001203001   0.000253552  -0.000047092   0.000898822   0.000298035  -0.001784982  -0.006639367

   15    3.2  0.5 -0.5  -0.000681073  -0.003889477   0.000459816  -0.000725802  -0.000224029  -0.000503557   0.005184678   0.000921963
                         0.000690000   0.008510018   0.000024700  -0.000398675  -0.000126809   0.001293928  -0.010795966   0.001155657

   16    4.2  0.5 -0.5  -0.001772357  -0.002659317   0.162736617   0.007974524   0.352787705   0.053222836  -0.000074162  -0.000734454
                         0.036454719   0.001528795   0.029469403   0.003735417  -0.091954594  -0.013096889   0.000040134   0.000181241

   17    5.2  0.5 -0.5   0.079372777   0.001457276  -0.026068613  -0.012560234  -0.088510374  -0.006773231   0.000005858  -0.000441296
                         0.017646010   0.003987899   0.235451234  -0.004390152  -0.304606573  -0.042559214   0.000285967   0.003124346

   18    6.2  0.5 -0.5  -0.000310906   0.019964692   0.004058521  -0.351901503   0.012461466  -0.011812086   0.000328634  -0.000040343
                         0.002272948  -0.043387550  -0.007557055  -0.193446955   0.000489856   0.048264148  -0.000691594  -0.000032801

   19    7.2  0.5 -0.5  -0.002157995   0.021365013   0.000300195  -0.101800893  -0.047501219   0.326366757   0.000385543  -0.000028368
                         0.000942067   0.009906551  -0.003348543   0.191416192  -0.011512248   0.117207146   0.000180206  -0.000065742

   20    8.2  0.5 -0.5   0.003341508  -0.069446363  -0.000269806  -0.169407441   0.029706842  -0.194934751  -0.001045311   0.000094510
                        -0.003606429  -0.031437392   0.000819122   0.304585216   0.008589388  -0.069486716  -0.000492644   0.000063552

   21    9.2  0.5 -0.5  -0.048872782  -0.012119329   0.095402401  -0.000071694  -0.060759658  -0.009043238  -0.028152122  -0.294382685
                         0.188367247  -0.000391695   0.004406437   0.000083755   0.010943486   0.001124719  -0.002704641  -0.046268464

   22   10.2  0.5 -0.5  -0.051652378  -0.091114809   0.000751811  -0.019965097  -0.001170722  -0.012079049  -0.124836595   0.022588516
                        -0.019184100   0.199863586  -0.006291524  -0.010978727  -0.018926109   0.030648534   0.262260815  -0.082900481

   23   11.2  0.5 -0.5  -0.200517319   0.017733473   0.001689377   0.004074893  -0.012765461   0.000865484   0.026627090   0.043072757
                        -0.051108879  -0.054095846  -0.031251891   0.002232145  -0.068699153  -0.017073285  -0.082040945  -0.285403742

   24   12.2  0.5 -0.5  -0.019953507   0.431358179  -0.000056882  -0.030174607   0.010060629  -0.066714817   0.531483916  -0.048545729
                         0.022974971   0.193700478   0.000091619   0.055061260   0.003175572  -0.023886935   0.247995794  -0.029023887

   25    1.2  1.5  1.5  -0.005909500  -0.003764850   0.026452095   0.005476261  -0.162571486  -0.024327429   0.011295184   0.117569561
                         0.054633145   0.001271459  -0.003246429   0.002987758   0.053644970   0.006325909  -0.000981044   0.001790635

   26    2.2  1.5  1.5   0.056658690   0.000938134  -0.002399778  -0.006119209   0.053427839   0.006784102  -0.000987269   0.001691360
                         0.006784001   0.002953132  -0.030847767  -0.003224527   0.160847905   0.025221322  -0.011248966  -0.117040490

   27    3.2  1.5  1.5   0.000103943  -0.012036709  -0.000427465   0.243970107   0.003250109   0.013122661  -0.000349442  -0.002635322
                        -0.002334215   0.027092430  -0.000274260   0.133922286   0.008084390  -0.033691858  -0.000108239  -0.002957512

   28    4.2  1.5  1.5   0.018259718   0.013359157  -0.020363718   0.000727139  -0.005398648  -0.001305606  -0.014470358  -0.129572596
                        -0.169315694  -0.007393844   0.001073000   0.000369923   0.001359437   0.001387004   0.005218532  -0.001001681

   29    5.2  1.5  1.5   0.167229251  -0.007944304  -0.002634859  -0.001201008  -0.001771638   0.001697864   0.006458506  -0.000087486
                         0.016244819   0.020417862  -0.012703732  -0.001423968  -0.003077527  -0.002789418  -0.019759200  -0.129615952

   30    6.2  1.5  1.5   0.022569630   0.134682482   0.000331832   0.039781295   0.003159444  -0.023464209  -0.104804074   0.014659731
                         0.017671360  -0.306128792  -0.000481287   0.021486508  -0.010299614   0.067133868   0.229153755  -0.026034684

   31    7.2  1.5  1.5  -0.011403881   0.306518805  -0.000057466  -0.020955780   0.009673644  -0.064214533  -0.230346432   0.021156138
                         0.016762041   0.135087643  -0.000128685   0.038959424   0.002928314  -0.022445055  -0.105615378   0.010346000

   32    8.2  1.5  1.5   0.000534542  -0.008952192   0.000047438   0.008915972   0.000082906  -0.000442663   0.007781425  -0.000569019
                        -0.000270726  -0.005824820  -0.000020851  -0.015784072  -0.000027391   0.000203418   0.004995757  -0.000573640

   33    9.2  1.5  1.5   0.003006456  -0.064861988  -0.000977593  -0.313828216  -0.012269120   0.078810121  -0.000794537   0.000071877
                        -0.003447852  -0.029124971   0.000553272   0.571727532  -0.004124066   0.028598144  -0.000369061   0.000039665

   34    1.2  1.5  0.5  -0.003983029  -0.011211896   0.000127559  -0.112285288   0.007204633  -0.043466530   0.019888863   0.000480333
                         0.000693196   0.057625813  -0.000308940  -0.090386169  -0.028926045   0.189249427  -0.064717633   0.006502165

   35    2.2  1.5  0.5  -0.002758715   0.087326100   0.000054704   0.100176298  -0.025067719   0.154844564  -0.063611129   0.002631181
                         0.002148490   0.029938226  -0.000202024  -0.139439604  -0.002556000   0.025446042  -0.018713074   0.001888556

   36    3.2  1.5  0.5  -0.028324696  -0.004686829   0.005580724   0.005061270   0.070772930   0.015627554   0.010781413   0.131445798
                         0.106983210  -0.000332036   0.000207801  -0.001349085  -0.011928021  -0.005170659   0.001764658   0.021210521

   37    4.2  1.5  0.5  -0.016454270  -0.078480673  -0.000552912  -0.020953035  -0.001482887   0.010886765   0.061075836  -0.007919862
                        -0.010247863   0.285818957   0.000015546  -0.000868243   0.007422910  -0.049418845  -0.210485798   0.019831241

   38    5.2  1.5  0.5   0.010200901  -0.283794761   0.001154580   0.025933898  -0.005862395   0.041189163   0.209154313  -0.019559199
                        -0.015946106  -0.076987523   0.000229640  -0.053440650  -0.000673113   0.006348348   0.060036352  -0.007976801

   39    6.2  1.5  0.5   0.002772155  -0.009519687  -0.028406073   0.001421038  -0.007080363   0.000348413   0.007298018   0.002329211
                        -0.001335278  -0.007941505  -0.001335426  -0.002081129   0.001241303   0.001301852   0.005946053  -0.001530803

   40    7.2  1.5  0.5  -0.013724688  -0.004406825   0.000522352   0.000433457  -0.000997779   0.000522288   0.003172611  -0.001898612
                        -0.003942339  -0.002319687  -0.016548658  -0.000807129  -0.004820435  -0.000602347   0.002054071   0.009858650

   41    8.2  1.5  0.5  -0.330065166  -0.000706958  -0.002014224   0.000011192  -0.004941628  -0.000573455  -0.001470981  -0.040800561
                        -0.087480517  -0.022248378   0.041938282  -0.000074485  -0.028098906  -0.004138828   0.024760594   0.251629767

   42    9.2  1.5  0.5  -0.100304884  -0.000229885   0.003555750  -0.000330041   0.111045430   0.013102036   0.000007270   0.000246649
                        -0.026605491  -0.006631720  -0.071971197   0.000269878   0.634655302   0.095591851  -0.000150967  -0.001525588

   43    1.2  1.5 -0.5   0.027574786   0.002657803  -0.142899879   0.000051495  -0.193883502  -0.029729678  -0.005105911  -0.064696471
                        -0.051827330   0.003046494   0.018901586  -0.000330248   0.010671093   0.002183817  -0.004054447  -0.019957595

   44    2.2  1.5 -0.5   0.086691812   0.000790326   0.013160589   0.000058206   0.001240105   0.001741464  -0.000081515   0.020307374
                         0.031728140   0.003406157   0.171188471  -0.000201043  -0.156916545  -0.025137441  -0.003237763  -0.063120245

   45    3.2  1.5 -0.5  -0.003850114  -0.045359026   0.003623895  -0.004876545   0.007751355  -0.023782421   0.056397702  -0.004605221
                        -0.002693183   0.100946790   0.003782046  -0.002721576  -0.014521454   0.067716186  -0.120611704   0.009906806

   46    4.2  1.5 -0.5   0.119001051   0.019235497  -0.018354907   0.000464374   0.050550142   0.007566944  -0.020851482  -0.208386359
                        -0.271459835   0.002399446  -0.010143023   0.000300516  -0.002329613  -0.000199785  -0.004606303  -0.067894433

   47    5.2  1.5 -0.5  -0.268947120   0.002115955  -0.005602054  -0.001105857   0.000744140   0.000332998  -0.004406208  -0.068004968
                        -0.118886466  -0.018811151   0.059136175  -0.000403572  -0.041668872  -0.005891508   0.020658581   0.206700785

   48    6.2  1.5 -0.5  -0.012396016  -0.001312818   0.000133115   0.024966045  -0.001223700   0.002426559   0.002575812   0.000811337
                         0.000175282  -0.002782862   0.002516491   0.013615614  -0.000564596  -0.006766401  -0.001064789   0.009378611

   49    7.2  1.5 -0.5  -0.004884142   0.013144610  -0.000048918   0.008150544   0.000682348  -0.004580737  -0.009219198  -0.000086176
                        -0.000972734   0.005579278   0.000914849  -0.014411786  -0.000412321  -0.001802501  -0.003975436   0.003778523

   50    8.2  1.5 -0.5  -0.014558230   0.311500140  -0.000029131  -0.020065460   0.003981159  -0.026850304  -0.231000482   0.021299814
                         0.016838884   0.139869644   0.000069459   0.036881620   0.001268510  -0.009645174  -0.107800754   0.012710967

   51    9.2  1.5 -0.5  -0.004354350   0.094676096  -0.000141812   0.034350096  -0.091974529   0.606550405   0.001400113  -0.000128911
                         0.005007214   0.042489513  -0.000402058  -0.063344830  -0.029157355   0.217290236   0.000654171  -0.000078904

   52    1.2  1.5 -1.5   0.002124195   0.029809665  -0.006231446   0.020916185   0.010368351  -0.080493741  -0.064649326   0.007164392
                         0.003358348  -0.046163693  -0.000291901   0.016515624  -0.022898432   0.151089472   0.098215440  -0.008787214

   53    2.2  1.5 -1.5  -0.002588288   0.048287914   0.006903830  -0.018075694   0.023701451  -0.149427867  -0.097722157   0.008745499
                         0.001703481   0.030405709   0.000423594   0.025112009   0.010971797  -0.079986844  -0.064433819   0.007143542

   54    3.2  1.5 -1.5  -0.007708223  -0.001389023  -0.278038002  -0.000507735  -0.035431934  -0.007414423  -0.000963014  -0.000107059
                         0.028626307   0.001878824  -0.012306949   0.000012284   0.007205798  -0.004576778  -0.003842448   0.000349806

   55    4.2  1.5 -1.5  -0.005722646  -0.092426738  -0.000813495  -0.016842891   0.001588716  -0.002257166   0.072053043  -0.012453963
                        -0.014155823   0.143033282  -0.000061653  -0.011495623  -0.001050890   0.005089074  -0.107695961   0.009029016

   56    5.2  1.5 -1.5  -0.006684739   0.140143682   0.001765971  -0.008850899  -0.003037392   0.002731665  -0.107119180   0.019969942
                         0.020864212   0.092678288  -0.000592834   0.009486246   0.001199100   0.002268894  -0.072977969   0.005774052

   57    6.2  1.5 -1.5   0.088128104   0.028660633  -0.045154206   0.000033518   0.070145004   0.010686731  -0.029771583  -0.248417310
                        -0.322626170   0.000483002  -0.002306327   0.000583632  -0.011713403  -0.001363053  -0.002522956  -0.042239524

   58    7.2  1.5 -1.5  -0.323184273   0.001695166  -0.002332867  -0.000115954  -0.011205219  -0.001241670  -0.003345557  -0.042239576
                        -0.088058925  -0.020202498   0.044176229   0.000080105  -0.067094932  -0.010030587   0.023311566   0.249859770

   59    8.2  1.5 -1.5   0.010622347   0.000244802   0.000581203   0.000029702   0.000275690   0.000041083  -0.000154236   0.000246285
                         0.001111769   0.000546900  -0.018118877   0.000042460  -0.000401653  -0.000077045  -0.000793131  -0.009243783

   60    9.2  1.5 -1.5   0.068728106   0.000164626  -0.028848754  -0.000547909   0.014788263   0.001978923  -0.000007633  -0.000141761
                         0.018215073   0.004571581   0.651558339  -0.000980608   0.082523913   0.012791525   0.000081739   0.000864523


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5   0.000045176  -0.000000000   0.000182326  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000003808  -0.000018039   0.000011183   0.000004992
                         0.000043556  -0.000004963  -0.000172572  -0.000002332

    3    3.2  0.5  0.5  -0.000025219  -0.000153282   0.000007940   0.000043732
                        -0.000004686   0.000014748   0.000019708   0.000005617

    4    4.2  0.5  0.5   0.166245814  -0.026569819  -0.067456673  -0.007976038
                        -0.286866839   0.055418322  -0.098507781  -0.000695696

    5    5.2  0.5  0.5   0.227104030  -0.039655446  -0.207276176   0.005509418
                         0.145298113  -0.018855645   0.101729228   0.005153033

    6    6.2  0.5  0.5   0.010179308   0.066269430   0.000265068   0.348355951
                        -0.008188159  -0.000579369  -0.005899661   0.044525707

    7    7.2  0.5  0.5  -0.004025367   0.028425402   0.003159022  -0.024364474
                         0.055774352   0.313633737  -0.001746197   0.163603723

    8    8.2  0.5  0.5  -0.001401369  -0.014839617   0.000009207  -0.038751575
                        -0.028341899  -0.162351287  -0.006255001   0.317234639

    9    9.2  0.5  0.5  -0.050032645   0.007313115  -0.130705265  -0.001833275
                         0.100047561  -0.016677939  -0.297418314  -0.005559730

   10   10.2  0.5  0.5   0.097565065   0.313489034   0.049517762  -0.061521546
                         0.018846863  -0.031988230  -0.021848936  -0.007536920

   11   11.2  0.5  0.5   0.182378386  -0.103230488   0.231208705   0.014435951
                         0.094103642  -0.007112130  -0.102881544   0.000476403

   12   12.2  0.5  0.5  -0.000006684  -0.000107263   0.000002894  -0.000133699
                        -0.000203688  -0.001145988  -0.000023705   0.001038368

   13    1.2  0.5 -0.5  -0.000000000  -0.000015886   0.000000000   0.000050889
                         0.000000000   0.000042291  -0.000000000   0.000175080

   14    2.2  0.5 -0.5  -0.000001697   0.000042113   0.000000846  -0.000162593
                         0.000018632   0.000011752  -0.000005445   0.000058905

   15    3.2  0.5 -0.5  -0.000067708   0.000004481  -0.000017600   0.000021141
                         0.000138306  -0.000025256  -0.000040426   0.000002124

   16    4.2  0.5 -0.5  -0.061222101  -0.327005290   0.002894231  -0.113420782
                         0.005385160   0.054752118   0.007464891  -0.037281522

   17    5.2  0.5 -0.5   0.003706646   0.056157733  -0.006485976   0.039833853
                         0.043753292   0.263693176  -0.003852214  -0.227432437

   18    6.2  0.5 -0.5   0.023845843  -0.011244730  -0.139985441  -0.005591223
                        -0.061833234   0.006649836  -0.322084591   0.001901181

   19    7.2  0.5 -0.5  -0.283607017   0.053627694  -0.150301689  -0.000795091
                        -0.136898448   0.015844632   0.069059454   0.003520859

   20    8.2  0.5 -0.5   0.146764004  -0.026038985  -0.293811667  -0.006003854
                         0.070982265  -0.011278224   0.125754545   0.001754667

   21    9.2  0.5 -0.5   0.018184399   0.111251626   0.005850467  -0.322079746
                        -0.000981290  -0.011655716   0.000208650  -0.042498905

   22   10.2  0.5 -0.5   0.140182842  -0.016665346   0.024408604  -0.007159805
                        -0.282218696   0.097961281   0.056973028   0.053648131

   23   11.2  0.5 -0.5  -0.029642842   0.023960583  -0.004486671  -0.034260596
                         0.099138378   0.203821642  -0.013729290   0.250735496

   24   12.2  0.5 -0.5   0.001035078  -0.000188329  -0.000959786  -0.000021955
                         0.000503396  -0.000077883   0.000418204   0.000009395

   25    1.2  1.5  1.5  -0.035692442  -0.196111447  -0.005481445   0.039416906
                         0.004259033   0.047752841  -0.007190898  -0.001167430

   26    2.2  1.5  1.5   0.004895331   0.047379295   0.003830007  -0.001112002
                         0.037895264   0.195912656   0.010340286  -0.038916791

   27    3.2  1.5  1.5   0.029875636   0.002739074  -0.142863878  -0.002812379
                        -0.059806873   0.017854814  -0.327409396  -0.005628309

   28    4.2  1.5  1.5   0.030320736   0.155948404   0.002089752  -0.030223527
                        -0.007262671  -0.038685988   0.000217802   0.001517508

   29    5.2  1.5  1.5  -0.000146558   0.040108364   0.000128335  -0.000878664
                         0.033430858   0.154604339   0.000489975  -0.032425469

   30    6.2  1.5  1.5   0.068537434  -0.011541724   0.011780333   0.001034311
                        -0.144448799   0.034238233   0.029450057   0.000428676

   31    7.2  1.5  1.5   0.144563801  -0.026838299  -0.023503570  -0.001601215
                         0.068991731  -0.007782522   0.010169964  -0.000000297

   32    8.2  1.5  1.5   0.022186191  -0.005501309   0.147171077   0.002182246
                         0.009696444  -0.000728283  -0.064051212  -0.000855834

   33    9.2  1.5  1.5   0.063817937  -0.014808499   0.343622422   0.004913372
                         0.030452649  -0.003071272  -0.149977567  -0.001975318

   34    1.2  1.5  0.5  -0.091913724   0.014988264   0.030175102  -0.001011835
                         0.256990616  -0.049978864   0.160323031   0.000419489

   35    2.2  1.5  0.5   0.190702411  -0.036792989  -0.239883622  -0.004588886
                         0.048422460  -0.006226471   0.078677480   0.001890734

   36    3.2  1.5  0.5   0.028449400   0.116843196  -0.005299903  -0.024793973
                        -0.004838296  -0.009791013  -0.001680172  -0.002901951

   37    4.2  1.5  0.5  -0.017861499   0.002961412   0.040057875   0.003362215
                         0.027125648  -0.006642305   0.154761970   0.002660724

   38    5.2  1.5  0.5   0.023680151  -0.007151969   0.157268185  -0.003752454
                         0.016895431  -0.002555382  -0.041495281  -0.003790855

   39    6.2  1.5  0.5   0.007974534   0.031599418   0.003088602   0.162674878
                         0.001297587  -0.002138572  -0.004555575   0.019564059

   40    7.2  1.5  0.5  -0.000568671   0.002256870   0.002636550  -0.019451029
                         0.005683806   0.024825104  -0.003065089   0.160086615

   41    8.2  1.5  0.5  -0.000121860  -0.014224354  -0.000004148  -0.001960588
                        -0.028924927  -0.157650260  -0.001808252   0.024047100

   42    9.2  1.5  0.5   0.000511823   0.033398186  -0.000076161   0.008546995
                         0.067025866   0.366013518   0.004087110  -0.072174063

   43    1.2  1.5 -0.5  -0.052057424  -0.272898496   0.000120407  -0.162373848
                        -0.003543939  -0.004326671  -0.001088708   0.015771640

   44    2.2  1.5 -0.5   0.007109359   0.021730178   0.000534797  -0.008597169
                        -0.036632636  -0.195550361  -0.004934241   0.252310100

   45    3.2  1.5 -0.5  -0.050253298   0.014533445  -0.009706842   0.003092651
                         0.105937729  -0.024931034  -0.022998687   0.004620332

   46    4.2  1.5 -0.5  -0.007259451  -0.031674151   0.003493410  -0.159792154
                         0.000436524   0.007182065   0.002485967   0.004729472

   47    5.2  1.5 -0.5   0.000122795  -0.007489298  -0.004687548  -0.004048696
                        -0.007593785  -0.028108995  -0.002545268  -0.162599964

   48    6.2  1.5 -0.5  -0.013113841   0.001589511   0.064190562   0.003512479
                         0.028829219  -0.007921513   0.150749594  -0.004237360

   49    7.2  1.5 -0.5   0.022445965  -0.005520768   0.148295738   0.002207396
                         0.010842415  -0.001466345  -0.063359617  -0.003387265

   50    8.2  1.5 -0.5  -0.142579575   0.027034712   0.022544239   0.001737549
                        -0.068753192   0.010285454  -0.008594430  -0.000500716

   51    9.2  1.5 -0.5   0.330892765  -0.062565110  -0.066920287  -0.003903429
                         0.159972849  -0.024048609   0.028351749   0.001213883

   52    1.2  1.5 -1.5  -0.113665078   0.016538175  -0.009880569  -0.008435047
                         0.166794136  -0.031915177  -0.038176298  -0.003256567

   53    2.2  1.5 -1.5  -0.166739397   0.033753558   0.037680588   0.010998346
                        -0.113245484   0.017908451  -0.009794208   0.000791735

   54    3.2  1.5 -1.5  -0.015751283  -0.066492850   0.006189597  -0.354272543
                        -0.008842736   0.006936620   0.001129703  -0.045803553

   55    4.2  1.5 -1.5   0.091054070  -0.017461032   0.006978450   0.000792415
                        -0.132384541   0.025830327   0.029445979   0.001945914

   56    5.2  1.5 -1.5  -0.130626143   0.031347249   0.031382107   0.000506323
                        -0.091912965   0.011618679  -0.008206488  -0.000013522

   57    6.2  1.5 -1.5  -0.036110141  -0.159324231  -0.000700326   0.031567691
                        -0.001235204   0.013365068  -0.000873560   0.003092407

   58    7.2  1.5 -1.5  -0.002152147   0.013749910   0.000447199   0.003205752
                         0.027860908   0.159591640   0.001537499  -0.025408052

   59    8.2  1.5 -1.5  -0.001252752   0.001275439   0.000212738  -0.020429042
                         0.005406053   0.024178944  -0.002334393   0.159199679

   60    9.2  1.5 -1.5  -0.002332253   0.006066300   0.000525452  -0.048109342
                         0.014942722   0.070450642  -0.005269441   0.371826749


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.118%  25.397%   0.000%  41.083%  33.307%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.725%  11.280%   0.026%  54.566%  32.759%   0.549%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  62.354%   0.024%   3.370%   0.853%   0.426%  32.878%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.024%   0.508%   0.013%   0.314%
    5    5.2  0.5  0.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.052%   0.577%   0.064%   1.347%
    6    6.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   2.194%   0.133%   0.102%   0.009%
    7    7.2  0.5  0.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.225%   0.014%   0.118%   0.007%
    8    8.2  0.5  0.5   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%   0.287%   0.016%   1.559%   0.067%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.000%   0.004%   0.000%
   13    1.2  0.5 -0.5  25.397%   0.118%  41.083%   0.000%   0.000%  33.307%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5  11.280%   0.725%  54.566%   0.026%   0.549%  32.759%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.024%  62.354%   0.853%   3.370%  32.878%   0.426%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.508%   0.024%   0.314%   0.013%
   17    5.2  0.5 -0.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.577%   0.052%   1.347%   0.064%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.133%   2.194%   0.009%   0.102%
   19    7.2  0.5 -0.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.014%   0.225%   0.007%   0.118%
   20    8.2  0.5 -0.5   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%   0.016%   0.287%   0.067%   1.559%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%   0.004%
   25    1.2  1.5  1.5   0.005%   0.000%   0.000%   0.000%   0.000%   0.003%  23.584%   1.409%  17.637%   0.891%
   26    2.2  1.5  1.5   0.005%   0.000%   0.000%   0.000%   0.000%   0.003%  24.639%   1.202%   8.203%   0.283%
   27    3.2  1.5  1.5   0.000%   0.001%   0.000%   0.015%   0.000%   0.000%   0.551%  10.839%   0.801%  17.276%
   28    4.2  1.5  1.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.003%   2.152%   0.118%   0.222%   0.008%
   29    5.2  1.5  1.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.003%   1.927%   0.106%   2.790%   0.110%
   30    6.2  1.5  1.5   0.000%   0.004%   0.000%   0.000%   0.011%   0.000%   0.003%   0.002%   0.002%   0.176%
   31    7.2  1.5  1.5   0.000%   0.004%   0.000%   0.000%   0.011%   0.000%   0.001%   0.001%   0.003%   0.120%
   32    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.156%   2.826%   0.197%   4.534%
   33    9.2  1.5  1.5   0.000%   0.002%   0.000%   0.043%   0.000%   0.000%   0.000%   0.001%   0.000%   0.004%
   34    1.2  1.5  0.5   0.000%   0.010%   0.000%   0.003%   0.001%   0.000%   0.498%   9.006%   1.005%  21.604%
   35    2.2  1.5  0.5   0.000%   0.004%   0.000%   0.008%   0.001%   0.000%   0.429%   7.832%   0.298%   5.376%
   36    3.2  1.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.003%   0.039%   0.004%   6.356%   0.417%
   37    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.004%   0.008%   0.000%   0.006%   0.098%   0.055%   0.939%
   38    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.004%   0.008%   0.000%   0.002%   0.053%   0.018%   0.089%
   39    6.2  1.5  0.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.283%   0.014%   6.452%   0.298%
   40    7.2  1.5  0.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   7.744%   0.429%   0.025%   0.001%
   41    8.2  1.5  0.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.011%   0.017%   0.001%   0.189%   0.008%
   42    9.2  1.5  0.5   0.043%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.010%   0.000%   0.003%   0.000%   0.000%   0.001%   9.006%   0.498%  21.604%   1.005%
   44    2.2  1.5 -0.5   0.004%   0.000%   0.008%   0.000%   0.000%   0.001%   7.832%   0.429%   5.376%   0.298%
   45    3.2  1.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.003%   0.000%   0.004%   0.039%   0.417%   6.356%
   46    4.2  1.5 -0.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.008%   0.098%   0.006%   0.939%   0.055%
   47    5.2  1.5 -0.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.008%   0.053%   0.002%   0.089%   0.018%
   48    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.014%   0.283%   0.298%   6.452%
   49    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.429%   7.744%   0.001%   0.025%
   50    8.2  1.5 -0.5   0.000%   0.004%   0.000%   0.000%   0.011%   0.000%   0.001%   0.017%   0.008%   0.189%
   51    9.2  1.5 -0.5   0.000%   0.043%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.000%   0.005%   0.000%   0.000%   0.003%   0.000%   1.409%  23.584%   0.891%  17.637%
   53    2.2  1.5 -1.5   0.000%   0.005%   0.000%   0.000%   0.003%   0.000%   1.202%  24.639%   0.283%   8.203%
   54    3.2  1.5 -1.5   0.001%   0.000%   0.015%   0.000%   0.000%   0.000%  10.839%   0.551%  17.276%   0.801%
   55    4.2  1.5 -1.5   0.000%   0.004%   0.000%   0.000%   0.003%   0.000%   0.118%   2.152%   0.008%   0.222%
   56    5.2  1.5 -1.5   0.000%   0.004%   0.000%   0.000%   0.003%   0.000%   0.106%   1.927%   0.110%   2.790%
   57    6.2  1.5 -1.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.011%   0.002%   0.003%   0.176%   0.002%
   58    7.2  1.5 -1.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.011%   0.001%   0.001%   0.120%   0.003%
   59    8.2  1.5 -1.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   2.826%   0.156%   4.534%   0.197%
   60    9.2  1.5 -1.5   0.002%   0.000%   0.043%   0.000%   0.000%   0.000%   0.001%   0.000%   0.004%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.010%   0.000%   0.007%   0.002%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.014%   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.016%   0.000%   0.000%   0.002%   0.000%   0.000%
    4    4.2  0.5  0.5   0.003%   1.114%   0.000%   0.032%   0.003%   0.330%   0.000%   0.000%   0.109%   0.520%
    5    5.2  0.5  0.5   0.001%   0.162%   0.002%   0.204%   0.001%   0.138%   0.001%   0.000%   0.003%   0.016%
    6    6.2  0.5  0.5   0.007%   0.001%   0.301%   0.003%   0.017%   0.000%   0.000%   0.000%   0.001%   0.001%
    7    7.2  0.5  0.5   1.438%   0.005%   0.070%   0.000%   0.373%   0.003%   0.000%   0.000%   0.388%   0.081%
    8    8.2  0.5  0.5   0.204%   0.001%   0.306%   0.002%   0.084%   0.001%   0.000%   0.000%   0.000%   0.000%
    9    9.2  0.5  0.5   0.000%   0.000%   0.045%   8.098%   0.007%   0.664%  12.214%   0.035%   0.000%   0.000%
   10   10.2  0.5  0.5   0.001%   0.000%   0.519%   0.130%   7.519%   0.451%   0.738%  11.716%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.002%   0.003%   4.286%   0.558%   3.857%  11.610%   0.745%   0.000%   0.000%
   12   12.2  0.5  0.5   0.002%   0.000%   0.001%   0.000%   0.001%   0.000%   0.101%  32.855%   0.001%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.010%   0.000%   0.007%   0.000%   0.000%   0.002%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.014%   0.000%   0.002%   0.000%   0.000%   0.002%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.016%   0.002%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   1.114%   0.003%   0.032%   0.000%   0.330%   0.003%   0.000%   0.000%   0.520%   0.109%
   17    5.2  0.5 -0.5   0.162%   0.001%   0.204%   0.002%   0.138%   0.001%   0.000%   0.001%   0.016%   0.003%
   18    6.2  0.5 -0.5   0.001%   0.007%   0.003%   0.301%   0.000%   0.017%   0.000%   0.000%   0.001%   0.001%
   19    7.2  0.5 -0.5   0.005%   1.438%   0.000%   0.070%   0.003%   0.373%   0.000%   0.000%   0.081%   0.388%
   20    8.2  0.5 -0.5   0.001%   0.204%   0.002%   0.306%   0.001%   0.084%   0.000%   0.000%   0.000%   0.000%
   21    9.2  0.5 -0.5   0.000%   0.000%   8.098%   0.045%   0.664%   0.007%   0.035%  12.214%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.001%   0.130%   0.519%   0.451%   7.519%  11.716%   0.738%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.002%   0.000%   4.286%   0.003%   3.857%   0.558%   0.745%  11.610%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.001%  32.855%   0.101%   0.000%   0.001%
   25    1.2  1.5  1.5   0.482%   0.004%   0.861%   0.020%  10.766%   0.096%   0.022%   7.054%   0.000%   0.000%
   26    2.2  1.5  1.5   9.404%   0.037%   0.662%   0.006%  11.486%   0.131%   0.021%   6.726%   0.000%   0.000%
   27    3.2  1.5  1.5   0.022%   2.882%   0.161%  33.471%   0.047%   2.038%   0.000%   0.008%   0.000%   0.000%
   28    4.2  1.5  1.5   4.171%   0.009%   0.111%   0.001%   1.897%   0.020%   0.001%   0.128%   7.589%   1.601%
   29    5.2  1.5  1.5   1.667%   0.013%   0.156%   0.002%   1.764%   0.031%   0.002%   0.196%   2.039%   0.654%
   30    6.2  1.5  1.5   0.008%   1.204%   0.002%   0.106%   0.034%   1.751%   0.552%   0.004%   2.404%  10.438%
   31    7.2  1.5  1.5   0.006%   1.345%   0.001%   0.074%   0.016%   1.811%   0.716%   0.002%   1.169%   5.494%
   32    8.2  1.5  1.5   0.002%   0.762%   0.010%   1.819%   0.001%   0.080%   0.004%   0.000%   1.861%   8.728%
   33    9.2  1.5  1.5   0.000%   0.001%   0.082%  15.144%   0.007%   0.958%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.003%   3.279%   0.032%   6.230%   0.202%  22.127%   2.422%   0.007%   0.000%   0.000%
   35    2.2  1.5  0.5   0.130%  22.342%   0.113%  18.239%   0.120%   9.282%   2.216%   0.001%   0.000%   0.000%
   36    3.2  1.5  0.5  41.479%   0.145%   0.344%   0.024%   3.721%   0.082%   0.013%   8.381%   0.000%   0.000%
   37    4.2  1.5  0.5   0.010%   2.196%   0.009%   1.725%   0.001%   0.129%   0.459%   0.001%   0.840%   3.524%
   38    5.2  1.5  0.5   0.013%   2.984%   0.023%   1.839%   0.002%   0.105%   0.379%   0.001%   5.649%  22.948%
   39    6.2  1.5  0.5   1.112%   0.015%   1.879%   0.023%   0.133%   0.002%   0.001%   0.001%  13.460%   3.739%
   40    7.2  1.5  0.5   0.048%   0.000%   1.758%   0.009%   0.070%   0.001%   0.000%   0.002%   0.051%   0.014%
   41    8.2  1.5  0.5   1.278%   0.004%   0.072%   0.000%   1.797%   0.017%   0.002%   0.656%   5.502%   1.172%
   42    9.2  1.5  0.5   0.001%   0.000%   0.959%   0.006%  15.103%   0.140%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   3.279%   0.003%   6.230%   0.032%  22.127%   0.202%   0.007%   2.422%   0.000%   0.000%
   44    2.2  1.5 -0.5  22.342%   0.130%  18.239%   0.113%   9.282%   0.120%   0.001%   2.216%   0.000%   0.000%
   45    3.2  1.5 -0.5   0.145%  41.479%   0.024%   0.344%   0.082%   3.721%   8.381%   0.013%   0.000%   0.000%
   46    4.2  1.5 -0.5   2.196%   0.010%   1.725%   0.009%   0.129%   0.001%   0.001%   0.459%   3.524%   0.840%
   47    5.2  1.5 -0.5   2.984%   0.013%   1.839%   0.023%   0.105%   0.002%   0.001%   0.379%  22.948%   5.649%
   48    6.2  1.5 -0.5   0.015%   1.112%   0.023%   1.879%   0.002%   0.133%   0.001%   0.001%   3.739%  13.460%
   49    7.2  1.5 -0.5   0.000%   0.048%   0.009%   1.758%   0.001%   0.070%   0.002%   0.000%   0.014%   0.051%
   50    8.2  1.5 -0.5   0.004%   1.278%   0.000%   0.072%   0.017%   1.797%   0.656%   0.002%   1.172%   5.502%
   51    9.2  1.5 -0.5   0.000%   0.001%   0.006%   0.959%   0.140%  15.103%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.004%   0.482%   0.020%   0.861%   0.096%  10.766%   7.054%   0.022%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.037%   9.404%   0.006%   0.662%   0.131%  11.486%   6.726%   0.021%   0.000%   0.000%
   54    3.2  1.5 -1.5   2.882%   0.022%  33.471%   0.161%   2.038%   0.047%   0.008%   0.000%   0.000%   0.000%
   55    4.2  1.5 -1.5   0.009%   4.171%   0.001%   0.111%   0.020%   1.897%   0.128%   0.001%   1.601%   7.589%
   56    5.2  1.5 -1.5   0.013%   1.667%   0.002%   0.156%   0.031%   1.764%   0.196%   0.002%   0.654%   2.039%
   57    6.2  1.5 -1.5   1.204%   0.008%   0.106%   0.002%   1.751%   0.034%   0.004%   0.552%  10.438%   2.404%
   58    7.2  1.5 -1.5   1.345%   0.006%   0.074%   0.001%   1.811%   0.016%   0.002%   0.716%   5.494%   1.169%
   59    8.2  1.5 -1.5   0.762%   0.002%   1.819%   0.010%   0.080%   0.001%   0.000%   0.004%   8.728%   1.861%
   60    9.2  1.5 -1.5   0.001%   0.000%  15.144%   0.082%   0.958%   0.007%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.100%  22.200%   2.980%   0.002%
    5    5.2  0.5  0.5   0.180%   0.000%   0.000%   0.000%   0.000%   0.001%   0.045%   7.723%  13.849%   0.020%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%   0.510%   0.018%   0.006%  13.853%
    7    7.2  0.5  0.5   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%  38.110%   0.176%   0.019%   6.799%
    8    8.2  0.5  0.5   0.000%   0.129%   0.000%   0.000%   0.000%   0.000%   7.227%   0.028%   0.045%  38.375%
    9    9.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.003%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%  22.200%   0.100%   0.002%   2.980%
   17    5.2  0.5 -0.5   0.000%   0.180%   0.000%   0.000%   0.001%   0.000%   7.723%   0.045%   0.020%  13.849%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%   0.018%   0.510%  13.853%   0.006%
   19    7.2  0.5 -0.5   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.176%  38.110%   6.799%   0.019%
   20    8.2  0.5 -0.5   0.129%   0.000%   0.000%   0.000%   0.000%   0.000%   0.028%   7.227%  38.375%   0.045%
   21    9.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.037%
   26    2.2  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.036%   0.000%   0.000%   0.027%
   27    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.008%   0.000%
   28    4.2  1.5  1.5   0.021%   2.332%   0.029%  15.395%   5.804%   0.187%   7.318%   0.028%   0.003%   2.327%
   29    5.2  1.5  1.5   0.088%   6.064%   0.027%  21.943%   3.003%   0.057%   2.385%   0.009%   0.009%   6.724%
   30    6.2  1.5  1.5  36.055%   0.082%   1.009%   0.025%   0.051%   2.730%   0.001%   0.610%   0.064%   0.013%
   31    7.2  1.5  1.5  26.933%   0.021%   1.660%   0.008%   0.440%  14.001%   0.016%   3.278%   0.198%   0.001%
   32    8.2  1.5  1.5   4.569%   0.004%   8.711%   0.017%   0.064%   1.971%   0.003%   0.692%   3.881%   0.005%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   34    1.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.017%   0.000%
   35    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%   0.013%   0.000%
   36    3.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.165%   0.000%   0.000%   0.003%
   37    4.2  1.5  0.5  10.164%   0.018%   5.131%   0.014%   0.816%  25.356%   0.015%   3.697%   0.307%   0.005%
   38    5.2  1.5  0.5   1.223%   0.006%  12.667%   0.059%   0.155%   4.707%   0.006%   2.407%   0.313%   0.012%
   39    6.2  1.5  0.5   0.009%   8.668%   0.060%   5.094%   0.206%   0.031%   0.375%   0.001%   0.010%   8.999%
   40    7.2  1.5  0.5   0.000%   0.366%   0.048%  26.191%   1.591%   0.046%   0.002%   0.001%   0.002%   0.970%
   41    8.2  1.5  0.5   0.003%   3.042%   0.003%   1.908%  37.580%   1.197%   2.745%   0.011%   0.000%   0.101%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.017%
   44    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.043%   0.000%   0.000%   0.013%
   45    3.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.165%   0.003%   0.000%
   46    4.2  1.5 -0.5   0.018%  10.164%   0.014%   5.131%  25.356%   0.816%   3.697%   0.015%   0.005%   0.307%
   47    5.2  1.5 -0.5   0.006%   1.223%   0.059%  12.667%   4.707%   0.155%   2.407%   0.006%   0.012%   0.313%
   48    6.2  1.5 -0.5   8.668%   0.009%   5.094%   0.060%   0.031%   0.206%   0.001%   0.375%   8.999%   0.010%
   49    7.2  1.5 -0.5   0.366%   0.000%  26.191%   0.048%   0.046%   1.591%   0.001%   0.002%   0.970%   0.002%
   50    8.2  1.5 -0.5   3.042%   0.003%   1.908%   0.003%   1.197%  37.580%   0.011%   2.745%   0.101%   0.000%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.037%   0.000%
   53    2.2  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.036%   0.027%   0.000%
   54    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.008%
   55    4.2  1.5 -1.5   2.332%   0.021%  15.395%   0.029%   0.187%   5.804%   0.028%   7.318%   2.327%   0.003%
   56    5.2  1.5 -1.5   6.064%   0.088%  21.943%   0.027%   0.057%   3.003%   0.009%   2.385%   6.724%   0.009%
   57    6.2  1.5 -1.5   0.082%  36.055%   0.025%   1.009%   2.730%   0.051%   0.610%   0.001%   0.013%   0.064%
   58    7.2  1.5 -1.5   0.021%  26.933%   0.008%   1.660%  14.001%   0.440%   3.278%   0.016%   0.001%   0.198%
   59    8.2  1.5 -1.5   0.004%   4.569%   0.017%   8.711%   1.971%   0.064%   0.692%   0.003%   0.005%   3.881%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.011%   0.002%   0.000%   0.018%   0.002%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.003%   0.002%   0.001%   0.026%   0.002%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.006%   0.023%   0.002%   0.000%   0.000%   0.002%   0.000%   0.000%
    4    4.2  0.5  0.5  19.987%   0.030%   6.964%   2.195%   0.027%   0.717%   0.000%   0.000%   0.027%   5.880%
    5    5.2  0.5  0.5  23.892%   0.045%   3.889%   1.085%   0.051%   4.816%   0.001%   0.000%   0.059%   6.537%
    6    6.2  0.5  0.5   0.060%  31.157%   0.150%   0.478%   9.017%   0.128%   0.000%   0.000%   7.068%   0.065%
    7    7.2  0.5  0.5   0.004%   0.696%   1.843%   6.191%   1.496%   0.032%   0.000%   0.000%   0.047%   0.002%
    8    8.2  0.5  0.5   0.000%   0.230%   0.362%   1.176%   7.827%   0.148%   0.000%   0.000%   0.005%   0.000%
    9    9.2  0.5  0.5   0.000%   0.000%   1.412%   0.412%   0.445%  23.697%   6.948%   0.036%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   8.097%  15.507%   1.337%   0.761%   0.416%   7.021%   0.000%   0.000%
   11   11.2  0.5  0.5   0.001%   0.000%   7.311%   5.902%   0.506%  12.106%   6.796%   0.428%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.051%   8.883%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.002%   0.011%   0.018%   0.000%   0.000%   0.002%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.002%   0.003%   0.026%   0.001%   0.000%   0.002%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.023%   0.006%   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.030%  19.987%   2.195%   6.964%   0.717%   0.027%   0.000%   0.000%   5.880%   0.027%
   17    5.2  0.5 -0.5   0.045%  23.892%   1.085%   3.889%   4.816%   0.051%   0.000%   0.001%   6.537%   0.059%
   18    6.2  0.5 -0.5  31.157%   0.060%   0.478%   0.150%   0.128%   9.017%   0.000%   0.000%   0.065%   7.068%
   19    7.2  0.5 -0.5   0.696%   0.004%   6.191%   1.843%   0.032%   1.496%   0.000%   0.000%   0.002%   0.047%
   20    8.2  0.5 -0.5   0.230%   0.000%   1.176%   0.362%   0.148%   7.827%   0.000%   0.000%   0.000%   0.005%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.412%   1.412%  23.697%   0.445%   0.036%   6.948%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%  15.507%   8.097%   0.761%   1.337%   7.021%   0.416%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.001%   5.902%   7.311%  12.106%   0.506%   0.428%   6.796%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.883%   0.051%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.002%   0.190%   0.635%   0.055%   0.003%   0.093%  16.134%   1.947%   0.011%
   26    2.2  1.5  1.5   0.000%   0.004%   0.206%   0.640%   0.044%   0.005%   0.093%  16.065%   2.193%   0.001%
   27    3.2  1.5  1.5   0.032%   0.000%   0.134%   0.044%   0.048%   2.451%   0.000%   0.018%   0.015%   6.266%
   28    4.2  1.5  1.5   0.000%   1.157%   0.385%   1.163%   0.113%   0.003%   0.003%   0.225%   3.064%   0.011%
   29    5.2  1.5  1.5   0.000%   0.879%   0.385%   1.151%   0.102%   0.001%   0.003%   0.217%   2.312%   0.008%
   30    6.2  1.5  1.5   0.008%   0.002%   1.116%   0.416%   0.001%   0.100%   0.877%   0.007%   0.004%   0.006%
   31    7.2  1.5  1.5   0.000%   0.000%   1.269%   0.376%   0.002%   0.081%   0.901%   0.004%   0.001%   0.012%
   32    8.2  1.5  1.5   9.974%   0.001%   0.063%   0.020%   0.029%   1.543%   0.002%   0.000%   0.092%  24.517%
   33    9.2  1.5  1.5   0.001%   0.000%   1.164%   0.370%   0.413%  22.212%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.008%   0.000%   1.246%   0.399%   0.007%   0.410%   5.377%   0.012%   0.019%   4.989%
   35    2.2  1.5  0.5   0.014%   0.000%   0.520%   0.172%   0.025%   1.368%   5.436%   0.020%   0.016%   4.434%
   36    3.2  1.5  0.5   0.000%   0.000%   0.093%   0.225%   0.023%   0.000%   0.076%  21.522%   0.014%   0.005%
   37    4.2  1.5  0.5   0.186%   0.000%   0.076%   0.026%   0.030%   1.503%   0.695%   0.004%   0.005%   0.908%
   38    5.2  1.5  0.5   0.010%   0.003%   0.077%   0.029%   0.017%   1.520%   0.683%   0.004%   0.018%   0.515%
   39    6.2  1.5  0.5   0.000%   0.105%   0.031%   0.082%   1.498%   0.016%   0.001%   0.000%   2.008%   0.014%
   40    7.2  1.5  0.5   0.002%  11.502%   0.022%   0.066%   1.564%   0.031%   0.000%   0.003%  26.725%   0.104%
   41    8.2  1.5  0.5   0.000%   0.006%   0.390%   1.253%   0.080%   0.002%   0.005%   0.929%   0.076%   0.000%
   42    9.2  1.5  0.5   0.000%   0.000%   5.346%  17.198%   1.508%   0.031%   0.000%   0.001%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.000%   0.008%   0.399%   1.246%   0.410%   0.007%   0.012%   5.377%   4.989%   0.019%
   44    2.2  1.5 -0.5   0.000%   0.014%   0.172%   0.520%   1.368%   0.025%   0.020%   5.436%   4.434%   0.016%
   45    3.2  1.5 -0.5   0.000%   0.000%   0.225%   0.093%   0.000%   0.023%  21.522%   0.076%   0.005%   0.014%
   46    4.2  1.5 -0.5   0.000%   0.186%   0.026%   0.076%   1.503%   0.030%   0.004%   0.695%   0.908%   0.005%
   47    5.2  1.5 -0.5   0.003%   0.010%   0.029%   0.077%   1.520%   0.017%   0.004%   0.683%   0.515%   0.018%
   48    6.2  1.5 -0.5   0.105%   0.000%   0.082%   0.031%   0.016%   1.498%   0.000%   0.001%   0.014%   2.008%
   49    7.2  1.5 -0.5  11.502%   0.002%   0.066%   0.022%   0.031%   1.564%   0.003%   0.000%   0.104%  26.725%
   50    8.2  1.5 -0.5   0.006%   0.000%   1.253%   0.390%   0.002%   0.080%   0.929%   0.005%   0.000%   0.076%
   51    9.2  1.5 -0.5   0.000%   0.000%  17.198%   5.346%   0.031%   1.508%   0.001%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.002%   0.000%   0.635%   0.190%   0.003%   0.055%  16.134%   0.093%   0.011%   1.947%
   53    2.2  1.5 -1.5   0.004%   0.000%   0.640%   0.206%   0.005%   0.044%  16.065%   0.093%   0.001%   2.193%
   54    3.2  1.5 -1.5   0.000%   0.032%   0.044%   0.134%   2.451%   0.048%   0.018%   0.000%   6.266%   0.015%
   55    4.2  1.5 -1.5   1.157%   0.000%   1.163%   0.385%   0.003%   0.113%   0.225%   0.003%   0.011%   3.064%
   56    5.2  1.5 -1.5   0.879%   0.000%   1.151%   0.385%   0.001%   0.102%   0.217%   0.003%   0.008%   2.312%
   57    6.2  1.5 -1.5   0.002%   0.008%   0.416%   1.116%   0.100%   0.001%   0.007%   0.877%   0.006%   0.004%
   58    7.2  1.5 -1.5   0.000%   0.000%   0.376%   1.269%   0.081%   0.002%   0.004%   0.901%   0.012%   0.001%
   59    8.2  1.5 -1.5   0.001%   9.974%   0.020%   0.063%   1.543%   0.029%   0.000%   0.002%  24.517%   0.092%
   60    9.2  1.5 -1.5   0.000%   0.001%   0.370%   1.164%  22.212%   0.413%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.007%   0.000%   0.000%   0.008%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%   0.003%   0.000%   0.000%   0.007%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.017%   0.009%   0.000%
    4    4.2  0.5  0.5   0.008%   5.269%   0.006%   0.986%   0.035%   0.000%   0.328%   0.010%   0.001%   0.133%
    5    5.2  0.5  0.5   0.012%   3.017%   0.005%   2.513%   0.146%   0.000%   0.199%   0.005%   0.002%   0.661%
    6    6.2  0.5  0.5   0.052%   0.007%   4.904%   0.009%   0.001%   0.310%   0.001%   0.015%   0.228%   0.001%
    7    7.2  0.5  0.5   8.873%   0.018%   2.744%   0.001%   0.000%   0.037%   0.005%   0.183%   0.055%   0.001%
    8    8.2  0.5  0.5   2.766%   0.004%   8.885%   0.007%   0.001%   0.146%   0.001%   0.043%   0.581%   0.002%
    9    9.2  0.5  0.5   0.000%   0.001%   0.000%   0.001%  18.294%   0.109%   1.628%   0.047%   0.015%   3.787%
   10   10.2  0.5  0.5   0.005%   0.000%   0.002%   0.000%   0.460%   0.918%   1.334%  16.964%   4.825%   0.304%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.003%   9.610%   0.164%   8.685%   1.411%   0.324%   4.282%
   12   12.2  0.5  0.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.001%  22.359%   0.093%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%   0.007%   0.008%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%   0.003%   0.007%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.017%   0.000%   0.000%   0.009%
   16    4.2  0.5 -0.5   5.269%   0.008%   0.986%   0.006%   0.000%   0.035%   0.010%   0.328%   0.133%   0.001%
   17    5.2  0.5 -0.5   3.017%   0.012%   2.513%   0.005%   0.000%   0.146%   0.005%   0.199%   0.661%   0.002%
   18    6.2  0.5 -0.5   0.007%   0.052%   0.009%   4.904%   0.310%   0.001%   0.015%   0.001%   0.001%   0.228%
   19    7.2  0.5 -0.5   0.018%   8.873%   0.001%   2.744%   0.037%   0.000%   0.183%   0.005%   0.001%   0.055%
   20    8.2  0.5 -0.5   0.004%   2.766%   0.007%   8.885%   0.146%   0.001%   0.043%   0.001%   0.002%   0.581%
   21    9.2  0.5 -0.5   0.001%   0.000%   0.001%   0.000%   0.109%  18.294%   0.047%   1.628%   3.787%   0.015%
   22   10.2  0.5 -0.5   0.000%   0.005%   0.000%   0.002%   0.918%   0.460%  16.964%   1.334%   0.304%   4.825%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.164%   9.610%   1.411%   8.685%   4.282%   0.324%
   24   12.2  0.5 -0.5   0.000%   0.002%   0.000%   0.001%   0.001%   0.000%   0.001%   0.000%   0.093%  22.359%
   25    1.2  1.5  1.5   0.386%   0.001%   8.494%   0.003%   0.000%   0.007%   0.001%   0.023%   0.302%   0.002%
   26    2.2  1.5  1.5   1.817%   0.002%   6.899%   0.007%   0.000%   0.000%   0.001%   0.027%   0.326%   0.001%
   27    3.2  1.5  1.5   0.001%   0.081%   0.006%   1.525%   0.038%   0.000%   0.002%   0.000%   0.001%   0.088%
   28    4.2  1.5  1.5  13.896%   0.009%   7.124%   0.007%   0.002%   0.719%   0.470%  12.727%   2.900%   0.023%
   29    5.2  1.5  1.5   8.371%   0.025%  13.394%   0.012%   0.004%   0.884%   0.408%  12.690%   2.823%   0.048%
   30    6.2  1.5  1.5   0.010%   5.479%   0.025%   0.142%   0.760%   0.001%  11.963%   0.528%   0.082%  11.185%
   31    7.2  1.5  1.5   0.017%   5.458%   0.004%   0.080%   0.550%   0.004%  12.472%   0.321%   0.041%  11.220%
   32    8.2  1.5  1.5   0.000%   0.240%   0.005%   6.521%  12.770%   0.077%   0.538%   0.015%   0.000%   0.011%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.008%   1.159%   0.007%   0.074%   0.002%   0.002%   0.506%
   34    1.2  1.5  0.5   0.002%   2.101%   0.001%   1.806%   0.016%   0.000%   0.024%   0.001%   0.002%   0.345%
   35    2.2  1.5  0.5   0.007%   3.660%   0.001%   0.689%   0.026%   0.000%   0.008%   0.000%   0.001%   0.852%
   36    3.2  1.5  0.5  11.465%   0.006%   0.292%   0.001%   0.000%   0.000%   0.001%   0.013%   1.225%   0.002%
   37    4.2  1.5  0.5   0.016%   9.751%   0.005%   0.954%  12.772%   0.052%   0.815%   0.027%   0.038%   8.785%
   38    5.2  1.5  0.5   0.012%  11.092%   0.045%   0.022%  12.813%   0.031%   0.677%   0.027%   0.036%   8.647%
   39    6.2  1.5  0.5   0.777%   0.022%  27.385%   0.020%   0.030%  13.435%   0.031%   0.767%   0.001%   0.015%
   40    7.2  1.5  0.5   0.003%   0.003%   4.377%   0.004%   0.055%  12.868%   0.018%   0.547%   0.020%   0.002%
   41    8.2  1.5  0.5   5.240%   0.007%   0.076%   0.000%   0.003%   0.569%   0.383%  12.483%  11.660%   0.050%
   42    9.2  1.5  0.5   0.009%   0.000%   0.000%   0.000%   0.000%   0.087%   0.031%   0.999%   1.077%   0.004%
   43    1.2  1.5 -0.5   2.101%   0.002%   1.806%   0.001%   0.000%   0.016%   0.001%   0.024%   0.345%   0.002%
   44    2.2  1.5 -0.5   3.660%   0.007%   0.689%   0.001%   0.000%   0.026%   0.000%   0.008%   0.852%   0.001%
   45    3.2  1.5 -0.5   0.006%  11.465%   0.001%   0.292%   0.000%   0.000%   0.013%   0.001%   0.002%   1.225%
   46    4.2  1.5 -0.5   9.751%   0.016%   0.954%   0.005%   0.052%  12.772%   0.027%   0.815%   8.785%   0.038%
   47    5.2  1.5 -0.5  11.092%   0.012%   0.022%   0.045%   0.031%  12.813%   0.027%   0.677%   8.647%   0.036%
   48    6.2  1.5 -0.5   0.022%   0.777%   0.020%  27.385%  13.435%   0.030%   0.767%   0.031%   0.015%   0.001%
   49    7.2  1.5 -0.5   0.003%   0.003%   0.004%   4.377%  12.868%   0.055%   0.547%   0.018%   0.002%   0.020%
   50    8.2  1.5 -0.5   0.007%   5.240%   0.000%   0.076%   0.569%   0.003%  12.483%   0.383%   0.050%  11.660%
   51    9.2  1.5 -0.5   0.000%   0.009%   0.000%   0.000%   0.087%   0.000%   0.999%   0.031%   0.004%   1.077%
   52    1.2  1.5 -1.5   0.001%   0.386%   0.003%   8.494%   0.007%   0.000%   0.023%   0.001%   0.002%   0.302%
   53    2.2  1.5 -1.5   0.002%   1.817%   0.007%   6.899%   0.000%   0.000%   0.027%   0.001%   0.001%   0.326%
   54    3.2  1.5 -1.5   0.081%   0.001%   1.525%   0.006%   0.000%   0.038%   0.000%   0.002%   0.088%   0.001%
   55    4.2  1.5 -1.5   0.009%  13.896%   0.007%   7.124%   0.719%   0.002%  12.727%   0.470%   0.023%   2.900%
   56    5.2  1.5 -1.5   0.025%   8.371%   0.012%  13.394%   0.884%   0.004%  12.690%   0.408%   0.048%   2.823%
   57    6.2  1.5 -1.5   5.479%   0.010%   0.142%   0.025%   0.001%   0.760%   0.528%  11.963%  11.185%   0.082%
   58    7.2  1.5 -1.5   5.458%   0.017%   0.080%   0.004%   0.004%   0.550%   0.321%  12.472%  11.220%   0.041%
   59    8.2  1.5 -1.5   0.240%   0.000%   6.521%   0.005%   0.077%  12.770%   0.015%   0.538%   0.011%   0.000%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.008%   0.000%   0.007%   1.159%   0.002%   0.074%   0.506%   0.002%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.001%   0.000%   0.001%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.008%   2.735%   0.300%  13.291%   0.000%   0.000%  10.993%   0.378%   1.425%   0.006%
    5    5.2  0.5  0.5   0.018%   5.612%   0.186%  10.062%   0.001%   0.000%   7.269%   0.193%   5.331%   0.006%
    6    6.2  0.5  0.5  16.126%   0.007%   0.247%   0.016%   0.000%   0.000%   0.017%   0.439%   0.003%  12.333%
    7    7.2  0.5  0.5   4.700%   0.001%  12.025%   0.239%   0.000%   0.000%   0.313%   9.917%   0.001%   2.736%
    8    8.2  0.5  0.5  12.147%   0.000%   4.283%   0.096%   0.000%   0.000%   0.081%   2.658%   0.004%  10.214%
    9    9.2  0.5  0.5   0.000%   0.912%   0.008%   0.381%   8.880%   0.080%   1.251%   0.033%  10.554%   0.003%
   10   10.2  0.5  0.5   0.052%   0.004%   0.109%   0.036%   0.738%   8.436%   0.987%   9.930%   0.293%   0.384%
   11   11.2  0.5  0.5   0.002%   0.098%   0.029%   0.488%   8.331%   0.744%   4.212%   1.071%   6.404%   0.021%
   12   12.2  0.5  0.5   0.394%   0.000%   0.502%   0.011%   0.320%  34.398%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   2.735%   0.008%  13.291%   0.300%   0.000%   0.000%   0.378%  10.993%   0.006%   1.425%
   17    5.2  0.5 -0.5   5.612%   0.018%  10.062%   0.186%   0.000%   0.001%   0.193%   7.269%   0.006%   5.331%
   18    6.2  0.5 -0.5   0.007%  16.126%   0.016%   0.247%   0.000%   0.000%   0.439%   0.017%  12.333%   0.003%
   19    7.2  0.5 -0.5   0.001%   4.700%   0.239%  12.025%   0.000%   0.000%   9.917%   0.313%   2.736%   0.001%
   20    8.2  0.5 -0.5   0.000%  12.147%   0.096%   4.283%   0.000%   0.000%   2.658%   0.081%  10.214%   0.004%
   21    9.2  0.5 -0.5   0.912%   0.000%   0.381%   0.008%   0.080%   8.880%   0.033%   1.251%   0.003%  10.554%
   22   10.2  0.5 -0.5   0.004%   0.052%   0.036%   0.109%   8.436%   0.738%   9.930%   0.987%   0.384%   0.293%
   23   11.2  0.5 -0.5   0.098%   0.002%   0.488%   0.029%   0.744%   8.331%   1.071%   4.212%   0.021%   6.404%
   24   12.2  0.5 -0.5   0.000%   0.394%   0.011%   0.502%  34.398%   0.320%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.071%   0.004%   2.931%   0.063%   0.013%   1.383%   0.129%   4.074%   0.008%   0.156%
   26    2.2  1.5  1.5   0.096%   0.005%   2.873%   0.068%   0.013%   1.370%   0.146%   4.063%   0.012%   0.152%
   27    3.2  1.5  1.5   0.000%   7.746%   0.008%   0.131%   0.000%   0.002%   0.447%   0.033%  12.761%   0.004%
   28    4.2  1.5  1.5   0.042%   0.000%   0.003%   0.000%   0.024%   1.679%   0.097%   2.582%   0.000%   0.092%
   29    5.2  1.5  1.5   0.017%   0.000%   0.001%   0.001%   0.043%   1.680%   0.112%   2.551%   0.000%   0.105%
   30    6.2  1.5  1.5   0.000%   0.204%   0.012%   0.506%   6.350%   0.089%   2.556%   0.131%   0.101%   0.000%
   31    7.2  1.5  1.5   0.000%   0.196%   0.010%   0.463%   6.421%   0.055%   2.566%   0.078%   0.066%   0.000%
   32    8.2  1.5  1.5   0.000%   0.033%   0.000%   0.000%   0.009%   0.000%   0.059%   0.003%   2.576%   0.001%
   33    9.2  1.5  1.5   0.000%  42.536%   0.017%   0.703%   0.000%   0.000%   0.500%   0.023%  14.057%   0.003%
   34    1.2  1.5  0.5   0.000%   2.078%   0.089%   3.770%   0.458%   0.004%   7.449%   0.272%   2.661%   0.000%
   35    2.2  1.5  0.5   0.000%   2.948%   0.063%   2.462%   0.440%   0.001%   3.871%   0.139%   6.373%   0.002%
   36    3.2  1.5  0.5   0.003%   0.003%   0.515%   0.027%   0.012%   1.773%   0.083%   1.375%   0.003%   0.062%
   37    4.2  1.5  0.5   0.000%   0.044%   0.006%   0.256%   4.803%   0.046%   0.105%   0.005%   2.556%   0.002%
   38    5.2  1.5  0.5   0.000%   0.353%   0.003%   0.174%   4.735%   0.045%   0.085%   0.006%   2.646%   0.003%
   39    6.2  1.5  0.5   0.081%   0.001%   0.005%   0.000%   0.009%   0.001%   0.007%   0.100%   0.003%   2.685%
   40    7.2  1.5  0.5   0.027%   0.000%   0.002%   0.000%   0.001%   0.010%   0.003%   0.062%   0.002%   2.601%
   41    8.2  1.5  0.5   0.176%   0.000%   0.081%   0.002%   0.062%   6.498%   0.084%   2.506%   0.000%   0.058%
   42    9.2  1.5  0.5   0.519%   0.000%  41.512%   0.931%   0.000%   0.000%   0.449%  13.508%   0.002%   0.528%
   43    1.2  1.5 -0.5   2.078%   0.000%   3.770%   0.089%   0.004%   0.458%   0.272%   7.449%   0.000%   2.661%
   44    2.2  1.5 -0.5   2.948%   0.000%   2.462%   0.063%   0.001%   0.440%   0.139%   3.871%   0.002%   6.373%
   45    3.2  1.5 -0.5   0.003%   0.003%   0.027%   0.515%   1.773%   0.012%   1.375%   0.083%   0.062%   0.003%
   46    4.2  1.5 -0.5   0.044%   0.000%   0.256%   0.006%   0.046%   4.803%   0.005%   0.105%   0.002%   2.556%
   47    5.2  1.5 -0.5   0.353%   0.000%   0.174%   0.003%   0.045%   4.735%   0.006%   0.085%   0.003%   2.646%
   48    6.2  1.5 -0.5   0.001%   0.081%   0.000%   0.005%   0.001%   0.009%   0.100%   0.007%   2.685%   0.003%
   49    7.2  1.5 -0.5   0.000%   0.027%   0.000%   0.002%   0.010%   0.001%   0.062%   0.003%   2.601%   0.002%
   50    8.2  1.5 -0.5   0.000%   0.176%   0.002%   0.081%   6.498%   0.062%   2.506%   0.084%   0.058%   0.000%
   51    9.2  1.5 -0.5   0.000%   0.519%   0.931%  41.512%   0.000%   0.000%  13.508%   0.449%   0.528%   0.002%
   52    1.2  1.5 -1.5   0.004%   0.071%   0.063%   2.931%   1.383%   0.013%   4.074%   0.129%   0.156%   0.008%
   53    2.2  1.5 -1.5   0.005%   0.096%   0.068%   2.873%   1.370%   0.013%   4.063%   0.146%   0.152%   0.012%
   54    3.2  1.5 -1.5   7.746%   0.000%   0.131%   0.008%   0.002%   0.000%   0.033%   0.447%   0.004%  12.761%
   55    4.2  1.5 -1.5   0.000%   0.042%   0.000%   0.003%   1.679%   0.024%   2.582%   0.097%   0.092%   0.000%
   56    5.2  1.5 -1.5   0.000%   0.017%   0.001%   0.001%   1.680%   0.043%   2.551%   0.112%   0.105%   0.000%
   57    6.2  1.5 -1.5   0.204%   0.000%   0.506%   0.012%   0.089%   6.350%   0.131%   2.556%   0.000%   0.101%
   58    7.2  1.5 -1.5   0.196%   0.000%   0.463%   0.010%   0.055%   6.421%   0.078%   2.566%   0.000%   0.066%
   59    8.2  1.5 -1.5   0.033%   0.000%   0.000%   0.000%   0.000%   0.009%   0.003%   0.059%   0.001%   2.576%
   60    9.2  1.5 -1.5  42.536%   0.000%   0.703%   0.017%   0.000%   0.000%   0.023%   0.500%   0.003%  14.057%


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

              2       7     4714.53       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    330457.43 301911.86   9480.94  19055.04      5.94      0.47      2.94
 REAL TIME  *    333578.28 SEC
 DISK USED  *         4.66 GB (local),       37.56 GB (total)
 SF USED    *        29.86 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -295.363002498991

              CI              CI           MULTI         RHF-SCF
   -295.29132024   -295.29148969   -294.35945703   -294.74684227
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
