
 Working directory              : /wrk/irikura/molpro.YPGdY8GVpH/
 Global scratch directory       : /wrk/irikura/molpro.YPGdY8GVpH/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.YPGdY8GVpH/

 id        : nistki

 Nodes     nprocs
 comp-18      3
 Distribution of processes:   nprocs(total)=    4   nprocs(compute)=    3   nprocs(helper)=    1
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Br SO-CI
                                                                                 ! active space (7/4)
 memory,3000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Br};
 
 file,2,acqzpp.wfu,new                                                           !this causes failure in version 2024.1.1
 
 basis=aug-cc-pwCVQZ-PP
 
 {rhf;wf,charge=-1}
 
 NDOUB=3
 NQUAR=8
 
 {multi
     occ,8,9
     closed,6,3
     wf,charge=0,sym=2,spin=1;state,NDOUB;
     weight,all,99
     wf,charge=0,sym=2,spin=3;state,NQUAR;
     weight,all,1
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 08:33:13 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (16 PROC) 64 bit mpp version                                                           DATE: 01-Jul-24          TIME: 10:04:27  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      3000 MW
 Total memory per node:   9000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 3000.0 MW


 ZSYMEL=XYZ



 Permanent file  2  acqzpp.wfu       assigned.  Implementation=df  



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              2       2       11.50       500      700   
                                          VAR     GEOM   

 PROGRAMS   *        TOTAL      FILE
 CPU TIMES  *         3.46      3.32
 REAL TIME  *        67.20 SEC
 DISK USED  *        23.00 MB (local),       69.01 MB (total)
 **********************************************************************************************************************************
 SETTING BASIS          =    AUG-CC-PWCVQZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Br   ECP ECP10MDF                 selected for group  1
 Library entry BR     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BR     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BR     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BR     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BR     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry BR     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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

   1  BR     25.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   25
 NUMBER OF PRIMITIVE AOS:         300
 NUMBER OF SYMMETRY AOS:          232
 NUMBER OF CONTRACTIONS:          166   (   86Ag  +   80Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 2 3 4 5 6   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9
                                       101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011  12131415161718192021


 Eigenvalues of metric

         1 0.122E-03 0.994E-03 0.288E-02 0.937E-02 0.937E-02 0.937E-02 0.937E-02 0.937E-02
         2 0.311E-03 0.311E-03 0.311E-03 0.170E-02 0.170E-02 0.170E-02 0.245E-01 0.245E-01


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     91.488 MB (compressed) written to integral file ( 13.1%)

     Node minimum: 22.020 MB, node maximum: 36.962 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   16206444.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15993207      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ    86907878. AND WROTE     2878519. INTEGRALS IN     10 RECORDS. CPU TIME:     0.28 SEC, REAL TIME:     0.32 SEC
 SORT2 READ     8938358. AND WROTE    48612351. INTEGRALS IN    372 RECORDS. CPU TIME:     0.22 SEC, REAL TIME:     0.25 SEC

 Node minimum:    16201790.  Node maximum:    16206444. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.35       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       5       11.76       500      700      610     1000      520   
                                          VAR     GEOM    BASINP    BASIS   MCVARS    

 PROGRAMS   *        TOTAL       INT      FILE
 CPU TIMES  *         6.51      3.05      3.32
 REAL TIME  *        71.58 SEC
 DISK USED  *        41.21 MB (local),      309.19 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -415.54368857    -415.54368857     0.00D+00     0.85D-01     0     0       0.06      0.14    start
   2     -415.57538565      -0.03169707     0.45D-02     0.92D-02     1     0       0.07      0.21    diag
   3     -415.57883902      -0.00345337     0.31D-02     0.31D-02     2     0       0.07      0.28    diag
   4     -415.57899277      -0.00015375     0.56D-03     0.61D-03     3     0       0.07      0.35    diag
   5     -415.57902017      -0.00002740     0.10D-03     0.21D-03     4     0       0.07      0.42    diag
   6     -415.57902149      -0.00000132     0.24D-04     0.57D-04     5     0       0.07      0.49    diag
   7     -415.57902153      -0.00000004     0.25D-05     0.13D-04     6     0       0.07      0.56    diag
   8     -415.57902153      -0.00000000     0.25D-06     0.14D-05     7     0       0.06      0.62    fixocc
   9     -415.57902153      -0.00000000     0.39D-07     0.92D-07     0     0       0.07      0.69    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -415.579021529885
  RHF One-electron energy            -738.023532650494
  RHF Two-electron energy             322.444511120609
  RHF Kinetic energy                  295.793856773771
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.404961638023

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -9.52317     1  1  s    1.00004
    2.1     2.00000    -2.82156     1  1  d0   0.99993
    3.1     2.00000    -2.82156     1  1  d2-  0.90971    1  1  d2+ -0.41502
    4.1     2.00000    -2.82156     1  1  d2-  0.41505    1  1  d2+  0.90972
    5.1     2.00000    -2.82156     1  1  d1+  0.95786    1  1  d1-  0.28689
    6.1     2.00000    -2.82156     1  1  d1+ -0.28689    1  1  d1-  0.95789
    7.1     2.00000    -0.71238     1  1  s   -0.37137    1  4  s    0.47939    1  5  s    0.56885
    1.2     2.00000    -7.27048     1  1  px   0.99974
    2.2     2.00000    -7.27048     1  1  py   0.99974
    3.2     2.00000    -7.27048     1  1  pz   0.99974
    4.2     2.00000    -0.13748     1  2  pz   0.91704
    5.2     2.00000    -0.13748     1  2  px   0.91704
    6.2     2.00000    -0.13748     1  2  py   0.91704


 HOMO      6.2    -0.137484 =      -3.7411eV
 LUMO      7.2     0.210580 =       5.7302eV
 LUMO-HOMO         0.348064 =       9.4713eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.35       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       6       12.11       500      700      610     1000      520     2100   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT      FILE
 CPU TIMES  *         7.21      0.70      3.05      3.32
 REAL TIME  *        72.39 SEC
 DISK USED  *        42.40 MB (local),      312.78 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NDOUB          =         3.00000000                                  
 SETTING NQUAR          =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     149 (   78   71)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.272D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.318D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.315D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.237D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.231D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 5 4 6 1 1 5 3   2 4 6 1 6 4 2 3 5 6   4 3 5 2151412 8 713  10 911 1 6 4 5 3 214
                                       15 712 8 9111310 1 3   5 6 4 2 91112 81415   71310 1 6 4 3 5 2 1   7151412 811 91310 3
                                        5 4 6 2 1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.438D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.438D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.834D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.834D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 3   1 210 8 4 5 6 7 9 3   1 2 5 4 810 6 7 9 4   5 610 8 7 9 3 1 2 5
                                        4 6 9 7 810 3 1 213  21151719141620181112  10 8 5 4 6 9 7 3 1 2   4 5 810 6 9 7 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32459   0.32459   0.32459
 Weight factors for state symmetry  2:    0.00328   0.00328   0.00328   0.00328   0.00328   0.00328   0.00328   0.00328
 
 Number of orbital rotations:  1293  ( 30 closed/active, 681 closed/virtual, 0 active/active, 582 active/virtual )
 Total number of variables:    13441
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   18   78    0   -415.44528745    -415.50276304   -0.05747560    0.25866173 0.00210838 0.00492679  0.18E+01      1.76
   2    9   43    0   -415.49475661    -415.49732987   -0.00257326    0.19020452 0.00049447 0.00057630  0.29E+00      3.08
   3    8   37    0   -415.49733210    -415.49733213   -0.00000003    0.00064318 0.00000079 0.00000044  0.56E-03      4.33
   4    6   26    0   -415.49733213    -415.49733213   -0.00000000    0.00000017 0.00000001 0.00000005  0.86E-05      5.35
   5    2    5    0   -415.49733213    -415.49733213    0.00000000    0.00000002 0.00000000 0.00000000  0.39E-08      6.02

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.30E-08)
                       Final energy:   -415.49733213
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -415.512605242869
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.64584962
 One electron energy                          -729.38249558
 Two electron energy                           313.86989034
 Virial ratio                                    2.40544035
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -415.512605242869
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.64584962
 One electron energy                          -729.38249558
 Two electron energy                           313.86989034
 Virial ratio                                    2.40544035
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -415.512605242809
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.64584962
 One electron energy                          -729.38249558
 Two electron energy                           313.86989033
 Virial ratio                                    2.40544035
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -414.958031530484
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.39146535
 One electron energy                          -727.35709613
 Two electron energy                           312.39906460
 Virial ratio                                    2.40003367
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -414.958031527108
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.39146536
 One electron energy                          -727.35709616
 Two electron energy                           312.39906463
 Virial ratio                                    2.40003367
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -414.958031527108
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.39146536
 One electron energy                          -727.35709616
 Two electron energy                           312.39906463
 Virial ratio                                    2.40003367
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -414.913689695908
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.42539463
 One electron energy                          -727.49270922
 Two electron energy                           312.57901952
 Virial ratio                                    2.39972383
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -414.913689695818
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.42539463
 One electron energy                          -727.49270922
 Two electron energy                           312.57901952
 Virial ratio                                    2.39972383
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -414.913689692187
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.42539465
 One electron energy                          -727.49270925
 Two electron energy                           312.57901955
 Virial ratio                                    2.39972383
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -414.913689692187
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.42539465
 One electron energy                          -727.49270925
 Two electron energy                           312.57901955
 Virial ratio                                    2.39972383
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -414.913689690857
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.42539465
 One electron energy                          -727.49270925
 Two electron energy                           312.57901956
 Virial ratio                                    2.39972383
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.978104527262
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.021895472938
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999999799
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999999999
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.697411312388
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.302588687613
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.000000000096
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000001389939
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.385904265560
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     3.614095734422
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     2.999998609982
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.021895472802
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.978104527303
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999999894
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999999999
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.302588687612
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.697411312389
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     0.999999999916
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     0.999998610072
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.614095734440
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.385904265559
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     3.000001390013
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999999999935
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999999759
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.000000000306
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000002
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     1.000000000000
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999999998
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.999999999987
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.999999999988
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.000000000000
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.000000000019
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.000000000005
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 1 2   3 5 6 4 2 6 4 3 5 1   4 6 3 5 21415 812 7  1310 911 4 6 3 5 214
                                       15 7 812 9111310 1 3   5 4 6 211 9 8121415   71310 1 6 4 5 3 2 1   71415 81211 91310 3
                                        5 4 6 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 1 2 3 3   2 1 810 5 4 6 7 9 3   2 1 5 4 810 6 7 9 3   2 1 4 5 6 810 7 9 4
                                        5 6 9 710 8 3 2 121  13191517141620181112   5 4 810 6 7 9 3 2 1   5 4 810 6 9 7 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -9.87307     1  1  s    0.99316
    2.1     2.00000    -3.17364     1  1  d0   1.00000
    3.1     2.00000    -3.17364     1  1  d1-  1.00000
    4.1     2.00000    -3.17364     1  1  d1+  1.00000
    5.1     2.00000    -3.17364     1  1  d2-  1.00000
    6.1     2.00000    -3.17364     1  1  d2+  1.00000
    7.1     1.99309    -1.03149     1  1  s   -0.39978    1  4  s    0.51072    1  5  s    0.59542
    8.1     0.00597     0.66239     1  1  s    0.44178    1  4  s   -2.28938    1  5  s    0.87843    1  6  s    0.87456
                                    1  9  s    0.42547
    1.2     2.00000    -7.62231     1  1  px   1.00019
    2.2     2.00000    -7.62231     1  1  py   1.00019
    3.2     2.00000    -7.62231     1  1  pz   1.00019
    4.2     1.65054    -0.39273     1  2  py   1.02557
    5.2     1.65054    -0.39273     1  2  px   1.02557
    6.2     1.65054    -0.39273     1  2  pz   1.02557
    7.2     0.01644     0.49725     1  1  px  -0.32937    1  2  px  -2.27981    1  4  px   1.41377    1  5  px   1.04452
    8.2     0.01644     0.49725     1  1  py  -0.32937    1  2  py  -2.27981    1  4  py   1.41377    1  5  py   1.04452
    9.2     0.01644     0.49725     1  1  pz  -0.32937    1  2  pz  -2.27981    1  4  pz   1.41377    1  5  pz   1.04452
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 22a000     -0.00000800     -0.00001542      0.99233557
 20 a22000      0.98141162      0.14683707      0.00001020
 20 2a2000     -0.14683707      0.98141162      0.00001406
 
 Energy:     -415.51260524   -415.51260524   -415.51260524
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 aa200a      0.00000000      0.00000000     -0.00000000     -0.00000025     -0.00000033      0.00000148      0.00000054
 20 2aa0a0      0.00000000     -0.00000000      0.00000000      0.00005447      0.70271426     -0.00000106      0.00000104
 20 a2a0a0      0.69676295      0.00000008     -0.00000094     -0.70271410      0.00005434     -0.00000072     -0.00000122
 20 2aaa00      0.69676295      0.00000008     -0.00000094      0.70271410     -0.00005434      0.00000072      0.00000122
 20 a2aa00      0.00000000      0.00000000     -0.00000000      0.00005422      0.70271394      0.00000042      0.00000158
 20 a2a00a     -0.00000059      0.58187475     -0.38327576      0.00000023     -0.00000076     -0.65596221      0.25203327
 20 2aa00a     -0.00000074     -0.38327576     -0.58187475     -0.00000140     -0.00000111      0.25203327      0.65596221
 20 aa2a00     -0.00000059      0.58187484     -0.38327583     -0.00000023      0.00000076      0.65596211     -0.25203322
 20 aa20a0      0.00000074      0.38327583      0.58187484     -0.00000140     -0.00000111      0.25203322      0.65596211
 aa 22a000     -0.12849858     -0.00000002      0.00000017      0.00000000      0.00000000      0.00000000      0.00000000
 aa a22000     -0.00000011      0.10731065     -0.07068458     -0.00000000     -0.00000000     -0.00000001      0.00000000
 aa 2a2000     -0.00000014     -0.07068458     -0.10731065     -0.00000000     -0.00000000      0.00000000      0.00000001
 
 Energy:     -414.95803153   -414.95803153   -414.95803153   -414.91368970   -414.91368970   -414.91368969   -414.91368969

 State:              8
 20 aa200a      0.81142430
 20 2aa0a0     -0.40571194
 20 a2a0a0     -0.00000022
 20 2aaa00      0.00000022
 20 a2aa00      0.40571251
 20 a2a00a      0.00000103
 20 2aa00a     -0.00000090
 20 aa2a00     -0.00000103
 20 aa20a0     -0.00000090
 aa 22a000      0.00000000
 aa a22000      0.00000000
 aa 2a2000     -0.00000000
 
 Energy:     -414.91368969
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       54.22       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       12.74       500      700      610     1000      520     2100     2140   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT      FILE
 CPU TIMES  *        12.37      5.16      0.70      3.05      3.32
 REAL TIME  *        79.16 SEC
 DISK USED  *        67.06 MB (local),      386.74 MB (total)
 SF USED    *        66.85 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -415.5126052   2.0
    -415.5126052   2.0
    -415.5126052   2.0
    -414.9580315   2.0
    -414.9580315   2.0
    -414.9580315   2.0
    -414.9136897   6.0
    -414.9136897   6.0
    -414.9136897   6.0
    -414.9136897   6.0
    -414.9136897   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 25
 Maximum number of shells:             7
 Maximum number of spin couplings:   429

 Reference space:      554 conf     1204 CSFs
 N elec internal:    56699 conf   278292 CSFs
 N-1 el internal:    59743 conf   501108 CSFs
 N-2 el internal:    32490 conf   411156 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     149 (  78  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -415.51260524
     2      -415.51260524
     3      -415.51260524

 Number of blocks in overlap matrix:   385   Smallest eigenvalue:  0.27D-05
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      37330628
 Number of doubly external configurations:       4815903
 Total number of contracted configurations:     42285831
 Total number of uncontracted configurations: 2315189004

 Diagonal Coupling coefficients finished.               Storage:  64527215 words, CPU-Time:    193.64 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   5571941 words, CPU-time:      0.35 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -415.51260524     0.00000000    -1.11158513  0.27D-01  0.58D-01   233.23
    1     2     2     1.00000000     0.00000000  -415.51260524    -0.00000000    -1.11153142  0.27D-01  0.58D-01   233.23
    1     3     3     1.00000000     0.00000000  -415.51260524     0.00000000    -1.11146872  0.27D-01  0.58D-01   233.23
    2     1     1     1.06357316    -0.96306229  -416.47566753    -0.96306229    -0.01910788  0.18D-02  0.87D-03  2570.79
    2     2     2     1.06359640    -0.96305105  -416.47565629    -0.96305105    -0.01912057  0.18D-02  0.87D-03  2570.79
    2     3     3     1.06361840    -0.96303333  -416.47563857    -0.96303333    -0.01913791  0.18D-02  0.87D-03  2570.79
    3     1     1     1.05940976    -0.98085107  -416.49345632    -0.01778879    -0.00051722  0.30D-04  0.55D-04  4905.17
    3     2     2     1.05941030    -0.98085084  -416.49345608    -0.01779980    -0.00051749  0.30D-04  0.55D-04  4905.17
    3     3     3     1.05940847    -0.98085051  -416.49345575    -0.01781718    -0.00051791  0.30D-04  0.55D-04  4905.17
    4     1     1     1.06039478    -0.98142591  -416.49403115    -0.00057483    -0.00004445  0.21D-05  0.52D-05  7239.99
    4     2     2     1.06039427    -0.98142590  -416.49403115    -0.00057506    -0.00004446  0.21D-05  0.52D-05  7239.99
    4     3     3     1.06039478    -0.98142588  -416.49403112    -0.00057537    -0.00004447  0.21D-05  0.52D-05  7239.99
    5     1     1     1.06095720    -0.98147872  -416.49408396    -0.00005281    -0.00000315  0.16D-06  0.33D-06  9561.49
    5     2     2     1.06095685    -0.98147872  -416.49408396    -0.00005281    -0.00000315  0.16D-06  0.33D-06  9561.49
    5     3     3     1.06095704    -0.98147872  -416.49408396    -0.00005284    -0.00000315  0.16D-06  0.33D-06  9561.49
    6     1     1     1.06098830    -0.98148240  -416.49408765    -0.00000369    -0.00000025  0.11D-07  0.29D-07 11893.98
    6     2     2     1.06098832    -0.98148240  -416.49408765    -0.00000369    -0.00000025  0.11D-07  0.29D-07 11893.98
    6     3     3     1.06098835    -0.98148240  -416.49408765    -0.00000369    -0.00000025  0.11D-07  0.29D-07 11893.98
    7     1     1     1.06099180    -0.98148269  -416.49408793    -0.00000028    -0.00000002  0.15D-08  0.26D-08 14218.35
    7     2     2     1.06099181    -0.98148269  -416.49408793    -0.00000028    -0.00000002  0.15D-08  0.26D-08 14218.35
    7     3     3     1.06099180    -0.98148269  -416.49408793    -0.00000028    -0.00000002  0.15D-08  0.26D-08 14218.35


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.8%
 S   0.4%  36.8%
 P   0.3%  53.8%   5.9%

 Initialization:   1.4%
 Other:            0.7%

 Total CPU:    14218.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/22000           0.9640757   0.0000000  -0.0000000
 222222202222/2000           0.0000000  -0.0000000   0.9640757
 2222222022222/000          -0.0000000   0.9640757   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970480    0.000000   -0.000000
 2           0.000000   -0.000000    0.970480
 3          -0.000000    0.970480    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970480   -0.000000    0.000000
 2          -0.000000    0.970480   -0.000000
 3           0.000000   -0.000000    0.970480


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97048032 (fixed)   0.97072708 (relaxed)   0.97048032 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072445   -0.00225508   -0.83673345
 Singles      0.01268530   -0.09378326   -0.10005340
 Pairs        0.04835068    0.00000000   -0.04469584
 Total        1.06176043   -0.09603833   -0.98148269
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.51260524
 Nuclear energy                         0.00000000
 Kinetic energy                       296.12260815
 One electron energy                 -728.63710149
 Two electron energy                  312.14301356
 Virial quotient                       -1.40649203
 Correlation energy                    -0.98148269
 !MRCI STATE 1.2 Energy              -416.494087928921

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.55470473 (Davidson, fixed reference)
 Cluster corrected energies          -416.55417497 (Davidson, relaxed reference)
 Cluster corrected energies          -416.55470473 (Davidson, rotated reference)

 Cluster corrected energies          -416.55264932 (Pople, fixed reference)
 Cluster corrected energies          -416.55211037 (Pople, relaxed reference)
 Cluster corrected energies          -416.55264932 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97048031 (fixed)   0.97072708 (relaxed)   0.97048031 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072445   -0.00225508   -0.00279357
 Singles      0.01268531   -0.09378328   -0.10005342
 Pairs        0.04835068   -0.88544434   -0.87863569
 Total        1.06176045   -0.98148269   -0.98148269
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.51260524
 Nuclear energy                         0.00000000
 Kinetic energy                       296.12261310
 One electron energy                 -728.63710310
 Two electron energy                  312.14301517
 Virial quotient                       -1.40649201
 Correlation energy                    -0.98148269
 !MRCI STATE 2.2 Energy              -416.494087928873

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.55470474 (Davidson, fixed reference)
 Cluster corrected energies          -416.55417499 (Davidson, relaxed reference)
 Cluster corrected energies          -416.55470474 (Davidson, rotated reference)

 Cluster corrected energies          -416.55264934 (Pople, fixed reference)
 Cluster corrected energies          -416.55211038 (Pople, relaxed reference)
 Cluster corrected energies          -416.55264934 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97048032 (fixed)   0.97072708 (relaxed)   0.97048032 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00072445   -0.00225508   -0.83673344
 Singles      0.01268530   -0.09378326   -0.10005341
 Pairs        0.04835068   -0.00000000   -0.04469584
 Total        1.06176043   -0.09603834   -0.98148269
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.51260524
 Nuclear energy                         0.00000000
 Kinetic energy                       296.12261145
 One electron energy                 -728.63710268
 Two electron energy                  312.14301475
 Virial quotient                       -1.40649201
 Correlation energy                    -0.98148269
 !MRCI STATE 3.2 Energy              -416.494087928765

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.55470472 (Davidson, fixed reference)
 Cluster corrected energies          -416.55417497 (Davidson, relaxed reference)
 Cluster corrected energies          -416.55470472 (Davidson, rotated reference)

 Cluster corrected energies          -416.55264932 (Pople, fixed reference)
 Cluster corrected energies          -416.55211036 (Pople, relaxed reference)
 Cluster corrected energies          -416.55264932 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       54.22       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       8      988.66       500      700      610     1000      520     2100     2140     5203   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT      FILE
 CPU TIMES  *     14532.14  14519.76      5.16      0.70      3.05      3.32
 REAL TIME  *     14801.89 SEC
 DISK USED  *         1.02 GB (local),        3.24 GB (total)
 SF USED    *        10.62 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -416.55470473  AU                              
 SETTING HLSDIAG(2)     =      -416.55470474  AU                              
 SETTING HLSDIAG(3)     =      -416.55470472  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 25
 Maximum number of shells:             6
 Maximum number of spin couplings:   572

 Reference space:      344 conf      656 CSFs
 N elec internal:    52189 conf   229224 CSFs
 N-1 el internal:    51137 conf   453552 CSFs
 N-2 el internal:    21984 conf   385640 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     149 (  78  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -414.95803153
     2      -414.95803153
     3      -414.95803153
     4      -414.91368970
     5      -414.91368970
     6      -414.91368969
     7      -414.91368969
     8      -414.91368969

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1078D-06

 Number of blocks in overlap matrix:   781   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    2264
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      33786040
 Number of doubly external configurations:      12571832
 Total number of contracted configurations:     46472324
 Total number of uncontracted configurations: 2168055314

 Diagonal Coupling coefficients finished.               Storage:  86426839 words, CPU-Time:    999.12 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   8428518 words, CPU-time:      0.91 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -414.95803153    -0.00000000    -1.18443860  0.87D-01  0.55D-01  1097.13
    1     2     2     1.00000000     0.00000000  -414.95803153    -0.00000000    -1.18472114  0.87D-01  0.55D-01  1097.13
    1     3     3     1.00000000     0.00000000  -414.95803153     0.00000000    -1.18474545  0.87D-01  0.55D-01  1097.13
    1     4     4     1.00000000     0.00000000  -414.91368970     0.00000000    -1.21273955  0.10D+00  0.56D-01  1097.13
    1     5     5     1.00000000     0.00000000  -414.91368970    -0.00000000    -1.21192704  0.10D+00  0.56D-01  1097.13
    1     6     6     1.00000000     0.00000000  -414.91368969    -0.00000000    -1.21304162  0.10D+00  0.56D-01  1097.13
    1     7     7     1.00000000     0.00000000  -414.91368969    -0.00000000    -1.21312386  0.10D+00  0.56D-01  1097.13
    1     8     8     1.00000000     0.00000000  -414.91368969     0.00000000    -1.22137366  0.12D+00  0.56D-01  1097.13
    2     1     1     1.10413398    -1.01685244  -415.97488397    -1.01685244    -0.02759368  0.50D-02  0.15D-02  9334.87
    2     2     2     1.10420207    -1.01681513  -415.97484666    -1.01681513    -0.02765931  0.50D-02  0.15D-02  9334.87
    2     3     3     1.10420955    -1.01676801  -415.97479954    -1.01676801    -0.02770858  0.51D-02  0.15D-02  9334.87
    2     4     4     1.11288580    -1.02717269  -415.94086238    -1.02717269    -0.03616116  0.83D-02  0.18D-02  9334.87
    2     5     5     1.11318041    -1.02667732  -415.94036702    -1.02667732    -0.03673270  0.85D-02  0.19D-02  9334.87
    2     6     6     1.11331112    -1.02649308  -415.94018278    -1.02649308    -0.03694225  0.86D-02  0.19D-02  9334.87
    2     7     7     1.11334201    -1.02643407  -415.94012377    -1.02643407    -0.03700740  0.86D-02  0.19D-02  9334.87
    2     8     8     1.12505990    -1.02420738  -415.93789707    -1.02420738    -0.03900105  0.10D-01  0.20D-02  9334.87
    3     1     1     1.10314075    -1.04366991  -416.00170144    -0.02681747    -0.00092206  0.10D-03  0.93D-04 17550.29
    3     2     2     1.10313367    -1.04366579  -416.00169732    -0.02685066    -0.00092462  0.10D-03  0.93D-04 17550.29
    3     3     3     1.10313447    -1.04366329  -416.00169482    -0.02689528    -0.00092499  0.10D-03  0.93D-04 17550.29
    3     4     4     1.11060592    -1.06227609  -415.97596578    -0.03510340    -0.00129754  0.20D-03  0.11D-03 17550.29
    3     5     5     1.11078866    -1.06226065  -415.97595034    -0.03558333    -0.00130932  0.20D-03  0.12D-03 17550.29
    3     6     6     1.11077389    -1.06225169  -415.97594138    -0.03575860    -0.00131848  0.20D-03  0.12D-03 17550.29
    3     7     7     1.11076905    -1.06224776  -415.97593745    -0.03581369    -0.00132140  0.20D-03  0.12D-03 17550.29
    3     8     8     1.11282787    -1.06204059  -415.97573028    -0.03783321    -0.00147217  0.27D-03  0.12D-03 17550.29
    4     1     1     1.10765560    -1.04474622  -416.00277775    -0.00107632    -0.00008650  0.83D-05  0.95D-05 25779.20
    4     2     2     1.10765725    -1.04474566  -416.00277719    -0.00107987    -0.00008691  0.83D-05  0.95D-05 25779.20
    4     3     3     1.10765649    -1.04474493  -416.00277646    -0.00108164    -0.00008733  0.84D-05  0.95D-05 25779.20
    4     4     4     1.11714923    -1.06378576  -415.97747546    -0.00150968    -0.00010860  0.10D-04  0.12D-04 25779.20
    4     5     5     1.11715410    -1.06378107  -415.97747076    -0.00152042    -0.00011220  0.11D-04  0.13D-04 25779.20
    4     6     6     1.11714704    -1.06378067  -415.97747036    -0.00152898    -0.00011271  0.11D-04  0.13D-04 25779.20
    4     7     7     1.11714576    -1.06378009  -415.97746978    -0.00153233    -0.00011310  0.11D-04  0.13D-04 25779.20
    4     8     8     1.11742479    -1.06375813  -415.97744782    -0.00171754    -0.00013316  0.18D-04  0.14D-04 25779.20
    5     1     1     1.10901234    -1.04484986  -416.00288139    -0.00010364    -0.00001018  0.11D-05  0.11D-05 34005.39
    5     2     2     1.10901388    -1.04484982  -416.00288135    -0.00010416    -0.00001022  0.11D-05  0.12D-05 34005.39
    5     3     3     1.10901471    -1.04484964  -416.00288117    -0.00010471    -0.00001031  0.12D-05  0.12D-05 34005.39
    5     4     4     1.11887438    -1.06391868  -415.97760838    -0.00013292    -0.00001380  0.15D-05  0.16D-05 34005.39
    5     5     5     1.11887528    -1.06391863  -415.97760833    -0.00013756    -0.00001385  0.15D-05  0.16D-05 34005.39
    5     6     6     1.11887702    -1.06391861  -415.97760831    -0.00013795    -0.00001382  0.15D-05  0.16D-05 34005.39
    5     7     7     1.11886524    -1.06391842  -415.97760812    -0.00013833    -0.00001325  0.14D-05  0.16D-05 34005.39
    5     8     8     1.11884041    -1.06391631  -415.97760600    -0.00015818    -0.00001512  0.17D-05  0.18D-05 34005.39
    6     1     1     1.10895040    -1.04486232  -416.00289385    -0.00001246    -0.00000129  0.95D-07  0.15D-06 42225.45
    6     2     2     1.10895019    -1.04486232  -416.00289385    -0.00001250    -0.00000130  0.96D-07  0.15D-06 42225.45
    6     3     3     1.10894982    -1.04486228  -416.00289381    -0.00001264    -0.00000132  0.96D-07  0.15D-06 42225.45
    6     4     4     1.11883070    -1.06393592  -415.97762562    -0.00001724    -0.00000198  0.19D-06  0.22D-06 42225.45
    6     5     5     1.11883063    -1.06393592  -415.97762561    -0.00001729    -0.00000198  0.19D-06  0.22D-06 42225.45
    6     6     6     1.11883053    -1.06393591  -415.97762561    -0.00001730    -0.00000198  0.19D-06  0.22D-06 42225.45
    6     7     7     1.11883273    -1.06393520  -415.97762490    -0.00001678    -0.00000196  0.19D-06  0.22D-06 42225.45
    6     8     8     1.11880480    -1.06393473  -415.97762443    -0.00001843    -0.00000223  0.21D-06  0.26D-06 42225.45
    7     1     1     1.10893009    -1.04486382  -416.00289535    -0.00000150    -0.00000018  0.14D-07  0.21D-07 50444.33
    7     2     2     1.10893008    -1.04486383  -416.00289535    -0.00000150    -0.00000018  0.14D-07  0.21D-07 50444.33
    7     3     3     1.10892941    -1.04486382  -416.00289535    -0.00000154    -0.00000019  0.14D-07  0.21D-07 50444.33
    7     4     4     1.11883432    -1.06393822  -415.97762791    -0.00000229    -0.00000030  0.23D-07  0.36D-07 50444.33
    7     5     5     1.11883456    -1.06393821  -415.97762791    -0.00000230    -0.00000030  0.23D-07  0.36D-07 50444.33
    7     6     6     1.11883456    -1.06393822  -415.97762791    -0.00000230    -0.00000030  0.23D-07  0.36D-07 50444.33
    7     7     7     1.11883542    -1.06393748  -415.97762718    -0.00000228    -0.00000030  0.23D-07  0.35D-07 50444.33
    7     8     8     1.11883001    -1.06393741  -415.97762710    -0.00000267    -0.00000035  0.29D-07  0.41D-07 50444.33
    8     1     1     1.10895202    -1.04486404  -416.00289557    -0.00000022    -0.00000003  0.30D-08  0.36D-08 58692.49
    8     2     2     1.10895204    -1.04486404  -416.00289557    -0.00000022    -0.00000003  0.29D-08  0.35D-08 58692.49
    8     3     3     1.10895200    -1.04486404  -416.00289557    -0.00000022    -0.00000003  0.29D-08  0.35D-08 58692.49
    8     4     4     1.11885690    -1.06393859  -415.97762828    -0.00000037    -0.00000006  0.50D-08  0.66D-08 58692.49
    8     5     5     1.11885679    -1.06393859  -415.97762828    -0.00000037    -0.00000006  0.50D-08  0.66D-08 58692.49
    8     6     6     1.11885675    -1.06393859  -415.97762828    -0.00000037    -0.00000006  0.50D-08  0.66D-08 58692.49
    8     7     7     1.11885681    -1.06393785  -415.97762754    -0.00000037    -0.00000006  0.47D-08  0.65D-08 58692.49
    8     8     8     1.11885498    -1.06393784  -415.97762753    -0.00000043    -0.00000007  0.76D-08  0.74D-08 58692.49
    9     1     1     1.10895202    -1.04486404  -416.00289557    -0.00000000    -0.00000003  0.30D-08  0.36D-08 64868.75
    9     2     2     1.10895204    -1.04486404  -416.00289557    -0.00000000    -0.00000003  0.29D-08  0.35D-08 64868.75
    9     3     3     1.10895200    -1.04486404  -416.00289557    -0.00000000    -0.00000003  0.29D-08  0.35D-08 64868.75
    9     4     4     1.11886849    -1.06393867  -415.97762836    -0.00000008    -0.00000001  0.44D-09  0.60D-09 64868.75
    9     5     5     1.11886468    -1.06393866  -415.97762835    -0.00000007    -0.00000001  0.17D-08  0.13D-08 64868.75
    9     6     6     1.11886468    -1.06393866  -415.97762835    -0.00000007    -0.00000001  0.17D-08  0.13D-08 64868.75
    9     7     7     1.11886834    -1.06393793  -415.97762762    -0.00000008    -0.00000001  0.43D-09  0.58D-09 64868.75
    9     8     8     1.11887017    -1.06393793  -415.97762762    -0.00000009    -0.00000001  0.78D-09  0.72D-09 64868.75


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.2%  26.4%
 P   0.2%  57.2%  12.5%

 Initialization:   1.5%
 Other:            1.4%

 Total CPU:    64868.8 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222//200/           0.0000000  -0.0000000   0.0000000   0.0001131   0.0000001  -0.0000001  -0.0101523   0.7656667
 222222202222//0/0           0.0000000   0.0000000  -0.0000000  -0.0000378  -0.0000047   0.0000074   0.6681651  -0.3740438
 22222220222/2/0/0           0.6613135  -0.0293104  -0.0052856   0.6631471  -0.0003007   0.0000240  -0.0000174  -0.0000982
 222222202222///00           0.6613135  -0.0293104  -0.0052856  -0.6631471   0.0003007  -0.0000240   0.0000174   0.0000982
 22222220222//2/00           0.0064716   0.0267420   0.6614119   0.0001406   0.3547741   0.5602685  -0.0000037  -0.0000000
 22222220222/2/00/           0.0064716   0.0267420   0.6614118  -0.0001406  -0.3547741  -0.5602686   0.0000037   0.0000000
 22222220222//20/0           0.0290715   0.6607938  -0.0270015   0.0002669   0.5602685  -0.3547741   0.0000078  -0.0000000
 222222202222//00/          -0.0290715  -0.6607937   0.0270015   0.0002669   0.5602686  -0.3547742   0.0000078  -0.0000000
 22222220222/2//00           0.0000000   0.0000000  -0.0000000   0.0000753  -0.0000046   0.0000072   0.6580128   0.3916281
 222222//222/22000           0.0010509   0.0043426   0.1074051  -0.0000000  -0.0000001  -0.0000001   0.0000000   0.0000000
 222222//22222/000          -0.1073892   0.0047596   0.0008583  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 222222//2222/2000          -0.0047209  -0.1073048   0.0043847   0.0000000   0.0000001  -0.0000001   0.0000000   0.0000000
 22222220222/\///0          -0.0000000  -0.0000000  -0.0000000  -0.0580157   0.0000263  -0.0000021   0.0000015   0.0000086

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 22222220222//2000  20.2    -0.0000000   0.0000000  -0.0000000  -0.0000216  -0.0000000   0.0000000   0.0019378  -0.1461431
 222222202222//000  21.2    -0.0000000  -0.0000000   0.0000000   0.0000072   0.0000009  -0.0000014  -0.1275339   0.0713956
 22222220222/2/000  21.2    -0.1185934   0.0052562   0.0009479  -0.1265757   0.0000574  -0.0000046   0.0000033   0.0000187
 222222202222//000  22.2    -0.1185934   0.0052562   0.0009479   0.1265757  -0.0000574   0.0000046  -0.0000033  -0.0000187
 22222220222/2/000  22.2    -0.0000000  -0.0000000   0.0000000  -0.0000144   0.0000009  -0.0000014  -0.1255961  -0.0747520
 22222220222/2/000  20.2    -0.0011606  -0.0047956  -0.1186109   0.0000268   0.0677152   0.1069376  -0.0000007  -0.0000000
 22222220222//2000  22.2    -0.0011606  -0.0047956  -0.1186109  -0.0000268  -0.0677152  -0.1069376   0.0000007   0.0000000
 222222202222//000  20.2     0.0052134   0.1185001  -0.0048422  -0.0000509  -0.1069376   0.0677152  -0.0000015   0.0000000
 22222220222//2000  21.2    -0.0052134  -0.1185001   0.0048422  -0.0000509  -0.1069375   0.0677152  -0.0000015   0.0000000
 22222220222//2000  10.2    -0.0000000   0.0000000  -0.0000000  -0.0000127  -0.0000000   0.0000000   0.0011386  -0.0858654
 222222202222//000  11.2    -0.0000000   0.0000000   0.0000000   0.0000042   0.0000005  -0.0000008  -0.0749322   0.0419559
 22222220222/2/000  11.2    -0.0680122   0.0030144   0.0005436  -0.0743693   0.0000337  -0.0000027   0.0000020   0.0000110
 222222202222//000  12.2    -0.0680122   0.0030144   0.0005436   0.0743691  -0.0000337   0.0000027  -0.0000020  -0.0000110
 22222220222/2/000  12.2    -0.0000000  -0.0000000   0.0000000  -0.0000084   0.0000005  -0.0000008  -0.0737935  -0.0439280
 22222220222/2/000  10.2    -0.0006656  -0.0027503  -0.0680225   0.0000158   0.0397877   0.0628338  -0.0000004  -0.0000000
 22222220222//2000  12.2    -0.0006656  -0.0027503  -0.0680223  -0.0000158  -0.0397877  -0.0628337   0.0000004   0.0000000
 222222202222//000  10.2     0.0029898   0.0679589  -0.0027770  -0.0000299  -0.0628337   0.0397877  -0.0000009   0.0000000
 22222220222//2000  11.2    -0.0029898  -0.0679587   0.0027769  -0.0000299  -0.0628338   0.0397877  -0.0000009   0.0000000
 22222220222//2000  30.2     0.0000000  -0.0000000   0.0000000   0.0000080   0.0000000  -0.0000000  -0.0007182   0.0541678

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.947898    0.041670    0.009276   -0.000000    0.000000    0.000000    0.000000    0.000000
 2          -0.042012    0.947153    0.038331    0.000000    0.000000    0.000000    0.000000   -0.000000
 3          -0.007576   -0.038703    0.948039   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.944674    0.000027    0.000380    0.000200    0.000140
 5          -0.000000   -0.000000   -0.000000   -0.000428   -0.000007    0.798121    0.505387    0.000000
 6           0.000000    0.000000   -0.000000    0.000034    0.000010   -0.505387    0.798121   -0.000000
 7          -0.000000   -0.000000    0.000000   -0.000025    0.944593    0.000011   -0.000005   -0.012374
 8          -0.000000    0.000000   -0.000000   -0.000140    0.012374   -0.000000   -0.000000    0.944593

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.948859   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.948859    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.948859    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.944674    0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.944676    0.000000    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.944676    0.000000    0.000000
 7          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.944674    0.000000
 8          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.944674


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.94789786 (fixed)   0.94951570 (relaxed)   0.94885867 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157663   -0.00201961   -0.78502670
 Singles      0.06491671   -0.17458190   -0.21824602
 Pairs        0.04420709   -0.00000000   -0.04159132
 Total        1.11070043   -0.17660152   -1.04486404
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -414.95803153
 Nuclear energy                         0.00000000
 Kinetic energy                       296.30850433
 One electron energy                 -725.30892354
 Two electron energy                  309.30602797
 Virial quotient                       -1.40395193
 Correlation energy                    -1.04486404
 !MRCI STATE 1.2 Energy              -416.002895570555

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.11856247 (Davidson, fixed reference)
 Cluster corrected energies          -416.11695693 (Davidson, relaxed reference)
 Cluster corrected energies          -416.11856247 (Davidson, rotated reference)

 Cluster corrected energies          -416.11837849 (Pople, fixed reference)
 Cluster corrected energies          -416.11662248 (Pople, relaxed reference)
 Cluster corrected energies          -416.11837849 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.94715283 (fixed)   0.94951569 (relaxed)   0.94885866 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157663   -0.00201961   -0.78502678
 Singles      0.06491665   -0.17458181   -0.21824601
 Pairs        0.04420717    0.00000000   -0.04159125
 Total        1.11070045   -0.17660142   -1.04486404
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -414.95803153
 Nuclear energy                         0.00000000
 Kinetic energy                       296.30853557
 One electron energy                 -725.30893504
 Two electron energy                  309.30603947
 Virial quotient                       -1.40395178
 Correlation energy                    -1.04486404
 !MRCI STATE 2.2 Energy              -416.002895570239

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.11856248 (Davidson, fixed reference)
 Cluster corrected energies          -416.11695695 (Davidson, relaxed reference)
 Cluster corrected energies          -416.11856248 (Davidson, rotated reference)

 Cluster corrected energies          -416.11837851 (Pople, fixed reference)
 Cluster corrected energies          -416.11662251 (Pople, relaxed reference)
 Cluster corrected energies          -416.11837851 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.94803876 (fixed)   0.94951571 (relaxed)   0.94885868 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00157662   -0.00201961   -0.78502682
 Singles      0.06491662   -0.17458180   -0.21824600
 Pairs        0.04420715   -0.00000000   -0.04159122
 Total        1.11070040   -0.17660141   -1.04486404
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -414.95803153
 Nuclear energy                         0.00000000
 Kinetic energy                       296.30853287
 One electron energy                 -725.30893388
 Two electron energy                  309.30603831
 Virial quotient                       -1.40395179
 Correlation energy                    -1.04486404
 !MRCI STATE 3.2 Energy              -416.002895569979

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.11856244 (Davidson, fixed reference)
 Cluster corrected energies          -416.11695690 (Davidson, relaxed reference)
 Cluster corrected energies          -416.11856244 (Davidson, rotated reference)

 Cluster corrected energies          -416.11837846 (Pople, fixed reference)
 Cluster corrected energies          -416.11662246 (Pople, relaxed reference)
 Cluster corrected energies          -416.11837846 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.94467430 (fixed)   0.94528830 (relaxed)   0.94467441 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00151315   -0.00215873   -0.77813647
 Singles      0.07457936   -0.19347055   -0.24346578
 Pairs        0.04446900   -0.00012824   -0.04233642
 Total        1.12056150   -0.19575752   -1.06393867
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -414.91368970
 Nuclear energy                         0.00000000
 Kinetic energy                       296.31006308
 One electron energy                 -725.36854375
 Two electron energy                  309.39091538
 Virial quotient                       -1.40385927
 Correlation energy                    -1.06393867
 !MRCI STATE 4.2 Energy              -415.977628364916

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.10589841 (Davidson, fixed reference)
 Cluster corrected energies          -416.10435042 (Davidson, relaxed reference)
 Cluster corrected energies          -416.10589841 (Davidson, rotated reference)

 Cluster corrected energies          -416.10680803 (Pople, fixed reference)
 Cluster corrected energies          -416.10508572 (Pople, relaxed reference)
 Cluster corrected energies          -416.10680803 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.79812055 (fixed)   0.94528991 (relaxed)   0.94467601 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00151317   -0.00215874   -0.77825694
 Singles      0.07457805   -0.19346669   -0.24346577
 Pairs        0.04446649   -0.00000007   -0.04221595
 Total        1.12055771   -0.19562551   -1.06393866
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -414.91368969
 Nuclear energy                         0.00000000
 Kinetic energy                       296.31006896
 One electron energy                 -725.36852467
 Two electron energy                  309.39089632
 Virial quotient                       -1.40385924
 Correlation energy                    -1.06393866
 !MRCI STATE 5.2 Energy              -415.977628352201

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.10589436 (Davidson, fixed reference)
 Cluster corrected energies          -416.10434635 (Davidson, relaxed reference)
 Cluster corrected energies          -416.10589436 (Davidson, rotated reference)

 Cluster corrected energies          -416.10680352 (Pople, fixed reference)
 Cluster corrected energies          -416.10508120 (Pople, relaxed reference)
 Cluster corrected energies          -416.10680352 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.79812064 (fixed)   0.94528991 (relaxed)   0.94467601 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00151317   -0.00215874   -0.77825712
 Singles      0.07457805   -0.19346668   -0.24346576
 Pairs        0.04446649    0.00000012   -0.04221578
 Total        1.12055770   -0.19562531   -1.06393866
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -414.91368969
 Nuclear energy                         0.00000000
 Kinetic energy                       296.31006950
 One electron energy                 -725.36852484
 Two electron energy                  309.39089649
 Virial quotient                       -1.40385924
 Correlation energy                    -1.06393866
 !MRCI STATE 6.2 Energy              -415.977628351938

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.10589435 (Davidson, fixed reference)
 Cluster corrected energies          -416.10434635 (Davidson, relaxed reference)
 Cluster corrected energies          -416.10589435 (Davidson, rotated reference)

 Cluster corrected energies          -416.10680352 (Pople, fixed reference)
 Cluster corrected energies          -416.10508120 (Pople, relaxed reference)
 Cluster corrected energies          -416.10680352 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94459341 (fixed)   0.94528837 (relaxed)   0.94467445 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00151319   -0.00215865   -0.78840124
 Singles      0.07457925   -0.19346987   -0.24346492
 Pairs        0.04446896    0.01137400   -0.03207177
 Total        1.12056140   -0.18425453   -1.06393793
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -414.91368970
 Nuclear energy                         0.00000000
 Kinetic energy                       296.31006489
 One electron energy                 -725.36854262
 Two electron energy                  309.39091500
 Virial quotient                       -1.40385926
 Correlation energy                    -1.06393793
 !MRCI STATE 7.2 Energy              -415.977627624145

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.10589747 (Davidson, fixed reference)
 Cluster corrected energies          -416.10434942 (Davidson, relaxed reference)
 Cluster corrected energies          -416.10589747 (Davidson, rotated reference)

 Cluster corrected energies          -416.10680708 (Pople, fixed reference)
 Cluster corrected energies          -416.10508470 (Pople, relaxed reference)
 Cluster corrected energies          -416.10680708 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.94459261 (fixed)   0.94528760 (relaxed)   0.94467367 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00151322   -0.00215865   -0.00342962
 Singles      0.07458093   -0.19347116   -0.24346627
 Pairs        0.04446911   -0.86823363   -0.81704203
 Total        1.12056327   -1.06386344   -1.06393793
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -414.91368969
 Nuclear energy                         0.00000000
 Kinetic energy                       296.30990670
 One electron energy                 -725.36846946
 Two electron energy                  309.39084184
 Virial quotient                       -1.40386001
 Correlation energy                    -1.06393793
 !MRCI STATE 8.2 Energy              -415.977627619072

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.10589945 (Davidson, fixed reference)
 Cluster corrected energies          -416.10435136 (Davidson, relaxed reference)
 Cluster corrected energies          -416.10589945 (Davidson, rotated reference)

 Cluster corrected energies          -416.10680929 (Pople, fixed reference)
 Cluster corrected energies          -416.10508686 (Pople, relaxed reference)
 Cluster corrected energies          -416.10680929 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       54.22       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       9     3844.51       500      700      610     1000      520     2100     2140     5203     5303   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT      FILE
 CPU TIMES  *     85238.23  70706.09  14519.76      5.16      0.70      3.05      3.32
 REAL TIME  *     86188.61 SEC
 DISK USED  *         3.81 GB (local),       11.60 GB (total)
 SF USED    *        29.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -416.11856247  AU                              
 SETTING HLSDIAG(5)     =      -416.11856248  AU                              
 SETTING HLSDIAG(6)     =      -416.11856244  AU                              
 SETTING HLSDIAG(7)     =      -416.10589841  AU                              
 SETTING HLSDIAG(8)     =      -416.10589436  AU                              
 SETTING HLSDIAG(9)     =      -416.10589435  AU                              
 SETTING HLSDIAG(10)    =      -416.10589747  AU                              
 SETTING HLSDIAG(11)    =      -416.10589945  AU                              


         HLSDIAG
    -416.5547047
    -416.5547047
    -416.5547047
    -416.1185625
    -416.1185625
    -416.1185624
    -416.1058984
    -416.1058944
    -416.1058944
    -416.1058975
    -416.1058995
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -416.494088   -416.494088   -416.494088
 Replaced energies:   -416.554705   -416.554705   -416.554705

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:   -416.002896   -416.002896   -416.002896   -415.977628   -415.977628   -415.977628   -415.977628   -415.977628
 Replaced energies:   -416.118562   -416.118562   -416.118562   -416.105898   -416.105894   -416.105894   -416.105897   -416.105899



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -416.55470474

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.04
                            0.00      -0.00   -1219.86       0.00    1219.86      -0.00    -679.73      30.13       5.43    -694.48

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00    1219.86      30.81     700.36     -28.62      -0.29
                            0.00      -0.00       0.00   -1219.86       0.00       0.00      -6.86     -28.34    -700.87       0.15

    3   3.2  0.5  0.5       0.00       0.00       0.00      -0.00   -1219.86      -0.00    -679.71      30.13       5.43     694.55
                         1219.86      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.08

    4   1.2  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1219.86      -0.00      -0.00       0.00    1219.86       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5      -0.00       0.00   -1219.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1219.86      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5       0.00    1219.86      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00   -1219.86       0.00       0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5      -0.00      30.81    -679.71       0.00       0.00       0.00   95722.16       0.00       0.00       0.00
                          679.73       6.86       0.00      -0.00      -0.00      -0.00      -0.00       2.33     -12.92       0.18

    8   2.2  1.5  1.5      -0.00     700.36      30.13       0.00       0.00       0.00       0.00   95722.16       0.00       0.00
                          -30.13      28.34       0.00      -0.00      -0.00      -0.00      -2.33       0.00    -291.59       0.19

    9   3.2  1.5  1.5       0.00     -28.62       5.43       0.00       0.00       0.00       0.00       0.00   95722.17       0.00
                           -5.43     700.87      -0.00      -0.00      -0.00      -0.00      12.92     291.59       0.00      -0.42

   10   4.2  1.5  1.5       0.04      -0.29     694.55       0.00       0.00       0.00       0.00       0.00       0.00   98501.60
                          694.48      -0.15       0.08      -0.00      -0.00      -0.00      -0.18      -0.19       0.42      -0.00

   11   5.2  1.5  1.5       0.01    -604.63      -0.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.31    -382.96      -0.01      -0.00      -0.00      -0.00     -15.42    -505.95     876.44       0.01

   12   6.2  1.5  1.5      -0.01     382.86       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03    -604.79       0.01      -0.00      -0.00      -0.00     -42.85    -875.43    -506.12       0.12

   13   7.2  1.5  1.5    -724.05      -0.01      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00     713.05      -0.00      -0.00      -0.00      15.48      -0.68      -0.11     519.49

   14   8.2  1.5  1.5     403.97       0.00      -0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.10       0.00     424.85      -0.00      -0.00      -0.00   -1167.39      51.74       9.33       6.89

   15   1.2  1.5  0.5       0.00       0.00       0.00      -0.00      17.79    -392.43       0.00    -168.38       6.81      25.42
                           35.51       0.00       7.69     392.44       3.96       0.00      -0.00       6.87     168.22       5.83

   16   2.2  1.5  0.5       0.00       0.00       0.00      -0.00     404.35      17.39     168.38      -0.00      -1.65     583.17
                          807.05      -0.00      31.78     -17.39      16.36       0.00      -6.87      -0.00      -7.40      23.53

   17   3.2  1.5  0.5       0.00       0.00       0.00       0.00     -16.52       3.14      -6.81       1.65       0.00     -23.86
                          -32.98       0.00     786.13      -3.14     404.65      -0.00    -168.22       7.40      -0.00     583.71

   18   4.2  1.5  0.5       0.00       0.00       0.00       0.02      -0.17     401.00     -25.43    -583.30      23.87       0.00
                            0.33       0.14       0.17     400.96      -0.09       0.05      -5.83     -23.53    -583.84       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00       0.00    -349.08      -0.18     493.20     -21.59      -3.95     126.74
                          697.25       0.00     429.91      -0.18    -221.10      -0.00    -312.30      13.85       2.76      80.27

   20   6.2  1.5  0.5       0.00       0.00       0.00      -0.00     221.05       0.01    -312.30      13.82       2.49     -80.20
                         -441.51      -0.00     678.93       0.01    -349.17       0.00    -493.19      21.86       3.92     126.70

   21   7.2  1.5  0.5       0.00       0.00       0.00    -418.03      -0.00      -0.01      -5.75     -23.77    -588.25      -0.03
                            0.01     -12.70      -0.00      -0.01       0.00     411.68      25.47     578.77     -23.63       0.06

   22   8.2  1.5  0.5       0.00       0.00       0.00     233.23       0.00      -0.06       3.23      13.40     329.30      -0.06
                           -0.00     957.19      -0.00      -0.06       0.00     245.29      15.16     344.47     -13.99      -0.10

   23   1.2  1.5 -0.5      -0.00      17.79    -392.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -392.44      -3.96      -0.00      35.51       0.00       7.69      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5      -0.00     404.35      17.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           17.39     -16.36      -0.00     807.05      -0.00      31.78      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5       0.00     -16.52       3.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.14    -404.65       0.00     -32.98       0.00     786.13      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5       0.02      -0.17     401.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -400.96       0.09      -0.05       0.33       0.14       0.17      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5       0.00    -349.08      -0.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.18     221.10       0.00     697.25       0.00     429.91      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5      -0.00     221.05       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01     349.17      -0.00    -441.51      -0.00     678.93      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5    -418.03      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00    -411.68       0.01     -12.70      -0.00      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5     233.23       0.00      -0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.06      -0.00    -245.29      -0.00     957.19      -0.00      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      -0.00      30.81    -679.71       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -679.73      -6.86      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00      -0.00     700.36      30.13       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      30.13     -28.34      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00     -28.62       5.43       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       5.43    -700.87       0.00      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.04      -0.29     694.55       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -694.48       0.15      -0.08      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.01    -604.63      -0.31       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.31     382.96       0.01      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00      -0.01     382.86       0.03       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.03     604.79      -0.01      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00    -724.05      -0.01      -0.02       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.02      -0.00    -713.05      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00     403.97       0.00      -0.10       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.10      -0.00    -424.85      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5       0.01      -0.01    -724.05     403.97       0.00       0.00       0.00       0.00       0.00       0.00
                            0.31      -0.03       0.02       0.10     -35.51    -807.05      32.98      -0.33    -697.25     441.51

    2   2.2  0.5  0.5    -604.63     382.86      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          382.96     604.79      -0.00      -0.00      -0.00       0.00      -0.00      -0.14      -0.00       0.00

    3   3.2  0.5  0.5      -0.31       0.03      -0.02      -0.10       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.01    -713.05    -424.85      -7.69     -31.78    -786.13      -0.17    -429.91    -678.93

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.02       0.00      -0.00
                            0.00       0.00       0.00       0.00    -392.44      17.39       3.14    -400.96       0.18      -0.01

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      17.79     404.35     -16.52      -0.17    -349.08     221.05
                            0.00       0.00       0.00       0.00      -3.96     -16.36    -404.65       0.09     221.10     349.17

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00    -392.43      17.39       3.14     401.00      -0.18       0.01
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.05       0.00      -0.00

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00     168.38      -6.81     -25.43     493.20    -312.30
                           15.42      42.85     -15.48    1167.39       0.00       6.87     168.22       5.83     312.30     493.19

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00    -168.38      -0.00       1.65    -583.30     -21.59      13.82
                          505.95     875.43       0.68     -51.74      -6.87       0.00      -7.40      23.53     -13.85     -21.86

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00       6.81      -1.65       0.00      23.87      -3.95       2.49
                         -876.44     506.12       0.11      -9.33    -168.22       7.40       0.00     583.84      -2.76      -3.92

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00      25.42     583.17     -23.86       0.00     126.74     -80.20
                           -0.01      -0.12    -519.49      -6.89      -5.83     -23.53    -583.71      -0.00     -80.27    -126.70

   11   5.2  1.5  1.5   98502.49       0.00       0.00       0.00    -493.09      21.59       3.95    -126.74       0.00       0.03
                            0.00    -259.78       0.24       0.00    -312.22      13.84       2.76      80.27      -0.00       0.06

   12   6.2  1.5  1.5       0.00   98502.49       0.00       0.00     312.23     -13.82      -2.49      80.20      -0.03      -0.00
                          259.78      -0.00      -0.02      -0.00    -493.08      21.86       3.92     126.69      -0.06       0.00

   13   7.2  1.5  1.5       0.00       0.00   98501.81       0.00       5.75      23.76     588.12       0.03      78.38     123.79
                           -0.24       0.02       0.00      -0.08      25.46     578.64     -23.63       0.06     129.61     -82.07

   14   8.2  1.5  1.5       0.00       0.00       0.00   98501.37      -3.23     -13.40    -329.23       0.06     140.01     221.14
                           -0.00       0.00       0.08      -0.00      15.15     344.39     -13.99      -0.10    -217.76     137.92

   15   1.2  1.5  0.5    -493.09     312.23       5.75      -3.23   95722.16       0.00       0.00       0.00       0.00       0.00
                          312.22     493.08     -25.46     -15.15      -0.00       0.78      -4.31       0.06       5.14      14.28

   16   2.2  1.5  0.5      21.59     -13.82      23.76     -13.40       0.00   95722.16       0.00       0.00       0.00       0.00
                          -13.84     -21.86    -578.64    -344.39      -0.78       0.00     -97.20       0.06     168.65     291.81

   17   3.2  1.5  0.5       3.95      -2.49     588.12    -329.23       0.00       0.00   95722.17       0.00       0.00       0.00
                           -2.76      -3.92      23.63      13.99       4.31      97.20       0.00      -0.14    -292.15     168.71

   18   4.2  1.5  0.5    -126.74      80.20       0.03       0.06       0.00       0.00       0.00   98501.60       0.00       0.00
                          -80.27    -126.69      -0.06       0.10      -0.06      -0.06       0.14      -0.00      -0.00      -0.04

   19   5.2  1.5  0.5       0.00      -0.03      78.38     140.01       0.00       0.00       0.00       0.00   98502.49       0.00
                            0.00       0.06    -129.61     217.76      -5.14    -168.65     292.15       0.00       0.00     -86.59

   20   6.2  1.5  0.5       0.03      -0.00     123.79     221.14       0.00       0.00       0.00       0.00       0.00   98502.49
                           -0.06      -0.00      82.07    -137.92     -14.28    -291.81    -168.71       0.04      86.59      -0.00

   21   7.2  1.5  0.5     -78.38    -123.79      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          129.61     -82.07      -0.00       0.00       5.16      -0.23      -0.04     173.16      -0.08       0.01

   22   8.2  1.5  0.5    -140.01    -221.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -217.76     137.92      -0.00      -0.00    -389.13      17.25       3.11       2.30      -0.00       0.00

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00    -194.42       7.86      29.35    -569.37     360.53
                           -0.00      -0.00      -0.00      -0.00      -0.00       7.94     194.24       6.73     360.53     569.36

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00     194.42      -0.00      -1.90     673.39      24.93     -15.95
                           -0.00      -0.00      -0.00      -0.00      -7.94      -0.00      -8.55      27.17     -15.99     -25.24

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00      -7.86       1.90       0.00     -27.55       4.56      -2.88
                           -0.00      -0.00      -0.00      -0.00    -194.24       8.55      -0.00     674.01      -3.19      -4.53

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00     -29.36    -673.54      27.56       0.00    -146.34      92.61
                           -0.00      -0.00      -0.00      -0.00      -6.74     -27.17    -674.16       0.00     -92.68    -146.29

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00     569.50     -24.93      -4.56     146.34       0.00      -0.03
                           -0.00      -0.00      -0.00      -0.00    -360.61      15.99       3.19      92.68       0.00       0.07

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00    -360.61      15.96       2.88     -92.61       0.03      -0.00
                           -0.00      -0.00      -0.00      -0.00    -569.49      25.25       4.53     146.30      -0.07      -0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -6.64     -27.45    -679.26      -0.03     -90.51    -142.94
                           -0.00      -0.00      -0.00      -0.00      29.41     668.31     -27.29       0.07     149.66     -94.76

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       3.72      15.47     380.24      -0.06    -161.66    -255.35
                           -0.00      -0.00      -0.00      -0.00      17.50     397.76     -16.15      -0.12    -251.45     159.25

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5       0.00       0.00      -0.00      -0.00       0.00       0.02       0.00      -0.00    -418.03     233.23
                           -0.01       0.00     392.44     -17.39      -3.14     400.96      -0.18       0.01      -0.01      -0.06

    2   2.2  0.5  0.5       0.00       0.00      17.79     404.35     -16.52      -0.17    -349.08     221.05      -0.00       0.00
                           12.70    -957.19       3.96      16.36     404.65      -0.09    -221.10    -349.17       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00    -392.43      17.39       3.14     401.00      -0.18       0.01      -0.01      -0.06
                            0.00       0.00       0.00       0.00      -0.00       0.05      -0.00       0.00     411.68     245.29

    4   1.2  0.5 -0.5    -418.03     233.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.06     -35.51    -807.05      32.98      -0.33    -697.25     441.51      -0.01       0.00

    5   2.2  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.14      -0.00       0.00      12.70    -957.19

    6   3.2  0.5 -0.5      -0.01      -0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -411.68    -245.29      -7.69     -31.78    -786.13      -0.17    -429.91    -678.93       0.00       0.00

    7   1.2  1.5  1.5      -5.75       3.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.47     -15.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5     -23.77      13.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -578.77    -344.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5    -588.25     329.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           23.63      13.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5      -0.03      -0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.06       0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5     -78.38    -140.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -129.61     217.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5    -123.79    -221.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           82.07    -137.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00     194.42      -7.86     -29.36     569.50    -360.61      -6.64       3.72
                           -5.16     389.13       0.00       7.94     194.24       6.74     360.61     569.49     -29.41     -17.50

   16   2.2  1.5  0.5       0.00       0.00    -194.42      -0.00       1.90    -673.54     -24.93      15.96     -27.45      15.47
                            0.23     -17.25      -7.94       0.00      -8.55      27.17     -15.99     -25.25    -668.31    -397.76

   17   3.2  1.5  0.5       0.00       0.00       7.86      -1.90       0.00      27.56      -4.56       2.88    -679.26     380.24
                            0.04      -3.11    -194.24       8.55       0.00     674.16      -3.19      -4.53      27.29      16.15

   18   4.2  1.5  0.5       0.00       0.00      29.35     673.39     -27.55       0.00     146.34     -92.61      -0.03      -0.06
                         -173.16      -2.30      -6.73     -27.17    -674.01      -0.00     -92.68    -146.30      -0.07       0.12

   19   5.2  1.5  0.5       0.00       0.00    -569.37      24.93       4.56    -146.34       0.00       0.03     -90.51    -161.66
                            0.08       0.00    -360.53      15.99       3.19      92.68      -0.00       0.07    -149.66     251.45

   20   6.2  1.5  0.5       0.00       0.00     360.53     -15.95      -2.88      92.61      -0.03      -0.00    -142.94    -255.35
                           -0.01      -0.00    -569.36      25.24       4.53     146.29      -0.07       0.00      94.76    -159.25

   21   7.2  1.5  0.5   98501.81       0.00       6.64      27.44     679.10       0.03      90.51     142.94      -0.00       0.00
                            0.00      -0.03      29.40     668.16     -27.28       0.07     149.66     -94.76       0.00       0.00

   22   8.2  1.5  0.5       0.00   98501.37      -3.72     -15.47    -380.16       0.06     161.67     255.35      -0.00       0.00
                            0.03      -0.00      17.50     397.67     -16.15      -0.12    -251.45     159.25      -0.00       0.00

   23   1.2  1.5 -0.5       6.64      -3.72   95722.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -29.40     -17.50       0.00      -0.78       4.31      -0.06      -5.14     -14.28       5.16    -389.13

   24   2.2  1.5 -0.5      27.44     -15.47       0.00   95722.16       0.00       0.00       0.00       0.00       0.00       0.00
                         -668.16    -397.67       0.78      -0.00      97.20      -0.06    -168.65    -291.81      -0.23      17.25

   25   3.2  1.5 -0.5     679.10    -380.16       0.00       0.00   95722.17       0.00       0.00       0.00       0.00       0.00
                           27.28      16.15      -4.31     -97.20      -0.00       0.14     292.15    -168.71      -0.04       3.11

   26   4.2  1.5 -0.5       0.03       0.06       0.00       0.00       0.00   98501.60       0.00       0.00       0.00       0.00
                           -0.07       0.12       0.06       0.06      -0.14       0.00       0.00       0.04     173.16       2.30

   27   5.2  1.5 -0.5      90.51     161.67       0.00       0.00       0.00       0.00   98502.49       0.00       0.00       0.00
                         -149.66     251.45       5.14     168.65    -292.15      -0.00      -0.00      86.59      -0.08      -0.00

   28   6.2  1.5 -0.5     142.94     255.35       0.00       0.00       0.00       0.00       0.00   98502.49       0.00       0.00
                           94.76    -159.25      14.28     291.81     168.71      -0.04     -86.59       0.00       0.01       0.00

   29   7.2  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   98501.81       0.00
                           -0.00       0.00      -5.16       0.23       0.04    -173.16       0.08      -0.01      -0.00       0.03

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   98501.37
                           -0.00      -0.00     389.13     -17.25      -3.11      -2.30       0.00      -0.00      -0.03       0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00    -168.38       6.81      25.42    -493.09     312.23       5.75      -3.23
                           -0.00      -0.00      -0.00       6.87     168.22       5.83     312.22     493.08     -25.46     -15.15

   32   2.2  1.5 -1.5       0.00       0.00     168.38      -0.00      -1.65     583.17      21.59     -13.82      23.76     -13.40
                           -0.00      -0.00      -6.87      -0.00      -7.40      23.53     -13.84     -21.86    -578.64    -344.39

   33   3.2  1.5 -1.5       0.00       0.00      -6.81       1.65       0.00     -23.86       3.95      -2.49     588.12    -329.23
                           -0.00      -0.00    -168.22       7.40      -0.00     583.71      -2.76      -3.92      23.63      13.99

   34   4.2  1.5 -1.5       0.00       0.00     -25.43    -583.30      23.87       0.00    -126.74      80.20       0.03       0.06
                           -0.00      -0.00      -5.83     -23.53    -583.84       0.00     -80.27    -126.69      -0.06       0.10

   35   5.2  1.5 -1.5       0.00       0.00     493.20     -21.59      -3.95     126.74       0.00      -0.03      78.38     140.01
                           -0.00      -0.00    -312.30      13.85       2.76      80.27       0.00       0.06    -129.61     217.76

   36   6.2  1.5 -1.5       0.00       0.00    -312.30      13.82       2.49     -80.20       0.03      -0.00     123.79     221.14
                           -0.00      -0.00    -493.19      21.86       3.92     126.70      -0.06      -0.00      82.07    -137.92

   37   7.2  1.5 -1.5       0.00       0.00      -5.75     -23.77    -588.25      -0.03     -78.38    -123.79      -0.00      -0.00
                           -0.00      -0.00      25.47     578.77     -23.63       0.06     129.61     -82.07      -0.00       0.00

   38   8.2  1.5 -1.5       0.00       0.00       3.23      13.40     329.30      -0.06    -140.01    -221.14       0.00       0.00
                           -0.00      -0.00      15.16     344.47     -13.99      -0.10    -217.76     137.92      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5      -0.00      -0.00       0.00       0.04       0.01      -0.01    -724.05     403.97
                          679.73     -30.13      -5.43     694.48      -0.31       0.03      -0.02      -0.10

    5   2.2  0.5 -0.5      30.81     700.36     -28.62      -0.29    -604.63     382.86      -0.01       0.00
                            6.86      28.34     700.87      -0.15    -382.96    -604.79       0.00       0.00

    6   3.2  0.5 -0.5    -679.71      30.13       5.43     694.55      -0.31       0.03      -0.02      -0.10
                            0.00       0.00      -0.00       0.08      -0.01       0.01     713.05     424.85

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   1.2  1.5 -0.5       0.00     168.38      -6.81     -25.43     493.20    -312.30      -5.75       3.23
                            0.00       6.87     168.22       5.83     312.30     493.19     -25.47     -15.16

   24   2.2  1.5 -0.5    -168.38      -0.00       1.65    -583.30     -21.59      13.82     -23.77      13.40
                           -6.87       0.00      -7.40      23.53     -13.85     -21.86    -578.77    -344.47

   25   3.2  1.5 -0.5       6.81      -1.65       0.00      23.87      -3.95       2.49    -588.25     329.30
                         -168.22       7.40       0.00     583.84      -2.76      -3.92      23.63      13.99

   26   4.2  1.5 -0.5      25.42     583.17     -23.86       0.00     126.74     -80.20      -0.03      -0.06
                           -5.83     -23.53    -583.71      -0.00     -80.27    -126.70      -0.06       0.10

   27   5.2  1.5 -0.5    -493.09      21.59       3.95    -126.74       0.00       0.03     -78.38    -140.01
                         -312.22      13.84       2.76      80.27      -0.00       0.06    -129.61     217.76

   28   6.2  1.5 -0.5     312.23     -13.82      -2.49      80.20      -0.03      -0.00    -123.79    -221.14
                         -493.08      21.86       3.92     126.69      -0.06       0.00      82.07    -137.92

   29   7.2  1.5 -0.5       5.75      23.76     588.12       0.03      78.38     123.79      -0.00       0.00
                           25.46     578.64     -23.63       0.06     129.61     -82.07       0.00       0.00

   30   8.2  1.5 -0.5      -3.23     -13.40    -329.23       0.06     140.01     221.14      -0.00       0.00
                           15.15     344.39     -13.99      -0.10    -217.76     137.92      -0.00       0.00

   31   1.2  1.5 -1.5   95722.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -2.33      12.92      -0.18     -15.42     -42.85      15.48   -1167.39

   32   2.2  1.5 -1.5       0.00   95722.16       0.00       0.00       0.00       0.00       0.00       0.00
                            2.33      -0.00     291.59      -0.19    -505.95    -875.43      -0.68      51.74

   33   3.2  1.5 -1.5       0.00       0.00   95722.17       0.00       0.00       0.00       0.00       0.00
                          -12.92    -291.59      -0.00       0.42     876.44    -506.12      -0.11       9.33

   34   4.2  1.5 -1.5       0.00       0.00       0.00   98501.60       0.00       0.00       0.00       0.00
                            0.18       0.19      -0.42       0.00       0.01       0.12     519.49       6.89

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   98502.49       0.00       0.00       0.00
                           15.42     505.95    -876.44      -0.01      -0.00     259.78      -0.24      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   98502.49       0.00       0.00
                           42.85     875.43     506.12      -0.12    -259.78       0.00       0.02       0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   98501.81       0.00
                          -15.48       0.68       0.11    -519.49       0.24      -0.02      -0.00       0.08

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   98501.37
                         1167.39     -51.74      -9.33      -6.89       0.00      -0.00      -0.08       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -416.56041392    -0.00570918    -1253.02      0.00000000        0.00      0.0000
     2  -416.56041392    -0.00570918    -1253.02      0.00000000        0.00      0.0000
     3  -416.56040987    -0.00570513    -1252.13      0.00000405        0.89      0.0001
     4  -416.56040987    -0.00570513    -1252.13      0.00000405        0.89      0.0001
     5  -416.54377660     0.01092813     2398.45      0.01663732     3651.47      0.4527
     6  -416.54377660     0.01092814     2398.45      0.01663732     3651.47      0.4527
     7  -416.12276663     0.43193811    94799.46      0.43764729    96052.48     11.9090
     8  -416.12276653     0.43193821    94799.48      0.43764739    96052.50     11.9090
     9  -416.12276623     0.43193850    94799.54      0.43764768    96052.56     11.9090
    10  -416.12276604     0.43193870    94799.59      0.43764788    96052.61     11.9090
    11  -416.12276591     0.43193883    94799.62      0.43764801    96052.64     11.9090
    12  -416.12276588     0.43193886    94799.62      0.43764804    96052.64     11.9090
    13  -416.11995079     0.43475395    95417.46      0.44046313    96670.48     11.9856
    14  -416.11995010     0.43475463    95417.61      0.44046381    96670.63     11.9856
    15  -416.11994902     0.43475572    95417.85      0.44046490    96670.87     11.9857
    16  -416.11994882     0.43475592    95417.89      0.44046510    96670.92     11.9857
    17  -416.11713808     0.43756666    96034.78      0.44327584    97287.80     12.0622
    18  -416.11713761     0.43756713    96034.88      0.44327631    97287.90     12.0622
    19  -416.10826510     0.44643964    97982.17      0.45214882    99235.19     12.3036
    20  -416.10826510     0.44643964    97982.17      0.45214882    99235.19     12.3036
    21  -416.10826426     0.44644048    97982.36      0.45214966    99235.38     12.3036
    22  -416.10826426     0.44644048    97982.36      0.45214966    99235.38     12.3036
    23  -416.10826357     0.44644117    97982.51      0.45215035    99235.53     12.3036
    24  -416.10826357     0.44644117    97982.51      0.45215035    99235.53     12.3036
    25  -416.10826307     0.44644167    97982.62      0.45215085    99235.64     12.3037
    26  -416.10826307     0.44644167    97982.62      0.45215085    99235.64     12.3037
    27  -416.10263026     0.45207448    99218.88      0.45778366   100471.90     12.4569
    28  -416.10262988     0.45207486    99218.96      0.45778404   100471.98     12.4569
    29  -416.10262835     0.45207639    99219.30      0.45778557   100472.32     12.4570
    30  -416.10262772     0.45207702    99219.44      0.45778620   100472.46     12.4570
    31  -416.10262736     0.45207737    99219.52      0.45778655   100472.54     12.4570
    32  -416.10262723     0.45207751    99219.54      0.45778669   100472.56     12.4570
    33  -416.10136626     0.45333848    99496.30      0.45904766   100749.32     12.4913
    34  -416.10136579     0.45333895    99496.40      0.45904813   100749.42     12.4913
    35  -416.10110832     0.45359642    99552.91      0.45930560   100805.93     12.4983
    36  -416.10110764     0.45359710    99553.06      0.45930628   100806.08     12.4984
    37  -416.10110552     0.45359921    99553.52      0.45930839   100806.54     12.4984
    38  -416.10110534     0.45359940    99553.56      0.45930858   100806.58     12.4984


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.562812193   0.000000725  -0.000000307  -0.591338457   0.577236534   0.000001445  -0.000142155  -0.000000402
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000005   0.023129718  -0.177739107   0.000000115  -0.000001234   0.492873868  -0.000000001   0.000000334
                        -0.000001434   0.793233388  -0.072408863  -0.000000352   0.000000753  -0.300198515  -0.000000001   0.000000807

    3    3.2  0.5  0.5   0.000000019   0.000000036  -0.000000371   0.000000018   0.000000000  -0.000000001  -0.000000007   0.000000001
                         0.230539871   0.000000706   0.000000280   0.783052102   0.577346073   0.000001447   0.000020634   0.000000062

    4    1.2  0.5 -0.5  -0.000000725   0.562589274   0.223095394  -0.000000116  -0.000000752   0.300269816   0.000000078  -0.000045156
                         0.000000021  -0.016404431  -0.547623391   0.000000284  -0.000001234   0.492990932  -0.000000057   0.000018367

    5    2.2  0.5 -0.5   0.000000019   0.000000037  -0.000000370   0.000000018  -0.000000000   0.000000001   0.000000002  -0.000000001
                         0.793575786   0.000001433  -0.000000026   0.191900723  -0.577099478  -0.000001446   0.000001301   0.000000003

    6    3.2  0.5 -0.5  -0.000000016  -0.006718766   0.725189237  -0.000000399  -0.000001235   0.493084484   0.000000031  -0.000011722
                         0.000000707  -0.230420476   0.295433672   0.000000238   0.000000754  -0.300326797   0.000000080  -0.000028923

    7    1.2  1.5  1.5   0.000000000   0.000047990   0.000050604   0.000000000   0.000000000  -0.000180584  -0.000483418   0.016652545
                        -0.002291472  -0.000249711   0.000035036   0.009480460   0.000001519   0.000061466   0.584172087   0.025796706

    8    2.2  1.5  1.5  -0.000000000   0.000063762   0.001243949  -0.000000001   0.000000009  -0.003703735  -0.000730146   0.268057297
                         0.000101572  -0.005645954   0.000566337  -0.000420186  -0.000000073   0.002055352  -0.027585308   0.591864970

    9    3.2  1.5  1.5  -0.000000010   0.005650734  -0.000566437  -0.000000002   0.000000005  -0.002055520  -0.001823562   0.588911586
                         0.000018314   0.000065862   0.001242496  -0.000075774  -0.000000003  -0.003707272  -0.003990239  -0.266994709

   10    4.2  1.5  1.5  -0.000000041  -0.000001120  -0.000000393   0.000000867   0.000000243   0.000001929   0.000070198  -0.000077139
                        -0.005418171   0.000002273  -0.000000471  -0.001311023  -0.008246108  -0.000000140   0.000536430  -0.000063484

   11    5.2  1.5  1.5  -0.000000034  -0.002851434  -0.000784308  -0.000000007  -0.000000071   0.004246801   0.000348503  -0.140980870
                         0.000002449   0.004806377  -0.001100610   0.000000593   0.000003739   0.000074507   0.000343703  -0.099330368

   12    6.2  1.5  1.5   0.000000071  -0.004807507   0.001100448   0.000000016   0.000000094  -0.000073493   0.000279029  -0.102369373
                        -0.000000190  -0.002850672  -0.000785211  -0.000000045  -0.000000309   0.004247303  -0.000452208   0.140650608

   13    7.2  1.5  1.5   0.005628466   0.000000043  -0.000000018   0.001282494   0.008536452   0.000000052   0.003049314   0.000023882
                         0.000000142   0.000000065   0.000000004   0.000000034   0.000000217  -0.000000046   0.000112668  -0.000019414

   14    8.2  1.5  1.5  -0.001274099   0.000000000   0.000000002   0.005627235   0.000124475   0.000000000  -0.270528306  -0.000784643
                         0.000000802  -0.000000000   0.000000002   0.000000194   0.000001221   0.000000000  -0.000200346   0.000029802

   15    1.2  1.5  0.5   0.000049897  -0.000092095   0.000708402   0.000068850   0.000022551   0.004050126  -0.005046537   0.002892427
                        -0.000346227  -0.003158419   0.000288595   0.000178567  -0.000107159  -0.002466842  -0.022077124   0.005862322

   16    2.2  1.5  0.5   0.000206186   0.000004082  -0.000031396   0.000284503   0.000093229  -0.000179507  -0.020359719  -0.000191755
                        -0.007869831   0.000139974  -0.000012788   0.004058782  -0.002435845   0.000109328  -0.507106472  -0.001681041

   17    3.2  1.5  0.5   0.005099600   0.000000748  -0.000005660   0.007036619   0.002305835  -0.000032365  -0.504197053  -0.001534309
                         0.000321578   0.000025244  -0.000002302  -0.000165851   0.000099534   0.000019717   0.019984212   0.000121281

   18    4.2  1.5  0.5  -0.000000298  -0.000037306  -0.005020057   0.000001150   0.000001532  -0.000002254  -0.000223347   0.084368082
                        -0.000000541  -0.001309143  -0.002045069   0.000002247  -0.000002960  -0.000000101  -0.000613915   0.208290542

   19    5.2  1.5  0.5  -0.000751493   0.000000008   0.000002262   0.002894053   0.003865354   0.000000010  -0.023823909  -0.000103479
                        -0.001136369   0.000000594   0.000000967   0.004717478  -0.006212781  -0.000000017  -0.038828703  -0.000172514

   20    6.2  1.5  0.5  -0.001186777   0.000000013  -0.000000155   0.004570363   0.006104268   0.000000016  -0.037389740  -0.000132257
                         0.000719573  -0.000000048  -0.000000131  -0.002987209   0.003934067   0.000000011   0.024359712   0.000091102

   21    7.2  1.5  0.5   0.000000008   0.001281210   0.002124290  -0.000000029  -0.000000040   0.000058017  -0.000506471   0.162541431
                        -0.000000016  -0.000037324  -0.005214031   0.000000069  -0.000000087   0.000095254   0.000182328  -0.065828264

   22    8.2  1.5  0.5  -0.000000010   0.005623332  -0.000480147  -0.000000003   0.000000011  -0.004434182  -0.000043496   0.001231407
                         0.000000000  -0.000163776   0.001180725  -0.000000001   0.000000019  -0.007280158  -0.000015100  -0.000456145

   23    1.2  1.5 -0.5   0.000000000  -0.000059965  -0.000139387   0.000000000  -0.000000000   0.000079787  -0.000710231  -0.000499061
                         0.003159767  -0.000344630  -0.000131130   0.000764841   0.004742275  -0.000075001  -0.003446006  -0.003102716

   24    2.2  1.5 -0.5   0.000000001  -0.000435470  -0.003651314   0.000000002  -0.000000005   0.002031819   0.000122494  -0.024952152
                        -0.000140034  -0.007860584  -0.001794716  -0.000033896  -0.000210181  -0.001346695   0.000156601  -0.068029134

   25    3.2  1.5 -0.5   0.000000012  -0.005087853   0.002808435   0.000000003   0.000000003  -0.001284450  -0.000241234   0.062305619
                        -0.000025255   0.000470075  -0.006454180  -0.000006109  -0.000037898  -0.001917504   0.000014091  -0.021807073

   26    4.2  1.5 -0.5   0.000000866   0.000000282  -0.000001647   0.000000041  -0.000001259   0.000001731   0.000135701  -0.000022231
                         0.001309522  -0.000000550  -0.000001913  -0.005420654  -0.000001873  -0.000002848  -0.191288072  -0.000574970

   27    5.2  1.5 -0.5  -0.000000009   0.000718132  -0.003276964   0.000000042  -0.000000009   0.003295345  -0.000008399  -0.000150281
                        -0.000000594  -0.001157919  -0.004459975   0.000002459   0.000000017  -0.006533009   0.000039652  -0.006836818

   28    6.2  1.5 -0.5   0.000000014   0.001207380   0.004490745  -0.000000063   0.000000018  -0.006535247  -0.000071718   0.005302957
                         0.000000047   0.000684754  -0.003105571  -0.000000193   0.000000008  -0.003166926  -0.000002572   0.002352161

   29    7.2  1.5 -0.5   0.001281596  -0.000000008  -0.000000075  -0.005630181   0.000111531   0.000000095  -0.169390140  -0.000474937
                        -0.000000034  -0.000000016   0.000000001   0.000000143   0.000000000  -0.000000011  -0.000124838   0.000018231

   30    8.2  1.5 -0.5   0.005625748   0.000000010  -0.000000000   0.001274464  -0.008524251  -0.000000022  -0.002761357   0.000007121
                        -0.000000194  -0.000000000   0.000000003   0.000000802   0.000000000   0.000000000   0.000136658  -0.000016452

   31    1.2  1.5 -1.5  -0.000055248   0.000066796   0.008779796  -0.000013353   0.000041442   0.000001297  -0.000277991  -0.030051097
                        -0.000248208   0.002290762   0.003576787  -0.000060076   0.000186202  -0.000000790   0.001741401  -0.074132118

   32    2.2  1.5 -1.5  -0.000228296  -0.000002961  -0.000389131  -0.000055158   0.000171247  -0.000000057  -0.001208184   0.001299378
                        -0.005641739  -0.000101540  -0.000158528  -0.001365534   0.004232359   0.000000046   0.036369639   0.003419493

   33    3.2  1.5 -1.5  -0.005646456  -0.000000544  -0.000070173  -0.001364227   0.004235466   0.000000000  -0.034428909   0.000059069
                         0.000230534  -0.000018308  -0.000028590   0.000055799  -0.000172943   0.000000006  -0.001713170   0.000624821

   34    4.2  1.5 -1.5   0.000001185   0.000157878  -0.001214597   0.000000288  -0.000000883  -0.007042487   0.000019874  -0.000454082
                         0.000002239   0.005415817  -0.000493877   0.000000541  -0.000001720   0.004289706  -0.000040329  -0.000912904

   35    5.2  1.5 -1.5   0.002990329  -0.000000106   0.000000552   0.000723286  -0.002272759   0.000003157   0.005635576  -0.000010717
                         0.004721253  -0.000002446   0.000000217   0.001141456  -0.003588244  -0.000002006  -0.007409706  -0.000039447

   36    6.2  1.5 -1.5   0.004722405   0.000000076  -0.000000048   0.001142232  -0.003589200  -0.000000215   0.008581791   0.000032896
                        -0.002989600   0.000000188  -0.000000002  -0.000722795   0.002272154   0.000000241   0.004503026   0.000052992

   37    7.2  1.5 -1.5  -0.000000041   0.005626019  -0.000483886  -0.000000010   0.000000012   0.004440717  -0.000037727  -0.000459967
                         0.000000066  -0.000164190   0.001187867   0.000000015  -0.000000069   0.007290469  -0.000017406   0.000264593

   38    8.2  1.5 -1.5  -0.000000000  -0.001273738  -0.002122863  -0.000000001  -0.000000000   0.000065792   0.000065632  -0.034328189
                        -0.000000000   0.000036338   0.005211423  -0.000000003  -0.000000000   0.000105673  -0.000023655   0.013914378


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000000068   0.000000038   0.000105707   0.000006351   0.004666067  -0.000000571   0.000001527   0.003924113
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000448  -0.000001642   0.000000000  -0.000000002   0.000000345  -0.000660088  -0.001966826   0.000000259
                        -0.000001116   0.000004338  -0.000000001   0.000000003  -0.000000995   0.001806737   0.005581457  -0.000000726

    3    3.2  0.5  0.5   0.000000013   0.000000002  -0.000000427   0.000007012   0.000002601   0.000000011   0.000000005  -0.000003091
                        -0.000000008   0.000000007  -0.000013504  -0.000025105  -0.005607104  -0.000000799  -0.000000463   0.002106073

    4    1.2  0.5 -0.5   0.000126911  -0.000095594   0.000000060  -0.000000157  -0.000000451  -0.003782714   0.004312525  -0.000001691
                         0.000049273  -0.000036621   0.000000040  -0.000000041  -0.000000158  -0.001394506   0.001523718  -0.000000608

    5    2.2  0.5 -0.5   0.000000000   0.000000000   0.000000013  -0.000000116   0.000002667   0.000000012   0.000000006  -0.000003171
                         0.000000003  -0.000000000  -0.000005070   0.000000106  -0.001022406  -0.000001399   0.000001072   0.006137823

    6    3.2  0.5 -0.5  -0.000005351   0.000003231  -0.000000007   0.000000004  -0.000000180   0.002021213   0.000411381   0.000000348
                         0.000013813  -0.000008454   0.000000011  -0.000000020   0.000000524  -0.005498495  -0.001178760  -0.000000963

    7    1.2  1.5  1.5  -0.000568612  -0.005047975  -0.000073240  -0.008390991  -0.000181947  -0.003136668  -0.009476294   0.000219344
                         0.003983022   0.007341004   0.007239538   0.029782455   0.714062701   0.004918161   0.015323714   0.118858670

    8    2.2  1.5  1.5  -0.026912429  -0.078533678   0.000027843   0.000282286   0.000034043  -0.049202535  -0.147157167   0.000009703
                         0.082502146   0.186091865  -0.000369646  -0.001256203  -0.031714153   0.119454955   0.369233867  -0.005316031

    9    3.2  1.5  1.5   0.086991385  -0.194786263  -0.000090757  -0.000018308   0.000067427  -0.119505097  -0.369559826   0.000046266
                         0.030619053  -0.083167250  -0.000102476  -0.000310402  -0.005681321  -0.049276830  -0.147435854  -0.000930616

   10    4.2  1.5  1.5   0.000002127  -0.000056079   0.000521016  -0.006191841  -0.000091361  -0.000016757  -0.000050264   0.000081019
                         0.000058484   0.000055482  -0.109428492   0.014802516   0.025908303   0.000050385   0.000019215  -0.155707401

   11    5.2  1.5  1.5  -0.002506964  -0.132426902  -0.000015136  -0.000079696   0.000021060  -0.038681884  -0.117926793   0.000014250
                        -0.024234564   0.101047683   0.000081208   0.000013963  -0.000028391   0.029764607   0.092955181   0.000058575

   12    6.2  1.5  1.5  -0.022674049  -0.098468506   0.000011260  -0.000018308   0.000016341  -0.029783385  -0.092947360   0.000013731
                         0.006837528  -0.132531029  -0.000020789  -0.000088989   0.000021847  -0.038677797  -0.117928413   0.000009772

   13    7.2  1.5  1.5  -0.000068986  -0.000006186   0.109456132  -0.014617858  -0.023848049  -0.000035384   0.000027811   0.156080050
                         0.000002639   0.000002650   0.000521677  -0.006137262  -0.000067803   0.000000352   0.000001831   0.000083919

   14    8.2  1.5  1.5  -0.000038658   0.000111825  -0.001936290  -0.013994408  -0.156066807  -0.000004303  -0.000029477  -0.023857079
                        -0.000032837  -0.000004812  -0.000010887  -0.003969659  -0.000044769  -0.000000188  -0.000000077   0.000071627

   15    1.2  1.5  0.5   0.006103137  -0.252948096  -0.003633381   0.001147769   0.004829123  -0.025639116  -0.076301591  -0.003982357
                        -0.007865218   0.670236956   0.015357641  -0.002847857   0.014608525   0.070176163   0.216535665   0.023918443

   16    2.2  1.5  0.5  -0.000210591   0.011227892  -0.016202903   0.028196616   0.019981549   0.001141646   0.003381812  -0.016595854
                         0.000049063  -0.029512750   0.347683853  -0.073187199   0.332870833  -0.003208781  -0.009434739   0.544370944

   17    3.2  1.5  0.5   0.000104387   0.002246315  -0.360783833   0.021022229   0.491723644   0.000323553   0.000605653  -0.407489968
                         0.000005447  -0.005375060  -0.015953411   0.015789600  -0.013287947  -0.000555592  -0.001736644  -0.022616795

   18    4.2  1.5  0.5   0.054293566   0.000992294   0.000033397   0.000003391  -0.000032571  -0.051853669   0.016355836  -0.000019926
                        -0.141157494  -0.003975397  -0.000046526   0.000140752  -0.000063985   0.140909132  -0.045997891   0.000029569

   19    5.2  1.5  0.5   0.000026129   0.000013403  -0.085400164   0.018288180  -0.083235913   0.000022617  -0.000023639  -0.013935365
                        -0.000031670   0.000010893   0.132522478  -0.015556264  -0.131536301  -0.000066854  -0.000004486  -0.021864029

   20    6.2  1.5  0.5   0.000082740   0.000021643  -0.133478448   0.010978432  -0.131523055  -0.000006722  -0.000024188  -0.021918151
                         0.000045293  -0.000007584  -0.084808199   0.019654301   0.083244207   0.000006426   0.000014382   0.013901024

   21    7.2  1.5  0.5   0.192660482   0.002759292   0.000068409  -0.000154817   0.000002573  -0.141518813   0.044127259  -0.000039604
                         0.074134331   0.000033097   0.000046155   0.000000737  -0.000001313  -0.052083830   0.015672893  -0.000014625

   22    8.2  1.5  0.5   0.003743392  -0.103440257  -0.000010737  -0.000043592  -0.000025232   0.043956961   0.142244887  -0.000018963
                         0.001939637  -0.039051993  -0.000004281  -0.000041603  -0.000008756   0.016030897   0.050134352  -0.000006763

   23    1.2  1.5 -0.5  -0.012612597   0.002171172  -0.003367484   0.040103736  -0.000103342   0.008809695  -0.005562938   0.000126030
                         0.018570028  -0.015677404   0.708911358  -0.095920777   0.039740069  -0.008347296   0.025413840  -0.238048910

   24    2.2  1.5 -0.5  -0.201806905   0.111782216  -0.000003255  -0.001625092   0.000026986   0.106839542  -0.183062403   0.000054694
                         0.464617482  -0.332476864  -0.031216106   0.003684656  -0.001836193  -0.225277088   0.558704561   0.010388974

   25    3.2  1.5 -0.5  -0.456963172  -0.347869343  -0.000253526  -0.000034426  -0.000080973   0.509833651   0.319161877   0.000046187
                        -0.196409501  -0.113872650  -0.005846782   0.000660179  -0.000342581   0.198063903   0.086679565   0.001927253

   26    4.2  1.5 -0.5  -0.000096639  -0.000022771   0.003340306  -0.052266434  -0.000039496  -0.000050885   0.000016243   0.000071474
                         0.000108266  -0.000099108   0.026748246   0.182606336   0.155742105   0.000049484   0.000014806   0.025957520

   27    5.2  1.5 -0.5  -0.036102286  -0.032682296  -0.000027929   0.000064482  -0.000000007  -0.119117578   0.038385237  -0.000033748
                         0.028855372  -0.155772756  -0.000018816  -0.000196952  -0.000071539   0.091248884  -0.030109268   0.000014287

   28    6.2  1.5 -0.5  -0.024477379  -0.156830354  -0.000029422  -0.000055054   0.000002606  -0.091243755   0.030109515  -0.000025819
                        -0.035671529   0.031860758  -0.000019618   0.000008062   0.000006705  -0.119118576   0.038385137  -0.000032586

   29    7.2  1.5 -0.5  -0.000143236   0.000177961  -0.032719842  -0.200779911   0.156090542   0.000004479   0.000029425   0.023891164
                        -0.000124372  -0.000021482   0.003271733  -0.057353110   0.000036848   0.000002145  -0.000000565  -0.000049348

   30    8.2  1.5 -0.5  -0.000071644  -0.000002518   0.109030903  -0.017462409  -0.023852385  -0.000035450   0.000027615   0.156124819
                         0.000000781   0.000000168   0.000558048  -0.006978816  -0.000090175  -0.000000290  -0.000000133   0.000076009

   31    1.2  1.5 -1.5  -0.208095464  -0.000818161  -0.001691576   0.013658951  -0.000661626  -0.237761120   0.074836446   0.003959014
                         0.540956540   0.008618225  -0.012955039  -0.024736289  -0.003026458   0.646054767  -0.210782648   0.018307942

   32    2.2  1.5 -1.5   0.009582951   0.000078534  -0.014187919   0.192204750  -0.002595624   0.010534798  -0.003313502   0.016460845
                        -0.024218084  -0.000040387  -0.298882142  -0.585482812  -0.068617079  -0.028728099   0.009414205   0.411923848

   33    3.2  1.5 -1.5   0.002165624  -0.000316687  -0.110305094   0.642302275  -0.068629885   0.001806260  -0.000526165   0.412332841
                        -0.003984022  -0.000028907   0.000522377   0.213510183   0.002624533  -0.005160660   0.001681404  -0.016620756

   34    4.2  1.5 -1.5  -0.000906496   0.039058811  -0.000033799  -0.000011821   0.000003286  -0.016714859  -0.049903396   0.000039573
                         0.001230831  -0.103499028  -0.000067138   0.000026138  -0.000035701   0.045819242   0.141606910   0.000044277

   35    5.2  1.5 -1.5  -0.000071043   0.000022336  -0.098182783  -0.124962999  -0.013829204  -0.000011418   0.000036276   0.083246073
                         0.000125209  -0.000029344  -0.116339056   0.138654167  -0.021948902  -0.000051016  -0.000041682   0.131618963

   36    6.2  1.5 -1.5   0.000046979   0.000088380  -0.161852275  -0.091203415  -0.021965939  -0.000030235   0.000022629   0.131614615
                        -0.000189571   0.000026280   0.076133094  -0.133033326   0.013818381   0.000020587  -0.000009008  -0.083248628

   37    7.2  1.5 -1.5  -0.002103785  -0.103535838  -0.000012295  -0.000038412  -0.000025086   0.043951992   0.142244958  -0.000019840
                        -0.000333975  -0.039057410  -0.000007634  -0.000039116  -0.000009069   0.016051368   0.050122533  -0.000004910

   38    8.2  1.5 -1.5   0.250513977   0.002635361   0.000132773  -0.000228540  -0.000001697   0.141477243  -0.044075472   0.000039730
                         0.096381594  -0.000112788   0.000083642  -0.000003550  -0.000000531   0.052056638  -0.015676705   0.000014304


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000000008  -0.002205142   0.000009249  -0.000171882  -0.000000083   0.000006704   0.000035010  -0.000000126
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.001632473   0.000000006   0.000000037   0.000000006  -0.000006610  -0.000000001   0.000000007   0.000000536
                         0.001556700  -0.000000005   0.000000013   0.000000008  -0.000027224  -0.000000016  -0.000000008   0.000000553

    3    3.2  0.5  0.5   0.000000000   0.000000002   0.000000016  -0.000000001  -0.000000003  -0.000000617   0.000000096   0.000000067
                        -0.000000008  -0.002160855   0.000008594  -0.000160327  -0.000000126   0.000103526   0.000086977  -0.000000120

    4    1.2  0.5 -0.5  -0.001521325   0.000000005   0.000057164   0.000003076   0.000006555   0.000000080  -0.000000085  -0.000024085
                        -0.001595377   0.000000006  -0.000162096  -0.000008723  -0.000001545  -0.000000020   0.000000091   0.000025314

    5    2.2  0.5 -0.5   0.000000000  -0.000000001   0.000000006   0.000000000   0.000000003   0.000000188  -0.000000031  -0.000000010
                         0.000000008   0.002256523   0.000000009  -0.000000035   0.000000016  -0.000028009  -0.000000771  -0.000000000

    6    3.2  0.5 -0.5  -0.001563331   0.000000006  -0.000151187  -0.000008099  -0.000024357  -0.000000027   0.000000134   0.000063033
                         0.001490768  -0.000000005  -0.000053318  -0.000002874  -0.000100636  -0.000000124   0.000000036   0.000060104

    7    1.2  1.5  1.5  -0.018755969  -0.000000003   0.000000642   0.000000047  -0.000000047  -0.000000167   0.000000026  -0.000001502
                         0.011309400  -0.000023586   0.000000274   0.000002263  -0.000003431   0.000005250  -0.000167762  -0.000000561

    8    2.2  1.5  1.5  -0.365240688   0.000001314   0.000015521   0.000000830  -0.000015268  -0.000000022  -0.000000113  -0.000030135
                         0.321114299  -0.000000085   0.000006190   0.000000230  -0.000075659  -0.000000218   0.000007238  -0.000026510

    9    3.2  1.5  1.5  -0.321291962   0.000001130  -0.000006149  -0.000000317   0.000074023   0.000000096  -0.000000139  -0.000023936
                        -0.365703659   0.000001502   0.000015386   0.000000807  -0.000014708  -0.000000013   0.000001481   0.000027394

   10    4.2  1.5  1.5  -0.000022385  -0.000002922  -0.000098305   0.000021266  -0.000049526  -0.000264089  -0.000026263   0.000005350
                         0.000006723   0.102081816  -0.038488133   0.715299508   0.000125486   0.038357648  -0.000096547   0.000001844

   11    5.2  1.5  1.5  -0.050117330   0.000000899   0.016651488   0.000896335   0.078041997   0.000058733   0.000820726   0.145643074
                         0.010011319  -0.000046314   0.021383359   0.001093208  -0.223341944  -0.000287808   0.000274182   0.028788941

   12    6.2  1.5  1.5  -0.010010303  -0.000001081  -0.021291845  -0.001048475   0.226484092  -0.000054019   0.000357175   0.029112712
                        -0.050116960   0.000003866   0.016962080   0.000919492   0.074154290   0.000071662  -0.000664827  -0.146243124

   13    7.2  1.5  1.5  -0.000000612  -0.102115299  -0.036942913   0.687665312   0.000349955  -0.199037642   0.007063689  -0.000052644
                         0.000000613  -0.000002721   0.000046240  -0.000023120   0.000051495  -0.001349274   0.000204644   0.000147069

   14    8.2  1.5  1.5  -0.000000030  -0.001350317  -0.000488750   0.009080427   0.000127984  -0.003862335  -0.513327496   0.001117011
                        -0.000000014  -0.000015115  -0.000002179  -0.000102743  -0.000114429   0.000494779  -0.000079177  -0.000039322

   15    1.2  1.5  0.5   0.406362845   0.002745525  -0.000027805  -0.000001853   0.000019217   0.000000523  -0.000000272   0.000004654
                        -0.387501050  -0.012341174  -0.000009886   0.000000847   0.000079094  -0.000002018  -0.000001497   0.000004238

   16    2.2  1.5  0.5  -0.018010522   0.011351213   0.000001317  -0.000001270  -0.000000818   0.000002408  -0.000001090  -0.000000196
                         0.017173570  -0.280544486  -0.000001311   0.000032755  -0.000003450  -0.000046735  -0.000035380  -0.000000056

   17    3.2  1.5  0.5  -0.003246888   0.280748660   0.000001986  -0.000033108  -0.000000152   0.000052289  -0.000025712   0.000000084
                         0.003097171   0.011463873   0.000000155  -0.000001330  -0.000000657   0.000002275   0.000001374  -0.000000079

   18    4.2  1.5  0.5  -0.000002387  -0.000018745  -0.000120159  -0.000072277   0.000911515   0.000200022   0.000897385   0.279456823
                         0.000023135   0.000035587  -0.000025180   0.000119719   0.001387174  -0.000359009   0.001183773   0.265802430

   19    5.2  1.5  0.5  -0.000000141  -0.047281934  -0.001330778   0.025103515  -0.000242929   0.223481447   0.273867553  -0.000862522
                         0.000000265   0.074709838   0.002287541  -0.039550220   0.000161214  -0.345156935   0.433591824  -0.001153215

   20    6.2  1.5  0.5  -0.000000285  -0.074668831  -0.002281324   0.039628696  -0.000247076   0.346781087   0.433470271  -0.000802027
                        -0.000000164  -0.047307938  -0.001314729   0.025046092   0.000083747   0.221227820  -0.274981137   0.000538799

   21    7.2  1.5  0.5  -0.000948456   0.000000512   0.000306796   0.000152279  -0.006490042  -0.000054855   0.000167794  -0.088085681
                        -0.000994786   0.000001058  -0.000871991   0.000022928   0.001649347  -0.000033389  -0.000001915   0.092599155

   22    8.2  1.5  0.5   0.070539173  -0.000000233  -0.027110427  -0.001694022   0.692517233   0.000378848   0.000232576  -0.001274309
                         0.073972705  -0.000000274   0.076905109   0.004264470  -0.168175302  -0.000014181   0.000130866   0.000161033

   23    1.2  1.5 -0.5   0.007036253  -0.000000234  -0.000001482  -0.000000080  -0.000000682   0.000000755  -0.000000171   0.000000436
                        -0.010503163   0.561518282   0.000001644  -0.000032839  -0.000001241  -0.000110813   0.000006312   0.000000553

   24    2.2  1.5 -0.5   0.195186882  -0.000000694  -0.000032911  -0.000001763  -0.000009095  -0.000000017   0.000000067   0.000012383
                        -0.201810957  -0.024886539  -0.000010196   0.000000922  -0.000030976   0.000004862  -0.000000207   0.000012264

   25    3.2  1.5 -0.5  -0.202033361   0.000000719  -0.000010247  -0.000000545  -0.000036482   0.000000004  -0.000000080  -0.000005783
                        -0.195256869  -0.004487283   0.000033261   0.000002040   0.000010209   0.000000906  -0.000000017   0.000005122

   26    4.2  1.5 -0.5  -0.000012822   0.000015090  -0.000137381   0.000016038  -0.000280566   0.000571349  -0.000065683  -0.000241779
                         0.000038134  -0.000017692   0.000028387  -0.000122176  -0.000305092  -0.001573728   0.386134000  -0.001472122

   27    5.2  1.5 -0.5  -0.021443376   0.000000094   0.045704470   0.002600424  -0.296675841  -0.000272224  -0.000239267  -0.125403735
                         0.085797871  -0.000000285  -0.010535142  -0.000493993  -0.284639097  -0.000100104  -0.001424590  -0.497489883

   28    6.2  1.5 -0.5   0.085788390  -0.000000316  -0.010453906  -0.000481689  -0.286742346  -0.000260804   0.000945375   0.498206177
                         0.021395755  -0.000000093  -0.045759366  -0.002589696   0.294857356  -0.000024200  -0.000210248  -0.124533889

   29    7.2  1.5 -0.5  -0.000001119  -0.001373960   0.000028799  -0.000922788   0.000048047  -0.006683026   0.127068616   0.000126266
                         0.000000360   0.000000112  -0.000151277  -0.000000510  -0.000047393  -0.000115811   0.000012789  -0.000124320

   30    8.2  1.5 -0.5   0.000000359   0.102175761  -0.004583169   0.081431351  -0.000372255   0.712613373   0.000998622   0.000067148
                        -0.000000021   0.000000039   0.000179237   0.000008655   0.000072697   0.004800600  -0.000815458  -0.000256298

   31    1.2  1.5 -1.5  -0.000017080   0.004759027   0.000002117  -0.000000035  -0.000001374  -0.000000665  -0.000000610  -0.000136679
                         0.000016284   0.021378374   0.000000794  -0.000000653  -0.000005014  -0.000002965   0.000001214  -0.000130004

   32    2.2  1.5 -1.5   0.000000846   0.019665097  -0.000000057  -0.000000636   0.000000031  -0.000002222  -0.000001347   0.000005999
                         0.000001010   0.485927584   0.000000803  -0.000015699   0.000000215  -0.000068531   0.000034934   0.000005572

   33    3.2  1.5 -1.5   0.000001867   0.486385237   0.000000812  -0.000015569   0.000000088  -0.000066969  -0.000031191   0.000001263
                        -0.000000219  -0.019856022  -0.000000020   0.000000641  -0.000000006   0.000002365  -0.000001338   0.000001035

   34    4.2  1.5 -1.5   0.073884434   0.000010577   0.674577001   0.036264437  -0.009026208   0.000080925   0.000002418  -0.000052931
                        -0.070458983   0.000020830   0.237913795   0.012892967  -0.037139567   0.000112151  -0.000004470  -0.000086601

   35    5.2  1.5 -1.5  -0.000032901   0.027327622   0.000732685  -0.014606679   0.000124760  -0.127192215   0.079889964  -0.000368009
                         0.000032617   0.043157384   0.001208214  -0.022780024   0.000270407  -0.199434612  -0.125924570   0.000792090

   36    6.2  1.5 -1.5   0.000002052   0.043156420   0.001215115  -0.023043049  -0.000072554  -0.203408437   0.126576017  -0.000738091
                        -0.000003451  -0.027328099  -0.000682201   0.014416749  -0.000055637   0.124110354   0.080075529  -0.000201286

   37    7.2  1.5 -1.5  -0.070481925  -0.000000021  -0.228715454  -0.012329853  -0.193493662  -0.000330052  -0.000144049  -0.004724862
                        -0.073908784   0.000000866   0.648487006   0.034824280   0.046996744   0.000134167  -0.000064220   0.005261116

   38    8.2  1.5 -1.5  -0.000942928   0.000000031  -0.003116316  -0.000160941  -0.003875275  -0.000151246   0.000801469   0.353875135
                        -0.000966922   0.000000012   0.008528776   0.000461653   0.000407259  -0.000080592  -0.000783418  -0.372043421


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000056193   0.000000048  -0.000000003   0.000009168  -0.000061097   0.000000004  -0.000002272  -0.000000036
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000003  -0.000000741   0.000000283   0.000000003  -0.000000005  -0.000000284  -0.000000000   0.000006559
                         0.000000005   0.000000671  -0.000000259  -0.000000006   0.000000009  -0.000001327  -0.000000004  -0.000015942

    3    3.2  0.5  0.5  -0.000000004   0.000000067   0.000000001  -0.000000004   0.000000019  -0.000000046  -0.000000482   0.000000007
                         0.000091062   0.000000050   0.000000003  -0.000038598   0.000057055  -0.000000055   0.000044403   0.000000032

    4    1.2  0.5 -0.5  -0.000000032  -0.000037970   0.000002777   0.000000003  -0.000000003  -0.000060351  -0.000000090   0.000003667
                        -0.000000035  -0.000041477   0.000002971   0.000000002   0.000000002   0.000012377  -0.000000047   0.000001570

    5    2.2  0.5 -0.5   0.000000005   0.000000001  -0.000000002  -0.000000004   0.000000004  -0.000000022  -0.000000232   0.000000002
                         0.000000999  -0.000000006   0.000000006  -0.000000339  -0.000001308  -0.000000026   0.000020148  -0.000000002

    6    3.2  0.5 -0.5  -0.000000084   0.000067078  -0.000024585  -0.000000003   0.000000010  -0.000011796   0.000000050  -0.000016537
                        -0.000000017  -0.000061413   0.000022980   0.000000002  -0.000000021  -0.000057703  -0.000000081   0.000040034

    7    1.2  1.5  1.5  -0.000000005   0.000002380  -0.000531760  -0.000017279  -0.000000512  -0.004894432  -0.000022964  -0.002204944
                        -0.000041031  -0.000003626   0.000760428   0.236745054   0.030452887  -0.010913787   0.000940427   0.003202874

    8    2.2  1.5  1.5  -0.000000007   0.000070298  -0.014468991  -0.000015300   0.000019782  -0.063752205   0.000190674  -0.036324689
                         0.000001842  -0.000069913   0.014629504  -0.010497556  -0.001385944  -0.257459092  -0.000411556   0.078909036

    9    3.2  1.5  1.5  -0.000000008  -0.000070608   0.014367681  -0.000027017   0.000032302  -0.259310071  -0.000374042  -0.074277460
                         0.000000320  -0.000071231   0.014125379  -0.001888643  -0.000222148   0.064335548  -0.000198451  -0.034120806

   10    4.2  1.5  1.5  -0.000039460  -0.000006435  -0.000016705   0.000060995   0.000139165  -0.000397128  -0.003129449   0.000143497
                        -0.000442274   0.000012323   0.000047064  -0.000782027  -0.001443535  -0.000474509   0.271498364  -0.000120983

   11    5.2  1.5  1.5  -0.000061336  -0.135677102  -0.007138595   0.000026893  -0.000170731  -0.295553681  -0.000022377   0.331918049
                        -0.000016704   0.495530585   0.031492987  -0.000045785   0.000092037  -0.311757939  -0.000801072  -0.230522620

   12    6.2  1.5  1.5  -0.000056137   0.495157139   0.031824370   0.000017565  -0.000095578  -0.303924739  -0.000664217   0.238864041
                        -0.000011647   0.133248779   0.009335998   0.000079598  -0.000165475   0.297679998   0.000052521   0.331298671

   13    7.2  1.5  1.5   0.002810865  -0.000253379  -0.000033500  -0.007950277   0.000322767   0.000324409  -0.271557150   0.000005066
                        -0.000012751  -0.000089863  -0.000012400  -0.000036893   0.000126703  -0.000279517  -0.003130637  -0.000003602

   14    8.2  1.5  1.5  -0.149498734   0.000107599  -0.000002831   0.658402967   0.084535180  -0.000042899  -0.000980811  -0.000060403
                         0.000012279   0.000464541   0.000014651   0.000045105   0.000006478  -0.000013915  -0.000003084   0.000003688

   15    1.2  1.5  0.5   0.000000165   0.000001209  -0.000622623  -0.002022683  -0.000179105   0.000856781  -0.001514441  -0.111193751
                         0.000000484  -0.000001182   0.000541377  -0.008994640  -0.001305120   0.002783477   0.006391172   0.270199748

   16    2.2  1.5  0.5   0.000000618  -0.000000079   0.000024961  -0.008278588  -0.000959365  -0.000181490  -0.007606103   0.004931151
                         0.000011936   0.000000069  -0.000005816  -0.205350527  -0.026910628  -0.000288504   0.145389858  -0.011959204

   17    3.2  1.5  0.5   0.000015257  -0.000000011  -0.000012130  -0.204643333  -0.025382271   0.000187839  -0.147061501   0.000909888
                        -0.000000485   0.000000022  -0.000016469   0.008356922   0.001167787  -0.000160304  -0.007651080  -0.002160524

   18    4.2  1.5  0.5  -0.000087581  -0.273184085   0.350067246   0.000049048  -0.000012259   0.092418729  -0.000295781   0.001762093
                        -0.000190259   0.250085711  -0.327292524   0.000083066  -0.000020441   0.450422352   0.000523254  -0.002877097

   19    5.2  1.5  0.5   0.078910192   0.000508922  -0.000122213   0.058087647   0.006379192   0.000036765   0.213362042  -0.000011722
                         0.128144670  -0.000502409   0.000116315   0.093893239   0.013780528   0.000392589  -0.327702983  -0.000002713

   20    6.2  1.5  0.5   0.124496817  -0.000304897   0.000047586   0.091650067   0.010416991  -0.000602224   0.328562422  -0.000012355
                        -0.081097119  -0.000267153   0.000034401  -0.059384402  -0.008941436   0.000103086   0.212849940   0.000000646

   21    7.2  1.5  0.5   0.000175377   0.350491855   0.275752100   0.000020911   0.000035768   0.515994268   0.000666008  -0.008949292
                        -0.000113730   0.382888342   0.294938296  -0.000006793  -0.000016267  -0.105864599   0.000374553  -0.004189145

   22    8.2  1.5  0.5  -0.000106025   0.002265707   0.004116361   0.000037471  -0.000112433   0.009420753   0.000016836   0.250718561
                        -0.000062484   0.002261576   0.004547445   0.000018610  -0.000061692  -0.002270014   0.000006675   0.103171140

   23    1.2  1.5 -0.5  -0.000000051  -0.000000670   0.007994156  -0.000038623   0.000135371  -0.000315718  -0.003359748   0.001107503
                         0.000001854   0.000000316  -0.004693675  -0.000950212  -0.001567567  -0.001109554   0.292152888  -0.006471660

   24    2.2  1.5 -0.5   0.000000006  -0.000013176   0.156432515   0.000015042  -0.000043598  -0.002999751   0.000149236   0.049880405
                        -0.000000099   0.000010935  -0.134853315   0.000025686   0.000117162  -0.016826029  -0.012950406  -0.136813213

   25    3.2  1.5 -0.5  -0.000000008  -0.000013374   0.134397522  -0.000024042   0.000075780   0.014104105   0.000019919  -0.138234660
                        -0.000000018  -0.000015644   0.156065769   0.000002418   0.000036334  -0.002032055  -0.002336207  -0.050451251

   26    4.2  1.5 -0.5  -0.000001260   0.000194640  -0.000096914  -0.000020828   0.000023946   0.000008254  -0.000300754  -0.000011203
                        -0.369906865  -0.000061547   0.000021254   0.501991341  -0.434780555  -0.000023068  -0.000814361  -0.000103929

   27    5.2  1.5 -0.5  -0.000029151  -0.147137130  -0.108672810   0.000002398  -0.000016795  -0.000103305   0.000004473   0.068149679
                         0.000725010   0.028195709   0.021617738  -0.000170842   0.000020894   0.010673658   0.000010341   0.385093231

   28    6.2  1.5 -0.5  -0.000408300  -0.024141436  -0.019457680   0.000066537  -0.000187342  -0.005586652   0.000011892   0.385634042
                        -0.000046233  -0.145929482  -0.108027554   0.000011446  -0.000004258  -0.006057034  -0.000003298  -0.067395434

   29    7.2  1.5 -0.5   0.519275084  -0.000033503  -0.000010729   0.376328617   0.546654769  -0.000039291   0.007652908   0.000196414
                        -0.000019218  -0.000203705  -0.000026497   0.000016346   0.000024236  -0.000002335  -0.000116638  -0.000019838

   30    8.2  1.5 -0.5   0.003181166   0.000113206  -0.000033497   0.005886244   0.008708083   0.000321795  -0.271284056   0.000007064
                         0.000144276   0.000035242  -0.000012787  -0.000110236   0.000191045  -0.000274059  -0.003122310   0.000001276

   31    1.2  1.5 -1.5   0.000000900  -0.000034561   0.173801070  -0.000323799   0.002584483  -0.003680915  -0.000774009  -0.000327729
                        -0.000003385   0.000031631  -0.162504482   0.001505268  -0.011631317  -0.017961481  -0.003768245   0.000809731

   32    2.2  1.5 -1.5   0.000003360   0.000001543  -0.007720521  -0.001349409   0.010688161   0.000252778  -0.002497936   0.000005554
                        -0.000080894  -0.000001420   0.007196054   0.034120258  -0.264012582   0.000894607  -0.085517657  -0.000165024

   33    3.2  1.5 -1.5   0.000081958   0.000000266  -0.001403619  -0.033630938   0.265165184   0.000124072  -0.082962922   0.000134323
                         0.000003241  -0.000000254   0.001274624  -0.001406207   0.010833946   0.000054936   0.002410890  -0.000014715

   34    4.2  1.5 -1.5  -0.000004634  -0.000351129  -0.000437616  -0.000030459   0.000151304   0.000805418   0.000082931  -0.103286623
                         0.000013117   0.000268277   0.000504685   0.000058369  -0.000284994   0.002581926   0.000171575   0.251003343

   35    5.2  1.5 -1.5  -0.273763486  -0.000051404  -0.000020952  -0.029873412   0.226541979  -0.000605604   0.214323463   0.000136176
                         0.434490502  -0.000032423   0.000040638   0.044960089  -0.361268724  -0.000186216   0.343777156  -0.000309289

   36    6.2  1.5 -1.5  -0.432436675  -0.000045212   0.000062817  -0.047073535   0.357387916  -0.000191017   0.347535590   0.000180529
                        -0.275134606  -0.000032359  -0.000043177  -0.028406863   0.228550293   0.000603494  -0.212373520   0.000104549

   37    7.2  1.5 -1.5   0.000238537   0.001879099  -0.005561623   0.000037436  -0.000115988   0.001923323   0.000005907   0.251054774
                         0.000127156   0.002071568  -0.005907271   0.000019072  -0.000066285  -0.000662908   0.000006410   0.103307706

   38    8.2  1.5 -1.5  -0.000423035  -0.100470579   0.452003234  -0.000011376   0.000044238   0.049829942  -0.000007714   0.001118769
                         0.000236887  -0.109766252   0.483428766   0.000013624  -0.000024611  -0.010226862  -0.000000683   0.000437294


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5  -0.011719491  -0.000000032  -0.000000047  -0.009345680  -0.009615480  -0.000000270
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000049  -0.010008913  -0.001017395  -0.000000024  -0.000000037   0.001412690
                         0.000000005   0.006003922   0.002561293   0.000000236   0.000000106  -0.013347276

    3    3.2  0.5  0.5  -0.000000046   0.000000015   0.000000048  -0.000000869   0.000000900   0.000000012
                        -0.011728174  -0.000000054  -0.000000088   0.012853435  -0.002986534   0.000000145

    4    1.2  0.5 -0.5   0.000000017  -0.006025728  -0.009447368   0.000000053   0.000000239  -0.008702083
                         0.000000027  -0.010045218  -0.003755290   0.000000023   0.000000022  -0.000921518

    5    2.2  0.5 -0.5   0.000000024   0.000000030   0.000000059  -0.000000989   0.000000932  -0.000000024
                         0.011660004   0.000000040  -0.000000191   0.003948096  -0.013130968  -0.000000078

    6    3.2  0.5 -0.5   0.000000038  -0.010053073   0.004630200  -0.000000007  -0.000000017  -0.000434659
                        -0.000000040   0.006030386  -0.011649927  -0.000000122   0.000000089   0.004111284

    7    1.2  1.5  1.5   0.000000555  -0.004804468  -0.000805896   0.000010221  -0.000010645   0.002234991
                         0.001207258   0.001599198   0.001179956  -0.261741478  -0.077623901  -0.006651382

    8    2.2  1.5  1.5   0.000000458  -0.098674779  -0.012894077  -0.000000854  -0.000000033   0.022634664
                        -0.000053404   0.053889226   0.028957283   0.011603371   0.003441657  -0.154055848

    9    3.2  1.5  1.5  -0.000000105  -0.053905694  -0.029251822  -0.000002843  -0.000001103   0.154135935
                        -0.000009157  -0.098787872  -0.013012017   0.002091632   0.000619977   0.022706851

   10    4.2  1.5  1.5   0.000011859   0.000097532   0.000030584  -0.000090800   0.000022067  -0.000104331
                        -0.439624293  -0.000007006  -0.000029647   0.115747394  -0.396653346   0.000152263

   11    5.2  1.5  1.5  -0.000003790   0.213332352   0.067906510   0.000005026  -0.000000162  -0.256132330
                         0.000198649   0.005158674  -0.049535443  -0.000058145   0.000177763   0.323279776

   12    6.2  1.5  1.5   0.000005691  -0.005157926   0.049164118   0.000004257   0.000006724  -0.323350399
                        -0.000016567   0.213332933   0.067976517   0.000008575  -0.000011640  -0.256097848

   13    7.2  1.5  1.5   0.439991182   0.000003197   0.000004670  -0.110486461   0.398440255   0.000005362
                         0.000010713  -0.000001658   0.000000472  -0.000031135   0.000038648   0.000005176

   14    8.2  1.5  1.5   0.007777467   0.000000540   0.000000893  -0.402578436  -0.113628203  -0.000007391
                         0.000064232   0.000000365   0.000000998  -0.000033220   0.000075326   0.000000216

   15    1.2  1.5  0.5   0.000668944   0.113699312  -0.006322962  -0.001980597   0.001261786   0.009283292
                        -0.002951341  -0.068203404   0.015917349  -0.004390278  -0.009609688  -0.087710760

   16    2.2  1.5  0.5   0.002765972  -0.005039039   0.000280774  -0.008189396   0.005219439  -0.000411658
                        -0.067090478   0.003022724  -0.000707445  -0.099814921  -0.218450664   0.003883250

   17    3.2  1.5  0.5   0.068405687  -0.000908377   0.000053010  -0.202382896   0.128938371  -0.000075632
                         0.002741018   0.000545535  -0.000126135   0.004060027   0.008944990   0.000701199

   18    4.2  1.5  0.5   0.000080488  -0.001567420   0.151306115  -0.000084926  -0.000026540   0.008765940
                        -0.000151331   0.000864978  -0.380678230  -0.000163545  -0.000040696  -0.082054986

   19    5.2  1.5  0.5   0.202695420   0.000001204  -0.000072078  -0.213163261  -0.065391266  -0.000008199
                        -0.317105668  -0.000001167   0.000173232  -0.341298583  -0.097870424   0.000030829

   20    6.2  1.5  0.5   0.320101881   0.000001731   0.000010332  -0.336664625  -0.103237048  -0.000004890
                         0.200796380   0.000000618  -0.000012123   0.216100416   0.061992897   0.000001783

   21    7.2  1.5  0.5  -0.000001737   0.002020715   0.382333043   0.000003604  -0.000005277   0.076737488
                        -0.000004302   0.003366800   0.151976228  -0.000005304  -0.000002092   0.008141715

   22    8.2  1.5  0.5  -0.000000122  -0.221655862  -0.074184857  -0.000007354  -0.000003347   0.412476808
                         0.000001798  -0.369514680  -0.029401055  -0.000000777  -0.000001182   0.043669539

   23    1.2  1.5 -0.5   0.000000261   0.002182846   0.003659209   0.000005994  -0.000006251  -0.000459968
                         0.132620828  -0.002088158  -0.004172393  -0.024943458   0.086289776  -0.009282326

   24    2.2  1.5 -0.5   0.000000003   0.056009675   0.051052815  -0.000000608  -0.000000279   0.016080288
                        -0.005877631  -0.036818010  -0.107627805   0.001107924  -0.003820485  -0.208195241

   25    3.2  1.5 -0.5   0.000000544  -0.037475552   0.174766656   0.000003214  -0.000000424  -0.146720188
                        -0.001059875  -0.057154848   0.074683129   0.000199377  -0.000689812  -0.006945507

   26    4.2  1.5 -0.5  -0.000064478   0.000088368   0.000142375  -0.000022410   0.000079393   0.000021624
                        -0.001781790  -0.000146866  -0.000122908   0.400685357   0.118854728  -0.000022451

   27    5.2  1.5 -0.5  -0.000000381   0.167655584   0.331558397  -0.000002847  -0.000004136   0.052748219
                         0.000001632  -0.336939970  -0.243412159  -0.000183783  -0.000049163  -0.061945130

   28    6.2  1.5 -0.5   0.000001418  -0.336852350   0.238681465   0.000005226  -0.000003233   0.067629536
                         0.000001167  -0.171217328   0.332451529   0.000014930   0.000000093   0.049938967

   29    7.2  1.5 -0.5   0.003929173   0.000004583  -0.000001145   0.402942971   0.113678034   0.000007149
                         0.000000944  -0.000000726  -0.000006272   0.000005663  -0.000019948  -0.000001216

   30    8.2  1.5 -0.5  -0.430536689  -0.000001479   0.000005966  -0.116662665   0.406286116   0.000002504
                         0.000001152   0.000001033   0.000001806  -0.000089768   0.000010890  -0.000000779

   31    1.2  1.5 -1.5   0.001098629   0.001039903  -0.098861662   0.000448142  -0.001489085  -0.005684664
                         0.004936222  -0.000623147   0.248728850   0.002002297  -0.006701105   0.053602070

   32    2.2  1.5 -1.5   0.004540640  -0.000045752   0.004382230   0.001840908  -0.006146355   0.000251616
                         0.112192171   0.000027979  -0.011026162   0.045489943  -0.152225748  -0.002376670

   33    3.2  1.5 -1.5   0.112297485  -0.000007942   0.000787905   0.045813471  -0.152284397   0.000044570
                        -0.004584637   0.000004640  -0.001988623  -0.001847390   0.006209415  -0.000428135

   34    4.2  1.5 -1.5  -0.000044086  -0.376679176   0.029430789  -0.000024916   0.000085953  -0.042716583
                        -0.000087095   0.225968722  -0.074260294  -0.000054607   0.000157984   0.403586529

   35    5.2  1.5 -1.5  -0.113969427   0.000168259  -0.000011502  -0.064397572   0.215903709   0.000018416
                        -0.179981937  -0.000105347   0.000039601  -0.102066135   0.340920035  -0.000181715

   36    6.2  1.5 -1.5  -0.179982820  -0.000011268   0.000005956  -0.101754503   0.341014829   0.000004760
                         0.113969083   0.000013395  -0.000004577   0.064595040  -0.215844123   0.000013164

   37    7.2  1.5 -1.5  -0.000000222   0.226156303  -0.069218635  -0.000005333  -0.000006641   0.404890169
                        -0.000003591   0.376994112  -0.027492259  -0.000002035   0.000004358   0.042843331

   38    8.2  1.5 -1.5  -0.000000588   0.004057503  -0.382168693  -0.000001464   0.000005820  -0.076740673
                        -0.000000276   0.006639325  -0.151886676   0.000000606   0.000000699  -0.008200071


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  31.676%   0.000%   0.000%  34.968%  33.320%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%  62.975%   3.683%   0.000%   0.000%  33.304%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   5.315%   0.000%   0.000%  61.317%  33.333%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%  31.678%  34.966%   0.000%   0.000%  33.320%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5  62.976%   0.000%   0.000%   3.683%  33.304%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   5.314%  61.318%   0.000%   0.000%  33.333%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.001%   0.000%   0.000%   0.009%   0.000%   0.000%  34.126%   0.094%   0.002%   0.008%
    8    2.2  1.5  1.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.002%   0.076%  42.216%   0.753%   4.080%
    9    3.2  1.5  1.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.002%   0.002%  41.810%   0.851%   4.486%
   10    4.2  1.5  1.5   0.003%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    5.2  1.5  1.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.002%   0.000%   2.974%   0.059%   2.775%
   12    6.2  1.5  1.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.002%   0.000%   3.026%   0.056%   2.726%
   13    7.2  1.5  1.5   0.003%   0.000%   0.000%   0.000%   0.007%   0.000%   0.001%   0.000%   0.000%   0.000%
   14    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   7.319%   0.000%   0.000%   0.000%
   15    1.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.051%   0.004%   0.010%  51.320%
   16    2.2  1.5  0.5   0.006%   0.000%   0.000%   0.002%   0.001%   0.000%  25.757%   0.000%   0.000%   0.100%
   17    3.2  1.5  0.5   0.003%   0.000%   0.000%   0.005%   0.001%   0.000%  25.461%   0.000%   0.000%   0.003%
   18    4.2  1.5  0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   5.050%   2.287%   0.002%
   19    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.003%   0.005%   0.000%   0.208%   0.000%   0.000%   0.000%
   20    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.003%   0.005%   0.000%   0.199%   0.000%   0.000%   0.000%
   21    7.2  1.5  0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   3.075%   4.261%   0.001%
   22    8.2  1.5  0.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.002%   1.222%
   23    1.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.001%   0.050%   0.025%
   24    2.2  1.5 -0.5   0.000%   0.006%   0.002%   0.000%   0.000%   0.001%   0.000%   0.525%  25.660%  12.304%
   25    3.2  1.5 -0.5   0.000%   0.003%   0.005%   0.000%   0.000%   0.001%   0.000%   0.436%  24.739%  13.398%
   26    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   3.659%   0.000%   0.000%   0.000%
   27    5.2  1.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.005%   0.000%   0.005%   0.214%   2.533%
   28    6.2  1.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.005%   0.000%   0.003%   0.187%   2.561%
   29    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   2.869%   0.000%   0.000%   0.000%
   30    8.2  1.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.007%   0.000%   0.001%   0.000%   0.000%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.001%   0.009%   0.000%   0.000%   0.000%   0.000%   0.640%  33.594%   0.007%
   32    2.2  1.5 -1.5   0.003%   0.000%   0.000%   0.000%   0.002%   0.000%   0.132%   0.001%   0.068%   0.000%
   33    3.2  1.5 -1.5   0.003%   0.000%   0.000%   0.000%   0.002%   0.000%   0.119%   0.000%   0.002%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.000%   1.224%
   35    5.2  1.5 -1.5   0.003%   0.000%   0.000%   0.000%   0.002%   0.000%   0.009%   0.000%   0.000%   0.000%
   36    6.2  1.5 -1.5   0.003%   0.000%   0.000%   0.000%   0.002%   0.000%   0.009%   0.000%   0.000%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.000%   1.225%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.137%   7.205%   0.001%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.001%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.001%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.005%   0.096%  50.989%   0.003%   0.032%   1.413%   0.048%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%   0.000%   0.101%   1.669%  15.799%   0.003%  23.652%   0.000%   0.000%   0.000%
    9    3.2  1.5  1.5   0.000%   0.000%   0.003%   1.671%  15.831%   0.000%  23.697%   0.000%   0.000%   0.000%
   10    4.2  1.5  1.5   1.197%   0.026%   0.067%   0.000%   0.000%   2.424%   0.000%   1.042%   0.148%  51.165%
   11    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.238%   2.255%   0.000%   0.261%   0.000%   0.073%   0.000%
   12    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.238%   2.255%   0.000%   0.261%   0.000%   0.074%   0.000%
   13    7.2  1.5  1.5   1.198%   0.025%   0.057%   0.000%   0.000%   2.436%   0.000%   1.043%   0.136%  47.288%
   14    8.2  1.5  1.5   0.000%   0.021%   2.436%   0.000%   0.000%   0.057%   0.000%   0.000%   0.000%   0.008%
   15    1.2  1.5  0.5   0.025%   0.001%   0.024%   0.558%   5.271%   0.059%  31.529%   0.016%   0.000%   0.000%
   16    2.2  1.5  0.5  12.115%   0.615%  11.120%   0.001%   0.010%  29.662%   0.062%   7.883%   0.000%   0.000%
   17    3.2  1.5  0.5  13.042%   0.069%  24.197%   0.000%   0.000%  16.656%   0.002%   7.895%   0.000%   0.000%
   18    4.2  1.5  0.5   0.000%   0.000%   0.000%   2.254%   0.238%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    5.2  1.5  0.5   2.486%   0.058%   2.423%   0.000%   0.000%   0.067%   0.000%   0.782%   0.001%   0.219%
   20    6.2  1.5  0.5   2.501%   0.051%   2.423%   0.000%   0.000%   0.067%   0.000%   0.781%   0.001%   0.220%
   21    7.2  1.5  0.5   0.000%   0.000%   0.000%   2.274%   0.219%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.219%   2.275%   0.000%   1.045%   0.000%   0.665%   0.002%
   23    1.2  1.5 -0.5  50.257%   1.081%   0.158%   0.015%   0.068%   5.667%   0.016%  31.530%   0.000%   0.000%
   24    2.2  1.5 -0.5   0.097%   0.002%   0.000%   6.216%  34.566%   0.011%   7.883%   0.062%   0.000%   0.000%
   25    3.2  1.5 -0.5   0.003%   0.000%   0.000%  29.916%  10.938%   0.000%   7.894%   0.002%   0.000%   0.000%
   26    4.2  1.5 -0.5   0.073%   3.608%   2.426%   0.000%   0.000%   0.067%   0.000%   0.000%   0.000%   0.000%
   27    5.2  1.5 -0.5   0.000%   0.000%   0.000%   2.252%   0.238%   0.000%   0.782%   0.000%   0.220%   0.001%
   28    6.2  1.5 -0.5   0.000%   0.000%   0.000%   2.251%   0.238%   0.000%   0.782%   0.000%   0.220%   0.001%
   29    7.2  1.5 -0.5   0.108%   4.360%   2.436%   0.000%   0.000%   0.057%   0.000%   0.000%   0.000%   0.000%
   30    8.2  1.5 -0.5   1.189%   0.035%   0.057%   0.000%   0.000%   2.437%   0.000%   1.044%   0.002%   0.663%
   31    1.2  1.5 -1.5   0.017%   0.080%   0.001%  47.392%   5.003%   0.035%   0.000%   0.048%   0.000%   0.000%
   32    2.2  1.5 -1.5   8.953%  37.973%   0.472%   0.094%   0.010%  16.995%   0.000%  23.651%   0.000%   0.000%
   33    3.2  1.5 -1.5   1.217%  45.814%   0.472%   0.003%   0.000%  17.029%   0.000%  23.696%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.238%   2.254%   0.000%   1.042%   0.000%  51.166%   0.148%
   35    5.2  1.5 -1.5   2.317%   3.484%   0.067%   0.000%   0.000%   2.425%   0.000%   0.261%   0.000%   0.073%
   36    6.2  1.5 -1.5   3.199%   2.602%   0.067%   0.000%   0.000%   2.425%   0.000%   0.261%   0.000%   0.074%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.219%   2.275%   0.000%   1.043%   0.000%  47.285%   0.136%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   2.273%   0.219%   0.000%   0.000%   0.000%   0.008%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.605%   0.093%   0.014%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.042%   0.011%   0.000%   7.035%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.041%   0.000%   0.000%   7.138%
   10    4.2  1.5  1.5   0.000%   0.147%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    5.2  1.5  1.5   5.597%   0.000%   0.000%   2.204%   0.000%  26.396%   0.104%   0.000%   0.000%  18.454%
   12    6.2  1.5  1.5   5.679%   0.000%   0.000%   2.223%   0.000%  26.294%   0.110%   0.000%   0.000%  18.098%
   13    7.2  1.5  1.5   0.000%   3.962%   0.005%   0.000%   0.001%   0.000%   0.000%   0.006%   0.000%   0.000%
   14    8.2  1.5  1.5   0.000%   0.002%  26.351%   0.000%   2.235%   0.000%   0.000%  43.349%   0.715%   0.000%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.001%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.224%   0.073%   0.000%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.195%   0.065%   0.000%
   18    4.2  1.5  0.5   0.000%   0.000%   0.000%  14.875%   0.000%  13.717%  22.967%   0.000%   0.000%  21.142%
   19    5.2  1.5  0.5   0.000%  16.908%  26.301%   0.000%   2.265%   0.000%   0.000%   1.219%   0.023%   0.000%
   20    6.2  1.5  0.5   0.000%  16.920%  26.351%   0.000%   2.208%   0.000%   0.000%   1.193%   0.019%   0.000%
   21    7.2  1.5  0.5   0.004%   0.000%   0.000%   1.633%   0.000%  26.945%  16.303%   0.000%   0.000%  27.746%
   22    8.2  1.5  0.5  50.786%   0.000%   0.000%   0.000%   0.000%   0.001%   0.004%   0.000%   0.000%   0.009%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.000%   0.000%   0.000%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.266%   0.000%   0.000%   0.029%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.242%   0.000%   0.000%   0.020%
   26    4.2  1.5 -0.5   0.000%   0.000%  14.910%   0.000%  13.683%   0.000%   0.000%  25.200%  18.903%   0.000%
   27    5.2  1.5 -0.5  16.904%   0.000%   0.000%  26.322%   0.000%   2.244%   1.228%   0.000%   0.000%   0.011%
   28    6.2  1.5 -0.5  16.916%   0.000%   0.000%  26.372%   0.000%   2.188%   1.205%   0.000%   0.000%   0.007%
   29    7.2  1.5 -0.5   0.000%   0.004%   1.615%   0.000%  26.965%   0.000%   0.000%  14.162%  29.883%   0.000%
   30    8.2  1.5 -0.5   0.000%  50.784%   0.000%   0.000%   0.001%   0.000%   0.000%   0.003%   0.008%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.661%   0.000%   0.014%   0.034%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.117%   6.982%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.113%   7.043%   0.000%
   34    4.2  1.5 -1.5   0.146%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   35    5.2  1.5 -1.5   0.000%   5.595%   2.224%   0.000%  26.373%   0.000%   0.000%   0.291%  18.184%   0.000%
   36    6.2  1.5 -1.5   0.000%   5.678%   2.243%   0.000%  26.270%   0.000%   0.000%   0.302%  17.996%   0.000%
   37    7.2  1.5 -1.5   3.965%   0.000%   0.000%   0.005%   0.000%   0.001%   0.007%   0.000%   0.000%   0.000%
   38    8.2  1.5 -1.5   0.002%   0.000%   0.000%  26.364%   0.000%   2.214%  43.801%   0.000%   0.000%   0.259%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.014%   0.000%   0.000%   0.009%   0.009%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.014%   0.001%   0.000%   0.000%   0.018%
    3    3.2  0.5  0.5   0.000%   0.000%   0.014%   0.000%   0.000%   0.017%   0.001%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.014%   0.010%   0.000%   0.000%   0.008%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.014%   0.000%   0.000%   0.002%   0.017%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.014%   0.016%   0.000%   0.000%   0.002%
    7    1.2  1.5  1.5   0.000%   0.002%   0.000%   0.003%   0.000%   6.851%   0.603%   0.005%
    8    2.2  1.5  1.5   0.000%   0.755%   0.000%   1.264%   0.100%   0.013%   0.001%   2.425%
    9    3.2  1.5  1.5   0.000%   0.668%   0.000%   1.266%   0.102%   0.000%   0.000%   2.427%
   10    4.2  1.5  1.5   7.372%   0.000%  19.327%   0.000%   0.000%   1.340%  15.733%   0.000%
   11    5.2  1.5  1.5   0.000%  16.331%   0.000%   4.554%   0.707%   0.000%   0.000%  17.011%
   12    6.2  1.5  1.5   0.000%  16.681%   0.000%   4.554%   0.704%   0.000%   0.000%  17.014%
   13    7.2  1.5  1.5   7.375%   0.000%  19.359%   0.000%   0.000%   1.221%  15.875%   0.000%
   14    8.2  1.5  1.5   0.000%   0.000%   0.006%   0.000%   0.000%  16.207%   1.291%   0.000%
   15    1.2  1.5  0.5   0.004%   8.537%   0.001%   1.758%   0.029%   0.002%   0.009%   0.778%
   16    2.2  1.5  0.5   2.120%   0.017%   0.451%   0.003%   0.000%   1.003%   4.775%   0.002%
   17    3.2  1.5  0.5   2.169%   0.001%   0.469%   0.000%   0.000%   4.098%   1.671%   0.000%
   18    4.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%  16.781%   0.000%   0.000%   0.681%
   19    5.2  1.5  0.5  15.291%   0.000%  14.164%   0.000%   0.000%  16.192%   1.385%   0.000%
   20    6.2  1.5  0.5  15.326%   0.000%  14.278%   0.000%   0.000%  16.004%   1.450%   0.000%
   21    7.2  1.5  0.5   0.000%   0.010%   0.000%   0.002%  16.928%   0.000%   0.000%   0.595%
   22    8.2  1.5  0.5   0.000%   7.350%   0.000%  18.567%   0.637%   0.000%   0.000%  17.204%
   23    1.2  1.5 -0.5   8.536%   0.004%   1.759%   0.001%   0.003%   0.062%   0.745%   0.009%
   24    2.2  1.5 -0.5   0.017%   2.121%   0.003%   0.449%   1.419%   0.000%   0.001%   4.360%
   25    3.2  1.5 -0.5   0.001%   2.165%   0.000%   0.467%   3.612%   0.000%   0.000%   2.158%
   26    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  16.055%   1.413%   0.000%
   27    5.2  1.5 -0.5   0.000%  15.294%   0.000%  14.164%  16.918%   0.000%   0.000%   0.662%
   28    6.2  1.5 -0.5   0.000%  15.326%   0.000%  14.278%  16.749%   0.000%   0.000%   0.707%
   29    7.2  1.5 -0.5   0.006%   0.000%   0.002%   0.000%   0.000%  16.236%   1.292%   0.000%
   30    8.2  1.5 -0.5   7.360%   0.000%  18.536%   0.000%   0.000%   1.361%  16.507%   0.000%
   31    1.2  1.5 -1.5   0.001%   0.000%   0.003%   0.000%   7.164%   0.000%   0.005%   0.291%
   32    2.2  1.5 -1.5   0.732%   0.000%   1.261%   0.000%   0.014%   0.207%   2.321%   0.001%
   33    3.2  1.5 -1.5   0.689%   0.000%   1.263%   0.000%   0.000%   0.210%   2.323%   0.000%
   34    4.2  1.5 -1.5   0.000%   7.367%   0.000%  19.295%   0.638%   0.000%   0.000%  16.471%
   35    5.2  1.5 -1.5  16.412%   0.000%   4.538%   0.000%   0.000%   1.456%  16.284%   0.000%
   36    6.2  1.5 -1.5  16.588%   0.000%   4.538%   0.000%   0.000%   1.453%  16.288%   0.000%
   37    7.2  1.5 -1.5   0.000%   7.370%   0.000%  19.327%   0.555%   0.000%   0.000%  16.577%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.006%  16.912%   0.000%   0.000%   0.596%


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
              1      21       54.22       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       9     3844.51       500      700      610     1000      520     2100     2140     5203     5303   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT      FILE
 CPU TIMES  *    420230.88 334992.65  70706.09  14519.76      5.16      0.70      3.05      3.32
 REAL TIME  *    425092.36 SEC
 DISK USED  *         3.81 GB (local),       11.60 GB (total)
 SF USED    *        29.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -416.101105338648

              CI              CI           MULTI         RHF-SCF
   -415.97762762   -416.49408793   -414.91368969   -415.57902153
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
