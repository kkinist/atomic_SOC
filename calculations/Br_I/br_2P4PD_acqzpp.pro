
 Working directory              : /wrk/irikura/molpro.SRu0TzQ8kZ/
 Global scratch directory       : /wrk/irikura/molpro.SRu0TzQ8kZ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.SRu0TzQ8kZ/

 id        : nistki

 Nodes     nprocs
 comp-61      3
 Distribution of processes:   nprocs(total)=    4   nprocs(compute)=    3   nprocs(helper)=    1
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 08:33:13 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (16 PROC) 64 bit mpp version                                                           DATE: 21-Jun-24          TIME: 14:41:35  
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
 CPU TIMES  *         0.15      0.00
 REAL TIME  *         0.32 SEC
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

     Node minimum: 21.758 MB, node maximum: 39.584 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   16206444.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15993207      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ    86907878. AND WROTE     2878519. INTEGRALS IN     10 RECORDS. CPU TIME:     0.32 SEC, REAL TIME:     0.36 SEC
 SORT2 READ     8938358. AND WROTE    48612351. INTEGRALS IN    453 RECORDS. CPU TIME:     0.22 SEC, REAL TIME:     0.26 SEC

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
 CPU TIMES  *         3.26      3.10      0.00
 REAL TIME  *         4.71 SEC
 DISK USED  *        41.21 MB (local),      309.91 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -415.54368857    -415.54368857     0.00D+00     0.85D-01     0     0       0.07      0.15    start
   2     -415.57538565      -0.03169707     0.45D-02     0.92D-02     1     0       0.08      0.23    diag
   3     -415.57883902      -0.00345337     0.31D-02     0.31D-02     2     0       0.07      0.30    diag
   4     -415.57899277      -0.00015375     0.56D-03     0.61D-03     3     0       0.07      0.37    diag
   5     -415.57902017      -0.00002740     0.10D-03     0.21D-03     4     0       0.08      0.45    diag
   6     -415.57902149      -0.00000132     0.24D-04     0.57D-04     5     0       0.07      0.52    diag
   7     -415.57902153      -0.00000004     0.25D-05     0.13D-04     6     0       0.07      0.59    diag
   8     -415.57902153      -0.00000000     0.25D-06     0.14D-05     7     0       0.08      0.67    fixocc
   9     -415.57902153      -0.00000000     0.39D-07     0.92D-07     0     0       0.07      0.74    diag

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
 CPU TIMES  *         4.00      0.74      3.10      0.00
 REAL TIME  *         5.59 SEC
 DISK USED  *        42.40 MB (local),      313.50 MB (total)
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

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  1293  ( 30 closed/active, 681 closed/virtual, 0 active/active, 582 active/virtual )
 Total number of variables:    13441
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   15   59    0   -415.15579842    -415.28474885   -0.12895043    0.40850994 0.00315034 0.00112095  0.12E+01      1.58
   2    9   42    0   -415.25034956    -415.25814221   -0.00779265    0.33013341 0.00011377 0.00070636  0.19E+00      2.97
   3    9   42    0   -415.25820229    -415.25820422   -0.00000194    0.00294064 0.00000373 0.00000169  0.14E-01      4.33
   4    5   19    0   -415.25820422    -415.25820422   -0.00000000    0.00000074 0.00000000 0.00000008  0.25E-04      5.27

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.22E-07)
                       Final energy:   -415.25820422
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -415.483333150142
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.08408113
 One electron energy                          -730.53619336
 Two electron energy                           315.05286021
 Virial ratio                                    2.40326130
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -415.483333150142
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.08408113
 One electron energy                          -730.53619336
 Two electron energy                           315.05286021
 Virial ratio                                    2.40326130
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -415.483333150124
 Nuclear energy                                  0.00000000
 Kinetic energy                                296.08408113
 One electron energy                          -730.53619336
 Two electron energy                           315.05286021
 Virial ratio                                    2.40326130
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -415.178945506710
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.32246966
 One electron energy                          -723.42441955
 Two electron energy                           308.24547404
 Virial ratio                                    2.40584950
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -415.178945506710
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.32246966
 One electron energy                          -723.42441955
 Two electron energy                           308.24547404
 Virial ratio                                    2.40584950
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -415.178945506692
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.32246966
 One electron energy                          -723.42441955
 Two electron energy                           308.24547404
 Virial ratio                                    2.40584950
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -415.170682100706
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.33520591
 One electron energy                          -723.46990197
 Two electron energy                           308.29921986
 Virial ratio                                    2.40576089
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -415.170682100704
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.33520591
 One electron energy                          -723.46990197
 Two electron energy                           308.29921986
 Virial ratio                                    2.40576089
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -415.170682100704
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.33520591
 One electron energy                          -723.46990197
 Two electron energy                           308.29921986
 Virial ratio                                    2.40576089
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -415.170682100683
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.33520591
 One electron energy                          -723.46990197
 Two electron energy                           308.29921986
 Virial ratio                                    2.40576089
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -415.170682100679
 Nuclear energy                                  0.00000000
 Kinetic energy                                295.33520591
 One electron energy                          -723.46990197
 Two electron energy                           308.29921986
 Virial ratio                                    2.40576089
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.901461932288
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.098538097478
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999970234
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.117719927040
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.882280238801
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999834159
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     2.997684225743
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.017491557523
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.982500837841
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000001609825
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     1.002321769068
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.098538069926
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.901461930130
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999999944
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.882280317973
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.117719789486
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999892541
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     3.002309828096
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     3.982508466662
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     1.017502116244
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     0.999999185435
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     0.997680403563
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999999997786
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999972392
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.000000029822
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999999754987
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999971713
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000000273300
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.000005946161
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     0.999999975816
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     0.999997045915
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     3.999999204740
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.999997827368
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 5 4 6 1 1 1 2   3 5 6 4 2 6 4 3 5 1   6 4 3 5 21415 812 7  131011 9 6 4 3 5 214
                                       15 7 81211 91310 1 3   5 4 6 2 81211 91415   71310 1 6 4 5 3 2 1   71415 81211 91310 3
                                        5 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 3   2 1 810 4 5 6 7 9 3   1 2 4 5 810 6 7 9 4   5 6 810 7 9 3 1 2 5
                                        4 6 7 9 810 3 1 221  13151719141620181112   810 5 4 6 9 7 3 2 1   4 5 810 6 9 7 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -10.03505     1  1  s    0.99096
    2.1     2.00000    -3.33704     1  1  d0   1.00029
    3.1     2.00000    -3.33704     1  1  d2-  1.00029
    4.1     2.00000    -3.33704     1  1  d2+  1.00029
    5.1     2.00000    -3.33704     1  1  d1+  1.00029
    6.1     2.00000    -3.33704     1  1  d1-  1.00029
    7.1     1.99770    -1.16486     1  1  s   -0.41303    1  4  s    0.53964    1  5  s    0.62400
    8.1     0.00259     0.57325     1  1  s    0.45302    1  4  s   -2.18514    1  5  s    0.95986    1  6  s    0.73708
                                    1  9  s    0.54799
    1.2     2.00000    -7.78546     1  1  px   1.00025
    2.2     2.00000    -7.78546     1  1  py   1.00025
    3.2     2.00000    -7.78546     1  1  pz   1.00025
    4.2     1.42174    -0.47839     1  2  pz   1.05227
    5.2     1.42174    -0.47839     1  2  px   1.05227
    6.2     1.42174    -0.47839     1  2  py   1.05227
    7.2     0.24483     0.04855     1  2  pz  -0.25554    1  9  pz   1.12311
    8.2     0.24483     0.04855     1  2  px  -0.25554    1  9  px   1.12311
    9.2     0.24483     0.04855     1  2  py  -0.25554    1  9  py   1.12311
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 a22000     -0.00004659      0.00016452      0.99014487
 20 22a000      0.94009652      0.31081414     -0.00000741
 20 2a2000     -0.31081414      0.94009650     -0.00017083
 20 a2a00b     -0.00000307      0.00001083      0.06519542
 20 aa20b0     -0.00000307      0.00001083      0.06519542
 20 2aa0b0     -0.06190002     -0.02046535      0.00000049
 20 a2ab00     -0.06190002     -0.02046535      0.00000049
 20 2aa00b     -0.02046535      0.06190002     -0.00001125
 20 aa2b00      0.02046535     -0.06190002      0.00001125
 
 Energy:     -415.48333315   -415.48333315   -415.48333315
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 2aaa00     -0.00000000      0.00000000     -0.00000000      0.81462828     -0.00017180      0.00163881     -0.00010249
 20 aa200a      0.00000000     -0.00000000      0.00000000     -0.40684187      0.00010718     -0.00056833      0.00148381
 20 aa20a0      0.00034921      0.00011866      0.70549982      0.00008712      0.00005398      0.00034393      0.70548884
 20 a2a00a      0.00034921      0.00011866      0.70549982     -0.00008712     -0.00005398     -0.00034393     -0.70548884
 20 a2a0a0     -0.00000000     -0.00000000     -0.00000000      0.40778641     -0.00006462      0.00107048      0.00138132
 20 a2aa00      0.24205915      0.66267446     -0.00023127      0.00003995      0.70343069      0.05386970     -0.00008017
 20 2aa0a0      0.24205915      0.66267447     -0.00023127     -0.00003995     -0.70343069     -0.05386970      0.00008017
 20 aa2a00      0.66267441     -0.24205923     -0.00028730     -0.00142667     -0.05386955      0.70342914     -0.00033913
 20 2aa00a     -0.66267441      0.24205923      0.00028730     -0.00142667     -0.05386955      0.70342914     -0.00033913
 
 Energy:     -415.17894551   -415.17894551   -415.17894551   -415.17068210   -415.17068210   -415.17068210   -415.17068210

 State:              8
 20 2aaa00     -0.00054570
 20 aa200a      0.70576158
 20 aa20a0     -0.00143275
 20 a2a00a      0.00143275
 20 a2a0a0      0.70521588
 20 a2aa00     -0.00004025
 20 2aa0a0      0.00004025
 20 aa2a00     -0.00024707
 20 2aa00a     -0.00024707
 
 Energy:     -415.17068210
 


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
 CPU TIMES  *         8.70      4.69      0.74      3.10      0.00
 REAL TIME  *        11.64 SEC
 DISK USED  *        67.06 MB (local),      387.46 MB (total)
 SF USED    *        66.85 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -415.4833332   2.0
    -415.4833332   2.0
    -415.4833332   2.0
    -415.1789455   2.0
    -415.1789455   2.0
    -415.1789455   2.0
    -415.1706821   6.0
    -415.1706821   6.0
    -415.1706821   6.0
    -415.1706821   6.0
    -415.1706821   6.0
                                                  


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


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -415.48333315
     2      -415.48333315
     3      -415.48333315

 Number of blocks in overlap matrix:   383   Smallest eigenvalue:  0.19D-06
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      37330628
 Number of doubly external configurations:       4815903
 Total number of contracted configurations:     42285831
 Total number of uncontracted configurations: 2315189004

 Diagonal Coupling coefficients finished.               Storage:  64529615 words, CPU-Time:    199.87 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   5571941 words, CPU-time:      0.35 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -415.48333315     0.00000000    -1.14924785  0.40D-01  0.68D-01   236.17
    1     2     2     1.00000000     0.00000000  -415.48333315     0.00000000    -1.14922922  0.40D-01  0.68D-01   236.17
    1     3     3     1.00000000     0.00000000  -415.48333315    -0.00000000    -1.14922617  0.40D-01  0.68D-01   236.17
    2     1     1     1.07767368    -0.97669790  -416.46003105    -0.97669790    -0.02484658  0.45D-02  0.99D-03  2598.67
    2     2     2     1.07768117    -0.97669045  -416.46002360    -0.97669045    -0.02485393  0.45D-02  0.99D-03  2598.67
    2     3     3     1.07767799    -0.97669031  -416.46002346    -0.97669031    -0.02485069  0.45D-02  0.99D-03  2598.67
    3     1     1     1.06588200    -0.99997625  -416.48330940    -0.02327835    -0.00055970  0.53D-04  0.52D-04  4950.98
    3     2     2     1.06588456    -0.99997587  -416.48330902    -0.02328543    -0.00055994  0.53D-04  0.52D-04  4950.98
    3     3     3     1.06588512    -0.99997584  -416.48330899    -0.02328553    -0.00055997  0.53D-04  0.52D-04  4950.98
    4     1     1     1.06593657    -1.00056981  -416.48390296    -0.00059357    -0.00002779  0.10D-05  0.38D-05  7303.98
    4     2     2     1.06593688    -1.00056976  -416.48390291    -0.00059389    -0.00002782  0.10D-05  0.38D-05  7303.98
    4     3     3     1.06593702    -1.00056976  -416.48390291    -0.00059392    -0.00002783  0.10D-05  0.38D-05  7303.98
    5     1     1     1.06625703    -1.00060206  -416.48393521    -0.00003225    -0.00000170  0.64D-07  0.23D-06  9651.45
    5     2     2     1.06625685    -1.00060206  -416.48393521    -0.00003229    -0.00000170  0.64D-07  0.23D-06  9651.45
    5     3     3     1.06625679    -1.00060206  -416.48393521    -0.00003230    -0.00000170  0.64D-07  0.23D-06  9651.45
    6     1     1     1.06630085    -1.00060409  -416.48393724    -0.00000203    -0.00000012  0.72D-08  0.14D-07 11996.40
    6     2     2     1.06630089    -1.00060409  -416.48393724    -0.00000203    -0.00000012  0.72D-08  0.14D-07 11996.40
    6     3     3     1.06630085    -1.00060409  -416.48393724    -0.00000203    -0.00000012  0.72D-08  0.14D-07 11996.40
    7     1     1     1.06630855    -1.00060422  -416.48393737    -0.00000013    -0.00000001  0.41D-09  0.10D-08 14342.78
    7     2     2     1.06630856    -1.00060422  -416.48393737    -0.00000013    -0.00000001  0.41D-09  0.10D-08 14342.78
    7     3     3     1.06630856    -1.00060422  -416.48393737    -0.00000013    -0.00000001  0.41D-09  0.10D-08 14342.78


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.4%  36.4%
 P   0.3%  54.1%   6.0%

 Initialization:   1.4%
 Other:            0.8%

 Total CPU:    14342.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/22000           0.0188541   0.8857790   0.3724191
 2222222022222/000           0.7324438   0.2278543  -0.5790202
 222222202222/2000           0.6219538  -0.2951844   0.6705934
 22222220222/2/00\           0.0013381   0.0628634   0.0264304
 22222220222//20\0           0.0013381   0.0628634   0.0264304
 222222202222//0\0          -0.0519813  -0.0161707   0.0410929
 22222220222/2/\00          -0.0519813  -0.0161707   0.0410929

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.626566    0.737875    0.018994
 2          -0.297373    0.229544    0.892347
 3           0.675566   -0.583314    0.375181

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968197   -0.000000   -0.000000
 2          -0.000000    0.968197   -0.000000
 3          -0.000000   -0.000000    0.968197


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.73787489 (fixed)   0.96838141 (relaxed)   0.96819656 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043768   -0.00052367   -0.85954020
 Singles      0.01313446   -0.06577695   -0.07397692
 Pairs        0.05320312   -0.01832900   -0.06708710
 Total        1.06677525   -0.08462962   -1.00060422
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48333315
 Nuclear energy                         0.00000000
 Kinetic energy                       296.25505781
 One electron energy                 -729.18407690
 Two electron energy                  312.70013953
 Virial quotient                       -1.40582895
 Correlation energy                    -1.00060422
 !MRCI STATE 1.2 Energy              -416.483937366823

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.55075297 (Davidson, fixed reference)
 Cluster corrected energies          -416.55034549 (Davidson, relaxed reference)
 Cluster corrected energies          -416.55075297 (Davidson, rotated reference)

 Cluster corrected energies          -416.54876926 (Pople, fixed reference)
 Cluster corrected energies          -416.54835106 (Pople, relaxed reference)
 Cluster corrected energies          -416.54876926 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.89234709 (fixed)   0.96838140 (relaxed)   0.96819655 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043768   -0.00052367   -0.06951404
 Singles      0.01313446   -0.06577695   -0.07397692
 Pairs        0.05320313   -0.86110935   -0.85711325
 Total        1.06677526   -0.92740996   -1.00060422
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48333315
 Nuclear energy                         0.00000000
 Kinetic energy                       296.25505726
 One electron energy                 -729.18407636
 Two electron energy                  312.70013899
 Virial quotient                       -1.40582895
 Correlation energy                    -1.00060422
 !MRCI STATE 2.2 Energy              -416.483937366565

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.55075297 (Davidson, fixed reference)
 Cluster corrected energies          -416.55034550 (Davidson, relaxed reference)
 Cluster corrected energies          -416.55075297 (Davidson, rotated reference)

 Cluster corrected energies          -416.54876927 (Pople, fixed reference)
 Cluster corrected energies          -416.54835107 (Pople, relaxed reference)
 Cluster corrected energies          -416.54876927 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.67556590 (fixed)   0.96838141 (relaxed)   0.96819656 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043768   -0.00052367   -0.53733746
 Singles      0.01313446   -0.06577695   -0.07397692
 Pairs        0.05320312   -0.36204690   -0.38928983
 Total        1.06677525   -0.42834752   -1.00060422
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.48333315
 Nuclear energy                         0.00000000
 Kinetic energy                       296.25505766
 One electron energy                 -729.18407686
 Two electron energy                  312.70013949
 Virial quotient                       -1.40582895
 Correlation energy                    -1.00060422
 !MRCI STATE 3.2 Energy              -416.483937366459

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.55075297 (Davidson, fixed reference)
 Cluster corrected energies          -416.55034550 (Davidson, relaxed reference)
 Cluster corrected energies          -416.55075297 (Davidson, rotated reference)

 Cluster corrected energies          -416.54876926 (Pople, fixed reference)
 Cluster corrected energies          -416.54835106 (Pople, relaxed reference)
 Cluster corrected energies          -416.54876926 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       54.22       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       8      988.68       500      700      610     1000      520     2100     2140     5203   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT      FILE
 CPU TIMES  *     14651.79  14643.09      4.69      0.74      3.10      0.00
 REAL TIME  *     14761.13 SEC
 DISK USED  *         1.02 GB (local),        3.24 GB (total)
 SF USED    *        10.62 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -416.55075297  AU                              
 SETTING HLSDIAG(2)     =      -416.55075297  AU                              
 SETTING HLSDIAG(3)     =      -416.55075297  AU                              


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
     1      -415.17894551
     2      -415.17894551
     3      -415.17894551
     4      -415.17068210
     5      -415.17068210
     6      -415.17068210
     7      -415.17068210
     8      -415.17068210

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3094D-06

 Number of blocks in overlap matrix:   802   Smallest eigenvalue:  0.31D-06
 Number of N-2 electron functions:    2252
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      33786040
 Number of doubly external configurations:      12504188
 Total number of contracted configurations:     46404680
 Total number of uncontracted configurations: 2168055314

 Diagonal Coupling coefficients finished.               Storage:  86407927 words, CPU-Time:    996.06 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   8424774 words, CPU-time:      0.86 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -415.17894551     0.00000000    -1.11153826  0.34D-01  0.59D-01  1082.41
    1     2     2     1.00000000     0.00000000  -415.17894551     0.00000000    -1.11165842  0.34D-01  0.59D-01  1082.41
    1     3     3     1.00000000     0.00000000  -415.17894551    -0.00000000    -1.11148478  0.34D-01  0.59D-01  1082.41
    1     4     4     1.00000000     0.00000000  -415.17068210     0.00000000    -1.11703905  0.35D-01  0.62D-01  1082.41
    1     5     5     1.00000000     0.00000000  -415.17068210    -0.00000000    -1.11315560  0.35D-01  0.59D-01  1082.41
    1     6     6     1.00000000     0.00000000  -415.17068210     0.00000000    -1.11328538  0.36D-01  0.59D-01  1082.41
    1     7     7     1.00000000     0.00000000  -415.17068210    -0.00000000    -1.11321710  0.36D-01  0.59D-01  1082.41
    1     8     8     1.00000000     0.00000000  -415.17068210    -0.00000000    -1.11352873  0.35D-01  0.59D-01  1082.41
    2     1     1     1.06850145    -0.95525080  -416.13419630    -0.95525080    -0.02028828  0.24D-02  0.98D-03  8940.66
    2     2     2     1.06855791    -0.95522261  -416.13416812    -0.95522261    -0.02033077  0.24D-02  0.98D-03  8940.66
    2     3     3     1.06851581    -0.95517365  -416.13411916    -0.95517365    -0.02036943  0.24D-02  0.98D-03  8940.66
    2     4     4     1.06965096    -0.95605333  -416.12673544    -0.95605333    -0.02070270  0.27D-02  0.97D-03  8940.66
    2     5     5     1.06957178    -0.95582579  -416.12650789    -0.95582579    -0.02084858  0.27D-02  0.99D-03  8940.66
    2     6     6     1.06963841    -0.95579602  -416.12647812    -0.95579602    -0.02089350  0.27D-02  0.99D-03  8940.66
    2     7     7     1.06961878    -0.95578130  -416.12646340    -0.95578130    -0.02091121  0.27D-02  0.99D-03  8940.66
    2     8     8     1.07073681    -0.95556641  -416.12624851    -0.95556641    -0.02129835  0.26D-02  0.12D-02  8940.66
    3     1     1     1.05959752    -0.97446751  -416.15341302    -0.01921672    -0.00051825  0.31D-04  0.55D-04 16804.62
    3     2     2     1.05958843    -0.97446252  -416.15340803    -0.01923991    -0.00052087  0.31D-04  0.56D-04 16804.62
    3     3     3     1.05956936    -0.97445989  -416.15340540    -0.01928624    -0.00052302  0.31D-04  0.56D-04 16804.62
    3     4     4     1.06024262    -0.97569098  -416.14637308    -0.01963765    -0.00050237  0.36D-04  0.53D-04 16804.62
    3     5     5     1.06011741    -0.97566142  -416.14634352    -0.01983563    -0.00051994  0.38D-04  0.53D-04 16804.62
    3     6     6     1.06000969    -0.97561610  -416.14629820    -0.01982008    -0.00054644  0.39D-04  0.58D-04 16804.62
    3     7     7     1.06001586    -0.97561463  -416.14629673    -0.01983333    -0.00054691  0.39D-04  0.58D-04 16804.62
    3     8     8     1.06000562    -0.97560934  -416.14629144    -0.02004293    -0.00054965  0.39D-04  0.58D-04 16804.62
    4     1     1     1.05991415    -0.97505828  -416.15400379    -0.00059077    -0.00004966  0.22D-05  0.62D-05 25075.95
    4     2     2     1.05990743    -0.97505762  -416.15400313    -0.00059510    -0.00005029  0.23D-05  0.63D-05 25075.95
    4     3     3     1.05990918    -0.97505737  -416.15400287    -0.00059747    -0.00005033  0.22D-05  0.63D-05 25075.95
    4     4     4     1.06039426    -0.97625204  -416.14693414    -0.00056105    -0.00004394  0.20D-05  0.58D-05 25075.95
    4     5     5     1.06036975    -0.97624882  -416.14693092    -0.00058741    -0.00004679  0.21D-05  0.60D-05 25075.95
    4     6     6     1.06032656    -0.97624175  -416.14692385    -0.00062565    -0.00005202  0.24D-05  0.65D-05 25075.95
    4     7     7     1.06032471    -0.97624109  -416.14692319    -0.00062645    -0.00005237  0.24D-05  0.66D-05 25075.95
    4     8     8     1.06031967    -0.97624012  -416.14692222    -0.00063078    -0.00005306  0.24D-05  0.66D-05 25075.95
    5     1     1     1.06045669    -0.97512086  -416.15406637    -0.00006258    -0.00000463  0.25D-06  0.48D-06 33321.19
    5     2     2     1.06045688    -0.97512085  -416.15406635    -0.00006323    -0.00000460  0.24D-06  0.48D-06 33321.19
    5     3     3     1.06045683    -0.97512079  -416.15406630    -0.00006343    -0.00000465  0.25D-06  0.48D-06 33321.19
    5     4     4     1.06088537    -0.97630747  -416.14698957    -0.00005543    -0.00000430  0.23D-06  0.47D-06 33321.19
    5     5     5     1.06088666    -0.97630736  -416.14698946    -0.00005853    -0.00000432  0.23D-06  0.48D-06 33321.19
    5     6     6     1.06088434    -0.97630711  -416.14698921    -0.00006536    -0.00000480  0.27D-06  0.51D-06 33321.19
    5     7     7     1.06088440    -0.97630702  -416.14698912    -0.00006594    -0.00000485  0.27D-06  0.51D-06 33321.19
    5     8     8     1.06088418    -0.97630694  -416.14698904    -0.00006682    -0.00000490  0.27D-06  0.51D-06 33321.19
    6     1     1     1.06049279    -0.97512638  -416.15407189    -0.00000552    -0.00000039  0.18D-07  0.45D-07 41584.34
    6     2     2     1.06049290    -0.97512634  -416.15407185    -0.00000550    -0.00000039  0.18D-07  0.45D-07 41584.34
    6     3     3     1.06049303    -0.97512634  -416.15407184    -0.00000554    -0.00000038  0.18D-07  0.44D-07 41584.34
    6     4     4     1.06092534    -0.97631284  -416.14699494    -0.00000537    -0.00000041  0.23D-07  0.47D-07 41584.34
    6     5     5     1.06092528    -0.97631280  -416.14699490    -0.00000544    -0.00000041  0.23D-07  0.47D-07 41584.34
    6     6     6     1.06092508    -0.97631278  -416.14699488    -0.00000567    -0.00000041  0.23D-07  0.47D-07 41584.34
    6     7     7     1.06092762    -0.97631269  -416.14699479    -0.00000567    -0.00000038  0.21D-07  0.45D-07 41584.34
    6     8     8     1.06092902    -0.97631256  -416.14699466    -0.00000562    -0.00000038  0.21D-07  0.45D-07 41584.34
    7     1     1     1.06050019    -0.97512684  -416.15407234    -0.00000045    -0.00000005  0.23D-08  0.57D-08 49845.21
    7     2     2     1.06050003    -0.97512679  -416.15407230    -0.00000045    -0.00000005  0.23D-08  0.56D-08 49845.21
    7     3     3     1.06050015    -0.97512678  -416.15407229    -0.00000045    -0.00000005  0.23D-08  0.56D-08 49845.21
    7     4     4     1.06093439    -0.97631331  -416.14699541    -0.00000048    -0.00000005  0.25D-08  0.60D-08 49845.21
    7     5     5     1.06093422    -0.97631327  -416.14699538    -0.00000047    -0.00000005  0.25D-08  0.59D-08 49845.21
    7     6     6     1.06093407    -0.97631326  -416.14699536    -0.00000048    -0.00000005  0.25D-08  0.59D-08 49845.21
    7     7     7     1.06093529    -0.97631314  -416.14699524    -0.00000045    -0.00000005  0.24D-08  0.59D-08 49845.21
    7     8     8     1.06093601    -0.97631301  -416.14699511    -0.00000045    -0.00000005  0.24D-08  0.58D-08 49845.21


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.2%  26.9%
 P   0.2%  56.6%  12.2%

 Initialization:   2.0%
 Other:            1.4%

 Total CPU:    49845.2 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222202222///00           0.0000000   0.0000000   0.0000000  -0.0000432  -0.0000157   0.0000182   0.0085702   0.7905121
 22222220222/2/0/0          -0.0000000  -0.0000000   0.0000000   0.0001230  -0.0000077  -0.0000928   0.6888887   0.3878343
 222222202222//0/0           0.0000799   0.6848048  -0.0002914   0.0000000  -0.0006271   0.6846425   0.0001018  -0.0000169
 222222202222//00/          -0.0000920   0.0002914   0.6848048   0.0000000   0.6846425   0.0006271   0.0000001   0.0000136
 22222220222//20/0           0.6848039  -0.0000798   0.0000920   0.6846437  -0.0000000  -0.0000000  -0.0001442   0.0000390
 22222220222/2/00/           0.6848021  -0.0000798   0.0000920  -0.6846451   0.0000000   0.0000000   0.0001442  -0.0000390
 22222220222/2//00           0.0000799   0.6848012  -0.0002914  -0.0000000   0.0006271  -0.6846459  -0.0001018   0.0000169
 22222220222//2/00           0.0000920  -0.0002914  -0.6848012  -0.0000000   0.6846459   0.0006271   0.0000001   0.0000136
 22222220222//200/          -0.0000000  -0.0000000   0.0000000   0.0001663   0.0000080  -0.0001110   0.6803190  -0.4026781

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000113   -0.000130    0.970960    0.000000    0.000000   -0.000000    0.000001   -0.000000
 2           0.970960    0.000413   -0.000113    0.000000    0.000003    0.000000   -0.000000   -0.000000
 3          -0.000413    0.970960    0.000130    0.000000   -0.000000    0.000003   -0.000000    0.000000
 4           0.000000    0.000000   -0.000001   -0.000054    0.000000    0.000000    0.970761    0.000205
 5          -0.000000   -0.000002    0.000000   -0.000019   -0.000889    0.970761   -0.000000    0.000000
 6          -0.000002    0.000000   -0.000000    0.000023    0.970761    0.000889   -0.000000   -0.000144
 7           0.000000   -0.000000    0.000000    0.008519    0.000144    0.000000   -0.000204    0.970723
 8          -0.000000   -0.000000   -0.000000    0.970723   -0.000024    0.000019    0.000055   -0.008519

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970960    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.970960   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.970960   -0.000000    0.000000    0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.970761   -0.000000    0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.970761   -0.000000   -0.000000    0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.970761    0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970761    0.000000
 8           0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.970760


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97096032 (fixed)   0.97102694 (relaxed)   0.97096034 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019866   -0.00060407   -0.85064509
 Singles      0.01452867   -0.07303207   -0.08220463
 Pairs        0.04598354    0.00000000   -0.04227711
 Total        1.06071087   -0.07363613   -0.97512684
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17894551
 Nuclear energy                         0.00000000
 Kinetic energy                       295.89661164
 One electron energy                 -722.81001170
 Two electron energy                  306.65593935
 Virial quotient                       -1.40641716
 Correlation energy                    -0.97512684
 !MRCI STATE 1.2 Energy              -416.154072343280

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.21327314 (Davidson, fixed reference)
 Cluster corrected energies          -416.21313125 (Davidson, relaxed reference)
 Cluster corrected energies          -416.21327314 (Davidson, rotated reference)

 Cluster corrected energies          -416.21068521 (Pople, fixed reference)
 Cluster corrected energies          -416.21054255 (Pople, relaxed reference)
 Cluster corrected energies          -416.21068521 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97096032 (fixed)   0.97102702 (relaxed)   0.97096041 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019866   -0.00060407   -0.85064536
 Singles      0.01452854   -0.07303187   -0.08220445
 Pairs        0.04598351    0.00000000   -0.04227698
 Total        1.06071071   -0.07363594   -0.97512679
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17894551
 Nuclear energy                         0.00000000
 Kinetic energy                       295.89660998
 One electron energy                 -722.81001724
 Two electron energy                  306.65594493
 Virial quotient                       -1.40641717
 Correlation energy                    -0.97512679
 !MRCI STATE 2.2 Energy              -416.154072301344

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.21327294 (Davidson, fixed reference)
 Cluster corrected energies          -416.21313105 (Davidson, relaxed reference)
 Cluster corrected energies          -416.21327294 (Davidson, rotated reference)

 Cluster corrected energies          -416.21068501 (Pople, fixed reference)
 Cluster corrected energies          -416.21054235 (Pople, relaxed reference)
 Cluster corrected energies          -416.21068501 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97096026 (fixed)   0.97102696 (relaxed)   0.97096036 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019866   -0.00060407   -0.85064526
 Singles      0.01452856   -0.07303186   -0.08220442
 Pairs        0.04598362   -0.00000001   -0.04227710
 Total        1.06071083   -0.07363594   -0.97512678
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17894551
 Nuclear energy                         0.00000000
 Kinetic energy                       295.89660266
 One electron energy                 -722.81001216
 Two electron energy                  306.65593988
 Virial quotient                       -1.40641720
 Correlation energy                    -0.97512678
 !MRCI STATE 3.2 Energy              -416.154072289607

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.21327305 (Davidson, fixed reference)
 Cluster corrected energies          -416.21313116 (Davidson, relaxed reference)
 Cluster corrected energies          -416.21327305 (Davidson, rotated reference)

 Cluster corrected energies          -416.21068512 (Pople, fixed reference)
 Cluster corrected energies          -416.21054245 (Pople, relaxed reference)
 Cluster corrected energies          -416.21068512 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97076116 (fixed)   0.97082721 (relaxed)   0.97076118 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019959   -0.00061404   -0.85059817
 Singles      0.01482773   -0.07370877   -0.08309966
 Pairs        0.04611882   -0.00019044   -0.04261548
 Total        1.06114614   -0.07451325   -0.97631331
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17068210
 Nuclear energy                         0.00000000
 Kinetic energy                       295.90269473
 One electron energy                 -722.83087759
 Two electron energy                  306.68388218
 Virial quotient                       -1.40636433
 Correlation energy                    -0.97631331
 !MRCI STATE 4.2 Energy              -416.146995413395

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.20669320 (Davidson, fixed reference)
 Cluster corrected energies          -416.20655229 (Davidson, relaxed reference)
 Cluster corrected energies          -416.20669320 (Davidson, rotated reference)

 Cluster corrected energies          -416.20410466 (Pople, fixed reference)
 Cluster corrected energies          -416.20396287 (Pople, relaxed reference)
 Cluster corrected energies          -416.20410466 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97076085 (fixed)   0.97082729 (relaxed)   0.97076126 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019959   -0.00061405   -0.85077768
 Singles      0.01482766   -0.07370868   -0.08309954
 Pairs        0.04611872   -0.00000015   -0.04243605
 Total        1.06114597   -0.07432288   -0.97631327
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17068210
 Nuclear energy                         0.00000000
 Kinetic energy                       295.90269292
 One electron energy                 -722.83088087
 Two electron energy                  306.68388549
 Virial quotient                       -1.40636434
 Correlation energy                    -0.97631327
 !MRCI STATE 5.2 Energy              -416.146995375319

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.20669299 (Davidson, fixed reference)
 Cluster corrected energies          -416.20655208 (Davidson, relaxed reference)
 Cluster corrected energies          -416.20669299 (Davidson, rotated reference)

 Cluster corrected energies          -416.20410445 (Pople, fixed reference)
 Cluster corrected energies          -416.20396266 (Pople, relaxed reference)
 Cluster corrected energies          -416.20410445 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97076091 (fixed)   0.97082735 (relaxed)   0.97076132 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019959   -0.00061404   -0.85090444
 Singles      0.01482764   -0.07370867   -0.08309954
 Pairs        0.04611859    0.00013425   -0.04230928
 Total        1.06114582   -0.07418847   -0.97631326
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17068210
 Nuclear energy                         0.00000000
 Kinetic energy                       295.90270183
 One electron energy                 -722.83088607
 Two electron energy                  306.68389071
 Virial quotient                       -1.40636430
 Correlation energy                    -0.97631326
 !MRCI STATE 6.2 Energy              -416.146995360020

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.20669284 (Davidson, fixed reference)
 Cluster corrected energies          -416.20655192 (Davidson, relaxed reference)
 Cluster corrected energies          -416.20669284 (Davidson, rotated reference)

 Cluster corrected energies          -416.20410430 (Pople, fixed reference)
 Cluster corrected energies          -416.20396251 (Pople, relaxed reference)
 Cluster corrected energies          -416.20410430 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97072335 (fixed)   0.97082679 (relaxed)   0.97076077 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019959   -0.00061403   -0.00079504
 Singles      0.01482763   -0.07370854   -0.08309937
 Pairs        0.04611982   -0.90195580   -0.89241873
 Total        1.06114704   -0.97627838   -0.97631314
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17068210
 Nuclear energy                         0.00000000
 Kinetic energy                       295.90265928
 One electron energy                 -722.83085622
 Two electron energy                  306.68386098
 Virial quotient                       -1.40636450
 Correlation energy                    -0.97631314
 !MRCI STATE 7.2 Energy              -416.146995241401

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.20669390 (Davidson, fixed reference)
 Cluster corrected energies          -416.20655299 (Davidson, relaxed reference)
 Cluster corrected energies          -416.20669390 (Davidson, rotated reference)

 Cluster corrected energies          -416.20410537 (Pople, fixed reference)
 Cluster corrected energies          -416.20396357 (Pople, relaxed reference)
 Cluster corrected energies          -416.20410537 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97072306 (fixed)   0.97082647 (relaxed)   0.97076044 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019959   -0.00061403   -0.85823544
 Singles      0.01482769   -0.07370859   -0.08309915
 Pairs        0.04612048    0.00791534   -0.03497841
 Total        1.06114776   -0.06640729   -0.97631301
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -415.17068210
 Nuclear energy                         0.00000000
 Kinetic energy                       295.90265482
 One electron energy                 -722.83085972
 Two electron energy                  306.68386461
 Virial quotient                       -1.40636452
 Correlation energy                    -0.97631301
 !MRCI STATE 8.2 Energy              -416.146995110125

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -416.20669447 (Davidson, fixed reference)
 Cluster corrected energies          -416.20655354 (Davidson, relaxed reference)
 Cluster corrected energies          -416.20669447 (Davidson, rotated reference)

 Cluster corrected energies          -416.20410594 (Pople, fixed reference)
 Cluster corrected energies          -416.20396414 (Pople, relaxed reference)
 Cluster corrected energies          -416.20410594 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       54.22       500      700      610      900      950      970     1000      129      960     1100   
                                          VAR     GEOM    BASINP   SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       9     3840.27       500      700      610     1000      520     2100     2140     5203     5303   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT      FILE
 CPU TIMES  *     70344.41  55692.62  14643.09      4.69      0.74      3.10      0.00
 REAL TIME  *     70898.71 SEC
 DISK USED  *         3.80 GB (local),       11.59 GB (total)
 SF USED    *        29.95 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -416.21327314  AU                              
 SETTING HLSDIAG(5)     =      -416.21327294  AU                              
 SETTING HLSDIAG(6)     =      -416.21327305  AU                              
 SETTING HLSDIAG(7)     =      -416.20669320  AU                              
 SETTING HLSDIAG(8)     =      -416.20669299  AU                              
 SETTING HLSDIAG(9)     =      -416.20669284  AU                              
 SETTING HLSDIAG(10)    =      -416.20669390  AU                              
 SETTING HLSDIAG(11)    =      -416.20669447  AU                              


         HLSDIAG
    -416.5507530
    -416.5507530
    -416.5507530
    -416.2132731
    -416.2132729
    -416.2132730
    -416.2066932
    -416.2066930
    -416.2066928
    -416.2066939
    -416.2066945
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -416.483937   -416.483937   -416.483937
 Replaced energies:   -416.550753   -416.550753   -416.550753

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:   -416.154072   -416.154072   -416.154072   -416.146995   -416.146995   -416.146995   -416.146995   -416.146995
 Replaced energies:   -416.213273   -416.213273   -416.213273   -416.206693   -416.206693   -416.206693   -416.206694   -416.206694



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -416.55075297

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00    -756.59    -297.73     177.14      -0.02      -5.30     191.65
                           -0.00     486.63   -1157.42      -0.00     876.25     385.71     208.52       5.30       0.03    -225.59

    2   2.2  0.5  0.5       0.00       0.00       0.00     756.59       0.00     957.06     -84.04      -0.10    -250.09     -90.92
                         -486.63       0.00      24.64    -876.25      -0.00     812.69      64.90     250.07      -0.10     -70.21

    3   3.2  0.5  0.5       0.00       0.00       0.00     297.73    -957.06       0.00     191.01      -0.07    -105.12     206.54
                         1157.42     -24.64      -0.00    -385.71    -812.69       0.00    -164.83     105.16      -0.07     178.40

    4   1.2  0.5 -0.5      -0.00     756.59     297.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     876.25     385.71       0.00    -486.63    1157.42       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5    -756.59       0.00    -957.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -876.25       0.00     812.69     486.63      -0.00     -24.64       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5    -297.73     957.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -385.71    -812.69      -0.00   -1157.42      24.64       0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5     177.14     -84.04     191.01       0.00       0.00       0.00   74068.26       0.00       0.00       0.00
                         -208.52     -64.90     164.83      -0.00      -0.00      -0.00      -0.00       0.09       0.08      -0.05

    8   2.2  1.5  1.5      -0.02      -0.10      -0.07       0.00       0.00       0.00       0.00   74068.31       0.00       0.00
                           -5.30    -250.07    -105.16      -0.00      -0.00      -0.00      -0.09       0.00     645.66       0.00

    9   3.2  1.5  1.5      -5.30    -250.09    -105.12       0.00       0.00       0.00       0.00       0.00   74068.28       0.00
                           -0.03       0.10       0.07      -0.00      -0.00      -0.00      -0.08    -645.66       0.00       0.00

   10   4.2  1.5  1.5     191.65     -90.92     206.54       0.00       0.00       0.00       0.00       0.00       0.00   75512.39
                          225.59      70.21    -178.40      -0.00      -0.00      -0.00       0.05      -0.00      -0.00      -0.00

   11   5.2  1.5  1.5       5.76     270.54     113.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.25      -0.10      -0.00      -0.00      -0.00       0.10     731.79       0.36      -0.00

   12   6.2  1.5  1.5      -0.03       0.24       0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.78     270.48     113.75      -0.00      -0.00      -0.00       0.08       0.36    -731.79       0.19

   13   7.2  1.5  1.5     224.09      69.74    -177.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -192.85      91.53    -207.83      -0.00      -0.00      -0.00      -9.16       0.00      -0.11   -1290.50

   14   8.2  1.5  1.5    -132.70     -41.29     104.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -108.41      51.46    -116.92      -0.00      -0.00      -0.00    -844.95       0.11      -0.10      13.99

   15   1.2  1.5  0.5       0.00       0.00       0.00     102.27     -48.52     110.28      -0.00      -0.16    -372.77       0.06
                            0.01       0.02      -0.05    -120.39     -37.47      95.16       0.00     372.77      -0.16      -0.05

   16   2.2  1.5  0.5       0.00       0.00       0.00      -0.01      -0.06      -0.04       0.16      -0.00       0.04      -0.08
                         -202.77      96.16    -218.44      -3.06    -144.38     -60.72    -372.77      -0.00      -0.05    -422.51

   17   3.2  1.5  0.5       0.00       0.00       0.00      -3.06    -144.39     -60.69     372.77      -0.04      -0.00    -422.51
                         -240.69     -74.94     190.43      -0.01       0.06       0.04       0.16       0.05       0.00       0.10

   18   4.2  1.5  0.5       0.00       0.00       0.00     110.65     -52.49     119.24      -0.06       0.08     422.50       0.00
                            0.00       0.02       0.01     130.25      40.53    -103.00       0.05     422.50      -0.10       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00       3.33     156.20      65.67     422.50      -0.05       0.06    -372.56
                         -260.28     -81.12     206.14      -0.00      -0.14      -0.06       0.39      -0.00      -0.00       0.23

   20   6.2  1.5  0.5       0.00       0.00       0.00      -0.02       0.14       0.08       0.39       0.07       0.00      -0.30
                         -219.54     104.00    -236.26       3.34     156.16      65.68    -422.50       0.05      -0.11    -372.56

   21   7.2  1.5  0.5       0.00       0.00       0.00     129.38      40.27    -102.32      -0.05    -419.83       0.09      -0.00
                           -0.12      -3.99      -1.72    -111.34      52.85    -119.99      -0.12       0.09     425.12      -0.06

   22   8.2  1.5  0.5       0.00       0.00       0.00     -76.62     -23.84      60.58       0.04     248.49      -0.08      -0.01
                           -7.74    -363.77    -152.93     -62.59      29.71     -67.50      -0.02       0.13     239.33       0.01

   23   1.2  1.5 -0.5     102.27     -48.52     110.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          120.39      37.47     -95.16       0.01       0.02      -0.05      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5      -0.01      -0.06      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.06     144.38      60.72    -202.77      96.16    -218.44      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5      -3.06    -144.39     -60.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.06      -0.04    -240.69     -74.94     190.43      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5     110.65     -52.49     119.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -130.25     -40.53     103.00       0.00       0.02       0.01      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5       3.33     156.20      65.67       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.14       0.06    -260.28     -81.12     206.14      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5      -0.02       0.14       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.34    -156.16     -65.68    -219.54     104.00    -236.26      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5     129.38      40.27    -102.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          111.34     -52.85     119.99      -0.12      -3.99      -1.72      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5     -76.62     -23.84      60.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           62.59     -29.71      67.50      -7.74    -363.77    -152.93      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00     177.14     -84.04     191.01       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     208.52      64.90    -164.83      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00      -0.02      -0.10      -0.07       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       5.30     250.07     105.16      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00      -5.30    -250.09    -105.12       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.03      -0.10      -0.07      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00     191.65     -90.92     206.54       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -225.59     -70.21     178.40      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       5.76     270.54     113.74       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.25       0.10      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00      -0.03       0.24       0.13       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -5.78    -270.48    -113.75      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00     224.09      69.74    -177.23       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     192.85     -91.53     207.83      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00    -132.70     -41.29     104.93       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     108.41     -51.46     116.92      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5       5.76      -0.03     224.09    -132.70       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -5.78     192.85     108.41      -0.01     202.77     240.69      -0.00     260.28     219.54

    2   2.2  0.5  0.5     270.54       0.24      69.74     -41.29       0.00       0.00       0.00       0.00       0.00       0.00
                            0.25    -270.48     -91.53     -51.46      -0.02     -96.16      74.94      -0.02      81.12    -104.00

    3   3.2  0.5  0.5     113.74       0.13    -177.23     104.93       0.00       0.00       0.00       0.00       0.00       0.00
                            0.10    -113.75     207.83     116.92       0.05     218.44    -190.43      -0.01    -206.14     236.26

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00     102.27      -0.01      -3.06     110.65       3.33      -0.02
                            0.00       0.00       0.00       0.00     120.39       3.06       0.01    -130.25       0.00      -3.34

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00     -48.52      -0.06    -144.39     -52.49     156.20       0.14
                            0.00       0.00       0.00       0.00      37.47     144.38      -0.06     -40.53       0.14    -156.16

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00     110.28      -0.04     -60.69     119.24      65.67       0.08
                            0.00       0.00       0.00       0.00     -95.16      60.72      -0.04     103.00       0.06     -65.68

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.16     372.77      -0.06     422.50       0.39
                           -0.10      -0.08       9.16     844.95      -0.00     372.77      -0.16      -0.05      -0.39     422.50

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.16      -0.00      -0.04       0.08      -0.05       0.07
                         -731.79      -0.36      -0.00      -0.11    -372.77       0.00      -0.05    -422.50       0.00      -0.05

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00    -372.77       0.04      -0.00     422.50       0.06       0.00
                           -0.36     731.79       0.11       0.10       0.16       0.05      -0.00       0.10       0.00       0.11

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.06      -0.08    -422.51       0.00    -372.56      -0.30
                            0.00      -0.19    1290.50     -13.99       0.05     422.51      -0.10      -0.00      -0.23     372.56

   11   5.2  1.5  1.5   75512.44       0.00       0.00       0.00    -422.51       0.05      -0.06     372.56       0.00      -0.01
                            0.00    -645.30      -0.10       0.02       0.39      -0.00      -0.00       0.23       0.00       0.07

   12   6.2  1.5  1.5       0.00   75512.47       0.00       0.00      -0.39      -0.07      -0.00       0.30       0.01      -0.00
                          645.30      -0.00      -0.00       0.01    -422.51       0.05      -0.11    -372.56      -0.07      -0.00

   13   7.2  1.5  1.5       0.00       0.00   75512.24       0.00       0.05     419.84      -0.09       0.00      -0.27     379.53
                            0.10       0.00      -0.00      -0.07      -0.12       0.09     425.13      -0.06     365.54       0.26

   14   8.2  1.5  1.5       0.00       0.00       0.00   75512.11      -0.04    -248.50       0.08       0.01      -0.61     641.21
                           -0.02      -0.01       0.07       0.00      -0.02       0.13     239.34       0.01    -649.29      -0.57

   15   1.2  1.5  0.5    -422.51      -0.39       0.05      -0.04   74068.26       0.00       0.00       0.00       0.00       0.00
                           -0.39     422.51       0.12       0.02      -0.00       0.03       0.03      -0.02      -0.03      -0.03

   16   2.2  1.5  0.5       0.05      -0.07     419.84    -248.50       0.00   74068.31       0.00       0.00       0.00       0.00
                            0.00      -0.05      -0.09      -0.13      -0.03       0.00     215.22       0.00    -243.93      -0.12

   17   3.2  1.5  0.5      -0.06      -0.00      -0.09       0.08       0.00       0.00   74068.28       0.00       0.00       0.00
                            0.00       0.11    -425.13    -239.34      -0.03    -215.22       0.00       0.00      -0.12     243.93

   18   4.2  1.5  0.5     372.56       0.30       0.00       0.01       0.00       0.00       0.00   75512.39       0.00       0.00
                           -0.23     372.56       0.06      -0.01       0.02      -0.00      -0.00      -0.00       0.00      -0.06

   19   5.2  1.5  0.5       0.00       0.01      -0.27      -0.61       0.00       0.00       0.00       0.00   75512.44       0.00
                           -0.00       0.07    -365.54     649.29       0.03     243.93       0.12      -0.00       0.00    -215.10

   20   6.2  1.5  0.5      -0.01      -0.00     379.53     641.21       0.00       0.00       0.00       0.00       0.00   75512.47
                           -0.07       0.00      -0.26       0.57       0.03       0.12    -243.93       0.06     215.10      -0.00

   21   7.2  1.5  0.5       0.27    -379.53      -0.00       0.10       0.00       0.00       0.00       0.00       0.00       0.00
                          365.54       0.26       0.00       0.01      -3.05       0.00      -0.04    -430.17       0.03       0.00

   22   8.2  1.5  0.5       0.61    -641.21      -0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -649.29      -0.57      -0.01      -0.00    -281.65       0.04      -0.03       4.66      -0.01      -0.00

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.18    -430.44       0.07    -487.87      -0.45
                           -0.00      -0.00      -0.00      -0.00       0.00     430.44      -0.18      -0.06      -0.45     487.87

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.18      -0.00       0.05      -0.09       0.06      -0.08
                           -0.00      -0.00      -0.00      -0.00    -430.44      -0.00      -0.06    -487.87       0.00      -0.06

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00     430.44      -0.05      -0.00    -487.87      -0.07      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.18       0.06       0.00       0.12       0.01       0.13

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.07       0.09     487.86       0.00     430.19       0.34
                           -0.00      -0.00      -0.00      -0.00       0.06     487.86      -0.12       0.00      -0.26     430.19

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00     487.86      -0.06       0.07    -430.19       0.00       0.01
                           -0.00      -0.00      -0.00      -0.00       0.45      -0.00      -0.01       0.26      -0.00       0.08

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.45       0.08       0.00      -0.34      -0.01      -0.00
                           -0.00      -0.00      -0.00      -0.00    -487.86       0.06      -0.13    -430.19      -0.08       0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.06    -484.78       0.10      -0.00       0.31    -438.24
                           -0.00      -0.00      -0.00      -0.00      -0.14       0.11     490.89      -0.06     422.09       0.30

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.04     286.94      -0.09      -0.01       0.70    -740.41
                           -0.00      -0.00      -0.00      -0.00      -0.03       0.15     276.36       0.01    -749.74      -0.66

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

    1   1.2  0.5  0.5       0.00       0.00     102.27      -0.01      -3.06     110.65       3.33      -0.02     129.38     -76.62
                            0.12       7.74    -120.39      -3.06      -0.01     130.25      -0.00       3.34    -111.34     -62.59

    2   2.2  0.5  0.5       0.00       0.00     -48.52      -0.06    -144.39     -52.49     156.20       0.14      40.27     -23.84
                            3.99     363.77     -37.47    -144.38       0.06      40.53      -0.14     156.16      52.85      29.71

    3   3.2  0.5  0.5       0.00       0.00     110.28      -0.04     -60.69     119.24      65.67       0.08    -102.32      60.58
                            1.72     152.93      95.16     -60.72       0.04    -103.00      -0.06      65.68    -119.99     -67.50

    4   1.2  0.5 -0.5     129.38     -76.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          111.34      62.59      -0.01     202.77     240.69      -0.00     260.28     219.54       0.12       7.74

    5   2.2  0.5 -0.5      40.27     -23.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -52.85     -29.71      -0.02     -96.16      74.94      -0.02      81.12    -104.00       3.99     363.77

    6   3.2  0.5 -0.5    -102.32      60.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          119.99      67.50       0.05     218.44    -190.43      -0.01    -206.14     236.26       1.72     152.93

    7   1.2  1.5  1.5      -0.05       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.12       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5    -419.83     248.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09      -0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       0.09      -0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -425.12    -239.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.06      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       0.27       0.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -365.54     649.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5    -379.53    -641.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.26       0.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5      -0.00      -0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00      -0.00       0.18     430.44      -0.07     487.86       0.45      -0.06       0.04
                            3.05     281.65      -0.00     430.44      -0.18      -0.06      -0.45     487.86       0.14       0.03

   16   2.2  1.5  0.5       0.00       0.00      -0.18      -0.00      -0.05       0.09      -0.06       0.08    -484.78     286.94
                           -0.00      -0.04    -430.44       0.00      -0.06    -487.86       0.00      -0.06      -0.11      -0.15

   17   3.2  1.5  0.5       0.00       0.00    -430.44       0.05      -0.00     487.86       0.07       0.00       0.10      -0.09
                            0.04       0.03       0.18       0.06      -0.00       0.12       0.01       0.13    -490.89    -276.36

   18   4.2  1.5  0.5       0.00       0.00       0.07      -0.09    -487.87       0.00    -430.19      -0.34      -0.00      -0.01
                          430.17      -4.66       0.06     487.87      -0.12      -0.00      -0.26     430.19       0.06      -0.01

   19   5.2  1.5  0.5       0.00       0.00    -487.87       0.06      -0.07     430.19       0.00      -0.01       0.31       0.70
                           -0.03       0.01       0.45      -0.00      -0.01       0.26       0.00       0.08    -422.09     749.74

   20   6.2  1.5  0.5       0.00       0.00      -0.45      -0.08      -0.00       0.34       0.01      -0.00    -438.24    -740.41
                           -0.00       0.00    -487.87       0.06      -0.13    -430.19      -0.08      -0.00      -0.30       0.66

   21   7.2  1.5  0.5   75512.24       0.00       0.06     484.79      -0.10       0.00      -0.31     438.24      -0.00      -0.12
                           -0.00      -0.02      -0.14       0.11     490.89      -0.06     422.09       0.30      -0.00       0.01

   22   8.2  1.5  0.5       0.00   75512.11      -0.04    -286.94       0.09       0.01      -0.70     740.41       0.12       0.00
                            0.02       0.00      -0.03       0.15     276.36       0.01    -749.74      -0.66      -0.01       0.00

   23   1.2  1.5 -0.5       0.06      -0.04   74068.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.14       0.03       0.00      -0.03      -0.03       0.02       0.03       0.03      -3.05    -281.65

   24   2.2  1.5 -0.5     484.79    -286.94       0.00   74068.31       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.11      -0.15       0.03      -0.00    -215.22      -0.00     243.93       0.12       0.00       0.04

   25   3.2  1.5 -0.5      -0.10       0.09       0.00       0.00   74068.28       0.00       0.00       0.00       0.00       0.00
                         -490.89    -276.36       0.03     215.22      -0.00      -0.00       0.12    -243.93      -0.04      -0.03

   26   4.2  1.5 -0.5       0.00       0.01       0.00       0.00       0.00   75512.39       0.00       0.00       0.00       0.00
                            0.06      -0.01      -0.02       0.00       0.00       0.00      -0.00       0.06    -430.17       4.66

   27   5.2  1.5 -0.5      -0.31      -0.70       0.00       0.00       0.00       0.00   75512.44       0.00       0.00       0.00
                         -422.09     749.74      -0.03    -243.93      -0.12       0.00      -0.00     215.10       0.03      -0.01

   28   6.2  1.5 -0.5     438.24     740.41       0.00       0.00       0.00       0.00       0.00   75512.47       0.00       0.00
                           -0.30       0.66      -0.03      -0.12     243.93      -0.06    -215.10       0.00       0.00      -0.00

   29   7.2  1.5 -0.5      -0.00       0.12       0.00       0.00       0.00       0.00       0.00       0.00   75512.24       0.00
                            0.00       0.01       3.05      -0.00       0.04     430.17      -0.03      -0.00       0.00       0.02

   30   8.2  1.5 -0.5      -0.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75512.11
                           -0.01      -0.00     281.65      -0.04       0.03      -4.66       0.01       0.00      -0.02      -0.00

   31   1.2  1.5 -1.5       0.00       0.00      -0.00      -0.16    -372.77       0.06    -422.51      -0.39       0.05      -0.04
                           -0.00      -0.00       0.00     372.77      -0.16      -0.05      -0.39     422.51       0.12       0.02

   32   2.2  1.5 -1.5       0.00       0.00       0.16      -0.00       0.04      -0.08       0.05      -0.07     419.84    -248.50
                           -0.00      -0.00    -372.77      -0.00      -0.05    -422.51       0.00      -0.05      -0.09      -0.13

   33   3.2  1.5 -1.5       0.00       0.00     372.77      -0.04      -0.00    -422.51      -0.06      -0.00      -0.09       0.08
                           -0.00      -0.00       0.16       0.05       0.00       0.10       0.00       0.11    -425.13    -239.34

   34   4.2  1.5 -1.5       0.00       0.00      -0.06       0.08     422.50       0.00     372.56       0.30       0.00       0.01
                           -0.00      -0.00       0.05     422.50      -0.10       0.00      -0.23     372.56       0.06      -0.01

   35   5.2  1.5 -1.5       0.00       0.00     422.50      -0.05       0.06    -372.56       0.00       0.01      -0.27      -0.61
                           -0.00      -0.00       0.39      -0.00      -0.00       0.23      -0.00       0.07    -365.54     649.29

   36   6.2  1.5 -1.5       0.00       0.00       0.39       0.07       0.00      -0.30      -0.01      -0.00     379.53     641.21
                           -0.00      -0.00    -422.50       0.05      -0.11    -372.56      -0.07       0.00      -0.26       0.57

   37   7.2  1.5 -1.5       0.00       0.00      -0.05    -419.83       0.09      -0.00       0.27    -379.53      -0.00       0.10
                           -0.00      -0.00      -0.12       0.09     425.12      -0.06     365.54       0.26       0.00       0.01

   38   8.2  1.5 -1.5       0.00       0.00       0.04     248.49      -0.08      -0.01       0.61    -641.21      -0.10       0.00
                           -0.00      -0.00      -0.02       0.13     239.33       0.01    -649.29      -0.57      -0.01      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5     177.14      -0.02      -5.30     191.65       5.76      -0.03     224.09    -132.70
                         -208.52      -5.30      -0.03     225.59      -0.00       5.78    -192.85    -108.41

    5   2.2  0.5 -0.5     -84.04      -0.10    -250.09     -90.92     270.54       0.24      69.74     -41.29
                          -64.90    -250.07       0.10      70.21      -0.25     270.48      91.53      51.46

    6   3.2  0.5 -0.5     191.01      -0.07    -105.12     206.54     113.74       0.13    -177.23     104.93
                          164.83    -105.16       0.07    -178.40      -0.10     113.75    -207.83    -116.92

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

   23   1.2  1.5 -0.5      -0.00       0.16     372.77      -0.06     422.50       0.39      -0.05       0.04
                           -0.00     372.77      -0.16      -0.05      -0.39     422.50       0.12       0.02

   24   2.2  1.5 -0.5      -0.16      -0.00      -0.04       0.08      -0.05       0.07    -419.83     248.49
                         -372.77       0.00      -0.05    -422.50       0.00      -0.05      -0.09      -0.13

   25   3.2  1.5 -0.5    -372.77       0.04      -0.00     422.50       0.06       0.00       0.09      -0.08
                            0.16       0.05      -0.00       0.10       0.00       0.11    -425.12    -239.33

   26   4.2  1.5 -0.5       0.06      -0.08    -422.51       0.00    -372.56      -0.30      -0.00      -0.01
                            0.05     422.51      -0.10      -0.00      -0.23     372.56       0.06      -0.01

   27   5.2  1.5 -0.5    -422.51       0.05      -0.06     372.56       0.00      -0.01       0.27       0.61
                            0.39      -0.00      -0.00       0.23       0.00       0.07    -365.54     649.29

   28   6.2  1.5 -0.5      -0.39      -0.07      -0.00       0.30       0.01      -0.00    -379.53    -641.21
                         -422.51       0.05      -0.11    -372.56      -0.07      -0.00      -0.26       0.57

   29   7.2  1.5 -0.5       0.05     419.84      -0.09       0.00      -0.27     379.53      -0.00      -0.10
                           -0.12       0.09     425.13      -0.06     365.54       0.26      -0.00       0.01

   30   8.2  1.5 -0.5      -0.04    -248.50       0.08       0.01      -0.61     641.21       0.10       0.00
                           -0.02       0.13     239.34       0.01    -649.29      -0.57      -0.01       0.00

   31   1.2  1.5 -1.5   74068.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.09      -0.08       0.05       0.10       0.08      -9.16    -844.95

   32   2.2  1.5 -1.5       0.00   74068.31       0.00       0.00       0.00       0.00       0.00       0.00
                            0.09      -0.00    -645.66      -0.00     731.79       0.36       0.00       0.11

   33   3.2  1.5 -1.5       0.00       0.00   74068.28       0.00       0.00       0.00       0.00       0.00
                            0.08     645.66      -0.00      -0.00       0.36    -731.79      -0.11      -0.10

   34   4.2  1.5 -1.5       0.00       0.00       0.00   75512.39       0.00       0.00       0.00       0.00
                           -0.05       0.00       0.00       0.00      -0.00       0.19   -1290.50      13.99

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   75512.44       0.00       0.00       0.00
                           -0.10    -731.79      -0.36       0.00      -0.00     645.30       0.10      -0.02

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   75512.47       0.00       0.00
                           -0.08      -0.36     731.79      -0.19    -645.30       0.00       0.00      -0.01

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   75512.24       0.00
                            9.16      -0.00       0.11    1290.50      -0.10      -0.00       0.00       0.07

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75512.11
                          844.95      -0.11       0.10     -13.99       0.02       0.01      -0.07      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -416.55650639    -0.00575342    -1262.73      0.00000000        0.00      0.0000
     2  -416.55650639    -0.00575342    -1262.73      0.00000000        0.00      0.0000
     3  -416.55650616    -0.00575319    -1262.68      0.00000023        0.05      0.0000
     4  -416.55650616    -0.00575319    -1262.68      0.00000023        0.05      0.0000
     5  -416.53935058     0.01140239     2502.54      0.01715581     3765.26      0.4668
     6  -416.53935058     0.01140239     2502.54      0.01715581     3765.26      0.4668
     7  -416.21827939     0.33247358    72969.52      0.33822700    74232.25      9.2036
     8  -416.21827937     0.33247360    72969.52      0.33822702    74232.25      9.2036
     9  -416.21827930     0.33247367    72969.54      0.33822709    74232.27      9.2036
    10  -416.21827929     0.33247368    72969.54      0.33822710    74232.27      9.2036
    11  -416.21827923     0.33247375    72969.55      0.33822716    74232.28      9.2036
    12  -416.21827919     0.33247378    72969.56      0.33822720    74232.29      9.2036
    13  -416.21293667     0.33781630    74142.11      0.34356972    75404.84      9.3490
    14  -416.21293667     0.33781630    74142.11      0.34356972    75404.84      9.3490
    15  -416.21293666     0.33781632    74142.11      0.34356973    75404.84      9.3490
    16  -416.21293663     0.33781634    74142.12      0.34356976    75404.85      9.3490
    17  -416.21257407     0.33817891    74221.69      0.34393232    75484.42      9.3589
    18  -416.21257407     0.33817891    74221.69      0.34393232    75484.42      9.3589
    19  -416.21257385     0.33817913    74221.74      0.34393254    75484.47      9.3589
    20  -416.21257385     0.33817913    74221.74      0.34393254    75484.47      9.3589
    21  -416.21257379     0.33817918    74221.75      0.34393260    75484.48      9.3589
    22  -416.21257379     0.33817918    74221.75      0.34393260    75484.48      9.3589
    23  -416.21257349     0.33817948    74221.82      0.34393290    75484.55      9.3589
    24  -416.21257349     0.33817948    74221.82      0.34393290    75484.55      9.3589
    25  -416.20892742     0.34182555    75022.04      0.34757897    76284.77      9.4581
    26  -416.20892739     0.34182558    75022.04      0.34757900    76284.77      9.4581
    27  -416.20364953     0.34710344    76180.40      0.35285686    77443.13      9.6017
    28  -416.20364951     0.34710346    76180.40      0.35285688    77443.13      9.6017
    29  -416.20364884     0.34710414    76180.55      0.35285755    77443.28      9.6017
    30  -416.20364881     0.34710417    76180.56      0.35285758    77443.29      9.6017
    31  -416.20364874     0.34710423    76180.57      0.35285765    77443.30      9.6017
    32  -416.20364873     0.34710424    76180.58      0.35285766    77443.30      9.6017
    33  -416.19915694     0.35159603    77166.41      0.35734945    78429.14      9.7240
    34  -416.19915693     0.35159604    77166.41      0.35734946    78429.14      9.7240
    35  -416.19915682     0.35159615    77166.44      0.35734957    78429.16      9.7240
    36  -416.19915678     0.35159619    77166.44      0.35734960    78429.17      9.7240
    37  -416.19727425     0.35347873    77579.61      0.35923214    78842.34      9.7752
    38  -416.19727422     0.35347875    77579.62      0.35923217    78842.35      9.7752


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.706755274  -0.002026479   0.018551495   0.408363818   0.011326218   0.577199908   0.000000023   0.000011464
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.066741633  -0.181634087   0.700269005  -0.148220253   0.532094931  -0.010443607   0.000001173  -0.000005431
                         0.253432489   0.076090844  -0.184084309  -0.113600827  -0.000019305  -0.223753730   0.000000055  -0.000000284

    3    3.2  0.5  0.5  -0.193031884  -0.075302113   0.300866612   0.320029253   0.223714922  -0.004382792   0.000000494   0.000012340
                        -0.590622913   0.034297642  -0.076614001   0.273599509  -0.000007682   0.532187609   0.000000022   0.000000687

    4    1.2  0.5 -0.5  -0.000323377  -0.112788173  -0.403945092   0.018350722   0.373623844  -0.007331507   0.000012313  -0.000000027
                         0.002000416   0.697697010  -0.059917434   0.002722135   0.439960177  -0.008633204   0.000000962  -0.000000002

    5    2.2  0.5 -0.5  -0.104099611   0.239531895   0.163287252   0.665677896  -0.177312418  -0.344412494  -0.000005857  -0.000001386
                         0.167157847   0.106332578  -0.090620339   0.284848871   0.136876248  -0.405592221  -0.000000163  -0.000000046

    6    3.2  0.5 -0.5  -0.045874233  -0.552244420  -0.356716711   0.286368236   0.402813367  -0.144805722   0.000013310  -0.000000584
                         0.068861354  -0.284817835   0.223674276   0.119933801  -0.347827904  -0.170527621   0.000000328  -0.000000020

    7    1.2  1.5  1.5  -0.002559300   0.000002514  -0.000033681  -0.001217267  -0.000000285  -0.000000824   0.000007440   0.567055709
                         0.004136678   0.000000590  -0.000014510  -0.000508302   0.000000248  -0.000000969  -0.000011944   0.018372140

    8    2.2  1.5  1.5  -0.000016338  -0.000295064   0.000705568  -0.000004527   0.000000978  -0.000000001   0.004808096  -0.000063906
                         0.000001563  -0.000694652   0.002693540  -0.000016137   0.002118346   0.000000000  -0.103717924   0.000057843

    9    3.2  1.5  1.5   0.000001704  -0.000694657   0.002693543  -0.000016361   0.002118346  -0.000000000   0.040450637   0.000060200
                         0.000017196   0.000295066  -0.000705569   0.000004602  -0.000000979   0.000000001   0.001984698   0.000025223

   10    4.2  1.5  1.5   0.000425823  -0.000017080  -0.000016277  -0.002717193  -0.000000001  -0.002944196  -0.000009995  -0.022324588
                        -0.000677524  -0.000004948  -0.000007417  -0.001157918  -0.000000007  -0.003465707   0.000004176  -0.000778675

   11    5.2  1.5  1.5  -0.000002210   0.000730293  -0.002831907   0.000017035  -0.002254047  -0.000000001  -0.044305378   0.000027762
                        -0.000017529  -0.000310625   0.000743292  -0.000004931   0.000002145   0.000000001  -0.002021845  -0.000000305

   12    6.2  1.5  1.5   0.000017648   0.000310573  -0.000743162   0.000005083  -0.000002145   0.000000518   0.000201041  -0.000011562
                        -0.000002057   0.000730165  -0.002831412   0.000016637  -0.002253643  -0.000000438  -0.006060105   0.000010104

   13    7.2  1.5  1.5  -0.000649226  -0.000004897  -0.000007625  -0.001161145  -0.000000006  -0.003465158   0.000004205  -0.000856054
                        -0.000408507   0.000017169   0.000016079   0.002725045  -0.000000335   0.002943727   0.000009156   0.025152622

   14    8.2  1.5  1.5   0.002517957   0.000000494  -0.000009012  -0.000295533  -0.000000047   0.000038373  -0.000001122  -0.008436887
                         0.001557846  -0.000001707   0.000020169   0.000707947   0.000000054  -0.000032924   0.000005662   0.260380401

   15    1.2  1.5  0.5   0.000001641  -0.000403783   0.001569120  -0.000009928  -0.002467572  -0.000000217  -0.109586204   0.000150368
                         0.000009388   0.000171317  -0.000410306   0.000003017   0.000000090  -0.000000035  -0.004937183   0.000086907

   16    2.2  1.5  0.5   0.001628247  -0.000004927  -0.000016788  -0.001550209   0.000000288  -0.000930811  -0.000001229  -0.013639979
                         0.001001555   0.000017162   0.000036857   0.003652832  -0.000000000   0.000791102  -0.000021378   0.418200630

   17    3.2  1.5  0.5  -0.001943920   0.000020038  -0.000001273   0.002268273  -0.000000331   0.000805493  -0.000058009  -0.563932479
                         0.003128042   0.000005842  -0.000000578   0.000971486  -0.000000000   0.000947774   0.000012613  -0.018598672

   18    4.2  1.5  0.5  -0.000000190   0.002727373   0.000776074  -0.000021387  -0.000000348   0.000000002   0.154086207   0.000006999
                        -0.000001545  -0.001133762  -0.000197090   0.000005984  -0.000000247  -0.000000002   0.007216718  -0.000004072

   19    5.2  1.5  0.5  -0.001557970   0.000001583  -0.000020201  -0.000724758   0.000000001   0.002543953  -0.000015377  -0.075646638
                         0.002513046   0.000000471  -0.000009098  -0.000303305  -0.000000089   0.002990324   0.000006300  -0.002527318

   20    6.2  1.5  0.5   0.002487563   0.000000592  -0.000008946  -0.000306248  -0.000000007  -0.002972535  -0.000007441  -0.000366184
                         0.001542202  -0.000001090   0.000020264   0.000731537   0.000000103   0.002528875   0.000015650   0.011203118

   21    7.2  1.5  0.5  -0.000001362  -0.001137048  -0.000188720   0.000005886   0.000000001  -0.000000444   0.009296058   0.000003460
                         0.000000438  -0.002735002  -0.000744683   0.000021305   0.000050693   0.000000374  -0.198444516   0.000018070

   22    8.2  1.5  0.5  -0.000017729  -0.000300002   0.000749576  -0.000005024   0.000000164   0.000000120   0.000664152  -0.000007000
                         0.000002174  -0.000706917   0.002866615  -0.000017449   0.004546991  -0.000000005  -0.014639723   0.000011168

   23    1.2  1.5 -0.5   0.000233554  -0.000009006  -0.000009378  -0.001491931   0.000000167  -0.001597200  -0.000141939  -0.145725731
                        -0.000371256  -0.000003118  -0.000004441  -0.000636117   0.000000143  -0.001880919   0.000075449  -0.005020583

   24    2.2  1.5 -0.5   0.000017728  -0.000728853  -0.000997420   0.000011198  -0.000000485   0.000000187  -0.020725711  -0.000000164
                        -0.000002125  -0.001767187  -0.003840782   0.000038922   0.001221578   0.000000220   0.443183869   0.000025553

   25    3.2  1.5 -0.5   0.000002570  -0.003398199   0.002386246   0.000001345  -0.001243823  -0.000000215   0.552771345  -0.000070782
                         0.000020713   0.001419807  -0.000628120  -0.000000385  -0.000000475  -0.000000253   0.025709695  -0.000019226

   26    4.2  1.5 -0.5  -0.001554498   0.000001495  -0.000020277  -0.000738730   0.000000000  -0.000000413  -0.000009239   0.144075748
                         0.002511486   0.000000434  -0.000009058  -0.000308827  -0.000000002  -0.000000105  -0.000005304   0.004701251

   27    5.2  1.5 -0.5   0.000000213  -0.002729468  -0.000761442   0.000021317  -0.003926032  -0.000000068   0.068269910  -0.000017983
                         0.000001638   0.001136941   0.000193678  -0.000006035  -0.000003433   0.000000058   0.003145539  -0.000008366

   28    6.2  1.5 -0.5  -0.000001171  -0.001125442  -0.000195594   0.000005875  -0.000003455   0.000000074  -0.000917960  -0.000006876
                         0.000000410  -0.002701795  -0.000768579   0.000021358   0.003902712  -0.000000072   0.019813451  -0.000014087

   29    7.2  1.5 -0.5  -0.002518492  -0.000000650   0.000008948   0.000295942   0.000000003   0.000038641  -0.000005650  -0.006636589
                        -0.001558959   0.000001275  -0.000020211  -0.000708908   0.000000581  -0.000032813   0.000019837   0.203623727

   30    8.2  1.5 -0.5  -0.000649959  -0.000004975  -0.000007530  -0.001162108  -0.000000074   0.003465967   0.000005617  -0.000689422
                        -0.000408961   0.000017155   0.000016524   0.002725598  -0.000000094  -0.002943161   0.000009388   0.020120698

   31    1.2  1.5 -1.5  -0.000000181   0.004492089   0.001278715  -0.000035446  -0.000001272  -0.000000004   0.575014169  -0.000007259
                        -0.000002576  -0.001866319  -0.000324189   0.000009410  -0.000000001   0.000000378   0.027054660  -0.000016777

   32    2.2  1.5 -1.5   0.000638641   0.000004150   0.000006846   0.001093180  -0.000000001  -0.001615304  -0.000057157   0.004588931
                         0.000402130  -0.000015880  -0.000015298  -0.002560854  -0.000000001   0.001370468  -0.000064459  -0.138837650

   33    3.2  1.5 -1.5  -0.000402134   0.000016704   0.000015509   0.002560857   0.000000000  -0.001370468   0.000053632  -0.054708815
                         0.000638646   0.000004427   0.000006953   0.001093181  -0.000000001  -0.001615304  -0.000021939  -0.001654653

   34    4.2  1.5 -1.5   0.000002159  -0.000736820   0.002857686  -0.000017189  -0.004547463   0.000000006  -0.016788928   0.000011669
                         0.000017650   0.000312248  -0.000746665   0.000004948  -0.000000794  -0.000000004  -0.000745466   0.000005466

   35    5.2  1.5 -1.5   0.000423179  -0.000016952  -0.000016127  -0.002692189  -0.000000000   0.001457419   0.000026021   0.059158434
                        -0.000671340  -0.000004979  -0.000007378  -0.001150799  -0.000000002   0.001719495   0.000003703   0.001999934

   36    6.2  1.5 -1.5  -0.000671222  -0.000004847  -0.000007469  -0.001150598   0.000000002   0.001719187  -0.000010769   0.000368727
                        -0.000423107   0.000017093   0.000015712   0.002691718   0.000000678  -0.001457157  -0.000007309  -0.007810737

   37    7.2  1.5 -1.5  -0.000017731  -0.000299670   0.000748705  -0.000005183   0.000000792   0.000000259   0.000894791  -0.000005416
                         0.000002094  -0.000706121   0.002865927  -0.000017024  -0.004546741  -0.000000212  -0.019655154   0.000010585

   38    8.2  1.5 -1.5   0.000001764   0.001136035   0.000188456  -0.000005955  -0.000000257  -0.000000011   0.012425167   0.000000852
                        -0.000000215   0.002734297   0.000743673  -0.000021273   0.000050561   0.000000071  -0.264094568   0.000007068


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5   0.000015743  -0.000000094   0.000004301  -0.000000008   0.000062145  -0.001572199   0.000057925  -0.002614525
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000007467  -0.000004212  -0.000002041  -0.000000314  -0.000433031  -0.000179517   0.002694320   0.000151229
                        -0.000000234  -0.000000121  -0.000000001   0.000000157   0.000547158   0.000572303   0.000042941  -0.001024193

    3    3.2  0.5  0.5   0.000016966  -0.000001775   0.000004638  -0.000000139  -0.000192829   0.000436662   0.001132610  -0.000224504
                         0.000000550  -0.000000046   0.000000005   0.000000067   0.000304024  -0.001296625   0.000016707   0.002437951

    4    1.2  0.5 -0.5   0.000000092   0.000015351   0.000000011   0.000002691   0.000942024  -0.000007244  -0.001378247  -0.000003788
                         0.000000005   0.000000713  -0.000000004  -0.000001359   0.002475802   0.000069354  -0.000627104   0.000003250

    5    2.2  0.5 -0.5   0.000004134  -0.000007291   0.000000496  -0.000001287   0.001043108  -0.001399499   0.000660749  -0.000173312
                         0.000000077  -0.000000119   0.000000002   0.000000625  -0.000005989  -0.002366631  -0.000177990   0.000183783

    6    3.2  0.5 -0.5   0.000001741   0.000016567   0.000000216   0.000002925  -0.002292156  -0.000713482  -0.001501470  -0.000073600
                         0.000000037   0.000000253  -0.000000002  -0.000001419   0.000158375  -0.001009860   0.000452589   0.000077310

    7    1.2  1.5  1.5   0.104891312  -0.000117812   0.103292907   0.000062550  -0.001954613   0.034355946   0.000103283  -0.495895893
                         0.001760428   0.000039606   0.000082000   0.000043091  -0.002203747   0.056090642  -0.000333997   0.527575752

    8    2.2  1.5  1.5  -0.000003304  -0.003693628  -0.000007350   0.295169619   0.086337594   0.003468865   0.006214554   0.000163236
                         0.000064389   0.133085102   0.000027144   0.597290378   0.065532697   0.003750436  -0.405451158  -0.000213330

    9    3.2  1.5  1.5  -0.000001003   0.274624526   0.000030915  -0.563633785   0.065526737   0.003761287  -0.405448695  -0.000218474
                         0.000016077   0.007582702  -0.000002670   0.278564923  -0.086330532  -0.003465051  -0.006214572  -0.000034548

   10    4.2  1.5  1.5   0.106703648  -0.000012910   0.014296364  -0.000007513  -0.004666963   0.079776504  -0.000006079   0.009580920
                         0.002022004   0.000000729  -0.000002971   0.000002508  -0.005314991   0.130879984   0.000049443  -0.010136483

   11    5.2  1.5  1.5   0.000030293   0.143503469   0.000018931   0.167445762   0.024083812   0.001381208  -0.148896315  -0.000053565
                        -0.000001516   0.003883513  -0.000004155  -0.082655354  -0.031761798  -0.001277898  -0.002209116  -0.000036620

   12    6.2  1.5  1.5  -0.000006348  -0.004933701   0.000002675  -0.069420944   0.031649282   0.001253538   0.002209166   0.000037601
                         0.000026124   0.181053456   0.000019465  -0.140653652   0.023996558   0.001388162  -0.148893812  -0.000056767

   13    7.2  1.5  1.5   0.002016042  -0.000000136  -0.000000775  -0.000007861  -0.005314608   0.130983501   0.000050496  -0.011393257
                        -0.106186813   0.000039422  -0.013782321  -0.000013635   0.004674269  -0.079837916  -0.000015953  -0.010750864

   14    8.2  1.5  1.5  -0.000825257  -0.000008574  -0.000036902   0.000000001   0.000529383  -0.013331560   0.000057579  -0.112035283
                         0.049367853  -0.000041511   0.047630555  -0.000020135  -0.000467633   0.008171379   0.000013797  -0.105308324

   15    1.2  1.5  0.5   0.000050196   0.706179267   0.000082282   0.058321593   0.037859758   0.002089315  -0.234091820  -0.000014000
                         0.000062535   0.019832053   0.000003148  -0.028742511  -0.049829257  -0.002036828  -0.003687683  -0.000060643

   16    2.2  1.5  0.5  -0.008097045  -0.000106385  -0.000097854  -0.000024422   0.015428836  -0.379286756  -0.000294248   0.336406970
                         0.439120438  -0.000114157   0.136113725  -0.000062374  -0.013550654   0.231230961  -0.000046439   0.316568508

   17    3.2  1.5  0.5   0.257444674   0.000122448  -0.042785567   0.000024541  -0.015808675   0.270873480  -0.000022662  -0.256319256
                         0.004970582  -0.000016689  -0.000120293  -0.000005092  -0.018007720   0.444068455  -0.000011020   0.272559719

   18    4.2  1.5  0.5   0.000029765   0.003625594   0.000017904   0.197938694   0.090356110   0.005038482   0.039911523   0.000001545
                         0.000004736   0.000164650  -0.000004098  -0.097868324  -0.118402227  -0.004655941   0.000706414   0.000001159

   19    5.2  1.5  0.5   0.145986319  -0.000012410   0.012727353  -0.000007263   0.000420642  -0.007371590  -0.000010177   0.105133231
                         0.002671661  -0.000003025  -0.000028606   0.000002653   0.000478693  -0.012059879   0.000057861  -0.111644453

   20    6.2  1.5  0.5  -0.002956015  -0.000003245   0.000001564  -0.000015979   0.000481953  -0.011734545   0.000060779  -0.111630501
                         0.162051463  -0.000015315   0.028543696  -0.000037754  -0.000395535   0.007174061   0.000019595  -0.105120185

   21    7.2  1.5  0.5   0.000011865   0.001319958  -0.000003462   0.078046755  -0.118843610  -0.004675328   0.000689256  -0.000015886
                         0.000018877  -0.045821005  -0.000010435   0.157823842  -0.090689200  -0.005056435  -0.038297139  -0.000016551

   22    8.2  1.5  0.5   0.000001004  -0.003052967   0.000002242   0.003569432  -0.030527146  -0.001228662  -0.002357627  -0.000034032
                         0.000009255   0.108704079   0.000011186   0.007221310  -0.023197336  -0.001331476   0.149739388   0.000056276

   23    1.2  1.5 -0.5   0.696557727  -0.000047876   0.093326905  -0.000047795   0.007322168  -0.125447168   0.000056771  -0.015070856
                         0.013363983   0.000055251   0.000017277   0.000028240   0.008438643  -0.205900976  -0.000009788   0.015957305

   24    2.2  1.5 -0.5  -0.000111304  -0.012204122   0.000006200   0.042451294   0.222444586   0.008674047  -0.009493540  -0.000123291
                         0.000090943   0.424628956   0.000084499   0.085991369   0.169911540   0.009382685   0.576652320   0.000177520

   25    3.2  1.5 -0.5   0.000100365  -0.281540538   0.000020490   0.027656609   0.321417924   0.018024677  -0.359665410  -0.000173098
                         0.000019861  -0.007928378  -0.000004377  -0.013733144  -0.421695326  -0.016699646  -0.005654927  -0.000116608

   26    4.2  1.5 -0.5  -0.000313444  -0.000040466   0.227565374  -0.000015621   0.000414828  -0.007288283  -0.000010206   0.105302829
                        -0.000089028   0.000001089   0.000298062   0.000003598   0.000471108  -0.011888320   0.000061051  -0.111981509

   27    5.2  1.5 -0.5  -0.000014604  -0.149808021  -0.000012839  -0.007878406  -0.090104862  -0.005028546  -0.039610060  -0.000001211
                         0.000001590  -0.004342015   0.000002099   0.003857192   0.118249475   0.004652617  -0.000681383  -0.000000913

   28    6.2  1.5 -0.5  -0.000004582  -0.004713925   0.000003708   0.008829309  -0.118131322  -0.004645072   0.000687211  -0.000015693
                         0.000011275   0.162462134   0.000045141   0.017923435  -0.090014772  -0.005021564  -0.039958580  -0.000017468

   29    7.2  1.5 -0.5  -0.001164910  -0.000014986   0.000233832  -0.000001740  -0.000548016   0.013347634  -0.000060460   0.111955188
                         0.063426513   0.000015437  -0.164429258  -0.000010791   0.000453012  -0.008168702  -0.000016137   0.105276455

   30    8.2  1.5 -0.5   0.002060250  -0.000001994   0.000012555   0.000002167  -0.005327670   0.131209096   0.000049432  -0.011357223
                        -0.107414916   0.000008921  -0.012518284   0.000007295   0.004681638  -0.079938546   0.000007161  -0.010733009

   31    1.2  1.5 -1.5   0.000098335   0.082610299  -0.000029002   0.065632426  -0.425731587  -0.023725688  -0.187906877  -0.000013919
                         0.000039748   0.002503733   0.000065203  -0.032412122   0.557653113   0.021853820  -0.003404175  -0.000004781

   32    2.2  1.5 -1.5  -0.001874097   0.000010569  -0.000745854  -0.000013217  -0.014439041   0.356720182   0.000156559  -0.027623748
                         0.095173484  -0.000076220   0.666353011  -0.000013779   0.012640692  -0.217122067   0.000016999  -0.026111554

   33    3.2  1.5 -1.5  -0.306971752  -0.000016169   0.612480462   0.000019572  -0.012762727   0.217113503  -0.000041851   0.026116737
                        -0.006012545  -0.000022551   0.000712971  -0.000008227  -0.014413540   0.356715722   0.000134204  -0.027629266

   34    4.2  1.5 -1.5   0.000013131   0.108173889   0.000011728   0.008935635  -0.024081963  -0.001380160   0.148814196   0.000055712
                         0.000001851   0.003062859  -0.000001950  -0.004399333   0.031672036   0.001273666   0.002373540   0.000038736

   35    5.2  1.5 -1.5  -0.131961700   0.000033038  -0.191098131   0.000012470  -0.004666262   0.079679028  -0.000006078   0.009558303
                        -0.002682292   0.000005425  -0.000133932  -0.000003375  -0.005325450   0.131053671   0.000048663  -0.010101589

   36    6.2  1.5 -1.5  -0.003752682  -0.000006292   0.000086709  -0.000004525  -0.005314440   0.131010071   0.000049812  -0.010198631
                         0.188153245  -0.000022653  -0.148206782  -0.000012391   0.004668040  -0.079651947  -0.000015115  -0.009649440

   37    7.2  1.5 -1.5  -0.000002264  -0.003048414   0.000001897   0.004239683  -0.030431370  -0.001205473  -0.002387833  -0.000040333
                         0.000040814   0.107768309  -0.000010569   0.008608188  -0.023123094  -0.001338725   0.149519359   0.000054391

   38    8.2  1.5 -1.5   0.000010286   0.001189883  -0.000009509  -0.014944430   0.118879680   0.004673040  -0.000689854  -0.000000269
                        -0.000031167  -0.039142543  -0.000021016  -0.030262975   0.090758780   0.005065519   0.038336484   0.000000985


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5  -0.000000746   0.000008066   0.000000536   0.000000180   0.000000234   0.000015302   0.000003543  -0.000000029
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000029946  -0.000004201   0.000000186   0.000008206   0.000006460  -0.000007246  -0.000001667  -0.000001199
                        -0.000002172  -0.000000439   0.000000031   0.000000007   0.000000205   0.000000870   0.000000193   0.000000066

    3    3.2  0.5  0.5  -0.000012731   0.000008526  -0.000000416   0.000003459   0.000002837   0.000016329   0.000003790  -0.000000508
                        -0.000000863   0.000000481  -0.000000127   0.000000005   0.000000066  -0.000002071  -0.000000456   0.000000026

    4    1.2  0.5 -0.5  -0.000008016  -0.000000741   0.000000022  -0.000000070   0.000015290  -0.000000234   0.000000029   0.000003513
                        -0.000000878  -0.000000081  -0.000000178   0.000000531  -0.000000625   0.000000010  -0.000000004  -0.000000444

    5    2.2  0.5 -0.5   0.000004223  -0.000030006   0.000001000   0.000000011  -0.000007276  -0.000006440   0.000001202  -0.000001677
                         0.000000021  -0.000001102  -0.000008142   0.000000188  -0.000000573   0.000000469  -0.000000086   0.000000018

    6    3.2  0.5 -0.5  -0.000008526  -0.000012750   0.000000420  -0.000000080   0.000016401  -0.000002829   0.000000509   0.000003815
                        -0.000000451  -0.000000528  -0.000003432  -0.000000429   0.000001402   0.000000182  -0.000000038  -0.000000023

    7    1.2  1.5  1.5   0.000000139  -0.000015419   0.000008028   0.000000036   0.000002715   0.000431437   0.000034251  -0.000000086
                        -0.000000075  -0.000000546  -0.000067839   0.000000125  -0.000000301  -0.000031456  -0.000002351  -0.000000005

    8    2.2  1.5  1.5  -0.000010392  -0.000000976  -0.000000310   0.000000092   0.000000574  -0.000000039  -0.000000012   0.000000074
                         0.000145906   0.000001821  -0.000000259  -0.000130565  -0.000021258   0.000000192   0.000000003   0.000001665

    9    3.2  1.5  1.5   0.000143767   0.000001801  -0.000000259  -0.000126837  -0.000046141   0.000000413   0.000000013   0.000039429
                         0.000010236   0.000000963   0.000000302  -0.000000075  -0.000001374  -0.000000004   0.000000003  -0.000002196

   10    4.2  1.5  1.5   0.001050225  -0.073952970  -0.085638164   0.001948727   0.000973436   0.101156508  -0.005206341  -0.000123044
                        -0.000388808  -0.002753972   0.700853200  -0.001276855  -0.000028950  -0.006982760   0.000411047   0.000002991

   11    5.2  1.5  1.5   0.257090338   0.003233322  -0.000173329  -0.086191763   0.103141142  -0.000683529  -0.000092030  -0.507495906
                         0.018237807   0.001721168   0.000056053  -0.000109829   0.003534552  -0.000063672   0.000062554   0.028271866

   12    6.2  1.5  1.5  -0.013991717  -0.001320609  -0.000126205  -0.000102277   0.005990188  -0.000088433   0.000060937   0.028728434
                         0.197692283   0.002539899  -0.000056815  -0.030582157  -0.187128666   0.001285228   0.000067529   0.516503902

   13    7.2  1.5  1.5   0.001586318   0.011210212  -0.643704713   0.001174601   0.000006579   0.003626254  -0.000169478   0.000003528
                         0.004081609  -0.301076822  -0.078641961   0.001792083   0.000602118   0.053851852  -0.002299500  -0.000034278

   14    8.2  1.5  1.5  -0.000396696  -0.002610299  -0.070749926   0.000149154  -0.000359987  -0.036609208  -0.010481030  -0.000001420
                        -0.000913658   0.072617149  -0.008317781  -0.000039508  -0.003067945  -0.501308471  -0.150217116   0.000107432

   15    1.2  1.5  0.5   0.000094772   0.000001162  -0.000000135  -0.000059308  -0.000020680   0.000000122   0.000000005   0.000015262
                         0.000006805   0.000000662   0.000000123  -0.000000065  -0.000000619  -0.000000017  -0.000000001  -0.000000841

   16    2.2  1.5  0.5  -0.000001149  -0.000007914  -0.000191998   0.000000349  -0.000000131  -0.000011987  -0.000001310   0.000000003
                        -0.000002782   0.000213579  -0.000023334   0.000000413  -0.000000964  -0.000164360  -0.000018455   0.000000035

   17    3.2  1.5  0.5  -0.000002679   0.000203002  -0.000015266   0.000000429   0.000001764   0.000266624  -0.000027176  -0.000000034
                         0.000001074   0.000007537   0.000124106  -0.000000201  -0.000000164  -0.000019245   0.000001962  -0.000000007

   18    4.2  1.5  0.5   0.008909309   0.000089081  -0.000034280  -0.015148875   0.125118089  -0.000676814   0.000129625   0.518508801
                         0.000677359   0.000063515   0.000050144  -0.000109694   0.003965209  -0.000048824  -0.000055127  -0.029237686

   19    5.2  1.5  0.5  -0.006076110   0.463834483  -0.021486925   0.000241905  -0.002529811  -0.428368352  -0.158062629   0.000099840
                         0.002458009   0.016962244   0.178006588  -0.000340087   0.000327416   0.030900979   0.010948264  -0.000005743

   20    6.2  1.5  0.5  -0.001705027  -0.011866369  -0.022545172   0.000016538   0.000391574   0.041345434   0.009739256  -0.000016092
                        -0.004321493   0.325145260  -0.002923530   0.000269586   0.003656823   0.573326115   0.142406410  -0.000191475

   21    7.2  1.5  0.5   0.003824756   0.000361863  -0.000099882  -0.000267008   0.012071138  -0.000180780   0.000050999   0.020760018
                        -0.052955348  -0.000588457   0.000122215   0.061411517  -0.377871196   0.002495487   0.000032393   0.368424815

   22    8.2  1.5  0.5  -0.049000072  -0.004563604  -0.000412114   0.000173917   0.003673847  -0.000028431  -0.000001470   0.000474711
                         0.682568911   0.008583324  -0.000362277  -0.175659546  -0.121845353   0.000892023  -0.000035449   0.009497723

   23    1.2  1.5 -0.5   0.000001308  -0.000101129   0.000007404  -0.000000143  -0.000000130  -0.000021708   0.000015377  -0.000000005
                        -0.000000565  -0.000003787  -0.000060423   0.000000122  -0.000000012   0.000001540  -0.000001091  -0.000000000

   24    2.2  1.5 -0.5   0.000015643   0.000001470   0.000000368  -0.000000409   0.000005368  -0.000000092  -0.000000002  -0.000001080
                        -0.000216666  -0.000002683   0.000000400   0.000194818  -0.000167885   0.000000987  -0.000000036  -0.000019595

   25    3.2  1.5 -0.5   0.000205225   0.000002578  -0.000000252  -0.000125294  -0.000271775   0.000001798  -0.000000034   0.000026114
                         0.000014801   0.000001377   0.000000404  -0.000000075  -0.000008485   0.000000094   0.000000011  -0.000001403

   26    4.2  1.5 -0.5   0.000094103  -0.008851585   0.001740418  -0.000054019   0.000674263   0.124761740   0.518102447  -0.000135646
                        -0.000052980  -0.000293494  -0.014956141   0.000027813  -0.000076401  -0.009063919  -0.036085065  -0.000038398

   27    5.2  1.5 -0.5   0.462960576   0.005772827  -0.000368271  -0.179543540   0.429190746  -0.002541117   0.000099618   0.158026660
                         0.033647376   0.003105365   0.000197035  -0.000524808   0.013383518  -0.000223310  -0.000006936  -0.008971576

   28    6.2  1.5 -0.5   0.023602971   0.002164860   0.000266951   0.000141255  -0.017901938   0.000242094   0.000008050   0.008210130
                        -0.324432246  -0.004109473   0.000048107   0.022546769   0.574601854  -0.003669710   0.000191042   0.142437117

   29    7.2  1.5 -0.5   0.000295686   0.001965767   0.060857743  -0.000132215   0.000282725   0.027497456  -0.025647489  -0.000046617
                         0.000625113  -0.053080971   0.007260418   0.000082950   0.002486059   0.377164504  -0.368028505   0.000038118

   30    8.2  1.5 -0.5  -0.003602062  -0.025615910  -0.174303060   0.000309237   0.000064228   0.008639486  -0.000727754  -0.000002971
                        -0.009029467   0.683882403  -0.021376203   0.000453421   0.000890251   0.121465944  -0.009565004  -0.000036021

   31    1.2  1.5 -1.5   0.000014613   0.000000121  -0.000000119  -0.000067586   0.000427739  -0.000002697   0.000000085   0.000032784
                         0.000001080   0.000000085  -0.000000053  -0.000000358   0.000013664  -0.000000188  -0.000000017  -0.000001883

   32    2.2  1.5 -1.5   0.000000783   0.000005635   0.000130221  -0.000000220  -0.000000045  -0.000001375  -0.000000137  -0.000000013
                         0.000001943  -0.000148200   0.000016007  -0.000000340  -0.000000184  -0.000020299  -0.000002241  -0.000000001

   33    3.2  1.5 -1.5  -0.000001916   0.000145623  -0.000015517   0.000000334   0.000000422   0.000047415  -0.000043480   0.000000012
                         0.000000770   0.000005540   0.000126103  -0.000000220  -0.000000014  -0.000003358   0.000003056  -0.000000004

   34    4.2  1.5 -1.5   0.073920143   0.001002312   0.001506074   0.706016327   0.101622692  -0.000973134   0.000122194  -0.005187814
                         0.005322726   0.000501483  -0.001777771   0.001013894   0.002847077   0.000009039  -0.000011920   0.000244074

   35    5.2  1.5 -1.5  -0.003402842   0.257621343  -0.010465112   0.000077521  -0.000680331  -0.103065304   0.506970755  -0.000099220
                         0.001359242   0.009867915   0.085520229  -0.000164499   0.000091859   0.007753402  -0.035654711  -0.000050551

   36    6.2  1.5 -1.5   0.001035976   0.007615448   0.030340471  -0.000041731  -0.000140769  -0.013632222   0.036336757   0.000052009
                         0.002667501  -0.197994796   0.003852642  -0.000131585  -0.001280578  -0.186798693   0.516019493  -0.000074262

   37    7.2  1.5 -1.5   0.021647104   0.002021895  -0.001634812   0.000944654   0.001424467   0.000016429  -0.000007280   0.000120066
                        -0.300605659  -0.003885239  -0.001385475  -0.648426071  -0.054177342   0.000601232  -0.000033541   0.002299741

   38    8.2  1.5 -1.5  -0.005316721  -0.000494305   0.000058879   0.000433214  -0.016109614   0.000234247   0.000014930   0.008452671
                         0.072525778   0.000865621  -0.000144409  -0.071453505   0.502383892  -0.003080092   0.000105867   0.150233245


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.001112312   0.000021621  -0.000001507  -0.000000010  -0.000000053   0.000001624  -0.000000232   0.000006491
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000017663   0.001016032   0.000000594  -0.000000570  -0.000002704  -0.000000760  -0.000011062  -0.000003073
                        -0.000430775  -0.000000550  -0.000000359  -0.000000063   0.000000145  -0.000000046  -0.000000123  -0.000000075

    3    3.2  0.5  0.5  -0.000014288   0.000427175  -0.000001331  -0.000000242  -0.000001137   0.000001751  -0.000004645   0.000006999
                         0.001024595  -0.000000233   0.000000861  -0.000000026   0.000000061   0.000000109  -0.000000047   0.000000168

    4    1.2  0.5 -0.5  -0.000013957   0.000718032  -0.000000010   0.000001481   0.000001053   0.000000070   0.000006614   0.000000227
                        -0.000016513   0.000849543   0.000000002  -0.000000341   0.000000010   0.000000000   0.000000176   0.000000006

    5    2.2  0.5 -0.5  -0.000655424  -0.000340412  -0.000000529  -0.000000662  -0.000000491   0.000003620  -0.000003132   0.000010774
                        -0.000776319   0.000264588   0.000000181  -0.000000224   0.000000045   0.000000133   0.000000001   0.000000150

    6    3.2  0.5 -0.5  -0.000275561   0.000773325  -0.000000225   0.000001497   0.000001132   0.000001520   0.000007137   0.000004524
                        -0.000326392  -0.000672320   0.000000076   0.000000560  -0.000000111   0.000000056  -0.000000001   0.000000067

    7    1.2  1.5  1.5   0.000001146   0.000065482  -0.219384043  -0.000000678  -0.000025276  -0.050888293  -0.000005804   0.013160818
                         0.000001353  -0.000056907   0.074540391  -0.000009904  -0.000033304  -0.001921376  -0.000006283   0.000203335

    8    2.2  1.5  1.5   0.000003489  -0.000472569   0.000026183   0.006911891  -0.014650165   0.000006436   0.000252164   0.000001758
                        -0.000002556  -0.487761550  -0.000020594  -0.064344013  -0.269891726   0.000045592  -0.019008509   0.000130396

    9    3.2  1.5  1.5  -0.000002556  -0.487758452  -0.000023668   0.061440666   0.229928247   0.000071596  -0.144072177  -0.000036836
                        -0.000003488   0.000472560   0.000010048   0.006596922  -0.012512768  -0.000000292  -0.001448198  -0.000000068

   10    4.2  1.5  1.5  -0.063466855   0.000000869  -0.004164147   0.000009787   0.000123957   0.086381941   0.000179753   0.257167495
                        -0.075141725  -0.000000067   0.001385510  -0.000003101  -0.000000835   0.003118563   0.000010484   0.003587110

   11    5.2  1.5  1.5  -0.000000273  -0.049184211   0.000024937   0.108616266   0.500483388  -0.000273170   0.294156105  -0.000358978
                        -0.000000335   0.000071781  -0.000010284   0.011719554  -0.026964620  -0.000001006   0.002910813   0.000011509

   12    6.2  1.5  1.5   0.000011541  -0.000071774   0.000003713   0.010200526  -0.016513397  -0.000001650  -0.004941821  -0.000006329
                        -0.000009703  -0.049182125   0.000013973  -0.094549663  -0.306855025  -0.000310555   0.496167205  -0.000048519

   13    7.2  1.5  1.5  -0.075123330  -0.000000067   0.003679452  -0.000001629  -0.000003387   0.003067710   0.000009609   0.003590924
                         0.063451240  -0.000008180   0.010805411  -0.000024041  -0.000169763  -0.084826842  -0.000105231  -0.257531483

   14    8.2  1.5  1.5   0.000813755  -0.000000977   0.208479351  -0.000002303   0.000000504  -0.005402687  -0.000006050   0.000543741
                        -0.000694365   0.000001222   0.613588370  -0.000016278  -0.000012127   0.143255513   0.000060251  -0.034013513

   15    1.2  1.5  0.5   0.000052438   0.563210906  -0.000043821  -0.005028605  -0.069217386   0.000215166  -0.282513510   0.000179309
                         0.000011747  -0.000306012  -0.000014131  -0.000547690   0.003672466  -0.000011374  -0.003065866  -0.000020262

   16    2.2  1.5  0.5   0.215099230  -0.000065465  -0.063706429   0.000000237   0.000010667   0.003348251   0.000042219   0.001711913
                        -0.181757949   0.000002525  -0.187777709   0.000000686  -0.000060546  -0.090365352  -0.000117836  -0.126501009

   17    3.2  1.5  0.5  -0.181756323   0.000078167   0.192229446  -0.000011793  -0.000082108  -0.002267939  -0.000112533  -0.149275764
                        -0.215097313  -0.000000215  -0.065228745   0.000002902   0.000004008   0.000015538  -0.000002307  -0.002073492

   18    4.2  1.5  0.5  -0.000000004  -0.000003051   0.000003910  -0.310524769   0.570176321   0.000046563  -0.134495981  -0.000185239
                        -0.000000001  -0.000005374   0.000000665  -0.033277143  -0.031114174   0.000007086  -0.001273247   0.000009234

   19    5.2  1.5  0.5   0.055014922  -0.000000754  -0.108340494   0.000017276   0.000182247   0.100927884   0.000247760   0.377298709
                         0.065042016  -0.000001905   0.036722832  -0.000005164  -0.000004167   0.003505898   0.000007668   0.005013083

   20    6.2  1.5  0.5  -0.065043521  -0.000000056   0.032616837   0.000012471  -0.000003205  -0.005342653  -0.000017132  -0.004812127
                         0.055016196   0.000001509   0.096352336  -0.000070084   0.000123068   0.148421120   0.000291974   0.365020077

   21    7.2  1.5  0.5  -0.000009672   0.000000578   0.000004298  -0.058419712   0.019783824   0.000005401   0.000890627   0.000002413
                         0.000008182   0.001061670   0.000043559   0.545108163   0.362647299   0.000034992  -0.095882789  -0.000077340

   22    8.2  1.5  0.5   0.000001993   0.000053405  -0.000003896   0.000105657   0.003241636   0.000001292  -0.002876340   0.000002180
                         0.000000455   0.098313160   0.000007904  -0.001222447   0.060618459  -0.000203750   0.264522844  -0.000155788

   23    1.2  1.5 -0.5   0.363327846  -0.000042822   0.004455420  -0.000039969  -0.000131577  -0.092616505  -0.000212660  -0.275730102
                         0.430347217  -0.000032466  -0.001521440   0.000023286  -0.000008921  -0.003371572  -0.000026993  -0.003902118

   24    2.2  1.5 -0.5  -0.000040330  -0.000033181   0.000000020  -0.020972422  -0.004470205   0.000014249   0.001516853   0.000037881
                        -0.000051628  -0.281609496   0.000000749   0.196149879  -0.082951851   0.000100344  -0.132980732   0.000092817

   25    3.2  1.5 -0.5   0.000050293   0.281606995   0.000011740   0.201175025  -0.013721232  -0.000127003   0.149577941  -0.000103758
                         0.000059839  -0.000033185   0.000000275   0.021521916   0.000826575  -0.000003159   0.001669753  -0.000000541

   26    4.2  1.5 -0.5  -0.000006061   0.000000003   0.305609682   0.000002810  -0.000029872   0.551947322   0.000313713  -0.180103058
                         0.000001154   0.000000003  -0.103764266  -0.000001028   0.000007150   0.020953772   0.000019324  -0.002812692

   27    5.2  1.5 -0.5  -0.000001941  -0.085186963  -0.000017364  -0.113766936  -0.067121062   0.000292571  -0.384755433   0.000207121
                         0.000000653  -0.000031736  -0.000001333  -0.012133986   0.003417679   0.000002429  -0.004514234  -0.000000904

   28    6.2  1.5 -0.5   0.000001116  -0.000031737  -0.000027288   0.010647443   0.006298643  -0.000004513  -0.004436183  -0.000008768
                        -0.000001017   0.085188932  -0.000065159  -0.100233499   0.119234342  -0.000232819   0.375807558  -0.000246441

   29    7.2  1.5 -0.5   0.000811219  -0.000000006   0.174078511  -0.000005137  -0.000005109   0.013778560   0.000002839  -0.002019017
                        -0.000684883   0.000012668   0.512690949  -0.000043093   0.000018923  -0.363123115  -0.000165848   0.128250652

   30    8.2  1.5 -0.5   0.075122946  -0.000001634  -0.000451833  -0.000005549  -0.000002226   0.003025130   0.000002939   0.003651274
                        -0.063423820  -0.000001228  -0.001409382  -0.000007262  -0.000126828  -0.082435515  -0.000186680  -0.258543801

   31    1.2  1.5 -1.5   0.000001193   0.000001779   0.000001719   0.229404420  -0.055841221   0.000022096   0.009592055  -0.000007105
                        -0.000086746   0.000000002   0.000009066   0.024633789   0.003035753  -0.000034126   0.000092451  -0.000003204

   32    2.2  1.5 -1.5   0.372830863   0.000000301   0.019302790  -0.000029761   0.000006575   0.010233618   0.000008212  -0.000131760
                        -0.314497070   0.000004315   0.056803747  -0.000014183  -0.000030021  -0.271822793  -0.000198668   0.003838370

   33    3.2  1.5 -1.5   0.314495078  -0.000004314   0.054231145   0.000025567   0.000039546  -0.218352102  -0.000086106   0.163001094
                         0.372828492   0.000000299  -0.018425517   0.000004421  -0.000000120  -0.008264305  -0.000002762   0.002451967

   34    4.2  1.5 -1.5  -0.000000510  -0.098357045   0.000009857   0.004691182   0.064558887  -0.000200037   0.263494799  -0.000148334
                        -0.000000707   0.000032661   0.000000950   0.000476446  -0.003403071   0.000000734   0.002913659   0.000005388

   35    5.2  1.5 -1.5   0.031695620  -0.000000432   0.095893171  -0.000026687  -0.000171683  -0.525415955  -0.000500591  -0.250920655
                         0.037612035   0.000000008  -0.032636577  -0.000004798   0.000003663  -0.019579439  -0.000026155  -0.003790674

   36    6.2  1.5 -1.5   0.037610387   0.000000040   0.028392509  -0.000000229   0.000000809   0.009910066  -0.000005932  -0.007831845
                        -0.031694236   0.000015078   0.083427425   0.000015367   0.000186726  -0.266328766  -0.000000055   0.520409133

   37    7.2  1.5 -1.5   0.000006291  -0.000032713   0.000003272  -0.001258531   0.003319133   0.000000839  -0.002917377  -0.000006438
                        -0.000005229  -0.098332914   0.000022457   0.011643872   0.062856381  -0.000239843   0.263749659  -0.000070528

   38    8.2  1.5 -1.5  -0.000000303  -0.000005026   0.000001307  -0.068896443  -0.008523556  -0.000000751  -0.000212566   0.000004541
                         0.000001535   0.001069752   0.000016093   0.641607659  -0.156871173  -0.000015255   0.023964720   0.000030153


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5  -0.000134988  -0.003583336   0.006088986  -0.000030034   0.000122278   0.006260114
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.006327784   0.001442826   0.000709859  -0.001408261   0.005746599  -0.000106981
                        -0.000014433   0.000813276   0.002064197   0.000004683  -0.000000918  -0.002425709

    3    3.2  0.5  0.5  -0.002660452  -0.003250389  -0.001997598  -0.000591912   0.002416095  -0.000062374
                        -0.000005496  -0.001933206  -0.004909745   0.000001866  -0.000000428   0.005769470

    4    1.2  0.5 -0.5   0.003085826  -0.000124892  -0.000021572  -0.003341896   0.004046633  -0.000079042
                         0.001623736  -0.000039984   0.000037901   0.005156487   0.004776337  -0.000093295

    5    2.2  0.5 -0.5  -0.001467772  -0.005863032  -0.001016602   0.001600830  -0.001919920  -0.003713978
                         0.000500249  -0.001862424   0.001774096   0.001594032   0.001486391  -0.004385116

    6    3.2  0.5 -0.5   0.003334614  -0.002464970  -0.000427222  -0.003638030   0.004361666  -0.001561469
                        -0.001271071  -0.000783532   0.000745768  -0.004053137  -0.003777063  -0.001843701

    7    1.2  1.5  1.5  -0.000026664  -0.080298653   0.126119357  -0.000002858   0.000014764  -0.000004501
                         0.000035846  -0.025540784  -0.219925564   0.000004321  -0.000012815  -0.000005331

    8    2.2  1.5  1.5  -0.000274400   0.000018874  -0.000016087   0.000124818  -0.000064617   0.000000335
                         0.150572283   0.000003889   0.000033875   0.033518155  -0.109925628  -0.000000704

    9    3.2  1.5  1.5   0.150576711  -0.000009875   0.000025195   0.033504889  -0.109925840  -0.000000705
                         0.000274408  -0.000012946  -0.000028165  -0.000124771   0.000064619  -0.000000338

   10    4.2  1.5  1.5  -0.000004187  -0.379613906  -0.065763643   0.000006216  -0.000002799   0.282044201
                         0.000021705  -0.120518109   0.114870763  -0.000017564  -0.000001258   0.332870455

   11    5.2  1.5  1.5  -0.409777443  -0.000001701  -0.000015540  -0.091206447   0.218087479   0.000001471
                        -0.000545782   0.000023464   0.000000194   0.000384375  -0.000235164   0.000000607

   12    6.2  1.5  1.5   0.000545795  -0.000008865  -0.000021287  -0.000384321   0.000235170  -0.000050237
                        -0.409789267  -0.000056090  -0.000036805  -0.091189537   0.218090602   0.000043383

   13    7.2  1.5  1.5   0.000022108  -0.120933051   0.111101084  -0.000017610  -0.000001228   0.332835468
                        -0.000056605   0.380941469   0.063627072  -0.000019795   0.000035210  -0.282014217

   14    8.2  1.5  1.5   0.000020397  -0.038836456  -0.346729619  -0.000000989   0.000004355  -0.003600460
                         0.000020086   0.122019605  -0.198827629  -0.000000242  -0.000005406   0.003081943

   15    1.2  1.5  0.5   0.086933130  -0.000022556  -0.000017893   0.019343031   0.126958369   0.000011970
                         0.000195418   0.000013801   0.000019169  -0.000063810  -0.000020612   0.000002107

   16    2.2  1.5  0.5   0.000009669  -0.065868743  -0.078202443  -0.000009473  -0.000014978   0.048432023
                         0.000005456   0.207450862  -0.044968232  -0.000003568   0.000000405  -0.041054747

   17    3.2  1.5  0.5   0.000009759   0.114737754   0.100780918   0.000000902   0.000017466  -0.041063046
                         0.000001396   0.036335813  -0.175702917   0.000007673   0.000000184  -0.048441851

   18    4.2  1.5  0.5   0.091190960  -0.000000966  -0.000000242  -0.409760294  -0.000011782   0.000000001
                         0.000130002  -0.000023911  -0.000002681   0.001582870   0.000023877  -0.000000007

   19    5.2  1.5  0.5  -0.000010079  -0.126149263   0.198469538   0.000002551   0.000002437  -0.244445129
                         0.000020619  -0.040251832  -0.345355498  -0.000001095   0.000009786  -0.288083957

   20    6.2  1.5  0.5   0.000028758  -0.040238666  -0.345386596   0.000000408  -0.000001091   0.288066743
                         0.000033072   0.126107722  -0.198487300  -0.000061465  -0.000007609  -0.244430632

   21    7.2  1.5  0.5   0.000142459  -0.000029611  -0.000054041   0.001590620  -0.000000749   0.000042826
                        -0.086730550   0.000019735  -0.000029017   0.410682538  -0.004718307  -0.000036349

   22    8.2  1.5  0.5  -0.000917644   0.000024626   0.000008696   0.000261162  -0.000070804  -0.000010628
                         0.410698157  -0.000001430   0.000020442   0.086747228  -0.436151883  -0.000002507

   23    1.2  1.5 -0.5  -0.000019682  -0.080544202  -0.013963146  -0.000024049  -0.000009345   0.082054936
                        -0.000019611  -0.025587924   0.024368480   0.000009412  -0.000007771   0.096883275

   24    2.2  1.5 -0.5   0.000513572  -0.000010384   0.000002258   0.000504595   0.000016721  -0.000009373
                        -0.207349820   0.000002270  -0.000012273   0.111885701  -0.063487634  -0.000011690

   25    3.2  1.5 -0.5   0.140333571  -0.000009396   0.000007731   0.189260954   0.063500491   0.000011431
                         0.000415922  -0.000005635   0.000005870  -0.000726907   0.000016699   0.000013208

   26    4.2  1.5 -0.5  -0.000010063  -0.126159538   0.198238499   0.000002558   0.000000005   0.000010606
                         0.000028808  -0.040180083  -0.345531543   0.000000639  -0.000000006  -0.000024418

   27    5.2  1.5 -0.5  -0.091202891   0.000003407  -0.000001975   0.409722149   0.377817397   0.000009041
                        -0.000088202   0.000016326   0.000001407  -0.001876508   0.000284699  -0.000004466

   28    6.2  1.5 -0.5   0.000088085  -0.000032661  -0.000051480   0.001876561   0.000284765  -0.000006511
                        -0.091162991   0.000028487  -0.000027759   0.409751734  -0.377794910   0.000004086

   29    7.2  1.5 -0.5  -0.000028558   0.038844138   0.346717848  -0.000000541   0.000000050  -0.003600446
                        -0.000023566  -0.122026616   0.198926287   0.000063379  -0.000056172   0.003049408

   30    8.2  1.5 -0.5   0.000020205  -0.121041500   0.111140945  -0.000009432   0.000008783  -0.332820164
                         0.000006573   0.380980859   0.063655853  -0.000016377   0.000006488   0.281880835

   31    1.2  1.5 -1.5   0.058034581  -0.000014183  -0.000008318  -0.260777983  -0.000006974   0.000000234
                         0.000109259  -0.000037438   0.000001145   0.000955450   0.000000012  -0.000019549

   32    2.2  1.5 -1.5  -0.000014744   0.044380598  -0.042212279   0.000036840  -0.000000321   0.083913188
                        -0.000001565  -0.139492962  -0.024211493   0.000002178   0.000000711  -0.071008678

   33    3.2  1.5 -1.5   0.000009348   0.139498453   0.024205154  -0.000037333  -0.000000713   0.071008818
                        -0.000007965   0.044382345  -0.042201222   0.000006579  -0.000000320   0.083913355

   34    4.2  1.5 -1.5   0.409685331   0.000002519   0.000022444   0.091158976   0.436291227   0.000002769
                         0.001002481  -0.000025872   0.000003799  -0.000259054   0.000021333   0.000001323

   35    5.2  1.5 -1.5  -0.000004228  -0.379563406  -0.065940566   0.000006274   0.000001414  -0.140794716
                         0.000019987  -0.120965626   0.114835589  -0.000009372   0.000000730  -0.166547133

   36    6.2  1.5 -1.5   0.000021851  -0.120969720   0.114822031  -0.000017630   0.000000627  -0.166549516
                        -0.000054671   0.379576249   0.065932800  -0.000029247  -0.000066373   0.140796727

   37    7.2  1.5 -1.5  -0.001008970   0.000008161   0.000013296   0.000265204  -0.000021072  -0.000026070
                         0.410628179   0.000058922   0.000032235   0.086706929   0.436245154   0.000023697

   38    8.2  1.5 -1.5  -0.000138314   0.000019048  -0.000001419  -0.001498970   0.000024067   0.000001309
                         0.086724828  -0.000012741   0.000000190  -0.410640291  -0.004739290  -0.000006817


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  49.950%   0.000%   0.034%  16.676%   0.013%  33.316%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   6.868%   3.878%  52.426%   3.487%  28.313%   5.017%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  38.610%   0.685%   9.639%  17.728%   5.005%  28.324%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%  49.950%  16.676%   0.034%  33.316%   0.013%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   3.878%   6.868%   3.487%  52.427%   5.017%  28.313%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.685%  38.610%  17.728%   9.639%  28.324%   5.005%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  32.189%   1.101%   0.000%
    8    2.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   1.078%   0.000%   0.000%   1.773%
    9    3.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.164%   0.000%   0.000%   7.548%
   10    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.050%   1.139%   0.000%
   11    5.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.197%   0.000%   0.000%   2.061%
   12    6.2  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.004%   0.000%   0.000%   3.280%
   13    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.063%   1.128%   0.000%
   14    8.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.787%   0.244%   0.000%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   1.203%   0.000%   0.000%  49.908%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%  17.508%  19.289%   0.000%
   17    3.2  1.5  0.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%  31.837%   6.630%   0.000%
   18    4.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   2.379%   0.000%   0.000%   0.001%
   19    5.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.573%   2.132%   0.000%
   20    6.2  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.013%   2.627%   0.000%
   21    7.2  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   3.947%   0.000%   0.000%   0.210%
   22    8.2  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.021%   0.000%   0.000%   1.183%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   2.126%  48.537%   0.000%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%  19.684%   0.000%   0.000%  18.046%
   25    3.2  1.5 -0.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%  30.622%   0.000%   0.000%   7.933%
   26    4.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.078%   0.000%   0.000%
   27    5.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.467%   0.000%   0.000%   2.246%
   28    6.2  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%   0.039%   0.000%   0.000%   2.642%
   29    7.2  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.151%   0.402%   0.000%
   30    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.041%   1.154%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%  33.137%   0.000%   0.000%   0.683%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   1.930%   0.906%   0.000%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.300%   9.427%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.028%   0.000%   0.000%   1.171%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.350%   1.742%   0.000%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.006%   3.542%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.039%   0.000%   0.000%   1.162%
   38    8.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   6.990%   0.000%   0.000%   0.153%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   1.067%   0.000%   0.001%   0.433%   0.000%  52.425%   0.000%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%  44.388%   1.175%   0.003%  16.443%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.2  1.5  1.5   0.000%  39.528%   1.175%   0.003%  16.443%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.2  1.5  1.5   0.020%   0.000%   0.005%   2.349%   0.000%   0.019%   0.000%   0.548%  49.853%   0.001%
   11    5.2  1.5  1.5   0.000%   3.487%   0.159%   0.000%   2.217%   0.000%   6.643%   0.001%   0.000%   0.743%
   12    6.2  1.5  1.5   0.000%   2.460%   0.158%   0.000%   2.217%   0.000%   3.928%   0.001%   0.000%   0.094%
   13    7.2  1.5  1.5   0.019%   0.000%   0.005%   2.353%   0.000%   0.025%   0.002%   9.077%  42.054%   0.000%
   14    8.2  1.5  1.5   0.227%   0.000%   0.000%   0.024%   0.000%   2.364%   0.000%   0.528%   0.507%   0.000%
   15    1.2  1.5  0.5   0.000%   0.423%   0.392%   0.001%   5.481%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    2.2  1.5  0.5   1.853%   0.000%   0.042%  19.733%   0.000%  21.339%   0.000%   0.000%   0.000%   0.000%
   17    3.2  1.5  0.5   0.183%   0.000%   0.057%  27.057%   0.000%  13.999%   0.000%   0.000%   0.000%   0.000%
   18    4.2  1.5  0.5   0.000%   4.876%   2.218%   0.005%   0.159%   0.000%   0.008%   0.000%   0.000%   0.023%
   19    5.2  1.5  0.5   0.016%   0.000%   0.000%   0.020%   0.000%   2.352%   0.004%  21.543%   3.215%   0.000%
   20    6.2  1.5  0.5   0.081%   0.000%   0.000%   0.019%   0.000%   2.351%   0.002%  10.586%   0.052%   0.000%
   21    7.2  1.5  0.5   0.000%   3.100%   2.235%   0.005%   0.147%   0.000%   0.282%   0.000%   0.000%   0.377%
   22    8.2  1.5  0.5   0.000%   0.006%   0.147%   0.000%   2.243%   0.000%  46.830%   0.009%   0.000%   3.086%
   23    1.2  1.5 -0.5   0.871%   0.000%   0.012%   5.813%   0.000%   0.048%   0.000%   0.000%   0.000%   0.000%
   24    2.2  1.5 -0.5   0.000%   0.920%   7.835%   0.016%  33.262%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    3.2  1.5 -0.5   0.000%   0.095%  28.114%   0.060%  12.939%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    4.2  1.5 -0.5   5.179%   0.000%   0.000%   0.019%   0.000%   2.363%   0.000%   0.008%   0.023%   0.000%
   27    5.2  1.5 -0.5   0.000%   0.008%   2.210%   0.005%   0.157%   0.000%  21.546%   0.004%   0.000%   3.224%
   28    6.2  1.5 -0.5   0.000%   0.040%   2.206%   0.005%   0.160%   0.000%  10.581%   0.002%   0.000%   0.051%
   29    7.2  1.5 -0.5   2.704%   0.000%   0.000%   0.024%   0.000%   2.362%   0.000%   0.282%   0.376%   0.000%
   30    8.2  1.5 -0.5   0.016%   0.000%   0.005%   2.361%   0.000%   0.024%   0.009%  46.835%   3.084%   0.000%
   31    1.2  1.5 -1.5   0.000%   0.536%  49.222%   0.104%   3.532%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.2  1.5 -1.5  44.403%   0.000%   0.037%  17.439%   0.000%   0.144%   0.000%   0.000%   0.000%   0.000%
   33    3.2  1.5 -1.5  37.513%   0.000%   0.037%  17.438%   0.000%   0.145%   0.000%   0.000%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.010%   0.158%   0.000%   2.215%   0.000%   0.549%   0.000%   0.001%  49.846%
   35    5.2  1.5 -1.5   3.652%   0.000%   0.005%   2.352%   0.000%   0.019%   0.001%   6.647%   0.742%   0.000%
   36    6.2  1.5 -1.5   2.197%   0.000%   0.005%   2.351%   0.000%   0.020%   0.001%   3.926%   0.094%   0.000%
   37    7.2  1.5 -1.5   0.000%   0.009%   0.146%   0.000%   2.236%   0.000%   9.083%   0.002%   0.000%  42.046%
   38    8.2  1.5 -1.5   0.000%   0.114%   2.237%   0.005%   0.147%   0.000%   0.529%   0.000%   0.000%   0.511%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.369%   0.000%   0.000%   0.259%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%  23.791%   0.000%   0.419%   7.306%   0.000%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%  23.791%   0.000%   0.382%   5.302%   0.000%
   10    4.2  1.5  1.5   0.000%   1.028%   0.003%   0.000%   0.967%   0.000%   0.002%   0.000%   0.000%   0.747%
   11    5.2  1.5  1.5   1.065%   0.000%   0.000%  25.835%   0.000%   0.242%   0.000%   1.193%  25.121%   0.000%
   12    6.2  1.5  1.5   3.505%   0.000%   0.000%  26.760%   0.000%   0.242%   0.000%   0.904%   9.443%   0.000%
   13    7.2  1.5  1.5   0.000%   0.291%   0.001%   0.000%   0.967%   0.000%   0.013%   0.000%   0.000%   0.721%
   14    8.2  1.5  1.5   0.001%  25.265%   2.268%   0.000%   0.000%   0.000%  41.995%   0.000%   0.000%   2.055%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  31.721%   0.000%   0.003%   0.480%   0.000%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   7.930%   0.000%   3.932%   0.000%   0.000%   0.818%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   7.930%   0.000%   4.121%   0.000%   0.000%   0.001%
   18    4.2  1.5  0.5   1.567%   0.000%   0.000%  26.971%   0.000%   0.000%   0.000%   9.753%  32.607%   0.000%
   19    5.2  1.5  0.5   0.001%  18.445%   2.510%   0.000%   0.726%   0.000%   1.309%   0.000%   0.000%   1.020%
   20    6.2  1.5  0.5   0.001%  33.041%   2.037%   0.000%   0.726%   0.000%   1.035%   0.000%   0.000%   2.206%
   21    7.2  1.5  0.5  14.293%   0.001%   0.000%  13.617%   0.000%   0.000%   0.000%  30.056%  13.190%   0.000%
   22    8.2  1.5  0.5   1.486%   0.000%   0.000%   0.009%   0.000%   0.967%   0.000%   0.000%   0.369%   0.000%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%  31.721%   0.000%   0.002%   0.000%   0.000%   0.859%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   7.930%   0.000%   3.891%   0.690%   0.000%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   7.930%   0.000%   4.093%   0.019%   0.000%
   26    4.2  1.5 -0.5   0.000%   1.565%  26.973%   0.000%   0.000%   0.000%  10.416%   0.000%   0.000%  30.508%
   27    5.2  1.5 -0.5  18.438%   0.001%   0.000%   2.505%   0.000%   0.726%   0.000%   1.309%   0.452%   0.000%
   28    6.2  1.5 -0.5  33.049%   0.001%   0.000%   2.036%   0.000%   0.726%   0.000%   1.016%   1.426%   0.000%
   29    7.2  1.5 -0.5   0.001%  14.301%  13.610%   0.000%   0.000%   0.000%  29.316%   0.000%   0.000%  13.205%
   30    8.2  1.5 -0.5   0.000%   1.483%   0.009%   0.000%   0.967%   0.000%   0.000%   0.000%   0.000%   0.680%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.323%   0.313%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%  23.791%   0.000%   0.360%   0.000%   0.000%   7.399%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%  23.791%   0.000%   0.328%   0.000%   0.000%   4.775%
   34    4.2  1.5 -1.5   1.034%   0.000%   0.000%   0.003%   0.000%   0.967%   0.000%   0.002%   0.418%   0.000%
   35    5.2  1.5 -1.5   0.000%   1.068%  25.829%   0.000%   0.242%   0.000%   1.026%   0.000%   0.000%  27.645%
   36    6.2  1.5 -1.5   0.000%   3.508%  26.760%   0.000%   0.242%   0.000%   0.777%   0.000%   0.000%   7.103%
   37    7.2  1.5 -1.5   0.294%   0.000%   0.000%   0.001%   0.000%   0.967%   0.000%   0.014%   0.396%   0.000%
   38    8.2  1.5 -1.5  25.265%   0.001%   0.000%   2.264%   0.000%   0.000%   0.000%  41.641%   2.468%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.004%   0.000%   0.000%   0.004%
    2    2.2  0.5  0.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.003%   0.001%
    3    3.2  0.5  0.5   0.000%   0.000%   0.001%   0.001%   0.003%   0.000%   0.001%   0.003%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.004%   0.004%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.001%   0.001%   0.003%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.003%   0.003%   0.001%
    7    1.2  1.5  1.5   0.000%   0.017%   0.000%   0.710%   6.427%   0.000%   0.000%   0.000%
    8    2.2  1.5  1.5   0.036%   0.000%   2.267%   0.000%   0.000%   0.112%   1.208%   0.000%
    9    3.2  1.5  1.5   2.076%   0.000%   2.267%   0.000%   0.000%   0.112%   1.208%   0.000%
   10    4.2  1.5  1.5   0.000%   6.615%   0.000%  15.863%   1.752%   0.000%   0.000%  19.035%
   11    5.2  1.5  1.5   8.654%   0.000%  16.792%   0.000%   0.000%   0.832%   4.756%   0.000%
   12    6.2  1.5  1.5  24.621%   0.000%  16.793%   0.000%   0.000%   0.832%   4.756%   0.000%
   13    7.2  1.5  1.5   0.000%   6.634%   0.000%  15.974%   1.639%   0.000%   0.000%  19.031%
   14    8.2  1.5  1.5   0.000%   0.116%   0.000%   1.640%  15.975%   0.000%   0.000%   0.002%
   15    1.2  1.5  0.5   7.982%   0.000%   0.756%   0.000%   0.000%   0.037%   1.612%   0.000%
   16    2.2  1.5  0.5   0.000%   1.601%   0.000%   4.737%   0.814%   0.000%   0.000%   0.403%
   17    3.2  1.5  0.5   0.000%   2.229%   0.000%   1.449%   4.103%   0.000%   0.000%   0.403%
   18    4.2  1.5  0.5   1.809%   0.000%   0.832%   0.000%   0.000%  16.791%   0.000%   0.000%
   19    5.2  1.5  0.5   0.000%  14.238%   0.000%   1.753%  15.866%   0.000%   0.000%  14.275%
   20    6.2  1.5  0.5   0.000%  13.326%   0.000%   1.752%  15.869%   0.000%   0.000%  14.273%
   21    7.2  1.5  0.5   0.919%   0.000%   0.752%   0.000%   0.000%  16.866%   0.002%   0.000%
   22    8.2  1.5  0.5   6.998%   0.000%  16.867%   0.000%   0.000%   0.753%  19.023%   0.000%
   23    1.2  1.5 -0.5   0.000%   7.604%   0.000%   0.714%   0.079%   0.000%   0.000%   1.612%
   24    2.2  1.5 -0.5   1.769%   0.000%   4.299%   0.000%   0.000%   1.252%   0.403%   0.000%
   25    3.2  1.5 -0.5   2.238%   0.000%   1.969%   0.000%   0.000%   3.582%   0.403%   0.000%
   26    4.2  1.5 -0.5   0.000%   3.245%   0.000%   1.753%  15.869%   0.000%   0.000%   0.000%
   27    5.2  1.5 -0.5  14.806%   0.000%   0.832%   0.000%   0.000%  16.788%  14.275%   0.000%
   28    6.2  1.5 -0.5  14.125%   0.000%   0.831%   0.000%   0.000%  16.790%  14.273%   0.000%
   29    7.2  1.5 -0.5   0.000%   1.645%   0.000%   1.640%  15.978%   0.000%   0.000%   0.002%
   30    8.2  1.5 -0.5   0.000%   6.686%   0.000%  15.980%   1.640%   0.000%   0.000%  19.023%
   31    1.2  1.5 -1.5   0.009%   0.000%   0.337%   0.000%   0.000%   6.801%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.001%   0.000%   2.143%   0.237%   0.000%   0.000%   1.208%
   33    3.2  1.5 -1.5   0.000%   2.658%   0.000%   2.143%   0.237%   0.000%   0.000%   1.208%
   34    4.2  1.5 -1.5   6.944%   0.000%  16.784%   0.000%   0.000%   0.831%  19.035%   0.000%
   35    5.2  1.5 -1.5   0.000%   6.298%   0.000%  15.870%   1.754%   0.000%   0.000%   4.756%
   36    6.2  1.5 -1.5   0.000%  27.089%   0.000%  15.871%   1.753%   0.000%   0.000%   4.756%
   37    7.2  1.5 -1.5   6.957%   0.000%  16.862%   0.000%   0.000%   0.752%  19.031%   0.000%
   38    8.2  1.5 -1.5   0.057%   0.000%   0.752%   0.000%   0.000%  16.863%   0.002%   0.000%


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

              2       9     3840.27       500      700      610     1000      520     2100     2140     5203     5303   
                                          VAR     GEOM    BASINP    BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT      FILE
 CPU TIMES  *    343035.23 272690.82  55692.62  14643.09      4.69      0.74      3.10      0.00
 REAL TIME  *    345393.92 SEC
 DISK USED  *         3.80 GB (local),       11.59 GB (total)
 SF USED    *        29.95 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -416.197274222029

              CI              CI           MULTI         RHF-SCF
   -416.14699511   -416.48393737   -415.17068210   -415.57902153
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
