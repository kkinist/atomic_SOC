
 Working directory              : /wrk/irikura/molpro.21iA2mlvYr/
 Global scratch directory       : /wrk/irikura/molpro.21iA2mlvYr/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.21iA2mlvYr/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov    8
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,At SO-CI
                                                                                 ! active space (5/6)
                                                                                 ! additional diffuse spdf functions
 memory,2000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={At};
 
 basis={
 ecp,at,ECP60MDF;
 spdfgh,at,aug-cc-pwCVQZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 {rhf;wf,charge=-1}
 
 NDOUB=12
 NQUAR=9
 
 {multi
     occ,7,9
     closed,7,3
     wf,charge=0,sym=2,spin=1;state,NDOUB;
     wf,charge=0,sym=2,spin=3;state,NQUAR;
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
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   At SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 05-Dec-24          TIME: 16:14:48  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  16000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry At   ECP ECP60MDF                 selected for group  1
 Library entry AT     S AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered At S diffuse               selected for group 1    nprim= 1    centre=  0.010    ratio= 3.000    dratio= 1.000
 Library entry AT     P AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered At P diffuse               selected for group 1    nprim= 1    centre=  0.008    ratio= 3.000    dratio= 1.000
 Library entry AT     D AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered At D diffuse               selected for group 1    nprim= 1    centre=  0.018    ratio= 3.000    dratio= 1.000
 Library entry AT     F AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered At F diffuse               selected for group 1    nprim= 1    centre=  0.040    ratio= 3.000    dratio= 1.000
 Library entry AT     G AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Library entry AT     H AUG-CC-PWCVQZ-PP     selected for orbital group  1


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

   1  AT     25.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   25
 NUMBER OF PRIMITIVE AOS:         314
 NUMBER OF SYMMETRY AOS:          243
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

         1 0.235E-05 0.327E-03 0.327E-03 0.327E-03 0.327E-03 0.327E-03 0.431E-03 0.126E-02
         2 0.116E-05 0.116E-05 0.116E-05 0.381E-03 0.381E-03 0.381E-03 0.368E-02 0.368E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     164.102 MB (compressed) written to integral file ( 15.3%)

     Node minimum: 15.991 MB, node maximum: 24.904 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    9344772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    9344772      RECORD LENGTH: 524288

 Memory used in sort:       9.90 MW

 SORT1 READ   134353782. AND WROTE     1729514. INTEGRALS IN      5 RECORDS. CPU TIME:     0.67 SEC, REAL TIME:     0.70 SEC
 SORT2 READ    13879740. AND WROTE    74805201. INTEGRALS IN    688 RECORDS. CPU TIME:     0.32 SEC, REAL TIME:     0.37 SEC

 Node minimum:     9343692.  Node maximum:     9360852. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.52       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.76      3.38
 REAL TIME  *         5.03 SEC
 DISK USED  *        29.89 MB (local),      526.80 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -261.41333349    -261.41333349     0.00D+00     0.77D-01     0     0       0.05      0.11    start
   2     -261.43616147      -0.02282798     0.33D-02     0.63D-02     1     0       0.05      0.16    diag
   3     -261.43852196      -0.00236049     0.19D-02     0.16D-02     2     0       0.05      0.21    diag
   4     -261.43902731      -0.00050534     0.36D-03     0.71D-03     3     0       0.05      0.26    diag
   5     -261.43912393      -0.00009662     0.13D-03     0.36D-03     4     0       0.05      0.31    diag
   6     -261.43913340      -0.00000947     0.32D-04     0.15D-03     5     0       0.05      0.36    diag
   7     -261.43913387      -0.00000047     0.64D-05     0.39D-04     6     0       0.05      0.41    diag
   8     -261.43913389      -0.00000002     0.14D-05     0.70D-05     7     0       0.06      0.47    fixocc
   9     -261.43913390      -0.00000000     0.30D-06     0.32D-05     8     0       0.04      0.51    diag
  10     -261.43913390      -0.00000000     0.59D-07     0.31D-06     9     0       0.05      0.56    diag/orth
  11     -261.43913390      -0.00000000     0.17D-07     0.35D-07     0     0       0.05      0.61    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -261.439133895360
  RHF One-electron energy            -461.393585021294
  RHF Two-electron energy             199.954451125934
  RHF Kinetic energy                   82.729310301837
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.160175431676

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.53204     1  1  s    1.00163
    2.1     2.00000    -1.54348     1  1  d2-  0.99883
    3.1     2.00000    -1.54348     1  1  d2+  0.99914
    4.1     2.00000    -1.54348     1  1  d0   0.99925
    5.1     2.00000    -1.54348     1  1  d1+  0.90151    1  1  d1-  0.43021
    6.1     2.00000    -1.54348     1  1  d1+ -0.43058    1  1  d1-  0.90166
    7.1     2.00000    -0.67783     1  2  s    0.97685
    1.2     2.00000    -4.82203     1  1  px   0.99996
    2.2     2.00000    -4.82203     1  1  pz   0.99454
    3.2     2.00000    -4.82203     1  1  py   0.99454
    4.2     2.00000    -0.11634     1  2  py   0.91949
    5.2     2.00000    -0.11634     1  2  pz   0.91949
    6.2     2.00000    -0.11634     1  2  px   0.91949


 HOMO      6.2    -0.116340 =      -3.1658eV
 LUMO      7.2     0.090582 =       2.4648eV
 LUMO-HOMO         0.206921 =       5.6306eV

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
 CPU TIMES  *         4.82      1.07      3.38
 REAL TIME  *         6.18 SEC
 DISK USED  *        31.48 MB (local),      539.47 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =        12.00000000                                  
 SETTING NQUAR          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     169 (   85   84)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:            12
 Number of CSFs:             210   (300 determinants, 300 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             9
 Number of CSFs:              84   (90 determinants, 90 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.468D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.270D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.614D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.339D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.332D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 2 4 6 1 1 2 4   6 3 5 1 2 3 5 6 4 1   2 4 6 5 31514 7 812  111310 9 1 2 6 4 5 3
                                       12 815141310 711 9 2   6 4 5 3 11415 81213  10 711 9 6 4 3 5 2 1  1514 812 7 9111310 6
                                        4 5 3 2 1 6 4 5 3 2   1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.947D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.947D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.216D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.226D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.293D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.359D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.147D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 3 2 1 3   2 1 810 9 7 4 5 6 3   2 110 8 5 4 6 9 7 3   1 2 5 4 810 6 9 7 8
                                       10 5 4 6 7 9 2 1 310   8 6 5 4 7 914161915  17122018211311 3 1 2   6 7 910 8 5 4 1 2 3
                                        6 4 5 7 910 8 3 1 2   3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762   0.04762   0.04762   0.04762
 Weight factors for state symmetry  2:    0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762   0.04762
                                          0.04762
 
 Number of orbital rotations:  1369  ( 18 closed/active, 847 closed/virtual, 0 active/active, 504 active/virtual )
 Total number of variables:    5779
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0   -261.02084299    -261.13623227   -0.11538928    0.37965727 0.00087520 0.00000000  0.13E+01      1.53
   2    6   10    0   -261.13324600    -261.13380519   -0.00055919    0.02344315 0.00000245 0.00000000  0.10E+00      3.03
   3    4    8    0   -261.13380581    -261.13380582   -0.00000001    0.00010163 0.00000019 0.00000000  0.34E-03      4.38
   4   18   36    0   -261.13380582    -261.13380582    0.00000000    0.00000004 0.00000001 0.00000000  0.37E-07      6.71

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.24E-07)
                       Final energy:   -261.13380582
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -261.341583205794
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22401967
 One electron energy                          -455.89091856
 Two electron energy                           194.54933535
 Virial ratio                                    4.14021822
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -261.341583205768
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22401968
 One electron energy                          -455.89091857
 Two electron energy                           194.54933536
 Virial ratio                                    4.14021822
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -261.341583205696
 Nuclear energy                                  0.00000000
 Kinetic energy                                 83.22401967
 One electron energy                          -455.89091855
 Two electron energy                           194.54933535
 Virial ratio                                    4.14021822
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -261.099009399970
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39536347
 One electron energy                          -449.25525124
 Two electron energy                           188.15624184
 Virial ratio                                    4.16885561
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -261.099009399965
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39536347
 One electron energy                          -449.25525124
 Two electron energy                           188.15624184
 Virial ratio                                    4.16885561
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -261.099009399866
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39536348
 One electron energy                          -449.25525127
 Two electron energy                           188.15624187
 Virial ratio                                    4.16885561
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -261.099009399815
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39536348
 One electron energy                          -449.25525128
 Two electron energy                           188.15624188
 Virial ratio                                    4.16885561
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -261.099009399795
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39536348
 One electron energy                          -449.25525129
 Two electron energy                           188.15624189
 Virial ratio                                    4.16885561
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -261.093813709428
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39267341
 One electron energy                          -449.24641835
 Two electron energy                           188.15260465
 Virial ratio                                    4.16889601
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -261.093730040681
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46749247
 One electron energy                          -449.56146377
 Two electron energy                           188.46773372
 Virial ratio                                    4.16601999
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -261.093730040254
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46749248
 One electron energy                          -449.56146381
 Two electron energy                           188.46773377
 Virial ratio                                    4.16601999
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -261.093730040114
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.46749248
 One electron energy                          -449.56146382
 Two electron energy                           188.46773378
 Virial ratio                                    4.16601999
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -261.105626435609
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38027935
 One electron energy                          -449.20289505
 Two electron energy                           188.09726862
 Virial ratio                                    4.16951616
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -261.105626435606
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38027935
 One electron energy                          -449.20289505
 Two electron energy                           188.09726861
 Virial ratio                                    4.16951616
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -261.105626435492
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38027935
 One electron energy                          -449.20289502
 Two electron energy                           188.09726858
 Virial ratio                                    4.16951616
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -261.100872264569
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38554639
 One electron energy                          -449.22164846
 Two electron energy                           188.12077620
 Virial ratio                                    4.16925582
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -261.100872264563
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38554639
 One electron energy                          -449.22164846
 Two electron energy                           188.12077619
 Virial ratio                                    4.16925582
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -261.100872264555
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38554639
 One electron energy                          -449.22164849
 Two electron energy                           188.12077622
 Virial ratio                                    4.16925582
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -261.100872264526
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38554639
 One electron energy                          -449.22164850
 Two electron energy                           188.12077623
 Virial ratio                                    4.16925582
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -261.100872264524
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.38554639
 One electron energy                          -449.22164850
 Two electron energy                           188.12077624
 Virial ratio                                    4.16925582
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Quartet
 =============================
 !MCSCF STATE 9.2 Quartet Energy              -261.093881114690
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.39181956
 One electron energy                          -449.24294968
 Two electron energy                           188.14906857
 Virial ratio                                    4.16892966
 
 !MCSCF STATE 9.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.000000000002
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999999997
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.634658297620
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.999999999996
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     3.999999954874
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.000000093208
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>     2.365285340854
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>     0.000000000007
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     0.999999999997
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     0.000000001138
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>     0.999999999594
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999992167046
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.000011306237
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999999995
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     2.604144136539
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     0.999999999995
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.999998157943
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000000022807
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     1.395927154910
 !MCSCF expec      <9.2 Quartet|LXLX|9.2 Quartet>     0.000000000007
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.000000000002
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.885578385684
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.999999999953
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999982357
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.999999961412
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     0.114440764413
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>     0.000000000007
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     0.000000000009
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     0.999999999996
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>     0.999999999997
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999999995
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999999999995
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.000000000010
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.349064244387
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.999999999968
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.000002802705
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000000003034
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.650878659822
 !MCSCF expec      <9.2 Quartet|LYLY|9.2 Quartet>     0.000000000007
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     1.000000000000
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.000000000005
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.479763316655
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000000000010
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000062728
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     3.999999945340
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     3.520273894692
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>     0.000000000007
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     0.999999999997
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     0.999999998868
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     0.000000000412
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000007832958
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999988693768
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999999995
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.046791619033
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     0.999999999996
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     0.999999039311
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     3.999999974117
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.953194185227
 !MCSCF expec      <9.2 Quartet|LZLZ|9.2 Quartet>     0.000000000007
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000002
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000002
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000002
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     5.999999999959
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     5.999999999959
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     5.999999999959
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     5.999999999959
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     5.999999999959
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>     0.000000000020
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     2.000000000002
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     2.000000000002
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     2.000000000002
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     5.999999999959
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     5.999999999959
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     5.999999999959
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     5.999999999959
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     5.999999999959
 !MCSCF expec      <9.2 Quartet|L**2|9.2 Quartet>     0.000000000020
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 6 3 5 1 1 4 2   6 3 5 1 4 2 6 3 5 1   4 2 6 3 5 1 9 7 812  1114151310 4 2 6 5 3
                                        9 7 8121115141310 4   2 6 5 3 1 9 7 81211  15141310 4 2 6 5 3 1   9 7 8121114151310 4
                                        2 6 5 3 1 4 2 6 5 3   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 1 3 3   1 2 4 6 5 810 9 7 3   1 2 4 6 5 810 9 7 3   1 2 4 6 5 810 9 7 4
                                        6 5 810 7 9 3 1 2 4   6 510 8 9 711192113  12141615171820 3 1 2   4 6 510 8 7 9 3 1 2
                                        4 6 510 8 7 9 3 1 2   3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.98700     1  1  s    0.99999
    2.1     2.00000    -1.99741     1  1  d1+  1.00141
    3.1     2.00000    -1.99741     1  1  d0   1.00141
    4.1     2.00000    -1.99741     1  1  d1-  1.00141
    5.1     2.00000    -1.99741     1  1  d2-  1.00141
    6.1     2.00000    -1.99741     1  1  d2+  1.00141
    7.1     2.00000    -1.08401     1  2  s    1.02147
    1.2     2.00000    -5.27667     1  1  pz   1.00011
    2.2     2.00000    -5.27667     1  1  px   1.00011
    3.2     2.00000    -5.27667     1  1  py   1.00011
    4.2     1.38039    -0.41946     1  2  py   1.06768
    5.2     1.38039    -0.41946     1  2  px   1.06768
    6.2     1.38039    -0.41946     1  2  pz   1.06768
    7.2     0.28627     0.00782     1 10  py   0.71680    1 11  py   0.46334
    8.2     0.28627     0.00782     1 10  px   0.71680    1 11  px   0.46334
    9.2     0.28627     0.00782     1 10  pz   0.71680    1 11  pz   0.46334
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2a2000         0.98902046     -0.00000010     -0.00000060      0.00000000     -0.00000000     -0.00000001     -0.00000000
 22a000         0.00000060     -0.00000000      0.98902046     -0.00000000     -0.00000000     -0.00000000      0.00000001
 a22000         0.00000010      0.98902046      0.00000000     -0.00000000      0.00000001      0.00000000     -0.00000000
 2aab00        -0.00000000      0.00000000      0.00000000     -0.11270931     -0.00000355     -0.00008977      0.00012947
 aa200b        -0.00000000      0.00000000     -0.00000000      0.62516077      0.00001744      0.00004902     -0.00003623
 2aa00b         0.07616569     -0.00000001     -0.00000005     -0.00001723      0.00000010      0.57712039      0.00005436
 2aa0b0        -0.00000005      0.00000000     -0.07616569     -0.00000913      0.00000127     -0.00005434      0.57712038
 a2a00b         0.00000001      0.07616569     -0.00000000     -0.00001596      0.57712038     -0.00000010     -0.00000127
 aa20b0         0.00000001      0.07616569      0.00000000      0.00001596     -0.57712038      0.00000010      0.00000127
 aa2b00        -0.07616568      0.00000001      0.00000005     -0.00001723      0.00000010      0.57712035      0.00005436
 a2ab00        -0.00000005     -0.00000000     -0.07616568      0.00000913     -0.00000127      0.00005434     -0.57712034
 a2a0b0        -0.00000000      0.00000000      0.00000000      0.51245144      0.00001389     -0.00004075      0.00009324
 ab2a00         0.01336514     -0.00000000     -0.00000001      0.00000872     -0.00000005     -0.29210598     -0.00002751
 a2ba00         0.00000001      0.00000000      0.01336514     -0.00000462      0.00000064     -0.00002751      0.29210598
 ba20a0        -0.00000000     -0.01336514     -0.00000000     -0.00000808      0.29210600     -0.00000005     -0.00000064
 b2a00a        -0.00000000     -0.01336514      0.00000000      0.00000808     -0.29210600      0.00000005      0.00000064
 2ab0a0         0.00000001     -0.00000000      0.01336514      0.00000462     -0.00000064      0.00002751     -0.29210600
 2ba00a        -0.01336514      0.00000000      0.00000001      0.00000872     -0.00000005     -0.29210601     -0.00002751
 2aba00         0.00000000     -0.00000000     -0.00000000      0.04936520      0.00000158      0.00004483     -0.00006509
 2baa00         0.00000000     -0.00000000     -0.00000000      0.06334411      0.00000197      0.00004493     -0.00006439
 ba200a         0.00000000     -0.00000000      0.00000000     -0.31503639     -0.00000878     -0.00002371      0.00001675
 ab200a         0.00000000     -0.00000000      0.00000000     -0.31012438     -0.00000866     -0.00002531      0.00001948
 2ab00a        -0.06280054      0.00000001      0.00000004      0.00000851     -0.00000005     -0.28501438     -0.00002685
 2ba0a0         0.00000004     -0.00000000      0.06280055      0.00000451     -0.00000063      0.00002684     -0.28501438
 a2b00a        -0.00000001     -0.06280054     -0.00000000      0.00000788     -0.28501438      0.00000005      0.00000063
 ab20a0        -0.00000001     -0.06280055     -0.00000000     -0.00000788      0.28501438     -0.00000005     -0.00000063
 ba2a00         0.06280054     -0.00000001     -0.00000004      0.00000851     -0.00000005     -0.28501436     -0.00002685
 b2aa00         0.00000004     -0.00000000      0.06280054     -0.00000451      0.00000063     -0.00002684      0.28501436
 b2a0a0        -0.00000000      0.00000000     -0.00000000     -0.26075917     -0.00000707      0.00001952     -0.00004560
 a2b0a0         0.00000000      0.00000000     -0.00000000     -0.25169227     -0.00000681      0.00002123     -0.00004764
 022a00         0.00000000      0.04082934      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 2020a0         0.04082935     -0.00000000     -0.00000002     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 22000a         0.00000002     -0.00000000      0.04082935      0.00000000      0.00000000     -0.00000000      0.00000000
 
 Energy:     -261.34158321   -261.34158321   -261.34158321   -261.09900940   -261.09900940   -261.09900940   -261.09900940

 State:              8               9              10              11              12
 2a2000        -0.00000000      0.00000000     -0.00000005     -0.11511587     -0.00000387
 22a000        -0.00000000     -0.00000000     -0.00000002     -0.00000387      0.11511588
 a22000         0.00000000     -0.00000000     -0.11511589      0.00000005     -0.00000002
 2aab00         0.65680069      0.47129879     -0.00000000     -0.00000000      0.00000000
 aa200b        -0.23079124      0.47129875     -0.00000000     -0.00000000      0.00000000
 2aa00b         0.00007591      0.00000000      0.00000022      0.55933898      0.00001879
 2aa0b0        -0.00011534     -0.00000000     -0.00000011     -0.00001879      0.55933898
 a2a00b         0.00000038     -0.00000000      0.55933900     -0.00000022      0.00000011
 aa20b0        -0.00000038      0.00000000      0.55933900     -0.00000022      0.00000011
 aa2b00         0.00007591     -0.00000000     -0.00000022     -0.55933902     -0.00001879
 a2ab00         0.00011534     -0.00000000     -0.00000011     -0.00001879      0.55933902
 a2a0b0         0.42600949     -0.47129876      0.00000000     -0.00000000     -0.00000000
 ab2a00        -0.00003842      0.00000000      0.00000014      0.36310292      0.00001220
 a2ba00        -0.00005838      0.00000000      0.00000007      0.00001220     -0.36310292
 ba20a0         0.00000019     -0.00000000     -0.36310290      0.00000014     -0.00000007
 b2a00a        -0.00000019      0.00000000     -0.36310290      0.00000014     -0.00000007
 2ab0a0         0.00005838      0.00000000      0.00000007      0.00001220     -0.36310289
 2ba00a        -0.00003842     -0.00000000     -0.00000014     -0.36310289     -0.00001220
 2aba00        -0.32959976     -0.23564939      0.00000000      0.00000000     -0.00000000
 2baa00        -0.32720093     -0.23564939      0.00000000      0.00000000     -0.00000000
 ba200a         0.10874286     -0.23564938      0.00000000      0.00000000     -0.00000000
 ab200a         0.12204837     -0.23564937      0.00000000      0.00000000     -0.00000000
 2ab00a        -0.00003749     -0.00000000     -0.00000008     -0.19623609     -0.00000659
 2ba0a0         0.00005696      0.00000000      0.00000004      0.00000659     -0.19623608
 a2b00a        -0.00000019      0.00000000     -0.19623610      0.00000008     -0.00000004
 ab20a0         0.00000019     -0.00000000     -0.19623610      0.00000008     -0.00000004
 ba2a00        -0.00003749      0.00000000      0.00000008      0.19623610      0.00000659
 b2aa00        -0.00005696      0.00000000      0.00000004      0.00000659     -0.19623610
 b2a0a0        -0.20755141      0.23564938     -0.00000000      0.00000000      0.00000000
 a2b0a0        -0.21845809      0.23564938     -0.00000000      0.00000000      0.00000000
 022a00         0.00000000     -0.00000000     -0.13018872      0.00000005     -0.00000003
 2020a0        -0.00000000      0.00000000     -0.00000005     -0.13018872     -0.00000437
 22000a        -0.00000000     -0.00000000     -0.00000003     -0.00000437      0.13018872
 
 Energy:     -261.09900940   -261.09381371   -261.09373004   -261.09373004   -261.09373004
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 aa200a         0.00000000      0.00000000      0.00000000      0.81159051      0.00002191     -0.00098734      0.00000809
 2aaa00        -0.00000000      0.00000000     -0.00000000     -0.32932895     -0.00000849      0.00035699     -0.00021957
 aa20a0        -0.00000005     -0.00000018      0.70700741     -0.00001913      0.70700579      0.00000045      0.00000000
 a2a00a        -0.00000005     -0.00000018      0.70700740      0.00001913     -0.70700581     -0.00000045     -0.00000000
 2aa0a0         0.70700462      0.00197873      0.00000005     -0.00001643     -0.00000000     -0.00007086     -0.70700579
 a2aa00         0.70700465      0.00197873      0.00000005      0.00001643      0.00000000      0.00007086      0.70700575
 2aa00a         0.00197873     -0.70700461     -0.00000018      0.00086483     -0.00000043      0.70700530     -0.00007090
 aa2a00        -0.00197873      0.70700466      0.00000018      0.00086483     -0.00000043      0.70700524     -0.00007090
 a2a0a0        -0.00000000     -0.00000000     -0.00000000      0.48226154      0.00001342     -0.00063035     -0.00021148
 
 Energy:     -261.10562644   -261.10562644   -261.10562644   -261.10087226   -261.10087226   -261.10087226   -261.10087226

 State:              8               9
 aa200a        -0.08829581      0.57718788
 2aaa00         0.74700638      0.57718791
 aa20a0        -0.00000040     -0.00000000
 a2a00a         0.00000040      0.00000000
 2aa0a0        -0.00021502     -0.00000000
 a2aa00         0.00021502     -0.00000000
 2aa00a         0.00004337      0.00000000
 aa2a00         0.00004337     -0.00000000
 a2a0a0         0.65871059     -0.57718789
 
 Energy:     -261.10087226   -261.09388111
 


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
 CPU TIMES  *        11.38      6.55      1.07      3.38
 REAL TIME  *        13.76 SEC
 DISK USED  *        58.59 MB (local),      756.41 MB (total)
 SF USED    *        70.46 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -261.3415832   2.0
    -261.3415832   2.0
    -261.3415832   2.0
    -261.0990094   6.0
    -261.0990094   6.0
    -261.0990094   6.0
    -261.0990094   6.0
    -261.0990094   6.0
    -261.0938137   0.0
    -261.0937300   2.0
    -261.0937300   2.0
    -261.0937300   2.0
    -261.1056264   2.0
    -261.1056264   2.0
    -261.1056264   2.0
    -261.1008723   6.0
    -261.1008723   6.0
    -261.1008723   6.0
    -261.1008723   6.0
    -261.1008723   6.0
    -261.0938811   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 25
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      126 conf      210 CSFs
 N elec internal:     8466 conf    28630 CSFs
 N-1 el internal:     9105 conf    51730 CSFs
 N-2 el internal:     7880 conf    73240 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     169 (  85  84 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -261.34158321
     2      -261.34158321
     3      -261.34158321
     4      -261.09900940
     5      -261.09900940
     6      -261.09900940
     7      -261.09900940
     8      -261.09900940
     9      -261.09381371
    10      -261.09373004
    11      -261.09373004
    12      -261.09373004

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1273D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2184D-06

 Number of blocks in overlap matrix:  1282   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    2790
 Number of N-1 electron functions:   51730

 Number of internal configurations:                15498
 Number of singly external configurations:       4368840
 Number of doubly external configurations:      19929858
 Total number of contracted configurations:     24314196
 Total number of uncontracted configurations:  526456210

 Diagonal Coupling coefficients finished.               Storage:  14672150 words, CPU-Time:     45.92 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2541822 words, CPU-time:      2.50 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -261.34158321     0.00000000    -1.05973319  0.47D-01  0.13D+00    59.12
    1     2     2     1.00000000     0.00000000  -261.34158321     0.00000000    -1.05999796  0.47D-01  0.13D+00    59.12
    1     3     3     1.00000000     0.00000000  -261.34158321     0.00000000    -1.05965501  0.47D-01  0.13D+00    59.12
    1     4     4     1.00000000     0.00000000  -261.09900940     0.00000000    -1.01206047  0.32D-01  0.12D+00    59.12
    1     5     5     1.00000000     0.00000000  -261.09900940     0.00000000    -1.00994455  0.32D-01  0.12D+00    59.12
    1     6     6     1.00000000     0.00000000  -261.09900940     0.00000000    -1.00984408  0.32D-01  0.12D+00    59.12
    1     7     7     1.00000000     0.00000000  -261.09900940     0.00000000    -1.00990530  0.32D-01  0.12D+00    59.12
    1     8     8     1.00000000     0.00000000  -261.09900940    -0.00000000    -1.01227220  0.32D-01  0.12D+00    59.12
    1     9     9     1.00000000     0.00000000  -261.09381371     0.00000000    -1.01316317  0.32D-01  0.12D+00    59.12
    1    10    10     1.00000000     0.00000000  -261.09373004     0.00000000    -1.01858466  0.38D-01  0.13D+00    59.12
    1    11    11     1.00000000     0.00000000  -261.09373004     0.00000000    -1.01828983  0.38D-01  0.13D+00    59.12
    1    12    12     1.00000000     0.00000000  -261.09373004     0.00000000    -1.01849403  0.38D-01  0.13D+00    59.12
    2     1     1     1.11265156    -0.83642778  -262.17801098    -0.83642778    -0.02882347  0.55D-02  0.20D-02  1398.87
    2     2     2     1.11274368    -0.83638513  -262.17796834    -0.83638513    -0.02887809  0.55D-02  0.20D-02  1398.87
    2     3     3     1.11264141    -0.83637584  -262.17795905    -0.83637584    -0.02886698  0.55D-02  0.20D-02  1398.87
    2     4     4     1.10055763    -0.81478062  -261.91379002    -0.81478062    -0.02220809  0.21D-02  0.19D-02  1398.87
    2     5     5     1.10053775    -0.81474597  -261.91375537    -0.81474597    -0.02224370  0.21D-02  0.19D-02  1398.87
    2     6     6     1.10058653    -0.81472607  -261.91373547    -0.81472607    -0.02226858  0.22D-02  0.19D-02  1398.87
    2     7     7     1.10108736    -0.81434789  -261.91335729    -0.81434789    -0.02270619  0.21D-02  0.20D-02  1398.87
    2     8     8     1.10103603    -0.81433640  -261.91334580    -0.81433640    -0.02271694  0.21D-02  0.20D-02  1398.87
    2     9     9     1.10162616    -0.81484704  -261.90866075    -0.81484704    -0.02274646  0.21D-02  0.20D-02  1398.87
    2    10    10     1.10407947    -0.81418709  -261.90791713    -0.81418709    -0.02482830  0.35D-02  0.20D-02  1398.87
    2    11    11     1.10401339    -0.81418261  -261.90791265    -0.81418261    -0.02482864  0.35D-02  0.20D-02  1398.87
    2    12    12     1.10412171    -0.81410683  -261.90783687    -0.81410683    -0.02491137  0.35D-02  0.21D-02  1398.87
    3     1     1     1.09923453    -0.86393268  -262.20551589    -0.02750491    -0.00051722  0.75D-04  0.54D-04  2733.47
    3     2     2     1.09925431    -0.86393125  -262.20551446    -0.02754612    -0.00051899  0.75D-04  0.54D-04  2733.47
    3     3     3     1.09921614    -0.86392469  -262.20550790    -0.02754885    -0.00052311  0.75D-04  0.55D-04  2733.47
    3     4     4     1.09181585    -0.83557553  -261.93458493    -0.02079491    -0.00027396  0.29D-04  0.30D-04  2733.47
    3     5     5     1.09181149    -0.83557401  -261.93458341    -0.02082804    -0.00027567  0.30D-04  0.30D-04  2733.47
    3     6     6     1.09189615    -0.83557369  -261.93458309    -0.02084762    -0.00027687  0.29D-04  0.30D-04  2733.47
    3     7     7     1.09180325    -0.83557351  -261.93458291    -0.02122562    -0.00027571  0.30D-04  0.30D-04  2733.47
    3     8     8     1.09183831    -0.83556805  -261.93457745    -0.02123165    -0.00028028  0.29D-04  0.31D-04  2733.47
    3     9     9     1.09250631    -0.83733391  -261.93114762    -0.02248687    -0.00036140  0.49D-04  0.40D-04  2733.47
    3    10    10     1.09248605    -0.83741526  -261.93114530    -0.02322817    -0.00036306  0.49D-04  0.40D-04  2733.47
    3    11    11     1.09249447    -0.83741436  -261.93114440    -0.02323174    -0.00036412  0.49D-04  0.41D-04  2733.47
    3    12    12     1.09224623    -0.83622681  -261.92995685    -0.02211998    -0.00028517  0.32D-04  0.31D-04  2733.47
    4     1     1     1.09896117    -0.86446890  -262.20605211    -0.00053622    -0.00002132  0.20D-05  0.29D-05  4077.54
    4     2     2     1.09896384    -0.86446872  -262.20605193    -0.00053747    -0.00002146  0.20D-05  0.29D-05  4077.54
    4     3     3     1.09894955    -0.86446785  -262.20605106    -0.00054316    -0.00002208  0.20D-05  0.30D-05  4077.54
    4     4     4     1.09176541    -0.83586467  -261.93487407    -0.00028914    -0.00001082  0.13D-05  0.17D-05  4077.54
    4     5     5     1.09174998    -0.83586434  -261.93487374    -0.00029033    -0.00001113  0.13D-05  0.18D-05  4077.54
    4     6     6     1.09175052    -0.83586425  -261.93487365    -0.00029056    -0.00001114  0.13D-05  0.18D-05  4077.54
    4     7     7     1.09174731    -0.83586418  -261.93487358    -0.00029067    -0.00001122  0.13D-05  0.18D-05  4077.54
    4     8     8     1.09174851    -0.83586370  -261.93487310    -0.00029565    -0.00001142  0.13D-05  0.19D-05  4077.54
    4     9     9     1.09223686    -0.83771572  -261.93152943    -0.00038181    -0.00001590  0.24D-05  0.24D-05  4077.54
    4    10    10     1.09223218    -0.83779914  -261.93152918    -0.00038388    -0.00001608  0.24D-05  0.24D-05  4077.54
    4    11    11     1.09223118    -0.83779905  -261.93152909    -0.00038469    -0.00001613  0.24D-05  0.25D-05  4077.54
    4    12    12     1.09210750    -0.83652925  -261.93025929    -0.00030244    -0.00001167  0.15D-05  0.18D-05  4077.54
    5     1     1     1.09911073    -0.86449156  -262.20607476    -0.00002265    -0.00000097  0.34D-07  0.17D-06  5419.68
    5     2     2     1.09911098    -0.86449153  -262.20607473    -0.00002280    -0.00000099  0.35D-07  0.18D-06  5419.68
    5     3     3     1.09910819    -0.86449144  -262.20607464    -0.00002359    -0.00000105  0.35D-07  0.19D-06  5419.68
    5     4     4     1.09184580    -0.83587759  -261.93488699    -0.00001293    -0.00000081  0.26D-07  0.17D-06  5419.68
    5     5     5     1.09184538    -0.83587758  -261.93488698    -0.00001324    -0.00000082  0.26D-07  0.18D-06  5419.68
    5     6     6     1.09184519    -0.83587756  -261.93488696    -0.00001331    -0.00000083  0.26D-07  0.18D-06  5419.68
    5     7     7     1.09184520    -0.83587755  -261.93488695    -0.00001337    -0.00000084  0.26D-07  0.18D-06  5419.68
    5     8     8     1.09184397    -0.83587746  -261.93488686    -0.00001377    -0.00000089  0.28D-07  0.19D-06  5419.68
    5     9     9     1.09231250    -0.83773444  -261.93154815    -0.00001873    -0.00000117  0.48D-07  0.24D-06  5419.68
    5    10    10     1.09231194    -0.83781809  -261.93154813    -0.00001895    -0.00000119  0.49D-07  0.24D-06  5419.68
    5    11    11     1.09231166    -0.83781807  -261.93154811    -0.00001902    -0.00000120  0.49D-07  0.25D-06  5419.68
    5    12    12     1.09219985    -0.83654330  -261.93027334    -0.00001405    -0.00000085  0.34D-07  0.18D-06  5419.68
    6     1     1     1.09913221    -0.86449265  -262.20607585    -0.00000109    -0.00000005  0.31D-08  0.95D-08  6759.73
    6     2     2     1.09913232    -0.86449265  -262.20607585    -0.00000112    -0.00000006  0.32D-08  0.99D-08  6759.73
    6     3     3     1.09913181    -0.86449264  -262.20607584    -0.00000120    -0.00000006  0.36D-08  0.11D-07  6759.73
    6     4     4     1.09187388    -0.83587861  -261.93488801    -0.00000101    -0.00000007  0.43D-08  0.12D-07  6759.73
    6     5     5     1.09187405    -0.83587860  -261.93488800    -0.00000102    -0.00000007  0.42D-08  0.14D-07  6759.73
    6     6     6     1.09187414    -0.83587860  -261.93488800    -0.00000104    -0.00000007  0.43D-08  0.14D-07  6759.73
    6     7     7     1.09187404    -0.83587860  -261.93488800    -0.00000105    -0.00000007  0.44D-08  0.15D-07  6759.73
    6     8     8     1.09187421    -0.83587859  -261.93488799    -0.00000113    -0.00000008  0.47D-08  0.14D-07  6759.73
    6     9     9     1.09233624    -0.83773587  -261.93154958    -0.00000143    -0.00000009  0.64D-08  0.16D-07  6759.73
    6    10    10     1.09233615    -0.83781954  -261.93154958    -0.00000145    -0.00000009  0.63D-08  0.16D-07  6759.73
    6    11    11     1.09233606    -0.83781954  -261.93154958    -0.00000147    -0.00000009  0.64D-08  0.17D-07  6759.73
    6    12    12     1.09222774    -0.83654435  -261.93027440    -0.00000105    -0.00000007  0.39D-08  0.13D-07  6759.73
    7     1     1     1.09913689    -0.86449271  -262.20607592    -0.00000006    -0.00000000  0.31D-09  0.62D-09  8106.76
    7     2     2     1.09913683    -0.86449271  -262.20607592    -0.00000006    -0.00000000  0.29D-09  0.58D-09  8106.76
    7     3     3     1.09913682    -0.86449271  -262.20607592    -0.00000007    -0.00000000  0.35D-09  0.70D-09  8106.76
    7     4     4     1.09187929    -0.83587869  -261.93488809    -0.00000008    -0.00000001  0.27D-09  0.11D-08  8106.76
    7     5     5     1.09187922    -0.83587869  -261.93488809    -0.00000008    -0.00000001  0.28D-09  0.16D-08  8106.76
    7     6     6     1.09187945    -0.83587869  -261.93488809    -0.00000008    -0.00000001  0.33D-09  0.13D-08  8106.76
    7     7     7     1.09187923    -0.83587869  -261.93488809    -0.00000009    -0.00000001  0.29D-09  0.15D-08  8106.76
    7     8     8     1.09187912    -0.83587869  -261.93488809    -0.00000009    -0.00000001  0.28D-09  0.18D-08  8106.76
    7     9     9     1.09234202    -0.83773598  -261.93154969    -0.00000011    -0.00000001  0.46D-09  0.15D-08  8106.76
    7    10    10     1.09234207    -0.83781965  -261.93154969    -0.00000011    -0.00000001  0.44D-09  0.14D-08  8106.76
    7    11    11     1.09234198    -0.83781964  -261.93154969    -0.00000011    -0.00000001  0.42D-09  0.15D-08  8106.76
    7    12    12     1.09223253    -0.83654443  -261.93027447    -0.00000008    -0.00000001  0.24D-09  0.13D-08  8106.76


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.2%   4.3%
 P   0.3%  34.9%  46.3%

 Initialization:   0.6%
 Other:           13.2%

 Total CPU:     8106.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/22000           0.9473115  -0.0076496  -0.0067946  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                           -0.0041625  -0.0760599   0.0018887  -0.0000000
 22222222222/2000           0.0067206  -0.0091522   0.9472987   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                           -0.0760817   0.0041487  -0.0006055  -0.0000000
 222222222222/000           0.0077147   0.9472917   0.0090974  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0005016   0.0019189   0.0761712   0.0000000
 2222222222/2/0\0           0.0000000   0.0000000  -0.0000000   0.7431591  -0.0125505   0.2102982   0.1074243   0.0419075
                            0.0000000  -0.0000000  -0.0000000  -0.5522670
 2222222222//200\           0.0000000   0.0000000  -0.0000000   0.1695403  -0.0857198   0.6935976   0.3042456  -0.0151492
                            0.0000000   0.0000000  -0.0000000   0.5522670
 2222222222/2/\00          -0.0005307  -0.0651633  -0.0006258   0.0462254   0.0322010   0.0999788  -0.2748482  -0.6072581
                           -0.0043337   0.0165800   0.6581300   0.0000001
 22222222222//0\0          -0.0005307  -0.0651633  -0.0006258  -0.0462254  -0.0322010  -0.0999788   0.2748482   0.6072581
                           -0.0043336   0.0165800   0.6581300  -0.0000000
 2222222222//2\00          -0.0004623   0.0006296  -0.0651638  -0.0136582   0.6539310   0.0099634   0.1671292  -0.0403669
                           -0.6573558   0.0358452  -0.0052316  -0.0000000
 22222222222//00\           0.0004623  -0.0006296   0.0651638  -0.0136582   0.6539311   0.0099634   0.1671292  -0.0403670
                            0.6573557  -0.0358452   0.0052316   0.0000000
 2222222222//20\0           0.0651647  -0.0005262  -0.0004674   0.0107795  -0.1496028  -0.2606484   0.5315801  -0.2906215
                            0.0359648   0.6571676  -0.0163189   0.0000000
 2222222222/2/00\           0.0651647  -0.0005262  -0.0004674  -0.0107795   0.1496029   0.2606486  -0.5315805   0.2906217
                            0.0359647   0.6571672  -0.0163189  -0.0000000
 22222222222//\00           0.0000000  -0.0000000   0.0000000   0.5736184   0.0731694  -0.4832993  -0.1968213   0.0570568
                           -0.0000000   0.0000000  -0.0000000   0.5522672
 222222222222000/           0.0003047   0.0374198   0.0003594  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000001
                           -0.0008059   0.0030832   0.1223849   0.0000000
 22222222222020/0           0.0002655  -0.0003615   0.0374200  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                           -0.1222407   0.0066657  -0.0009729  -0.0000000
 2222222222022/00           0.0374207  -0.0003022  -0.0002684   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                           -0.0066880  -0.1222060   0.0030346   0.0000000
 2222222222/2\/00          -0.0002637  -0.0323804  -0.0003110  -0.0003297  -0.0002296  -0.0007130   0.0019601   0.0043307
                            0.0007310  -0.0027968  -0.1110156  -0.0000000
 22222222222/\0/0          -0.0002637  -0.0323803  -0.0003110   0.0003297   0.0002296   0.0007130  -0.0019601  -0.0043307
                            0.0007310  -0.0027968  -0.1110154  -0.0000000
 22222222222/\00/          -0.0002297   0.0003128  -0.0323805  -0.0000974   0.0046637   0.0000711   0.0011919  -0.0002879
                            0.1108850  -0.0060465   0.0008825   0.0000000
 2222222222/\2/00          -0.0002297   0.0003128  -0.0323806   0.0000974  -0.0046638  -0.0000711  -0.0011920   0.0002879
                            0.1108850  -0.0060465   0.0008825   0.0000000
 2222222222/2\00/          -0.0323810   0.0002615   0.0002323  -0.0000769   0.0010669   0.0018589  -0.0037911   0.0020726
                            0.0060667   0.1108533  -0.0027527  -0.0000000
 2222222222/\20/0          -0.0323810   0.0002615   0.0002323   0.0000769  -0.0010669  -0.0018588   0.0037910  -0.0020726
                            0.0060666   0.1108530  -0.0027527   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.006762    0.953160    0.007762    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.032693
            -0.000232    0.000266
 2          -0.009209   -0.007697    0.953140    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000264
             0.000316    0.032692
 3           0.953147   -0.006837    0.009154   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000234
            -0.032693    0.000314
 4          -0.000000   -0.000000   -0.000000    0.517023    0.015252   -0.019325   -0.065403    0.802249   -0.000000   -0.000000
            -0.000000    0.000000
 5           0.000000    0.000000   -0.000000   -0.083727   -0.211669    0.925229   -0.045560    0.076556   -0.000000    0.000000
             0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.730677   -0.368784    0.014097   -0.141457   -0.475079    0.000000    0.000000
            -0.000000    0.000000
 7           0.000000   -0.000000    0.000000    0.327935    0.752118    0.236467    0.388875   -0.188243    0.000000   -0.000000
            -0.000000   -0.000000
 8          -0.000000    0.000000    0.000000    0.006790   -0.411192   -0.057114    0.859193    0.072111    0.000000    0.000000
            -0.000000   -0.000000
 9           0.034336    0.001879    0.000226    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.052232
             0.954690   -0.006294
 10         -0.001872    0.034326   -0.000866    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.954417
            -0.052059    0.024079
 11          0.000273   -0.000852   -0.034376   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.023700
             0.007598    0.955815
 12          0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.956825   -0.000000
             0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.953775    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000049    0.000793
            -0.000026   -0.000000
 2           0.000000    0.953775   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000003   -0.000026
            -0.000794   -0.000000
 3           0.000000   -0.000000    0.953775   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000793   -0.000049
            -0.000001   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.956974    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.956974    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.956974   -0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000
 7          -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.956974   -0.000000    0.000000   -0.000000
             0.000000   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.956974    0.000000    0.000000
             0.000000   -0.000000
 9           0.000049   -0.000003    0.000793   -0.000000    0.000000    0.000000    0.000000    0.000000    0.956757   -0.000000
             0.000000    0.000000
 10          0.000793   -0.000026   -0.000049    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.956757
            -0.000000   -0.000000
 11         -0.000026   -0.000794   -0.000001   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.956757    0.000000
 12         -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.956825


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95315961 (fixed)   0.95382068 (relaxed)   0.95377542 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012888   -0.00012784   -0.75215539
 Singles      0.01107620   -0.03745301   -0.04277875
 Pairs        0.08807346   -0.00032284   -0.06955858
 Total        1.09927854   -0.03790368   -0.86449271
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34127764
 Nuclear energy                         0.00000000
 Kinetic energy                        83.45592077
 One electron energy                 -454.80314187
 Two electron energy                  192.59706595
 Virial quotient                       -3.14185109
 Correlation energy                    -0.86479828
 !MRCI STATE 1.2 Energy              -262.206075916674

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.29193183 (Davidson, fixed reference)
 Cluster corrected energies          -262.29184161 (Davidson, relaxed reference)
 Cluster corrected energies          -262.29193183 (Davidson, rotated reference)

 Cluster corrected energies          -262.29179892 (Pople, fixed reference)
 Cluster corrected energies          -262.29170089 (Pople, relaxed reference)
 Cluster corrected energies          -262.29179892 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95313967 (fixed)   0.95382070 (relaxed)   0.95377544 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012888   -0.00012784   -0.71638742
 Singles      0.01107616   -0.03745292   -0.04277871
 Pairs        0.08807345   -0.03964193   -0.10532659
 Total        1.09927849   -0.07722269   -0.86449271
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34127764
 Nuclear energy                         0.00000000
 Kinetic energy                        83.45592473
 One electron energy                 -454.80314894
 Two electron energy                  192.59707302
 Virial quotient                       -3.14185094
 Correlation energy                    -0.86479828
 !MRCI STATE 2.2 Energy              -262.206075916259

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.29193179 (Davidson, fixed reference)
 Cluster corrected energies          -262.29184156 (Davidson, relaxed reference)
 Cluster corrected energies          -262.29193179 (Davidson, rotated reference)

 Cluster corrected energies          -262.29179887 (Pople, fixed reference)
 Cluster corrected energies          -262.29170085 (Pople, relaxed reference)
 Cluster corrected energies          -262.29179887 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95314676 (fixed)   0.95382071 (relaxed)   0.95377544 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012888   -0.00012784   -0.75210259
 Singles      0.01107631   -0.03745323   -0.04277887
 Pairs        0.08807329   -0.00038071   -0.06961125
 Total        1.09927848   -0.03796177   -0.86449271
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.34127764
 Nuclear energy                         0.00000000
 Kinetic energy                        83.45591510
 One electron energy                 -454.80313432
 Two electron energy                  192.59705840
 Virial quotient                       -3.14185131
 Correlation energy                    -0.86479828
 !MRCI STATE 3.2 Energy              -262.206075915815

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.29193178 (Davidson, fixed reference)
 Cluster corrected energies          -262.29184155 (Davidson, relaxed reference)
 Cluster corrected energies          -262.29193178 (Davidson, rotated reference)

 Cluster corrected energies          -262.29179886 (Pople, fixed reference)
 Cluster corrected energies          -262.29170083 (Pople, relaxed reference)
 Cluster corrected energies          -262.29179886 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.80224867 (fixed)   0.95697758 (relaxed)   0.95697390 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005799   -0.00017818   -0.72232892
 Singles      0.01257094   -0.04718542   -0.05283314
 Pairs        0.07931369   -0.00000001   -0.06071663
 Total        1.09194262   -0.04736361   -0.83587869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09900940
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02922593
 One electron energy                 -448.99754270
 Two electron energy                  187.06265461
 Virial quotient                       -3.15473118
 Correlation energy                    -0.83587869
 !MRCI STATE 4.2 Energy              -261.934888087692

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01174096 (Davidson, fixed reference)
 Cluster corrected energies          -262.01173394 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01174096 (Davidson, rotated reference)

 Cluster corrected energies          -262.01112442 (Pople, fixed reference)
 Cluster corrected energies          -262.01111689 (Pople, relaxed reference)
 Cluster corrected energies          -262.01112442 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.92522890 (fixed)   0.95697761 (relaxed)   0.95697393 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005799   -0.00017818   -0.72232891
 Singles      0.01257097   -0.04718550   -0.05283315
 Pairs        0.07931357   -0.00000000   -0.06071662
 Total        1.09194254   -0.04736367   -0.83587869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09900940
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02922920
 One electron energy                 -448.99755080
 Two electron energy                  187.06266271
 Virial quotient                       -3.15473106
 Correlation energy                    -0.83587869
 !MRCI STATE 5.2 Energy              -261.934888086778

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01174090 (Davidson, fixed reference)
 Cluster corrected energies          -262.01173387 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01174090 (Davidson, rotated reference)

 Cluster corrected energies          -262.01112435 (Pople, fixed reference)
 Cluster corrected energies          -262.01111682 (Pople, relaxed reference)
 Cluster corrected energies          -262.01112435 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.73067669 (fixed)   0.95697751 (relaxed)   0.95697383 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005799   -0.00017818   -0.72232847
 Singles      0.01257112   -0.04718580   -0.05283336
 Pairs        0.07931366   -0.00000001   -0.06071686
 Total        1.09194277   -0.04736399   -0.83587869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09900940
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02923212
 One electron energy                 -448.99754172
 Two electron energy                  187.06265363
 Virial quotient                       -3.15473095
 Correlation energy                    -0.83587869
 !MRCI STATE 6.2 Energy              -261.934888086678

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01174109 (Davidson, fixed reference)
 Cluster corrected energies          -262.01173407 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01174109 (Davidson, rotated reference)

 Cluster corrected energies          -262.01112456 (Pople, fixed reference)
 Cluster corrected energies          -262.01111702 (Pople, relaxed reference)
 Cluster corrected energies          -262.01112456 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.75211818 (fixed)   0.95697761 (relaxed)   0.95697393 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005799   -0.00017818   -0.72232892
 Singles      0.01257099   -0.04718552   -0.05283316
 Pairs        0.07931357    0.00000003   -0.06071661
 Total        1.09194255   -0.04736366   -0.83587869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09900940
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02922922
 One electron energy                 -448.99754992
 Two electron energy                  187.06266183
 Virial quotient                       -3.15473106
 Correlation energy                    -0.83587869
 !MRCI STATE 7.2 Energy              -261.934888086574

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01174091 (Davidson, fixed reference)
 Cluster corrected energies          -262.01173388 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01174091 (Davidson, rotated reference)

 Cluster corrected energies          -262.01112436 (Pople, fixed reference)
 Cluster corrected energies          -262.01111683 (Pople, relaxed reference)
 Cluster corrected energies          -262.01112436 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.85919259 (fixed)   0.95697766 (relaxed)   0.95697397 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005799   -0.00017818   -0.72232910
 Singles      0.01257095   -0.04718543   -0.05283310
 Pairs        0.07931350    0.00000007   -0.06071649
 Total        1.09194244   -0.04736354   -0.83587869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09900940
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02922938
 One electron energy                 -448.99755567
 Two electron energy                  187.06266758
 Virial quotient                       -3.15473105
 Correlation energy                    -0.83587869
 !MRCI STATE 8.2 Energy              -261.934888085955

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01174081 (Davidson, fixed reference)
 Cluster corrected energies          -262.01173379 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01174081 (Davidson, rotated reference)

 Cluster corrected energies          -262.01112426 (Pople, fixed reference)
 Cluster corrected energies          -262.01111673 (Pople, relaxed reference)
 Cluster corrected energies          -262.01112426 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95469024 (fixed)   0.95677007 (relaxed)   0.95675660 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008849   -0.00022193   -0.72814823
 Singles      0.01288357   -0.04755074   -0.05340399
 Pairs        0.07946663    0.00519792   -0.05618376
 Total        1.09243868   -0.04257475   -0.83773598
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09403561
 Nuclear energy                         0.00000000
 Kinetic energy                        83.05228205
 One electron energy                 -449.12008307
 Two electron energy                  187.18853338
 Virial quotient                       -3.15381520
 Correlation energy                    -0.83751408
 !MRCI STATE 9.2 Energy              -261.931549689171

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.00896839 (Davidson, fixed reference)
 Cluster corrected energies          -262.00894262 (Davidson, relaxed reference)
 Cluster corrected energies          -262.00896839 (Davidson, rotated reference)

 Cluster corrected energies          -262.00838103 (Pople, fixed reference)
 Cluster corrected energies          -262.00835336 (Pople, relaxed reference)
 Cluster corrected energies          -262.00838103 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Coefficient of reference function:   C(0) = 0.95441675 (fixed)   0.95677005 (relaxed)   0.95675658 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008849   -0.00022193   -0.70526295
 Singles      0.01288355   -0.04755068   -0.05340494
 Pairs        0.07946669   -0.01988655   -0.07915176
 Total        1.09243873   -0.06765916   -0.83781965
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09403561
 Nuclear energy                         0.00000000
 Kinetic energy                        83.05228284
 One electron energy                 -449.12008563
 Two electron energy                  187.18853594
 Virial quotient                       -3.15381517
 Correlation energy                    -0.83751408
 !MRCI STATE 10.2 Energy             -261.931549687939

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.00896843 (Davidson, fixed reference)
 Cluster corrected energies          -262.00894266 (Davidson, relaxed reference)
 Cluster corrected energies          -262.00896843 (Davidson, rotated reference)

 Cluster corrected energies          -262.00838107 (Pople, fixed reference)
 Cluster corrected energies          -262.00835340 (Pople, relaxed reference)
 Cluster corrected energies          -262.00838107 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95581478 (fixed)   0.95677009 (relaxed)   0.95675661 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008849   -0.00022193   -0.00087865
 Singles      0.01288349   -0.04755055   -0.05340487
 Pairs        0.07946666   -0.78938336   -0.78353613
 Total        1.09243864   -0.83715584   -0.83781964
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09403561
 Nuclear energy                         0.00000000
 Kinetic energy                        83.05227999
 One electron energy                 -449.12008471
 Two electron energy                  187.18853503
 Virial quotient                       -3.15381528
 Correlation energy                    -0.83751408
 !MRCI STATE 11.2 Energy             -261.931549685191

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.00896835 (Davidson, fixed reference)
 Cluster corrected energies          -262.00894258 (Davidson, relaxed reference)
 Cluster corrected energies          -262.00896835 (Davidson, rotated reference)

 Cluster corrected energies          -262.00838098 (Pople, fixed reference)
 Cluster corrected energies          -262.00835332 (Pople, relaxed reference)
 Cluster corrected energies          -262.00838098 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95682507 (fixed)   0.95682890 (relaxed)   0.95682507 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004559   -0.00013841   -0.72213835
 Singles      0.01290457   -0.04780360   -0.05364598
 Pairs        0.07933216   -0.00000002   -0.06076010
 Total        1.09228232   -0.04794203   -0.83654443
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09381371
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02890672
 One electron energy                 -448.98899320
 Two electron energy                  187.05871873
 Virial quotient                       -3.15468774
 Correlation energy                    -0.83646076
 !MRCI STATE 12.2 Energy             -261.930274473763

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.00746502 (Davidson, fixed reference)
 Cluster corrected energies          -262.00745771 (Davidson, relaxed reference)
 Cluster corrected energies          -262.00746502 (Davidson, rotated reference)

 Cluster corrected energies          -262.00686879 (Pople, fixed reference)
 Cluster corrected energies          -262.00686094 (Pople, relaxed reference)
 Cluster corrected energies          -262.00686879 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     2253.46       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      9419.56   9408.17      6.55      1.07      3.38
 REAL TIME  *      9701.51 SEC
 DISK USED  *         2.26 GB (local),       18.33 GB (total)
 SF USED    *        21.98 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -262.29193183  AU                              
 SETTING HLSDIAG(2)     =      -262.29193179  AU                              
 SETTING HLSDIAG(3)     =      -262.29193178  AU                              
 SETTING HLSDIAG(4)     =      -262.01174096  AU                              
 SETTING HLSDIAG(5)     =      -262.01174090  AU                              
 SETTING HLSDIAG(6)     =      -262.01174109  AU                              
 SETTING HLSDIAG(7)     =      -262.01174091  AU                              
 SETTING HLSDIAG(8)     =      -262.01174081  AU                              
 SETTING HLSDIAG(9)     =      -262.00896839  AU                              
 SETTING HLSDIAG(10)    =      -262.00896843  AU                              
 SETTING HLSDIAG(11)    =      -262.00896835  AU                              
 SETTING HLSDIAG(12)    =      -262.00746502  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 25
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:       66 conf       84 CSFs
 N elec internal:     7606 conf    20444 CSFs
 N-1 el internal:     7990 conf    43460 CSFs
 N-2 el internal:     4430 conf    58610 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     169 (  85  84 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  42

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -261.10562644
     2      -261.10562644
     3      -261.10562644
     4      -261.10087226
     5      -261.10087226
     6      -261.10087226
     7      -261.10087226
     8      -261.10087226
     9      -261.09388111

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3498D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1004D-06

 Number of blocks in overlap matrix:   990   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2080
 Number of N-1 electron functions:   43460

 Number of internal configurations:                10812
 Number of singly external configurations:       3670716
 Number of doubly external configurations:      14854208
 Total number of contracted configurations:     18535736
 Total number of uncontracted configurations:  421008404

 Diagonal Coupling coefficients finished.               Storage:   8771366 words, CPU-Time:     15.06 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2443851 words, CPU-time:      2.45 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -261.10562644    -0.00000000    -1.00955495  0.32D-01  0.12D+00    22.06
    1     2     2     1.00000000     0.00000000  -261.10562644     0.00000000    -1.00949628  0.33D-01  0.12D+00    22.06
    1     3     3     1.00000000     0.00000000  -261.10562644     0.00000000    -1.01086254  0.33D-01  0.12D+00    22.06
    1     4     4     1.00000000     0.00000000  -261.10087226     0.00000000    -1.01279862  0.32D-01  0.13D+00    22.06
    1     5     5     1.00000000     0.00000000  -261.10087226    -0.00000000    -1.01199542  0.32D-01  0.13D+00    22.06
    1     6     6     1.00000000     0.00000000  -261.10087226    -0.00000000    -1.01064123  0.32D-01  0.12D+00    22.06
    1     7     7     1.00000000     0.00000000  -261.10087226     0.00000000    -1.01030100  0.32D-01  0.12D+00    22.06
    1     8     8     1.00000000     0.00000000  -261.10087226     0.00000000    -1.01214234  0.32D-01  0.12D+00    22.06
    1     9     9     1.00000000     0.00000000  -261.09388111     0.00000000    -1.01381235  0.32D-01  0.13D+00    22.06
    2     1     1     1.10099273    -0.81381298  -261.91943941    -0.81381298    -0.02235504  0.22D-02  0.19D-02   646.50
    2     2     2     1.10102376    -0.81379541  -261.91942185    -0.81379541    -0.02236469  0.22D-02  0.19D-02   646.50
    2     3     3     1.10157026    -0.81356363  -261.91919007    -0.81356363    -0.02261906  0.22D-02  0.20D-02   646.50
    2     4     4     1.10112374    -0.81445235  -261.91532461    -0.81445235    -0.02225645  0.21D-02  0.19D-02   646.50
    2     5     5     1.10122029    -0.81438889  -261.91526116    -0.81438889    -0.02233500  0.21D-02  0.19D-02   646.50
    2     6     6     1.10180306    -0.81413365  -261.91500592    -0.81413365    -0.02260591  0.21D-02  0.20D-02   646.50
    2     7     7     1.10138437    -0.81389862  -261.91477088    -0.81389862    -0.02287519  0.21D-02  0.21D-02   646.50
    2     8     8     1.10146802    -0.81379972  -261.91467198    -0.81379972    -0.02297203  0.21D-02  0.21D-02   646.50
    2     9     9     1.10201755    -0.81445415  -261.90833526    -0.81445415    -0.02303262  0.22D-02  0.21D-02   646.50
    3     1     1     1.09173422    -0.83473271  -261.94035914    -0.02091973    -0.00026885  0.31D-04  0.26D-04  1271.00
    3     2     2     1.09173375    -0.83473215  -261.94035858    -0.02093674    -0.00026910  0.31D-04  0.27D-04  1271.00
    3     3     3     1.09180840    -0.83472635  -261.94035279    -0.02116272    -0.00027463  0.31D-04  0.27D-04  1271.00
    3     4     4     1.09196873    -0.83528403  -261.93615630    -0.02083168    -0.00026603  0.30D-04  0.26D-04  1271.00
    3     5     5     1.09195724    -0.83528389  -261.93615616    -0.02089500    -0.00026574  0.30D-04  0.26D-04  1271.00
    3     6     6     1.09204247    -0.83527729  -261.93614956    -0.02114364    -0.00027223  0.30D-04  0.27D-04  1271.00
    3     7     7     1.09192615    -0.83527450  -261.93614676    -0.02137588    -0.00027333  0.29D-04  0.29D-04  1271.00
    3     8     8     1.09187440    -0.83526590  -261.93613816    -0.02146618    -0.00027909  0.29D-04  0.31D-04  1271.00
    3     9     9     1.09222051    -0.83600985  -261.92989096    -0.02155570    -0.00028459  0.34D-04  0.30D-04  1271.00
    4     1     1     1.09155465    -0.83501069  -261.94063712    -0.00027798    -0.00000877  0.10D-05  0.12D-05  1899.56
    4     2     2     1.09155533    -0.83501068  -261.94063712    -0.00027853    -0.00000874  0.11D-05  0.12D-05  1899.56
    4     3     3     1.09156527    -0.83501019  -261.94063663    -0.00028384    -0.00000903  0.11D-05  0.13D-05  1899.56
    4     4     4     1.09177674    -0.83555766  -261.93642992    -0.00027362    -0.00000826  0.99D-06  0.11D-05  1899.56
    4     5     5     1.09177502    -0.83555761  -261.93642988    -0.00027372    -0.00000834  0.99D-06  0.11D-05  1899.56
    4     6     6     1.09178750    -0.83555716  -261.93642942    -0.00027987    -0.00000857  0.10D-05  0.12D-05  1899.56
    4     7     7     1.09175753    -0.83555699  -261.93642926    -0.00028250    -0.00000874  0.97D-06  0.13D-05  1899.56
    4     8     8     1.09174126    -0.83555589  -261.93642816    -0.00028999    -0.00000951  0.97D-06  0.15D-05  1899.56
    4     9     9     1.09203679    -0.83630510  -261.93018621    -0.00029525    -0.00000978  0.11D-05  0.15D-05  1899.56
    5     1     1     1.09159867    -0.83502056  -261.94064700    -0.00000988    -0.00000047  0.15D-07  0.99D-07  2552.35
    5     2     2     1.09159872    -0.83502055  -261.94064698    -0.00000987    -0.00000048  0.15D-07  0.10D-06  2552.35
    5     3     3     1.09159788    -0.83502048  -261.94064691    -0.00001029    -0.00000053  0.16D-07  0.11D-06  2552.35
    5     4     4     1.09181681    -0.83556689  -261.93643916    -0.00000924    -0.00000044  0.14D-07  0.94D-07  2552.35
    5     5     5     1.09181693    -0.83556688  -261.93643914    -0.00000926    -0.00000044  0.14D-07  0.96D-07  2552.35
    5     6     6     1.09181183    -0.83556684  -261.93643910    -0.00000968    -0.00000048  0.15D-07  0.10D-06  2552.35
    5     7     7     1.09181650    -0.83556680  -261.93643906    -0.00000981    -0.00000049  0.14D-07  0.11D-06  2552.35
    5     8     8     1.09180935    -0.83556671  -261.93643897    -0.00001082    -0.00000057  0.16D-07  0.13D-06  2552.35
    5     9     9     1.09209463    -0.83631601  -261.93019713    -0.00001091    -0.00000061  0.13D-07  0.15D-06  2552.35
    6     1     1     1.09161547    -0.83502113  -261.94064757    -0.00000057    -0.00000003  0.20D-08  0.68D-08  3226.93
    6     2     2     1.09161550    -0.83502113  -261.94064757    -0.00000058    -0.00000004  0.21D-08  0.70D-08  3226.93
    6     3     3     1.09161485    -0.83502113  -261.94064756    -0.00000065    -0.00000004  0.26D-08  0.81D-08  3226.93
    6     4     4     1.09183208    -0.83556740  -261.93643967    -0.00000051    -0.00000003  0.16D-08  0.79D-08  3226.93
    6     5     5     1.09183154    -0.83556740  -261.93643967    -0.00000053    -0.00000003  0.18D-08  0.80D-08  3226.93
    6     6     6     1.09183212    -0.83556740  -261.93643967    -0.00000057    -0.00000003  0.17D-08  0.80D-08  3226.93
    6     7     7     1.09183154    -0.83556739  -261.93643965    -0.00000059    -0.00000004  0.21D-08  0.97D-08  3226.93
    6     8     8     1.09183135    -0.83556738  -261.93643965    -0.00000068    -0.00000004  0.24D-08  0.10D-07  3226.93
    6     9     9     1.09211373    -0.83631670  -261.93019781    -0.00000068    -0.00000006  0.23D-08  0.16D-07  3226.93
    7     1     1     1.09161951    -0.83502118  -261.94064761    -0.00000004    -0.00000000  0.17D-09  0.60D-09  3575.18
    7     2     2     1.09161547    -0.83502113  -261.94064757    -0.00000000    -0.00000003  0.20D-08  0.68D-08  3575.18
    7     3     3     1.09161550    -0.83502113  -261.94064757    -0.00000000    -0.00000004  0.21D-08  0.70D-08  3575.18
    7     4     4     1.09183564    -0.83556744  -261.93643970    -0.00000003    -0.00000000  0.15D-09  0.97D-09  3575.18
    7     5     5     1.09183605    -0.83556743  -261.93643970    -0.00000003    -0.00000000  0.13D-09  0.95D-09  3575.18
    7     6     6     1.09183160    -0.83556741  -261.93643967    -0.00000000    -0.00000003  0.17D-08  0.77D-08  3575.18
    7     7     7     1.09183208    -0.83556740  -261.93643967    -0.00000002    -0.00000003  0.16D-08  0.79D-08  3575.18
    7     8     8     1.09183212    -0.83556740  -261.93643967    -0.00000002    -0.00000003  0.17D-08  0.80D-08  3575.18
    7     9     9     1.09211843    -0.83631676  -261.93019787    -0.00000006    -0.00000001  0.22D-09  0.14D-08  3575.18


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.2%   6.1%
 P   0.4%  37.4%  39.5%

 Initialization:   0.5%
 Other:           15.5%

 Total CPU:     3575.2 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222///00           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0196668   0.7810052  -0.0000000  -0.0000000
                            0.5522595
 2222222222//200/           0.0000000   0.0000000   0.0000000   0.0000000   0.6862018  -0.3734694   0.0000000  -0.0000000
                            0.5522606
 2222222222/2//00           0.0000000   0.6766720  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.6765829   0.0000000
                            0.0000000
 2222222222//2/00           0.0000000   0.0000000   0.6766712   0.0000000  -0.0000000   0.0000000  -0.0000000   0.6765839
                            0.0000000
 22222222222//00/          -0.0000000  -0.0000000  -0.6766705  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.6765840
                            0.0000000
 22222222222//0/0           0.0000000   0.6766698  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.6765851  -0.0000000
                            0.0000000
 2222222222//20/0           0.6766696   0.0000000  -0.0000000   0.6765829  -0.0000000   0.0000000   0.0000000  -0.0000000
                           -0.0000000
 2222222222/2/00/           0.6766696  -0.0000000  -0.0000000  -0.6765828  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                           -0.0000000
 2222222222/2/0/0           0.0000000   0.0000000  -0.0000000   0.0000000   0.6665349   0.4075336   0.0000000   0.0000000
                           -0.5522607

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.957093    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.957095    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000002   -0.000000   -0.000000
 3          -0.000000    0.957095   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.000000    0.956999    0.000000   -0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000    0.885323   -0.000000   -0.000000   -0.000000    0.363386    0.000000
 6           0.000000    0.000000   -0.000000   -0.363386    0.000000   -0.000000    0.000000    0.885325    0.000001
 7          -0.000002    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.957000   -0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.957000    0.000000    0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000001    0.956863

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957093    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.957095    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.957095   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.956999    0.000000    0.000000    0.000000    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.956998    0.000000   -0.000000   -0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.957000    0.000000    0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957000    0.000000    0.000000
 8          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.957000   -0.000000
 9          -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.956863


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95709304 (fixed)   0.95710016 (relaxed)   0.95709304 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004695   -0.00011606   -0.72159410
 Singles      0.01264556   -0.04731720   -0.05301477
 Pairs        0.07897825   -0.00000000   -0.06041231
 Total        1.09167076   -0.04743327   -0.83502118
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10562644
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02004705
 One electron energy                 -448.97193609
 Two electron energy                  187.03128847
 Virial quotient                       -3.15514935
 Correlation energy                    -0.83502118
 !MRCI STATE 1.2 Energy              -261.940647614397

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01719464 (Davidson, fixed reference)
 Cluster corrected energies          -262.01718108 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01719464 (Davidson, rotated reference)

 Cluster corrected energies          -262.01581742 (Pople, fixed reference)
 Cluster corrected energies          -262.01580305 (Pople, relaxed reference)
 Cluster corrected energies          -262.01581742 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95709482 (fixed)   0.95710194 (relaxed)   0.95709482 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004696   -0.00011606   -0.72160270
 Singles      0.01264278   -0.04731069   -0.05301057
 Pairs        0.07897699    0.00000000   -0.06040787
 Total        1.09166672   -0.04742676   -0.83502113
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10562644
 Nuclear energy                         0.00000000
 Kinetic energy                        83.01996885
 One electron energy                 -448.97206978
 Two electron energy                  187.03142221
 Virial quotient                       -3.15515232
 Correlation energy                    -0.83502113
 !MRCI STATE 2.2 Energy              -261.940647569682

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01719122 (Davidson, fixed reference)
 Cluster corrected energies          -262.01717766 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01719122 (Davidson, rotated reference)

 Cluster corrected energies          -262.01581379 (Pople, fixed reference)
 Cluster corrected energies          -262.01579941 (Pople, relaxed reference)
 Cluster corrected energies          -262.01581379 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95709480 (fixed)   0.95710192 (relaxed)   0.95709480 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004696   -0.00011606   -0.72160273
 Singles      0.01264275   -0.04731063   -0.05301051
 Pairs        0.07897706   -0.00000000   -0.06040788
 Total        1.09166676   -0.04742669   -0.83502113
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10562644
 Nuclear energy                         0.00000000
 Kinetic energy                        83.01996726
 One electron energy                 -448.97206735
 Two electron energy                  187.03141978
 Virial quotient                       -3.15515238
 Correlation energy                    -0.83502113
 !MRCI STATE 3.2 Energy              -261.940647567526

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01719125 (Davidson, fixed reference)
 Cluster corrected energies          -262.01717768 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01719125 (Davidson, rotated reference)

 Cluster corrected energies          -262.01581382 (Pople, fixed reference)
 Cluster corrected energies          -262.01579944 (Pople, relaxed reference)
 Cluster corrected energies          -262.01581382 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95699862 (fixed)   0.95700431 (relaxed)   0.95699862 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004629   -0.00012554   -0.72182618
 Singles      0.01270066   -0.04745408   -0.05317888
 Pairs        0.07913924    0.00000000   -0.06056237
 Total        1.09188619   -0.04757962   -0.83556744
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10087226
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02375716
 One electron energy                 -448.97957588
 Two electron energy                  187.04313617
 Virial quotient                       -3.15495767
 Correlation energy                    -0.83556744
 !MRCI STATE 4.2 Energy              -261.936439702742

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01321681 (Davidson, fixed reference)
 Cluster corrected energies          -262.01320598 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01321681 (Davidson, rotated reference)

 Cluster corrected energies          -262.01184950 (Pople, fixed reference)
 Cluster corrected energies          -262.01183802 (Pople, relaxed reference)
 Cluster corrected energies          -262.01184950 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.88532304 (fixed)   0.95700413 (relaxed)   0.95699845 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004629   -0.00012553   -0.72182560
 Singles      0.01270090   -0.04745432   -0.05317911
 Pairs        0.07913940   -0.00000010   -0.06056272
 Total        1.09188659   -0.04757996   -0.83556743
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10087226
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02375913
 One electron energy                 -448.97957833
 Two electron energy                  187.04313863
 Virial quotient                       -3.15495760
 Correlation energy                    -0.83556743
 !MRCI STATE 5.2 Energy              -261.936439697449

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01321714 (Davidson, fixed reference)
 Cluster corrected energies          -262.01320631 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01321714 (Davidson, rotated reference)

 Cluster corrected energies          -262.01184985 (Pople, fixed reference)
 Cluster corrected energies          -262.01183837 (Pople, relaxed reference)
 Cluster corrected energies          -262.01184985 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.88532488 (fixed)   0.95700608 (relaxed)   0.95700040 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004629   -0.00012554   -0.72183197
 Singles      0.01269894   -0.04744933   -0.05317620
 Pairs        0.07913691   -0.00000131   -0.06055923
 Total        1.09188214   -0.04757618   -0.83556741
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10087226
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02370513
 One electron energy                 -448.97970943
 Two electron energy                  187.04326976
 Virial quotient                       -3.15495965
 Correlation energy                    -0.83556741
 !MRCI STATE 6.2 Energy              -261.936439670304

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01321339 (Davidson, fixed reference)
 Cluster corrected energies          -262.01320256 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01321339 (Davidson, rotated reference)

 Cluster corrected energies          -262.01184588 (Pople, fixed reference)
 Cluster corrected energies          -262.01183439 (Pople, relaxed reference)
 Cluster corrected energies          -262.01184588 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Coefficient of reference function:   C(0) = 0.95700019 (fixed)   0.95700587 (relaxed)   0.95700019 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004629   -0.00012554   -0.72183337
 Singles      0.01269856   -0.04744878   -0.05317581
 Pairs        0.07913777    0.00000000   -0.06055823
 Total        1.09188262   -0.04757432   -0.83556740
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10087226
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02370346
 One electron energy                 -448.97968455
 Two electron energy                  187.04324488
 Virial quotient                       -3.15495971
 Correlation energy                    -0.83556740
 !MRCI STATE 7.2 Energy              -261.936439669302

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01321379 (Davidson, fixed reference)
 Cluster corrected energies          -262.01320296 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01321379 (Davidson, rotated reference)

 Cluster corrected energies          -262.01184631 (Pople, fixed reference)
 Cluster corrected energies          -262.01183482 (Pople, relaxed reference)
 Cluster corrected energies          -262.01184631 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95700017 (fixed)   0.95700585 (relaxed)   0.95700017 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004629   -0.00012554   -0.72183331
 Singles      0.01269856   -0.04744881   -0.05317577
 Pairs        0.07913782    0.00000000   -0.06055833
 Total        1.09188267   -0.04757435   -0.83556740
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.10087226
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02370352
 One electron energy                 -448.97968647
 Two electron energy                  187.04324680
 Virial quotient                       -3.15495971
 Correlation energy                    -0.83556740
 !MRCI STATE 8.2 Energy              -261.936439666842

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.01321383 (Davidson, fixed reference)
 Cluster corrected energies          -262.01320300 (Davidson, relaxed reference)
 Cluster corrected energies          -262.01321383 (Davidson, rotated reference)

 Cluster corrected energies          -262.01184634 (Pople, fixed reference)
 Cluster corrected energies          -262.01183486 (Pople, relaxed reference)
 Cluster corrected energies          -262.01184634 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95686286 (fixed)   0.95686752 (relaxed)   0.95686286 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007109   -0.00020947   -0.00024622
 Singles      0.01275047   -0.04748644   -0.05324023
 Pairs        0.07937451   -0.78862085   -0.78283031
 Total        1.09219606   -0.83631676   -0.83631676
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -261.09388111
 Nuclear energy                         0.00000000
 Kinetic energy                        83.02829663
 One electron energy                 -448.98609662
 Two electron energy                  187.05589874
 Virial quotient                       -3.15471000
 Correlation energy                    -0.83631676
 !MRCI STATE 9.2 Energy              -261.930197872860

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -262.00730298 (Davidson, fixed reference)
 Cluster corrected energies          -262.00729409 (Davidson, relaxed reference)
 Cluster corrected energies          -262.00730298 (Davidson, rotated reference)

 Cluster corrected energies          -262.00595015 (Pople, fixed reference)
 Cluster corrected energies          -262.00594072 (Pople, relaxed reference)
 Cluster corrected energies          -262.00595015 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       57.06       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     3540.03       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     13372.43   3952.86   9408.17      6.55      1.07      3.38
 REAL TIME  *     13780.50 SEC
 DISK USED  *         3.51 GB (local),       28.38 GB (total)
 SF USED    *        21.98 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -262.01719464  AU                              
 SETTING HLSDIAG(14)    =      -262.01719122  AU                              
 SETTING HLSDIAG(15)    =      -262.01719125  AU                              
 SETTING HLSDIAG(16)    =      -262.01321681  AU                              
 SETTING HLSDIAG(17)    =      -262.01321714  AU                              
 SETTING HLSDIAG(18)    =      -262.01321339  AU                              
 SETTING HLSDIAG(19)    =      -262.01321379  AU                              
 SETTING HLSDIAG(20)    =      -262.01321383  AU                              
 SETTING HLSDIAG(21)    =      -262.00730298  AU                              


         HLSDIAG
    -262.2919318
    -262.2919318
    -262.2919318
    -262.0117410
    -262.0117409
    -262.0117411
    -262.0117409
    -262.0117408
    -262.0089684
    -262.0089684
    -262.0089684
    -262.0074650
    -262.0171946
    -262.0171912
    -262.0171912
    -262.0132168
    -262.0132171
    -262.0132134
    -262.0132138
    -262.0132138
    -262.0073030
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=  12

 Original energies:   -262.206076   -262.206076   -262.206076   -261.934888   -261.934888   -261.934888   -261.934888   -261.934888
                      -261.931550   -261.931550   -261.931550   -261.930274
 Replaced energies:   -262.291932   -262.291932   -262.291932   -262.011741   -262.011741   -262.011741   -262.011741   -262.011741
                      -262.008968   -262.008968   -262.008968   -262.007465

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   9

 Original energies:   -261.940648   -261.940648   -261.940648   -261.936440   -261.936440   -261.936440   -261.936440   -261.936440
                      -261.930198
 Replaced energies:   -262.017195   -262.017191   -262.017191   -262.013217   -262.013217   -262.013213   -262.013214   -262.013214
                      -262.007303



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -262.29193183

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      69.74   -7262.08      11.02    -589.16     -12.43    -156.63      38.44     326.71     -20.14

    2   2.2  0.5  0.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -69.74      -0.00      59.14    -153.16      80.90    -628.77    -268.99      10.85      -2.47       3.30

    3   3.2  0.5  0.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         7262.08     -59.14       0.00     -11.30     140.13     229.51    -481.77     262.41     -20.23    -326.62

    4   4.2  0.5  0.5       0.00       0.00       0.00   61494.79       0.00       0.00       0.00       0.00       0.00       0.00
                          -11.02     153.16      11.30      -0.00     262.84     829.79   -2054.90   -4764.85      40.43     -67.15

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   61494.80       0.00       0.00       0.00       0.00       0.00
                          589.16     -80.90    -140.13    -262.84      -0.00    1083.12   -2276.95     919.78    -414.81    2408.07

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   61494.76       0.00       0.00       0.00       0.00
                           12.43     628.77    -229.51    -829.79   -1083.12      -0.00     206.91     997.66    -926.62      24.22

    7   7.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   61494.80       0.00       0.00       0.00
                          156.63     268.99     481.77    2054.90    2276.95    -206.91       0.00     639.95    1968.08     472.94

    8   8.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61494.82       0.00       0.00
                          -38.44     -10.85    -262.41    4764.85    -919.78    -997.66    -639.95      -0.00   -1062.24     -87.49

    9   9.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62103.30       0.00
                         -326.71       2.47      20.23     -40.43     414.81     926.62   -1968.08    1062.24       0.00    1044.17

   10  10.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62103.29
                           20.14      -3.30     326.62      67.15   -2408.07     -24.22    -472.94      87.49   -1044.17       0.00

   11  11.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.66       0.10      -8.09     613.98    -248.02    2526.54    1104.28     -50.24      26.31       6.88

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.95    -853.91      -8.20      -0.00       0.00       0.00       0.00      -0.00     -32.22     123.27

   13   1.2  0.5 -0.5       0.00      52.09     -58.64     517.81      70.70    -437.17    -174.81      55.14       2.65      -0.09
                            0.00    7262.14      70.16      46.44      30.11      93.58    -251.52    -546.18      -2.01      10.90

   14   2.2  0.5 -0.5     -52.09       0.00   -7262.24     -16.12     590.48      13.40     150.02     -42.18     326.85     -17.90
                        -7262.14      -0.00      51.52     -16.56     135.02     232.90    -479.14     266.60      17.90     326.67

   15   3.2  0.5 -0.5      58.64    7262.24       0.00     -45.59     -23.89     -87.10     251.02     547.86       0.98       8.07
                          -70.16     -51.52       0.00     670.96     -10.25     191.59      94.21      44.31       0.19       3.08

   16   4.2  0.5 -0.5    -517.81      16.12      45.59       0.00     617.64    1448.49   -2856.23    1624.61      54.15   -2089.89
                          -46.44      16.56    -670.96       0.00    1612.67       6.35     195.37     -49.72   -2703.80     -21.61

   17   5.2  0.5 -0.5     -70.70    -590.48      23.89    -617.64      -0.00    -564.41   -1145.91   -2524.24      86.62    -211.81
                          -30.11    -135.02      10.25   -1612.67      -0.00    4505.72    2228.73     274.45      35.55    -105.53

   18   6.2  0.5 -0.5     437.17     -13.40      87.10   -1448.49     564.41       0.00   -3578.29    1494.99     458.20    1733.20
                          -93.58    -232.90    -191.59      -6.35   -4505.72       0.00   -1020.67    1379.63    -788.66    -297.02

   19   7.2  0.5 -0.5     174.81    -150.02    -251.02    2856.23    1145.91    3578.29      -0.00     125.39    -961.62     783.15
                          251.52     479.14     -94.21    -195.37   -2228.73    1020.67       0.00   -2324.82    -322.31     969.01

   20   8.2  0.5 -0.5     -55.14      42.18    -547.86   -1624.61    2524.24   -1494.99    -125.39      -0.00   -2212.43     -90.46
                          546.18    -266.60     -44.31      49.72    -274.45   -1379.63    2324.82      -0.00     -38.44    2236.32

   21   9.2  0.5 -0.5      -2.65    -326.85      -0.98     -54.15     -86.62    -458.20     961.62    2212.43      -0.00     -25.89
                            2.01     -17.90      -0.19    2703.80     -35.55     788.66     322.31      38.44       0.00      -8.30

   22  10.2  0.5 -0.5       0.09      17.90      -8.07    2089.89     211.81   -1733.20    -783.15      90.46      25.89       0.00
                          -10.90    -326.67      -3.08      21.61     105.53     297.02    -969.01   -2236.32       8.30       0.00

   23  11.2  0.5 -0.5      -2.34       0.56    -327.24      -3.39   -2381.63       4.45    -581.12     158.94    1042.64     -57.06
                         -327.15      10.76       2.42      56.42    -546.40    -949.22    1957.76    -999.24      56.87    1042.95

   24  12.2  0.5 -0.5     853.94      -6.90      -6.13       0.00      -0.00      -0.00       0.00      -0.00     267.40    4885.99
                           -6.06       8.25    -853.93       0.00       0.00       0.00       0.00      -0.00   -4887.39     266.51

   25   1.2  1.5  1.5       0.00      -0.00      -0.00    1385.62     175.79   -1160.02    -472.22     137.54       0.00       0.00
                           10.05    1234.65      11.86    -111.75     -77.85    -241.70     664.46    1468.09     -17.14      65.57

   26   2.2  1.5  1.5      -8.73      11.89   -1231.11      32.89   -1574.64     -23.99    -402.44      97.20    2606.20    -142.12
                         1231.07      -9.94      -8.83     -25.95     360.18     627.53   -1279.81     699.69    -142.55   -2604.69

   27   3.2  1.5  1.5      10.05    1234.29      11.85     111.74      77.84     241.67    -664.39   -1467.93     -17.15      65.61
                           -0.00       0.00      -0.00    1791.45     -29.48     500.94     256.35     101.25      -0.00      -0.00

   28   4.2  1.5  1.5       0.00       0.00      -0.00    2167.75    -234.01    2151.60     979.82      63.37       0.00      -0.00
                          -10.22   -1255.11     -12.05    -109.50     -76.28    -236.83     651.05    1438.45      -9.29      35.53

   29   5.2  1.5  1.5      36.48      -0.29      -0.26     -50.95     707.05    1231.87   -2512.34    1373.53       2.24      40.94
                            8.78     -11.95    1237.12     -33.66    1611.40      24.55     411.83     -99.47    1386.32     -75.60

   30   6.2  1.5  1.5   -1449.70      11.71      10.40      -1.29      17.84      31.07     -63.38      34.65     -88.83   -1623.13
                            5.37      -7.31     756.46      55.11   -2638.75     -40.21    -674.40     162.89     847.74     -46.23

   31   7.2  1.5  1.5       8.88     -12.09    1251.68      32.49   -1555.35     -23.70    -397.51      96.01    1402.77     -76.49
                         1251.91     -10.11      -8.98      25.64    -355.85    -619.99    1264.44    -691.29      76.76    1402.68

   32   8.2  1.5  1.5     -10.22   -1255.28     -12.06     109.48      76.27     236.80    -650.97   -1438.29      -9.29      35.55
                            0.00      -0.00      -0.00     957.46     377.93   -2799.86   -1192.13     171.52       0.00       0.00

   33   9.2  1.5  1.5    2239.23     -18.08     -16.06       0.00      -0.03      -0.05       0.09      -0.05      72.64    1327.41
                           15.89     -21.63    2239.24      -0.02       1.15       0.02       0.29      -0.07    1327.10     -72.37

   34   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.11     -13.77    1425.45      38.13   -1825.70     -27.82    -466.61     112.70   -3002.31     163.71

   35   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     464.16    -238.68    1930.07     846.46     -42.67      -0.00      -0.01

   36   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1421.61     -11.48     -10.20      29.97    -415.87    -724.56    1477.71    -807.88    -164.63   -3008.17

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.28     -14.00    1449.32     -37.36    1788.58      27.25     457.12    -110.41    1625.67     -88.65

   38   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           11.98    1470.88      14.13     120.64      84.04     260.93    -717.30   -1584.84      10.88     -41.62

   39   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.52    -800.53      -7.69     221.65     154.40     479.39   -1317.89   -2911.79      -5.92      22.66

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00   -3616.62    -166.00     745.95     243.86    -271.66       0.00       0.00

   41   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1445.54     -11.67     -10.37     -29.61     410.88     715.87   -1459.97     798.19      88.65    1619.92

   42   9.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.06   -2585.46     -24.83      -0.00      -0.00      -0.01       0.03       0.06     -10.09      38.60

   43   1.2  1.5 -0.5       0.00      -0.00      -0.00     799.99     101.49    -669.74    -272.64      79.41       0.00       0.00
                           -5.81    -712.82      -6.85      64.52      44.94     139.55    -383.63    -847.60       9.90     -37.86

   44   2.2  1.5 -0.5      -5.04       6.87    -710.78      18.99    -909.12     -13.85    -232.35      56.12    1504.69     -82.05
                         -710.76       5.74       5.10      14.98    -207.95    -362.30     738.90    -403.96      82.30    1503.82

   45   3.2  1.5 -0.5       5.80     712.62       6.84      64.51      44.94     139.53    -383.59    -847.51      -9.90      37.88
                            0.00      -0.00       0.00   -1034.29      17.02    -289.22    -148.01     -58.46       0.00       0.00

   46   4.2  1.5 -0.5       0.00       0.00      -0.00    1251.55    -135.11    1242.23     565.70      36.59       0.00      -0.00
                            5.90     724.64       6.96      63.22      44.04     136.73    -375.88    -830.49       5.36     -20.51

   47   5.2  1.5 -0.5      21.06      -0.17      -0.15     -29.41     408.21     711.22   -1450.50     793.01       1.29      23.63
                           -5.07       6.90    -714.25      19.43    -930.34     -14.18    -237.77      57.43    -800.39      43.65

   48   6.2  1.5 -0.5    -836.98       6.76       6.00      -0.74      10.30      17.94     -36.59      20.01     -51.29    -937.12
                           -3.10       4.22    -436.75     -31.82    1523.48      23.21     389.37     -94.04    -489.44      26.69

   49   7.2  1.5 -0.5       5.13      -6.98     722.66      18.76    -897.98     -13.68    -229.50      55.43     809.89     -44.16
                         -722.79       5.84       5.18     -14.80     205.45     357.95    -730.03     399.12     -44.32    -809.84

   50   8.2  1.5 -0.5      -5.90    -724.74      -6.96      63.21      44.03     136.72    -375.84    -830.40      -5.36      20.52
                           -0.00       0.00       0.00    -552.79    -218.20    1616.50     688.28     -99.03      -0.00      -0.00

   51   9.2  1.5 -0.5    1292.82     -10.44      -9.27       0.00      -0.01      -0.03       0.05      -0.03      41.94     766.38
                           -9.17      12.49   -1292.83       0.01      -0.66      -0.01      -0.17       0.04    -766.20      41.78

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

    1   1.2  0.5  0.5       0.00       0.00       0.00     -52.09      58.64    -517.81     -70.70     437.17     174.81     -55.14
                            2.66       6.95      -0.00    7262.14      70.16      46.44      30.11      93.58    -251.52    -546.18

    2   2.2  0.5  0.5       0.00       0.00      52.09       0.00    7262.24      16.12    -590.48     -13.40    -150.02      42.18
                           -0.10     853.91   -7262.14       0.00      51.52     -16.56     135.02     232.90    -479.14     266.60

    3   3.2  0.5  0.5       0.00       0.00     -58.64   -7262.24       0.00      45.59      23.89      87.10    -251.02    -547.86
                            8.09       8.20     -70.16     -51.52      -0.00     670.96     -10.25     191.59      94.21      44.31

    4   4.2  0.5  0.5       0.00       0.00     517.81     -16.12     -45.59       0.00    -617.64   -1448.49    2856.23   -1624.61
                         -613.98       0.00     -46.44      16.56    -670.96      -0.00    1612.67       6.35     195.37     -49.72

    5   5.2  0.5  0.5       0.00       0.00      70.70     590.48     -23.89     617.64      -0.00     564.41    1145.91    2524.24
                          248.02      -0.00     -30.11    -135.02      10.25   -1612.67       0.00    4505.72    2228.73     274.45

    6   6.2  0.5  0.5       0.00       0.00    -437.17      13.40     -87.10    1448.49    -564.41       0.00    3578.29   -1494.99
                        -2526.54      -0.00     -93.58    -232.90    -191.59      -6.35   -4505.72      -0.00   -1020.67    1379.63

    7   7.2  0.5  0.5       0.00       0.00    -174.81     150.02     251.02   -2856.23   -1145.91   -3578.29      -0.00    -125.39
                        -1104.28      -0.00     251.52     479.14     -94.21    -195.37   -2228.73    1020.67      -0.00   -2324.82

    8   8.2  0.5  0.5       0.00       0.00      55.14     -42.18     547.86    1624.61   -2524.24    1494.99     125.39      -0.00
                           50.24       0.00     546.18    -266.60     -44.31      49.72    -274.45   -1379.63    2324.82       0.00

    9   9.2  0.5  0.5       0.00       0.00       2.65     326.85       0.98      54.15      86.62     458.20    -961.62   -2212.43
                          -26.31      32.22       2.01     -17.90      -0.19    2703.80     -35.55     788.66     322.31      38.44

   10  10.2  0.5  0.5       0.00       0.00      -0.09     -17.90       8.07   -2089.89    -211.81    1733.20     783.15     -90.46
                           -6.88    -123.27     -10.90    -326.67      -3.08      21.61     105.53     297.02    -969.01   -2236.32

   11  11.2  0.5  0.5   62103.31       0.00       2.34      -0.56     327.24       3.39    2381.63      -4.45     581.12    -158.94
                            0.00   -4893.15    -327.15      10.76       2.42      56.42    -546.40    -949.22    1957.76    -999.24

   12  12.2  0.5  0.5       0.00   62433.25    -853.94       6.90       6.13      -0.00       0.00       0.00      -0.00       0.00
                         4893.15      -0.00      -6.06       8.25    -853.93       0.00       0.00       0.00       0.00      -0.00

   13   1.2  0.5 -0.5       2.34    -853.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          327.15       6.06       0.00     -69.74    7262.08     -11.02     589.16      12.43     156.63     -38.44

   14   2.2  0.5 -0.5      -0.56       6.90       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.76      -8.25      69.74       0.00     -59.14     153.16     -80.90     628.77     268.99     -10.85

   15   3.2  0.5 -0.5     327.24       6.13       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00
                           -2.42     853.93   -7262.08      59.14      -0.00      11.30    -140.13    -229.51     481.77    -262.41

   16   4.2  0.5 -0.5       3.39      -0.00       0.00       0.00       0.00   61494.79       0.00       0.00       0.00       0.00
                          -56.42      -0.00      11.02    -153.16     -11.30       0.00    -262.84    -829.79    2054.90    4764.85

   17   5.2  0.5 -0.5    2381.63       0.00       0.00       0.00       0.00       0.00   61494.80       0.00       0.00       0.00
                          546.40      -0.00    -589.16      80.90     140.13     262.84       0.00   -1083.12    2276.95    -919.78

   18   6.2  0.5 -0.5      -4.45       0.00       0.00       0.00       0.00       0.00       0.00   61494.76       0.00       0.00
                          949.22      -0.00     -12.43    -628.77     229.51     829.79    1083.12       0.00    -206.91    -997.66

   19   7.2  0.5 -0.5     581.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61494.80       0.00
                        -1957.76      -0.00    -156.63    -268.99    -481.77   -2054.90   -2276.95     206.91      -0.00    -639.95

   20   8.2  0.5 -0.5    -158.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61494.82
                          999.24       0.00      38.44      10.85     262.41   -4764.85     919.78     997.66     639.95       0.00

   21   9.2  0.5 -0.5   -1042.64    -267.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -56.87    4887.39     326.71      -2.47     -20.23      40.43    -414.81    -926.62    1968.08   -1062.24

   22  10.2  0.5 -0.5      57.06   -4885.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1042.95    -266.51     -20.14       3.30    -326.62     -67.15    2408.07      24.22     472.94     -87.49

   23  11.2  0.5 -0.5       0.00     121.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      38.90       2.66      -0.10       8.09    -613.98     248.02   -2526.54   -1104.28      50.24

   24  12.2  0.5 -0.5    -121.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -38.90       0.00       6.95     853.91       8.20       0.00      -0.00      -0.00      -0.00       0.00

   25   1.2  1.5  1.5      -0.00   -2570.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2602.80       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.2  1.5  1.5      20.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           64.68      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.2  1.5  1.5    2604.08      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    2570.78      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   4.2  1.5  1.5      -0.00       5.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1410.37      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   5.2  1.5  1.5      -1.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           11.03      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   6.2  1.5  1.5      40.31      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.74      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5      11.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -34.83      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   8.2  1.5  1.5    1410.91      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -4.91      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   9.2  1.5  1.5     -32.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.56      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   1.2  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00     799.99     101.49    -669.74    -272.64      79.41
                          -23.89       0.00       5.81     712.82       6.85     -64.52     -44.94    -139.55     383.63     847.60

   35   2.2  1.5  0.5       0.00       0.00      -5.04       6.87    -710.78      18.99    -909.12     -13.85    -232.35      56.12
                           -0.00   -2968.74     710.76      -5.74      -5.10     -14.98     207.95     362.30    -738.90     403.96

   36   3.2  1.5  0.5       0.00       0.00       5.80     712.62       6.84      64.51      44.94     139.53    -383.59    -847.51
                           74.70      -0.00      -0.00       0.00      -0.00    1034.29     -17.02     289.22     148.01      58.46

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00      -0.00    1251.55    -135.11    1242.23     565.70      36.59
                           12.94      -0.00      -5.90    -724.64      -6.96     -63.22     -44.04    -136.73     375.88     830.49

   38   5.2  1.5  0.5       0.00       0.00      21.06      -0.17      -0.15     -29.41     408.21     711.22   -1450.50     793.01
                        -1651.85      -0.00       5.07      -6.90     714.25     -19.43     930.34      14.18     237.77     -57.43

   39   6.2  1.5  0.5       0.00       0.00    -836.98       6.76       6.00      -0.74      10.30      17.94     -36.59      20.01
                          899.25      -0.00       3.10      -4.22     436.75      31.82   -1523.48     -23.21    -389.37      94.04

   40   7.2  1.5  0.5       0.00       0.00       5.13      -6.98     722.66      18.76    -897.98     -13.68    -229.50      55.43
                           -0.00       5.95     722.79      -5.84      -5.18      14.80    -205.45    -357.95     730.03    -399.12

   41   8.2  1.5  0.5       0.00       0.00      -5.90    -724.74      -6.96      63.21      44.03     136.72    -375.84    -830.40
                          -40.22       0.00       0.00      -0.00      -0.00     552.79     218.20   -1616.50    -688.28      99.03

   42   9.2  1.5  0.5       0.00       0.00    1292.82     -10.44      -9.27       0.00      -0.01      -0.03       0.05      -0.03
                         1532.41       0.00       9.17     -12.49    1292.83      -0.01       0.66       0.01       0.17      -0.04

   43   1.2  1.5 -0.5      -0.00   -1484.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1502.73      -0.00      10.11     -13.77    1425.45      38.13   -1825.70     -27.82    -466.61     112.70

   44   2.2  1.5 -0.5      11.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -37.34       0.00      -0.00       0.00      -0.00     464.16    -238.68    1930.07     846.46     -42.67

   45   3.2  1.5 -0.5    1503.46      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1484.24    1421.61     -11.48     -10.20      29.97    -415.87    -724.56    1477.71    -807.88

   46   4.2  1.5 -0.5      -0.00       2.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -814.28       0.00      10.28     -14.00    1449.32     -37.36    1788.58      27.25     457.12    -110.41

   47   5.2  1.5 -0.5      -0.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.37       0.00      11.98    1470.88      14.13     120.64      84.04     260.93    -717.30   -1584.84

   48   6.2  1.5 -0.5      23.27      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.89       0.00      -6.52    -800.53      -7.69     221.65     154.40     479.39   -1317.89   -2911.79

   49   7.2  1.5 -0.5       6.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           20.11       0.00       0.00      -0.00       0.00   -3616.62    -166.00     745.95     243.86    -271.66

   50   8.2  1.5 -0.5     814.59      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       2.84    1445.54     -11.67     -10.37     -29.61     410.88     715.87   -1459.97     798.19

   51   9.2  1.5 -0.5     -19.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.10       0.00     -21.06   -2585.46     -24.83      -0.00      -0.00      -0.01       0.03       0.06

   52   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00    1385.62     175.79   -1160.02    -472.22     137.54
                           -0.00      -0.00     -10.05   -1234.65     -11.86     111.75      77.85     241.70    -664.46   -1468.09

   53   2.2  1.5 -1.5       0.00       0.00      -8.73      11.89   -1231.11      32.89   -1574.64     -23.99    -402.44      97.20
                           -0.00      -0.00   -1231.07       9.94       8.83      25.95    -360.18    -627.53    1279.81    -699.69

   54   3.2  1.5 -1.5       0.00       0.00      10.05    1234.29      11.85     111.74      77.84     241.67    -664.39   -1467.93
                           -0.00      -0.00       0.00      -0.00       0.00   -1791.45      29.48    -500.94    -256.35    -101.25

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00    2167.75    -234.01    2151.60     979.82      63.37
                           -0.00      -0.00      10.22    1255.11      12.05     109.50      76.28     236.83    -651.05   -1438.45

   56   5.2  1.5 -1.5       0.00       0.00      36.48      -0.29      -0.26     -50.95     707.05    1231.87   -2512.34    1373.53
                           -0.00      -0.00      -8.78      11.95   -1237.12      33.66   -1611.40     -24.55    -411.83      99.47

   57   6.2  1.5 -1.5       0.00       0.00   -1449.70      11.71      10.40      -1.29      17.84      31.07     -63.38      34.65
                           -0.00      -0.00      -5.37       7.31    -756.46     -55.11    2638.75      40.21     674.40    -162.89

   58   7.2  1.5 -1.5       0.00       0.00       8.88     -12.09    1251.68      32.49   -1555.35     -23.70    -397.51      96.01
                           -0.00      -0.00   -1251.91      10.11       8.98     -25.64     355.85     619.99   -1264.44     691.29

   59   8.2  1.5 -1.5       0.00       0.00     -10.22   -1255.28     -12.06     109.48      76.27     236.80    -650.97   -1438.29
                           -0.00      -0.00      -0.00       0.00       0.00    -957.46    -377.93    2799.86    1192.13    -171.52

   60   9.2  1.5 -1.5       0.00       0.00    2239.23     -18.08     -16.06       0.00      -0.03      -0.05       0.09      -0.05
                           -0.00      -0.00     -15.89      21.63   -2239.24       0.02      -1.15      -0.02      -0.29       0.07


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5      -2.65       0.09      -2.34     853.94       0.00      -8.73      10.05       0.00      36.48   -1449.70
                           -2.01      10.90     327.15       6.06     -10.05   -1231.07       0.00      10.22      -8.78      -5.37

    2   2.2  0.5  0.5    -326.85      17.90       0.56      -6.90      -0.00      11.89    1234.29       0.00      -0.29      11.71
                           17.90     326.67     -10.76      -8.25   -1234.65       9.94      -0.00    1255.11      11.95       7.31

    3   3.2  0.5  0.5      -0.98      -8.07    -327.24      -6.13      -0.00   -1231.11      11.85      -0.00      -0.26      10.40
                            0.19       3.08      -2.42     853.93     -11.86       8.83       0.00      12.05   -1237.12    -756.46

    4   4.2  0.5  0.5     -54.15    2089.89      -3.39       0.00    1385.62      32.89     111.74    2167.75     -50.95      -1.29
                        -2703.80     -21.61     -56.42      -0.00     111.75      25.95   -1791.45     109.50      33.66     -55.11

    5   5.2  0.5  0.5     -86.62     211.81   -2381.63      -0.00     175.79   -1574.64      77.84    -234.01     707.05      17.84
                           35.55    -105.53     546.40      -0.00      77.85    -360.18      29.48      76.28   -1611.40    2638.75

    6   6.2  0.5  0.5    -458.20   -1733.20       4.45      -0.00   -1160.02     -23.99     241.67    2151.60    1231.87      31.07
                         -788.66    -297.02     949.22      -0.00     241.70    -627.53    -500.94     236.83     -24.55      40.21

    7   7.2  0.5  0.5     961.62    -783.15    -581.12       0.00    -472.22    -402.44    -664.39     979.82   -2512.34     -63.38
                         -322.31     969.01   -1957.76      -0.00    -664.46    1279.81    -256.35    -651.05    -411.83     674.40

    8   8.2  0.5  0.5    2212.43      90.46     158.94      -0.00     137.54      97.20   -1467.93      63.37    1373.53      34.65
                          -38.44    2236.32     999.24       0.00   -1468.09    -699.69    -101.25   -1438.45      99.47    -162.89

    9   9.2  0.5  0.5      -0.00      25.89    1042.64     267.40       0.00    2606.20     -17.15       0.00       2.24     -88.83
                           -0.00      -8.30     -56.87    4887.39      17.14     142.55       0.00       9.29   -1386.32    -847.74

   10  10.2  0.5  0.5     -25.89       0.00     -57.06    4885.99       0.00    -142.12      65.61      -0.00      40.94   -1623.13
                            8.30      -0.00   -1042.95    -266.51     -65.57    2604.69       0.00     -35.53      75.60      46.23

   11  11.2  0.5  0.5   -1042.64      57.06       0.00    -121.33      -0.00      20.74    2604.08      -0.00      -1.02      40.31
                           56.87    1042.95       0.00      38.90   -2602.80     -64.68       0.00   -1410.37     -11.03      -6.74

   12  12.2  0.5  0.5    -267.40   -4885.99     121.33       0.00   -2570.63       0.00      -0.00       5.15       0.00      -0.00
                        -4887.39     266.51     -38.90      -0.00      -0.00       0.00   -2570.78       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -326.71      20.14      -2.66      -6.95       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.47      -3.30       0.10    -853.91       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           20.23     326.62      -8.09      -8.20       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -40.43      67.15     613.98      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          414.81   -2408.07    -248.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          926.62     -24.22    2526.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1968.08    -472.94    1104.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1062.24      87.49     -50.24      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.2  0.5 -0.5   62103.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1044.17      26.31     -32.22       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.2  0.5 -0.5       0.00   62103.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1044.17      -0.00       6.88     123.27       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.2  0.5 -0.5       0.00       0.00   62103.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -26.31      -6.88      -0.00    4893.15       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.2  0.5 -0.5       0.00       0.00       0.00   62433.25       0.00       0.00       0.00       0.00       0.00       0.00
                           32.22    -123.27   -4893.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00       0.00   60297.84       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00    3764.74       0.00       0.00      -0.00

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00   60298.59       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    4105.51   -2234.51

   27   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   60298.59       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00   -3764.74       0.00      -0.00    4047.96      -0.00       0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61170.88       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -4047.96      -0.00      -0.00       0.00

   29   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61170.80       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00   -4105.51       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61171.63
                           -0.00      -0.00      -0.00      -0.00       0.00    2234.51      -0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00   -3602.53   -6619.33

   32   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    4047.93      -0.00      -0.00   -3768.01      -0.00      -0.00

   33   9.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    6631.60      -0.00      -0.00      -0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00      -0.00   -1484.15      -0.00       0.00      -0.00      -0.00     -67.93    2697.79
                           -9.90      37.86    1502.73       0.00       0.00   -2173.58       0.00       0.00      -0.00      -0.00

   35   2.2  1.5  0.5    1504.69     -82.05      11.97       0.00      -0.00      -0.00   -2173.66      -0.00       0.00      -0.00
                          -82.30   -1503.82      37.34      -0.00    2173.58       0.00      -0.00    2337.10      -0.00      -0.00

   36   3.2  1.5  0.5      -9.90      37.88    1503.46      -0.00       0.00    2173.66       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00    1484.24      -0.00       0.00      -0.00      -0.00   -2302.38   -1407.78

   37   4.2  1.5  0.5       0.00      -0.00      -0.00       2.97       0.00       0.00       0.00      -0.00    4349.48     109.53
                           -5.36      20.51     814.28      -0.00      -0.00   -2337.10       0.00      -0.00       0.00      -0.00

   38   5.2  1.5  0.5       1.29      23.63      -0.59       0.00      67.93      -0.00       0.00   -4349.48      -0.00       0.00
                          800.39     -43.65       6.37      -0.00       0.00       0.00    2302.38      -0.00       0.00       0.00

   39   6.2  1.5  0.5     -51.29    -937.12      23.27      -0.00   -2697.79       0.00       0.00    -109.53      -0.00      -0.00
                          489.44     -26.69       3.89      -0.00       0.00       0.00    1407.78       0.00      -0.00       0.00

   40   7.2  1.5  0.5     809.89     -44.16       6.45       0.00      -0.00      -0.00   -2337.14      -0.00       0.00      -0.00
                           44.32     809.84     -20.11      -0.00   -2337.09      -0.00       0.00   -2175.47      -0.00       0.00

   41   8.2  1.5  0.5      -5.36      20.52     814.59      -0.00       0.00    2337.15      -0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00      -2.84      -0.00       0.00       0.00      -0.00    2269.62   -3712.15

   42   9.2  1.5  0.5      41.94     766.38     -19.03       0.00    3828.69      -0.00      -0.00       0.00      -0.00      -0.00
                          766.20     -41.78       6.10      -0.00       0.00       0.00    3828.76       0.00       0.00      -0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -3002.31     163.71     -23.89       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01      -0.00   -2968.74      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -164.63   -3008.17      74.70      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1625.67     -88.65      12.94      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.88     -41.62   -1651.85      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.92      22.66     899.25      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       5.95      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           88.65    1619.92     -40.22       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.09      38.60    1532.41       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.2  1.5 -1.5       0.00       0.00      -0.00   -2570.63       0.00       0.00       0.00       0.00       0.00       0.00
                           17.14     -65.57   -2602.80      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.2  1.5 -1.5    2606.20    -142.12      20.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          142.55    2604.69     -64.68       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.2  1.5 -1.5     -17.15      65.61    2604.08      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00   -2570.78      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5       0.00      -0.00      -0.00       5.15       0.00       0.00       0.00       0.00       0.00       0.00
                            9.29     -35.53   -1410.37       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.2  1.5 -1.5       2.24      40.94      -1.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1386.32      75.60     -11.03       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.2  1.5 -1.5     -88.83   -1623.13      40.31      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -847.74      46.23      -6.74       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.2  1.5 -1.5    1402.77     -76.49      11.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -76.76   -1402.68      34.83       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.2  1.5 -1.5      -9.29      35.55    1410.91      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       4.91      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.2  1.5 -1.5      72.64    1327.41     -32.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1327.10      72.37     -10.56       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.2  0.5  0.5       8.88     -10.22    2239.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1251.91      -0.00     -15.89     -10.11       0.00   -1421.61     -10.28     -11.98       6.52      -0.00

    2   2.2  0.5  0.5     -12.09   -1255.28     -18.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.11       0.00      21.63      13.77      -0.00      11.48      14.00   -1470.88     800.53       0.00

    3   3.2  0.5  0.5    1251.68     -12.06     -16.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.98       0.00   -2239.24   -1425.45       0.00      10.20   -1449.32     -14.13       7.69      -0.00

    4   4.2  0.5  0.5      32.49     109.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.64    -957.46       0.02     -38.13    -464.16     -29.97      37.36    -120.64    -221.65    3616.62

    5   5.2  0.5  0.5   -1555.35      76.27      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          355.85    -377.93      -1.15    1825.70     238.68     415.87   -1788.58     -84.04    -154.40     166.00

    6   6.2  0.5  0.5     -23.70     236.80      -0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          619.99    2799.86      -0.02      27.82   -1930.07     724.56     -27.25    -260.93    -479.39    -745.95

    7   7.2  0.5  0.5    -397.51    -650.97       0.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1264.44    1192.13      -0.29     466.61    -846.46   -1477.71    -457.12     717.30    1317.89    -243.86

    8   8.2  0.5  0.5      96.01   -1438.29      -0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          691.29    -171.52       0.07    -112.70      42.67     807.88     110.41    1584.84    2911.79     271.66

    9   9.2  0.5  0.5    1402.77      -9.29      72.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -76.76      -0.00   -1327.10    3002.31       0.00     164.63   -1625.67     -10.88       5.92      -0.00

   10  10.2  0.5  0.5     -76.49      35.55    1327.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1402.68      -0.00      72.37    -163.71       0.01    3008.17      88.65      41.62     -22.66      -0.00

   11  11.2  0.5  0.5      11.17    1410.91     -32.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           34.83       0.00     -10.56      23.89       0.00     -74.70     -12.94    1651.85    -899.25       0.00

   12  12.2  0.5  0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       4.91       0.00      -0.00    2968.74       0.00       0.00       0.00       0.00      -5.95

   13   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -5.04       5.80       0.00      21.06    -836.98       5.13
                            0.00       0.00       0.00      -5.81    -710.76       0.00       5.90      -5.07      -3.10    -722.79

   14   2.2  0.5 -0.5       0.00       0.00       0.00      -0.00       6.87     712.62       0.00      -0.17       6.76      -6.98
                            0.00       0.00       0.00    -712.82       5.74      -0.00     724.64       6.90       4.22       5.84

   15   3.2  0.5 -0.5       0.00       0.00       0.00      -0.00    -710.78       6.84      -0.00      -0.15       6.00     722.66
                            0.00       0.00       0.00      -6.85       5.10       0.00       6.96    -714.25    -436.75       5.18

   16   4.2  0.5 -0.5       0.00       0.00       0.00     799.99      18.99      64.51    1251.55     -29.41      -0.74      18.76
                            0.00       0.00       0.00      64.52      14.98   -1034.29      63.22      19.43     -31.82     -14.80

   17   5.2  0.5 -0.5       0.00       0.00       0.00     101.49    -909.12      44.94    -135.11     408.21      10.30    -897.98
                            0.00       0.00       0.00      44.94    -207.95      17.02      44.04    -930.34    1523.48     205.45

   18   6.2  0.5 -0.5       0.00       0.00       0.00    -669.74     -13.85     139.53    1242.23     711.22      17.94     -13.68
                            0.00       0.00       0.00     139.55    -362.30    -289.22     136.73     -14.18      23.21     357.95

   19   7.2  0.5 -0.5       0.00       0.00       0.00    -272.64    -232.35    -383.59     565.70   -1450.50     -36.59    -229.50
                            0.00       0.00       0.00    -383.63     738.90    -148.01    -375.88    -237.77     389.37    -730.03

   20   8.2  0.5 -0.5       0.00       0.00       0.00      79.41      56.12    -847.51      36.59     793.01      20.01      55.43
                            0.00       0.00       0.00    -847.60    -403.96     -58.46    -830.49      57.43     -94.04     399.12

   21   9.2  0.5 -0.5       0.00       0.00       0.00       0.00    1504.69      -9.90       0.00       1.29     -51.29     809.89
                            0.00       0.00       0.00       9.90      82.30       0.00       5.36    -800.39    -489.44     -44.32

   22  10.2  0.5 -0.5       0.00       0.00       0.00       0.00     -82.05      37.88      -0.00      23.63    -937.12     -44.16
                            0.00       0.00       0.00     -37.86    1503.82       0.00     -20.51      43.65      26.69    -809.84

   23  11.2  0.5 -0.5       0.00       0.00       0.00      -0.00      11.97    1503.46      -0.00      -0.59      23.27       6.45
                            0.00       0.00       0.00   -1502.73     -37.34       0.00    -814.28      -6.37      -3.89      20.11

   24  12.2  0.5 -0.5       0.00       0.00       0.00   -1484.15       0.00      -0.00       2.97       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00   -1484.24       0.00       0.00       0.00       0.00

   25   1.2  1.5  1.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      67.93   -2697.79      -0.00
                            0.00   -4047.93      -0.00      -0.00   -2173.58       0.00       0.00      -0.00      -0.00    2337.09

   26   2.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00    2173.66       0.00      -0.00       0.00      -0.00
                           -0.00       0.00   -6631.60    2173.58      -0.00      -0.00    2337.10      -0.00      -0.00       0.00

   27   3.2  1.5  1.5       0.00       0.00       0.00      -0.00   -2173.66       0.00       0.00       0.00       0.00   -2337.14
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00   -2302.38   -1407.78      -0.00

   28   4.2  1.5  1.5       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00   -4349.48    -109.53      -0.00
                           -0.00    3768.01       0.00      -0.00   -2337.10       0.00       0.00       0.00      -0.00    2175.47

   29   5.2  1.5  1.5       0.00       0.00       0.00     -67.93       0.00      -0.00    4349.48      -0.00      -0.00       0.00
                         3602.53       0.00       0.00       0.00       0.00    2302.38      -0.00      -0.00       0.00       0.00

   30   6.2  1.5  1.5       0.00       0.00       0.00    2697.79      -0.00      -0.00     109.53       0.00      -0.00      -0.00
                         6619.33       0.00      -0.00       0.00       0.00    1407.78       0.00      -0.00      -0.00      -0.00

   31   7.2  1.5  1.5   61171.54       0.00       0.00       0.00       0.00    2337.14       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.01   -2337.09      -0.00       0.00   -2175.47      -0.00       0.00      -0.00

   32   8.2  1.5  1.5       0.00   61171.53       0.00      -0.00   -2337.15       0.00       0.00       0.00      -0.00   -2175.52
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    2269.62   -3712.15       0.00

   33   9.2  1.5  1.5       0.00       0.00   62468.81   -3828.69       0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.01      -0.00       0.00       0.00       0.00    3828.76       0.00       0.00      -0.00       0.00

   34   1.2  1.5  0.5       0.00      -0.00   -3828.69   60297.84       0.00       0.00       0.00       0.00       0.00       0.00
                         2337.09       0.00      -0.00      -0.00       0.00    1254.91       0.00       0.00      -0.00       0.00

   35   2.2  1.5  0.5       0.00   -2337.15       0.00       0.00   60298.59       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    1368.50    -744.84      -0.00

   36   3.2  1.5  0.5    2337.14       0.00       0.00       0.00       0.00   60298.59       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -3828.76   -1254.91       0.00      -0.00    1349.32      -0.00       0.00       0.00

   37   4.2  1.5  0.5       0.00       0.00      -0.00       0.00       0.00       0.00   61170.88       0.00       0.00       0.00
                         2175.47       0.00      -0.00      -0.00      -0.00   -1349.32      -0.00      -0.00       0.00      -0.00

   38   5.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61170.80       0.00       0.00
                            0.00   -2269.62      -0.00      -0.00   -1368.50       0.00       0.00       0.00       0.00    1200.84

   39   6.2  1.5  0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61171.63       0.00
                           -0.00    3712.15       0.00       0.00     744.84      -0.00      -0.00      -0.00      -0.00    2206.44

   40   7.2  1.5  0.5      -0.00   -2175.52      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61171.54
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00   -1200.84   -2206.44      -0.00

   41   8.2  1.5  0.5    2175.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.01    1349.31      -0.00      -0.00   -1256.00      -0.00      -0.00      -0.00

   42   9.2  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01       0.00       0.00    2210.53      -0.00      -0.00      -0.00       0.00      -0.00

   43   1.2  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     -78.44    3115.14       0.00
                           -0.00      -0.00      -0.00       0.00   -2509.84       0.00       0.00      -0.00      -0.00    2698.64

   44   2.2  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00   -2509.93      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00    2509.84       0.00      -0.00    2698.65      -0.00      -0.00       0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00    2509.93       0.00      -0.00      -0.00      -0.00    2698.70
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00   -2658.56   -1625.56      -0.00

   46   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    5022.35     126.48       0.00
                           -0.00      -0.00      -0.00      -0.00   -2698.65       0.00      -0.00       0.00      -0.00    2512.02

   47   5.2  1.5 -0.5       0.00       0.00       0.00      78.44      -0.00       0.00   -5022.35      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00    2658.56      -0.00       0.00       0.00       0.00

   48   6.2  1.5 -0.5       0.00       0.00       0.00   -3115.14       0.00       0.00    -126.48      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00    1625.56       0.00      -0.00       0.00      -0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00   -2698.70      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00   -2698.64      -0.00       0.00   -2512.02      -0.00       0.00       0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00    2698.71      -0.00      -0.00      -0.00       0.00    2512.07
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    2620.74   -4286.42       0.00

   51   9.2  1.5 -0.5       0.00       0.00       0.00    4420.99      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00    4421.07       0.00       0.00      -0.00       0.00

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

    1   1.2  0.5  0.5       0.00       0.00       0.00      -5.04       5.80       0.00      21.06    -836.98       5.13      -5.90
                        -1445.54      21.06       5.81     710.76      -0.00      -5.90       5.07       3.10     722.79       0.00

    2   2.2  0.5  0.5       0.00       0.00      -0.00       6.87     712.62       0.00      -0.17       6.76      -6.98    -724.74
                           11.67    2585.46     712.82      -5.74       0.00    -724.64      -6.90      -4.22      -5.84      -0.00

    3   3.2  0.5  0.5       0.00       0.00      -0.00    -710.78       6.84      -0.00      -0.15       6.00     722.66      -6.96
                           10.37      24.83       6.85      -5.10      -0.00      -6.96     714.25     436.75      -5.18      -0.00

    4   4.2  0.5  0.5       0.00       0.00     799.99      18.99      64.51    1251.55     -29.41      -0.74      18.76      63.21
                           29.61       0.00     -64.52     -14.98    1034.29     -63.22     -19.43      31.82      14.80     552.79

    5   5.2  0.5  0.5       0.00       0.00     101.49    -909.12      44.94    -135.11     408.21      10.30    -897.98      44.03
                         -410.88       0.00     -44.94     207.95     -17.02     -44.04     930.34   -1523.48    -205.45     218.20

    6   6.2  0.5  0.5       0.00       0.00    -669.74     -13.85     139.53    1242.23     711.22      17.94     -13.68     136.72
                         -715.87       0.01    -139.55     362.30     289.22    -136.73      14.18     -23.21    -357.95   -1616.50

    7   7.2  0.5  0.5       0.00       0.00    -272.64    -232.35    -383.59     565.70   -1450.50     -36.59    -229.50    -375.84
                         1459.97      -0.03     383.63    -738.90     148.01     375.88     237.77    -389.37     730.03    -688.28

    8   8.2  0.5  0.5       0.00       0.00      79.41      56.12    -847.51      36.59     793.01      20.01      55.43    -830.40
                         -798.19      -0.06     847.60     403.96      58.46     830.49     -57.43      94.04    -399.12      99.03

    9   9.2  0.5  0.5       0.00       0.00       0.00    1504.69      -9.90       0.00       1.29     -51.29     809.89      -5.36
                          -88.65      10.09      -9.90     -82.30      -0.00      -5.36     800.39     489.44      44.32       0.00

   10  10.2  0.5  0.5       0.00       0.00       0.00     -82.05      37.88      -0.00      23.63    -937.12     -44.16      20.52
                        -1619.92     -38.60      37.86   -1503.82      -0.00      20.51     -43.65     -26.69     809.84       0.00

   11  11.2  0.5  0.5       0.00       0.00      -0.00      11.97    1503.46      -0.00      -0.59      23.27       6.45     814.59
                           40.22   -1532.41    1502.73      37.34      -0.00     814.28       6.37       3.89     -20.11      -0.00

   12  12.2  0.5  0.5       0.00       0.00   -1484.15       0.00      -0.00       2.97       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00    1484.24      -0.00      -0.00      -0.00      -0.00      -2.84

   13   1.2  0.5 -0.5      -5.90    1292.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -9.17     -10.11       0.00   -1421.61     -10.28     -11.98       6.52      -0.00   -1445.54

   14   2.2  0.5 -0.5    -724.74     -10.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      12.49      13.77      -0.00      11.48      14.00   -1470.88     800.53       0.00      11.67

   15   3.2  0.5 -0.5      -6.96      -9.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1292.83   -1425.45       0.00      10.20   -1449.32     -14.13       7.69      -0.00      10.37

   16   4.2  0.5 -0.5      63.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -552.79       0.01     -38.13    -464.16     -29.97      37.36    -120.64    -221.65    3616.62      29.61

   17   5.2  0.5 -0.5      44.03      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -218.20      -0.66    1825.70     238.68     415.87   -1788.58     -84.04    -154.40     166.00    -410.88

   18   6.2  0.5 -0.5     136.72      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1616.50      -0.01      27.82   -1930.07     724.56     -27.25    -260.93    -479.39    -745.95    -715.87

   19   7.2  0.5 -0.5    -375.84       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          688.28      -0.17     466.61    -846.46   -1477.71    -457.12     717.30    1317.89    -243.86    1459.97

   20   8.2  0.5 -0.5    -830.40      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -99.03       0.04    -112.70      42.67     807.88     110.41    1584.84    2911.79     271.66    -798.19

   21   9.2  0.5 -0.5      -5.36      41.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -766.20    3002.31       0.00     164.63   -1625.67     -10.88       5.92      -0.00     -88.65

   22  10.2  0.5 -0.5      20.52     766.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      41.78    -163.71       0.01    3008.17      88.65      41.62     -22.66      -0.00   -1619.92

   23  11.2  0.5 -0.5     814.59     -19.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -6.10      23.89       0.00     -74.70     -12.94    1651.85    -899.25       0.00      40.22

   24  12.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.84       0.00      -0.00    2968.74       0.00       0.00       0.00       0.00      -5.95      -0.00

   25   1.2  1.5  1.5       0.00    3828.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.2  1.5  1.5    2337.15      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -3828.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   4.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   5.2  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -2269.62      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   6.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         3712.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   7.2  1.5  1.5    2175.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   8.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   9.2  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00       0.00      78.44   -3115.14      -0.00       0.00
                        -1349.31      -0.00      -0.00   -2509.84       0.00       0.00      -0.00      -0.00    2698.64       0.00

   35   2.2  1.5  0.5       0.00       0.00       0.00      -0.00    2509.93       0.00      -0.00       0.00      -0.00    2698.71
                            0.00   -2210.53    2509.84      -0.00      -0.00    2698.65      -0.00      -0.00       0.00      -0.00

   36   3.2  1.5  0.5       0.00       0.00      -0.00   -2509.93       0.00       0.00       0.00       0.00   -2698.70      -0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00   -2658.56   -1625.56      -0.00      -0.00

   37   4.2  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00   -5022.35    -126.48      -0.00      -0.00
                         1256.00       0.00      -0.00   -2698.65       0.00       0.00       0.00      -0.00    2512.02       0.00

   38   5.2  1.5  0.5       0.00       0.00     -78.44       0.00      -0.00    5022.35      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00    2658.56      -0.00      -0.00       0.00       0.00   -2620.74

   39   6.2  1.5  0.5       0.00       0.00    3115.14      -0.00      -0.00     126.48       0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00    1625.56       0.00      -0.00      -0.00      -0.00    4286.42

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00    2698.70       0.00      -0.00       0.00      -0.00    2512.07
                            0.00       0.00   -2698.64      -0.00       0.00   -2512.02      -0.00       0.00      -0.00      -0.00

   41   8.2  1.5  0.5   61171.53       0.00      -0.00   -2698.71       0.00       0.00       0.00      -0.00   -2512.07       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00    2620.74   -4286.42       0.00      -0.00

   42   9.2  1.5  0.5       0.00   62468.81   -4420.99       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00    4421.07       0.00       0.00      -0.00       0.00       0.01

   43   1.2  1.5 -0.5      -0.00   -4420.99   60297.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00   -1254.91      -0.00      -0.00       0.00      -0.00    1349.31

   44   2.2  1.5 -0.5   -2698.71       0.00       0.00   60298.59       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00   -1368.50     744.84       0.00      -0.00

   45   3.2  1.5 -0.5       0.00       0.00       0.00       0.00   60298.59       0.00       0.00       0.00       0.00       0.00
                           -0.00   -4421.07    1254.91      -0.00       0.00   -1349.32       0.00      -0.00      -0.00      -0.00

   46   4.2  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00   61170.88       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00    1349.32       0.00       0.00      -0.00       0.00   -1256.00

   47   5.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   61170.80       0.00       0.00       0.00
                        -2620.74      -0.00       0.00    1368.50      -0.00      -0.00      -0.00      -0.00   -1200.84      -0.00

   48   6.2  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61171.63       0.00       0.00
                         4286.42       0.00      -0.00    -744.84       0.00       0.00       0.00       0.00   -2206.44      -0.00

   49   7.2  1.5 -0.5   -2512.07      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61171.54       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00    1200.84    2206.44       0.00      -0.00

   50   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61171.53
                            0.00      -0.01   -1349.31       0.00       0.00    1256.00       0.00       0.00       0.00      -0.00

   51   9.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00      -0.00   -2210.53       0.00       0.00       0.00      -0.00       0.00       0.00

   52   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00      -0.00     -67.93    2697.79       0.00      -0.00
                           -0.00      -0.00       0.00   -2173.58       0.00       0.00      -0.00      -0.00    2337.09       0.00

   53   2.2  1.5 -1.5       0.00       0.00      -0.00      -0.00   -2173.66      -0.00       0.00      -0.00       0.00   -2337.15
                           -0.00      -0.00    2173.58       0.00      -0.00    2337.10      -0.00      -0.00       0.00      -0.00

   54   3.2  1.5 -1.5       0.00       0.00       0.00    2173.66       0.00      -0.00      -0.00      -0.00    2337.14       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00   -2302.38   -1407.78      -0.00      -0.00

   55   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00    4349.48     109.53       0.00       0.00
                           -0.00      -0.00      -0.00   -2337.10       0.00      -0.00       0.00      -0.00    2175.47       0.00

   56   5.2  1.5 -1.5       0.00       0.00      67.93      -0.00       0.00   -4349.48      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00    2302.38      -0.00       0.00       0.00       0.00   -2269.62

   57   6.2  1.5 -1.5       0.00       0.00   -2697.79       0.00       0.00    -109.53      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00    1407.78       0.00      -0.00       0.00      -0.00    3712.15

   58   7.2  1.5 -1.5       0.00       0.00      -0.00      -0.00   -2337.14      -0.00       0.00      -0.00      -0.00   -2175.52
                           -0.00      -0.00   -2337.09      -0.00       0.00   -2175.47      -0.00       0.00       0.00      -0.00

   59   8.2  1.5 -1.5       0.00       0.00       0.00    2337.15      -0.00      -0.00      -0.00       0.00    2175.52       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00    2269.62   -3712.15       0.00       0.00

   60   9.2  1.5 -1.5       0.00       0.00    3828.69      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00    3828.76       0.00       0.00      -0.00       0.00       0.01


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.2  0.5  0.5    1292.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            9.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5     -10.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5      -9.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1292.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.2  0.5  0.5       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.2  0.5  0.5      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.2  0.5  0.5      41.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          766.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.2  0.5  0.5     766.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -41.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.2  0.5  0.5     -19.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.2  0.5 -0.5       0.00       0.00      -8.73      10.05       0.00      36.48   -1449.70       8.88     -10.22    2239.23
                           21.06      10.05    1231.07      -0.00     -10.22       8.78       5.37    1251.91       0.00      15.89

   14   2.2  0.5 -0.5       0.00      -0.00      11.89    1234.29       0.00      -0.29      11.71     -12.09   -1255.28     -18.08
                         2585.46    1234.65      -9.94       0.00   -1255.11     -11.95      -7.31     -10.11      -0.00     -21.63

   15   3.2  0.5 -0.5       0.00      -0.00   -1231.11      11.85      -0.00      -0.26      10.40    1251.68     -12.06     -16.06
                           24.83      11.86      -8.83      -0.00     -12.05    1237.12     756.46      -8.98      -0.00    2239.24

   16   4.2  0.5 -0.5       0.00    1385.62      32.89     111.74    2167.75     -50.95      -1.29      32.49     109.48       0.00
                            0.00    -111.75     -25.95    1791.45    -109.50     -33.66      55.11      25.64     957.46      -0.02

   17   5.2  0.5 -0.5       0.00     175.79   -1574.64      77.84    -234.01     707.05      17.84   -1555.35      76.27      -0.03
                            0.00     -77.85     360.18     -29.48     -76.28    1611.40   -2638.75    -355.85     377.93       1.15

   18   6.2  0.5 -0.5       0.00   -1160.02     -23.99     241.67    2151.60    1231.87      31.07     -23.70     236.80      -0.05
                            0.01    -241.70     627.53     500.94    -236.83      24.55     -40.21    -619.99   -2799.86       0.02

   19   7.2  0.5 -0.5       0.00    -472.22    -402.44    -664.39     979.82   -2512.34     -63.38    -397.51    -650.97       0.09
                           -0.03     664.46   -1279.81     256.35     651.05     411.83    -674.40    1264.44   -1192.13       0.29

   20   8.2  0.5 -0.5       0.00     137.54      97.20   -1467.93      63.37    1373.53      34.65      96.01   -1438.29      -0.05
                           -0.06    1468.09     699.69     101.25    1438.45     -99.47     162.89    -691.29     171.52      -0.07

   21   9.2  0.5 -0.5       0.00       0.00    2606.20     -17.15       0.00       2.24     -88.83    1402.77      -9.29      72.64
                           10.09     -17.14    -142.55      -0.00      -9.29    1386.32     847.74      76.76       0.00    1327.10

   22  10.2  0.5 -0.5       0.00       0.00    -142.12      65.61      -0.00      40.94   -1623.13     -76.49      35.55    1327.41
                          -38.60      65.57   -2604.69      -0.00      35.53     -75.60     -46.23    1402.68       0.00     -72.37

   23  11.2  0.5 -0.5       0.00      -0.00      20.74    2604.08      -0.00      -1.02      40.31      11.17    1410.91     -32.96
                        -1532.41    2602.80      64.68      -0.00    1410.37      11.03       6.74     -34.83      -0.00      10.56

   24  12.2  0.5 -0.5       0.00   -2570.63       0.00      -0.00       5.15       0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00    2570.78      -0.00      -0.00      -0.00      -0.00      -4.91      -0.00

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

   34   1.2  1.5  0.5    4420.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   2.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   3.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -4421.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   5.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   6.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   8.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   9.2  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   1.2  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      67.93   -2697.79      -0.00       0.00    3828.69
                            0.00      -0.00   -2173.58       0.00       0.00      -0.00      -0.00    2337.09       0.00      -0.00

   44   2.2  1.5 -0.5       0.00       0.00      -0.00    2173.66       0.00      -0.00       0.00      -0.00    2337.15      -0.00
                         2210.53    2173.58      -0.00      -0.00    2337.10      -0.00      -0.00       0.00      -0.00      -0.00

   45   3.2  1.5 -0.5       0.00      -0.00   -2173.66       0.00       0.00       0.00       0.00   -2337.14      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00   -2302.38   -1407.78      -0.00      -0.00   -3828.76

   46   4.2  1.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.00   -4349.48    -109.53      -0.00      -0.00       0.00
                           -0.00      -0.00   -2337.10       0.00       0.00       0.00      -0.00    2175.47       0.00      -0.00

   47   5.2  1.5 -0.5       0.00     -67.93       0.00      -0.00    4349.48      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00    2302.38      -0.00      -0.00       0.00       0.00   -2269.62      -0.00

   48   6.2  1.5 -0.5       0.00    2697.79      -0.00      -0.00     109.53       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00    1407.78       0.00      -0.00      -0.00      -0.00    3712.15       0.00

   49   7.2  1.5 -0.5       0.00       0.00       0.00    2337.14       0.00      -0.00       0.00      -0.00    2175.52       0.00
                           -0.00   -2337.09      -0.00       0.00   -2175.47      -0.00       0.00      -0.00      -0.00      -0.00

   50   8.2  1.5 -0.5       0.00      -0.00   -2337.15       0.00       0.00       0.00      -0.00   -2175.52       0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00    2269.62   -3712.15       0.00      -0.00      -0.01

   51   9.2  1.5 -0.5   62468.81   -3828.69       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00    3828.76       0.00       0.00      -0.00       0.00       0.01      -0.00

   52   1.2  1.5 -1.5   -3828.69   60297.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00   -3764.74      -0.00      -0.00       0.00      -0.00    4047.93       0.00

   53   2.2  1.5 -1.5       0.00       0.00   60298.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00   -4105.51    2234.51       0.00      -0.00    6631.60

   54   3.2  1.5 -1.5       0.00       0.00       0.00   60298.59       0.00       0.00       0.00       0.00       0.00       0.00
                        -3828.76    3764.74      -0.00       0.00   -4047.96       0.00      -0.00      -0.00      -0.00      -0.00

   55   4.2  1.5 -1.5      -0.00       0.00       0.00       0.00   61170.88       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    4047.96       0.00       0.00      -0.00       0.00   -3768.01      -0.00

   56   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   61170.80       0.00       0.00       0.00       0.00
                           -0.00       0.00    4105.51      -0.00      -0.00      -0.00      -0.00   -3602.53      -0.00      -0.00

   57   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   61171.63       0.00       0.00       0.00
                            0.00      -0.00   -2234.51       0.00       0.00       0.00       0.00   -6619.33      -0.00       0.00

   58   7.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   61171.54       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00    3602.53    6619.33       0.00      -0.00      -0.01

   59   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   61171.53       0.00
                           -0.01   -4047.93       0.00       0.00    3768.01       0.00       0.00       0.00      -0.00      -0.00

   60   9.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   62468.81
                            0.00      -0.00   -6631.60       0.00       0.00       0.00      -0.00       0.01       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -262.32653480    -0.03460297    -7594.47      0.00000000        0.00      0.0000
     2  -262.32653480    -0.03460297    -7594.47      0.00000000        0.00      0.0000
     3  -262.32653302    -0.03460119    -7594.08      0.00000178        0.39      0.0000
     4  -262.32653302    -0.03460119    -7594.08      0.00000178        0.39      0.0000
     5  -262.22698494     0.06494689    14254.19      0.09954986    21848.67      2.7089
     6  -262.22698494     0.06494689    14254.19      0.09954986    21848.67      2.7089
     7  -262.05589927     0.23603256    51803.16      0.27063553    59397.63      7.3644
     8  -262.05589927     0.23603256    51803.16      0.27063553    59397.63      7.3644
     9  -262.05589296     0.23603887    51804.54      0.27064184    59399.02      7.3645
    10  -262.05589296     0.23603887    51804.54      0.27064184    59399.02      7.3645
    11  -262.05558141     0.23635042    51872.92      0.27095339    59467.40      7.3730
    12  -262.05558141     0.23635042    51872.92      0.27095339    59467.40      7.3730
    13  -262.05223725     0.23969458    52606.88      0.27429756    60201.35      7.4640
    14  -262.05223725     0.23969458    52606.88      0.27429756    60201.35      7.4640
    15  -262.05222600     0.23970583    52609.35      0.27430880    60203.82      7.4643
    16  -262.05222600     0.23970583    52609.35      0.27430880    60203.82      7.4643
    17  -262.05220902     0.23972281    52613.07      0.27432578    60207.55      7.4648
    18  -262.05220902     0.23972281    52613.07      0.27432578    60207.55      7.4648
    19  -262.04846517     0.24346666    53434.75      0.27806963    61029.23      7.5667
    20  -262.04846517     0.24346666    53434.75      0.27806963    61029.23      7.5667
    21  -262.04844948     0.24348235    53438.20      0.27808532    61032.67      7.5671
    22  -262.04844948     0.24348235    53438.20      0.27808532    61032.67      7.5671
    23  -262.04839071     0.24354112    53451.10      0.27814409    61045.57      7.5687
    24  -262.04839071     0.24354112    53451.10      0.27814409    61045.57      7.5687
    25  -262.04755302     0.24437881    53634.95      0.27898178    61229.42      7.5915
    26  -262.04755302     0.24437881    53634.95      0.27898178    61229.42      7.5915
    27  -262.04755127     0.24438056    53635.33      0.27898353    61229.81      7.5915
    28  -262.04755127     0.24438056    53635.33      0.27898353    61229.81      7.5915
    29  -262.04755069     0.24438114    53635.46      0.27898412    61229.94      7.5915
    30  -262.04755069     0.24438114    53635.46      0.27898412    61229.94      7.5915
    31  -262.04754979     0.24438204    53635.66      0.27898501    61230.13      7.5916
    32  -262.04754979     0.24438204    53635.66      0.27898501    61230.13      7.5916
    33  -262.03092550     0.26100633    57284.27      0.29560930    64878.74      8.0439
    34  -262.03092550     0.26100633    57284.27      0.29560930    64878.74      8.0439
    35  -262.03091805     0.26101378    57285.90      0.29561675    64880.38      8.0441
    36  -262.03091805     0.26101378    57285.90      0.29561675    64880.38      8.0441
    37  -261.98083887     0.31109296    68277.01      0.34569594    75871.49      9.4069
    38  -261.98083887     0.31109296    68277.01      0.34569594    75871.49      9.4069
    39  -261.97780291     0.31412892    68943.33      0.34873189    76537.80      9.4895
    40  -261.97780291     0.31412892    68943.33      0.34873189    76537.80      9.4895
    41  -261.97780068     0.31413115    68943.82      0.34873412    76538.29      9.4895
    42  -261.97780068     0.31413115    68943.82      0.34873412    76538.29      9.4895
    43  -261.97751927     0.31441256    69005.58      0.34901553    76600.05      9.4972
    44  -261.97751927     0.31441256    69005.58      0.34901553    76600.05      9.4972
    45  -261.97747173     0.31446010    69016.02      0.34906308    76610.49      9.4985
    46  -261.97747173     0.31446010    69016.02      0.34906308    76610.49      9.4985
    47  -261.97746835     0.31446348    69016.76      0.34906645    76611.23      9.4986
    48  -261.97746835     0.31446348    69016.76      0.34906645    76611.23      9.4986
    49  -261.97511644     0.31681539    69532.94      0.35141836    77127.42      9.5626
    50  -261.97511644     0.31681539    69532.94      0.35141836    77127.42      9.5626
    51  -261.97511067     0.31682116    69534.21      0.35142413    77128.68      9.5627
    52  -261.97511067     0.31682116    69534.21      0.35142413    77128.68      9.5627
    53  -261.97420738     0.31772444    69732.46      0.35232742    77326.93      9.5873
    54  -261.97420738     0.31772444    69732.46      0.35232742    77326.93      9.5873
    55  -261.94536445     0.34656738    76062.75      0.38117035    83657.22     10.3722
    56  -261.94536445     0.34656738    76062.75      0.38117035    83657.22     10.3722
    57  -261.93931506     0.35261677    77390.44      0.38721974    84984.91     10.5368
    58  -261.93931506     0.35261677    77390.44      0.38721974    84984.91     10.5368
    59  -261.93931219     0.35261964    77391.07      0.38722262    84985.54     10.5369
    60  -261.93931219     0.35261964    77391.07      0.38722262    84985.54     10.5369


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.215151210  -0.012865244   0.785427512  -0.002370337  -0.048021842   0.573909025   0.029288935  -0.000741479
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.060687471   0.633205677  -0.006829510  -0.191347170   0.573439809   0.047982241  -0.000102408   0.004234099
                         0.022438564   0.464386173   0.005746908   0.076727521  -0.021549600  -0.007352820  -0.000096890  -0.010976730

    3    3.2  0.5  0.5   0.009777934   0.015935614  -0.002424782  -0.002456114   0.005327491   0.000445629  -0.000106269   0.000107591
                         0.570487656  -0.044625341  -0.579269806   0.001056942  -0.052898614   0.573445385  -0.018276186   0.000386679

    4    4.2  0.5  0.5   0.000374539   0.003125479  -0.000065981  -0.004835691   0.000000115  -0.000000023   0.001847740   0.080099906
                        -0.000286831  -0.004666841   0.000172065  -0.009839079  -0.000000233   0.000000059   0.002526783   0.023835796

    5    5.2  0.5  0.5  -0.002834980  -0.000723478   0.000761927  -0.000858575   0.000000050   0.000000417   0.003475591   0.009734457
                        -0.008308350   0.001617272  -0.008370362  -0.000592156   0.000000314  -0.000003846  -0.077699358   0.001033938

    6    6.2  0.5  0.5  -0.004249571   0.005885341   0.001261043   0.000294408   0.000000216   0.000000780   0.003970347  -0.046050805
                        -0.000848050  -0.008189799  -0.000110594   0.005461009   0.000000239  -0.000000043  -0.002099146  -0.032237738

    7    7.2  0.5  0.5   0.009523718   0.002799979  -0.002546486   0.005239754  -0.000000595  -0.000001616  -0.011231191  -0.033377984
                        -0.002641845  -0.002795630  -0.002158811   0.000058617   0.000000219  -0.000000964  -0.019338460   0.027744025

    8    8.2  0.5  0.5  -0.004849739   0.002696575   0.001401230   0.009586253  -0.000001727   0.000000689   0.004769281  -0.022679361
                         0.000717334   0.001691292   0.000512775  -0.004863316   0.000000017   0.000000235   0.006924383   0.080167973

    9    9.2  0.5  0.5  -0.000075711  -0.000042689  -0.000152776   0.000006376   0.000007383   0.000768144   0.020976506   0.000512520
                        -0.001886034   0.000152954   0.001914400  -0.000002599  -0.001133842   0.012309519  -0.213816470   0.005003405

   10   10.2  0.5  0.5  -0.000703592   0.000114466  -0.002597072  -0.000013377  -0.001440719   0.012275832   0.360799002  -0.010824829
                         0.000119330   0.000041179  -0.000118000   0.000008520   0.000085519  -0.000757495   0.013359415   0.003926771

   11   11.2  0.5  0.5   0.000224263   0.002093424   0.000062906  -0.000632530  -0.012296615  -0.001437430  -0.010495757  -0.048371415
                         0.000077003   0.001536049   0.000016186   0.000253532   0.000465054   0.000139856   0.001393138   0.126143121

   12   12.2  0.5  0.5   0.000000073   0.000001248   0.000000003   0.000000783   0.001237694   0.000103565  -0.000177168  -0.007343104
                        -0.000000165  -0.000001700   0.000000003   0.000001935   0.032157656   0.002954868  -0.000100937  -0.002823955

   13    1.2  0.5 -0.5   0.007403898   0.123818688   0.000872562   0.289129363   0.026125186   0.002186025  -0.000691146  -0.027300758
                        -0.010521254  -0.175951630   0.002203891   0.730274324   0.573314089   0.047972060  -0.000268529  -0.010607089

   14    2.2  0.5 -0.5   0.015369693   0.016575045  -0.000901487   0.002829296  -0.005160976  -0.004576565  -0.000028578   0.000130546
                         0.785090899  -0.062543794   0.206155377  -0.008465473   0.048267212  -0.573826328   0.011765007  -0.000053226

   15    3.2  0.5 -0.5  -0.045665689  -0.460920213  -0.000078585  -0.539485739   0.572871215   0.052601262   0.000240325   0.006717839
                        -0.012649493  -0.336309872   0.002672722   0.210984656  -0.025658913  -0.007729992  -0.000321466  -0.016997085

   16    4.2  0.5 -0.5  -0.005615265   0.000450118   0.010928274   0.000135694   0.000000058   0.000000228   0.083294819  -0.002637396
                        -0.000129718  -0.000141229   0.000874192  -0.000124688  -0.000000025  -0.000000126   0.006790671   0.001686096

   17    5.2  0.5 -0.5   0.001738971   0.005163086   0.000866630  -0.007502112  -0.000003823  -0.000000316   0.009448112   0.024899427
                         0.000339071   0.007099882   0.000580303   0.003789698   0.000000591  -0.000000036   0.002561615  -0.073683705

   18    6.2  0.5 -0.5  -0.010084646  -0.001752072  -0.005185910   0.000361383  -0.000000007  -0.000000249  -0.054599815  -0.002940621
                         0.000099860   0.003963368   0.001736557   0.001213203   0.000000782  -0.000000204   0.013371934  -0.003394528

   19    7.2  0.5 -0.5  -0.003897656   0.007641375  -0.001983344  -0.002944623  -0.000001037  -0.000000192  -0.021064642   0.017472291
                         0.000680962  -0.006268168  -0.004850237  -0.001572975  -0.000001570   0.000000604  -0.037948670  -0.013958322

   20    8.2  0.5 -0.5  -0.000168722  -0.003377645   0.000992947   0.000992585   0.000000266   0.000000061   0.007893256  -0.006953224
                         0.003178603   0.003553316  -0.010703371   0.001114074   0.000000677   0.000001726  -0.082939459   0.004727134

   21    9.2  0.5 -0.5   0.000149654   0.001498836   0.000000070   0.001723730   0.012331726   0.001132331   0.002289729   0.057881782
                         0.000053113   0.001147322  -0.000006885  -0.000846772   0.000207000  -0.000058989  -0.004478156  -0.206898999

   22   10.2  0.5 -0.5  -0.000032198  -0.000502503  -0.000002997  -0.001065741  -0.000197896  -0.000019847  -0.008667930  -0.341145579
                         0.000117309   0.000506727   0.000015574  -0.002371266   0.012297588   0.001443119  -0.007580465  -0.118212044

   23   11.2  0.5 -0.5   0.000051431   0.000066089  -0.000002883   0.000038206   0.000074277   0.000095188   0.000595276   0.009278759
                         0.002596002  -0.000227718   0.000681443   0.000052531  -0.001442306   0.012305038  -0.135098210   0.005099645

   24   12.2  0.5 -0.5  -0.000002108   0.000000177  -0.000002087   0.000000003   0.002956519  -0.032180662  -0.007867348   0.000201696
                         0.000000042   0.000000035  -0.000000016   0.000000002  -0.000031052   0.000227453  -0.000027070  -0.000029923

   25    1.2  1.5  1.5   0.000557521   0.009265288   0.000003656   0.001532858  -0.000374507  -0.000031327   0.002664631   0.107241931
                        -0.001248790  -0.012646115   0.000009111   0.003823089  -0.009731149  -0.000894152   0.001314174   0.041336056

   26    2.2  1.5  1.5   0.000128361   0.000125418   0.000145858  -0.000024927  -0.000000003  -0.000000036  -0.002395799  -0.001505860
                         0.007084015  -0.000617819  -0.027188820   0.000022379   0.000000371  -0.000004178   0.486101336  -0.012970705

   27    3.2  1.5  1.5  -0.001248489  -0.012642906   0.000009103   0.003820151  -0.009725270  -0.000893647   0.001314372   0.041370866
                        -0.000557349  -0.009262921  -0.000003679  -0.001531683   0.000374296   0.000031358  -0.002667401  -0.107333173

   28    4.2  1.5  1.5  -0.000433560  -0.007205209  -0.000002847  -0.001190883   0.000478044   0.000039987   0.001289616   0.051947616
                         0.000971139   0.009834365  -0.000007087  -0.002970167   0.012420550   0.001141283   0.000636633   0.020023787

   29    5.2  1.5  1.5   0.008633268  -0.000743684  -0.009223498   0.000005198  -0.001093715   0.011904613  -0.091123870   0.002456654
                        -0.000162168  -0.000147355  -0.000051018   0.000009839   0.000011493  -0.000084162  -0.000509300  -0.000303727

   30    6.2  1.5  1.5   0.009188635  -0.000784373   0.008671229  -0.000011536  -0.002010124   0.021879430   0.114764278  -0.003016083
                        -0.000176990  -0.000152592   0.000043627  -0.000005411   0.000021116  -0.000154626   0.000454412   0.000315856

   31    7.2  1.5  1.5  -0.000232043  -0.000203634   0.000013882  -0.000000048   0.000023920  -0.000175204   0.000155664   0.000132708
                        -0.012148485   0.001040216  -0.003195901   0.000007622   0.002277284  -0.024787588  -0.057377669   0.001477996

   32    8.2  1.5  1.5   0.000971191   0.009834902  -0.000007091  -0.002974496   0.012422897   0.001141497   0.000646632   0.020307247
                         0.000433575   0.007205609   0.000002850   0.001192622  -0.000478130  -0.000040016  -0.001308816  -0.052688335

   33    9.2  1.5  1.5   0.012464870  -0.001087076  -0.047825940   0.000039360  -0.000000308   0.000003310   0.421444628  -0.011245049
                        -0.000225861  -0.000220676  -0.000256575   0.000043853  -0.000000001  -0.000000016   0.002076697   0.001305092

   34    1.2  1.5  0.5   0.022205051  -0.001907835  -0.010984436   0.000001603  -0.000516859   0.005625858   0.142630502  -0.003931918
                        -0.000420085  -0.000376084  -0.000063791   0.000014371   0.000005408  -0.000039779   0.001007297   0.000550258

   35    2.2  1.5  0.5  -0.000719183  -0.007282963   0.000005253   0.002204820   0.011182839   0.001027546   0.000802600   0.025093171
                        -0.000321073  -0.005335930  -0.000002101  -0.000884020  -0.000430430  -0.000035991  -0.001613819  -0.065108278

   36    3.2  1.5  0.5  -0.000271134  -0.000230593   0.000104859  -0.000014483   0.000005393  -0.000039437  -0.001750578  -0.001182423
                        -0.013985036   0.001191002  -0.020449977   0.000024247   0.000512294  -0.005576072   0.417204922  -0.011004874

   37    4.2  1.5  0.5   0.003192868  -0.000278442  -0.012237216   0.000010069  -0.001979668   0.021547989  -0.134229095   0.003583210
                        -0.000057862  -0.000056530  -0.000065660   0.000011219   0.000020788  -0.000152316  -0.000663284  -0.000415287

   38    5.2  1.5  0.5   0.000326535   0.005431495   0.000009266   0.003230809  -0.000841028  -0.000070364  -0.002649421  -0.105210585
                        -0.000729107  -0.007410875   0.000008729   0.008041793  -0.021850817  -0.002007801  -0.001360148  -0.040398703

   39    6.2  1.5  0.5  -0.000307380  -0.005099457   0.000011059   0.003443530   0.000457916   0.000038325  -0.002182553  -0.085273042
                         0.000692774   0.006964866   0.000001219   0.008558884   0.011897363   0.001093220  -0.001174508  -0.032585068

   40    7.2  1.5  0.5   0.000259030   0.002565624   0.000005218   0.011319610   0.000011217   0.000001026  -0.001689219  -0.048127327
                         0.000113482   0.001875859  -0.000014101  -0.004552043  -0.000000427  -0.000000042   0.003196134   0.125702802

   41    8.2  1.5  0.5   0.000058001   0.000056623   0.000065423  -0.000011184   0.000020752  -0.000151950   0.000664687   0.000419007
                         0.003199879  -0.000279025  -0.012194454   0.000010022   0.001975156  -0.021498765  -0.135103081   0.003603893

   42    9.2  1.5  0.5  -0.001694562  -0.028161959  -0.000011155  -0.004656846   0.000000117   0.000000011  -0.004093137  -0.164783792
                         0.003795751   0.038438142  -0.000027695  -0.011614557   0.000002928   0.000000274  -0.002023681  -0.063511998

   43    1.2  1.5 -0.5  -0.000790389  -0.013122468   0.000013952   0.004102871  -0.000216360  -0.000018126   0.003465735   0.133313324
                         0.001776671   0.017917634  -0.000003799   0.010189620  -0.005621837  -0.000516569   0.001936863   0.050715207

   44    2.2  1.5 -0.5   0.000172431   0.000151312  -0.000010312   0.000000020  -0.000010822   0.000079076   0.000189378   0.000163668
                         0.009026847  -0.000772927   0.002375419  -0.000005657  -0.001028120   0.011190841  -0.069776208   0.001794935

   45    3.2  1.5 -0.5  -0.001106713  -0.011280989   0.000017213   0.018975367   0.005572087   0.000512009   0.005087612   0.149460453
                        -0.000496837  -0.008270068  -0.000022392  -0.007625484  -0.000214434  -0.000017933  -0.009829628  -0.389518400

   46    4.2  1.5 -0.5  -0.000114011  -0.001884803   0.000014137   0.004565779  -0.000828738  -0.000069350  -0.003189579  -0.125357632
                         0.000260244   0.002577842   0.000005233   0.011353741  -0.021532585  -0.001978562  -0.001684769  -0.047993270

   47    5.2  1.5 -0.5   0.009186452  -0.000784187   0.008666410  -0.000011527   0.002008922  -0.021866451   0.112699261  -0.002962157
                        -0.000176971  -0.000152557   0.000043618  -0.000005402  -0.000021107   0.000154526   0.000445998   0.000308322

   48    6.2  1.5 -0.5  -0.008630616   0.000743450   0.009225497  -0.000005204  -0.001093832   0.011905874   0.091285374  -0.002459750
                         0.000162106   0.000147312   0.000051051  -0.000009834   0.000011479  -0.000084144   0.000508782   0.000304361

   49    7.2  1.5 -0.5  -0.000057579  -0.000056264  -0.000065453   0.000011191  -0.000000005   0.000000084  -0.000663331  -0.000417061
                        -0.003177728   0.000277144   0.012200425  -0.000010042  -0.000001027   0.000011225   0.134599384  -0.003590932

   50    8.2  1.5 -0.5   0.000260774   0.002583496   0.000005201   0.011314069   0.021483395   0.001974053  -0.001695726  -0.048308479
                         0.000114272   0.001888952  -0.000014088  -0.004549817  -0.000826863  -0.000069181   0.003207510   0.126172799

   51    9.2  1.5 -0.5  -0.047641983   0.004079396  -0.012513241   0.000029856  -0.000000275   0.000002930   0.176599109  -0.004548172
                         0.000909975   0.000798619  -0.000054322   0.000000176   0.000000001  -0.000000017   0.000476311   0.000403966

   52    1.2  1.5 -1.5  -0.015674187   0.001342118  -0.004118901   0.000009817  -0.000894651   0.009738110   0.114932182  -0.002959684
                         0.000299404   0.000262731  -0.000017875   0.000000046   0.000009409  -0.000068857   0.000307933   0.000259960

   53    2.2  1.5 -1.5  -0.000577433  -0.005719468  -0.000011632  -0.025225912  -0.000004175  -0.000000370  -0.006101025  -0.173810105
                        -0.000252985  -0.004181798   0.000031414   0.010144288   0.000000155   0.000000020   0.011544882   0.453971691

   54    3.2  1.5 -1.5  -0.000299315  -0.000262698   0.000017864  -0.000000070  -0.000009355   0.000068801  -0.000308529  -0.000259142
                        -0.015670201   0.001341772  -0.004115736   0.000009818  -0.000894148   0.009732227   0.115029836  -0.002962338

   55    4.2  1.5 -1.5   0.012189157  -0.001043714   0.003199985  -0.000007638   0.001141921  -0.012429436   0.055673016  -0.001432634
                        -0.000232813  -0.000204320   0.000013889  -0.000000039  -0.000012007   0.000087854   0.000148466   0.000126379

   56    5.2  1.5 -1.5   0.000307480   0.005101035  -0.000011062  -0.003442764   0.000457841   0.000038307   0.002179896   0.085122689
                        -0.000692991  -0.006966998  -0.000001212  -0.008557038   0.011896103   0.001093104   0.001172795   0.032526095

   57    6.2  1.5 -1.5   0.000326613   0.005432767   0.000009277   0.003232592   0.000841518   0.000070409  -0.002696958  -0.107138473
                        -0.000729279  -0.007412650   0.000008734   0.008046270   0.021863788   0.002009002  -0.001386700  -0.041138713

   58    7.2  1.5 -1.5   0.000967884   0.009801546  -0.000007069  -0.002966373  -0.024769868  -0.002276012   0.000658961   0.020634423
                         0.000432108   0.007181172   0.000002850   0.001189373   0.000953345   0.000079770  -0.001329607  -0.053539160

   59    8.2  1.5 -1.5   0.000232832   0.000204337  -0.000013912   0.000000039   0.000011988  -0.000087874  -0.000152502  -0.000128746
                         0.012189828  -0.001043765   0.003204650  -0.000007643   0.001142136  -0.012431784   0.056466110  -0.001454151

   60    9.2  1.5 -1.5   0.000445139   0.007358195  -0.000055263  -0.017844109   0.000000135   0.000000015  -0.010009074  -0.393588414
                        -0.001016014  -0.010063845  -0.000020453  -0.044373124   0.000003307   0.000000307  -0.005288934  -0.150691896


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.003612942  -0.000040089   0.020543222   0.004929809  -0.000002550   0.000034141   0.000124556  -0.000002605
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.001941408   0.015154471   0.002541196  -0.010640765  -0.000053127  -0.000003678  -0.000001807  -0.000103643
                         0.000012467   0.023049546  -0.004212952   0.016702200   0.000013214   0.000001699   0.000002398   0.000101143

    3    3.2  0.5  0.5  -0.000932814   0.001423899  -0.000012696   0.000029768  -0.000000824   0.000001015  -0.000000803  -0.000001098
                        -0.023483012  -0.000909720   0.020092460   0.005082138   0.000005145  -0.000078766  -0.000026365   0.000001288

    4    4.2  0.5  0.5  -0.001877594   0.048152690  -0.000146436   0.000648602   0.004182328  -0.000617028  -0.001905779  -0.059088171
                         0.003181460  -0.035077461  -0.000071187   0.000366297   0.047984422   0.004389957   0.001235395  -0.063896250

    5    5.2  0.5  0.5   0.024644307  -0.010277399  -0.000161799   0.000180864  -0.005945233   0.014569276   0.009133885  -0.005560766
                         0.056492835   0.007229825  -0.001067852  -0.000149105   0.007036750  -0.064560107  -0.083642781  -0.006241867

    6    6.2  0.5  0.5   0.038231356   0.062615230   0.000160845  -0.001479839  -0.019229286   0.022916451   0.016727530   0.041430578
                         0.004851483  -0.044657411   0.000242005  -0.001010061  -0.001807799  -0.000653472  -0.001029673   0.035217543

    7    7.2  0.5  0.5  -0.079057003   0.032790084   0.000553961  -0.000662394   0.047263819  -0.045947809  -0.032161942   0.005356142
                         0.020355123  -0.009511339  -0.000213013  -0.000267682  -0.011486909  -0.018359833  -0.021092947   0.025853775

    8    8.2  0.5  0.5   0.040136252   0.022070588  -0.000156093  -0.000225598   0.097700504   0.032982729   0.017435984  -0.028030011
                        -0.005472428   0.030166450  -0.000053903   0.000514590  -0.021800030   0.002808253   0.005593750   0.015919590

    9    9.2  0.5  0.5  -0.014319894   0.016734167  -0.020398740  -0.006082442   0.000000172  -0.000004311  -0.000080106  -0.000005919
                        -0.287998562  -0.012214395  -0.338112398  -0.084520284   0.000023161  -0.000367666  -0.002089227   0.000023337

   10   10.2  0.5  0.5  -0.046788323  -0.007716071  -0.332575785  -0.086058504   0.000008407  -0.000177243  -0.001510434  -0.000004783
                         0.018001582  -0.008583691   0.018515311   0.014589767   0.000000042   0.000017762   0.000113030   0.000035721

   11   11.2  0.5  0.5   0.024698320  -0.180617583   0.055125156  -0.181332718  -0.000125702  -0.000003237   0.000029394  -0.001084730
                         0.000195108  -0.274688283  -0.072271760   0.288993305   0.000031460  -0.000000349   0.000006202   0.001058289

   12   12.2  0.5  0.5  -0.000036013   0.004355135  -0.132454827   0.551914992   0.000122689   0.000009173   0.000048956   0.002276891
                         0.000374846  -0.002861358  -0.089242563   0.349256897   0.000492936   0.000031108   0.000017585   0.002332691

   13    1.2  0.5 -0.5  -0.000032555   0.002933956   0.004179903  -0.017418256  -0.000007767  -0.000000580  -0.000001818  -0.000086910
                         0.000023394  -0.002108377   0.002613700  -0.010891664  -0.000033245  -0.000002483  -0.000001866  -0.000089224

   14    2.2  0.5 -0.5  -0.001144384   0.001583831  -0.000166907   0.000078997  -0.000000818   0.000000780   0.000000135  -0.000000457
                        -0.027561385  -0.001122809  -0.019803068  -0.004919390   0.000003968  -0.000054740  -0.000144816   0.000002968

   15    3.2  0.5 -0.5   0.001687182  -0.012946295   0.002719702  -0.010641913   0.000076469   0.000004823   0.000000157   0.000019447
                        -0.000092179  -0.019614164  -0.004293278   0.017042793  -0.000018909  -0.000001973  -0.000001685  -0.000017822

   16    4.2  0.5 -0.5   0.059573161   0.003381315   0.000744143   0.000161903  -0.004134452   0.047677578  -0.087000284   0.000444806
                         0.000385194   0.001487870   0.000033300   0.000017279   0.001599612  -0.006844356   0.002256833   0.002227183

   17    5.2  0.5 -0.5  -0.012565004   0.012954235   0.000074298   0.000703343   0.059552368   0.005499606  -0.008351329   0.053543224
                         0.000126392   0.060257531   0.000222315  -0.000819631  -0.028875364  -0.007390262   0.000371907  -0.064905053

   18    6.2  0.5 -0.5   0.076908229  -0.028215329  -0.001790248  -0.000264685  -0.004577419  -0.006135272   0.054135999  -0.010934113
                        -0.000275027   0.026250118   0.000071829   0.000119915  -0.022464149  -0.018313711   0.005105069  -0.012701009

   19    7.2  0.5 -0.5   0.032178247   0.076078170  -0.000703553  -0.000356758   0.028332005  -0.000432611   0.022257290   0.037550795
                        -0.011411204  -0.029604945  -0.000124227  -0.000474311   0.040565776   0.048637748  -0.014202780   0.008321099

   20    8.2  0.5 -0.5   0.000318818  -0.035786881   0.000081546   0.000160927  -0.010238555   0.000999646  -0.008154267  -0.016173044
                        -0.037376783   0.018978022  -0.000555920   0.000037054  -0.031478861   0.100098105  -0.031186901  -0.008586980

   21    9.2  0.5 -0.5   0.020717148  -0.156436404  -0.049968406   0.196557147   0.000359005   0.000022593   0.000012587   0.001552485
                         0.000153492  -0.242231052   0.068438533  -0.275864804  -0.000079451  -0.000005102  -0.000020523  -0.001400384

   22   10.2  0.5 -0.5  -0.001256857   0.048500361  -0.065232327   0.272168965   0.000023028   0.000001953   0.000022251   0.000972944
                         0.011473353  -0.012685393  -0.057997163   0.192024801   0.000176636   0.000008177  -0.000028350   0.001160847

   23   11.2  0.5 -0.5   0.013623945  -0.019942864  -0.000529695  -0.008422453   0.000001076   0.000002036   0.000001217  -0.000024952
                         0.328467277   0.014571452  -0.341172104  -0.090504433   0.000003073  -0.000129563  -0.001515458  -0.000016729

   24   12.2  0.5 -0.5   0.005206448   0.000247991   0.653129540   0.159621116  -0.000032379   0.000507922   0.003259704  -0.000046756
                        -0.000217875   0.000283385  -0.003513239  -0.005442004  -0.000001855   0.000007323   0.000003377  -0.000022799

   25    1.2  1.5  1.5   0.002153684  -0.232610476  -0.039197295   0.163328477  -0.109569872  -0.008209852   0.006648437   0.320498577
                        -0.019987124   0.153130965  -0.026411906   0.103354691  -0.435864869  -0.027420628   0.002501474   0.327953396

   26    2.2  1.5  1.5   0.007901528  -0.011242588   0.000023039   0.000050218  -0.001446947   0.006063329   0.000560307  -0.002496915
                         0.203767342   0.009830209   0.005476131   0.001334056   0.023242051  -0.365886782  -0.376912651   0.005277701

   27    3.2  1.5  1.5  -0.019988889   0.153149446  -0.026711736   0.104530247   0.447699532   0.028166374  -0.001761104  -0.229355132
                        -0.002153418   0.232636620   0.039645005  -0.165186858  -0.112531727  -0.008446309   0.004624949   0.224181051

   28    4.2  1.5  1.5   0.001045894  -0.113059945  -0.007073789   0.029474380   0.040867037   0.003072208  -0.000934401  -0.045900200
                        -0.009714874   0.074429476  -0.004767016   0.018652186   0.162609617   0.010231073  -0.000366080  -0.046940136

   29    5.2  1.5  1.5  -0.114000902  -0.005496423  -0.033642418  -0.008220595  -0.012430282   0.195695170   0.181804685  -0.002543538
                         0.004559638  -0.006202851   0.000178916   0.000281131  -0.000772059   0.003244665   0.000270842  -0.001200938

   30    6.2  1.5  1.5  -0.090759609  -0.004372731  -0.058412053  -0.014275520   0.007094398  -0.111652443  -0.155464873   0.002180611
                         0.003774588  -0.004848130   0.000315771   0.000485776   0.000445092  -0.001845949  -0.000228869   0.001035722

   31    7.2  1.5  1.5   0.005492091  -0.007218812   0.000355495   0.000548624   0.000022017  -0.000072024  -0.000071295   0.000333746
                         0.134141561   0.006465338   0.065945921   0.016114915  -0.000295193   0.004616615   0.049368276  -0.000695561

   32    8.2  1.5  1.5  -0.009679134   0.074156151  -0.004820731   0.018861712  -0.150083307  -0.009441474   0.001156029   0.152092210
                        -0.001042532   0.112646193   0.007153818  -0.029807936   0.037733366   0.002822539  -0.003091387  -0.148621555

   33    9.2  1.5  1.5   0.176124070   0.008497306   0.003452804   0.000839653  -0.000047123   0.000747697   0.000888189  -0.000012189
                        -0.006829153   0.009718032  -0.000014054  -0.000033420  -0.000002860   0.000012199   0.000001678  -0.000005401

   34    1.2  1.5  0.5   0.439323552   0.021180252   0.106286828   0.025969660  -0.020918408   0.329232863   0.447172468  -0.006271532
                        -0.017733713   0.023802248  -0.000571262  -0.000888031  -0.001311461   0.005445476   0.000659572  -0.002978309

   35    2.2  1.5  0.5  -0.011798120   0.090385461   0.030408595  -0.119010011   0.020714607   0.001306182   0.001264202   0.168344614
                        -0.001268652   0.137300632  -0.045134474   0.188065275  -0.005184482  -0.000412853  -0.003453221  -0.164452276

   36    3.2  1.5  0.5  -0.008711753   0.010960940  -0.000564963  -0.000864957   0.001202735  -0.005090456  -0.000315787   0.001362382
                        -0.206620234  -0.009951925  -0.104406903  -0.025516526  -0.019469223   0.306584552   0.208269307  -0.002905557

   37    4.2  1.5  0.5  -0.057842396  -0.002790317  -0.062625472  -0.015304594  -0.002767396   0.043520375   0.108663383  -0.001527471
                         0.002246166  -0.003190056   0.000335819   0.000523468  -0.000177967   0.000715219   0.000158792  -0.000729357

   38    5.2  1.5  0.5  -0.000718764   0.075489165   0.012819560  -0.053417028  -0.038322794  -0.002872165   0.000655925   0.031443854
                         0.006453046  -0.049626800   0.008638103  -0.033800419  -0.152491667  -0.009588056   0.000246458   0.032166528

   39    6.2  1.5  0.5   0.000830668  -0.093682498  -0.006728246   0.028027849  -0.072608955  -0.005451809  -0.000292692  -0.013571551
                        -0.008110781   0.061798958  -0.004532058   0.017737313  -0.288962138  -0.018170876  -0.000095900  -0.013931766

   40    7.2  1.5  0.5  -0.004083674   0.030896253  -0.000132633   0.000521681   0.035441661   0.002240029  -0.001719031  -0.226034646
                        -0.000390562   0.046711941   0.000200760  -0.000823189  -0.008935888  -0.000665632   0.004578972   0.220869703

   41    8.2  1.5  0.5  -0.002147355   0.003058792   0.000318499   0.000489875   0.000115932  -0.000516195   0.000045096  -0.000222021
                        -0.055428846  -0.002674440   0.058945475   0.014407240  -0.001953188   0.030786321  -0.032103779   0.000455364

   42    9.2  1.5  0.5  -0.003250257   0.351282900   0.001054773  -0.004388432   0.000139884   0.000009997   0.000011074   0.000530387
                         0.030183830  -0.231252870   0.000712734  -0.002775038   0.000560485   0.000035861   0.000004219   0.000543428

   43    1.2  1.5 -0.5  -0.003309713   0.367109454  -0.021548422   0.089815957   0.080206903   0.006036245   0.006509462   0.312488998
                         0.031689050  -0.241971726  -0.014521615   0.056835817   0.319359960   0.020071459   0.002414403   0.319866031

   44    2.2  1.5 -0.5   0.006724321  -0.008840542   0.001197621   0.001853417  -0.000104855   0.000335712   0.000340093  -0.001591568
                         0.164243047   0.007915172   0.222554479   0.054390884   0.001365856  -0.021350904  -0.235338787   0.003315095

   45    3.2  1.5 -0.5  -0.014708601   0.113501264   0.014261807  -0.055833772   0.297386362   0.018685015   0.001130751   0.148970699
                        -0.001685250   0.172873592  -0.021176452   0.088225339  -0.074708444  -0.005600664  -0.003003289  -0.145547019

   46    4.2  1.5 -0.5   0.000404332  -0.048282754   0.012698976  -0.052921048   0.010597845   0.000802914   0.001588265   0.075934093
                        -0.004218867   0.031930608   0.008558073  -0.033487687   0.042216351   0.002654333   0.000585272   0.077728820

   47    5.2  1.5 -0.5  -0.090262692  -0.004349441   0.063211810   0.015449265  -0.009990064   0.157211509  -0.044982164   0.000634221
                         0.003752289  -0.004820871  -0.000338020  -0.000527392  -0.000615452   0.002624201  -0.000080067   0.000297897

   48    6.2  1.5 -0.5   0.112140135   0.005407706  -0.033168365  -0.008107587  -0.018934701   0.297903591   0.019449450  -0.000272924
                        -0.004484610   0.006101762   0.000179287   0.000275456  -0.001174756   0.004962633   0.000000856  -0.000142752

   49    7.2  1.5 -0.5   0.002169466  -0.003088305  -0.000005883  -0.000006018  -0.000138544   0.000638166  -0.000500522   0.002080626
                         0.055963178   0.002700242  -0.000974555  -0.000240541   0.002332724  -0.036545234   0.316029803  -0.004426403

   50    8.2  1.5 -0.5  -0.004044651   0.030602392  -0.008053829   0.031521930   0.029861522   0.001875591  -0.000171278  -0.022965664
                        -0.000386831   0.046265124   0.011955935  -0.049810024  -0.007506898  -0.000557264   0.000476774   0.022432854

   51    9.2  1.5 -0.5  -0.420216187  -0.020253579   0.005192156   0.001272204   0.000037195  -0.000577611  -0.000759358   0.000010750
                         0.017202374  -0.022614603  -0.000026237  -0.000045092   0.000001576  -0.000008699  -0.000000756   0.000004989

   52    1.2  1.5 -1.5  -0.278257068  -0.013412673   0.193280378   0.047237872   0.028569368  -0.449362889   0.458554467  -0.006430874
                         0.011389929  -0.014974101  -0.001038762  -0.001612482   0.001756046  -0.007532217   0.000754137  -0.003017108

   53    2.2  1.5 -1.5  -0.014866290   0.112494381   0.000749873  -0.002922885   0.354912077   0.022303341   0.002038380   0.269605576
                        -0.001422050   0.170084032  -0.001104499   0.004630905  -0.089147737  -0.006696833  -0.005471171  -0.263393800

   54    3.2  1.5 -1.5  -0.011390178   0.014975689   0.001050215   0.001629334   0.001816637  -0.007723878   0.000555680  -0.002084205
                        -0.278289083  -0.013413487   0.195479328   0.047776443  -0.029349354   0.461561049  -0.320718898   0.004488622

   55    4.2  1.5 -1.5  -0.135246641  -0.006518573   0.034879905   0.008525138  -0.010661730   0.167642964  -0.065652026   0.000914219
                         0.005535717  -0.007278797  -0.000188067  -0.000291472  -0.000663955   0.002799773  -0.000127336   0.000413913

   56    5.2  1.5 -1.5  -0.000843720   0.095237351  -0.006821055   0.028429987  -0.047682458  -0.003579843  -0.002635041  -0.127049019
                         0.008244644  -0.062823904  -0.004596785   0.017988333  -0.189824948  -0.011928651  -0.000984071  -0.130044469

   57    6.2  1.5 -1.5  -0.000721770   0.075905708  -0.011846425   0.049359190   0.027199744   0.002047476   0.002263457   0.108640234
                         0.006488775  -0.049898673  -0.007980517   0.031236805   0.108304430   0.006807087   0.000839373   0.111205569

   58    7.2  1.5 -1.5  -0.009635097   0.073820020   0.009009021  -0.035264815  -0.004479159  -0.000282443  -0.000265383  -0.035314584
                        -0.001037669   0.112137086  -0.013372697   0.055725970   0.001120468   0.000088599   0.000724405   0.034498000

   59    8.2  1.5 -1.5  -0.005516225   0.007251735   0.000188875   0.000294586  -0.000600476   0.002598159  -0.000340144   0.001407851
                        -0.134751144  -0.006494986   0.035273808   0.008621472   0.009836035  -0.154732206   0.212650632  -0.002985136

   60    9.2  1.5 -1.5   0.001229314  -0.147010010   0.000694209  -0.002920124  -0.000181989  -0.000013506  -0.000012374  -0.000620939
                        -0.012850414   0.097233648   0.000473506  -0.001842534  -0.000725313  -0.000045236  -0.000004963  -0.000635072


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000078213   0.000000578  -0.000009860   0.000029613  -0.000071045  -0.000005187  -0.000018540  -0.000028456
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000001041  -0.000022691   0.000046023   0.000018743   0.000002416  -0.000026361   0.000030316  -0.000019849
                        -0.000001223  -0.000115630  -0.000099627  -0.000034374   0.000000352  -0.000012549   0.000006031  -0.000004341

    3    3.2  0.5  0.5   0.000000468   0.000000067  -0.000002405   0.000001095   0.000000260  -0.000000011   0.000000253  -0.000000187
                         0.000023920  -0.000001342  -0.000031356   0.000086575   0.000043060   0.000002926   0.000017929   0.000026875

    4    4.2  0.5  0.5  -0.001688888  -0.050660140   0.273559437   0.101081763   0.023791684  -0.281473128  -0.050985148   0.024901594
                         0.000048963   0.009436712   0.130967162   0.059927812  -0.044601347   0.535048100   0.072617310  -0.036110162

    5    5.2  0.5  0.5   0.017715078   0.009227798  -0.012593930  -0.124904808  -0.035703832  -0.040748962   0.037286654   0.102727188
                         0.031803378  -0.002715883   0.063990286  -0.266465938   0.368889019   0.063856006  -0.274518521  -0.402608545

    6    6.2  0.5  0.5   0.030149861  -0.079066824   0.535320918  -0.019743602  -0.069165612   0.072686435   0.028387458   0.196114164
                         0.001641998   0.013902441   0.225383658   0.092721190   0.026008643  -0.296801214  -0.006533040  -0.003203272

    7    7.2  0.5  0.5  -0.063084437  -0.033752430   0.101014991   0.439260361   0.116641911   0.202183516  -0.014363057  -0.428351058
                         0.008607926   0.010740527   0.104706094  -0.039904199   0.098210862  -0.033040135  -0.025624929  -0.135373521

    8    8.2  0.5  0.5   0.034447310   0.000594384   0.098002135  -0.186153798  -0.091155968   0.287670874   0.526919838  -0.111387999
                        -0.001864001   0.006639974  -0.074604633  -0.002846371  -0.037831901   0.194430827   0.107895502  -0.033446836

    9    9.2  0.5  0.5   0.000053143   0.000016913  -0.000023598   0.000022500  -0.000025324  -0.000001235  -0.000007783  -0.000012600
                         0.001349760  -0.000008395  -0.000224828   0.000628564   0.000155906   0.000011034   0.000482447   0.000724262

   10   10.2  0.5  0.5   0.001005108  -0.000017062  -0.000092682   0.000239372  -0.000446340  -0.000028664  -0.000092405  -0.000128246
                        -0.000072915  -0.000037053   0.000039321  -0.000031047  -0.000010547   0.000001165  -0.000027940  -0.000039913

   11   11.2  0.5  0.5  -0.000039324  -0.000199997  -0.000342875  -0.000148662   0.000004285   0.000093794  -0.000196048   0.000135466
                         0.000002213  -0.001018238   0.000748959   0.000258010  -0.000000851   0.000044836  -0.000036697   0.000032363

   12   12.2  0.5  0.5  -0.000017510  -0.002051820   0.000065523   0.000022037  -0.000000345   0.000007660   0.000041323  -0.000026987
                         0.000028958   0.000403518   0.000029831   0.000012315   0.000001432  -0.000015360  -0.000199315   0.000132685

   13    1.2  0.5 -0.5   0.000000567   0.000076763  -0.000027062  -0.000009011   0.000002235  -0.000030620  -0.000005899   0.000003844
                        -0.000000111  -0.000014990  -0.000012024  -0.000004004  -0.000004680   0.000064107   0.000027838  -0.000018138

   14    2.2  0.5 -0.5  -0.000000110   0.000000788  -0.000003171   0.000001605   0.000000038   0.000000724   0.000000131  -0.000000385
                         0.000117835  -0.000001400  -0.000039023   0.000109732  -0.000029195  -0.000002331   0.000020318   0.000030907

   15    3.2  0.5 -0.5   0.000000323   0.000004125  -0.000036154  -0.000014930   0.000002645  -0.000038743  -0.000026330   0.000017487
                         0.000001305   0.000023566   0.000078672   0.000027678   0.000001251  -0.000018793  -0.000005388   0.000003965

   16    4.2  0.5 -0.5  -0.051529614   0.001666964  -0.116707341   0.303171741   0.604116622   0.050500329   0.040488134   0.081609668
                         0.000447517  -0.000275629   0.013720860  -0.008605716  -0.023381558  -0.002245247  -0.016874365  -0.034822710

   17    5.2  0.5 -0.5   0.009577249  -0.011291388   0.222342815   0.014474267   0.075183401  -0.348255958   0.415158474  -0.276284458
                         0.000896979   0.034609007  -0.192792583  -0.063591346  -0.009247900  -0.126774051  -0.017028116  -0.020435537

   18    6.2  0.5 -0.5  -0.080265583  -0.029276253  -0.019606710   0.580720520  -0.299146946  -0.053279373   0.043791296  -0.012276280
                         0.001508869   0.007389945   0.092750234   0.011399872  -0.062332842   0.051201951  -0.191189301   0.026416308

   19    7.2  0.5 -0.5  -0.035185217   0.063564751  -0.385215410   0.134828533  -0.116955073  -0.038347968   0.043628338  -0.022090510
                        -0.004072583  -0.003642124  -0.214828065  -0.054668648   0.168200284  -0.147580969   0.447109816  -0.019363466

   20    8.2  0.5 -0.5  -0.000689221  -0.034165981   0.171272595   0.059266150   0.051458583  -0.005150620   0.009627648  -0.003687586
                        -0.006630801   0.004772570   0.072986550   0.107971261   0.343380100   0.098560309   0.115902052   0.537840456

   21    9.2  0.5 -0.5   0.000018208   0.000206531  -0.000275790  -0.000112857   0.000010489  -0.000151596  -0.000711139   0.000473579
                         0.000004998   0.001334923   0.000565277   0.000195877   0.000003642  -0.000044345  -0.000137825   0.000092406

   22   10.2  0.5 -0.5  -0.000009644  -0.001000450  -0.000206143  -0.000068731   0.000013405  -0.000182856   0.000012458  -0.000008176
                         0.000039636   0.000121071  -0.000125569  -0.000073566  -0.000025363   0.000407302   0.000133734  -0.000096190

   23   11.2  0.5 -0.5  -0.000001138   0.000039019   0.000031090  -0.000009222   0.000000032   0.000002615  -0.000003575   0.000004744
                         0.001037693  -0.000005365   0.000296147  -0.000823662   0.000103960  -0.000003500  -0.000139232  -0.000199396

   24   12.2  0.5 -0.5  -0.002091121   0.000022735  -0.000025139   0.000071991  -0.000017162  -0.000001441  -0.000135397  -0.000203552
                        -0.000002796   0.000025065   0.000002306  -0.000000656   0.000000292  -0.000000306  -0.000001107  -0.000000896

   25    1.2  1.5  1.5  -0.000422346  -0.049970710   0.006978554   0.002282302  -0.001669982   0.022687985   0.004345118  -0.002871672
                         0.000732841   0.009802907   0.003234701   0.001323988   0.003319873  -0.048105360  -0.021151214   0.014089844

   26    2.2  1.5  1.5   0.000208493  -0.001910662  -0.000332498   0.000134559  -0.000135947   0.000043612   0.000208385   0.000217633
                        -0.155383433   0.001605610  -0.003691813   0.010446946   0.025815364   0.001811873  -0.024177984  -0.036291219

   27    3.2  1.5  1.5   0.004376899   0.060256448   0.013623814   0.005648852  -0.002714702   0.039445754   0.022563453  -0.015024926
                         0.002491981   0.306461364  -0.029681612  -0.010044961  -0.001421276   0.018575968   0.004634317  -0.003049787

   28    4.2  1.5  1.5  -0.001958356  -0.240061871  -0.180030745  -0.060725975  -0.003725066   0.046524873   0.021305982  -0.013993766
                         0.003435941   0.047192263  -0.082713036  -0.034258162   0.006785588  -0.098941487  -0.103681132   0.069043694

   29    5.2  1.5  1.5   0.148987065  -0.001555192  -0.029574269   0.084107037   0.105211352   0.007403271  -0.121379120  -0.182187642
                         0.000192893  -0.001830146   0.002746332  -0.001091357   0.000580432  -0.000217239  -0.001026687  -0.001091632

   30    6.2  1.5  1.5   0.069247983  -0.000743408  -0.023028213   0.066250585  -0.092666221  -0.006457816   0.070435949   0.105758650
                         0.000080434  -0.000848222   0.002304362  -0.000849674  -0.000425673   0.000033204   0.000631166   0.000632569

   31    7.2  1.5  1.5   0.000161607  -0.001606828   0.004472892  -0.001706321  -0.000111787  -0.000107388   0.000056914   0.000024176
                        -0.130968831   0.001384746   0.046117755  -0.131998478   0.039000534   0.002670505  -0.002701355  -0.004098615

   32    8.2  1.5  1.5   0.002104620   0.028769436  -0.054972764  -0.022691126  -0.013315390   0.192708761   0.085611636  -0.057043829
                         0.001202374   0.146397695   0.119350373   0.039913649  -0.006559532   0.090963938   0.017584927  -0.011653104

   33    9.2  1.5  1.5  -0.000709668   0.000006787   0.000159890  -0.000455664  -0.000867536  -0.000060956  -0.000388551  -0.000584608
                        -0.000001886   0.000008528  -0.000014998   0.000006103  -0.000004468   0.000002242  -0.000003560  -0.000003714

   34    1.2  1.5  0.5  -0.181458443   0.001949602  -0.007993626   0.022984489  -0.031464740  -0.002192388   0.020886293   0.031359531
                        -0.000210472   0.002222359   0.000797763  -0.000297094  -0.000142658   0.000011835   0.000189601   0.000188203

   35    2.2  1.5  0.5   0.008825778   0.120997813   0.028393898   0.011744021   0.001052920  -0.015080950   0.002082969  -0.001377635
                         0.005033176   0.615589022  -0.061741917  -0.020761000   0.000436348  -0.007158658   0.000427294  -0.000259298

   36    3.2  1.5  0.5  -0.000566207   0.005507441   0.001411336  -0.000545531   0.000105203  -0.000069809  -0.000161737  -0.000178541
                         0.448567993  -0.004711224   0.014790403  -0.042225564  -0.015686018  -0.001116906   0.019935977   0.029911021

   37    4.2  1.5  0.5  -0.172937693   0.001832339   0.052957720  -0.151782959   0.088204342   0.006106503  -0.035078087  -0.052704177
                        -0.000211437   0.002121309  -0.005174119   0.001958707   0.000344135   0.000066688  -0.000345894  -0.000311619

   38    5.2  1.5  0.5  -0.000960580  -0.117973088  -0.075091163  -0.025206203   0.002200050  -0.031010100  -0.021981477   0.014503519
                         0.001694208   0.023188257  -0.034584003  -0.014275780  -0.004528631   0.065641944   0.106926734  -0.071258219

   39    6.2  1.5  0.5   0.000443265   0.053203202   0.052265919   0.017623787   0.002090353  -0.026652465  -0.044236478   0.029110418
                        -0.000757913  -0.010458093   0.023956267   0.009966641  -0.003867536   0.056606398   0.215145875  -0.143361048

   40    7.2  1.5  0.5   0.001667722   0.022983417  -0.037429592  -0.015520414   0.018831472  -0.272802964   0.059311629  -0.039588933
                         0.000934741   0.116859655   0.081584156   0.027893664   0.009607479  -0.128575232   0.012221572  -0.008010118

   41    8.2  1.5  0.5  -0.000254697   0.002514524  -0.006360340   0.002432775  -0.000046416   0.000204712   0.000187970   0.000245352
                         0.204917107  -0.002162472  -0.065970432   0.188659942  -0.013201928  -0.000840687  -0.027701343  -0.041515775

   42    9.2  1.5  0.5  -0.000006479  -0.000725713  -0.001426262  -0.000478997   0.000010385  -0.000170932   0.000073981  -0.000048793
                         0.000010524   0.000142357  -0.000655415  -0.000271075  -0.000025203   0.000359905  -0.000361064   0.000240471

   43    1.2  1.5 -0.5  -0.001487534  -0.178054276   0.020883763   0.006981051  -0.000955600   0.013432600  -0.006317220   0.004144582
                         0.002554813   0.034984076   0.009604346   0.003974847   0.001973204  -0.028453742   0.030717231  -0.020471825

   44    2.2  1.5 -0.5  -0.000773777   0.007697532   0.002302285  -0.000877499  -0.000040276  -0.000060070   0.000031941   0.000013823
                         0.627367289  -0.006631381   0.023741117  -0.067952246   0.016693706   0.001138171  -0.001401461  -0.002126300

   45    3.2  1.5 -0.5  -0.006308278  -0.086526226  -0.017644216  -0.007295391   0.000977755  -0.014199645   0.029298189  -0.019536379
                        -0.003568358  -0.440144041   0.038366360   0.012943152   0.000544379  -0.006665756   0.006026373  -0.003974826

   46    4.2  1.5 -0.5  -0.001391811  -0.169691297  -0.137911670  -0.046294513   0.002571731  -0.037705611   0.010621574  -0.006933872
                         0.002433162   0.033351975  -0.063421404  -0.026231845  -0.005538955   0.079739647  -0.051623730   0.034387690

   47    5.2  1.5 -0.5   0.120230290  -0.001267477  -0.028831390   0.082664958  -0.072597487  -0.005034641  -0.072716876  -0.109160759
                         0.000148211  -0.001478701   0.002810962  -0.001113874  -0.000309718   0.000033374  -0.000584559  -0.000663723

   48    6.2  1.5 -0.5  -0.054221286   0.000580306   0.020152467  -0.057490697  -0.062566104  -0.004390821  -0.146281446  -0.219642552
                        -0.000067538   0.000658909  -0.001951889   0.000669892  -0.000347510   0.000219323  -0.001243084  -0.001327801

   49    7.2  1.5 -0.5  -0.000160563   0.001457658  -0.002857129   0.001077839  -0.001558234   0.000552944   0.000371332   0.000340208
                         0.119098240  -0.001237041  -0.031792712   0.089754037   0.301580204   0.021133439  -0.040389451  -0.060556753

   50    8.2  1.5 -0.5  -0.002882360  -0.039523463   0.078828523   0.032599682   0.000846827  -0.011892775  -0.040664670   0.027138473
                        -0.001640462  -0.201069593  -0.171419241  -0.057704528   0.000177615  -0.005731925  -0.008366866   0.005559047

   51    9.2  1.5 -0.5   0.000739543  -0.000008376  -0.000547802   0.001569522  -0.000398432  -0.000027218   0.000245362   0.000368557
                         0.000000631  -0.000009087   0.000053226  -0.000019818  -0.000000878  -0.000001492   0.000002121   0.000002480

   52    1.2  1.5 -1.5  -0.050923147   0.000554970  -0.002623289   0.007690807  -0.053186486  -0.003715456  -0.014379072  -0.021592495
                        -0.000044022   0.000638311   0.000283200  -0.000122394  -0.000260910   0.000076043  -0.000111770  -0.000134271

   53    2.2  1.5 -1.5  -0.002182966  -0.029984715  -0.004364947  -0.001802914   0.001616149  -0.023353127   0.035547876  -0.023695895
                        -0.001209657  -0.152463017   0.009492314   0.003238756   0.000820272  -0.011003770   0.007310848  -0.004808628

   54    3.2  1.5 -1.5   0.000404429  -0.003818160  -0.001083455   0.000397923  -0.000239097   0.000112452  -0.000131381  -0.000144134
                        -0.312328743   0.003284642  -0.011473312   0.032656516   0.043600194   0.003062187   0.015330764   0.023034008

   55    4.2  1.5 -1.5  -0.244656323   0.002580569   0.069405010  -0.198106879  -0.109332261  -0.007728492  -0.070444784  -0.105845629
                        -0.000308251   0.002996917  -0.006649085   0.002485942  -0.000662069   0.000436725  -0.000624130  -0.000651676

   56    5.2  1.5 -1.5  -0.001175605  -0.146188213  -0.076418151  -0.025911327  -0.003386842   0.044822422  -0.036702511   0.024159461
                         0.002094280   0.028743505  -0.035148981  -0.014518364   0.006586723  -0.095187793   0.178455749  -0.118954888

   57    6.2  1.5 -1.5  -0.000567061  -0.067948867  -0.060198151  -0.020108669   0.002813286  -0.039555108   0.021306642  -0.013985051
                         0.000974977   0.013350698  -0.027677512  -0.011456444  -0.005812909   0.083800973  -0.103592081   0.069036509

   58    7.2  1.5 -1.5  -0.001842435  -0.025259505   0.055157277   0.022813661   0.002456018  -0.035240372   0.004014581  -0.002654465
                        -0.001051119  -0.128509993  -0.119934084  -0.040328538   0.001054088  -0.016708390   0.000826058  -0.000504357

   59    8.2  1.5 -1.5   0.000178195  -0.001835163   0.004529379  -0.001774720  -0.000976179   0.000180060  -0.000426173  -0.000545792
                        -0.149197633   0.001583447   0.045688853  -0.131390132   0.213096578   0.014842327   0.058220372   0.087397277

   60    9.2  1.5 -1.5   0.000005027   0.000696151   0.000413930   0.000140026   0.000028295  -0.000369877  -0.000117566   0.000077071
                        -0.000009671  -0.000137862   0.000190599   0.000078629  -0.000054037   0.000784748   0.000572677  -0.000380847


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.000030058   0.000000000  -0.000001891  -0.000071214  -0.000011728  -0.000007340  -0.000000000   0.000001590
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000249  -0.000000040   0.000009217   0.000000328   0.000001415  -0.000002054  -0.000043279   0.000013105
                        -0.000000006  -0.000002929  -0.000001907   0.000000250   0.000002799  -0.000003794   0.000023092   0.000000646

    3    3.2  0.5  0.5  -0.000000255   0.000000009   0.000000116   0.000000417  -0.000000425  -0.000000381  -0.000001289   0.000000473
                         0.000001054  -0.000000040  -0.000000624  -0.000022138  -0.000033840  -0.000021155  -0.000001481  -0.000007133

    4    4.2  0.5  0.5   0.000003866   0.004377026  -0.000006195   0.000038958   0.001086090  -0.001694004  -0.009833228  -0.000639708
                         0.000089120   0.000202295   0.001383387  -0.000141885  -0.000349238   0.001125804  -0.017197110   0.005566380

    5    5.2  0.5  0.5  -0.000068920   0.000701035  -0.000266536  -0.000509159   0.000398887  -0.001706767   0.000505786   0.007998689
                        -0.004163107   0.000146463  -0.000096591   0.005117343  -0.012569685  -0.006747357  -0.002590108  -0.012233781

    6    6.2  0.5  0.5  -0.000119011  -0.004780137  -0.000148509  -0.000909833  -0.007226847   0.010472701  -0.003796128   0.012777812
                        -0.000064197   0.000474298   0.002480533   0.000012396   0.003269998  -0.005672226  -0.012281287   0.003864074

    7    7.2  0.5  0.5   0.000246282  -0.001979437   0.001940151   0.001818377  -0.001815804   0.005040561  -0.006938536  -0.026412916
                        -0.001065760  -0.001274260   0.000740973   0.001283945  -0.001404733  -0.004680884  -0.004019506  -0.002929139

    8    8.2  0.5  0.5  -0.000133536   0.000469203   0.003663317  -0.001120181   0.000010324  -0.001220784   0.008298826   0.012461681
                         0.000257863  -0.002821779  -0.000771322  -0.000292994   0.001005295   0.000079942  -0.005116408   0.001651550

    9    9.2  0.5  0.5   0.000000398  -0.000000071   0.000001450   0.000013792  -0.000028518  -0.000019642  -0.000044547  -0.000004296
                         0.000059550  -0.000000166   0.000006517   0.000243128  -0.000376582  -0.000237600  -0.000078754  -0.000337270

   10   10.2  0.5  0.5  -0.000002883   0.000000079   0.000002409   0.000244689  -0.000425245  -0.000258393  -0.000098092  -0.000380327
                        -0.000003745   0.000001108   0.000000566  -0.000013725   0.000021935   0.000026077   0.000057003  -0.000001318

   11   11.2  0.5  0.5   0.000000006  -0.000000450  -0.000175122  -0.000001191  -0.000103206   0.000189402  -0.000369324   0.000122440
                         0.000000446   0.000044360   0.000036119   0.000000854  -0.000218929   0.000344134   0.000195913   0.000002911

   12   12.2  0.5  0.5  -0.000000201   0.000057845   0.000058659  -0.000001851  -0.000501699   0.000805283   0.000287540   0.000007487
                         0.000000110   0.000000824   0.000284142  -0.000007922   0.000264178  -0.000425456   0.000540032  -0.000164145

   13    1.2  0.5 -0.5  -0.000000000   0.000030058  -0.000014506   0.000000385  -0.000006434   0.000010280  -0.000000674   0.000000000
                        -0.000000000  -0.000000060  -0.000069721   0.000001851   0.000003533  -0.000005645  -0.000001440  -0.000000000

   14    2.2  0.5 -0.5   0.000000034  -0.000000249   0.000000312  -0.000000010   0.000000026   0.000000107  -0.000006138   0.000002579
                        -0.000002929   0.000000007   0.000000270  -0.000009412   0.000004314   0.000003135  -0.000011596  -0.000048986

   15    3.2  0.5 -0.5  -0.000000010  -0.000000257  -0.000021589   0.000000587   0.000009848  -0.000015916   0.000006261  -0.000001887
                        -0.000000040  -0.000001053   0.000004917  -0.000000241   0.000018726  -0.000029867  -0.000003450  -0.000000540

   16    4.2  0.5 -0.5  -0.004376616   0.000003689  -0.000130975  -0.001353122  -0.002026745  -0.001120099  -0.004770982  -0.019743534
                         0.000210972  -0.000089128   0.000067042   0.000287852  -0.000171427   0.000216652   0.002937948  -0.001620449

   17    5.2  0.5 -0.5  -0.000700743  -0.000060666   0.004906344   0.000148857   0.001751688  -0.006399858   0.007692283  -0.002131817
                         0.000147852   0.004163236  -0.001540852   0.000241273   0.006735835  -0.010825799  -0.012428725   0.001555582

   18    6.2  0.5 -0.5   0.004781068  -0.000118884  -0.000173191  -0.002398278   0.011909948   0.007908562  -0.008914097  -0.012732832
                         0.000464820   0.000064433  -0.000893283   0.000650663  -0.000068952  -0.000612253  -0.009936922   0.001765103

   19    7.2  0.5 -0.5   0.001976907   0.000248394   0.001627418  -0.001120633   0.006671309   0.000915474   0.013844488  -0.006580760
                        -0.001278182   0.001065270   0.001518723  -0.001748544   0.001676775  -0.002105309   0.022683742  -0.004581846

   20    8.2  0.5 -0.5  -0.000474796  -0.000134047  -0.000515025   0.000008958  -0.001108541   0.000474833  -0.006776045  -0.001118195
                        -0.002820843  -0.000257598  -0.001037015  -0.003743627   0.000517533   0.000886148  -0.010588027   0.009684925

   21    9.2  0.5 -0.5   0.000000071   0.000000280   0.000240840  -0.000006676   0.000097148  -0.000156265   0.000307319  -0.000090210
                        -0.000000166  -0.000059551  -0.000036020  -0.000000092   0.000217720  -0.000343814  -0.000139011  -0.000006983

   22   10.2  0.5 -0.5  -0.000000077  -0.000002876   0.000036404  -0.000001044  -0.000239043   0.000383301   0.000162340   0.000010071
                         0.000001108   0.000003751   0.000242354  -0.000002244   0.000101516  -0.000185458   0.000343942  -0.000113004

   23   11.2  0.5 -0.5   0.000000538   0.000000005   0.000000594   0.000000309   0.000000374  -0.000014914  -0.000054515   0.000020973
                         0.000044359  -0.000000446  -0.000001340   0.000178808  -0.000392811  -0.000241576  -0.000109672  -0.000417543

   24   12.2  0.5 -0.5  -0.000057843  -0.000000201  -0.000008133  -0.000290134   0.000910647   0.000566916   0.000145510   0.000610994
                         0.000000938  -0.000000109  -0.000000199   0.000000448  -0.000014683  -0.000009923  -0.000076331   0.000031640

   25    1.2  1.5  1.5  -0.000000017  -0.000726052   0.000027400  -0.000000750  -0.000585262   0.000939432   0.000012610   0.000000420
                        -0.000000274   0.000002093   0.000133070  -0.000003910   0.000307985  -0.000496627   0.000023769  -0.000007608

   26    2.2  1.5  1.5   0.000000339  -0.000000063  -0.000000199   0.000000686  -0.000008036  -0.000005903  -0.000347142   0.000145771
                        -0.000053099  -0.000000043   0.000009654   0.000351844  -0.000516983  -0.000321955  -0.000666431  -0.002796092

   27    3.2  1.5  1.5   0.000000145  -0.000000859   0.000666300  -0.000017947   0.000152543  -0.000245976  -0.001308671   0.000398037
                         0.000000205  -0.000348342  -0.000137370   0.000003614   0.000290115  -0.000464627   0.000697230   0.000016461

   28    4.2  1.5  1.5  -0.000179227   0.376211219   0.058919374  -0.001649723  -0.028143528   0.045095334   0.154133242   0.003767486
                         0.000247961  -0.000907093   0.285563438  -0.007847035   0.014855961  -0.023956375   0.289219644  -0.087887002

   29    5.2  1.5  1.5  -0.352713515  -0.000173006  -0.001308201  -0.050598302   0.131215946   0.081742530  -0.102138221  -0.428381857
                        -0.000066699  -0.000195325   0.000042967   0.000015256  -0.002056239  -0.001507151   0.053200555  -0.022245732

   30    6.2  1.5  1.5  -0.064304954  -0.000024477   0.005108269   0.186508985   0.553472488   0.344705039   0.010754954   0.045006826
                         0.000000587  -0.000022799   0.000020252  -0.000642436  -0.008820783  -0.006425318  -0.005594624   0.002334051

   31    7.2  1.5  1.5  -0.000029178  -0.000000270  -0.000051555   0.000321063   0.008915108   0.006516742  -0.030413516   0.012740945
                        -0.048620219  -0.000019594   0.000342468   0.010389673   0.564316746   0.351472378  -0.058417305  -0.244956836

   32    8.2  1.5  1.5  -0.000019138   0.000077817  -0.541885008   0.014827455  -0.028071372   0.045312997  -0.128986783   0.039127122
                        -0.000008877   0.018163144   0.111760063  -0.003072341  -0.053195343   0.085220815   0.068750123   0.001728245

   33    9.2  1.5  1.5   0.000263018   0.000000148  -0.000002836  -0.000099559   0.000175229   0.000109215   0.000032748   0.000136919
                        -0.000000263   0.000000311   0.000000214   0.000000105  -0.000002420  -0.000001832  -0.000016761   0.000006921

   34    1.2  1.5  0.5   0.000542395   0.000000358  -0.000012531  -0.000455638   0.001596208   0.000994709   0.000392842   0.001649688
                         0.000000162   0.000000258   0.000000115   0.000000755  -0.000024542  -0.000018291  -0.000204906   0.000086247

   35    2.2  1.5  0.5  -0.000000192   0.000000647   0.000315170  -0.000008343   0.000388313  -0.000627203  -0.002619876   0.000796302
                        -0.000000177   0.000595797  -0.000064917   0.000001338   0.000739889  -0.001184863   0.001395158   0.000033474

   36    3.2  1.5  0.5   0.000000189  -0.000000342  -0.000000037  -0.000000717  -0.000004987  -0.000003806   0.000433829  -0.000181665
                         0.000152708   0.000000052  -0.000011560  -0.000413596  -0.000293379  -0.000183159   0.000834681   0.003499416

   37    4.2  1.5  0.5   0.584930433   0.000286428  -0.002461156  -0.088731479   0.176341478   0.109815315   0.056926214   0.238953960
                         0.000162364   0.000356977  -0.000004302   0.000085688  -0.002734752  -0.002016517  -0.029685818   0.012375403

   38    5.2  1.5  0.5  -0.000295830   0.618523058  -0.027236398   0.000712808   0.031631450  -0.050695965   0.111925867   0.002689953
                         0.000394833  -0.001441046  -0.132130571   0.003580257  -0.016641436   0.026896792   0.209986659  -0.063879183

   39    6.2  1.5  0.5  -0.000011000   0.018235379   0.115170801  -0.003140998  -0.011876130   0.018962825  -0.051640126  -0.001203879
                         0.000008528  -0.000054526   0.558654082  -0.015248683   0.006368901  -0.010293277  -0.096999865   0.029562766

   40    7.2  1.5  0.5  -0.000037083   0.000130772  -0.292115172   0.008035379  -0.038829807   0.062665030  -0.341788404   0.103840489
                        -0.000012671   0.035159790   0.060302235  -0.001687879  -0.073788275   0.118274713   0.182102957   0.004465264

   41    8.2  1.5  0.5   0.000045549   0.000037588   0.000051804   0.000735372   0.001978547   0.001399043   0.065617594  -0.027465508
                        -0.029429000  -0.000007525   0.009777859   0.360818142   0.115208903   0.071726281   0.126054211   0.528385805

   42    9.2  1.5  0.5   0.000000213   0.000116963  -0.000082416   0.000002139   0.000047023  -0.000076231   0.000207287   0.000005172
                         0.000000147  -0.000000137  -0.000399950   0.000010946  -0.000025084   0.000040388   0.000388430  -0.000117900

   43    1.2  1.5 -0.5   0.000000357  -0.000542393   0.000092071  -0.000002440  -0.000880704   0.001410949   0.000777102   0.000019155
                        -0.000000259   0.000001237   0.000446239  -0.000012292   0.000462754  -0.000746798   0.001457745  -0.000442656

   44    2.2  1.5 -0.5  -0.000000535   0.000000192   0.000000390   0.000000642  -0.000020548  -0.000015763   0.000367717  -0.000153681
                        -0.000595797  -0.000000178   0.000008441   0.000321785  -0.001340471  -0.000835449   0.000707108   0.002964219

   45    3.2  1.5 -0.5  -0.000000342   0.000000113   0.000405071  -0.000011325  -0.000084825   0.000136843   0.003092800  -0.000939870
                        -0.000000052   0.000152708  -0.000083545   0.000002318  -0.000162378   0.000259558  -0.001647271  -0.000039304

   46    4.2  1.5 -0.5   0.000285720  -0.584928962   0.017990107  -0.000505532  -0.097227826   0.155886192   0.112455526   0.002769531
                        -0.000357545   0.001322076   0.086888658  -0.002408681   0.051090309  -0.082482063   0.211201090  -0.064141806

   47    5.2  1.5 -0.5   0.618524700   0.000296612  -0.003650390  -0.134908292   0.057383243   0.035736234  -0.056722047  -0.237629509
                         0.000214728   0.000394246   0.000031410   0.000248717  -0.000825660  -0.000638459   0.029502461  -0.012410198

   48    6.2  1.5 -0.5   0.018235451   0.000011017   0.015568790   0.570401280  -0.021576127  -0.013475439   0.026267877   0.109742677
                         0.000018372   0.000008506  -0.000030907  -0.001037816   0.000105015   0.000133809  -0.013616353   0.005676365

   49    7.2  1.5 -0.5   0.000061062   0.000037058   0.000015741  -0.000463888   0.002001429   0.001481046   0.048042326  -0.020131639
                        -0.035159980  -0.000012745  -0.008210725  -0.298274066   0.133835003   0.083368279   0.092166809   0.386749942

   50    8.2  1.5 -0.5   0.000037603  -0.000103897  -0.353403297   0.009583416   0.033297995  -0.053719709   0.466974839  -0.141982434
                         0.000007450  -0.029428852   0.072776246  -0.001940965   0.063544160  -0.101937230  -0.248757740  -0.006026703

   51    9.2  1.5 -0.5   0.000116963  -0.000000213  -0.000011152  -0.000408352   0.000086259   0.000053291  -0.000104603  -0.000439669
                        -0.000000095   0.000000147   0.000000136   0.000000779  -0.000001291  -0.000000646   0.000054639  -0.000023181

   52    1.2  1.5 -1.5   0.000726055  -0.000000017  -0.000003981  -0.000135862   0.001062490   0.000661247   0.000006713   0.000026873
                         0.000000654   0.000000274   0.000000062   0.000000280  -0.000016869  -0.000011747  -0.000003605   0.000001351

   53    2.2  1.5 -1.5   0.000000063   0.000000444   0.000344608  -0.000009411   0.000149793  -0.000241798   0.002470938  -0.000750739
                        -0.000000043   0.000053098  -0.000070997   0.000002161   0.000285047  -0.000457023  -0.001316757  -0.000032071

   54    3.2  1.5 -1.5   0.000000168   0.000000145  -0.000000117  -0.000001231   0.000008034   0.000005933  -0.000183560   0.000077061
                        -0.000348343  -0.000000205  -0.000018307  -0.000680312   0.000525660   0.000327721  -0.000353568  -0.001480815

   55    4.2  1.5 -1.5  -0.376212278  -0.000179718  -0.008018558  -0.291578011   0.051058758   0.031819530   0.078011785   0.327282240
                        -0.000161196  -0.000247605  -0.000016749   0.000483213  -0.000707270  -0.000524639  -0.040650714   0.017070280

   56    5.2  1.5 -1.5   0.000172618  -0.352712690  -0.010291594   0.000224405   0.072375811  -0.116005394   0.201657536   0.004912658
                        -0.000195668   0.000766006  -0.049540604   0.001289526  -0.038024397   0.061356345   0.378602860  -0.115058164

   57    6.2  1.5 -1.5   0.000024432  -0.064304829   0.037361644  -0.001060347   0.305239511  -0.489384962  -0.021183782  -0.000510691
                        -0.000022848   0.000126908   0.182729641  -0.004997047  -0.160286275   0.258673463  -0.039778255   0.012112310

   58    7.2  1.5 -1.5   0.000000231   0.000067219   0.010237250  -0.000324787  -0.163463490   0.263810494   0.216483616  -0.065800766
                        -0.000019595   0.048620182  -0.001801974   0.000120233  -0.311215340   0.498935759  -0.115330080  -0.002796898

   59    8.2  1.5 -1.5  -0.000041805  -0.000019120   0.000012323   0.000961301  -0.001301161  -0.000999133  -0.018143785   0.007621605
                         0.018163263   0.000008915   0.015142409   0.553289029  -0.096509906  -0.060139406  -0.034709099  -0.145966026

   60    9.2  1.5 -1.5  -0.000000148   0.000263018  -0.000020176   0.000000368   0.000096613  -0.000154760  -0.000064282  -0.000001307
                         0.000000311  -0.000000258  -0.000097493   0.000002820  -0.000050963   0.000082223  -0.000121088   0.000036764


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.2  0.5  0.5   0.008147389  -0.001146958  -0.007719093   0.035971965  -0.007560502   0.000313682   0.000059360  -0.000786219
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.002059018  -0.023807750  -0.001565809  -0.000628006  -0.000293540  -0.007134297   0.017658035  -0.008261780
                         0.003522373   0.026711338   0.010869094   0.002576041  -0.000011277  -0.002002528  -0.019034162  -0.003128521

    3    3.2  0.5  0.5   0.000681690   0.000508062  -0.000064985  -0.000151845  -0.000002081  -0.000084682  -0.008630501  -0.007596173
                         0.027597713  -0.002955777   0.005455788  -0.024936044  -0.007458187   0.000347582  -0.000695439  -0.024048698

    4    4.2  0.5  0.5  -0.016373145  -0.089741274   0.198717098   0.043489671   0.000014834   0.000137910   0.092913642   0.017128812
                        -0.008943091  -0.073506239   0.015197833  -0.000923883  -0.000002443  -0.000677603   0.075949957  -0.038957917

    5    5.2  0.5  0.5   0.056919188   0.011716069   0.021664012  -0.007883812  -0.000137296   0.000017407  -0.039553309  -0.068028609
                         0.153306365  -0.002524658  -0.042928254   0.162633897  -0.001497381  -0.000100984  -0.000960201  -0.070541267

    6    6.2  0.5  0.5   0.068199191  -0.154427275  -0.095263399  -0.040836125  -0.000240005  -0.000425764   0.102603748  -0.053799608
                        -0.009240500  -0.117407258  -0.048156018  -0.007626919   0.000036987   0.001163837   0.102463907  -0.024207431

    7    7.2  0.5  0.5  -0.185925811  -0.020498613  -0.062431996   0.028106715   0.000455655   0.000117855   0.013639289   0.146922652
                         0.036494376  -0.075879618   0.073145906   0.059947979  -0.000355407   0.000598597   0.017148111  -0.078245738

    8    8.2  0.5  0.5   0.101346759   0.029500715  -0.007333357  -0.023611811  -0.000213002   0.000659329  -0.051778741  -0.045099840
                        -0.018893038  -0.048840248   0.200336858   0.032227298   0.000096215   0.000078958   0.087817856   0.037929472

    9    9.2  0.5  0.5  -0.017361041  -0.007575300   0.007818147  -0.030223175   0.010612137   0.000953037  -0.116657767  -0.102297885
                        -0.401282415   0.044363745  -0.078832087   0.362983735   0.172244445  -0.008186085  -0.008413542  -0.322713251

   10   10.2  0.5  0.5  -0.118916497   0.005797743   0.111496595  -0.523775497   0.170319361  -0.012618608   0.000212070  -0.001550775
                         0.026557131   0.010069120   0.010099253  -0.021256566  -0.010653591  -0.001027070   0.009266666   0.021672953

   11   11.2  0.5  0.5  -0.026055705  -0.347135807  -0.026488552   0.008094789  -0.012544711  -0.166845519  -0.236156415   0.111078550
                         0.051870593   0.388804336   0.158301739   0.036958491  -0.000540977  -0.046885642   0.254716724   0.042323395

   12   12.2  0.5  0.5  -0.000012276  -0.000086499  -0.000103882  -0.000022245  -0.003393439  -0.081811537   0.000273765   0.000048100
                        -0.000006443  -0.000077276  -0.000015519  -0.000003084   0.014533132   0.291873710   0.000253764  -0.000119514

   13    1.2  0.5 -0.5   0.000876488   0.006226113   0.035554460   0.007629502   0.000082518   0.001988886  -0.000710563  -0.000053648
                         0.000739784   0.005255043   0.005464677   0.001172645  -0.000302634  -0.007294212  -0.000336513  -0.000025407

   14    2.2  0.5 -0.5   0.000964790   0.000698450  -0.000229378  -0.000103541   0.000055230   0.000066339  -0.008805817  -0.007811934
                         0.035768334  -0.004019805  -0.002641546   0.010980812   0.007409809  -0.000286168  -0.000708693  -0.024760436

   15    3.2  0.5 -0.5   0.001518214   0.018321383  -0.003938239  -0.000764585  -0.000357616  -0.007194953  -0.017158402   0.008097662
                        -0.002586459  -0.020650071   0.024623558   0.005402338  -0.000009737  -0.001963978   0.018483262   0.003065463

   16    4.2  0.5 -0.5   0.115990248  -0.018280379   0.042844560  -0.198719481   0.000690016  -0.000006259  -0.001194021  -0.116480423
                         0.001710499  -0.003726455   0.007519888  -0.015166642   0.000045200   0.000013669   0.042540449   0.028873030

   17    5.2  0.5 -0.5  -0.007324847   0.142378954   0.016914199  -0.014891130   0.000102006  -0.001408524  -0.091675034   0.036158145
                        -0.009486136  -0.080441712  -0.161943968  -0.045721096   0.000009771  -0.000526365   0.034635967   0.016061593

   18    6.2  0.5 -0.5   0.193738350   0.046156703  -0.041520806   0.101473347  -0.001234848   0.000098820  -0.058983703  -0.136586427
                         0.009884283   0.051049733   0.001334783  -0.033125172   0.000104606  -0.000221822  -0.001149027   0.048688082

   19    7.2  0.5 -0.5   0.064606868  -0.118542948   0.036887487   0.050595433  -0.000546511  -0.000462755   0.099294227  -0.019666447
                        -0.044764519  -0.147810067  -0.054982369   0.081781293  -0.000271172   0.000346112   0.133601338   0.009660163

   20    8.2  0.5 -0.5   0.008957816   0.065261717  -0.018441956  -0.023185906   0.000097268   0.000148859  -0.024525594   0.009208838
                        -0.056350861   0.079806144  -0.035440240   0.199125711  -0.000656878  -0.000180190  -0.053582979   0.101529361

   21    9.2  0.5 -0.5  -0.022825557  -0.272093050   0.025270236   0.004248361   0.008148470   0.163386125  -0.230579941   0.109033119
                         0.038788155   0.295456181  -0.363362144  -0.079104822   0.001233983   0.055549442   0.247874143   0.042327311

   22   10.2  0.5 -0.5  -0.010925101  -0.073744930  -0.520925527  -0.111736746  -0.002328589  -0.055083018   0.007874795  -0.004157931
                         0.003955143  -0.096995360  -0.058559436  -0.006955955   0.012444348   0.161517940  -0.020251158   0.008284183

   23   11.2  0.5 -0.5   0.014498298   0.013545004   0.013615382   0.002132726   0.001343450   0.002778121   0.118504694   0.104409020
                         0.521020037  -0.056444584  -0.035299816   0.160488428   0.173302873  -0.012245182   0.009292555   0.331284196

   24   12.2  0.5 -0.5   0.000115944  -0.000013537  -0.000022455   0.000105034  -0.303115113   0.014913944  -0.000007682  -0.000356036
                        -0.000003261  -0.000002995  -0.000000331   0.000000442   0.002148966   0.000549206   0.000128601   0.000112169

   25    1.2  1.5  1.5  -0.009752091  -0.068704166  -0.028192002  -0.006031626   0.004663070   0.112429739  -0.003112927  -0.000542015
                        -0.005113941  -0.061312636  -0.004205731  -0.000868433  -0.019971556  -0.401106077  -0.002877423   0.001364820

   26    2.2  1.5  1.5  -0.001379491  -0.001385462   0.000596698  -0.000689085  -0.000001226  -0.000000455  -0.000147131  -0.000123188
                        -0.050226926   0.005838209  -0.033641896   0.157014827  -0.000253707   0.000012344  -0.000002026  -0.000399263

   27    3.2  1.5  1.5  -0.005128596  -0.061489889  -0.004160733  -0.000859893  -0.019946915  -0.400599704  -0.000640302   0.000312068
                         0.009780183   0.068903142   0.027890187   0.005966754  -0.004656800  -0.112286679   0.000694606   0.000131441

   28    4.2  1.5  1.5   0.007507661   0.052891504   0.021882190   0.004681402   0.000884622   0.021314614  -0.209816742  -0.037012795
                         0.003936875   0.047201255   0.003264646   0.000673975  -0.003786059  -0.076040432  -0.193672716   0.091903878

   29    5.2  1.5  1.5  -0.053824781   0.006275553  -0.010944266   0.051056135  -0.074948539   0.003687654   0.005724600   0.268363671
                         0.001483121   0.001426636  -0.000212893   0.000223977   0.000530171   0.000135338  -0.098358760  -0.084050369

   30    6.2  1.5  1.5  -0.052080578   0.006088803   0.011310141  -0.052830019  -0.136479088   0.006714992   0.003777456   0.173071530
                         0.001438423   0.001329522   0.000166387  -0.000232207   0.000967690   0.000247559  -0.062302588  -0.054062391

   31    7.2  1.5  1.5   0.001961274   0.001839053   0.000043908  -0.000096428   0.001102798   0.000281923  -0.101648425  -0.087583715
                         0.071073905  -0.008300472  -0.004653742   0.021770157   0.155616159  -0.007656554  -0.006048862  -0.280045818

   32    8.2  1.5  1.5   0.003937208   0.047203663   0.003222415   0.000665621  -0.003759721  -0.075499275  -0.191417502   0.090843176
                        -0.007508062  -0.052894491  -0.021600103  -0.004621102  -0.000877948  -0.021161706   0.207379045   0.036599467

   33    9.2  1.5  1.5  -0.170536615   0.019822289  -0.114866766   0.536110926   0.000183702  -0.000008877   0.001571860   0.074887323
                         0.004684248   0.004705899  -0.002036744   0.002353182  -0.000001262  -0.000000729  -0.027710446  -0.023485762

   34    1.2  1.5  0.5  -0.134581504   0.015702285  -0.012338093   0.057510426   0.240638228  -0.011839659  -0.000011528  -0.000432766
                         0.003710283   0.003532028  -0.000276607   0.000251785  -0.001705737  -0.000435884   0.000163470   0.000137366

   35    2.2  1.5  0.5  -0.002985044  -0.035790129  -0.002401804  -0.000496508   0.023055656   0.463037662  -0.005169648   0.002457519
                         0.005692858   0.040104905   0.016101830   0.003444936   0.005383402   0.129788027   0.005599856   0.000984246

   36    3.2  1.5  0.5   0.002138222   0.001952240   0.000409986  -0.000541842  -0.001709671  -0.000437169  -0.001144639  -0.000975276
                         0.077361058  -0.009051229  -0.026400385   0.123291369  -0.241074531   0.011861408  -0.000073558  -0.003107362

   37    4.2  1.5  0.5  -0.021991690   0.002556114  -0.014945038   0.069750891  -0.136465759   0.006714599   0.003064111   0.146223686
                         0.000604022   0.000607290  -0.000264892   0.000306134   0.000967566   0.000247242  -0.054140825  -0.045862776

   38    5.2  1.5  0.5  -0.005521518  -0.038951858  -0.052524320  -0.011262387  -0.001553152  -0.037443282   0.134951442   0.023541260
                        -0.002917303  -0.034763209  -0.007836370  -0.001561630   0.006651418   0.133580403   0.124489238  -0.058669612

   39    6.2  1.5  0.5   0.005759901   0.040487132  -0.050535993  -0.010857950   0.000832367   0.020075591  -0.203047963  -0.036318258
                         0.002980839   0.036127525  -0.007540740  -0.001453167  -0.003566301  -0.071625462  -0.187568925   0.089782971

   40    7.2  1.5  0.5   0.001210053   0.014951626  -0.010325986  -0.002014722   0.000009939   0.000182773  -0.107749178   0.051993540
                        -0.002393590  -0.016758233   0.069205332   0.014857991   0.000002159   0.000051214   0.116546796   0.021105232

   41    8.2  1.5  0.5  -0.000609482  -0.000612511   0.000265925  -0.000307287   0.000958855   0.000245463   0.057845120   0.049048222
                        -0.022192937   0.002579310  -0.015003366   0.070024237   0.135175840  -0.006650548   0.003291996   0.156400693

   42    9.2  1.5  0.5   0.057640295   0.406085368   0.166229683   0.035563502  -0.000004651  -0.000104138  -0.104901280  -0.018507814
                         0.030226487   0.362395926   0.024798701   0.005121937   0.000018542   0.000372023  -0.096829922   0.045953056

   43    1.2  1.5 -0.5   0.014277599   0.100452044  -0.056881186  -0.012236913   0.002694041   0.064948585   0.000332327   0.000059549
                         0.007428806   0.089640026  -0.008487827  -0.001600943  -0.011537317  -0.231713934   0.000309377  -0.000152673

   44    2.2  1.5 -0.5  -0.001482732  -0.001390751  -0.000032591   0.000072180   0.003408823   0.000871290  -0.002642308  -0.002275362
                        -0.053732097   0.006275741   0.003480380  -0.016279815   0.480871281  -0.023659779  -0.000162320  -0.007273676

   45    3.2  1.5 -0.5  -0.004346144  -0.051531657  -0.018194240  -0.003605383   0.011558637   0.232133836   0.002211423  -0.001065976
                         0.008176003   0.057739013   0.121942712   0.026156254   0.002698521   0.065067156  -0.002390914  -0.000423443

   46    4.2  1.5 -0.5   0.002345044   0.016416127  -0.068987840  -0.014811821  -0.001527826  -0.036832530  -0.112522904  -0.020403809
                         0.001184604   0.014646161  -0.010293617  -0.002008556   0.006543143   0.131404735  -0.104035362   0.050242435

   47    5.2  1.5 -0.5  -0.052188596   0.006101113   0.011368906  -0.053105162   0.138725463  -0.006825723   0.003835526   0.175248524
                         0.001441686   0.001332004   0.000167419  -0.000233807  -0.000984470  -0.000251291  -0.063099945  -0.054748670

   48    6.2  1.5 -0.5   0.054241809  -0.006324263   0.010952686  -0.051095001  -0.074383862   0.003659656  -0.005605009  -0.263791270
                        -0.001494029  -0.001437207   0.000213183  -0.000223950   0.000526521   0.000135110   0.096688063   0.082612004

   49    7.2  1.5 -0.5   0.000616796   0.000619154  -0.000265812   0.000307181   0.000001330   0.000000532  -0.056023643  -0.047496933
                         0.022450146  -0.002609626   0.014991609  -0.069970777   0.000189808  -0.000010157  -0.003179683  -0.151449934

   50    8.2  1.5 -0.5   0.001195576   0.014780138  -0.010334003  -0.002016396  -0.006480880  -0.130162540  -0.111270187   0.053687811
                        -0.002366137  -0.016566395   0.069258187   0.014869629  -0.001512693  -0.036484796   0.120357178   0.021783345

   51    9.2  1.5 -0.5   0.544068676  -0.063543846  -0.035928835   0.168067644   0.000386315  -0.000019113  -0.002941740  -0.136251444
                        -0.015013636  -0.014079196  -0.000340135   0.000741885  -0.000002605  -0.000000390   0.049452692   0.042612869

   52    1.2  1.5 -1.5   0.092049167  -0.010750879  -0.006093548   0.028503707   0.416554686  -0.020494812   0.000094305   0.004044955
                        -0.002540208  -0.002382074  -0.000057940   0.000125867  -0.002953802  -0.000754939  -0.001465476  -0.001268156

   53    2.2  1.5 -1.5  -0.002706879  -0.033450409   0.023171801   0.004520932  -0.000012029  -0.000244448  -0.000282224   0.000133840
                         0.005355090   0.037492896  -0.155297129  -0.033342082  -0.000002809  -0.000067924   0.000308116   0.000061143

   54    3.2  1.5 -1.5   0.002547322   0.002388994   0.000056526  -0.000124493   0.002948989   0.000754506   0.000338297   0.000281385
                         0.092315549  -0.010781799  -0.006028132   0.028198559   0.416028515  -0.020469390   0.000014777   0.000901824

   55    4.2  1.5 -1.5  -0.070863568   0.008276516   0.004729454  -0.022124164   0.078969272  -0.003885420   0.005885086   0.272521213
                         0.001955623   0.001833919   0.000045022  -0.000097475  -0.000560490  -0.000142506  -0.098902152  -0.085231301

   56    5.2  1.5 -1.5  -0.005715860  -0.040175481   0.050497582   0.010849584   0.000839513   0.020227658   0.206564729   0.036925257
                        -0.002957500  -0.035850208   0.007534809   0.001452175  -0.003593372  -0.072169290   0.190825935  -0.091344086

   57    6.2  1.5 -1.5  -0.005510510  -0.038871417  -0.052252127  -0.011204148   0.001527624   0.036836155   0.133277673   0.023252462
                        -0.002911260  -0.034691044  -0.007796153  -0.001553723  -0.006543605  -0.131417562   0.122937214  -0.057924128

   58    7.2  1.5 -1.5   0.003948404   0.047341241   0.003211902   0.000663574   0.007461044   0.149845059  -0.199019402   0.094455981
                        -0.007529280  -0.053048596  -0.021532133  -0.004606399   0.001742160   0.042000753   0.215610400   0.038040224

   59    8.2  1.5 -1.5  -0.001955537  -0.001833923  -0.000044119   0.000096363   0.000555326   0.000142016   0.097766608   0.084236472
                        -0.070867404   0.008277036   0.004668586  -0.021838936   0.078406951  -0.003858255   0.005804644   0.269352827

   60    9.2  1.5 -1.5  -0.018183188  -0.127300196   0.530246081   0.113842986  -0.000001632  -0.000049543   0.057628801   0.010439874
                        -0.009189142  -0.113575258   0.079117354   0.015436865   0.000008757   0.000176900   0.053278640  -0.025716699


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.2  0.5  0.5   0.031183136   0.000001161   0.000007341   0.000070760   0.000019881   0.000163801   0.000100761  -0.000240680
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000240025  -0.014919282  -0.000124574   0.000014120   0.000069349  -0.000002449   0.000426415   0.000172996
                         0.000108031  -0.001811695   0.000125253  -0.000014802   0.000324097  -0.000037468   0.000236671   0.000099470

    3    3.2  0.5  0.5  -0.000174274  -0.000177988  -0.000001240   0.000001471  -0.000006409   0.000007074   0.000003147   0.000003298
                        -0.016286399  -0.000134775   0.000014702   0.000120735  -0.000044289  -0.000390401   0.000029683  -0.000065411

    4    4.2  0.5  0.5   0.000253528  -0.006720990   0.003563875  -0.004168475   0.204379565  -0.021789515  -0.116294954  -0.048762181
                        -0.004137719   0.148462774  -0.018936164   0.007043533  -0.036341766   0.002972241   0.184354597   0.077320818

    5    5.2  0.5  0.5  -0.001574970   0.005394612   0.013216868   0.047455211  -0.029807833  -0.044498356  -0.019538178  -0.006516304
                         0.158428268   0.019286173  -0.035182373  -0.227085317  -0.002146233  -0.105235182   0.090230005  -0.166723738

    6    6.2  0.5  0.5  -0.001425650   0.038497010   0.034512251   0.087210616   0.199959468  -0.112611180   0.062396128   0.029709770
                         0.002644112  -0.113457189  -0.027838623  -0.001667736  -0.028559877  -0.004349943  -0.165872629  -0.069876491

    7    7.2  0.5  0.5   0.003423415  -0.061209452  -0.092464753  -0.176117910   0.106660320   0.165495504   0.098706876   0.033511647
                         0.040601323  -0.055627125   0.063450725  -0.063392850  -0.066411057  -0.017125126  -0.010979752  -0.055618843

    8    8.2  0.5  0.5  -0.000912217  -0.150401025  -0.142767813   0.119346380  -0.024793025  -0.096518800   0.124308761   0.052760107
                        -0.009655822  -0.003750868   0.155735896  -0.005122667  -0.087173115   0.015292454   0.089774340   0.049874773

    9    9.2  0.5  0.5   0.023604080  -0.001669322  -0.000009042   0.000057683  -0.000114478   0.000188706   0.000170375  -0.000322790
                        -0.216096294  -0.001711168   0.000169685   0.001425824  -0.000813400  -0.006896290   0.001096975  -0.002658234

   10   10.2  0.5  0.5   0.419350286   0.006668264   0.000120791   0.000604618   0.000071688   0.000734426   0.002358399  -0.006135891
                         0.013365087   0.000902546  -0.000071808  -0.000078619  -0.000045107   0.000396009  -0.000164414   0.000114490

   11   11.2  0.5  0.5  -0.010566650   0.198114097   0.001952455  -0.000247297  -0.000764475  -0.000004783  -0.003954537  -0.001409221
                        -0.001111294   0.024059831  -0.001967042   0.000228238  -0.003554857   0.000398282  -0.002150372  -0.000919642

   12   12.2  0.5  0.5   0.000000657   0.000039384   0.000107054  -0.000012957  -0.001218992   0.000151892  -0.001181357  -0.000495545
                         0.000000540  -0.000331115   0.000106998  -0.000013401   0.000261412  -0.000003764   0.002132329   0.000852870

   13    1.2  0.5 -0.5   0.000000145  -0.003899790   0.000050886  -0.000005279  -0.000160897   0.000019528   0.000116937   0.000048956
                        -0.000001152   0.030938319   0.000049169  -0.000005101   0.000030707  -0.000003727  -0.000210363  -0.000088069

   14    2.2  0.5 -0.5  -0.000068346   0.000137201  -0.000000131   0.000002551  -0.000004619   0.000007362   0.000002888   0.000000320
                         0.015028724  -0.000224630   0.000020456   0.000176636  -0.000037263  -0.000331352   0.000199533  -0.000487691

   15    3.2  0.5 -0.5   0.000111458  -0.016136740   0.000084953  -0.000009325  -0.000080136   0.000002007  -0.000058774  -0.000024415
                         0.000193446  -0.002209697  -0.000085803   0.000011435  -0.000382153   0.000044705  -0.000028899  -0.000017172

   16    4.2  0.5 -0.5  -0.148137736  -0.004136941   0.001896657   0.010595293   0.021960402   0.207568979   0.091272831  -0.217635764
                        -0.011898659  -0.000265930  -0.007961798  -0.016094076  -0.001165290  -0.002617163  -0.005052662   0.012075101

   17    5.2  0.5 -0.5  -0.018460104   0.157381426  -0.123668414   0.014942522   0.023981210  -0.028877012  -0.142556475  -0.088357098
                        -0.007764205   0.018250571   0.196280059  -0.034484867  -0.111711453   0.007696194  -0.086700163  -0.026762239

   18    6.2  0.5 -0.5   0.117380914   0.002801646   0.061557265  -0.005474676   0.109799191   0.201768393  -0.075509387   0.175294488
                        -0.024005719  -0.001083783   0.061799482  -0.044001276  -0.025383807  -0.009432458  -0.007982912   0.026054716

   19    7.2  0.5 -0.5   0.047535494   0.039854430  -0.170702267   0.022404467  -0.165771800   0.117219253  -0.064894880   0.057554587
                         0.067685677   0.008474174  -0.076791324   0.109880684   0.014203591   0.045238247   0.002267310  -0.080938692

   20    8.2  0.5 -0.5  -0.015087861  -0.009465932   0.082266457  -0.005547206   0.097674436  -0.008011299   0.017958216  -0.018069110
                         0.149689324  -0.002112621   0.086614261   0.211200251  -0.003072851   0.090275496   0.070346460  -0.152268209

   21    9.2  0.5 -0.5   0.001488967  -0.217351684   0.001032245  -0.000111407  -0.001478194   0.000040038  -0.002166560  -0.000876016
                         0.001870217  -0.003606423  -0.000985276   0.000128309  -0.006738647   0.000820440  -0.001573664  -0.000681892

   22   10.2  0.5 -0.5  -0.000061521  -0.039184148   0.000380172  -0.000036967  -0.000647166   0.000078873   0.003081263   0.001289559
                        -0.006728785   0.417729446   0.000476669  -0.000135574   0.000526669   0.000030868  -0.005307361  -0.001981443

   23   11.2  0.5 -0.5   0.000905380   0.000218906  -0.000019244  -0.000037236   0.000079363  -0.000084500  -0.000119114  -0.000041856
                        -0.199567661  -0.010622672  -0.000335974  -0.002771272   0.000390324   0.003635147  -0.001678528   0.004501190

   24   12.2  0.5 -0.5   0.000333441   0.000000454  -0.000018630  -0.000151336  -0.000149905  -0.001246386   0.000986206  -0.002437708
                         0.000002335   0.000000719   0.000000633   0.000002557   0.000024778  -0.000028256  -0.000018747  -0.000003468

   25    1.2  1.5  1.5  -0.000011881  -0.000452779  -0.105365887   0.012061968   0.051218640  -0.006272660  -0.146437159  -0.061426425
                        -0.000001236   0.003735728  -0.104771401   0.012626722  -0.010897108   0.000787779   0.264521672   0.105452021

   26    2.2  1.5  1.5   0.000003302   0.000005199   0.001338599   0.003975837  -0.000948715   0.001452500  -0.000930247  -0.000202721
                        -0.001864287  -0.000003255   0.032482070   0.276190705  -0.008114509  -0.066582178  -0.042513900   0.105528482

   27    3.2  1.5  1.5   0.000014312  -0.004183638   0.106370433  -0.012804936   0.051227230  -0.001748971  -0.177783584  -0.070531738
                         0.000003153  -0.000507868  -0.106967180   0.012273894   0.239650676  -0.029899967  -0.098317214  -0.041329618

   28    4.2  1.5  1.5  -0.000529947  -0.020654821  -0.110062916   0.012666807   0.438510667  -0.054841315  -0.049674736  -0.021025013
                        -0.000152381   0.170010546  -0.109464295   0.013168463  -0.093788409   0.002770213   0.090115338   0.035219220

   29    5.2  1.5  1.5   0.190691986   0.001353733   0.050560623   0.429870430  -0.023620072  -0.194163488  -0.048805919   0.121515171
                         0.000588179  -0.000382871  -0.002106250  -0.006183768   0.003106291  -0.004279490   0.001192811   0.000281804

   30    6.2  1.5  1.5  -0.295713608  -0.000806499  -0.028074746  -0.238659234  -0.013721758  -0.113284069   0.071595376  -0.176996399
                        -0.001177220  -0.000433553   0.001138203   0.003440116   0.002264338  -0.002544621  -0.001316616  -0.000248755

   31    7.2  1.5  1.5  -0.000752171  -0.000563311  -0.000007362   0.000065002   0.003477477  -0.004285398  -0.000586737  -0.000083822
                         0.168453628   0.000061301   0.000484906   0.004092049   0.023368780   0.192526877  -0.039590576   0.097464105

   32    8.2  1.5  1.5  -0.000135766   0.161736440   0.107491562  -0.012963402  -0.029935908   0.000162748  -0.364521496  -0.145671042
                         0.000521163   0.019650946  -0.108117049   0.012339167  -0.139550843   0.017662515  -0.201903419  -0.084595905

   33    9.2  1.5  1.5   0.152029613   0.000769953   0.000021202   0.000143733   0.000066865   0.000553067  -0.001354740   0.003351283
                         0.000528294  -0.000058278  -0.000006945  -0.000001595  -0.000015343   0.000010876   0.000023390   0.000005627

   34    1.2  1.5  0.5  -0.000993045  -0.000009470  -0.028421615  -0.241556858  -0.012555688  -0.103610309   0.072627382  -0.179589065
                        -0.000003115   0.000002314   0.001148210   0.003484207   0.002104853  -0.002333869  -0.001344414  -0.000254371

   35    2.2  1.5  0.5   0.000003603   0.002647015   0.002507610  -0.000279095   0.068827306  -0.001639300   0.149154051   0.060047942
                         0.000019251   0.000323894  -0.002501978   0.000335927   0.321580203  -0.040325508   0.082744441   0.034555999

   36    3.2  1.5  0.5   0.000018635  -0.000009628  -0.001176477  -0.003410319   0.003771663  -0.004893135   0.000321916   0.000109175
                        -0.004085636  -0.000028288  -0.027900802  -0.237316194   0.026860035   0.221006391   0.003822675  -0.010167817

   37    4.2  1.5  0.5   0.307554886   0.001545630   0.010031089   0.085103744   0.032077247   0.264289221  -0.071524021   0.176343263
                         0.001070269  -0.000106426  -0.000379065  -0.001233888  -0.004855144   0.005887714   0.001142560   0.000183150

   38    5.2  1.5  0.5   0.000342190   0.035850218   0.168789048  -0.019317287   0.120839555  -0.015219629   0.080211822   0.033576166
                         0.000841453  -0.293827881   0.167847582  -0.020269242  -0.025877110   0.000473665  -0.144767648  -0.057975613

   39    6.2  1.5  0.5  -0.000524473   0.023487791   0.316400419  -0.036256200  -0.169372283   0.021102855   0.050585469   0.021266511
                         0.001275784  -0.191073788   0.314652810  -0.037960343   0.036220377  -0.001139679  -0.091518403  -0.036258307

   40    7.2  1.5  0.5   0.001502680  -0.298548285   0.106277606  -0.012879692  -0.054324125   0.002237401   0.375427417   0.149330738
                         0.000307062  -0.036586070  -0.106850269   0.012226815  -0.254382378   0.031692187   0.207747625   0.087241479

   41    8.2  1.5  0.5  -0.001069236   0.000133075   0.000433180   0.001119447  -0.005308660   0.006619464   0.000604553   0.000064532
                         0.306826443   0.001566861   0.009240149   0.078662519  -0.036125072  -0.297436761   0.046346458  -0.113877945

   42    9.2  1.5  0.5  -0.000268419  -0.010032590   0.000446548  -0.000046517  -0.002652729   0.000325762   0.000558354   0.000231483
                        -0.000068082   0.082574523   0.000441227  -0.000048914   0.000568009  -0.000017899  -0.001007477  -0.000399101

   43    1.2  1.5 -0.5   0.000003480  -0.000121100   0.171290697  -0.019641095  -0.101335848   0.012727677  -0.087033121  -0.036461930
                        -0.000009106   0.000985639   0.170356545  -0.020575082   0.021716102  -0.000286253   0.157090842   0.062825725

   44    2.2  1.5 -0.5  -0.000009687  -0.000018650  -0.000032719   0.000064755   0.005949503  -0.007321070  -0.001028180  -0.000146648
                         0.002666740  -0.000005982   0.000435512   0.003541724   0.039917882   0.328781731  -0.069273481   0.170568320

   45    3.2  1.5 -0.5  -0.000026862   0.004055890   0.167356693  -0.020233512  -0.046237996   0.001330601   0.008940079   0.003184748
                        -0.000013091   0.000492465  -0.168292434   0.019246918  -0.216170802   0.027090892   0.004844731   0.002138658

   46    4.2  1.5 -0.5  -0.000298888   0.037401212  -0.060343610   0.006950297   0.258499807  -0.032418725   0.085518360   0.035749422
                         0.001520186  -0.305274143  -0.060023482   0.007242915  -0.055329084   0.001244389  -0.154219292  -0.061959421

   47    5.2  1.5 -0.5  -0.296004518  -0.000792053   0.027976235   0.238014431  -0.015038593  -0.123548286   0.066986129  -0.165503945
                        -0.001177607  -0.000444736  -0.001153275  -0.003418250   0.002387925  -0.002764785  -0.001178637  -0.000229061

   48    6.2  1.5 -0.5  -0.192511085  -0.001331359   0.052450623   0.446177543   0.020942370   0.173159595   0.042023638  -0.104567894
                        -0.000592462   0.000360805  -0.002105184  -0.006419987  -0.002836636   0.003826343  -0.000971167  -0.000251783

   49    7.2  1.5 -0.5   0.001037870  -0.000116725   0.000766162   0.002180662  -0.003743536   0.005672458  -0.003698079  -0.000826968
                        -0.300779889  -0.001529284   0.017742448   0.150688932  -0.031549748  -0.260056394  -0.172907690   0.429073580

   50    8.2  1.5 -0.5   0.001537917  -0.304551290  -0.055465361   0.006732229   0.062261961  -0.001557752   0.099564742   0.040214729
                         0.000327983  -0.037311138   0.055791027  -0.006343902   0.290922485  -0.036479804   0.055272530   0.023046371

   51    9.2  1.5 -0.5   0.083180921   0.000033978   0.000067440   0.000627724   0.000323342   0.002712181   0.000461297  -0.001151854
                         0.000373016   0.000274826  -0.000002852  -0.000007008  -0.000043488   0.000060637  -0.000008417  -0.000001473

   52    1.2  1.5 -1.5  -0.003763024   0.000000260   0.017448119   0.148574844   0.006309134   0.052353429   0.122013579  -0.302349592
                        -0.000017970  -0.000011942  -0.000698790  -0.002128954  -0.000402111   0.001102057  -0.002453789  -0.000529648

   53    2.2  1.5 -1.5   0.000003880  -0.001850064   0.194776160  -0.023533491  -0.013908772   0.000589316   0.092334154   0.036706695
                        -0.000004752  -0.000229873  -0.195855458   0.022428810  -0.065129427   0.008148498   0.051095064   0.021468946

   54    3.2  1.5 -1.5  -0.000019329   0.000001339  -0.000679689  -0.002166180  -0.003887322   0.005392191  -0.001854890  -0.000445482
                         0.004214307   0.000014594  -0.017724358  -0.150837510  -0.029697738  -0.245005306  -0.081727735   0.203157768

   55    4.2  1.5 -1.5  -0.171258916  -0.000084909   0.018259520   0.155213594   0.054388344   0.448318509   0.040998104  -0.102899074
                        -0.000769003  -0.000544843  -0.000668090  -0.002239943  -0.007559889   0.009918918  -0.001264942  -0.000366099

   56    5.2  1.5 -1.5   0.000549164  -0.023264542   0.304837560  -0.034896295   0.189918842  -0.023783635  -0.058793262  -0.024755487
                        -0.001295223   0.189268435   0.303151592  -0.036647804  -0.040603047   0.001376787   0.106345515   0.042078574

   57    6.2  1.5 -1.5   0.000329288   0.035814220  -0.169237555   0.019398603   0.110798589  -0.013902972   0.085778353   0.035936222
                         0.000854388  -0.293539206  -0.168311362   0.020326857  -0.023736638   0.000348197  -0.154822031  -0.061937221

   58    7.2  1.5 -1.5  -0.000131268   0.167225178   0.002890193  -0.000331653   0.040302038  -0.000965074   0.085227833   0.034318504
                         0.000551222   0.020320690  -0.002897564   0.000353828   0.188310140  -0.023606384   0.047280814   0.019748374

   59    8.2  1.5 -1.5   0.000730230   0.000534051  -0.000748291  -0.002173411   0.003151292  -0.003243857  -0.003163859  -0.000636243
                        -0.162924223  -0.000069523  -0.017881412  -0.152443460   0.017379881   0.142688730  -0.168423602   0.416701940

   60    9.2  1.5 -1.5   0.000154112  -0.018488808   0.000102255  -0.000010421  -0.000541223   0.000068556  -0.001623342  -0.000678660
                        -0.000756620   0.150902108   0.000101023  -0.000019727   0.000114365   0.000002536   0.002931875   0.001172727


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.2  0.5  0.5   0.001270022  -0.000174854   0.000349198   0.000091831  -0.000000000  -0.017002838   0.000013791   0.029847215
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000035196  -0.000204895   0.000039764   0.000004967   0.016744559   0.000001641  -0.022049941   0.000011507
                         0.000057927   0.000328671  -0.000397396   0.001456498  -0.002289497   0.000162770  -0.020234161  -0.000277617

    3    3.2  0.5  0.5  -0.000001357  -0.000001453   0.000004586   0.000025392   0.000142270   0.000000874  -0.000376725   0.000000714
                        -0.001121117   0.000156160   0.000878637   0.000250735  -0.000157917  -0.016947436  -0.000000704   0.029880956

    4    4.2  0.5  0.5  -0.048754103  -0.341103194  -0.039739121   0.171842393  -0.000244667  -0.000006269   0.000026573   0.000000863
                        -0.018474418  -0.178727317   0.003528521  -0.005081380  -0.001390123  -0.000011395  -0.000034047   0.000005659

    5    5.2  0.5  0.5   0.025576275  -0.039353943  -0.077299023  -0.073228766  -0.000088909   0.000102128  -0.000005288  -0.000013267
                        -0.268959234   0.038664759  -0.291087102  -0.079183251  -0.000406802   0.001036591   0.000001973  -0.000257269

    6    6.2  0.5  0.5   0.065355521   0.097963608  -0.240129979   0.300781823   0.000309415   0.000170328   0.000036556  -0.000019812
                         0.014191373   0.137322893  -0.010062618  -0.010201066   0.003062834  -0.000010641  -0.000051275  -0.000003297

    7    7.2  0.5  0.5  -0.083380165   0.153367263   0.263725722   0.230235821   0.000479255  -0.000343590   0.000034936   0.000040022
                        -0.085268045  -0.100308137  -0.091225899   0.003737354   0.001251864   0.000256522  -0.000006546  -0.000065979

    8    8.2  0.5  0.5   0.078482373   0.158759651  -0.164274676  -0.044954765   0.000645033   0.000182773   0.000034383  -0.000022460
                        -0.027974546  -0.332006738  -0.000821289   0.084714253  -0.000305927  -0.000063318   0.000031228   0.000016092

    9    9.2  0.5  0.5  -0.000254164   0.000048020  -0.000042337  -0.000050698  -0.001726451   0.021499093  -0.002438540   0.015109660
                         0.005982162  -0.000829646  -0.001723613  -0.000511624   0.003081781   0.348272414   0.000575263   0.244189208

   10   10.2  0.5  0.5  -0.003978802   0.000510831  -0.000548907  -0.000140334   0.011488704   0.347281610   0.006210376   0.243978504
                        -0.000345545   0.000105273   0.000058726   0.000209333  -0.001746470  -0.021454013   0.005420777  -0.015057296

   11   11.2  0.5  0.5  -0.000055003  -0.001234369   0.000198360   0.000028302   0.346328493  -0.011439262   0.180407363  -0.008131420
                         0.000325250   0.001952142  -0.001677444   0.006246204  -0.047357963   0.002834394   0.165550523   0.001910738

   12   12.2  0.5  0.5  -0.000341046  -0.002456664   0.000701835  -0.002653386   0.074431453  -0.000000423  -0.264491944   0.000122300
                        -0.000200758  -0.001525882   0.000082500   0.000009722   0.544050902  -0.004445032   0.288272606  -0.003327794

   13    1.2  0.5 -0.5   0.000148137   0.001075971  -0.000091824   0.000349173   0.002423710  -0.000000000   0.020021753  -0.000009251
                         0.000092893   0.000674715   0.000001113  -0.000004230   0.016829205  -0.000000000  -0.022135620   0.000010228

   14    2.2  0.5 -0.5  -0.000001022   0.000000956   0.000012678   0.000044576  -0.000161342   0.000120777   0.000213608  -0.000215002
                         0.000387306  -0.000067775   0.001456451   0.000396885   0.000021579   0.016899925   0.000177694  -0.029926158

   15    3.2  0.5 -0.5  -0.000081731  -0.000596758  -0.000022353  -0.000006059   0.016774244  -0.000136025  -0.022160164   0.000252188
                         0.000133072   0.000949098   0.000251024  -0.000878628  -0.002416677   0.000163328  -0.020044916  -0.000279863

   16    4.2  0.5 -0.5   0.383936215  -0.051119592  -0.171891342  -0.039778952   0.000012173  -0.001410804  -0.000003618  -0.000043076
                         0.029796403  -0.010249585  -0.002999168  -0.003046830   0.000004581  -0.000044010  -0.000004436  -0.000003132

   17    5.2  0.5 -0.5   0.012799789  -0.121219643   0.072264102  -0.073766884  -0.001040564  -0.000415321   0.000181899   0.000005011
                         0.053664344   0.241451886  -0.080064592   0.292002203   0.000046679  -0.000030012   0.000182417  -0.000002598

   18    6.2  0.5 -0.5  -0.155950009   0.062909008  -0.300883334  -0.239990449  -0.000013747   0.003075662  -0.000010845  -0.000062550
                         0.064296502   0.022697928  -0.006556402   0.012971010  -0.000170106  -0.000130344   0.000016905  -0.000007285

   19    7.2  0.5 -0.5  -0.076643844  -0.115940007  -0.230173647   0.264811553  -0.000204925   0.001307396   0.000075779  -0.000028290
                        -0.166460089   0.027942907   0.006526344   0.088024216   0.000376648   0.000295911   0.000014577   0.000021518

   20    8.2  0.5 -0.5   0.041880542   0.051628984   0.045977763  -0.164252670   0.000036618  -0.000210855  -0.000027001   0.000000096
                        -0.365621554   0.065395001   0.084163418   0.002811386  -0.000189932   0.000682055   0.000005862   0.000046447

   21    9.2  0.5 -0.5   0.000400077   0.002962771   0.000044496  -0.000021453  -0.347780488   0.002804209  -0.170962602   0.002062425
                        -0.000728394  -0.005203158  -0.000512201   0.001723999   0.028365777  -0.002148120  -0.175009885  -0.001422605

   22   10.2  0.5 -0.5  -0.000488707  -0.003554444   0.000142860  -0.000549578  -0.028269160  -0.000090950   0.174829709  -0.000145754
                        -0.000182198  -0.001821042   0.000207618  -0.000052072  -0.346793377   0.011620336  -0.170841463   0.008242108

   23   11.2  0.5 -0.5   0.000008665   0.000126195   0.000047371   0.000218667  -0.001174813   0.002493877  -0.006871685   0.001758682
                         0.002309643  -0.000304775   0.006246089   0.001674918   0.011726479   0.349542533   0.004748775   0.244848319

   24   12.2  0.5 -0.5   0.002891947  -0.000395591   0.002653309   0.000700784   0.004399700   0.549105052   0.002550035   0.391215230
                         0.000012396  -0.000011102  -0.000022424  -0.000090997  -0.000633209  -0.003881674   0.002141609  -0.002779828

   25    1.2  1.5  1.5   0.004865609   0.033677970  -0.052382443   0.196406663   0.014152527   0.000000880   0.109428902  -0.000050531
                         0.002455436   0.021095219  -0.005719087  -0.000809392   0.103446698  -0.000845189  -0.119267940   0.001376959

   26    2.2  1.5  1.5   0.002269440  -0.000674217   0.000461307   0.001610556   0.000002024   0.000012696   0.000000804  -0.000001537
                        -0.349641389   0.047685403   0.072112931   0.019652221   0.000015475   0.002019202  -0.000001082  -0.000169817

   27    3.2  1.5  1.5   0.002761010   0.023360753  -0.005675049  -0.000801809   0.104992465  -0.000857525  -0.119229993   0.001376567
                        -0.005366492  -0.037344891   0.051918614  -0.194691347  -0.014364991  -0.000001108  -0.109394256   0.000050507

   28    4.2  1.5  1.5   0.001524986   0.010534940  -0.017000702   0.063749640  -0.016082732  -0.000000700  -0.113432340   0.000052345
                         0.000764208   0.006604177  -0.001856365  -0.000261936  -0.117553769   0.000960130   0.123631185  -0.001427320

   29    5.2  1.5  1.5   0.046179342  -0.006296884  -0.036861304  -0.009885071   0.000922034   0.115029676  -0.001042405  -0.159931144
                         0.000330720  -0.000032380   0.000278591   0.001088178  -0.000132456  -0.000812971  -0.000875393   0.001136590

   30    6.2  1.5  1.5  -0.037140656   0.005066263  -0.043933997  -0.011669199   0.001688259   0.210763624  -0.001914431  -0.293721542
                        -0.000181324   0.000181315   0.000359069   0.001474774  -0.000243984  -0.001489986  -0.001607967   0.002087079

   31    7.2  1.5  1.5  -0.000001068   0.000144761   0.000451782   0.001828393  -0.000277704  -0.001698491  -0.001830265   0.002375831
                         0.010608650  -0.001448265   0.056608678   0.015081066  -0.001924925  -0.240276902   0.002179256   0.334344290

   32    8.2  1.5  1.5   0.001100000   0.009093679  -0.001809914  -0.000253596  -0.115998209   0.000947689   0.123670190  -0.001427746
                        -0.002075506  -0.014564252   0.016505185  -0.061917876   0.015868991   0.000000437   0.113468014  -0.000052376

   33    9.2  1.5  1.5   0.544160035  -0.074214182  -0.111528021  -0.030398386  -0.000018319  -0.002465947   0.000001310   0.000204867
                         0.003530638  -0.001051942   0.000713216   0.002486376   0.000002784   0.000015252   0.000001036  -0.000001717

   34    1.2  1.5  0.5  -0.150714616   0.020547245   0.268457487   0.071749594   0.000466622   0.058351602  -0.000608208  -0.093324286
                        -0.001255228  -0.000204518  -0.002081948  -0.008277482  -0.000066617  -0.000412125  -0.000510732   0.000663369

   35    2.2  1.5  0.5   0.001429827   0.012228707  -0.003224230  -0.000456411  -0.120056296   0.000981035   0.137333773  -0.001585274
                        -0.002818158  -0.019529675   0.029528788  -0.110714214   0.016424758  -0.000001895   0.126004659  -0.000058383

   36    3.2  1.5  0.5   0.001340764  -0.000982107  -0.001564352  -0.006476592  -0.000065383  -0.000407508  -0.000508368   0.000659935
                        -0.249660450   0.034056971  -0.187343088  -0.049633686  -0.000460790  -0.057423749   0.000605352   0.092882894

   37    4.2  1.5  0.5   0.060329338  -0.008228223  -0.013652338  -0.003711651   0.001675515   0.209051286  -0.001889555  -0.289890890
                         0.000392411  -0.000113471   0.000090295   0.000317666  -0.000239950  -0.001477317  -0.001586878   0.002060035

   38    5.2  1.5  0.5  -0.004733683  -0.034057150   0.012228150  -0.045981963   0.028611665  -0.000000742   0.198967180  -0.000091933
                        -0.002743878  -0.021125286   0.001400945   0.000179858   0.209130317  -0.001708643  -0.216856319   0.002503454

   39    6.2  1.5  0.5  -0.005247703  -0.038565296  -0.010480542   0.039063213  -0.015587687   0.000000551  -0.108125705   0.000049948
                        -0.003262753  -0.023794112  -0.001029022  -0.000177870  -0.113944593   0.000931379   0.117847774  -0.001360501

   40    7.2  1.5  0.5  -0.004581065  -0.033988727  -0.000291467  -0.000080547  -0.002093226   0.000017227  -0.000272018   0.000003117
                         0.007533493   0.054994923   0.003971148  -0.014589911   0.000286308   0.000000321  -0.000249791   0.000000219

   41    8.2  1.5  0.5  -0.000388827   0.000118464  -0.000071505  -0.000244414  -0.000241646  -0.001483901  -0.001585134   0.002057168
                         0.060060179  -0.008189997  -0.011327693  -0.003093731  -0.001681764  -0.209872703   0.001887240   0.289537049

   42    9.2  1.5  0.5   0.013968471   0.096981966  -0.141585731   0.530915153   0.000505946   0.000002517   0.000189681  -0.000000005
                         0.007129067   0.060702556  -0.015468969  -0.002186075   0.003688783  -0.000030248  -0.000206911   0.000002596

   43    1.2  1.5 -0.5   0.017299118   0.128353343   0.071844609  -0.268463008   0.007909951  -0.000000579   0.063094660  -0.000029216
                         0.011089257   0.079005635   0.007407641   0.001170517   0.057814462  -0.000471353  -0.068767189   0.000793669

   44    2.2  1.5 -0.5  -0.000015143   0.000285823   0.000884905   0.003581729   0.000137968   0.000856682   0.001020116  -0.001324355
                         0.023042336  -0.003147177   0.110711618   0.029487560   0.000971287   0.121171585  -0.001214852  -0.186375925

   45    3.2  1.5 -0.5   0.017261155   0.131499412  -0.005874813  -0.000705390  -0.056895426   0.000465404   0.068442143  -0.000789965
                        -0.029375063  -0.212226394   0.049708506  -0.187348291   0.007782258  -0.000000969   0.062796024  -0.000029053

   46    4.2  1.5 -0.5  -0.007031292  -0.051319914  -0.003715227   0.013652430   0.028337483  -0.000001341   0.195988937  -0.000090651
                        -0.004275216  -0.031718281  -0.000272677  -0.000075107   0.207127038  -0.001692609  -0.213610179   0.002465843

   47    5.2  1.5 -0.5  -0.040076537   0.005468131  -0.045980768  -0.012210281  -0.001691300  -0.211073192   0.001918308   0.294296158
                        -0.000195806   0.000190197   0.000377219   0.001548984   0.000242828   0.001491497   0.001611157  -0.002091256

   48    6.2  1.5 -0.5  -0.045313718   0.006179271   0.039062501   0.010467306   0.000921946   0.115002972  -0.001042495  -0.159931157
                        -0.000329768   0.000023682  -0.000295386  -0.001155917  -0.000132220  -0.000813998  -0.000875592   0.001136134

   49    7.2  1.5 -0.5   0.000421269  -0.000121154   0.000096213   0.000339556   0.000002773   0.000015000  -0.000001929   0.000002781
                        -0.064649034   0.008816178   0.014589816   0.003967326   0.000017005   0.002112662   0.000002459   0.000369299

   50    8.2  1.5 -0.5  -0.004250678  -0.031578324  -0.000206916  -0.000065733  -0.207941005   0.001699036   0.213349682  -0.002462956
                         0.007001558   0.051089978   0.003096465  -0.011327728   0.028448057  -0.000000553   0.195749451  -0.000090392

   51    9.2  1.5 -0.5   0.114412818  -0.015621596   0.530902674   0.141387937  -0.000029581  -0.003723234   0.000001928   0.000280691
                         0.000095280  -0.001381133  -0.004246024  -0.017183118   0.000006804   0.000025047   0.000001738  -0.000001876

   52    1.2  1.5 -1.5  -0.039739320   0.005426660  -0.196402054  -0.052309313   0.000836433   0.104407703  -0.001055092  -0.161858592
                        -0.000019835   0.000504654   0.001570098   0.006353271  -0.000121351  -0.000738054  -0.000886200   0.001149967

   53    2.2  1.5 -1.5  -0.024762281  -0.183828788  -0.001372355  -0.000412362  -0.002000391   0.000015606   0.000124910  -0.000001341
                         0.040757597   0.297424323   0.019670291  -0.072113228   0.000275265  -0.000000203   0.000115054  -0.000000130

   54    3.2  1.5 -1.5   0.000048558  -0.000511870  -0.001556899  -0.006303617   0.000123334   0.000748106   0.000885954  -0.001149728
                        -0.044049555   0.006013352  -0.194686773  -0.051846051   0.000848610   0.105967971  -0.001054785  -0.161807208

   55    4.2  1.5 -1.5  -0.012433829   0.001697974  -0.063748135  -0.016976965  -0.000950225  -0.118645859   0.001093659   0.167780048
                        -0.000001717   0.000162725   0.000510398   0.002062189   0.000137557   0.000838487   0.000918637  -0.001192141

   56    5.2  1.5 -1.5   0.005351967   0.039299164   0.009897528  -0.036861974  -0.015592511   0.000000331  -0.108126033   0.000050035
                         0.003317868   0.024253180   0.000968342   0.000167997  -0.113970878   0.000931499   0.117847458  -0.001360300

   57    6.2  1.5 -1.5  -0.004388500  -0.031562157   0.011686209  -0.043935123  -0.028569032  -0.000000836  -0.198578626   0.000091698
                        -0.002537906  -0.019577831   0.001333296   0.000173209  -0.208823696   0.001705798   0.216432968  -0.002498439

   58    7.2  1.5 -1.5   0.000646767   0.005635077  -0.001645555  -0.000234055   0.238065305  -0.001944853  -0.246366360   0.002843960
                        -0.001303886  -0.008988291   0.015102110  -0.056609997  -0.032569697  -0.000000475  -0.226042840   0.000104481

   59    8.2  1.5 -1.5   0.000033216  -0.000170712  -0.000496546  -0.002009738  -0.000135523  -0.000828304  -0.000918899   0.001192433
                        -0.017170071   0.002342772  -0.061916404  -0.016482047  -0.000937948  -0.117075716   0.001093995   0.167832906

   60    9.2  1.5 -1.5   0.063433637   0.462891921   0.030426277  -0.111528476   0.000336418   0.000000144   0.000138700  -0.000000111
                         0.038536024   0.286100819   0.002117923   0.000637978   0.002442939  -0.000018529  -0.000150784   0.000001666


   Nr   State  S   Sz       57            58            59            60

    1    1.2  0.5  0.5  -0.000767813   0.000199640   0.003596989   0.000211246
                        -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000246580   0.001560840   0.000030876  -0.001102891
                         0.000786840   0.003050448   0.000007345   0.000154349

    3    3.2  0.5  0.5  -0.000032225   0.000130439  -0.000012982  -0.000020327
                        -0.002677351   0.000633181  -0.002446405  -0.000154818

    4    4.2  0.5  0.5   0.030733412   0.147467246   0.002063315  -0.062567698
                        -0.016845223  -0.081838313   0.023300047  -0.287577376

    5    5.2  0.5  0.5   0.068223295  -0.054430708   0.018399183  -0.017341924
                         0.216425306  -0.037442566  -0.242111603  -0.038367787

    6    6.2  0.5  0.5   0.182449523   0.197099878   0.029097213  -0.023812757
                        -0.020232842  -0.127675754  -0.012946192   0.162408684

    7    7.2  0.5  0.5  -0.226109882   0.178530834  -0.065497272   0.135239040
                         0.059771155  -0.040222232  -0.065171827   0.040126004

    8    8.2  0.5  0.5   0.145316756   0.011583930   0.013176336   0.287248681
                         0.003989699   0.089551419   0.018807461  -0.065186723

    9    9.2  0.5  0.5   0.005235487  -0.008927098  -0.013761314   0.000222537
                         0.174142126  -0.040441528   0.162364962   0.010304023

   10   10.2  0.5  0.5   0.050250408  -0.009109989  -0.235977905  -0.016328744
                        -0.009097666   0.009063219  -0.010030528  -0.000300755

   11   11.2  0.5  0.5   0.014464847   0.102429083   0.009837694  -0.072530957
                         0.051152304   0.199387913   0.000258404   0.010200705

   12   12.2  0.5  0.5   0.000024365   0.000097857  -0.000000529   0.000003840
                        -0.000007957  -0.000050216  -0.000001523   0.000029357

   13    1.2  0.5 -0.5   0.000176319   0.000678120  -0.000028094   0.000478363
                        -0.000093636  -0.000360125  -0.000209369   0.003565038

   14    2.2  0.5 -0.5  -0.000052231   0.000151273  -0.000006305   0.000011386
                        -0.003426182   0.000810577   0.001113621   0.000029625

   15    3.2  0.5 -0.5  -0.000181777  -0.001227288   0.000156146  -0.002426401
                        -0.000620395  -0.002379709  -0.000000443   0.000312480

   16    4.2  0.5 -0.5   0.168625063  -0.035044116   0.293343810   0.023367482
                         0.003112259  -0.000462650   0.023767061  -0.001053682

   17    5.2  0.5 -0.5  -0.030510783   0.041255463   0.040333281  -0.237514117
                         0.058598122   0.223141924   0.012085356   0.050434137

   18    6.2  0.5 -0.5   0.233958788  -0.170626259  -0.157799217  -0.008961562
                         0.020316141   0.067704327   0.045199945   0.030560466

   19    7.2  0.5 -0.5   0.176540889   0.227730910  -0.057755001  -0.073303404
                        -0.048212047  -0.053262581  -0.128701414  -0.056248294

   20    8.2  0.5 -0.5  -0.031771242  -0.126470177   0.026406535   0.020392721
                        -0.084523561   0.071681041  -0.293366339   0.010558094

   21    9.2  0.5 -0.5   0.011083875   0.077053365  -0.010242091   0.159092623
                         0.039904360   0.156255142   0.001149770  -0.035231971

   22   10.2  0.5 -0.5  -0.012296687  -0.048647408   0.002469641  -0.041324098
                        -0.003731665   0.015533857   0.016143705  -0.232547849

   23   11.2  0.5 -0.5  -0.003054466   0.011216660  -0.000464214   0.001564422
                        -0.224138188   0.051961298   0.073243284   0.009715944

   24   12.2  0.5 -0.5   0.000109979  -0.000025251  -0.000029607  -0.000001580
                        -0.000001548   0.000004400   0.000000099  -0.000000322

   25    1.2  1.5  1.5  -0.048054769  -0.192969291   0.001026506  -0.009774228
                         0.015153791   0.098721793   0.003845474  -0.070417023

   26    2.2  1.5  1.5   0.001711415  -0.005517282  -0.001894425   0.000526118
                         0.120530623  -0.026264205   0.385218943   0.024003436

   27    3.2  1.5  1.5   0.015158023   0.098752739   0.003837438  -0.070290747
                         0.048069535   0.193029811  -0.001025667   0.009756677

   28    4.2  1.5  1.5   0.044459602   0.178534537  -0.000947956   0.009011418
                        -0.014019606  -0.091337149  -0.003543737   0.064921975

   29    5.2  1.5  1.5   0.152120823  -0.034174545   0.148502549   0.009466522
                        -0.002266476   0.006625140   0.000742173  -0.000469435

   30    6.2  1.5  1.5   0.145371241  -0.033563472  -0.155851518  -0.009319695
                        -0.002259902   0.006032875  -0.000744772  -0.000277052

   31    7.2  1.5  1.5  -0.003072343   0.008476799  -0.000299636  -0.000468355
                        -0.200660052   0.045875115   0.065956087   0.003663393

   32    8.2  1.5  1.5  -0.014013366  -0.091290729  -0.003562571   0.065221966
                        -0.044437767  -0.178444104   0.000950023  -0.009053127

   33    9.2  1.5  1.5  -0.100171941   0.021828277  -0.320033822  -0.019941706
                         0.001422378  -0.004585200  -0.001573891   0.000437166

   34    1.2  1.5  0.5   0.320340017  -0.072490234   0.140145816   0.009290229
                        -0.004827175   0.013778124   0.000720349  -0.000889081

   35    2.2  1.5  0.5   0.008777367   0.057177712   0.002248556  -0.041128685
                         0.027833184   0.111764459  -0.000597100   0.005709035

   36    3.2  1.5  0.5  -0.002847728   0.007397804  -0.001468495  -0.000280919
                        -0.180940974   0.042113125   0.304926686   0.018442877

   37    4.2  1.5  0.5   0.064562952  -0.014073082   0.204839125   0.012764703
                        -0.000917325   0.002953944   0.001007272  -0.000280885

   38    5.2  1.5  0.5  -0.032378292  -0.129074422   0.001509926  -0.021406928
                         0.010384179   0.065995525   0.009175443  -0.153953897

   39    6.2  1.5  0.5   0.033271262   0.135343091   0.000796598  -0.020533809
                        -0.010171600  -0.069311022   0.009466200  -0.147435659

   40    7.2  1.5  0.5  -0.003984154  -0.029431200   0.012731816  -0.203588189
                        -0.013793275  -0.057371613  -0.001424824   0.028337711

   41    8.2  1.5  0.5   0.000908176  -0.002930149  -0.001010950   0.000279910
                         0.063993652  -0.013941498   0.205549199   0.012807346

   42    9.2  1.5  0.5  -0.069199015  -0.277874867   0.001479139  -0.014093533
                         0.021821410   0.142158795   0.005545724  -0.101534037

   43    1.2  1.5 -0.5   0.070484528   0.285183288   0.000354322  -0.019351922
                        -0.021831217  -0.145984658   0.009325946  -0.138805158

   44    2.2  1.5 -0.5   0.001922041  -0.005302468   0.000188626   0.000292761
                         0.125526455  -0.028698644  -0.041522599  -0.002307991

   45    3.2  1.5 -0.5   0.013218547   0.082351035   0.018241697  -0.302022849
                         0.040663408   0.161139854  -0.002731139   0.042007607

   46    4.2  1.5 -0.5   0.013814601   0.057451223   0.001419186  -0.028239850
                        -0.003991771  -0.029471566   0.012688674  -0.202885663

   47    5.2  1.5 -0.5   0.144950127  -0.033466448  -0.155433290  -0.009294746
                        -0.002253119   0.006015133  -0.000742472  -0.000276273

   48    6.2  1.5 -0.5  -0.152041571   0.034155400  -0.148856835  -0.009488055
                         0.002265096  -0.006621707  -0.000743968   0.000469386

   49    7.2  1.5 -0.5  -0.000915635   0.002950669   0.001010835  -0.000281034
                        -0.064473709   0.014050675  -0.205548425  -0.012808211

   50    8.2  1.5 -0.5  -0.003951071  -0.029212629   0.012730808  -0.203588942
                        -0.013687227  -0.056944136  -0.001425824   0.028337929

   51    9.2  1.5 -0.5   0.312090904  -0.071350289  -0.102506447  -0.005693175
                        -0.004778273   0.013183846  -0.000465349  -0.000728476

   52    1.2  1.5 -1.5  -0.216730545   0.049548737   0.071091410   0.003947831
                         0.003318182  -0.009155370   0.000322658   0.000505979

   53    2.2  1.5 -1.5   0.007445831   0.055020556  -0.023860191   0.381545258
                         0.025783880   0.107253431   0.002670769  -0.053107809

   54    3.2  1.5 -1.5  -0.003319237   0.009158559  -0.000322056  -0.000506216
                        -0.216798510   0.049563764   0.070963921   0.003939755

   55    4.2  1.5 -1.5   0.200518407  -0.045841580  -0.065543727  -0.003638328
                        -0.003069901   0.008470836  -0.000297410  -0.000468255

   56    5.2  1.5 -1.5  -0.033289782  -0.135413732  -0.000793686   0.020484914
                         0.010177547   0.069346974  -0.009444865   0.147084759

   57    6.2  1.5 -1.5  -0.032472304  -0.129449525   0.001514016  -0.021464827
                         0.010414017   0.066187048   0.009200067  -0.154368104

   58    7.2  1.5 -1.5  -0.014030068  -0.091401428  -0.003568566   0.065330377
                        -0.044492016  -0.178660781   0.000951389  -0.009068465

   59    8.2  1.5 -1.5   0.003068484  -0.008466106   0.000298852   0.000467798
                         0.200416765  -0.045819370  -0.065846600  -0.003657269

   60    9.2  1.5 -1.5   0.021428968   0.089137400   0.002218762  -0.044121162
                        -0.006188463  -0.045727069   0.019822710  -0.316981778


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   4.629%   0.017%  61.690%   0.001%   0.231%  32.937%   0.086%   0.000%   0.001%   0.000%
    2    2.2  0.5  0.5   0.419%  61.660%   0.008%   4.250%  32.930%   0.236%   0.000%   0.014%   0.000%   0.076%
    3    3.2  0.5  0.5  32.555%   0.225%  33.556%   0.001%   0.283%  32.884%   0.033%   0.000%   0.055%   0.000%
    4    4.2  0.5  0.5   0.000%   0.003%   0.000%   0.012%   0.000%   0.000%   0.001%   0.698%   0.001%   0.355%
    5    5.2  0.5  0.5   0.008%   0.000%   0.007%   0.000%   0.000%   0.000%   0.605%   0.010%   0.380%   0.016%
    6    6.2  0.5  0.5   0.002%   0.010%   0.000%   0.003%   0.000%   0.000%   0.002%   0.316%   0.149%   0.591%
    7    7.2  0.5  0.5   0.010%   0.002%   0.001%   0.003%   0.000%   0.000%   0.050%   0.188%   0.666%   0.117%
    8    8.2  0.5  0.5   0.002%   0.001%   0.000%   0.012%   0.000%   0.000%   0.007%   0.694%   0.164%   0.140%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   4.616%   0.003%   8.315%   0.043%
   10   10.2  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.015%  13.035%   0.013%   0.251%   0.013%
   11   11.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.015%   0.000%   0.011%   1.825%   0.061%  10.808%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.104%   0.001%   0.000%   0.006%   0.000%   0.003%
   13    1.2  0.5 -0.5   0.017%   4.629%   0.001%  61.690%  32.937%   0.231%   0.000%   0.086%   0.000%   0.001%
   14    2.2  0.5 -0.5  61.660%   0.419%   4.250%   0.008%   0.236%  32.930%   0.014%   0.000%   0.076%   0.000%
   15    3.2  0.5 -0.5   0.225%  32.555%   0.001%  33.556%  32.884%   0.283%   0.000%   0.033%   0.000%   0.055%
   16    4.2  0.5 -0.5   0.003%   0.000%   0.012%   0.000%   0.000%   0.000%   0.698%   0.001%   0.355%   0.001%
   17    5.2  0.5 -0.5   0.000%   0.008%   0.000%   0.007%   0.000%   0.000%   0.010%   0.605%   0.016%   0.380%
   18    6.2  0.5 -0.5   0.010%   0.002%   0.003%   0.000%   0.000%   0.000%   0.316%   0.002%   0.591%   0.149%
   19    7.2  0.5 -0.5   0.002%   0.010%   0.003%   0.001%   0.000%   0.000%   0.188%   0.050%   0.117%   0.666%
   20    8.2  0.5 -0.5   0.001%   0.002%   0.012%   0.000%   0.000%   0.000%   0.694%   0.007%   0.140%   0.164%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%   0.003%   4.616%   0.043%   8.315%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.015%   0.000%   0.013%  13.035%   0.013%   0.251%
   23   11.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.015%   1.825%   0.011%  10.808%   0.061%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.104%   0.006%   0.000%   0.003%   0.000%
   25    1.2  1.5  1.5   0.000%   0.025%   0.000%   0.002%   0.009%   0.000%   0.001%   1.321%   0.040%   7.756%
   26    2.2  1.5  1.5   0.005%   0.000%   0.074%   0.000%   0.000%   0.000%  23.630%   0.017%   4.158%   0.022%
   27    3.2  1.5  1.5   0.000%   0.025%   0.000%   0.002%   0.009%   0.000%   0.001%   1.323%   0.040%   7.757%
   28    4.2  1.5  1.5   0.000%   0.015%   0.000%   0.001%   0.015%   0.000%   0.000%   0.310%   0.010%   1.832%
   29    5.2  1.5  1.5   0.007%   0.000%   0.009%   0.000%   0.000%   0.014%   0.830%   0.001%   1.302%   0.007%
   30    6.2  1.5  1.5   0.008%   0.000%   0.008%   0.000%   0.000%   0.048%   1.317%   0.001%   0.825%   0.004%
   31    7.2  1.5  1.5   0.015%   0.000%   0.001%   0.000%   0.001%   0.061%   0.329%   0.000%   1.802%   0.009%
   32    8.2  1.5  1.5   0.000%   0.015%   0.000%   0.001%   0.015%   0.000%   0.000%   0.319%   0.009%   1.819%
   33    9.2  1.5  1.5   0.016%   0.000%   0.229%   0.000%   0.000%   0.000%  17.762%   0.013%   3.107%   0.017%
   34    1.2  1.5  0.5   0.049%   0.000%   0.012%   0.000%   0.000%   0.003%   2.034%   0.002%  19.332%   0.102%
   35    2.2  1.5  0.5   0.000%   0.008%   0.000%   0.001%   0.013%   0.000%   0.000%   0.487%   0.014%   2.702%
   36    3.2  1.5  0.5   0.020%   0.000%   0.042%   0.000%   0.000%   0.003%  17.406%   0.012%   4.277%   0.022%
   37    4.2  1.5  0.5   0.001%   0.000%   0.015%   0.000%   0.000%   0.046%   1.802%   0.001%   0.335%   0.002%
   38    5.2  1.5  0.5   0.000%   0.008%   0.000%   0.008%   0.048%   0.000%   0.001%   1.270%   0.004%   0.816%
   39    6.2  1.5  0.5   0.000%   0.007%   0.000%   0.009%   0.014%   0.000%   0.001%   0.833%   0.007%   1.260%
   40    7.2  1.5  0.5   0.000%   0.001%   0.000%   0.015%   0.000%   0.000%   0.001%   1.812%   0.002%   0.314%
   41    8.2  1.5  0.5   0.001%   0.000%   0.015%   0.000%   0.000%   0.046%   1.825%   0.001%   0.308%   0.002%
   42    9.2  1.5  0.5   0.002%   0.227%   0.000%   0.016%   0.000%   0.000%   0.002%   3.119%   0.092%  17.688%
   43    1.2  1.5 -0.5   0.000%   0.049%   0.000%   0.012%   0.003%   0.000%   0.002%   2.034%   0.102%  19.332%
   44    2.2  1.5 -0.5   0.008%   0.000%   0.001%   0.000%   0.000%   0.013%   0.487%   0.000%   2.702%   0.014%
   45    3.2  1.5 -0.5   0.000%   0.020%   0.000%   0.042%   0.003%   0.000%   0.012%  17.406%   0.022%   4.277%
   46    4.2  1.5 -0.5   0.000%   0.001%   0.000%   0.015%   0.046%   0.000%   0.001%   1.802%   0.002%   0.335%
   47    5.2  1.5 -0.5   0.008%   0.000%   0.008%   0.000%   0.000%   0.048%   1.270%   0.001%   0.816%   0.004%
   48    6.2  1.5 -0.5   0.007%   0.000%   0.009%   0.000%   0.000%   0.014%   0.833%   0.001%   1.260%   0.007%
   49    7.2  1.5 -0.5   0.001%   0.000%   0.015%   0.000%   0.000%   0.000%   1.812%   0.001%   0.314%   0.002%
   50    8.2  1.5 -0.5   0.000%   0.001%   0.000%   0.015%   0.046%   0.000%   0.001%   1.825%   0.002%   0.308%
   51    9.2  1.5 -0.5   0.227%   0.002%   0.016%   0.000%   0.000%   0.000%   3.119%   0.002%  17.688%   0.092%
   52    1.2  1.5 -1.5   0.025%   0.000%   0.002%   0.000%   0.000%   0.009%   1.321%   0.001%   7.756%   0.040%
   53    2.2  1.5 -1.5   0.000%   0.005%   0.000%   0.074%   0.000%   0.000%   0.017%  23.630%   0.022%   4.158%
   54    3.2  1.5 -1.5   0.025%   0.000%   0.002%   0.000%   0.000%   0.009%   1.323%   0.001%   7.757%   0.040%
   55    4.2  1.5 -1.5   0.015%   0.000%   0.001%   0.000%   0.000%   0.015%   0.310%   0.000%   1.832%   0.010%
   56    5.2  1.5 -1.5   0.000%   0.007%   0.000%   0.009%   0.014%   0.000%   0.001%   0.830%   0.007%   1.302%
   57    6.2  1.5 -1.5   0.000%   0.008%   0.000%   0.008%   0.048%   0.000%   0.001%   1.317%   0.004%   0.825%
   58    7.2  1.5 -1.5   0.000%   0.015%   0.000%   0.001%   0.061%   0.001%   0.000%   0.329%   0.009%   1.802%
   59    8.2  1.5 -1.5   0.015%   0.000%   0.001%   0.000%   0.000%   0.015%   0.319%   0.000%   1.819%   0.009%
   60    9.2  1.5 -1.5   0.000%   0.016%   0.000%   0.229%   0.000%   0.000%   0.013%  17.762%   0.017%   3.107%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.042%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.002%   0.039%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.040%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.232%   0.002%   0.001%   0.757%   0.000%   0.266%   9.199%   1.381%
    5    5.2  0.5  0.5   0.000%   0.000%   0.008%   0.438%   0.708%   0.007%   0.133%   0.009%   0.425%   8.661%
    6    6.2  0.5  0.5   0.000%   0.000%   0.037%   0.053%   0.028%   0.296%   0.091%   0.644%  33.737%   0.899%
    7    7.2  0.5  0.5   0.000%   0.000%   0.237%   0.245%   0.148%   0.070%   0.405%   0.125%   2.117%  19.454%
    8    8.2  0.5  0.5   0.000%   0.000%   1.002%   0.110%   0.034%   0.104%   0.119%   0.004%   1.517%   3.466%
    9    9.2  0.5  0.5  11.474%   0.718%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5  11.095%   0.762%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.826%  11.640%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   2.551%  42.659%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.002%   0.042%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.039%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.003%   0.040%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   0.000%   0.000%   0.002%   0.232%   0.757%   0.001%   0.266%   0.000%   1.381%   9.199%
   17    5.2  0.5 -0.5   0.000%   0.000%   0.438%   0.008%   0.007%   0.708%   0.009%   0.133%   8.661%   0.425%
   18    6.2  0.5 -0.5   0.000%   0.000%   0.053%   0.037%   0.296%   0.028%   0.644%   0.091%   0.899%  33.737%
   19    7.2  0.5 -0.5   0.000%   0.000%   0.245%   0.237%   0.070%   0.148%   0.125%   0.405%  19.454%   2.117%
   20    8.2  0.5 -0.5   0.000%   0.000%   0.110%   1.002%   0.104%   0.034%   0.004%   0.119%   3.466%   1.517%
   21    9.2  0.5 -0.5   0.718%  11.474%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.762%  11.095%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5  11.640%   0.826%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5  42.659%   2.551%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.223%   3.736%  20.198%   0.082%   0.005%  21.027%   0.000%   0.259%   0.006%   0.001%
   26    2.2  1.5  1.5   0.003%   0.000%   0.054%  13.391%  14.206%   0.003%   2.414%   0.001%   0.001%   0.011%
   27    3.2  1.5  1.5   0.229%   3.821%  21.310%   0.086%   0.002%  10.286%   0.003%   9.755%   0.107%   0.013%
   28    4.2  1.5  1.5   0.007%   0.122%   2.811%   0.011%   0.000%   0.431%   0.002%   5.986%   3.925%   0.486%
   29    5.2  1.5  1.5   0.113%   0.007%   0.016%   3.831%   3.305%   0.001%   2.220%   0.001%   0.088%   0.708%
   30    6.2  1.5  1.5   0.341%   0.020%   0.005%   1.247%   2.417%   0.001%   0.480%   0.000%   0.054%   0.439%
   31    7.2  1.5  1.5   0.435%   0.026%   0.000%   0.002%   0.244%   0.000%   1.715%   0.000%   0.215%   1.743%
   32    8.2  1.5  1.5   0.007%   0.124%   2.395%   0.010%   0.001%   4.522%   0.001%   2.226%   1.727%   0.211%
   33    9.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   1.130%   0.068%   0.044%  10.842%  19.996%   0.005%   3.293%   0.001%   0.006%   0.053%
   35    2.2  1.5  0.5   0.296%   4.953%   0.046%   0.000%   0.001%   5.538%   0.010%  39.359%   0.462%   0.057%
   36    3.2  1.5  0.5   1.090%   0.065%   0.038%   9.402%   4.338%   0.001%  20.121%   0.005%   0.022%   0.178%
   37    4.2  1.5  0.5   0.392%   0.023%   0.001%   0.189%   1.181%   0.000%   2.991%   0.001%   0.283%   2.304%
   38    5.2  1.5  0.5   0.024%   0.400%   2.472%   0.010%   0.000%   0.202%   0.000%   1.446%   0.683%   0.084%
   39    6.2  1.5  0.5   0.007%   0.110%   8.877%   0.036%   0.000%   0.038%   0.000%   0.294%   0.331%   0.041%
   40    7.2  1.5  0.5   0.000%   0.000%   0.134%   0.001%   0.002%   9.988%   0.000%   1.418%   0.806%   0.102%
   41    8.2  1.5  0.5   0.347%   0.021%   0.000%   0.095%   0.103%   0.000%   4.199%   0.001%   0.439%   3.560%
   42    9.2  1.5  0.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.068%   1.130%  10.842%   0.044%   0.005%  19.996%   0.001%   3.293%   0.053%   0.006%
   44    2.2  1.5 -0.5   4.953%   0.296%   0.000%   0.046%   5.538%   0.001%  39.359%   0.010%   0.057%   0.462%
   45    3.2  1.5 -0.5   0.065%   1.090%   9.402%   0.038%   0.001%   4.338%   0.005%  20.121%   0.178%   0.022%
   46    4.2  1.5 -0.5   0.023%   0.392%   0.189%   0.001%   0.000%   1.181%   0.001%   2.991%   2.304%   0.283%
   47    5.2  1.5 -0.5   0.400%   0.024%   0.010%   2.472%   0.202%   0.000%   1.446%   0.000%   0.084%   0.683%
   48    6.2  1.5 -0.5   0.110%   0.007%   0.036%   8.877%   0.038%   0.000%   0.294%   0.000%   0.041%   0.331%
   49    7.2  1.5 -0.5   0.000%   0.000%   0.001%   0.134%   9.988%   0.002%   1.418%   0.000%   0.102%   0.806%
   50    8.2  1.5 -0.5   0.021%   0.347%   0.095%   0.000%   0.000%   0.103%   0.001%   4.199%   3.560%   0.439%
   51    9.2  1.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   3.736%   0.223%   0.082%  20.198%  21.027%   0.005%   0.259%   0.000%   0.001%   0.006%
   53    2.2  1.5 -1.5   0.000%   0.003%  13.391%   0.054%   0.003%  14.206%   0.001%   2.414%   0.011%   0.001%
   54    3.2  1.5 -1.5   3.821%   0.229%   0.086%  21.310%  10.286%   0.002%   9.755%   0.003%   0.013%   0.107%
   55    4.2  1.5 -1.5   0.122%   0.007%   0.011%   2.811%   0.431%   0.000%   5.986%   0.002%   0.486%   3.925%
   56    5.2  1.5 -1.5   0.007%   0.113%   3.831%   0.016%   0.001%   3.305%   0.001%   2.220%   0.708%   0.088%
   57    6.2  1.5 -1.5   0.020%   0.341%   1.247%   0.005%   0.001%   2.417%   0.000%   0.480%   0.439%   0.054%
   58    7.2  1.5 -1.5   0.026%   0.435%   0.002%   0.000%   0.000%   0.244%   0.000%   1.715%   1.743%   0.215%
   59    8.2  1.5 -1.5   0.124%   0.007%   0.010%   2.395%   4.522%   0.001%   2.226%   0.001%   0.211%   1.727%
   60    9.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.256%  36.550%   0.787%   0.192%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
    5    5.2  0.5  0.5  13.735%   0.574%   7.675%  17.265%   0.002%   0.000%   0.000%   0.003%   0.016%   0.005%
    6    6.2  0.5  0.5   0.546%   9.337%   0.085%   3.847%   0.000%   0.002%   0.001%   0.000%   0.006%   0.014%
    7    7.2  0.5  0.5   2.325%   4.197%   0.086%  20.181%   0.000%   0.001%   0.000%   0.000%   0.001%   0.005%
    8    8.2  0.5  0.5   0.974%  12.056%  28.929%   1.353%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%
    9    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5  36.550%   0.256%   0.192%   0.787%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    5.2  0.5 -0.5   0.574%  13.735%  17.265%   7.675%   0.000%   0.002%   0.003%   0.000%   0.005%   0.016%
   18    6.2  0.5 -0.5   9.337%   0.546%   3.847%   0.085%   0.002%   0.000%   0.000%   0.001%   0.014%   0.006%
   19    7.2  0.5 -0.5   4.197%   2.325%  20.181%   0.086%   0.001%   0.000%   0.000%   0.000%   0.005%   0.001%
   20    8.2  0.5 -0.5  12.056%   0.974%   1.353%  28.929%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.001%   0.283%   0.047%   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    2.2  1.5  1.5   0.067%   0.000%   0.058%   0.132%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    3.2  1.5  1.5   0.001%   0.190%   0.053%   0.024%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    4.2  1.5  1.5   0.006%   1.195%   1.120%   0.496%   0.000%  14.154%   8.502%   0.006%   0.101%   0.261%
   29    5.2  1.5  1.5   1.107%   0.005%   1.473%   3.319%  12.441%   0.000%   0.000%   0.256%   1.722%   0.668%
   30    6.2  1.5  1.5   0.859%   0.004%   0.496%   1.119%   0.414%   0.000%   0.003%   3.479%  30.641%  11.886%
   31    7.2  1.5  1.5   0.152%   0.001%   0.001%   0.002%   0.236%   0.000%   0.000%   0.011%  31.853%  12.358%
   32    8.2  1.5  1.5   0.022%   4.541%   0.764%   0.339%   0.000%   0.033%  30.613%   0.023%   0.362%   0.932%
   33    9.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.2  1.5  0.5   0.099%   0.000%   0.044%   0.098%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    2.2  1.5  0.5   0.000%   0.028%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    3.2  1.5  0.5   0.025%   0.000%   0.040%   0.089%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    4.2  1.5  0.5   0.778%   0.004%   0.123%   0.278%  34.214%   0.000%   0.001%   0.787%   3.110%   1.206%
   38    5.2  1.5  0.5   0.003%   0.527%   1.192%   0.529%   0.000%  38.257%   1.820%   0.001%   0.128%   0.329%
   39    6.2  1.5  0.5   0.002%   0.391%   4.824%   2.140%   0.000%   0.033%  32.536%   0.024%   0.018%   0.047%
   40    7.2  1.5  0.5   0.045%   9.095%   0.367%   0.163%   0.000%   0.124%   8.897%   0.007%   0.695%   1.792%
   41    8.2  1.5  0.5   0.017%   0.000%   0.077%   0.172%   0.087%   0.000%   0.010%  13.019%   1.328%   0.515%
   42    9.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    1.2  1.5 -0.5   0.000%   0.099%   0.098%   0.044%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    2.2  1.5 -0.5   0.028%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    3.2  1.5 -0.5   0.000%   0.025%   0.089%   0.040%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    4.2  1.5 -0.5   0.004%   0.778%   0.278%   0.123%   0.000%  34.214%   0.787%   0.001%   1.206%   3.110%
   47    5.2  1.5 -0.5   0.527%   0.003%   0.529%   1.192%  38.257%   0.000%   0.001%   1.820%   0.329%   0.128%
   48    6.2  1.5 -0.5   0.391%   0.002%   2.140%   4.824%   0.033%   0.000%   0.024%  32.536%   0.047%   0.018%
   49    7.2  1.5 -0.5   9.095%   0.045%   0.163%   0.367%   0.124%   0.000%   0.007%   8.897%   1.792%   0.695%
   50    8.2  1.5 -0.5   0.000%   0.017%   0.172%   0.077%   0.000%   0.087%  13.019%   0.010%   0.515%   1.328%
   51    9.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.2  1.5 -1.5   0.283%   0.001%   0.021%   0.047%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.2  1.5 -1.5   0.000%   0.067%   0.132%   0.058%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.2  1.5 -1.5   0.190%   0.001%   0.024%   0.053%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.2  1.5 -1.5   1.195%   0.006%   0.496%   1.120%  14.154%   0.000%   0.006%   8.502%   0.261%   0.101%
   56    5.2  1.5 -1.5   0.005%   1.107%   3.319%   1.473%   0.000%  12.441%   0.256%   0.000%   0.668%   1.722%
   57    6.2  1.5 -1.5   0.004%   0.859%   1.119%   0.496%   0.000%   0.414%   3.479%   0.003%  11.886%  30.641%
   58    7.2  1.5 -1.5   0.001%   0.152%   0.002%   0.001%   0.000%   0.236%   0.011%   0.000%  12.358%  31.853%
   59    8.2  1.5 -1.5   4.541%   0.022%   0.339%   0.764%   0.033%   0.000%   0.023%  30.613%   0.932%   0.362%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.2  0.5  0.5   0.000%   0.000%   0.007%   0.000%   0.006%   0.129%   0.006%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.002%   0.128%   0.012%   0.001%   0.000%   0.005%   0.067%   0.008%
    3    3.2  0.5  0.5   0.000%   0.000%   0.076%   0.001%   0.003%   0.062%   0.006%   0.000%   0.007%   0.064%
    4    4.2  0.5  0.5   0.039%   0.003%   0.035%   1.346%   3.972%   0.189%   0.000%   0.000%   1.440%   0.181%
    5    5.2  0.5  0.5   0.001%   0.021%   2.674%   0.014%   0.231%   2.651%   0.000%   0.000%   0.157%   0.960%
    6    6.2  0.5  0.5   0.017%   0.018%   0.474%   3.763%   1.139%   0.173%   0.000%   0.000%   2.103%   0.348%
    7    7.2  0.5  0.5   0.006%   0.071%   3.590%   0.618%   0.925%   0.438%   0.000%   0.000%   0.048%   2.771%
    8    8.2  0.5  0.5   0.010%   0.016%   1.063%   0.326%   4.019%   0.160%   0.000%   0.000%   1.039%   0.347%
    9    9.2  0.5  0.5   0.000%   0.000%  16.133%   0.203%   0.628%  13.267%   2.978%   0.007%   1.368%  11.461%
   10   10.2  0.5  0.5   0.000%   0.000%   1.485%   0.014%   1.253%  27.479%   2.912%   0.016%   0.009%   0.047%
   11   11.2  0.5  0.5   0.000%   0.000%   0.337%  27.167%   2.576%   0.143%   0.016%   3.004%  12.065%   1.413%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%   9.188%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.007%   0.129%   0.006%   0.000%   0.006%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.128%   0.002%   0.001%   0.012%   0.005%   0.000%   0.008%   0.067%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.001%   0.076%   0.062%   0.003%   0.000%   0.006%   0.064%   0.007%
   16    4.2  0.5 -0.5   0.003%   0.039%   1.346%   0.035%   0.189%   3.972%   0.000%   0.000%   0.181%   1.440%
   17    5.2  0.5 -0.5   0.021%   0.001%   0.014%   2.674%   2.651%   0.231%   0.000%   0.000%   0.960%   0.157%
   18    6.2  0.5 -0.5   0.018%   0.017%   3.763%   0.474%   0.173%   1.139%   0.000%   0.000%   0.348%   2.103%
   19    7.2  0.5 -0.5   0.071%   0.006%   0.618%   3.590%   0.438%   0.925%   0.000%   0.000%   2.771%   0.048%
   20    8.2  0.5 -0.5   0.016%   0.010%   0.326%   1.063%   0.160%   4.019%   0.000%   0.000%   0.347%   1.039%
   21    9.2  0.5 -0.5   0.000%   0.000%   0.203%  16.133%  13.267%   0.628%   0.007%   2.978%  11.461%   1.368%
   22   10.2  0.5 -0.5   0.000%   0.000%   0.014%   1.485%  27.479%   1.253%   0.016%   2.912%   0.047%   0.009%
   23   11.2  0.5 -0.5   0.000%   0.000%  27.167%   0.337%   0.143%   2.576%   3.004%   0.016%   1.413%  12.065%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.188%   0.022%   0.000%   0.000%
   25    1.2  1.5  1.5   0.000%   0.000%   0.012%   0.848%   0.081%   0.004%   0.042%  17.353%   0.002%   0.000%
   26    2.2  1.5  1.5   0.000%   0.001%   0.252%   0.004%   0.113%   2.465%   0.000%   0.000%   0.000%   0.000%
   27    3.2  1.5  1.5   0.000%   0.000%   0.012%   0.853%   0.080%   0.004%   0.042%  17.309%   0.000%   0.000%
   28    4.2  1.5  1.5  10.741%   0.774%   0.007%   0.503%   0.049%   0.002%   0.002%   0.624%   8.153%   0.982%
   29    5.2  1.5  1.5   1.326%  18.401%   0.290%   0.004%   0.012%   0.261%   0.562%   0.001%   0.971%   7.908%
   30    6.2  1.5  1.5   0.015%   0.203%   0.271%   0.004%   0.013%   0.279%   1.863%   0.005%   0.390%   3.288%
   31    7.2  1.5  1.5   0.434%   6.017%   0.506%   0.007%   0.002%   0.047%   2.422%   0.006%   1.037%   8.610%
   32    8.2  1.5  1.5   2.136%   0.153%   0.007%   0.503%   0.048%   0.002%   0.001%   0.615%   7.965%   0.959%
   33    9.2  1.5  1.5   0.000%   0.000%   2.910%   0.042%   1.320%  28.742%   0.000%   0.000%   0.077%   0.616%
   34    1.2  1.5  0.5   0.000%   0.000%   1.813%   0.026%   0.015%   0.331%   5.791%   0.014%   0.000%   0.000%
   35    2.2  1.5  0.5   0.001%   0.000%   0.004%   0.289%   0.027%   0.001%   0.056%  23.125%   0.006%   0.001%
   36    3.2  1.5  0.5   0.000%   0.001%   0.599%   0.009%   0.070%   1.520%   5.812%   0.014%   0.000%   0.001%
   37    4.2  1.5  0.5   0.412%   5.725%   0.048%   0.001%   0.022%   0.487%   1.862%   0.005%   0.294%   2.348%
   38    5.2  1.5  0.5   5.662%   0.409%   0.004%   0.273%   0.282%   0.013%   0.005%   1.925%   3.371%   0.400%
   39    6.2  1.5  0.5   1.208%   0.088%   0.004%   0.294%   0.261%   0.012%   0.001%   0.553%   7.641%   0.938%
   40    7.2  1.5  0.5  14.998%   1.080%   0.001%   0.050%   0.490%   0.022%   0.000%   0.000%   2.519%   0.315%
   41    8.2  1.5  0.5   2.020%  27.995%   0.049%   0.001%   0.023%   0.490%   1.827%   0.004%   0.336%   2.687%
   42    9.2  1.5  0.5   0.000%   0.000%   0.424%  29.624%   2.825%   0.129%   0.000%   0.000%   2.038%   0.245%
   43    1.2  1.5 -0.5   0.000%   0.000%   0.026%   1.813%   0.331%   0.015%   0.014%   5.791%   0.000%   0.000%
   44    2.2  1.5 -0.5   0.000%   0.001%   0.289%   0.004%   0.001%   0.027%  23.125%   0.056%   0.001%   0.006%
   45    3.2  1.5 -0.5   0.001%   0.000%   0.009%   0.599%   1.520%   0.070%   0.014%   5.812%   0.001%   0.000%
   46    4.2  1.5 -0.5   5.725%   0.412%   0.001%   0.048%   0.487%   0.022%   0.005%   1.862%   2.348%   0.294%
   47    5.2  1.5 -0.5   0.409%   5.662%   0.273%   0.004%   0.013%   0.282%   1.925%   0.005%   0.400%   3.371%
   48    6.2  1.5 -0.5   0.088%   1.208%   0.294%   0.004%   0.012%   0.261%   0.553%   0.001%   0.938%   7.641%
   49    7.2  1.5 -0.5   1.080%  14.998%   0.050%   0.001%   0.022%   0.490%   0.000%   0.000%   0.315%   2.519%
   50    8.2  1.5 -0.5  27.995%   2.020%   0.001%   0.049%   0.490%   0.023%   0.004%   1.827%   2.687%   0.336%
   51    9.2  1.5 -0.5   0.000%   0.000%  29.624%   0.424%   0.129%   2.825%   0.000%   0.000%   0.245%   2.038%
   52    1.2  1.5 -1.5   0.000%   0.000%   0.848%   0.012%   0.004%   0.081%  17.353%   0.042%   0.000%   0.002%
   53    2.2  1.5 -1.5   0.001%   0.000%   0.004%   0.252%   2.465%   0.113%   0.000%   0.000%   0.000%   0.000%
   54    3.2  1.5 -1.5   0.000%   0.000%   0.853%   0.012%   0.004%   0.080%  17.309%   0.042%   0.000%   0.000%
   55    4.2  1.5 -1.5   0.774%  10.741%   0.503%   0.007%   0.002%   0.049%   0.624%   0.002%   0.982%   8.153%
   56    5.2  1.5 -1.5  18.401%   1.326%   0.004%   0.290%   0.261%   0.012%   0.001%   0.562%   7.908%   0.971%
   57    6.2  1.5 -1.5   0.203%   0.015%   0.004%   0.271%   0.279%   0.013%   0.005%   1.863%   3.288%   0.390%
   58    7.2  1.5 -1.5   6.017%   0.434%   0.007%   0.506%   0.047%   0.002%   0.006%   2.422%   8.610%   1.037%
   59    8.2  1.5 -1.5   0.153%   2.136%   0.503%   0.007%   0.002%   0.048%   0.615%   0.001%   0.959%   7.965%
   60    9.2  1.5 -1.5   0.000%   0.000%   0.042%   2.910%  28.742%   1.320%   0.000%   0.000%   0.616%   0.077%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.2  0.5  0.5   0.097%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.023%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.027%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.002%   2.209%   0.037%   0.007%   4.309%   0.048%   4.751%   0.836%   0.272%  14.829%
    5    5.2  0.5  0.5   2.510%   0.040%   0.141%   5.382%   0.089%   1.305%   0.852%   2.784%   7.299%   0.304%
    6    6.2  0.5  0.5   0.001%   1.435%   0.197%   0.761%   4.080%   1.270%   3.141%   0.577%   0.447%   2.845%
    7    7.2  0.5  0.5   0.166%   0.684%   1.258%   3.504%   1.579%   2.768%   0.986%   0.422%   1.422%   3.358%
    8    8.2  0.5  0.5   0.009%   2.263%   4.464%   1.427%   0.821%   0.955%   2.351%   0.527%   0.694%  13.543%
    9    9.2  0.5  0.5   4.725%   0.001%   0.000%   0.000%   0.000%   0.005%   0.000%   0.001%   0.004%   0.000%
   10   10.2  0.5  0.5  17.603%   0.005%   0.000%   0.000%   0.000%   0.000%   0.001%   0.004%   0.002%   0.000%
   11   11.2  0.5  0.5   0.011%   3.983%   0.001%   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%   0.001%
   12   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%
   13    1.2  0.5 -0.5   0.000%   0.097%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  0.5 -0.5   0.023%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.027%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.2  0.5 -0.5   2.209%   0.002%   0.007%   0.037%   0.048%   4.309%   0.836%   4.751%  14.829%   0.272%
   17    5.2  0.5 -0.5   0.040%   2.510%   5.382%   0.141%   1.305%   0.089%   2.784%   0.852%   0.304%   7.299%
   18    6.2  0.5 -0.5   1.435%   0.001%   0.761%   0.197%   1.270%   4.080%   0.577%   3.141%   2.845%   0.447%
   19    7.2  0.5 -0.5   0.684%   0.166%   3.504%   1.258%   2.768%   1.579%   0.422%   0.986%   3.358%   1.422%
   20    8.2  0.5 -0.5   2.263%   0.009%   1.427%   4.464%   0.955%   0.821%   0.527%   2.351%  13.543%   0.694%
   21    9.2  0.5 -0.5   0.001%   4.725%   0.000%   0.000%   0.005%   0.000%   0.001%   0.000%   0.000%   0.004%
   22   10.2  0.5 -0.5   0.005%  17.603%   0.000%   0.000%   0.000%   0.000%   0.004%   0.001%   0.000%   0.002%
   23   11.2  0.5 -0.5   3.983%   0.011%   0.000%   0.001%   0.000%   0.001%   0.000%   0.002%   0.001%   0.000%
   24   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%
   25    1.2  1.5  1.5   0.000%   0.001%   2.208%   0.030%   0.274%   0.004%   9.142%   1.489%   0.003%   0.158%
   26    2.2  1.5  1.5   0.000%   0.000%   0.106%   7.630%   0.007%   0.444%   0.181%   1.114%  12.225%   0.227%
   27    3.2  1.5  1.5   0.000%   0.002%   2.276%   0.031%   6.006%   0.090%   4.127%   0.668%   0.004%   0.194%
   28    4.2  1.5  1.5   0.000%   2.933%   2.410%   0.033%  20.109%   0.302%   1.059%   0.168%   0.000%   0.015%
   29    5.2  1.5  1.5   3.636%   0.000%   0.256%  18.483%   0.057%   3.772%   0.238%   1.477%   0.213%   0.004%
   30    6.2  1.5  1.5   8.745%   0.000%   0.079%   5.697%   0.019%   1.284%   0.513%   3.133%   0.138%   0.003%
   31    7.2  1.5  1.5   2.838%   0.000%   0.000%   0.002%   0.056%   3.708%   0.157%   0.950%   0.011%   0.000%
   32    8.2  1.5  1.5   0.000%   2.654%   2.324%   0.032%   2.037%   0.031%  17.364%   2.838%   0.001%   0.029%
   33    9.2  1.5  1.5   2.311%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  29.612%   0.551%
   34    1.2  1.5  0.5   0.000%   0.000%   0.081%   5.836%   0.016%   1.074%   0.528%   3.225%   2.272%   0.042%
   35    2.2  1.5  0.5   0.000%   0.001%   0.001%   0.000%  10.815%   0.163%   2.909%   0.480%   0.001%   0.053%
   36    3.2  1.5  0.5   0.002%   0.000%   0.078%   5.633%   0.074%   4.887%   0.001%   0.010%   6.233%   0.116%
   37    4.2  1.5  0.5   9.459%   0.000%   0.010%   0.724%   0.105%   6.988%   0.512%   3.110%   0.364%   0.007%
   38    5.2  1.5  0.5   0.000%   8.762%   5.666%   0.078%   1.527%   0.023%   2.739%   0.449%   0.003%   0.161%
   39    6.2  1.5  0.5   0.000%   3.706%  19.912%   0.276%   3.000%   0.045%   1.093%   0.177%   0.004%   0.205%
   40    7.2  1.5  0.5   0.000%   9.047%   2.271%   0.032%   6.766%   0.101%  18.410%   2.991%   0.008%   0.418%
   41    8.2  1.5  0.5   9.414%   0.000%   0.009%   0.619%   0.133%   8.851%   0.215%   1.297%   0.361%   0.007%
   42    9.2  1.5  0.5   0.000%   0.692%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.025%   1.309%
   43    1.2  1.5 -0.5   0.000%   0.000%   5.836%   0.081%   1.074%   0.016%   3.225%   0.528%   0.042%   2.272%
   44    2.2  1.5 -0.5   0.001%   0.000%   0.000%   0.001%   0.163%  10.815%   0.480%   2.909%   0.053%   0.001%
   45    3.2  1.5 -0.5   0.000%   0.002%   5.633%   0.078%   4.887%   0.074%   0.010%   0.001%   0.116%   6.233%
   46    4.2  1.5 -0.5   0.000%   9.459%   0.724%   0.010%   6.988%   0.105%   3.110%   0.512%   0.007%   0.364%
   47    5.2  1.5 -0.5   8.762%   0.000%   0.078%   5.666%   0.023%   1.527%   0.449%   2.739%   0.161%   0.003%
   48    6.2  1.5 -0.5   3.706%   0.000%   0.276%  19.912%   0.045%   3.000%   0.177%   1.093%   0.205%   0.004%
   49    7.2  1.5 -0.5   9.047%   0.000%   0.032%   2.271%   0.101%   6.766%   2.991%  18.410%   0.418%   0.008%
   50    8.2  1.5 -0.5   0.000%   9.414%   0.619%   0.009%   8.851%   0.133%   1.297%   0.215%   0.007%   0.361%
   51    9.2  1.5 -0.5   0.692%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   1.309%   0.025%
   52    1.2  1.5 -1.5   0.001%   0.000%   0.030%   2.208%   0.004%   0.274%   1.489%   9.142%   0.158%   0.003%
   53    2.2  1.5 -1.5   0.000%   0.000%   7.630%   0.106%   0.444%   0.007%   1.114%   0.181%   0.227%  12.225%
   54    3.2  1.5 -1.5   0.002%   0.000%   0.031%   2.276%   0.090%   6.006%   0.668%   4.127%   0.194%   0.004%
   55    4.2  1.5 -1.5   2.933%   0.000%   0.033%   2.410%   0.302%  20.109%   0.168%   1.059%   0.015%   0.000%
   56    5.2  1.5 -1.5   0.000%   3.636%  18.483%   0.256%   3.772%   0.057%   1.477%   0.238%   0.004%   0.213%
   57    6.2  1.5 -1.5   0.000%   8.745%   5.697%   0.079%   1.284%   0.019%   3.133%   0.513%   0.003%   0.138%
   58    7.2  1.5 -1.5   0.000%   2.838%   0.002%   0.000%   3.708%   0.056%   0.950%   0.157%   0.000%   0.011%
   59    8.2  1.5 -1.5   2.654%   0.000%   0.032%   2.324%   0.031%   2.037%   2.838%  17.364%   0.029%   0.001%
   60    9.2  1.5 -1.5   0.000%   2.311%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.551%  29.612%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.029%   0.000%   0.089%   0.000%   0.000%   0.001%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.029%   0.000%   0.090%   0.000%   0.000%   0.001%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.029%   0.000%   0.089%   0.001%   0.000%   0.001%   0.000%
    4    4.2  0.5  0.5   0.159%   2.956%   0.000%   0.000%   0.000%   0.000%   0.123%   2.844%   0.055%   8.662%
    5    5.2  0.5  0.5   9.071%   1.163%   0.000%   0.000%   0.000%   0.000%   5.149%   0.436%   5.896%   0.177%
    6    6.2  0.5  0.5   5.776%   9.057%   0.001%   0.000%   0.000%   0.000%   3.370%   5.515%   0.101%   2.694%
    7    7.2  0.5  0.5   7.787%   5.302%   0.000%   0.000%   0.000%   0.000%   5.470%   3.349%   0.854%   1.990%
    8    8.2  0.5  0.5   2.699%   0.920%   0.000%   0.000%   0.000%   0.000%   2.113%   0.815%   0.053%   8.676%
    9    9.2  0.5  0.5   0.000%   0.000%   0.001%  12.176%   0.001%   5.986%   3.035%   0.172%   2.655%   0.011%
   10   10.2  0.5  0.5   0.000%   0.000%   0.014%  12.106%   0.007%   5.975%   0.261%   0.017%   5.579%   0.027%
   11   11.2  0.5  0.5   0.000%   0.004%  12.219%   0.014%   5.995%   0.007%   0.283%   5.025%   0.010%   0.536%
   12   12.2  0.5  0.5   0.000%   0.001%  30.153%   0.002%  15.306%   0.001%   0.000%   0.000%   0.000%   0.000%
   13    1.2  0.5 -0.5   0.000%   0.000%   0.029%   0.000%   0.089%   0.000%   0.000%   0.000%   0.000%   0.001%
   14    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.029%   0.000%   0.090%   0.001%   0.000%   0.000%   0.000%
   15    3.2  0.5 -0.5   0.000%   0.000%   0.029%   0.000%   0.089%   0.000%   0.000%   0.001%   0.000%   0.001%
   16    4.2  0.5 -0.5   2.956%   0.159%   0.000%   0.000%   0.000%   0.000%   2.844%   0.123%   8.662%   0.055%
   17    5.2  0.5 -0.5   1.163%   9.071%   0.000%   0.000%   0.000%   0.000%   0.436%   5.149%   0.177%   5.896%
   18    6.2  0.5 -0.5   9.057%   5.776%   0.000%   0.001%   0.000%   0.000%   5.515%   3.370%   2.694%   0.101%
   19    7.2  0.5 -0.5   5.302%   7.787%   0.000%   0.000%   0.000%   0.000%   3.349%   5.470%   1.990%   0.854%
   20    8.2  0.5 -0.5   0.920%   2.699%   0.000%   0.000%   0.000%   0.000%   0.815%   2.113%   8.676%   0.053%
   21    9.2  0.5 -0.5   0.000%   0.000%  12.176%   0.001%   5.986%   0.001%   0.172%   3.035%   0.011%   2.655%
   22   10.2  0.5 -0.5   0.000%   0.000%  12.106%   0.014%   5.975%   0.007%   0.017%   0.261%   0.027%   5.579%
   23   11.2  0.5 -0.5   0.004%   0.000%   0.014%  12.219%   0.007%   5.995%   5.025%   0.283%   0.536%   0.010%
   24   12.2  0.5 -0.5   0.001%   0.000%   0.002%  30.153%   0.001%  15.306%   0.000%   0.000%   0.000%   0.000%
   25    1.2  1.5  1.5   0.278%   3.858%   1.090%   0.000%   2.620%   0.000%   0.254%   4.698%   0.002%   0.505%
   26    2.2  1.5  1.5   0.520%   0.039%   0.000%   0.000%   0.000%   0.000%   1.453%   0.072%  14.840%   0.058%
   27    3.2  1.5  1.5   0.273%   3.791%   1.123%   0.000%   2.618%   0.000%   0.254%   4.701%   0.002%   0.504%
   28    4.2  1.5  1.5   0.029%   0.406%   1.408%   0.000%   2.815%   0.000%   0.217%   4.022%   0.001%   0.430%
   29    5.2  1.5  1.5   0.136%   0.010%   0.000%   1.323%   0.000%   2.558%   2.315%   0.121%   2.205%   0.009%
   30    6.2  1.5  1.5   0.193%   0.014%   0.000%   4.442%   0.001%   8.628%   2.114%   0.116%   2.429%   0.009%
   31    7.2  1.5  1.5   0.320%   0.023%   0.000%   5.774%   0.001%  11.179%   4.027%   0.218%   0.435%   0.001%
   32    8.2  1.5  1.5   0.028%   0.383%   1.371%   0.000%   2.817%   0.000%   0.217%   4.018%   0.001%   0.434%
   33    9.2  1.5  1.5   1.244%   0.093%   0.000%   0.001%   0.000%   0.000%   1.004%   0.050%  10.242%   0.040%
   34    1.2  1.5  0.5   7.207%   0.522%   0.000%   0.341%   0.000%   0.871%  10.264%   0.544%   1.964%   0.009%
   35    2.2  1.5  0.5   0.088%   1.226%   1.468%   0.000%   3.474%   0.000%   0.085%   1.576%   0.001%   0.172%
   36    3.2  1.5  0.5   3.510%   0.251%   0.000%   0.330%   0.000%   0.863%   3.275%   0.183%   9.298%   0.034%
   37    4.2  1.5  0.5   0.019%   0.001%   0.000%   4.370%   0.001%   8.404%   0.417%   0.021%   4.196%   0.016%
   38    5.2  1.5  0.5   0.015%   0.211%   4.455%   0.000%   8.661%   0.001%   0.116%   2.102%   0.009%   2.416%
   39    6.2  1.5  0.5   0.011%   0.153%   1.323%   0.000%   2.558%   0.000%   0.121%   2.312%   0.009%   2.216%
   40    7.2  1.5  0.5   0.002%   0.021%   0.000%   0.000%   0.000%   0.000%   0.021%   0.416%   0.016%   4.225%
   41    8.2  1.5  0.5   0.013%   0.001%   0.000%   4.405%   0.001%   8.384%   0.410%   0.020%   4.225%   0.016%
   42    9.2  1.5  0.5   2.029%  28.188%   0.001%   0.000%   0.000%   0.000%   0.526%   9.742%   0.003%   1.051%
   43    1.2  1.5 -0.5   0.522%   7.207%   0.341%   0.000%   0.871%   0.000%   0.544%  10.264%   0.009%   1.964%
   44    2.2  1.5 -0.5   1.226%   0.088%   0.000%   1.468%   0.000%   3.474%   1.576%   0.085%   0.172%   0.001%
   45    3.2  1.5 -0.5   0.251%   3.510%   0.330%   0.000%   0.863%   0.000%   0.183%   3.275%   0.034%   9.298%
   46    4.2  1.5 -0.5   0.001%   0.019%   4.370%   0.000%   8.404%   0.001%   0.021%   0.417%   0.016%   4.196%
   47    5.2  1.5 -0.5   0.211%   0.015%   0.000%   4.455%   0.001%   8.661%   2.102%   0.116%   2.416%   0.009%
   48    6.2  1.5 -0.5   0.153%   0.011%   0.000%   1.323%   0.000%   2.558%   2.312%   0.121%   2.216%   0.009%
   49    7.2  1.5 -0.5   0.021%   0.002%   0.000%   0.000%   0.000%   0.000%   0.416%   0.021%   4.225%   0.016%
   50    8.2  1.5 -0.5   0.001%   0.013%   4.405%   0.000%   8.384%   0.001%   0.020%   0.410%   0.016%   4.225%
   51    9.2  1.5 -0.5  28.188%   2.029%   0.000%   0.001%   0.000%   0.000%   9.742%   0.526%   1.051%   0.003%
   52    1.2  1.5 -1.5   3.858%   0.278%   0.000%   1.090%   0.000%   2.620%   4.698%   0.254%   0.505%   0.002%
   53    2.2  1.5 -1.5   0.039%   0.520%   0.000%   0.000%   0.000%   0.000%   0.072%   1.453%   0.058%  14.840%
   54    3.2  1.5 -1.5   3.791%   0.273%   0.000%   1.123%   0.000%   2.618%   4.701%   0.254%   0.504%   0.002%
   55    4.2  1.5 -1.5   0.406%   0.029%   0.000%   1.408%   0.000%   2.815%   4.022%   0.217%   0.430%   0.001%
   56    5.2  1.5 -1.5   0.010%   0.136%   1.323%   0.000%   2.558%   0.000%   0.121%   2.315%   0.009%   2.205%
   57    6.2  1.5 -1.5   0.014%   0.193%   4.442%   0.000%   8.628%   0.001%   0.116%   2.114%   0.009%   2.429%
   58    7.2  1.5 -1.5   0.023%   0.320%   5.774%   0.000%  11.179%   0.001%   0.218%   4.027%   0.001%   0.435%
   59    8.2  1.5 -1.5   0.383%   0.028%   0.000%   1.371%   0.000%   2.817%   4.018%   0.217%   0.434%   0.001%
   60    9.2  1.5 -1.5   0.093%   1.244%   0.001%   0.000%   0.000%   0.000%   0.050%   1.004%   0.040%  10.242%


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

              2       7     3540.03       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     82808.32  69435.88   3952.86   9408.17      6.55      1.07      3.38
 REAL TIME  *     84126.94 SEC
 DISK USED  *         3.51 GB (local),       28.38 GB (total)
 SF USED    *        21.98 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -261.939312185154

              CI              CI           MULTI         RHF-SCF
   -261.93019787   -261.93027447   -261.09388111   -261.43913390
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
