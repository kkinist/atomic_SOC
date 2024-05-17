
 Working directory              : /wrk/irikura/molpro.PvXs3PI63y/
 Global scratch directory       : /wrk/irikura/molpro.PvXs3PI63y/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.PvXs3PI63y/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Sn SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sn};
 
 basis=aug-cc-pwCVQZ-PP
 
                                                                                 ! spherical anion orbitals (4S odd)
 {rhf; wf,nelec=23,sym=2,spin=3}
 
 NTRIP=12
 NSING=15
 
 w = [99,99,99]
 DO i=4,NTRIP
   w(i) = 1
 ENDDO
 
                                                                                 ! add 6p to active space
 {multi
     closed,6,3
     occ,7,9
     wf,nelec=22,sym=1,spin=2;state,NTRIP;
 weight,w
     wf,nelec=22,sym=1,spin=0;state,NSING;
 weight,all,1
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Sn SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 03-May-24          TIME: 10:47:14  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sn   ECP ECP28MDF                 selected for group  1
 Library entry SN     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SN     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SN     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SN     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SN     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SN     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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

   1  SN     22.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   22
 NUMBER OF PRIMITIVE AOS:         300
 NUMBER OF SYMMETRY AOS:          232
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

         1 0.521E-04 0.521E-04 0.521E-04 0.521E-04 0.521E-04 0.124E-03 0.143E-02 0.627E-02
         2 0.171E-04 0.171E-04 0.171E-04 0.308E-02 0.308E-02 0.308E-02 0.107E-01 0.107E-01


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     111.935 MB (compressed) written to integral file ( 15.1%)

     Node minimum: 3.670 MB, node maximum: 13.107 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4343202.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4343202      RECORD LENGTH: 524288

 Memory used in sort:       4.90 MW

 SORT1 READ    92659037. AND WROTE      765407. INTEGRALS IN      3 RECORDS. CPU TIME:     0.38 SEC, REAL TIME:     0.40 SEC
 SORT2 READ     9613375. AND WROTE    52200630. INTEGRALS IN    264 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.11 SEC

 Node minimum:     4342000.  Node maximum:     4358043. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.96      1.74
 REAL TIME  *         2.83 SEC
 DISK USED  *        29.74 MB (local),      574.44 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -213.37056066    -213.37056066     0.00D+00     0.74D-01     0     0       0.03      0.06    start
   2     -213.37337525      -0.00281459     0.97D-03     0.21D-02     1     0       0.03      0.09    diag2
   3     -213.37367843      -0.00030317     0.53D-03     0.54D-03     2     0       0.02      0.11    diag2
   4     -213.37376959      -0.00009116     0.17D-03     0.38D-03     3     0       0.03      0.14    diag2
   5     -213.37377989      -0.00001031     0.46D-04     0.11D-03     4     0       0.03      0.17    diag2
   6     -213.37378080      -0.00000090     0.94D-05     0.47D-04     5     0       0.02      0.19    diag2
   7     -213.37378088      -0.00000008     0.25D-05     0.21D-04     6     0       0.03      0.22    diag2
   8     -213.37378088      -0.00000000     0.41D-06     0.45D-05     7     0       0.03      0.25    fixocc
   9     -213.37378088      -0.00000000     0.12D-06     0.90D-06     8     0       0.02      0.27    diag2
  10     -213.37378088      -0.00000000     0.58D-07     0.20D-06     0     0       0.03      0.30    diag/orth

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -213.373780882667
  RHF One-electron energy            -381.083775115745
  RHF Two-electron energy             167.709994233078
  RHF Kinetic energy                   82.648116881720
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.581713763521

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.62713     1  1  s    0.99984
    2.1     2.00000    -1.07698     1  1  d0   0.99946
    3.1     2.00000    -1.07698     1  1  d1+  0.43290    1  1  d2+  0.53331    1  1  d1-  0.72563
    4.1     2.00000    -1.07698     1  1  d2- -0.43615    1  1  d1+ -0.47694    1  1  d2+ -0.44005    1  1  d1-  0.62256
    5.1     2.00000    -1.07698     1  1  d2-  0.84216    1  1  d1+ -0.48123
    6.1     2.00000    -1.07698     1  1  d2- -0.31448    1  1  d1+ -0.59371    1  1  d2+  0.72126
    7.1     2.00000    -0.29349     1  1  s   -0.34485    1  4  s    0.43574    1  5  s    0.55699    1  6  s    0.25435
    1.2     2.00000    -3.81344     1  1  py   0.70783    1  1  pz  -0.70671
    2.2     2.00000    -3.81344     1  1  px   1.00008
    3.2     2.00000    -3.81344     1  1  py   0.70674    1  1  pz   0.70765
    4.2     1.00000    -0.05737     1  4  py   0.34517    1  5  py   0.40231    1  6  py   0.27279
    5.2     1.00000    -0.05737     1  4  px   0.34595    1  5  px   0.40321    1  6  px   0.27340
    6.2     1.00000    -0.05737     1  4  pz   0.34517    1  5  pz   0.40231    1  6  pz   0.27279


 HOMO      6.2    -0.057367 =      -1.5610eV
 LUMO      7.2     0.130561 =       3.5527eV
 LUMO-HOMO         0.187928 =       5.1138eV

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
 CPU TIMES  *         2.30      0.34      1.74
 REAL TIME  *         4.01 SEC
 DISK USED  *        32.19 MB (local),      603.84 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =        12.00000000                                  
 SETTING NSING          =        15.00000000                                  
 SETTING W(1)           =        99.00000000                                  
 SETTING W(2)           =        99.00000000                                  
 SETTING W(3)           =        99.00000000                                  

 DO I                   =         4.00000000   
 SETTING W(4)           =         1.00000000                                  

 DO I                   =         5.00000000   
 SETTING W(5)           =         1.00000000                                  

 DO I                   =         6.00000000   
 SETTING W(6)           =         1.00000000                                  

 DO I                   =         7.00000000   
 SETTING W(7)           =         1.00000000                                  

 DO I                   =         8.00000000   
 SETTING W(8)           =         1.00000000                                  

 DO I                   =         9.00000000   
 SETTING W(9)           =         1.00000000                                  

 DO I                   =        10.00000000   
 SETTING W(10)          =         1.00000000                                  

 DO I                   =        11.00000000   
 SETTING W(11)          =         1.00000000                                  

 DO I                   =        12.00000000   
 SETTING W(12)          =         1.00000000                                  

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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.988D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.578D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.759D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.470D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.599D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 6 4   3 5 2 1 6 4 5 3 2 5   3 4 6 2 1 7 9111310  12 81514 5 3 4 6 212
                                        81310 9111514 7 1 2   3 5 6 41310 812 711   91514 1 2 5 3 6 4 8  12 711 914151310 1 2
                                        6 4 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.503D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.240D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.506D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.628D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.628D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.606D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.606D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 1 2 3   1 2 810 9 7 6 5 4 3   1 210 8 6 7 9 5 410   8 6 4 5 9 7 3 1 2 7
                                        9 810 5 4 6 3 1 219  16142113111215171820   6 5 4 7 910 8 3 2 1   7 9 5 4 6 810 3 1 2
                                        3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.30841   0.30841   0.30841   0.00312   0.00312   0.00312   0.00312   0.00312
                                          0.00312   0.00312   0.00312   0.00312
 Weight factors for state symmetry  2:    0.00312   0.00312   0.00312   0.00312   0.00312   0.00312   0.00312   0.00312
                                          0.00312   0.00312   0.00312   0.00312   0.00312   0.00312   0.00312
 
 Number of orbital rotations:  1243  ( 24 closed/active, 696 closed/virtual, 0 active/active, 523 active/virtual )
 Total number of variables:    6778
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   22   30    0   -213.31392156    -213.33248612   -0.01856456    0.11413961 0.00038259 0.00000000  0.89E+00      1.41
   2    9   16    0   -213.33288389    -213.33507853   -0.00219464    0.10506747 0.00020518 0.00000000  0.60E+00      2.55
   3    7   12    0   -213.33508231    -213.33508243   -0.00000012    0.00076977 0.00000032 0.00000000  0.14E-02      3.54
   4    2    4    0   -213.33508243    -213.33508243    0.00000000    0.00000005 0.00000001 0.00000000  0.20E-06      4.04

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.46E-08)
                       Final energy:   -213.33508243
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -213.347856117964
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.59710348
 One electron energy                          -376.03712197
 Two electron energy                           162.68926585
 Virial ratio                                    3.58299440
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -213.347856117875
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.59710348
 One electron energy                          -376.03712198
 Two electron energy                           162.68926586
 Virial ratio                                    3.58299440
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -213.347856117815
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.59710348
 One electron energy                          -376.03712199
 Two electron energy                           162.68926587
 Virial ratio                                    3.58299440
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -213.148260429204
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.36903934
 One electron energy                          -372.63383134
 Two electron energy                           159.48557092
 Virial ratio                                    3.58772303
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -213.148260429084
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.36903934
 One electron energy                          -372.63383135
 Two electron energy                           159.48557092
 Virial ratio                                    3.58772303
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -213.148260428724
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.36903934
 One electron energy                          -372.63383135
 Two electron energy                           159.48557092
 Virial ratio                                    3.58772303
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -213.148260428128
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.36903935
 One electron energy                          -372.63383136
 Two electron energy                           159.48557094
 Virial ratio                                    3.58772303
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -213.148260428089
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.36903935
 One electron energy                          -372.63383136
 Two electron energy                           159.48557094
 Virial ratio                                    3.58772303
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -213.137354740630
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.36899811
 One electron energy                          -372.63097914
 Two electron energy                           159.49362440
 Virial ratio                                    3.58759193
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy             -213.132348607317
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.52011697
 One electron energy                          -373.34010962
 Two electron energy                           160.20776101
 Virial ratio                                    3.58279261
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy             -213.132348606954
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.52011697
 One electron energy                          -373.34010963
 Two electron energy                           160.20776102
 Virial ratio                                    3.58279261
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy             -213.132348606362
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.52011697
 One electron energy                          -373.34010963
 Two electron energy                           160.20776103
 Virial ratio                                    3.58279261
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -213.314021928222
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.53794474
 One electron energy                          -375.72665986
 Two electron energy                           162.41263793
 Virial ratio                                    3.58443583
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -213.314021928215
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.53794474
 One electron energy                          -375.72665986
 Two electron energy                           162.41263793
 Virial ratio                                    3.58443583
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -213.314021928124
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.53794474
 One electron energy                          -375.72665986
 Two electron energy                           162.41263794
 Virial ratio                                    3.58443583
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -213.314021928067
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.53794474
 One electron energy                          -375.72665987
 Two electron energy                           162.41263794
 Virial ratio                                    3.58443583
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -213.314021928051
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.53794474
 One electron energy                          -375.72665987
 Two electron energy                           162.41263794
 Virial ratio                                    3.58443583
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -213.284580352586
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.49562615
 One electron energy                          -375.42825031
 Two electron energy                           162.14366996
 Virial ratio                                    3.58540471
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -213.155545763410
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.36905863
 One electron energy                          -372.63552941
 Two electron energy                           159.47998365
 Virial ratio                                    3.58781088
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -213.155545763087
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.36905863
 One electron energy                          -372.63552942
 Two electron energy                           159.47998365
 Virial ratio                                    3.58781088
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -213.155545762557
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.36905863
 One electron energy                          -372.63552943
 Two electron energy                           159.47998366
 Virial ratio                                    3.58781088
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -213.112571584455
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58618994
 One electron energy                          -373.67608009
 Two electron energy                           160.56350850
 Virial ratio                                    3.58048678
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy             -213.112571584317
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58618994
 One electron energy                          -373.67608009
 Two electron energy                           160.56350850
 Virial ratio                                    3.58048678
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy             -213.112571583894
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58618994
 One electron energy                          -373.67608009
 Two electron energy                           160.56350851
 Virial ratio                                    3.58048678
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Singlet
 ==============================
 !MCSCF STATE 13.1 Singlet Energy             -213.112571583192
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58618994
 One electron energy                          -373.67608009
 Two electron energy                           160.56350851
 Virial ratio                                    3.58048678
 
 !MCSCF STATE 13.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Singlet
 ==============================
 !MCSCF STATE 14.1 Singlet Energy             -213.112571583143
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.58618994
 One electron energy                          -373.67608009
 Two electron energy                           160.56350851
 Virial ratio                                    3.58048678
 
 !MCSCF STATE 14.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Singlet
 ==============================
 !MCSCF STATE 15.1 Singlet Energy             -213.088306234536
 Nuclear energy                                  0.00000000
 Kinetic energy                                 82.64299913
 One electron energy                          -373.92538071
 Two electron energy                           160.83707447
 Virial ratio                                    3.57841933
 
 !MCSCF STATE 15.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999999
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     2.282823788910
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000418
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     4.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.000000033335
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     1.717172212929
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>    -0.000000000000
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     1.000000000000
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>    -0.000000000000
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.729435894701
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000034338
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000005296
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.270594815360
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     1.000000000000
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>    -0.000000000000
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     1.000000000000
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     2.282673967761
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     1.000000000133
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     4.000000000000
 !MCSCF expec    <13.1 Singlet|LXLX|13.1 Singlet>     1.000000000134
 !MCSCF expec    <14.1 Singlet|LXLX|14.1 Singlet>     1.717327694014
 !MCSCF expec    <15.1 Singlet|LXLX|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000004
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999997
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.143942944630
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999999763
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.999999993793
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.856058549816
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>    -0.000000000000
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     0.999999999988
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     0.000000000011
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.851410338268
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999971595
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000016177
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.148577936476
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.999999999997
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.000000000005
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     0.143999325787
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     0.999999999909
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     1.000000000000
 !MCSCF expec    <13.1 Singlet|LYLY|13.1 Singlet>     3.999999999950
 !MCSCF expec    <14.1 Singlet|LYLY|14.1 Singlet>     3.856000048796
 !MCSCF expec    <15.1 Singlet|LYLY|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999996
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000003
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.573233266459
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999999999818
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999972872
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.426769237256
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>    -0.000000000000
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     0.000000000012
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.000000000000
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     0.999999999989
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.419153767031
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.999999994067
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999978527
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.580827248163
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000000003
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     1.000000000000
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999999995
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     3.573326706452
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     3.999999999958
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     1.000000000000
 !MCSCF expec    <13.1 Singlet|LZLZ|13.1 Singlet>     0.999999999915
 !MCSCF expec    <14.1 Singlet|LZLZ|14.1 Singlet>     0.426672257190
 !MCSCF expec    <15.1 Singlet|LZLZ|15.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     6.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     6.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>    -0.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>     2.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>     2.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>     2.000000000000
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 2 6 1 1 3 5   4 2 6 1 5 3 4 2 6 5   3 4 2 6 113101415 9   812 711 3 5 4 2 613
                                       10 91415 812 711 1 5   3 4 2 61310 91415 8  12 711 1 3 5 4 2 613  101514 9 812 711 1 2
                                        3 4 6 5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 1 2 3 3   1 2 7 9 4 810 6 5 1   3 2 7 9 4 810 6 5 9   7 4 810 6 5 1 2 3 9
                                        7 4 810 6 5 1 2 318  20151711141621131912   7 9 4 810 6 5 1 2 3   7 9 4 810 6 5 1 2 3
                                        1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -5.86730     1  1  s    0.99992
    2.1     2.00000    -1.31703     1  1  d2-  0.99995
    3.1     2.00000    -1.31703     1  1  d2+  0.99995
    4.1     2.00000    -1.31703     1  1  d1+ -0.99995
    5.1     2.00000    -1.31703     1  1  d0   0.99995
    6.1     2.00000    -1.31703     1  1  d1-  0.99995
    7.1     1.96452    -0.50935     1  1  s   -0.36055    1  4  s    0.47418    1  5  s    0.63536
    1.2     2.00000    -4.05325     1  1  px   1.00006
    2.2     2.00000    -4.05325     1  1  pz   1.00006
    3.2     2.00000    -4.05325     1  1  py   1.00006
    4.2     0.65737    -0.07078     1  1  pz  -0.25745    1  4  pz   0.43767    1  5  pz   0.44454
    5.2     0.65737    -0.07078     1  1  py  -0.25745    1  4  py   0.43767    1  5  py   0.44454
    6.2     0.65737    -0.07078     1  1  px  -0.25745    1  4  px   0.43767    1  5  px   0.44454
    7.2     0.02112     0.11607     1  4  px  -0.46007    1  6  px   0.65770    1 10  px   0.52081
    8.2     0.02112     0.11607     1  4  py  -0.46007    1  6  py   0.65770    1 10  py   0.52081
    9.2     0.02112     0.11607     1  4  pz  -0.46007    1  6  pz   0.65770    1 10  pz   0.52081
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aa0000      -0.00000073      0.99087379      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 0aa000       0.00000186      0.00000000      0.99087379      0.00000000     -0.00000000      0.00000000      0.00000000
 2 a0a000       0.99087379      0.00000073     -0.00000186      0.00000000     -0.00000000      0.00000000     -0.00000000
 2 0a00a0       0.00000000      0.00000000     -0.00000000      0.79081617      0.00001152     -0.00000016     -0.00003115
 2 a0000a       0.00000000     -0.00000000     -0.00000000     -0.26308677     -0.00000445      0.00000005      0.00017075
 2 a000a0      -0.00000001      0.00867138     -0.00000000      0.00000014      0.00000040      0.69753250     -0.00000000
 2 00a0a0      -0.00000002     -0.00000000     -0.00867138     -0.00001004      0.69753248     -0.00000040     -0.00000191
 2 a00a00       0.00867138      0.00000001     -0.00000002     -0.00000295      0.00000191      0.00000000      0.69753246
 2 0a0a00       0.00000002      0.00000000      0.00867138     -0.00001004      0.69753244     -0.00000040     -0.00000191
 2 00a00a      -0.00867138     -0.00000001      0.00000002     -0.00000295      0.00000191      0.00000000      0.69753243
 2 0a000a       0.00000001     -0.00867138      0.00000000      0.00000014      0.00000040      0.69753242     -0.00000000
 2 00aa00      -0.00000000      0.00000000      0.00000000     -0.52772929     -0.00000707      0.00000011     -0.00013960
 2 0000aa      -0.00000002      0.03021789      0.00000000      0.00000000      0.00000000      0.00000001      0.00000000
 2 000aa0       0.00000006      0.00000000      0.03021789      0.00000000     -0.00000000      0.00000000      0.00000000
 2 000a0a       0.03021789      0.00000002     -0.00000006     -0.00000000      0.00000000      0.00000000      0.00000001
 0 a2a000      -0.11251703     -0.00000008      0.00000021     -0.00000000      0.00000000     -0.00000000      0.00000000
 0 aa2000       0.00000008     -0.11251703     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 0 2aa000      -0.00000021     -0.00000000     -0.11251703     -0.00000000     -0.00000000      0.00000000     -0.00000000
 0 2a00a0      -0.00000000      0.00000000      0.00000000     -0.08517970     -0.00000124      0.00000002      0.00000310
 0 0a20a0      -0.00000000     -0.00000000      0.00000000     -0.08475065     -0.00000124      0.00000002      0.00000360
 0 a2000a      -0.00000000      0.00000000      0.00000000      0.02719715      0.00000046     -0.00000001     -0.00001843
 0 a0200a      -0.00000000      0.00000000      0.00000000      0.02933486      0.00000049     -0.00000001     -0.00001826
 0 0a200a       0.00000000     -0.00117263     -0.00000000     -0.00000001     -0.00000004     -0.07550822      0.00000000
 0 2a0a00       0.00000000      0.00000000      0.00117263      0.00000109     -0.07550822      0.00000004      0.00000021
 0 02a00a      -0.00117263     -0.00000000      0.00000000      0.00000032     -0.00000021     -0.00000000     -0.07550822
 0 a20a00       0.00117263      0.00000000     -0.00000000      0.00000032     -0.00000021     -0.00000000     -0.07550823
 0 20a0a0      -0.00000000     -0.00000000     -0.00117263      0.00000109     -0.07550823      0.00000004      0.00000021
 0 a020a0      -0.00000000      0.00117263      0.00000000     -0.00000001     -0.00000004     -0.07550823      0.00000000
 0 a200a0       0.00000002     -0.03077394      0.00000000     -0.00000001     -0.00000004     -0.07437735      0.00000000
 0 02a0a0       0.00000006      0.00000000      0.03077394      0.00000107     -0.07437735      0.00000004      0.00000020
 0 a02a00      -0.03077394     -0.00000002      0.00000006      0.00000031     -0.00000020     -0.00000000     -0.07437735
 0 0a2a00      -0.00000006     -0.00000000     -0.03077394      0.00000107     -0.07437734      0.00000004      0.00000020
 0 20a00a       0.03077394      0.00000002     -0.00000006      0.00000031     -0.00000020     -0.00000000     -0.07437734
 0 2a000a      -0.00000002      0.03077394      0.00000000     -0.00000001     -0.00000004     -0.07437734      0.00000000
 0 02aa00       0.00000000      0.00000000     -0.00000000      0.05584483      0.00000075     -0.00000001      0.00001516
 0 20aa00       0.00000000      0.00000000     -0.00000000      0.05755348      0.00000077     -0.00000001      0.00001484
 
 Energy:     -213.34785612   -213.34785612   -213.34785612   -213.14826043   -213.14826043   -213.14826043   -213.14826043

 State:              8               9              10              11              12
 2 aa0000       0.00000000     -0.00000000     -0.00000000     -0.01995923      0.00000000
 2 0aa000       0.00000000     -0.00000000     -0.01995923      0.00000000      0.00000007
 2 a0a000       0.00000000      0.00000000     -0.00000007      0.00000000     -0.01995923
 2 0a00a0      -0.15279145      0.56923342     -0.00000000      0.00000000      0.00000000
 2 a0000a       0.76126253      0.56923352     -0.00000000      0.00000000      0.00000000
 2 a000a0       0.00000000     -0.00000000      0.00000008      0.69160302      0.00000000
 2 00a0a0       0.00000061     -0.00000000     -0.69160304      0.00000008      0.00000238
 2 a00a00      -0.00015747     -0.00000000      0.00000238     -0.00000000      0.69160304
 2 0a0a00       0.00000061      0.00000000      0.69160308     -0.00000008     -0.00000238
 2 00a00a      -0.00015747      0.00000000     -0.00000238      0.00000000     -0.69160307
 2 0a000a       0.00000000      0.00000000     -0.00000008     -0.69160310     -0.00000000
 2 00aa00      -0.60847116      0.56923348     -0.00000000     -0.00000000      0.00000000
 2 0000aa      -0.00000000     -0.00000000      0.00000001      0.13255739     -0.00000000
 2 000aa0       0.00000000      0.00000000      0.13255738     -0.00000001     -0.00000046
 2 000a0a      -0.00000000     -0.00000000      0.00000046     -0.00000000      0.13255738
 0 a2a000      -0.00000000     -0.00000000      0.00000003     -0.00000000      0.00836128
 0 aa2000       0.00000000     -0.00000000      0.00000000      0.00836128      0.00000000
 0 2aa000       0.00000000      0.00000000      0.00836128     -0.00000000     -0.00000003
 0 2a00a0       0.01530554     -0.06243724      0.00000000     -0.00000000     -0.00000000
 0 0a20a0       0.01752624     -0.06243724      0.00000000     -0.00000000     -0.00000000
 0 a2000a      -0.08215932     -0.06243726      0.00000000     -0.00000000     -0.00000000
 0 a0200a      -0.08142055     -0.06243726      0.00000000     -0.00000000     -0.00000000
 0 0a200a      -0.00000000      0.00000000      0.00000001      0.07565922      0.00000000
 0 2a0a00      -0.00000007     -0.00000000     -0.07565922      0.00000001      0.00000026
 0 02a00a       0.00001705     -0.00000000      0.00000026     -0.00000000      0.07565922
 0 a20a00       0.00001705      0.00000000     -0.00000026      0.00000000     -0.07565921
 0 20a0a0      -0.00000007      0.00000000      0.07565921     -0.00000001     -0.00000026
 0 a020a0      -0.00000000      0.00000000     -0.00000001     -0.07565921     -0.00000000
 0 a200a0      -0.00000000      0.00000000     -0.00000001     -0.07172856      0.00000000
 0 02a0a0      -0.00000006      0.00000000      0.07172856     -0.00000001     -0.00000025
 0 a02a00       0.00001679      0.00000000     -0.00000025      0.00000000     -0.07172856
 0 0a2a00      -0.00000006     -0.00000000     -0.07172856      0.00000001      0.00000025
 0 20a00a       0.00001679     -0.00000000      0.00000025     -0.00000000      0.07172856
 0 2a000a      -0.00000000     -0.00000000      0.00000001      0.07172857     -0.00000000
 0 02aa00       0.06611501     -0.06243725      0.00000000      0.00000000     -0.00000000
 0 20aa00       0.06463309     -0.06243725      0.00000000      0.00000000     -0.00000000
 
 Energy:     -213.14826043   -213.13735474   -213.13234861   -213.13234861   -213.13234861
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 020000      -0.15538820      0.00002306     -0.00000000     -0.00005685      0.79110409      0.55838220     -0.00000000
 2 200000       0.76281034     -0.00008445      0.00000000      0.00001264     -0.26098192      0.55838220      0.00000000
 2 ba0000       0.00000000     -0.00000046     -0.69820727     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2 ab0000      -0.00000000      0.00000046      0.69820727      0.00000000      0.00000000      0.00000000     -0.00000000
 2 0ab000       0.00000600      0.00005713     -0.00000000      0.69820726      0.00005135      0.00000000     -0.00000000
 2 0ba000      -0.00000600     -0.00005713      0.00000000     -0.69820726     -0.00005135     -0.00000000      0.00000000
 2 a0b000       0.00007540      0.69820726     -0.00000046     -0.00005713     -0.00000555      0.00000000      0.00000000
 2 b0a000      -0.00007540     -0.69820726      0.00000046      0.00005713      0.00000555     -0.00000000     -0.00000000
 2 002000      -0.60742214      0.00006139     -0.00000000      0.00004421     -0.53012218      0.55838220     -0.00000000
 2 0a00b0      -0.00780638      0.00000116     -0.00000000     -0.00000286      0.03974341      0.04632738      0.00000000
 2 0b00a0       0.00780638     -0.00000116      0.00000000      0.00000286     -0.03974341     -0.04632738     -0.00000000
 2 a0000b       0.03832199     -0.00000424      0.00000000      0.00000064     -0.01311118      0.04632737     -0.00000000
 2 b0000a      -0.03832199      0.00000424     -0.00000000     -0.00000064      0.01311118     -0.04632737      0.00000000
 2 b000a0       0.00000000     -0.00000002     -0.03507647     -0.00000000     -0.00000000     -0.00000000      0.00000011
 2 a000b0      -0.00000000      0.00000002      0.03507647      0.00000000      0.00000000      0.00000000     -0.00000011
 2 00a0b0       0.00000030      0.00000287     -0.00000000      0.03507647      0.00000258     -0.00000000     -0.49338555
 2 00b0a0      -0.00000030     -0.00000287      0.00000000     -0.03507647     -0.00000258      0.00000000      0.49338555
 2 b00a00      -0.00000379     -0.03507647      0.00000002      0.00000287      0.00000028      0.00000000     -0.00000080
 2 a00b00       0.00000379      0.03507647     -0.00000002     -0.00000287     -0.00000028     -0.00000000      0.00000080
 2 00b00a      -0.00000379     -0.03507647      0.00000002      0.00000287      0.00000028      0.00000000      0.00000080
 2 00a00b       0.00000379      0.03507647     -0.00000002     -0.00000287     -0.00000028     -0.00000000     -0.00000080
 2 0a0b00       0.00000030      0.00000287     -0.00000000      0.03507647      0.00000258      0.00000000      0.49338554
 2 0b0a00      -0.00000030     -0.00000287      0.00000000     -0.03507647     -0.00000258     -0.00000000     -0.49338554
 2 0a000b      -0.00000000      0.00000002      0.03507647      0.00000000      0.00000000      0.00000000      0.00000011
 2 0b000a       0.00000000     -0.00000002     -0.03507647     -0.00000000     -0.00000000     -0.00000000     -0.00000011
 2 00ab00      -0.03051562      0.00000308     -0.00000000      0.00000222     -0.02663223      0.04632738     -0.00000000
 2 00ba00       0.03051562     -0.00000308      0.00000000     -0.00000222      0.02663223     -0.04632738      0.00000000
 0 022000       0.08638730     -0.00000956      0.00000000      0.00000143     -0.02955587     -0.12202898      0.00000000
 0 220000      -0.06878979      0.00000695     -0.00000000      0.00000501     -0.06003566     -0.12202898     -0.00000000
 0 202000      -0.01759752      0.00000261     -0.00000000     -0.00000644      0.08959153     -0.12202898      0.00000000
 2 000020       0.00771165     -0.00000114      0.00000000      0.00000282     -0.03926113     -0.03918481      0.00000000
 2 000002      -0.03785696      0.00000419     -0.00000000     -0.00000063      0.01295208     -0.03918481      0.00000000
 2 0000ab       0.00000000     -0.00000002     -0.03465082     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 0000ba      -0.00000000      0.00000002      0.03465082      0.00000000      0.00000000      0.00000000      0.00000000
 2 000ab0      -0.00000030     -0.00000284      0.00000000     -0.03465082     -0.00000255      0.00000000     -0.00000000
 2 000ba0       0.00000030      0.00000284     -0.00000000      0.03465082      0.00000255     -0.00000000      0.00000000
 2 000a0b      -0.00000374     -0.03465082      0.00000002      0.00000284      0.00000028      0.00000000      0.00000000
 2 000b0a       0.00000374      0.03465082     -0.00000002     -0.00000284     -0.00000028     -0.00000000     -0.00000000
 2 000200       0.03014531     -0.00000305      0.00000000     -0.00000219      0.02630905     -0.03918481      0.00000000
 0 ab2000       0.00000000     -0.00000005     -0.07907109     -0.00000000     -0.00000000      0.00000000      0.00000000
 0 ba2000      -0.00000000      0.00000005      0.07907109      0.00000000      0.00000000     -0.00000000     -0.00000000
 0 b2a000       0.00000854      0.07907109     -0.00000005     -0.00000647     -0.00000063      0.00000000     -0.00000000
 0 a2b000      -0.00000854     -0.07907109      0.00000005      0.00000647      0.00000063     -0.00000000      0.00000000
 0 2ab000      -0.00000068     -0.00000647      0.00000000     -0.07907109     -0.00000582     -0.00000000      0.00000000
 0 2ba000       0.00000068      0.00000647     -0.00000000      0.07907109      0.00000582      0.00000000     -0.00000000
 0 2b00a0      -0.02543532      0.00000284     -0.00000000     -0.00000060      0.01117114     -0.01344936     -0.00000000
 0 2a00b0       0.02543532     -0.00000284      0.00000000      0.00000060     -0.01117114      0.01344936      0.00000000
 0 0b20a0       0.01932017     -0.00000193      0.00000000     -0.00000163      0.01996199     -0.01344936      0.00000000
 0 0a20b0      -0.01932017      0.00000193     -0.00000000      0.00000163     -0.01996199      0.01344936     -0.00000000
 0 b2000a       0.00762750     -0.00000104      0.00000000      0.00000190     -0.02671275     -0.01344936     -0.00000000
 0 a2000b      -0.00762750      0.00000104     -0.00000000     -0.00000190      0.02671275      0.01344936      0.00000000
 0 a0200b      -0.02239215      0.00000229     -0.00000000      0.00000140     -0.01644206      0.01344936      0.00000000
 0 b0200a       0.02239215     -0.00000229      0.00000000     -0.00000140      0.01644206     -0.01344936     -0.00000000
 0 b020a0      -0.00000000      0.00000000      0.00233596      0.00000000      0.00000000      0.00000000     -0.00000001
 0 a020b0       0.00000000     -0.00000000     -0.00233596     -0.00000000     -0.00000000     -0.00000000      0.00000001
 0 20a0b0      -0.00000002     -0.00000019      0.00000000     -0.00233596     -0.00000017      0.00000000      0.05348971
 0 20b0a0       0.00000002      0.00000019     -0.00000000      0.00233596      0.00000017     -0.00000000     -0.05348971
 0 b20a00       0.00000025      0.00233596     -0.00000000     -0.00000019     -0.00000002     -0.00000000      0.00000009
 0 a20b00      -0.00000025     -0.00233596      0.00000000      0.00000019      0.00000002      0.00000000     -0.00000009
 0 02a00b      -0.00000025     -0.00233596      0.00000000      0.00000019      0.00000002      0.00000000      0.00000009
 0 02b00a       0.00000025      0.00233596     -0.00000000     -0.00000019     -0.00000002     -0.00000000     -0.00000009
 0 2b0a00       0.00000002      0.00000019     -0.00000000      0.00233596      0.00000017      0.00000000      0.05348970
 0 2a0b00      -0.00000002     -0.00000019      0.00000000     -0.00233596     -0.00000017     -0.00000000     -0.05348970
 0 0b200a      -0.00000000      0.00000000      0.00233596      0.00000000      0.00000000      0.00000000      0.00000001
 0 0a200b       0.00000000     -0.00000000     -0.00233596     -0.00000000     -0.00000000     -0.00000000     -0.00000001
 0 b200a0      -0.00000000      0.00000002      0.02514130      0.00000000      0.00000000      0.00000000     -0.00000001
 0 a200b0       0.00000000     -0.00000002     -0.02514130     -0.00000000     -0.00000000     -0.00000000      0.00000001
 0 02b0a0       0.00000022      0.00000206     -0.00000000      0.02514130      0.00000185     -0.00000000     -0.05116066
 0 02a0b0      -0.00000022     -0.00000206      0.00000000     -0.02514130     -0.00000185      0.00000000      0.05116066
 0 b02a00       0.00000272      0.02514130     -0.00000002     -0.00000206     -0.00000020     -0.00000000      0.00000008
 0 a02b00      -0.00000272     -0.02514130      0.00000002      0.00000206      0.00000020      0.00000000     -0.00000008
 0 20b00a       0.00000272      0.02514130     -0.00000002     -0.00000206     -0.00000020     -0.00000000     -0.00000008
 0 20a00b      -0.00000272     -0.02514130      0.00000002      0.00000206      0.00000020      0.00000000      0.00000008
 0 0b2a00       0.00000022      0.00000206     -0.00000000      0.02514130      0.00000185      0.00000000      0.05116066
 0 0a2b00      -0.00000022     -0.00000206      0.00000000     -0.02514130     -0.00000185     -0.00000000     -0.05116066
 0 2a000b       0.00000000     -0.00000002     -0.02514130     -0.00000000     -0.00000000      0.00000000     -0.00000001
 0 2b000a      -0.00000000      0.00000002      0.02514130      0.00000000      0.00000000     -0.00000000      0.00000001
 
 Energy:     -213.31402193   -213.31402193   -213.31402193   -213.31402193   -213.31402193   -213.28458035   -213.15554576

 State:              8               9              10              11              12              13              14
 2 020000      -0.00000000      0.00000000     -0.06451933      0.00000020     -0.00000000     -0.00000018      0.01246814
 2 200000      -0.00000000      0.00000000      0.02146194      0.00000007      0.00000000      0.00000078     -0.06210944
 2 ba0000       0.00000000      0.00000000     -0.00000000      0.00000001      0.05690913      0.00000000      0.00000000
 2 ab0000      -0.00000000     -0.00000000      0.00000000     -0.00000001     -0.05690913     -0.00000000     -0.00000000
 2 0ab000      -0.00000000      0.00000000     -0.00000020     -0.05690913      0.00000001      0.00000014     -0.00000013
 2 0ba000       0.00000000     -0.00000000      0.00000020      0.05690913     -0.00000001     -0.00000014      0.00000013
 2 a0b000       0.00000000     -0.00000000      0.00000002     -0.00000014      0.00000000     -0.05690913     -0.00000071
 2 b0a000      -0.00000000      0.00000000     -0.00000002      0.00000014     -0.00000000      0.05690913      0.00000071
 2 002000      -0.00000000     -0.00000000      0.04305739     -0.00000027      0.00000000     -0.00000060      0.04964131
 2 0a00b0       0.00000000     -0.00000000      0.55243883     -0.00000173      0.00000003      0.00000154     -0.10675689
 2 0b00a0      -0.00000000      0.00000000     -0.55243883      0.00000173     -0.00000003     -0.00000154      0.10675689
 2 a0000b       0.00000000     -0.00000000     -0.18376523     -0.00000057     -0.00000001     -0.00000667      0.53180448
 2 b0000a      -0.00000000      0.00000000      0.18376523      0.00000057      0.00000001      0.00000667     -0.53180448
 2 b000a0      -0.49338556      0.00000000      0.00000002     -0.00000005     -0.48727738     -0.00000000     -0.00000000
 2 a000b0       0.49338556     -0.00000000     -0.00000002      0.00000005      0.48727738      0.00000000      0.00000000
 2 00a0b0      -0.00000011      0.00000080      0.00000174      0.48727739     -0.00000005     -0.00000120      0.00000112
 2 00b0a0       0.00000011     -0.00000080     -0.00000174     -0.48727739      0.00000005      0.00000120     -0.00000112
 2 b00a00      -0.00000000     -0.49338555      0.00000019     -0.00000120      0.00000000     -0.48727739     -0.00000604
 2 a00b00       0.00000000      0.49338555     -0.00000019      0.00000120     -0.00000000      0.48727739      0.00000604
 2 00b00a       0.00000000      0.49338554      0.00000019     -0.00000120      0.00000000     -0.48727740     -0.00000604
 2 00a00b      -0.00000000     -0.49338554     -0.00000019      0.00000120     -0.00000000      0.48727740      0.00000604
 2 0a0b00       0.00000011     -0.00000080      0.00000174      0.48727740     -0.00000005     -0.00000120      0.00000112
 2 0b0a00      -0.00000011      0.00000080     -0.00000174     -0.48727740      0.00000005      0.00000120     -0.00000112
 2 0a000b      -0.49338554      0.00000000     -0.00000002      0.00000005      0.48727740      0.00000000      0.00000000
 2 0b000a       0.49338554     -0.00000000      0.00000002     -0.00000005     -0.48727740     -0.00000000     -0.00000000
 2 00ab00       0.00000000      0.00000000     -0.36867356      0.00000230     -0.00000002      0.00000513     -0.42504762
 2 00ba00      -0.00000000     -0.00000000      0.36867356     -0.00000230      0.00000002     -0.00000513      0.42504762
 0 022000       0.00000000      0.00000000      0.00402349      0.00000001      0.00000000      0.00000015     -0.01164371
 0 220000       0.00000000     -0.00000000      0.00807200     -0.00000005      0.00000000     -0.00000011      0.00930629
 0 202000       0.00000000      0.00000000     -0.01209549      0.00000004     -0.00000000     -0.00000003      0.00233741
 2 000020      -0.00000000      0.00000000     -0.10863269      0.00000034     -0.00000000     -0.00000030      0.02099289
 2 000002      -0.00000000      0.00000000      0.03613597      0.00000011      0.00000000      0.00000131     -0.10457511
 2 0000ab      -0.00000000     -0.00000000      0.00000000     -0.00000001     -0.09581921     -0.00000000     -0.00000000
 2 0000ba       0.00000000      0.00000000     -0.00000000      0.00000001      0.09581921      0.00000000      0.00000000
 2 000ab0       0.00000000     -0.00000000     -0.00000034     -0.09581921      0.00000001      0.00000024     -0.00000022
 2 000ba0      -0.00000000      0.00000000      0.00000034      0.09581921     -0.00000001     -0.00000024      0.00000022
 2 000a0b      -0.00000000     -0.00000000      0.00000004     -0.00000024      0.00000000     -0.09581921     -0.00000119
 2 000b0a       0.00000000      0.00000000     -0.00000004      0.00000024     -0.00000000      0.09581921      0.00000119
 2 000200      -0.00000000      0.00000000      0.07249671     -0.00000045      0.00000000     -0.00000101      0.08358222
 0 ab2000       0.00000000      0.00000000     -0.00000000      0.00000000      0.01066880      0.00000000      0.00000000
 0 ba2000      -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.01066880     -0.00000000     -0.00000000
 0 b2a000       0.00000000     -0.00000000      0.00000000     -0.00000003      0.00000000     -0.01066880     -0.00000013
 0 a2b000      -0.00000000      0.00000000     -0.00000000      0.00000003     -0.00000000      0.01066880      0.00000013
 0 2ab000       0.00000000     -0.00000000      0.00000004      0.01066880     -0.00000000     -0.00000003      0.00000002
 0 2ba000      -0.00000000      0.00000000     -0.00000004     -0.01066880      0.00000000      0.00000003     -0.00000002
 0 2b00a0       0.00000000      0.00000000      0.05946205     -0.00000019      0.00000000      0.00000013     -0.00888558
 0 2a00b0      -0.00000000     -0.00000000     -0.05946205      0.00000019     -0.00000000     -0.00000013      0.00888558
 0 0b20a0       0.00000000      0.00000000      0.05849139     -0.00000018      0.00000000      0.00000020     -0.01390851
 0 0a20b0      -0.00000000     -0.00000000     -0.05849139      0.00000018     -0.00000000     -0.00000020      0.01390851
 0 b2000a       0.00000000     -0.00000000     -0.01720057     -0.00000007     -0.00000000     -0.00000072      0.05760928
 0 a2000b      -0.00000000      0.00000000      0.01720057      0.00000007      0.00000000      0.00000072     -0.05760928
 0 a0200b      -0.00000000     -0.00000000      0.02203588      0.00000005      0.00000000      0.00000070     -0.05593844
 0 b0200a       0.00000000      0.00000000     -0.02203588     -0.00000005     -0.00000000     -0.00000070      0.05593844
 0 b020a0       0.05348971     -0.00000000     -0.00000000      0.00000001      0.05329925      0.00000000      0.00000000
 0 a020b0      -0.05348971      0.00000000      0.00000000     -0.00000001     -0.05329925     -0.00000000     -0.00000000
 0 20a0b0       0.00000001     -0.00000009     -0.00000019     -0.05329925      0.00000001      0.00000013     -0.00000012
 0 20b0a0      -0.00000001      0.00000009      0.00000019      0.05329925     -0.00000001     -0.00000013      0.00000012
 0 b20a00       0.00000000      0.05348971     -0.00000002      0.00000013     -0.00000000      0.05329925      0.00000066
 0 a20b00      -0.00000000     -0.05348971      0.00000002     -0.00000013      0.00000000     -0.05329925     -0.00000066
 0 02a00b       0.00000000      0.05348970      0.00000002     -0.00000013      0.00000000     -0.05329925     -0.00000066
 0 02b00a      -0.00000000     -0.05348970     -0.00000002      0.00000013     -0.00000000      0.05329925      0.00000066
 0 2b0a00       0.00000001     -0.00000009      0.00000019      0.05329925     -0.00000001     -0.00000013      0.00000012
 0 2a0b00      -0.00000001      0.00000009     -0.00000019     -0.05329925      0.00000001      0.00000013     -0.00000012
 0 0b200a      -0.05348970      0.00000000     -0.00000000      0.00000001      0.05329925      0.00000000      0.00000000
 0 0a200b       0.05348970     -0.00000000      0.00000000     -0.00000001     -0.05329925     -0.00000000     -0.00000000
 0 b200a0       0.05116066     -0.00000000     -0.00000000      0.00000001      0.05074132      0.00000000      0.00000000
 0 a200b0      -0.05116066      0.00000000      0.00000000     -0.00000001     -0.05074132     -0.00000000     -0.00000000
 0 02b0a0      -0.00000001      0.00000008      0.00000018      0.05074132     -0.00000001     -0.00000012      0.00000012
 0 02a0b0       0.00000001     -0.00000008     -0.00000018     -0.05074132      0.00000001      0.00000012     -0.00000012
 0 b02a00       0.00000000      0.05116066     -0.00000002      0.00000012     -0.00000000      0.05074132      0.00000063
 0 a02b00      -0.00000000     -0.05116066      0.00000002     -0.00000012      0.00000000     -0.05074132     -0.00000063
 0 20b00a      -0.00000000     -0.05116066     -0.00000002      0.00000012     -0.00000000      0.05074132      0.00000063
 0 20a00b       0.00000000      0.05116066      0.00000002     -0.00000012      0.00000000     -0.05074132     -0.00000063
 0 0b2a00       0.00000001     -0.00000008      0.00000018      0.05074132     -0.00000001     -0.00000012      0.00000012
 0 0a2b00      -0.00000001      0.00000008     -0.00000018     -0.05074132      0.00000001      0.00000012     -0.00000012
 0 2a000b       0.05116066     -0.00000000      0.00000000     -0.00000001     -0.05074132     -0.00000000     -0.00000000
 0 2b000a      -0.05116066      0.00000000     -0.00000000      0.00000001      0.05074132      0.00000000      0.00000000
 
 Energy:     -213.15554576   -213.15554576   -213.11257158   -213.11257158   -213.11257158   -213.11257158   -213.11257158

 State:             15
 2 020000      -0.06409917
 2 200000      -0.06409918
 2 ba0000      -0.00000000
 2 ab0000       0.00000000
 2 0ab000      -0.00000000
 2 0ba000       0.00000000
 2 a0b000       0.00000000
 2 b0a000      -0.00000000
 2 002000      -0.06409918
 2 0a00b0       0.39414569
 2 0b00a0      -0.39414569
 2 a0000b       0.39414573
 2 b0000a      -0.39414573
 2 b000a0       0.00000000
 2 a000b0      -0.00000000
 2 00a0b0       0.00000000
 2 00b0a0      -0.00000000
 2 b00a00      -0.00000000
 2 a00b00       0.00000000
 2 00b00a      -0.00000000
 2 00a00b       0.00000000
 2 0a0b00       0.00000000
 2 0b0a00      -0.00000000
 2 0a000b       0.00000000
 2 0b000a      -0.00000000
 2 00ab00       0.39414572
 2 00ba00      -0.39414572
 0 022000       0.01647044
 0 220000       0.01647044
 0 202000       0.01647044
 2 000020      -0.08301643
 2 000002      -0.08301644
 2 0000ab      -0.00000000
 2 0000ba       0.00000000
 2 000ab0      -0.00000000
 2 000ba0       0.00000000
 2 000a0b      -0.00000000
 2 000b0a       0.00000000
 2 000200      -0.08301643
 0 ab2000       0.00000000
 0 ba2000      -0.00000000
 0 b2a000       0.00000000
 0 a2b000      -0.00000000
 0 2ab000      -0.00000000
 0 2ba000       0.00000000
 0 2b00a0       0.04487592
 0 2a00b0      -0.04487592
 0 0b20a0       0.04487592
 0 0a20b0      -0.04487592
 0 b2000a       0.04487593
 0 a2000b      -0.04487593
 0 a0200b      -0.04487593
 0 b0200a       0.04487593
 0 b020a0      -0.00000000
 0 a020b0       0.00000000
 0 20a0b0      -0.00000000
 0 20b0a0       0.00000000
 0 b20a00       0.00000000
 0 a20b00      -0.00000000
 0 02a00b      -0.00000000
 0 02b00a       0.00000000
 0 2b0a00       0.00000000
 0 2a0b00      -0.00000000
 0 0b200a      -0.00000000
 0 0a200b       0.00000000
 0 b200a0      -0.00000000
 0 a200b0       0.00000000
 0 02b0a0      -0.00000000
 0 02a0b0       0.00000000
 0 b02a00       0.00000000
 0 a02b00      -0.00000000
 0 20b00a       0.00000000
 0 20a00b      -0.00000000
 0 0b2a00       0.00000000
 0 0a2b00      -0.00000000
 0 2a000b       0.00000000
 0 2b000a      -0.00000000
 
 Energy:     -213.08830623
 


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
 CPU TIMES  *         6.12      3.81      0.34      1.74
 REAL TIME  *         8.65 SEC
 DISK USED  *        53.90 MB (local),      864.39 MB (total)
 SF USED    *        60.53 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -213.3478561   2.0
    -213.3478561   2.0
    -213.3478561   2.0
    -213.1482604   6.0
    -213.1482604   6.0
    -213.1482604   6.0
    -213.1482604   6.0
    -213.1482604   6.0
    -213.1373547  -0.0
    -213.1323486   2.0
    -213.1323486   2.0
    -213.1323486   2.0
    -213.3140219   6.0
    -213.3140219   6.0
    -213.3140219   6.0
    -213.3140219   6.0
    -213.3140219   6.0
    -213.2845804  -0.0
    -213.1555458   2.0
    -213.1555458   2.0
    -213.1555458   2.0
    -213.1125716   6.0
    -213.1125716   6.0
    -213.1125716   6.0
    -213.1125716   6.0
    -213.1125716   6.0
    -213.0883062  -0.0
                                                  


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
     1      -213.34785612
     2      -213.34785612
     3      -213.34785612
     4      -213.14826043
     5      -213.14826043
     6      -213.14826043
     7      -213.14826043
     8      -213.14826043
     9      -213.13735474
    10      -213.13234861
    11      -213.13234861
    12      -213.13234861

 Number of blocks in overlap matrix:  1143   Smallest eigenvalue:  0.52D-06
 Number of N-2 electron functions:    2548
 Number of N-1 electron functions:   88545

 Number of internal configurations:                38406
 Number of singly external configurations:       6772860
 Number of doubly external configurations:      14916787
 Total number of contracted configurations:     21728053
 Total number of uncontracted configurations:  278531653

 Diagonal Coupling coefficients finished.               Storage:  25472232 words, CPU-Time:     80.70 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2176606 words, CPU-time:      2.13 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.34785612     0.00000000    -0.97626956  0.47D-01  0.11D+00    97.57
    1     2     2     1.00000000     0.00000000  -213.34785612    -0.00000000    -0.97614218  0.48D-01  0.11D+00    97.57
    1     3     3     1.00000000     0.00000000  -213.34785612     0.00000000    -0.97613266  0.47D-01  0.11D+00    97.57
    1     4     4     1.00000000     0.00000000  -213.14826043    -0.00000000    -0.96177783  0.65D-01  0.10D+00    97.57
    1     5     5     1.00000000     0.00000000  -213.14826043     0.00000000    -0.96152824  0.65D-01  0.10D+00    97.57
    1     6     6     1.00000000     0.00000000  -213.14826043     0.00000000    -0.96162101  0.65D-01  0.10D+00    97.57
    1     7     7     1.00000000     0.00000000  -213.14826043    -0.00000000    -0.96155867  0.65D-01  0.10D+00    97.57
    1     8     8     1.00000000     0.00000000  -213.14826043    -0.00000000    -0.96169952  0.65D-01  0.10D+00    97.57
    1     9     9     1.00000000     0.00000000  -213.13735474    -0.00000000    -0.96536519  0.74D-01  0.10D+00    97.57
    1    10    10     1.00000000     0.00000000  -213.13234861     0.00000000    -0.97818209  0.86D-01  0.11D+00    97.57
    1    11    11     1.00000000     0.00000000  -213.13234861     0.00000000    -0.97835681  0.86D-01  0.11D+00    97.57
    1    12    12     1.00000000     0.00000000  -213.13234861    -0.00000000    -0.97820732  0.86D-01  0.11D+00    97.57
    2     1     1     1.10040718    -0.78306680  -214.13092292    -0.78306680    -0.02369932  0.39D-02  0.16D-02  1230.18
    2     2     2     1.10052043    -0.78298021  -214.13083632    -0.78298021    -0.02379149  0.40D-02  0.16D-02  1230.18
    2     3     3     1.10053628    -0.78286037  -214.13071649    -0.78286037    -0.02393393  0.40D-02  0.16D-02  1230.18
    2     4     4     1.10859276    -0.77594375  -213.92420418    -0.77594375    -0.02420904  0.62D-02  0.14D-02  1230.18
    2     5     5     1.10862136    -0.77590770  -213.92416813    -0.77590770    -0.02425016  0.62D-02  0.14D-02  1230.18
    2     6     6     1.10860549    -0.77587812  -213.92413854    -0.77587812    -0.02428025  0.62D-02  0.14D-02  1230.18
    2     7     7     1.10864107    -0.77584715  -213.92410758    -0.77584715    -0.02431415  0.62D-02  0.14D-02  1230.18
    2     8     8     1.10868357    -0.77581282  -213.92407325    -0.77581282    -0.02435165  0.63D-02  0.14D-02  1230.18
    2     9     9     1.11356878    -0.77459411  -213.91194885    -0.77459411    -0.02653107  0.80D-02  0.14D-02  1230.18
    2    10    10     1.11941140    -0.77568542  -213.90803403    -0.77568542    -0.02929604  0.95D-02  0.15D-02  1230.18
    2    11    11     1.11943738    -0.77565951  -213.90800811    -0.77565951    -0.02932648  0.95D-02  0.15D-02  1230.18
    2    12    12     1.11950225    -0.77563552  -213.90798412    -0.77563552    -0.02934948  0.95D-02  0.15D-02  1230.18
    3     1     1     1.08775284    -0.80555008  -214.15340620    -0.02248328    -0.00047177  0.65D-04  0.48D-04  2354.11
    3     2     2     1.08772511    -0.80554687  -214.15340299    -0.02256666    -0.00047504  0.65D-04  0.48D-04  2354.11
    3     3     3     1.08775552    -0.80554632  -214.15340244    -0.02268596    -0.00047543  0.65D-04  0.49D-04  2354.11
    3     4     4     1.09025745    -0.79955921  -213.94781964    -0.02361546    -0.00054288  0.12D-03  0.57D-04  2354.11
    3     5     5     1.09025609    -0.79955746  -213.94781788    -0.02364976    -0.00054458  0.12D-03  0.57D-04  2354.11
    3     6     6     1.09025036    -0.79955679  -213.94781722    -0.02367868    -0.00054437  0.12D-03  0.56D-04  2354.11
    3     7     7     1.09025043    -0.79955568  -213.94781610    -0.02370852    -0.00054558  0.12D-03  0.56D-04  2354.11
    3     8     8     1.09025039    -0.79955404  -213.94781447    -0.02374122    -0.00054721  0.12D-03  0.57D-04  2354.11
    3     9     9     1.09127393    -0.80069738  -213.93805212    -0.02610326    -0.00062908  0.15D-03  0.69D-04  2354.11
    3    10    10     1.09313521    -0.80434167  -213.93669028    -0.02865625    -0.00076948  0.19D-03  0.78D-04  2354.11
    3    11    11     1.09313597    -0.80434045  -213.93668906    -0.02868094    -0.00077084  0.19D-03  0.78D-04  2354.11
    3    12    12     1.09314364    -0.80433768  -213.93668629    -0.02870216    -0.00077374  0.19D-03  0.79D-04  2354.11
    4     1     1     1.08744512    -0.80603423  -214.15389035    -0.00048415    -0.00002088  0.31D-05  0.26D-05  3486.99
    4     2     2     1.08744435    -0.80603419  -214.15389030    -0.00048732    -0.00002094  0.31D-05  0.26D-05  3486.99
    4     3     3     1.08744352    -0.80603403  -214.15389015    -0.00048770    -0.00002109  0.31D-05  0.26D-05  3486.99
    4     4     4     1.08938845    -0.80014794  -213.94840837    -0.00058872    -0.00002722  0.51D-05  0.35D-05  3486.99
    4     5     5     1.08938820    -0.80014783  -213.94840826    -0.00059037    -0.00002730  0.51D-05  0.35D-05  3486.99
    4     6     6     1.08939233    -0.80014773  -213.94840816    -0.00059094    -0.00002710  0.51D-05  0.34D-05  3486.99
    4     7     7     1.08939251    -0.80014768  -213.94840811    -0.00059201    -0.00002714  0.51D-05  0.34D-05  3486.99
    4     8     8     1.08939159    -0.80014755  -213.94840798    -0.00059351    -0.00002725  0.51D-05  0.34D-05  3486.99
    4     9     9     1.09028534    -0.80138802  -213.93874276    -0.00069064    -0.00003127  0.52D-05  0.43D-05  3486.99
    4    10    10     1.09161016    -0.80516541  -213.93751401    -0.00082374    -0.00003791  0.67D-05  0.48D-05  3486.99
    4    11    11     1.09161085    -0.80516528  -213.93751389    -0.00082483    -0.00003801  0.67D-05  0.48D-05  3486.99
    4    12    12     1.09160790    -0.80516513  -213.93751373    -0.00082744    -0.00003813  0.67D-05  0.48D-05  3486.99
    5     1     1     1.08754709    -0.80605733  -214.15391344    -0.00002310    -0.00000095  0.64D-07  0.16D-06  4613.24
    5     2     2     1.08754672    -0.80605732  -214.15391344    -0.00002314    -0.00000095  0.64D-07  0.16D-06  4613.24
    5     3     3     1.08754758    -0.80605732  -214.15391343    -0.00002329    -0.00000095  0.63D-07  0.16D-06  4613.24
    5     4     4     1.08933283    -0.80017858  -213.94843901    -0.00003064    -0.00000133  0.86D-07  0.27D-06  4613.24
    5     5     5     1.08933270    -0.80017857  -213.94843900    -0.00003074    -0.00000133  0.86D-07  0.27D-06  4613.24
    5     6     6     1.08933231    -0.80017827  -213.94843870    -0.00003054    -0.00000132  0.84D-07  0.26D-06  4613.24
    5     7     7     1.08933246    -0.80017827  -213.94843870    -0.00003059    -0.00000132  0.85D-07  0.26D-06  4613.24
    5     8     8     1.08933236    -0.80017826  -213.94843869    -0.00003071    -0.00000132  0.85D-07  0.26D-06  4613.24
    5     9     9     1.09024716    -0.80142365  -213.93877839    -0.00003563    -0.00000151  0.89D-07  0.31D-06  4613.24
    5    10    10     1.09148470    -0.80520642  -213.93755503    -0.00004102    -0.00000193  0.21D-06  0.33D-06  4613.24
    5    11    11     1.09148492    -0.80520641  -213.93755502    -0.00004113    -0.00000194  0.21D-06  0.33D-06  4613.24
    5    12    12     1.09148417    -0.80520641  -213.93755502    -0.00004128    -0.00000194  0.21D-06  0.33D-06  4613.24
    6     1     1     1.08755289    -0.80605843  -214.15391455    -0.00000110    -0.00000007  0.70D-08  0.11D-07  5738.59
    6     2     2     1.08755297    -0.80605843  -214.15391455    -0.00000111    -0.00000007  0.71D-08  0.11D-07  5738.59
    6     3     3     1.08755282    -0.80605843  -214.15391455    -0.00000111    -0.00000007  0.70D-08  0.11D-07  5738.59
    6     4     4     1.08931283    -0.80018018  -213.94844061    -0.00000160    -0.00000012  0.97D-08  0.27D-07  5738.59
    6     5     5     1.08931286    -0.80018018  -213.94844061    -0.00000161    -0.00000012  0.97D-08  0.27D-07  5738.59
    6     6     6     1.08931278    -0.80017986  -213.94844029    -0.00000159    -0.00000012  0.96D-08  0.27D-07  5738.59
    6     7     7     1.08931282    -0.80017986  -213.94844029    -0.00000159    -0.00000012  0.97D-08  0.27D-07  5738.59
    6     8     8     1.08931272    -0.80017986  -213.94844029    -0.00000160    -0.00000012  0.97D-08  0.27D-07  5738.59
    6     9     9     1.09022733    -0.80142547  -213.93878022    -0.00000183    -0.00000012  0.95D-08  0.27D-07  5738.59
    6    10    10     1.09145193    -0.80520863  -213.93755724    -0.00000221    -0.00000017  0.16D-07  0.35D-07  5738.59
    6    11    11     1.09145193    -0.80520863  -213.93755723    -0.00000221    -0.00000017  0.16D-07  0.35D-07  5738.59
    6    12    12     1.09145191    -0.80520863  -213.93755723    -0.00000222    -0.00000018  0.16D-07  0.35D-07  5738.59
    7     1     1     1.08756147    -0.80605851  -214.15391463    -0.00000008    -0.00000001  0.41D-09  0.85D-09  6865.37
    7     2     2     1.08756147    -0.80605851  -214.15391463    -0.00000008    -0.00000001  0.41D-09  0.85D-09  6865.37
    7     3     3     1.08756150    -0.80605851  -214.15391463    -0.00000008    -0.00000001  0.42D-09  0.84D-09  6865.37
    7     4     4     1.08932439    -0.80018033  -213.94844076    -0.00000016    -0.00000001  0.14D-08  0.26D-08  6865.37
    7     5     5     1.08932437    -0.80018033  -213.94844076    -0.00000015    -0.00000001  0.14D-08  0.26D-08  6865.37
    7     6     6     1.08932411    -0.80018001  -213.94844044    -0.00000015    -0.00000001  0.14D-08  0.26D-08  6865.37
    7     7     7     1.08932412    -0.80018001  -213.94844044    -0.00000015    -0.00000001  0.14D-08  0.26D-08  6865.37
    7     8     8     1.08932411    -0.80018001  -213.94844044    -0.00000015    -0.00000001  0.14D-08  0.26D-08  6865.37
    7     9     9     1.09024270    -0.80142563  -213.93878037    -0.00000015    -0.00000001  0.12D-08  0.24D-08  6865.37
    7    10    10     1.09146063    -0.80520884  -213.93755745    -0.00000021    -0.00000002  0.16D-08  0.37D-08  6865.37
    7    11    11     1.09146065    -0.80520884  -213.93755745    -0.00000021    -0.00000002  0.16D-08  0.37D-08  6865.37
    7    12    12     1.09146063    -0.80520884  -213.93755745    -0.00000021    -0.00000002  0.16D-08  0.37D-08  6865.37


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.4%  33.2%
 P   0.2%  32.5%  23.4%

 Initialization:   1.2%
 Other:            8.6%

 Total CPU:     6865.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0000          -0.0992894   0.1078040   0.9398868   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                           -0.0000000   0.0000002   0.0255963   0.0000036
 22222222220/00/0           0.0000000  -0.0000000  -0.0000000   0.7678819  -0.0917470   0.0000086  -0.0000014   0.0000018
                            0.5463151  -0.0000000   0.0000000  -0.0000000
 2222222222/0000/           0.0000000  -0.0000000   0.0000000  -0.3044857   0.7108787  -0.0000149   0.0000108  -0.0000107
                            0.5463152  -0.0000000  -0.0000000  -0.0000000
 22222222220//000           0.7019251   0.6420033   0.0005141   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0000000  -0.0255963   0.0000002   0.0000003
 2222222222/0/000          -0.6342792   0.6935974  -0.1465600   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                            0.0000000   0.0000003  -0.0000036   0.0255963
 222222222200/0/0           0.0161914   0.0148092   0.0000119  -0.0000061   0.0000114   0.6697352  -0.0000000  -0.0000000
                            0.0000000   0.6620961  -0.0000042  -0.0000078
 2222222222/000/0           0.0022903  -0.0024867  -0.0216805  -0.0000000  -0.0000102   0.0000000   0.6697352   0.0000028
                            0.0000000   0.0000042   0.6620960   0.0000925
 222222222200/00/          -0.0146310   0.0159993  -0.0033807  -0.0000003   0.0000099   0.0000000  -0.0000028   0.6697352
                           -0.0000000  -0.0000078   0.0000925  -0.6620961
 2222222222/00/00           0.0146310  -0.0159993   0.0033807  -0.0000003   0.0000100   0.0000000  -0.0000028   0.6697352
                            0.0000000   0.0000078  -0.0000925   0.6620961
 22222222220/000/          -0.0022903   0.0024867   0.0216805  -0.0000000  -0.0000102   0.0000000   0.6697351   0.0000028
                            0.0000000  -0.0000042  -0.6620961  -0.0000925
 22222222220/0/00          -0.0161914  -0.0148092  -0.0000119  -0.0000061   0.0000114   0.6697351  -0.0000000  -0.0000000
                           -0.0000000  -0.6620961   0.0000042   0.0000078
 222222222200//00          -0.0000000   0.0000000   0.0000000  -0.4633961  -0.6191318   0.0000063  -0.0000094   0.0000090
                            0.5463151  -0.0000000  -0.0000000  -0.0000000
 2222222222000//0           0.0167289   0.0153008   0.0000123   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                           -0.0000000  -0.1374129   0.0000009   0.0000016
 2222222222000/0/          -0.0151167   0.0165305  -0.0034930  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                            0.0000000   0.0000016  -0.0000192   0.1374129
 22222222220000//          -0.0023664   0.0025693   0.0224002  -0.0000000   0.0000000   0.0000000  -0.0000001  -0.0000000
                            0.0000000   0.0000009   0.1374129   0.0000192
 2222220222//2000           0.0102509  -0.0111299  -0.0970360   0.0000000  -0.0000000   0.0000000   0.0000001   0.0000000
                            0.0000000   0.0000000   0.0032901   0.0000005
 22222202222/00/0          -0.0000000   0.0000000   0.0000000  -0.0742575   0.0076782  -0.0000008   0.0000001  -0.0000002
                           -0.0540934   0.0000000  -0.0000000   0.0000000
 22222202220/20/0          -0.0000000   0.0000000  -0.0000000  -0.0739762   0.0100328  -0.0000008   0.0000002  -0.0000002
                           -0.0540934   0.0000000  -0.0000000   0.0000000
 22222202222//000          -0.0724683  -0.0662819  -0.0000531   0.0000000   0.0000000   0.0000001  -0.0000000   0.0000000
                           -0.0000000  -0.0032900   0.0000000   0.0000000
 2222220222/2/000           0.0654844  -0.0716086   0.0151312   0.0000000   0.0000000   0.0000000   0.0000000   0.0000002
                           -0.0000000   0.0000000  -0.0000005   0.0032900
 2222220222/2000/           0.0000000  -0.0000000   0.0000000   0.0282994  -0.0690816   0.0000014  -0.0000010   0.0000010
                           -0.0540934   0.0000000   0.0000000   0.0000000
 2222220222/0200/           0.0000000  -0.0000000   0.0000000   0.0304792  -0.0681480   0.0000014  -0.0000010   0.0000010
                           -0.0540934   0.0000000   0.0000000   0.0000000
 2222220222/20/00          -0.0028512   0.0031178  -0.0006588   0.0000000  -0.0000010  -0.0000000   0.0000003  -0.0652365
                           -0.0000000  -0.0000008   0.0000091  -0.0651541
 2222220222/020/0          -0.0004463   0.0004846   0.0042249   0.0000000   0.0000010  -0.0000000  -0.0652365  -0.0000003
                           -0.0000000  -0.0000004  -0.0651541  -0.0000091
 222222022202/00/           0.0028511  -0.0031178   0.0006588   0.0000000  -0.0000010  -0.0000000   0.0000003  -0.0652365
                            0.0000000   0.0000008  -0.0000091   0.0651541
 22222202222/0/00           0.0031552   0.0028859   0.0000023   0.0000006  -0.0000011  -0.0652365   0.0000000   0.0000000
                            0.0000000   0.0651542  -0.0000004  -0.0000008
 22222202220/200/           0.0004463  -0.0004846  -0.0042249   0.0000000   0.0000010  -0.0000000  -0.0652365  -0.0000003
                           -0.0000000   0.0000004   0.0651541   0.0000091
 222222022220/0/0          -0.0031552  -0.0028859  -0.0000023   0.0000006  -0.0000011  -0.0652365   0.0000000   0.0000000
                           -0.0000000  -0.0651541   0.0000004   0.0000008
 222222022202/0/0           0.0168555   0.0154166   0.0000123   0.0000006  -0.0000011  -0.0640508   0.0000000   0.0000000
                           -0.0000000  -0.0626686   0.0000004   0.0000007
 2222220222/02/00           0.0152311  -0.0166555   0.0035194   0.0000000  -0.0000010  -0.0000000   0.0000003  -0.0640508
                           -0.0000000  -0.0000007   0.0000088  -0.0626686
 22222202220/2/00          -0.0168555  -0.0154166  -0.0000123   0.0000006  -0.0000011  -0.0640508   0.0000000   0.0000000
                            0.0000000   0.0626686  -0.0000004  -0.0000007
 222222022220/00/          -0.0152311   0.0166556  -0.0035194   0.0000000  -0.0000010  -0.0000000   0.0000003  -0.0640508
                            0.0000000   0.0000007  -0.0000088   0.0626687
 2222220222/200/0           0.0023843  -0.0025887  -0.0225697   0.0000000   0.0000010  -0.0000000  -0.0640508  -0.0000003
                           -0.0000000  -0.0000004  -0.0626687  -0.0000088
 22222202222/000/          -0.0023843   0.0025887   0.0225698   0.0000000   0.0000010  -0.0000000  -0.0640508  -0.0000003
                            0.0000000   0.0000004   0.0626687   0.0000088
 222222022202//00          -0.0000000   0.0000000  -0.0000000   0.0437783   0.0604698  -0.0000006   0.0000009  -0.0000009
                           -0.0540934   0.0000000   0.0000000   0.0000000
 222222022220//00          -0.0000000   0.0000000  -0.0000000   0.0456768   0.0590489  -0.0000006   0.0000009  -0.0000009
                           -0.0540934   0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.638428   -0.099939    0.706516   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.032654
             0.004619    0.029507
 2           0.698134    0.108509    0.646202   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.029866
            -0.005015   -0.032267
 3          -0.147519    0.946034    0.000517   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000024
            -0.043724    0.006818
 4           0.000000   -0.000000    0.000000    0.955032   -0.000009   -0.000000   -0.000000   -0.068797   -0.000000   -0.000000
            -0.000000    0.000000
 5           0.000000   -0.000000   -0.000000    0.068797    0.000016   -0.000015    0.000014    0.955032    0.000000   -0.000000
             0.000000    0.000000
 6          -0.000000    0.000000   -0.000000    0.000008    0.957507    0.000000    0.000000   -0.000017    0.000000    0.000000
             0.000000   -0.000000
 7          -0.000000    0.000000    0.000000    0.000001   -0.000000    0.957507   -0.000004    0.000014   -0.000000   -0.000000
            -0.000000   -0.000000
 8          -0.000000    0.000000    0.000000   -0.000001   -0.000000    0.000004    0.957507   -0.000014    0.000000   -0.000000
             0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957106    0.000000
             0.000000    0.000000
 10          0.000001    0.000000   -0.044859    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.955501
             0.000006    0.000011
 11         -0.000006    0.044859    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000006
             0.955501   -0.000133
 12          0.044859    0.000006    0.000001   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000011
             0.000133    0.955501

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958489    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000257
            -0.000036   -0.000233
 2           0.000000    0.958489   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000235
             0.000039    0.000254
 3           0.000000   -0.000000    0.958489    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000345   -0.000054
 4           0.000000    0.000000    0.000000    0.957507    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.957507   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.957507   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000
 7           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.957507    0.000000    0.000000   -0.000000
            -0.000000    0.000000
 8           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.957507    0.000000    0.000000
            -0.000000   -0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.957106   -0.000000
            -0.000000    0.000000
 10         -0.000257   -0.000235   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.956554
            -0.000000   -0.000000
 11         -0.000036    0.000039    0.000345    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.956554   -0.000000
 12         -0.000233    0.000254   -0.000054    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.956554


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.70651597 (fixed)   0.95857097 (relaxed)   0.95848871 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00085736   -0.00184243   -0.65559878
 Singles      0.01636312   -0.06053681   -0.06772895
 Pairs        0.07127342   -0.03259752   -0.08273079
 Total        1.08849389   -0.09497676   -0.80605851
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34738948
 Nuclear energy                         0.00000000
 Kinetic energy                        83.28725792
 One electron energy                 -375.75490734
 Two electron energy                  161.60099271
 Virial quotient                       -2.57126864
 Correlation energy                    -0.80652514
 !MRCI STATE 1.1 Energy              -214.153914627955

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.22528718 (Davidson, fixed reference)
 Cluster corrected energies          -214.22513651 (Davidson, relaxed reference)
 Cluster corrected energies          -214.22528718 (Davidson, rotated reference)

 Cluster corrected energies          -214.22298760 (Pople, fixed reference)
 Cluster corrected energies          -214.22283096 (Pople, relaxed reference)
 Cluster corrected energies          -214.22298760 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.69813383 (fixed)   0.95857097 (relaxed)   0.95848871 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00085736   -0.00184243   -0.71829418
 Singles      0.01636312   -0.06053681   -0.06772895
 Pairs        0.07127341    0.03564606   -0.02003538
 Total        1.08849390   -0.02673319   -0.80605851
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34738948
 Nuclear energy                         0.00000000
 Kinetic energy                        83.28725771
 One electron energy                 -375.75490715
 Two electron energy                  161.60099252
 Virial quotient                       -2.57126865
 Correlation energy                    -0.80652514
 !MRCI STATE 2.1 Energy              -214.153914627943

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.22528718 (Davidson, fixed reference)
 Cluster corrected energies          -214.22513651 (Davidson, relaxed reference)
 Cluster corrected energies          -214.22528718 (Davidson, rotated reference)

 Cluster corrected energies          -214.22298761 (Pople, fixed reference)
 Cluster corrected energies          -214.22283096 (Pople, relaxed reference)
 Cluster corrected energies          -214.22298761 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94603405 (fixed)   0.95857096 (relaxed)   0.95848869 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00085736   -0.00184243   -0.67862630
 Singles      0.01636316   -0.06053682   -0.06772897
 Pairs        0.07127341   -0.00753216   -0.05970324
 Total        1.08849393   -0.06991142   -0.80605851
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.34738948
 Nuclear energy                         0.00000000
 Kinetic energy                        83.28725388
 One electron energy                 -375.75490284
 Two electron energy                  161.60098821
 Virial quotient                       -2.57126877
 Correlation energy                    -0.80652514
 !MRCI STATE 3.1 Energy              -214.153914627923

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.22528721 (Davidson, fixed reference)
 Cluster corrected energies          -214.22513653 (Davidson, relaxed reference)
 Cluster corrected energies          -214.22528721 (Davidson, rotated reference)

 Cluster corrected energies          -214.22298763 (Pople, fixed reference)
 Cluster corrected energies          -214.22283099 (Pople, relaxed reference)
 Cluster corrected energies          -214.22298763 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95503244 (fixed)   0.95763916 (relaxed)   0.95750718 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128727   -0.00258169   -0.67329595
 Singles      0.02097826   -0.06682854   -0.07665438
 Pairs        0.06846112   -0.00000000   -0.05023000
 Total        1.09072664   -0.06941023   -0.80018033
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14826043
 Nuclear energy                         0.00000000
 Kinetic energy                        83.15101221
 One electron energy                 -372.38162195
 Two electron energy                  158.43318118
 Virial quotient                       -2.57301066
 Correlation energy                    -0.80018033
 !MRCI STATE 4.1 Energy              -213.948440764088

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02103844 (Davidson, fixed reference)
 Cluster corrected energies          -214.02079789 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02103844 (Davidson, rotated reference)

 Cluster corrected energies          -214.01883155 (Pople, fixed reference)
 Cluster corrected energies          -214.01858055 (Pople, relaxed reference)
 Cluster corrected energies          -214.01883155 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95503245 (fixed)   0.95763917 (relaxed)   0.95750719 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128727   -0.00258169   -0.67329601
 Singles      0.02097823   -0.06682850   -0.07665436
 Pairs        0.06846112   -0.00000000   -0.05022997
 Total        1.09072662   -0.06941019   -0.80018033
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14826043
 Nuclear energy                         0.00000000
 Kinetic energy                        83.15101107
 One electron energy                 -372.38162059
 Two electron energy                  158.43317983
 Virial quotient                       -2.57301069
 Correlation energy                    -0.80018034
 !MRCI STATE 5.1 Energy              -213.948440763206

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02103842 (Davidson, fixed reference)
 Cluster corrected energies          -214.02079787 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02103842 (Davidson, rotated reference)

 Cluster corrected energies          -214.01883153 (Pople, fixed reference)
 Cluster corrected energies          -214.01858053 (Pople, relaxed reference)
 Cluster corrected energies          -214.01883153 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95750731 (fixed)   0.95763929 (relaxed)   0.95750731 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128725   -0.00258165   -0.67329620
 Singles      0.02097796   -0.06682814   -0.07665397
 Pairs        0.06846113    0.00000000   -0.05022984
 Total        1.09072635   -0.06940979   -0.80018001
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14826043
 Nuclear energy                         0.00000000
 Kinetic energy                        83.15100053
 One electron energy                 -372.38160410
 Two electron energy                  158.43316366
 Virial quotient                       -2.57301102
 Correlation energy                    -0.80018001
 !MRCI STATE 6.1 Energy              -213.948440439831

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02103785 (Davidson, fixed reference)
 Cluster corrected energies          -214.02079729 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02103785 (Davidson, rotated reference)

 Cluster corrected energies          -214.01883095 (Pople, fixed reference)
 Cluster corrected energies          -214.01857995 (Pople, relaxed reference)
 Cluster corrected energies          -214.01883095 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95750731 (fixed)   0.95763929 (relaxed)   0.95750731 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128725   -0.00258165   -0.67329619
 Singles      0.02097799   -0.06682815   -0.07665398
 Pairs        0.06846111    0.00000000   -0.05022984
 Total        1.09072635   -0.06940979   -0.80018001
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14826043
 Nuclear energy                         0.00000000
 Kinetic energy                        83.15100187
 One electron energy                 -372.38160584
 Two electron energy                  158.43316540
 Virial quotient                       -2.57301098
 Correlation energy                    -0.80018001
 !MRCI STATE 7.1 Energy              -213.948440439424

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02103785 (Davidson, fixed reference)
 Cluster corrected energies          -214.02079730 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02103785 (Davidson, rotated reference)

 Cluster corrected energies          -214.01883095 (Pople, fixed reference)
 Cluster corrected energies          -214.01857995 (Pople, relaxed reference)
 Cluster corrected energies          -214.01883095 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95750731 (fixed)   0.95763929 (relaxed)   0.95750731 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128725   -0.00258165   -0.67329630
 Singles      0.02097796   -0.06682811   -0.07665396
 Pairs        0.06846113    0.00000008   -0.05022975
 Total        1.09072634   -0.06940968   -0.80018001
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.14826043
 Nuclear energy                         0.00000000
 Kinetic energy                        83.15100096
 One electron energy                 -372.38160482
 Two electron energy                  158.43316438
 Virial quotient                       -2.57301100
 Correlation energy                    -0.80018001
 !MRCI STATE 8.1 Energy              -213.948440439024

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02103784 (Davidson, fixed reference)
 Cluster corrected energies          -214.02079729 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02103784 (Davidson, rotated reference)

 Cluster corrected energies          -214.01883094 (Pople, fixed reference)
 Cluster corrected energies          -214.01857994 (Pople, relaxed reference)
 Cluster corrected energies          -214.01883094 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95710578 (fixed)   0.95723191 (relaxed)   0.95710578 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128322   -0.00258336   -0.67326089
 Singles      0.02153327   -0.06749435   -0.07763138
 Pairs        0.06882523   -0.00000000   -0.05053335
 Total        1.09164172   -0.07007772   -0.80142563
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.13735474
 Nuclear energy                         0.00000000
 Kinetic energy                        83.15072110
 One electron energy                 -372.37505354
 Two electron energy                  158.43627317
 Virial quotient                       -2.57290349
 Correlation energy                    -0.80142563
 !MRCI STATE 9.1 Energy              -213.938780367437

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.01222439 (Davidson, fixed reference)
 Cluster corrected energies          -214.01199384 (Davidson, relaxed reference)
 Cluster corrected energies          -214.01222439 (Davidson, rotated reference)

 Cluster corrected energies          -214.01004669 (Pople, fixed reference)
 Cluster corrected energies          -214.00980576 (Pople, relaxed reference)
 Cluster corrected energies          -214.01004669 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.95550149 (fixed)   0.95672825 (relaxed)   0.95655388 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132037   -0.00246873   -0.67474859
 Singles      0.02269199   -0.06882945   -0.07969259
 Pairs        0.06888940   -0.00000864   -0.05076767
 Total        1.09290176   -0.07130682   -0.80520884
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.13281524
 Nuclear energy                         0.00000000
 Kinetic energy                        83.19995447
 One electron energy                 -372.70106127
 Two electron energy                  158.76350382
 Virial quotient                       -2.57136628
 Correlation energy                    -0.80474221
 !MRCI STATE 10.1 Energy             -213.937557447929

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.01231942 (Davidson, fixed reference)
 Cluster corrected energies          -214.01199885 (Davidson, relaxed reference)
 Cluster corrected energies          -214.01231942 (Davidson, rotated reference)

 Cluster corrected energies          -214.01017972 (Pople, fixed reference)
 Cluster corrected energies          -214.00984405 (Pople, relaxed reference)
 Cluster corrected energies          -214.01017972 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.95550147 (fixed)   0.95672824 (relaxed)   0.95655387 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132037   -0.00246873   -0.67485022
 Singles      0.02269203   -0.06882945   -0.07969261
 Pairs        0.06888938    0.00010245   -0.05066601
 Total        1.09290178   -0.07119573   -0.80520884
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.13281524
 Nuclear energy                         0.00000000
 Kinetic energy                        83.19995319
 One electron energy                 -372.70106093
 Two electron energy                  158.76350348
 Virial quotient                       -2.57136632
 Correlation energy                    -0.80474221
 !MRCI STATE 11.1 Energy             -213.937557447440

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.01231943 (Davidson, fixed reference)
 Cluster corrected energies          -214.01199887 (Davidson, relaxed reference)
 Cluster corrected energies          -214.01231943 (Davidson, rotated reference)

 Cluster corrected energies          -214.01017974 (Pople, fixed reference)
 Cluster corrected energies          -214.00984407 (Pople, relaxed reference)
 Cluster corrected energies          -214.01017974 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95550147 (fixed)   0.95672825 (relaxed)   0.95655388 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00132037   -0.00246873   -0.00377683
 Singles      0.02269201   -0.06882946   -0.07969260
 Pairs        0.06888939   -0.73331485   -0.72173941
 Total        1.09290177   -0.80461304   -0.80520884
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.13281524
 Nuclear energy                         0.00000000
 Kinetic energy                        83.19995403
 One electron energy                 -372.70106073
 Two electron energy                  158.76350328
 Virial quotient                       -2.57136629
 Correlation energy                    -0.80474221
 !MRCI STATE 12.1 Energy             -213.937557446925

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.01231942 (Davidson, fixed reference)
 Cluster corrected energies          -214.01199885 (Davidson, relaxed reference)
 Cluster corrected energies          -214.01231942 (Davidson, rotated reference)

 Cluster corrected energies          -214.01017973 (Pople, fixed reference)
 Cluster corrected energies          -214.00984406 (Pople, relaxed reference)
 Cluster corrected energies          -214.01017973 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     2017.78       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8478.38   8472.25      3.81      0.34      1.74
 REAL TIME  *      8685.42 SEC
 DISK USED  *         2.02 GB (local),       24.47 GB (total)
 SF USED    *        20.07 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -214.22528718  AU                              
 SETTING HLSDIAG(2)     =      -214.22528718  AU                              
 SETTING HLSDIAG(3)     =      -214.22528721  AU                              
 SETTING HLSDIAG(4)     =      -214.02103844  AU                              
 SETTING HLSDIAG(5)     =      -214.02103842  AU                              
 SETTING HLSDIAG(6)     =      -214.02103785  AU                              
 SETTING HLSDIAG(7)     =      -214.02103785  AU                              
 SETTING HLSDIAG(8)     =      -214.02103784  AU                              
 SETTING HLSDIAG(9)     =      -214.01222439  AU                              
 SETTING HLSDIAG(10)    =      -214.01231942  AU                              
 SETTING HLSDIAG(11)    =      -214.01231943  AU                              
 SETTING HLSDIAG(12)    =      -214.01231942  AU                              


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
     1      -213.31402193
     2      -213.31402193
     3      -213.31402193
     4      -213.31402193
     5      -213.31402193
     6      -213.28458035
     7      -213.15554576
     8      -213.15554576
     9      -213.15554576
    10      -213.11257158
    11      -213.11257158
    12      -213.11257158
    13      -213.11257158
    14      -213.11257158
    15      -213.08830623

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1048D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4537D-06

 Number of blocks in overlap matrix:  1334   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2830
 Number of N-1 electron functions:   51520

 Number of internal configurations:                24150
 Number of singly external configurations:       3940250
 Number of doubly external configurations:      16571593
 Total number of contracted configurations:     20535993
 Total number of uncontracted configurations:  162766320

 Diagonal Coupling coefficients finished.               Storage:  21889082 words, CPU-Time:     65.73 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2176965 words, CPU-time:      2.43 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -213.31402193     0.00000000    -0.97971006  0.52D-01  0.11D+00    82.86
    1     2     2     1.00000000     0.00000000  -213.31402193    -0.00000000    -0.98045049  0.53D-01  0.11D+00    82.86
    1     3     3     1.00000000     0.00000000  -213.31402193    -0.00000000    -0.97984516  0.53D-01  0.11D+00    82.86
    1     4     4     1.00000000     0.00000000  -213.31402193    -0.00000000    -0.98034312  0.53D-01  0.11D+00    82.86
    1     5     5     1.00000000     0.00000000  -213.31402193     0.00000000    -0.97958352  0.52D-01  0.11D+00    82.86
    1     6     6     1.00000000     0.00000000  -213.28458035     0.00000000    -0.95751552  0.24D-01  0.11D+00    82.86
    1     7     7     1.00000000     0.00000000  -213.15554576     0.00000000    -0.95886326  0.61D-01  0.10D+00    82.86
    1     8     8     1.00000000     0.00000000  -213.15554576    -0.00000000    -0.95897401  0.61D-01  0.10D+00    82.86
    1     9     9     1.00000000     0.00000000  -213.15554576    -0.00000000    -0.95891347  0.61D-01  0.10D+00    82.86
    1    10    10     1.00000000     0.00000000  -213.11257158     0.00000000    -0.98746903  0.88D-01  0.11D+00    82.86
    1    11    11     1.00000000     0.00000000  -213.11257158    -0.00000000    -0.98835704  0.88D-01  0.11D+00    82.86
    1    12    12     1.00000000     0.00000000  -213.11257158     0.00000000    -0.98845176  0.88D-01  0.11D+00    82.86
    1    13    13     1.00000000     0.00000000  -213.11257158    -0.00000000    -0.98844342  0.88D-01  0.11D+00    82.86
    1    14    14     1.00000000     0.00000000  -213.11257158    -0.00000000    -0.98750698  0.87D-01  0.11D+00    82.86
    1    15    15     1.00000000     0.00000000  -213.08830623     0.00000000    -0.99123282  0.96D-01  0.11D+00    82.86
    2     1     1     1.10360657    -0.78741410  -214.10143603    -0.78741410    -0.02454704  0.41D-02  0.17D-02   922.59
    2     2     2     1.10366594    -0.78740318  -214.10142510    -0.78740318    -0.02456498  0.41D-02  0.17D-02   922.59
    2     3     3     1.10395984    -0.78712429  -214.10114621    -0.78712429    -0.02488444  0.43D-02  0.17D-02   922.59
    2     4     4     1.10389734    -0.78701142  -214.10103335    -0.78701142    -0.02500650  0.44D-02  0.17D-02   922.59
    2     5     5     1.10410079    -0.78699199  -214.10101392    -0.78699199    -0.02502791  0.44D-02  0.17D-02   922.59
    2     6     6     1.09249117    -0.78659469  -214.07117505    -0.78659469    -0.01904709  0.21D-02  0.15D-02   922.59
    2     7     7     1.10603501    -0.77622399  -213.93176975    -0.77622399    -0.02381491  0.56D-02  0.15D-02   922.59
    2     8     8     1.10607599    -0.77619665  -213.93174241    -0.77619665    -0.02384616  0.56D-02  0.15D-02   922.59
    2     9     9     1.10612719    -0.77619128  -213.93173704    -0.77619128    -0.02384140  0.56D-02  0.15D-02   922.59
    2    10    10     1.11999837    -0.78348538  -213.89605697    -0.78348538    -0.02837942  0.77D-02  0.18D-02   922.59
    2    11    11     1.12121813    -0.78270192  -213.89527350    -0.78270192    -0.02926365  0.82D-02  0.18D-02   922.59
    2    12    12     1.12129295    -0.78262590  -213.89519749    -0.78262590    -0.02935161  0.83D-02  0.18D-02   922.59
    2    13    13     1.12135134    -0.78262550  -213.89519709    -0.78262550    -0.02934046  0.83D-02  0.18D-02   922.59
    2    14    14     1.12143253    -0.78214380  -213.89471538    -0.78214380    -0.02931589  0.85D-02  0.18D-02   922.59
    2    15    15     1.12978153    -0.78549988  -213.87380611    -0.78549988    -0.02958025  0.94D-02  0.18D-02   922.59
    3     1     1     1.09101853    -0.81046731  -214.12448923    -0.02305321    -0.00055131  0.76D-04  0.61D-04  1757.48
    3     2     2     1.09101437    -0.81046081  -214.12448274    -0.02305763    -0.00055578  0.77D-04  0.62D-04  1757.48
    3     3     3     1.09102984    -0.81045753  -214.12447946    -0.02333325    -0.00056157  0.78D-04  0.63D-04  1757.48
    3     4     4     1.09098342    -0.81045266  -214.12447459    -0.02344124    -0.00056474  0.79D-04  0.62D-04  1757.48
    3     5     5     1.09103305    -0.81044858  -214.12447051    -0.02345659    -0.00056961  0.79D-04  0.64D-04  1757.48
    3     6     6     1.08747567    -0.80469491  -214.08927526    -0.01810022    -0.00036984  0.32D-04  0.47D-04  1757.48
    3     7     7     1.08980808    -0.79903588  -213.95458164    -0.02281189    -0.00051000  0.80D-04  0.63D-04  1757.48
    3     8     8     1.08981550    -0.79903369  -213.95457945    -0.02283705    -0.00051162  0.80D-04  0.64D-04  1757.48
    3     9     9     1.08981449    -0.79903303  -213.95457880    -0.02284176    -0.00051281  0.80D-04  0.64D-04  1757.48
    3    10    10     1.09678122    -0.81053744  -213.92310902    -0.02705205    -0.00072876  0.14D-03  0.91D-04  1757.48
    3    11    11     1.09684910    -0.81050999  -213.92308158    -0.02780807    -0.00075835  0.14D-03  0.95D-04  1757.48
    3    12    12     1.09685537    -0.81050473  -213.92307632    -0.02787883    -0.00076365  0.14D-03  0.96D-04  1757.48
    3    13    13     1.09686625    -0.81050316  -213.92307474    -0.02787765    -0.00076492  0.14D-03  0.96D-04  1757.48
    3    14    14     1.09694433    -0.81043141  -213.92300299    -0.02828761    -0.00081071  0.16D-03  0.10D-03  1757.48
    3    15    15     1.10069360    -0.81401985  -213.90232609    -0.02851998    -0.00078532  0.14D-03  0.11D-03  1757.48
    4     1     1     1.09070814    -0.81103822  -214.12506015    -0.00057091    -0.00002888  0.44D-05  0.36D-05  2603.82
    4     2     2     1.09070744    -0.81103787  -214.12505980    -0.00057706    -0.00002916  0.44D-05  0.36D-05  2603.82
    4     3     3     1.09070425    -0.81103757  -214.12505950    -0.00058004    -0.00002936  0.43D-05  0.37D-05  2603.82
    4     4     4     1.09070237    -0.81103752  -214.12505944    -0.00058485    -0.00002941  0.44D-05  0.37D-05  2603.82
    4     5     5     1.09070450    -0.81103737  -214.12505930    -0.00058879    -0.00002956  0.44D-05  0.37D-05  2603.82
    4     6     6     1.08811357    -0.80507754  -214.08965789    -0.00038262    -0.00002229  0.25D-05  0.36D-05  2603.82
    4     7     7     1.08918980    -0.79958598  -213.95513175    -0.00055011    -0.00002731  0.62D-05  0.31D-05  2603.82
    4     8     8     1.08919016    -0.79958581  -213.95513157    -0.00055211    -0.00002750  0.62D-05  0.31D-05  2603.82
    4     9     9     1.08918865    -0.79958579  -213.95513155    -0.00055276    -0.00002748  0.62D-05  0.31D-05  2603.82
    4    10    10     1.09524203    -0.81131851  -213.92389010    -0.00078107    -0.00004499  0.82D-05  0.65D-05  2603.82
    4    11    11     1.09524587    -0.81131718  -213.92388876    -0.00080718    -0.00004608  0.84D-05  0.67D-05  2603.82
    4    12    12     1.09524433    -0.81131705  -213.92388863    -0.00081232    -0.00004635  0.84D-05  0.68D-05  2603.82
    4    13    13     1.09524398    -0.81131702  -213.92388860    -0.00081386    -0.00004644  0.84D-05  0.68D-05  2603.82
    4    14    14     1.09525057    -0.81131200  -213.92388358    -0.00088059    -0.00005087  0.89D-05  0.75D-05  2603.82
    4    15    15     1.09869715    -0.81487539  -213.90318162    -0.00085554    -0.00005213  0.91D-05  0.80D-05  2603.82
    5     1     1     1.09078561    -0.81107130  -214.12509322    -0.00003308    -0.00000132  0.91D-07  0.22D-06  3447.30
    5     2     2     1.09078498    -0.81107127  -214.12509320    -0.00003341    -0.00000134  0.88D-07  0.22D-06  3447.30
    5     3     3     1.09078436    -0.81107127  -214.12509319    -0.00003369    -0.00000135  0.95D-07  0.22D-06  3447.30
    5     4     4     1.09078282    -0.81107125  -214.12509317    -0.00003373    -0.00000136  0.95D-07  0.23D-06  3447.30
    5     5     5     1.09078494    -0.81107125  -214.12509317    -0.00003388    -0.00000137  0.92D-07  0.23D-06  3447.30
    5     6     6     1.08849595    -0.80510369  -214.08968405    -0.00002616    -0.00000135  0.72D-07  0.25D-06  3447.30
    5     7     7     1.08905983    -0.79961685  -213.95516262    -0.00003087    -0.00000117  0.14D-06  0.16D-06  3447.30
    5     8     8     1.08905975    -0.79961685  -213.95516262    -0.00003105    -0.00000117  0.14D-06  0.16D-06  3447.30
    5     9     9     1.08905992    -0.79961684  -213.95516260    -0.00003105    -0.00000116  0.14D-06  0.16D-06  3447.30
    5    10    10     1.09503379    -0.81137077  -213.92394236    -0.00005226    -0.00000285  0.26D-06  0.55D-06  3447.30
    5    11    11     1.09503658    -0.81137075  -213.92394233    -0.00005357    -0.00000279  0.25D-06  0.54D-06  3447.30
    5    12    12     1.09503331    -0.81137072  -213.92394230    -0.00005367    -0.00000286  0.26D-06  0.56D-06  3447.30
    5    13    13     1.09503411    -0.81137052  -213.92394210    -0.00005350    -0.00000285  0.26D-06  0.56D-06  3447.30
    5    14    14     1.09503871    -0.81137040  -213.92394198    -0.00005840    -0.00000293  0.27D-06  0.57D-06  3447.30
    5    15    15     1.09846743    -0.81493508  -213.90324131    -0.00005969    -0.00000344  0.30D-06  0.69D-06  3447.30
    6     1     1     1.09079037    -0.81107282  -214.12509475    -0.00000153    -0.00000009  0.96D-08  0.14D-07  4294.78
    6     2     2     1.09079036    -0.81107282  -214.12509475    -0.00000155    -0.00000009  0.10D-07  0.15D-07  4294.78
    6     3     3     1.09079018    -0.81107282  -214.12509475    -0.00000155    -0.00000009  0.10D-07  0.15D-07  4294.78
    6     4     4     1.09079023    -0.81107282  -214.12509475    -0.00000157    -0.00000009  0.96D-08  0.14D-07  4294.78
    6     5     5     1.09078980    -0.81107282  -214.12509475    -0.00000157    -0.00000009  0.10D-07  0.15D-07  4294.78
    6     6     6     1.08854236    -0.80510536  -214.08968571    -0.00000166    -0.00000009  0.11D-07  0.13D-07  4294.78
    6     7     7     1.08901942    -0.79961814  -213.95516390    -0.00000129    -0.00000007  0.74D-08  0.11D-07  4294.78
    6     8     8     1.08901954    -0.79961814  -213.95516390    -0.00000129    -0.00000007  0.72D-08  0.11D-07  4294.78
    6     9     9     1.08901952    -0.79961811  -213.95516388    -0.00000128    -0.00000007  0.73D-08  0.11D-07  4294.78
    6    10    10     1.09499228    -0.81137418  -213.92394576    -0.00000340    -0.00000028  0.30D-07  0.56D-07  4294.78
    6    11    11     1.09499471    -0.81137415  -213.92394573    -0.00000340    -0.00000027  0.27D-07  0.55D-07  4294.78
    6    12    12     1.09499204    -0.81137413  -213.92394572    -0.00000342    -0.00000028  0.30D-07  0.57D-07  4294.78
    6    13    13     1.09499197    -0.81137392  -213.92394550    -0.00000340    -0.00000028  0.30D-07  0.56D-07  4294.78
    6    14    14     1.09499488    -0.81137382  -213.92394540    -0.00000342    -0.00000027  0.27D-07  0.54D-07  4294.78
    6    15    15     1.09842479    -0.81493918  -213.90324541    -0.00000410    -0.00000032  0.30D-07  0.67D-07  4294.78
    7     1     1     1.09080225    -0.81107293  -214.12509485    -0.00000010    -0.00000001  0.62D-09  0.13D-08  5141.93
    7     2     2     1.09080242    -0.81107292  -214.12509485    -0.00000010    -0.00000001  0.59D-09  0.12D-08  5141.93
    7     3     3     1.09080230    -0.81107292  -214.12509485    -0.00000010    -0.00000001  0.61D-09  0.13D-08  5141.93
    7     4     4     1.09080227    -0.81107292  -214.12509485    -0.00000010    -0.00000001  0.63D-09  0.13D-08  5141.93
    7     5     5     1.09080237    -0.81107292  -214.12509485    -0.00000010    -0.00000001  0.60D-09  0.12D-08  5141.93
    7     6     6     1.08855108    -0.80510546  -214.08968582    -0.00000011    -0.00000001  0.61D-09  0.12D-08  5141.93
    7     7     7     1.08901963    -0.79961822  -213.95516398    -0.00000007    -0.00000001  0.46D-09  0.11D-08  5141.93
    7     8     8     1.08901970    -0.79961822  -213.95516398    -0.00000007    -0.00000001  0.46D-09  0.11D-08  5141.93
    7     9     9     1.08901962    -0.79961819  -213.95516395    -0.00000007    -0.00000001  0.46D-09  0.11D-08  5141.93
    7    10    10     1.09501349    -0.81137451  -213.92394609    -0.00000033    -0.00000003  0.27D-08  0.61D-08  5141.93
    7    11    11     1.09501406    -0.81137447  -213.92394606    -0.00000033    -0.00000003  0.27D-08  0.59D-08  5141.93
    7    12    12     1.09501343    -0.81137447  -213.92394605    -0.00000034    -0.00000003  0.27D-08  0.62D-08  5141.93
    7    13    13     1.09501323    -0.81137425  -213.92394584    -0.00000033    -0.00000003  0.27D-08  0.61D-08  5141.93
    7    14    14     1.09501363    -0.81137414  -213.92394572    -0.00000032    -0.00000003  0.26D-08  0.57D-08  5141.93
    7    15    15     1.09845041    -0.81493956  -213.90324579    -0.00000038    -0.00000004  0.31D-08  0.82D-08  5141.93
    8     1     1     1.09080225    -0.81107293  -214.12509485    -0.00000000    -0.00000001  0.62D-09  0.13D-08  5309.52
    8     2     2     1.09080242    -0.81107292  -214.12509485    -0.00000000    -0.00000001  0.59D-09  0.12D-08  5309.52
    8     3     3     1.09080230    -0.81107292  -214.12509485     0.00000000    -0.00000001  0.61D-09  0.13D-08  5309.52
    8     4     4     1.09080227    -0.81107292  -214.12509485     0.00000000    -0.00000001  0.63D-09  0.13D-08  5309.52
    8     5     5     1.09080237    -0.81107292  -214.12509485    -0.00000000    -0.00000001  0.60D-09  0.12D-08  5309.52
    8     6     6     1.08855103    -0.80510547  -214.08968582    -0.00000000    -0.00000001  0.51D-09  0.10D-08  5309.52
    8     7     7     1.08901963    -0.79961822  -213.95516398     0.00000000    -0.00000001  0.46D-09  0.11D-08  5309.52
    8     8     8     1.08901970    -0.79961822  -213.95516398     0.00000000    -0.00000001  0.46D-09  0.11D-08  5309.52
    8     9     9     1.08901962    -0.79961819  -213.95516395    -0.00000000    -0.00000001  0.46D-09  0.11D-08  5309.52
    8    10    10     1.09501349    -0.81137451  -213.92394609     0.00000000    -0.00000003  0.27D-08  0.61D-08  5309.52
    8    11    11     1.09501405    -0.81137447  -213.92394606    -0.00000000    -0.00000003  0.26D-08  0.59D-08  5309.52
    8    12    12     1.09501343    -0.81137447  -213.92394605    -0.00000000    -0.00000003  0.27D-08  0.62D-08  5309.52
    8    13    13     1.09501323    -0.81137425  -213.92394584    -0.00000000    -0.00000003  0.27D-08  0.61D-08  5309.52
    8    14    14     1.09501363    -0.81137414  -213.92394572    -0.00000000    -0.00000003  0.26D-08  0.57D-08  5309.52
    8    15    15     1.09845188    -0.81493961  -213.90324584    -0.00000005    -0.00000000  0.24D-09  0.60D-09  5309.52


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.4%   7.0%
 P   0.4%  34.5%  40.1%

 Initialization:   1.3%
 Other:           15.5%

 Total CPU:     5309.5 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\000           0.0016264   0.0031082   0.9495449  -0.0019038  -0.0007789   0.0000000   0.0000000   0.0000000
                            0.0000001  -0.0000006  -0.0000012  -0.0000004  -0.0166548  -0.0000047  -0.0000000
 2222222222/\0000           0.9495440   0.0000099  -0.0016337  -0.0038966   0.0007012   0.0000000   0.0000000   0.0000001
                            0.0000000  -0.0166549   0.0000023  -0.0000055   0.0000006   0.0000000  -0.0000000
 2222222222/0\000           0.0038999  -0.0037616   0.0019094   0.9495363   0.0000077  -0.0000000  -0.0000000   0.0000000
                           -0.0000000   0.0000055   0.0000000  -0.0166549   0.0000004   0.0000001   0.0000000
 2222222222002000           0.0000785   0.7679715  -0.0025951   0.0030481  -0.1063248   0.5394264   0.0000000   0.0000000
                            0.0000000  -0.0000017  -0.0124474   0.0000000  -0.0000007   0.0054765  -0.0386232
 22222222220/00\0           0.0000047  -0.0049934   0.0000110  -0.0000198  -0.0064183   0.0391908   0.0000000   0.0000000
                            0.0000000  -0.0000111  -0.0830860   0.0000058  -0.0002094   0.7582245   0.5346785
 2222222222200000          -0.0005294  -0.2919052   0.0015433  -0.0011631   0.7182540   0.5394263  -0.0000000  -0.0000000
                            0.0000000   0.0000015   0.0109662   0.0000001  -0.0000031   0.0080419  -0.0386233
 222222222200/\00           0.0000008   0.0080555  -0.0000272   0.0000320  -0.0011152   0.0391909  -0.0000000   0.0000000
                           -0.0000000   0.0000945   0.6981867  -0.0000019   0.0000369  -0.3071641   0.5346721
 22222222220/0\00           0.0000121   0.0000231   0.0070426  -0.0000141  -0.0000058  -0.0000000   0.0000674  -0.0001316
                           -0.6700461   0.0000250   0.0000476   0.0000164   0.6605749   0.0001876  -0.0000000
 222222222200/0\0           0.0000121   0.0000231   0.0070426  -0.0000141  -0.0000058  -0.0000000  -0.0000674   0.0001316
                            0.6700447   0.0000250   0.0000476   0.0000164   0.6605764   0.0001876  -0.0000000
 22222222220/000\           0.0070427   0.0000001  -0.0000121  -0.0000289   0.0000052   0.0000000  -0.0069768  -0.6700101
                            0.0001309   0.6605745  -0.0000895   0.0002168  -0.0000250  -0.0000001   0.0000000
 222222222200/00\           0.0000289  -0.0000279   0.0000142   0.0070426   0.0000001  -0.0000000  -0.6700095   0.0069768
                           -0.0000687  -0.0002168  -0.0000004   0.6605752  -0.0000164  -0.0000051  -0.0000000
 2222222222/00\00           0.0000289  -0.0000279   0.0000142   0.0070426   0.0000001   0.0000000   0.6700087  -0.0069768
                            0.0000687  -0.0002168  -0.0000004   0.6605760  -0.0000164  -0.0000051  -0.0000000
 2222222222/000\0           0.0070427   0.0000001  -0.0000121  -0.0000289   0.0000052   0.0000000   0.0069768   0.6700080
                           -0.0001309   0.6605768  -0.0000895   0.0002168  -0.0000250  -0.0000001   0.0000000
 2222222222/0000\          -0.0000056  -0.0030617   0.0000162  -0.0000122   0.0075338   0.0391909   0.0000000   0.0000000
                           -0.0000000  -0.0000834  -0.6151032  -0.0000039   0.0001725  -0.4510717   0.5346692
 2222222222020000           0.0004509  -0.4760665   0.0010519  -0.0018850  -0.6119290   0.5394264  -0.0000000  -0.0000000
                           -0.0000000   0.0000002   0.0014813  -0.0000001   0.0000037  -0.0135174  -0.0386233
 2222222222000/\0          -0.0000645  -0.0001232  -0.0376274   0.0000754   0.0000309   0.0000000  -0.0000000  -0.0000000
                            0.0000002  -0.0000054  -0.0000102  -0.0000035  -0.1415735  -0.0000402   0.0000000
 2222222222000/0\          -0.0001545   0.0001491  -0.0000757  -0.0376271  -0.0000003   0.0000000   0.0000001  -0.0000000
                           -0.0000000   0.0000465   0.0000001  -0.1415731   0.0000035   0.0000011   0.0000000
 22222222220000/\          -0.0376274  -0.0000004   0.0000647   0.0001544  -0.0000278   0.0000000   0.0000000   0.0000003
                           -0.0000000  -0.1415730   0.0000192  -0.0000465   0.0000054   0.0000000  -0.0000000
 2222222222000020          -0.0000179   0.0188650  -0.0000417   0.0000747   0.0242489  -0.0332232   0.0000000   0.0000000
                            0.0000000   0.0000017   0.0125907  -0.0000009   0.0000317  -0.1149067  -0.0858705
 2222220222202000           0.0000465  -0.0491028   0.0001085  -0.0001944  -0.0631159  -0.1076380   0.0000000  -0.0000000
                           -0.0000000   0.0000001   0.0006692  -0.0000000   0.0000017  -0.0061079   0.0108045
 2222220222022000          -0.0000546  -0.0301079   0.0001592  -0.0001200   0.0740826  -0.1076379   0.0000000   0.0000000
                           -0.0000000   0.0000007   0.0049551   0.0000000  -0.0000014   0.0036336   0.0108046
 2222220222220000           0.0000081   0.0792107  -0.0002677   0.0003144  -0.0109665  -0.1076379  -0.0000000  -0.0000000
                            0.0000000  -0.0000008  -0.0056244   0.0000000  -0.0000003   0.0024742   0.0108046
 2222222222000200          -0.0000031  -0.0304322   0.0001028  -0.0001208   0.0042133  -0.0332232   0.0000000   0.0000000
                           -0.0000000  -0.0000143  -0.1058070   0.0000003  -0.0000056   0.0465493  -0.0858692
 22222202222/\000          -0.0001678  -0.0003206  -0.0979386   0.0001964   0.0000803  -0.0000000   0.0000000   0.0000000
                            0.0000000   0.0000003   0.0000005   0.0000002   0.0075253   0.0000021  -0.0000000
 2222220222/\2000          -0.0979384  -0.0000010   0.0001685   0.0004019  -0.0000723  -0.0000000   0.0000000   0.0000000
                           -0.0000000   0.0075253  -0.0000010   0.0000025  -0.0000003  -0.0000000  -0.0000000
 2222220222/2\000          -0.0004022   0.0003880  -0.0001969  -0.0979376  -0.0000008   0.0000000  -0.0000000  -0.0000000
                            0.0000000  -0.0000025  -0.0000000   0.0075255  -0.0000002  -0.0000001  -0.0000000
 2222222222000002           0.0000210   0.0115673  -0.0000612   0.0000461  -0.0284621  -0.0332232  -0.0000000   0.0000000
                           -0.0000000   0.0000126   0.0932161   0.0000006  -0.0000261   0.0683581  -0.0858685
 22222202220/20\0           0.0000042   0.0304331  -0.0001040   0.0001208  -0.0056646   0.0189352  -0.0000000   0.0000000
                           -0.0000000   0.0000009   0.0067657  -0.0000006   0.0000205  -0.0739805  -0.0540316
 22222202222/00\0          -0.0000207  -0.0129742   0.0000655  -0.0000517   0.0281062   0.0189352  -0.0000000  -0.0000000
                           -0.0000000   0.0000013   0.0094160  -0.0000006   0.0000203  -0.0736903  -0.0540315
 222222022202/\00           0.0000186  -0.0178533   0.0000375  -0.0000707  -0.0252893   0.0189353  -0.0000000   0.0000000
                            0.0000000  -0.0000093  -0.0685259   0.0000002  -0.0000032   0.0286911  -0.0540309
 222222022220/\00          -0.0000215  -0.0103111   0.0000576  -0.0000411   0.0291886   0.0189353   0.0000000  -0.0000000
                            0.0000000  -0.0000091  -0.0674521   0.0000002  -0.0000040   0.0311319  -0.0540308
 22222202222/0\00           0.0000025   0.0000047   0.0014373  -0.0000029  -0.0000012   0.0000000  -0.0000066   0.0000128
                            0.0653488  -0.0000025  -0.0000047  -0.0000016  -0.0649931  -0.0000185   0.0000000
 222222022220/0\0           0.0000025   0.0000047   0.0014373  -0.0000029  -0.0000012   0.0000000   0.0000066  -0.0000128
                           -0.0653488  -0.0000025  -0.0000047  -0.0000016  -0.0649932  -0.0000185   0.0000000
 22222202220/200\           0.0014373   0.0000000  -0.0000025  -0.0000059   0.0000011   0.0000000   0.0006804   0.0653454
                           -0.0000128  -0.0649930   0.0000088  -0.0000213   0.0000025   0.0000000   0.0000000
 222222022202/00\           0.0000059  -0.0000057   0.0000029   0.0014373   0.0000000  -0.0000000   0.0653453  -0.0006804
                            0.0000067   0.0000213   0.0000000  -0.0649931   0.0000016   0.0000005  -0.0000000
 2222220222/020\0           0.0014373   0.0000000  -0.0000025  -0.0000059   0.0000011   0.0000000  -0.0006804  -0.0653451
                            0.0000128  -0.0649932   0.0000088  -0.0000213   0.0000025   0.0000000   0.0000000
 2222220222/20\00           0.0000059  -0.0000057   0.0000029   0.0014373   0.0000000  -0.0000000  -0.0653451   0.0006804
                           -0.0000067   0.0000213   0.0000000  -0.0649932   0.0000016   0.0000005   0.0000000
 222222022220/00\          -0.0001070   0.0001032  -0.0000524  -0.0260608  -0.0000002   0.0000000   0.0619135  -0.0006447
                            0.0000064   0.0000209   0.0000000  -0.0636603   0.0000016   0.0000005  -0.0000000
 2222220222/200\0          -0.0260610  -0.0000003   0.0000448   0.0001069  -0.0000192  -0.0000000  -0.0006447  -0.0619130
                            0.0000121  -0.0636599   0.0000086  -0.0000209   0.0000024   0.0000000   0.0000000
 2222220222/02\00          -0.0001070   0.0001032  -0.0000524  -0.0260609  -0.0000002   0.0000000  -0.0619131   0.0006447
                           -0.0000064   0.0000209   0.0000000  -0.0636598   0.0000016   0.0000005  -0.0000000
 22222202222/000\          -0.0260611  -0.0000003   0.0000448   0.0001069  -0.0000192  -0.0000000   0.0006447   0.0619133
                           -0.0000121  -0.0636598   0.0000086  -0.0000209   0.0000024   0.0000000   0.0000000
 222222022202/0\0          -0.0000446  -0.0000853  -0.0260610   0.0000522   0.0000214  -0.0000000   0.0000062  -0.0000122
                           -0.0619166  -0.0000024  -0.0000046  -0.0000016  -0.0636598  -0.0000181   0.0000000
 22222202220/2\00          -0.0000446  -0.0000853  -0.0260611   0.0000523   0.0000214  -0.0000000  -0.0000062   0.0000122
                            0.0619166  -0.0000024  -0.0000046  -0.0000016  -0.0636597  -0.0000181   0.0000000
 2222220222/2000\           0.0000173  -0.0201223   0.0000464  -0.0000797  -0.0235240   0.0189353   0.0000000  -0.0000000
                            0.0000000   0.0000082   0.0606866   0.0000004  -0.0000165   0.0428500  -0.0540306
 2222220222/0200\           0.0000021   0.0308273  -0.0001030   0.0001223  -0.0028171   0.0189353  -0.0000000  -0.0000000
                           -0.0000000   0.0000080   0.0591105   0.0000004  -0.0000170   0.0450011  -0.0540305

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000531    0.003923    0.955124    0.001636    0.000462   -0.000000   -0.000000   -0.000000   -0.000000   -0.000029
            -0.000102   -0.059286   -0.000243    0.000033   -0.000000
 2          -0.626572   -0.003784    0.000010    0.003127   -0.720876   -0.000000   -0.000000    0.000000    0.000000    0.044622
            -0.000194   -0.000001    0.000235    0.039035    0.000000
 3           0.002638    0.001921   -0.001643    0.955125    0.001839    0.000000    0.000000    0.000000   -0.000000   -0.000114
            -0.059286    0.000102   -0.000119   -0.000164   -0.000000
 4          -0.002491    0.955116   -0.003919   -0.001915   -0.002856    0.000000    0.000000    0.000000   -0.000000    0.000177
             0.000119    0.000243   -0.059286    0.000155    0.000000
 5           0.720884    0.000008    0.000705   -0.000783   -0.626582    0.000000    0.000000    0.000000   -0.000000    0.039036
             0.000049   -0.000044   -0.000000   -0.044622    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.957001   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.041649
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000096    0.009971    0.957588    0.000000
             0.000000   -0.000000   -0.000001    0.000000    0.000000
 8           0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000188    0.957588   -0.009971   -0.000000
            -0.000000   -0.000002    0.000000    0.000000    0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.957640   -0.000187    0.000098    0.000000
            -0.000001    0.000000    0.000000   -0.000000   -0.000000
 10         -0.000008   -0.000020    0.060774    0.000002   -0.000002   -0.000000   -0.000000    0.000002    0.000000   -0.000038
             0.000036    0.953041   -0.000313   -0.000123   -0.000000
 11         -0.058001   -0.000000   -0.000008    0.000004   -0.018148   -0.000000    0.000000   -0.000000    0.000000   -0.281686
             0.000069   -0.000129   -0.000001   -0.910462   -0.000001
 12         -0.000000    0.060774    0.000020    0.000002    0.000000    0.000000   -0.000000    0.000000    0.000001    0.000007
             0.000024    0.000313    0.953041   -0.000003    0.000000
 13          0.000009   -0.000002   -0.000002    0.060774   -0.000015    0.000000    0.000001   -0.000000   -0.000000   -0.000238
             0.953041   -0.000036   -0.000024    0.000146    0.000000
 14         -0.018148   -0.000000   -0.000000    0.000017    0.058001   -0.000000    0.000000    0.000000   -0.000000    0.910462
             0.000271   -0.000000   -0.000007   -0.281686   -0.000007
 15         -0.000000    0.000000    0.000000   -0.000000    0.000000    0.041500    0.000000   -0.000000   -0.000000    0.000006
            -0.000000    0.000000   -0.000000   -0.000003    0.952580

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956971    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000808
             0.000000    0.000004    0.000001    0.000001    0.000000
 2           0.000000    0.956971   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000688   -0.000003    0.000003   -0.000424    0.000000
 3          -0.000000   -0.000000    0.956971    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000001
            -0.000003    0.000002    0.000808    0.000001   -0.000000
 4          -0.000000   -0.000000    0.000000    0.956971    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000004
             0.000003    0.000808   -0.000002   -0.000002    0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.956971    0.000000   -0.000000    0.000000    0.000000    0.000001
            -0.000424    0.000000   -0.000000   -0.000688   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957907   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000022
 7          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.957640   -0.000000   -0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000
 8          -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.957640   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000
 9           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.957640   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000
 10          0.000808    0.000000   -0.000001   -0.000004    0.000001    0.000000    0.000000    0.000000   -0.000000    0.954977
             0.000000   -0.000000   -0.000000   -0.000000    0.000000
 11          0.000000    0.000688   -0.000003    0.000003   -0.000424   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.954977    0.000000   -0.000000    0.000000   -0.000000
 12          0.000004   -0.000003    0.000002    0.000808    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.954977   -0.000000    0.000000   -0.000000
 13          0.000001    0.000003    0.000808   -0.000002   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.954977    0.000000   -0.000000
 14          0.000001   -0.000424    0.000001   -0.000002   -0.000688    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000    0.954977    0.000000
 15          0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000022    0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.953484


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95512368 (fixed)   0.95705505 (relaxed)   0.95697131 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00105084   -0.00228099   -0.68425200
 Singles      0.01872746   -0.06475728   -0.07321077
 Pairs        0.07217021    0.00000000   -0.05361016
 Total        1.09194851   -0.06703827   -0.81107293
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.31322756
 Nuclear energy                         0.00000000
 Kinetic energy                        83.26375429
 One electron energy                 -375.57499273
 Two electron energy                  161.44989788
 Virial quotient                       -2.57164833
 Correlation energy                    -0.81186729
 !MRCI STATE 1.1 Energy              -214.125094853930

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.19974484 (Davidson, fixed reference)
 Cluster corrected energies          -214.19958972 (Davidson, relaxed reference)
 Cluster corrected energies          -214.19974484 (Davidson, rotated reference)

 Cluster corrected energies          -214.19841937 (Pople, fixed reference)
 Cluster corrected energies          -214.19825490 (Pople, relaxed reference)
 Cluster corrected energies          -214.19841937 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.72087622 (fixed)   0.95705498 (relaxed)   0.95697125 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00105083   -0.00228099   -0.68425136
 Singles      0.01872753   -0.06475738   -0.07321079
 Pairs        0.07217031   -0.00000049   -0.05361077
 Total        1.09194867   -0.06703885   -0.81107292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.31322757
 Nuclear energy                         0.00000000
 Kinetic energy                        83.26375994
 One electron energy                 -375.57499920
 Two electron energy                  161.44990435
 Virial quotient                       -2.57164816
 Correlation energy                    -0.81186729
 !MRCI STATE 2.1 Energy              -214.125094852726

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.19974497 (Davidson, fixed reference)
 Cluster corrected energies          -214.19958985 (Davidson, relaxed reference)
 Cluster corrected energies          -214.19974497 (Davidson, rotated reference)

 Cluster corrected energies          -214.19841950 (Pople, fixed reference)
 Cluster corrected energies          -214.19825504 (Pople, relaxed reference)
 Cluster corrected energies          -214.19841950 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95512461 (fixed)   0.95705503 (relaxed)   0.95697130 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00105083   -0.00228099   -0.68425190
 Singles      0.01872752   -0.06475736   -0.07321080
 Pairs        0.07217020    0.00000000   -0.05361023
 Total        1.09194855   -0.06703834   -0.81107292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.31322756
 Nuclear energy                         0.00000000
 Kinetic energy                        83.26375913
 One electron energy                 -375.57499987
 Two electron energy                  161.44990502
 Virial quotient                       -2.57164818
 Correlation energy                    -0.81186729
 !MRCI STATE 3.1 Energy              -214.125094851656

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.19974488 (Davidson, fixed reference)
 Cluster corrected energies          -214.19958976 (Davidson, relaxed reference)
 Cluster corrected energies          -214.19974488 (Davidson, rotated reference)

 Cluster corrected energies          -214.19841941 (Pople, fixed reference)
 Cluster corrected energies          -214.19825494 (Pople, relaxed reference)
 Cluster corrected energies          -214.19841941 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95511591 (fixed)   0.95705504 (relaxed)   0.95697131 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00105084   -0.00228099   -0.68425190
 Singles      0.01872753   -0.06475737   -0.07321080
 Pairs        0.07217016   -0.00000000   -0.05361022
 Total        1.09194852   -0.06703836   -0.81107292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.31322756
 Nuclear energy                         0.00000000
 Kinetic energy                        83.26375676
 One electron energy                 -375.57499697
 Two electron energy                  161.44990212
 Virial quotient                       -2.57164826
 Correlation energy                    -0.81186729
 !MRCI STATE 4.1 Energy              -214.125094850215

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.19974485 (Davidson, fixed reference)
 Cluster corrected energies          -214.19958973 (Davidson, relaxed reference)
 Cluster corrected energies          -214.19974485 (Davidson, rotated reference)

 Cluster corrected energies          -214.19841938 (Pople, fixed reference)
 Cluster corrected energies          -214.19825491 (Pople, relaxed reference)
 Cluster corrected energies          -214.19841938 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.72088361 (fixed)   0.95705500 (relaxed)   0.95697127 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00105083   -0.00228099   -0.68425164
 Singles      0.01872752   -0.06475740   -0.07321080
 Pairs        0.07217027   -0.00000018   -0.05361048
 Total        1.09194862   -0.06703857   -0.81107292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.31322756
 Nuclear energy                         0.00000000
 Kinetic energy                        83.26375767
 One electron energy                 -375.57499850
 Two electron energy                  161.44990365
 Virial quotient                       -2.57164823
 Correlation energy                    -0.81186729
 !MRCI STATE 5.1 Energy              -214.125094847414

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.19974493 (Davidson, fixed reference)
 Cluster corrected energies          -214.19958981 (Davidson, relaxed reference)
 Cluster corrected energies          -214.19974493 (Davidson, rotated reference)

 Cluster corrected energies          -214.19841946 (Pople, fixed reference)
 Cluster corrected energies          -214.19825500 (Pople, relaxed reference)
 Cluster corrected energies          -214.19841946 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95700144 (fixed)   0.95808127 (relaxed)   0.95790729 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00116176   -0.00208745   -0.74249507
 Singles      0.01137937   -0.04975555   -0.05405889
 Pairs        0.07727453    0.05289750   -0.00855150
 Total        1.08981566    0.00105451   -0.80510547
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.28420892
 Nuclear energy                         0.00000000
 Kinetic energy                        83.24183764
 One electron energy                 -375.26680597
 Two electron energy                  161.17712015
 Virial quotient                       -2.57190004
 Correlation energy                    -0.80547689
 !MRCI STATE 6.1 Energy              -214.089685817999

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.16203026 (Davidson, fixed reference)
 Cluster corrected energies          -214.16171147 (Davidson, relaxed reference)
 Cluster corrected energies          -214.16203026 (Davidson, rotated reference)

 Cluster corrected energies          -214.16061475 (Pople, fixed reference)
 Cluster corrected energies          -214.16027804 (Pople, relaxed reference)
 Cluster corrected energies          -214.16061475 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95758819 (fixed)   0.95777643 (relaxed)   0.95764011 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128944   -0.00257606   -0.67307195
 Singles      0.02089052   -0.06671557   -0.07649904
 Pairs        0.06824389   -0.00000000   -0.05004723
 Total        1.09042385   -0.06929162   -0.79961822
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15554576
 Nuclear energy                         0.00000000
 Kinetic energy                        83.15055179
 One electron energy                 -372.38251766
 Two electron energy                  158.42735368
 Virial quotient                       -2.57310576
 Correlation energy                    -0.79961822
 !MRCI STATE 7.1 Energy              -213.955163979415

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02746854 (Davidson, fixed reference)
 Cluster corrected energies          -214.02722037 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02746854 (Davidson, rotated reference)

 Cluster corrected energies          -214.02609109 (Pople, fixed reference)
 Cluster corrected energies          -214.02582868 (Pople, relaxed reference)
 Cluster corrected energies          -214.02609109 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.95758815 (fixed)   0.95777640 (relaxed)   0.95764008 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128944   -0.00257606   -0.67307186
 Singles      0.02089059   -0.06671562   -0.07649908
 Pairs        0.06824390   -0.00000000   -0.05004727
 Total        1.09042392   -0.06929168   -0.79961822
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15554576
 Nuclear energy                         0.00000000
 Kinetic energy                        83.15054997
 One electron energy                 -372.38251752
 Two electron energy                  158.42735354
 Virial quotient                       -2.57310582
 Correlation energy                    -0.79961822
 !MRCI STATE 8.1 Energy              -213.955163978743

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02746859 (Davidson, fixed reference)
 Cluster corrected energies          -214.02722042 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02746859 (Davidson, rotated reference)

 Cluster corrected energies          -214.02609115 (Pople, fixed reference)
 Cluster corrected energies          -214.02582874 (Pople, relaxed reference)
 Cluster corrected energies          -214.02609115 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95764009 (fixed)   0.95777643 (relaxed)   0.95764012 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00128943   -0.00257605   -0.67307194
 Singles      0.02089051   -0.06671555   -0.07649901
 Pairs        0.06824390    0.00000000   -0.05004724
 Total        1.09042384   -0.06929161   -0.79961819
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.15554576
 Nuclear energy                         0.00000000
 Kinetic energy                        83.15054997
 One electron energy                 -372.38251633
 Two electron energy                  158.42735238
 Virial quotient                       -2.57310582
 Correlation energy                    -0.79961819
 !MRCI STATE 9.1 Energy              -213.955163949712

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.02746850 (Davidson, fixed reference)
 Cluster corrected energies          -214.02722032 (Davidson, relaxed reference)
 Cluster corrected energies          -214.02746850 (Davidson, rotated reference)

 Cluster corrected energies          -214.02609105 (Pople, fixed reference)
 Cluster corrected energies          -214.02582864 (Pople, relaxed reference)
 Cluster corrected energies          -214.02609105 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95304127 (fixed)   0.95514529 (relaxed)   0.95497675 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137083   -0.00261930   -0.67554890
 Singles      0.02497592   -0.07173756   -0.08389693
 Pairs        0.07016781    0.00000000   -0.05192868
 Total        1.09651456   -0.07435686   -0.81137451
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.11336595
 Nuclear energy                         0.00000000
 Kinetic energy                        83.22086394
 One electron energy                 -372.84938089
 Two electron energy                  158.92543479
 Virial quotient                       -2.57055666
 Correlation energy                    -0.81058015
 !MRCI STATE 10.1 Energy             -213.923946094458

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00217888 (Davidson, fixed reference)
 Cluster corrected energies          -214.00186523 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00217888 (Davidson, rotated reference)

 Cluster corrected energies          -214.00109452 (Pople, fixed reference)
 Cluster corrected energies          -214.00075942 (Pople, relaxed reference)
 Cluster corrected energies          -214.00109452 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.91046164 (fixed)   0.95514505 (relaxed)   0.95497651 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137082   -0.00261930   -0.67554903
 Singles      0.02497637   -0.07173794   -0.08389729
 Pairs        0.07016793    0.00000094   -0.05192815
 Total        1.09651512   -0.07435629   -0.81137447
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.11336594
 Nuclear energy                         0.00000000
 Kinetic energy                        83.22085217
 One electron energy                 -372.84936837
 Two electron energy                  158.92542231
 Virial quotient                       -2.57055702
 Correlation energy                    -0.81058011
 !MRCI STATE 11.1 Energy             -213.923946055969

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00217930 (Davidson, fixed reference)
 Cluster corrected energies          -214.00186565 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00217930 (Davidson, rotated reference)

 Cluster corrected energies          -214.00109497 (Pople, fixed reference)
 Cluster corrected energies          -214.00075987 (Pople, relaxed reference)
 Cluster corrected energies          -214.00109497 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95304130 (fixed)   0.95514532 (relaxed)   0.95497678 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137082   -0.00261929   -0.67554888
 Singles      0.02497590   -0.07173757   -0.08389688
 Pairs        0.07016778   -0.00000000   -0.05192870
 Total        1.09651450   -0.07435686   -0.81137447
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.11336595
 Nuclear energy                         0.00000000
 Kinetic energy                        83.22086528
 One electron energy                 -372.84938128
 Two electron energy                  158.92543523
 Virial quotient                       -2.57055662
 Correlation energy                    -0.81058010
 !MRCI STATE 12.1 Energy             -213.923946050562

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00217878 (Davidson, fixed reference)
 Cluster corrected energies          -214.00186513 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00217878 (Davidson, rotated reference)

 Cluster corrected energies          -214.00109442 (Pople, fixed reference)
 Cluster corrected energies          -214.00075932 (Pople, relaxed reference)
 Cluster corrected energies          -214.00109442 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95304139 (fixed)   0.95514541 (relaxed)   0.95497686 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137084   -0.00261929   -0.67554906
 Singles      0.02497570   -0.07173730   -0.08389650
 Pairs        0.07016777   -0.00000000   -0.05192869
 Total        1.09651432   -0.07435659   -0.81137425
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.11336595
 Nuclear energy                         0.00000000
 Kinetic energy                        83.22086665
 One electron energy                 -372.84938450
 Two electron energy                  158.92543867
 Virial quotient                       -2.57055657
 Correlation energy                    -0.81057989
 !MRCI STATE 13.1 Energy             -213.923945836566

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00217840 (Davidson, fixed reference)
 Cluster corrected energies          -214.00186474 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00217840 (Davidson, rotated reference)

 Cluster corrected energies          -214.00109403 (Pople, fixed reference)
 Cluster corrected energies          -214.00075891 (Pople, relaxed reference)
 Cluster corrected energies          -214.00109403 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.91046175 (fixed)   0.95514523 (relaxed)   0.95497667 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00137085   -0.00261930   -0.67555336
 Singles      0.02497585   -0.07173747   -0.08389655
 Pairs        0.07016803    0.00000528   -0.05192422
 Total        1.09651473   -0.07435149   -0.81137414
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.11336595
 Nuclear energy                         0.00000000
 Kinetic energy                        83.22085174
 One electron energy                 -372.84937449
 Two electron energy                  158.92542877
 Virial quotient                       -2.57055703
 Correlation energy                    -0.81057977
 !MRCI STATE 14.1 Energy             -213.923945719711

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -214.00217861 (Davidson, fixed reference)
 Cluster corrected energies          -214.00186494 (Davidson, relaxed reference)
 Cluster corrected energies          -214.00217861 (Davidson, rotated reference)

 Cluster corrected energies          -214.00109426 (Pople, fixed reference)
 Cluster corrected energies          -214.00075914 (Pople, relaxed reference)
 Cluster corrected energies          -214.00109426 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95257999 (fixed)   0.95367517 (relaxed)   0.95348355 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00136535   -0.00248391   -0.00342771
 Singles      0.02576606   -0.06879682   -0.08163701
 Pairs        0.07282024   -0.74348516   -0.72987489
 Total        1.09995165   -0.81476588   -0.81493961
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -213.08867766
 Nuclear energy                         0.00000000
 Kinetic energy                        83.25502013
 One electron energy                 -373.06446139
 Two electron energy                  159.16121555
 Virial quotient                       -2.56925343
 Correlation energy                    -0.81456818
 !MRCI STATE 15.1 Energy             -213.903245840727

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -213.98466327 (Davidson, fixed reference)
 Cluster corrected energies          -213.98430324 (Davidson, relaxed reference)
 Cluster corrected energies          -213.98466327 (Davidson, rotated reference)

 Cluster corrected energies          -213.98377490 (Pople, fixed reference)
 Cluster corrected energies          -213.98338799 (Pople, relaxed reference)
 Cluster corrected energies          -213.98377490 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     4398.21       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15490.15   7011.77   8472.25      3.81      0.34      1.74
 REAL TIME  *     15936.47 SEC
 DISK USED  *         4.35 GB (local),       52.37 GB (total)
 SF USED    *        23.38 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -214.19974484  AU                              
 SETTING HLSDIAG(14)    =      -214.19974497  AU                              
 SETTING HLSDIAG(15)    =      -214.19974488  AU                              
 SETTING HLSDIAG(16)    =      -214.19974485  AU                              
 SETTING HLSDIAG(17)    =      -214.19974493  AU                              
 SETTING HLSDIAG(18)    =      -214.16203026  AU                              
 SETTING HLSDIAG(19)    =      -214.02746854  AU                              
 SETTING HLSDIAG(20)    =      -214.02746859  AU                              
 SETTING HLSDIAG(21)    =      -214.02746850  AU                              
 SETTING HLSDIAG(22)    =      -214.00217888  AU                              
 SETTING HLSDIAG(23)    =      -214.00217930  AU                              
 SETTING HLSDIAG(24)    =      -214.00217878  AU                              
 SETTING HLSDIAG(25)    =      -214.00217840  AU                              
 SETTING HLSDIAG(26)    =      -214.00217861  AU                              
 SETTING HLSDIAG(27)    =      -213.98466327  AU                              


         HLSDIAG
    -214.2252872
    -214.2252872
    -214.2252872
    -214.0210384
    -214.0210384
    -214.0210378
    -214.0210379
    -214.0210378
    -214.0122244
    -214.0123194
    -214.0123194
    -214.0123194
    -214.1997448
    -214.1997450
    -214.1997449
    -214.1997448
    -214.1997449
    -214.1620303
    -214.0274685
    -214.0274686
    -214.0274685
    -214.0021789
    -214.0021793
    -214.0021788
    -214.0021784
    -214.0021786
    -213.9846633
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 1.0  NSTATE=  12

 Original energies:   -214.153915   -214.153915   -214.153915   -213.948441   -213.948441   -213.948440   -213.948440   -213.948440
                      -213.938780   -213.937557   -213.937557   -213.937557
 Replaced energies:   -214.225287   -214.225287   -214.225287   -214.021038   -214.021038   -214.021038   -214.021038   -214.021038
                      -214.012224   -214.012319   -214.012319   -214.012319

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  15

 Original energies:   -214.125095   -214.125095   -214.125095   -214.125095   -214.125095   -214.089686   -213.955164   -213.955164
                      -213.955164   -213.923946   -213.923946   -213.923946   -213.923946   -213.923946   -213.903246
 Replaced energies:   -214.199745   -214.199745   -214.199745   -214.199745   -214.199745   -214.162030   -214.027469   -214.027469
                      -214.027468   -214.002179   -214.002179   -214.002179   -214.002178   -214.002179   -213.984663



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -214.22528721

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.58     730.06     163.94    -382.74       0.01    -325.84      51.01     585.53      -0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.58      -0.00    -798.20     149.94    -350.07       0.01     356.30     -55.37     535.54       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -730.06     798.20       0.00       0.12      -0.29       0.00     -75.29    -482.83       0.43      -0.01

    4   4.1  1.0  1.0       0.00       0.00       0.00   44827.42       0.00       0.00       0.00       0.00       0.00       0.00
                         -163.94    -149.94      -0.12       0.00       0.03    1436.72       0.00      -0.00       0.00     191.57

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   44827.43       0.00       0.00       0.00       0.00       0.00
                          382.74     350.07       0.29      -0.03       0.00     615.38      -0.01      -0.01      -0.00    -447.25

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   44827.55       0.00       0.00       0.00       0.00
                           -0.01      -0.01      -0.00   -1436.72    -615.38      -0.00      -0.01       0.01      -0.00       0.01

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   44827.55       0.00       0.00       0.00
                          325.84    -356.30      75.29      -0.00       0.01       0.01       0.00     781.48      -0.00      -0.01

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   44827.55       0.00       0.00
                          -51.01      55.37     482.83       0.00       0.01      -0.01    -781.48      -0.00       0.00       0.01

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   46761.88       0.00
                         -585.53    -535.54      -0.43      -0.00       0.00       0.00       0.00      -0.00      -0.00     696.42

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   46741.03
                            0.00      -0.00       0.01    -191.57     447.25      -0.01       0.01      -0.01    -696.42      -0.00

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          287.36    -314.24      66.34       0.00      -0.01      -0.00      -0.06    -421.37       0.00       0.01

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -44.94      48.80     425.82       0.00      -0.01      -0.00     421.37      -0.06       0.01      -0.01

   13   1.1  1.0  0.0      -0.00     117.85     557.72     264.17     -31.57     -36.06     254.97       0.00    -374.13      31.81
                            0.00    -755.76      86.68     -24.95     -33.35    -230.40       0.00    -254.97     -58.57    -203.19

   14   2.1  1.0  0.0    -117.85       0.00     510.02    -288.87      34.51      39.16     233.21       0.00     409.12     -34.54
                          755.76       0.00      79.84      27.09      36.20     251.95       0.00    -233.21      63.59     222.20

   15   3.1  1.0  0.0    -557.72    -510.02      -0.00      61.04      -7.29     341.41       0.19       0.00     -86.45    -301.09
                          -86.68     -79.84       0.00     236.23     315.62     -53.24       0.00      -0.19     554.39     -46.95

   16   4.1  1.0  0.0    -264.17     288.87     -61.04      -0.00       0.00      -0.00       0.00     131.12       0.00       0.00
                           24.95     -27.09    -236.23       0.00       0.01      -0.00    -884.80       0.00      -0.00      -0.00

   17   5.1  1.0  0.0      31.57     -34.51       7.29      -0.00       0.00      -0.01      -0.01    1097.38      -0.00      -0.01
                           33.35     -36.20    -315.62      -0.01       0.00       0.01     662.24      -0.01       0.00      -0.01

   18   6.1  1.0  0.0      36.06     -39.16    -341.41       0.00       0.01       0.00    -552.59      -0.02      -0.00      -0.00
                          230.40    -251.95      53.24       0.00      -0.01      -0.00      -0.02    -552.59      -0.00      -0.00

   19   7.1  1.0  0.0    -254.97    -233.21      -0.19      -0.00       0.01     552.59      -0.00       0.02       0.00     297.95
                           -0.00      -0.00      -0.00     884.80    -662.24       0.02       0.00       0.01      -0.00       0.00

   20   8.1  1.0  0.0      -0.00      -0.00      -0.00    -131.12   -1097.38       0.02      -0.02       0.00      -0.00       0.00
                          254.97     233.21       0.19      -0.00       0.01     552.59      -0.01      -0.00      -0.00    -297.95

   21   9.1  1.0  0.0     374.13    -409.12      86.45      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.01
                           58.57     -63.59    -554.39       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   22  10.1  1.0  0.0     -31.81      34.54     301.09      -0.00       0.01       0.00    -297.95      -0.00       0.01       0.00
                          203.19    -222.20      46.95       0.00       0.01       0.00      -0.00     297.95       0.00       0.00

   23  11.1  1.0  0.0     224.86     205.66       0.16       0.05      -0.00     297.95       0.00      -0.00      -0.07     598.31
                            0.03       0.03      -0.00     206.16     275.44      -0.04       0.00      -0.01     492.44       0.08

   24  12.1  1.0  0.0       0.03       0.03      -0.00    -341.62      40.82       0.04       0.00      -0.00     492.44       0.08
                         -224.86    -205.66      -0.17       0.03       0.04     297.95       0.00      -0.00       0.07    -598.30

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

   37   1.1  0.0  0.0     553.88     506.19       1.75       0.36       2.96    -363.29       0.62       0.33       0.00     272.23
                           -3.12      -1.15      -0.29    -581.69     435.37      -1.50       0.54       0.62       0.00      -1.12

   38   2.1  0.0  0.0    -355.00     388.21     -79.54      -0.34      -2.85      -0.00       1.19     573.47      -0.00       0.00
                           90.14     -93.47    -848.37      -0.01       0.01       1.44     -99.64       1.19       0.00       1.08

   39   3.1  0.0  0.0     -78.49      83.31     741.56       0.17       1.45       0.63     363.29      -2.24       0.00      -0.47
                         -501.73     546.42    -112.74       1.00      -0.74      -0.73      -0.27     363.29      -0.00      -0.55

   40   4.1  0.0  0.0      -3.52      -0.71      -1.81      86.20     721.44       1.48      -0.72       2.27       0.00      -1.12
                         -552.31    -507.89      -3.54       2.39      -1.79    -363.29      -0.39      -0.73      -0.00    -272.23

   41   5.1  0.0  0.0    -455.51     498.94    -105.97       0.00      -0.00      -0.27      -0.30    -446.15      -0.00       0.20
                          -12.00      13.01     117.50      -0.43       0.33      -0.00    -719.72      -0.30      -0.00      -0.00

   42   6.1  0.0  0.0    -815.32     891.57    -188.39      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                         -127.63     138.58    1208.16       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   43   7.1  0.0  0.0       2.67       2.43      -0.03     632.34     -75.55      -5.74      -0.06       0.00    -903.44      -3.08
                         -255.64    -233.77      -0.19      -3.97      -5.32    -551.52      -0.00       0.06      -9.41     296.01

   44   8.1  0.0  0.0     255.61     233.81       0.25      -6.58       0.78    -551.52       0.11      -0.00       9.41    -296.01
                            2.71       2.38       0.01    -381.60    -509.85       5.75      -0.01      -0.10    -903.44      -3.08

   45   9.1  0.0  0.0     -36.21      39.22     342.30       0.06      -0.02       0.11     551.55       0.00      -0.09       0.06
                          230.97    -252.62      53.38       0.07       0.09      -0.06       0.00    -551.55       0.18       0.03

   46  10.1  0.0  0.0    -244.25    -223.41      -0.19      -0.02      -0.19    -286.07       0.01       0.08      -0.00    -608.75
                           -0.08      -0.08       0.05    -458.05     342.83       0.08       0.04       0.01      -0.00      -0.20

   47  11.1  0.0  0.0      27.79     -30.33       6.39      -0.00       0.01       0.04       0.02     568.74       0.00       0.08
                          -36.50      39.63     345.69       0.06      -0.05       0.00     230.40       0.02      -0.00      -0.00

   48  12.1  0.0  0.0      -0.08      -0.07      -0.01      67.88     568.10      -0.10       0.02      -0.01      -0.00      -0.20
                          244.26     223.40       0.18      -0.15       0.11    -286.07       0.00       0.01       0.00     608.75

   49  13.1  0.0  0.0      34.63     -37.58    -327.04      -0.00      -0.02       0.01     286.07      -0.06      -0.00       0.03
                          220.71    -241.36      51.02       0.02      -0.01       0.01      -0.17     286.07       0.00      -0.01

   50  14.1  0.0  0.0    -253.34     277.03     -58.63      -0.00      -0.00       0.00       0.08      62.32      -0.00      -0.01
                           16.13     -17.51    -152.06       0.00      -0.01       0.00     523.71       0.08       0.00      -0.00

   51  15.1  0.0  0.0     405.89    -443.85      93.79       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.01
                           63.54     -68.99    -601.47      -0.00       0.00       0.00       0.00      -0.00       0.00       0.01


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.00       0.00      -0.00    -117.85    -557.72    -264.17      31.57      36.06    -254.97      -0.00
                         -287.36      44.94      -0.00    -755.76      86.68     -24.95     -33.35    -230.40       0.00    -254.97

    2   2.1  1.0  1.0       0.00       0.00     117.85       0.00    -510.02     288.87     -34.51     -39.16    -233.21      -0.00
                          314.24     -48.80     755.76      -0.00      79.84      27.09      36.20     251.95       0.00    -233.21

    3   3.1  1.0  1.0       0.00       0.00     557.72     510.02      -0.00     -61.04       7.29    -341.41      -0.19      -0.00
                          -66.34    -425.82     -86.68     -79.84      -0.00     236.23     315.62     -53.24       0.00      -0.19

    4   4.1  1.0  1.0       0.00       0.00     264.17    -288.87      61.04      -0.00      -0.00       0.00      -0.00    -131.12
                           -0.00      -0.00      24.95     -27.09    -236.23      -0.00       0.01      -0.00    -884.80       0.00

    5   5.1  1.0  1.0       0.00       0.00     -31.57      34.51      -7.29       0.00       0.00       0.01       0.01   -1097.38
                            0.01       0.01      33.35     -36.20    -315.62      -0.01      -0.00       0.01     662.24      -0.01

    6   6.1  1.0  1.0       0.00       0.00     -36.06      39.16     341.41      -0.00      -0.01       0.00     552.59       0.02
                            0.00       0.00     230.40    -251.95      53.24       0.00      -0.01       0.00      -0.02    -552.59

    7   7.1  1.0  1.0       0.00       0.00     254.97     233.21       0.19       0.00      -0.01    -552.59      -0.00      -0.02
                            0.06    -421.37      -0.00      -0.00      -0.00     884.80    -662.24       0.02      -0.00       0.01

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00     131.12    1097.38      -0.02       0.02       0.00
                          421.37       0.06     254.97     233.21       0.19      -0.00       0.01     552.59      -0.01       0.00

    9   9.1  1.0  1.0       0.00       0.00    -374.13     409.12     -86.45       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.01      58.57     -63.59    -554.39       0.00      -0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0       0.00       0.00      31.81     -34.54    -301.09       0.00      -0.01      -0.00     297.95       0.00
                           -0.01       0.01     203.19    -222.20      46.95       0.00       0.01       0.00      -0.00     297.95

   11  11.1  1.0  1.0   46741.02       0.00    -224.86    -205.66      -0.16      -0.05       0.00    -297.95      -0.00       0.00
                            0.00     846.13       0.03       0.03      -0.00     206.16     275.44      -0.04       0.00      -0.01

   12  12.1  1.0  1.0       0.00   46741.03      -0.03      -0.03       0.00     341.62     -40.82      -0.04      -0.00       0.00
                         -846.13      -0.00    -224.86    -205.66      -0.17       0.03       0.04     297.95       0.00      -0.00

   13   1.1  1.0  0.0    -224.86      -0.03       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03     224.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  0.0    -205.66      -0.03       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03     205.66      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  0.0      -0.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.17      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  0.0      -0.05     341.62       0.00       0.00       0.00   44827.42       0.00       0.00       0.00       0.00
                         -206.16      -0.03      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  0.0       0.00     -40.82       0.00       0.00       0.00       0.00   44827.43       0.00       0.00       0.00
                         -275.44      -0.04      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  0.0    -297.95      -0.04       0.00       0.00       0.00       0.00       0.00   44827.55       0.00       0.00
                            0.04    -297.95      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   7.1  1.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   44827.55       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   44827.55
                            0.01       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   9.1  1.0  0.0       0.07    -492.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -492.44      -0.07      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22  10.1  1.0  0.0    -598.31      -0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.08     598.30      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23  11.1  1.0  0.0       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24  12.1  1.0  0.0       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   1.1  1.0 -1.0       0.00       0.00      -0.00     117.85     557.72     264.17     -31.57     -36.06     254.97       0.00
                           -0.00      -0.00       0.00    -755.76      86.68     -24.95     -33.35    -230.40       0.00    -254.97

   26   2.1  1.0 -1.0       0.00       0.00    -117.85       0.00     510.02    -288.87      34.51      39.16     233.21       0.00
                           -0.00      -0.00     755.76       0.00      79.84      27.09      36.20     251.95       0.00    -233.21

   27   3.1  1.0 -1.0       0.00       0.00    -557.72    -510.02      -0.00      61.04      -7.29     341.41       0.19       0.00
                           -0.00      -0.00     -86.68     -79.84       0.00     236.23     315.62     -53.24       0.00      -0.19

   28   4.1  1.0 -1.0       0.00       0.00    -264.17     288.87     -61.04      -0.00       0.00      -0.00       0.00     131.12
                           -0.00      -0.00      24.95     -27.09    -236.23       0.00       0.01      -0.00    -884.80       0.00

   29   5.1  1.0 -1.0       0.00       0.00      31.57     -34.51       7.29      -0.00       0.00      -0.01      -0.01    1097.38
                           -0.00      -0.00      33.35     -36.20    -315.62      -0.01       0.00       0.01     662.24      -0.01

   30   6.1  1.0 -1.0       0.00       0.00      36.06     -39.16    -341.41       0.00       0.01       0.00    -552.59      -0.02
                           -0.00      -0.00     230.40    -251.95      53.24       0.00      -0.01      -0.00      -0.02    -552.59

   31   7.1  1.0 -1.0       0.00       0.00    -254.97    -233.21      -0.19      -0.00       0.01     552.59      -0.00       0.02
                           -0.00      -0.00      -0.00      -0.00      -0.00     884.80    -662.24       0.02       0.00       0.01

   32   8.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00    -131.12   -1097.38       0.02      -0.02       0.00
                           -0.00      -0.00     254.97     233.21       0.19      -0.00       0.01     552.59      -0.01      -0.00

   33   9.1  1.0 -1.0       0.00       0.00     374.13    -409.12      86.45      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      58.57     -63.59    -554.39       0.00      -0.00       0.00       0.00       0.00

   34  10.1  1.0 -1.0       0.00       0.00     -31.81      34.54     301.09      -0.00       0.01       0.00    -297.95      -0.00
                           -0.00      -0.00     203.19    -222.20      46.95       0.00       0.01       0.00      -0.00     297.95

   35  11.1  1.0 -1.0       0.00       0.00     224.86     205.66       0.16       0.05      -0.00     297.95       0.00      -0.00
                           -0.00      -0.00       0.03       0.03      -0.00     206.16     275.44      -0.04       0.00      -0.01

   36  12.1  1.0 -1.0       0.00       0.00       0.03       0.03      -0.00    -341.62      40.82       0.04       0.00      -0.00
                           -0.00      -0.00    -224.86    -205.66      -0.17       0.03       0.04     297.95       0.00      -0.00

   37   1.1  0.0  0.0      -0.47       0.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.47     706.48    -773.80     167.80      -1.62      -0.69       0.28      -2.11     513.77

   38   2.1  0.0  0.0      -0.86    -193.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          311.37      -0.85    -339.98    -311.84      -4.40      -3.08      -1.34    -951.92       2.04       0.01

   39   3.1  0.0  0.0    -272.23       0.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.01    -272.23       0.36       3.22       1.83    -944.54    -404.57       2.79      -1.04      -0.88

   40   4.1  0.0  0.0       0.55      -0.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.24       0.55    -115.02     122.19    1047.79       1.89       0.82      -3.77    -513.76      -2.11

   41   5.1  0.0  0.0       0.26    -248.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -43.11       0.22     838.16     765.56       0.74       0.78       0.33    -386.88      -0.00       0.38

   42   6.1  0.0  0.0       0.06    -395.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -395.72      -0.06   -1276.02   -1167.08      -0.93      -0.00      -0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.03      47.73     -51.80    -484.84       0.04      -0.10       0.00     779.96      -8.12

   44   8.1  0.0  0.0       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.06    -327.19     357.79     -70.44      -0.07       0.15      -0.00      -8.12    -779.96

   45   9.1  0.0  0.0     296.03       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04    -296.03       0.07      -0.08      -0.03    -354.62     827.92      -0.02       0.09       0.14

   46  10.1  0.0  0.0       0.03       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09       0.02    -312.11     341.39     -71.97      -0.03      -0.01      -0.06       0.13     404.57

   47  11.1  0.0  0.0       0.03      76.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -643.41      -0.05     321.69     294.14       0.25      -0.05      -0.03    -478.49       0.00      -0.05

   48  12.1  0.0  0.0       0.02      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01      48.76     -52.94    -462.56      -0.02      -0.00       0.00    -404.57       0.13

   49  13.1  0.0  0.0     608.75       0.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.12     608.75      -0.08      -0.09       0.01    -743.78    -318.58      -0.15       0.01      -0.01

   50  14.1  0.0  0.0       0.27    -698.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          283.06       0.21     235.87     215.73       0.18      -0.22      -0.08     652.50       0.00      -0.00

   51  15.1  0.0  0.0      -0.14    1023.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1023.33       0.14     635.24     581.02       0.47       0.00       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0     374.13     -31.81     224.86       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                          -58.57    -203.19      -0.03     224.86       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0    -409.12      34.54     205.66       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                           63.59     222.20      -0.03     205.66       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0      86.45     301.09       0.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          554.39     -46.95       0.00       0.17       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0      -0.00      -0.00       0.05    -341.62       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -206.16      -0.03       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0       0.00       0.01      -0.00      40.82       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.01    -275.44      -0.04       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0       0.00       0.00     297.95       0.04       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.04    -297.95       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.0  1.0      -0.00    -297.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -297.95       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.0  1.0      -0.00       0.01      -0.07     492.44       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -492.44      -0.07       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.0  1.0      -0.01       0.00     598.31       0.08       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.08     598.30       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.0  1.0       0.07    -598.31       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                          492.44       0.08       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.0  1.0    -492.44      -0.08      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.07    -598.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00    -117.85    -557.72    -264.17      31.57      36.06
                            0.00       0.00       0.00       0.00      -0.00    -755.76      86.68     -24.95     -33.35    -230.40

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00     117.85       0.00    -510.02     288.87     -34.51     -39.16
                            0.00       0.00       0.00       0.00     755.76      -0.00      79.84      27.09      36.20     251.95

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00     557.72     510.02      -0.00     -61.04       7.29    -341.41
                            0.00       0.00       0.00       0.00     -86.68     -79.84      -0.00     236.23     315.62     -53.24

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00     264.17    -288.87      61.04      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      24.95     -27.09    -236.23      -0.00       0.01      -0.00

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00     -31.57      34.51      -7.29       0.00       0.00       0.01
                            0.00       0.00       0.00       0.00      33.35     -36.20    -315.62      -0.01      -0.00       0.01

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00     -36.06      39.16     341.41      -0.00      -0.01       0.00
                            0.00       0.00       0.00       0.00     230.40    -251.95      53.24       0.00      -0.01       0.00

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00     254.97     233.21       0.19       0.00      -0.01    -552.59
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     884.80    -662.24       0.02

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     131.12    1097.38      -0.02
                            0.00       0.00       0.00       0.00     254.97     233.21       0.19      -0.00       0.01     552.59

   21   9.1  1.0  0.0   46761.88       0.00       0.00       0.00    -374.13     409.12     -86.45       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      58.57     -63.59    -554.39       0.00      -0.00       0.00

   22  10.1  1.0  0.0       0.00   46741.03       0.00       0.00      31.81     -34.54    -301.09       0.00      -0.01      -0.00
                           -0.00       0.00       0.00       0.00     203.19    -222.20      46.95       0.00       0.01       0.00

   23  11.1  1.0  0.0       0.00       0.00   46741.02       0.00    -224.86    -205.66      -0.16      -0.05       0.00    -297.95
                           -0.00      -0.00       0.00       0.00       0.03       0.03      -0.00     206.16     275.44      -0.04

   24  12.1  1.0  0.0       0.00       0.00       0.00   46741.03      -0.03      -0.03       0.00     341.62     -40.82      -0.04
                           -0.00      -0.00      -0.00       0.00    -224.86    -205.66      -0.17       0.03       0.04     297.95

   25   1.1  1.0 -1.0    -374.13      31.81    -224.86      -0.03       0.01       0.00       0.00       0.00       0.00       0.00
                          -58.57    -203.19      -0.03     224.86       0.00       0.58    -730.06    -163.94     382.74      -0.01

   26   2.1  1.0 -1.0     409.12     -34.54    -205.66      -0.03       0.00       0.01       0.00       0.00       0.00       0.00
                           63.59     222.20      -0.03     205.66      -0.58       0.00     798.20    -149.94     350.07      -0.01

   27   3.1  1.0 -1.0     -86.45    -301.09      -0.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          554.39     -46.95       0.00       0.17     730.06    -798.20      -0.00      -0.12       0.29      -0.00

   28   4.1  1.0 -1.0       0.00       0.00      -0.05     341.62       0.00       0.00       0.00   44827.42       0.00       0.00
                           -0.00      -0.00    -206.16      -0.03     163.94     149.94       0.12      -0.00      -0.03   -1436.72

   29   5.1  1.0 -1.0      -0.00      -0.01       0.00     -40.82       0.00       0.00       0.00       0.00   44827.43       0.00
                            0.00      -0.01    -275.44      -0.04    -382.74    -350.07      -0.29       0.03      -0.00    -615.38

   30   6.1  1.0 -1.0      -0.00      -0.00    -297.95      -0.04       0.00       0.00       0.00       0.00       0.00   44827.55
                           -0.00      -0.00       0.04    -297.95       0.01       0.01       0.00    1436.72     615.38       0.00

   31   7.1  1.0 -1.0       0.00     297.95      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -325.84     356.30     -75.29       0.00      -0.01      -0.01

   32   8.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -297.95       0.01       0.00      51.01     -55.37    -482.83      -0.00      -0.01       0.01

   33   9.1  1.0 -1.0      -0.00      -0.01       0.07    -492.44       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -492.44      -0.07     585.53     535.54       0.43       0.00      -0.00      -0.00

   34  10.1  1.0 -1.0       0.01       0.00    -598.31      -0.08       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.08     598.30      -0.00       0.00      -0.01     191.57    -447.25       0.01

   35  11.1  1.0 -1.0      -0.07     598.31       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                          492.44       0.08      -0.00      -0.00    -287.36     314.24     -66.34      -0.00       0.01       0.00

   36  12.1  1.0 -1.0     492.44       0.08       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.07    -598.30       0.00      -0.00      44.94     -48.80    -425.82      -0.00       0.01       0.00

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00     553.88     506.19       1.75       0.36       2.96    -363.29
                            0.00      -0.30      -1.63     384.99       3.12       1.15       0.29     581.69    -435.37       1.50

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00    -355.00     388.21     -79.54      -0.34      -2.85      -0.00
                           -0.00    -167.37       1.53       0.01     -90.14      93.47     848.37       0.01      -0.01      -1.44

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00     -78.49      83.31     741.56       0.17       1.45       0.63
                           -0.00       0.88      -0.77      -0.66     501.73    -546.42     112.74      -1.00       0.74       0.73

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00      -3.52      -0.71      -1.81      86.20     721.44       1.48
                            0.00      -0.67    -384.99      -1.63     552.31     507.89       3.54      -2.39       1.79     363.29

   41   5.1  0.0  0.0       0.00       0.00       0.00       0.00    -455.51     498.94    -105.97       0.00      -0.00      -0.27
                            0.00     411.83      -0.01       0.28      12.00     -13.01    -117.50       0.43      -0.33       0.00

   42   6.1  0.0  0.0       0.00       0.00       0.00       0.00    -815.32     891.57    -188.39      -0.00      -0.00       0.00
                           -0.00    -559.63       0.00       0.01     127.63    -138.58   -1208.16      -0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00       0.00       0.00       2.67       2.43      -0.03     632.34     -75.55      -5.74
                            0.13      -0.00    -418.63       4.30     255.64     233.77       0.19       3.97       5.32     551.52

   44   8.1  0.0  0.0       0.00       0.00       0.00       0.00     255.61     233.81       0.25      -6.58       0.78    -551.52
                           -0.25       0.00       4.30     418.63      -2.71      -2.38      -0.01     381.60     509.85      -5.75

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00     -36.21      39.22     342.30       0.06      -0.02       0.11
                        -1277.72       0.00      -0.04      -0.08    -230.97     252.62     -53.38      -0.07      -0.09       0.06

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00    -244.25    -223.41      -0.19      -0.02      -0.19    -286.07
                           -0.00       0.10      -0.16    -860.90       0.08       0.08      -0.05     458.05    -342.83      -0.08

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00      27.79     -30.33       6.39      -0.00       0.01       0.04
                            0.00     801.64      -0.01       0.11      36.50     -39.63    -345.69      -0.06       0.05      -0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.08      -0.07      -0.01      67.88     568.10      -0.10
                           -0.00       0.01     860.90      -0.16    -244.26    -223.40      -0.18       0.15      -0.11     286.07

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00      34.63     -37.58    -327.04      -0.00      -0.02       0.01
                           -0.00      -0.22      -0.02       0.03    -220.71     241.36     -51.02      -0.02       0.01      -0.01

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00    -253.34     277.03     -58.63      -0.00      -0.00       0.00
                            0.00     587.85      -0.01      -0.01     -16.13      17.51     152.06      -0.00       0.01      -0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00     405.89    -443.85      93.79       0.00      -0.00      -0.00
                            0.00    1447.21      -0.01      -0.02     -63.54      68.99     601.47       0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     553.88    -355.00     -78.49      -3.52
                            0.00       0.00       0.00       0.00       0.00       0.00       3.12     -90.14     501.73     552.31

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     506.19     388.21      83.31      -0.71
                            0.00       0.00       0.00       0.00       0.00       0.00       1.15      93.47    -546.42     507.89

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.75     -79.54     741.56      -1.81
                            0.00       0.00       0.00       0.00       0.00       0.00       0.29     848.37     112.74       3.54

    4   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.36      -0.34       0.17      86.20
                            0.00       0.00       0.00       0.00       0.00       0.00     581.69       0.01      -1.00      -2.39

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.96      -2.85       1.45     721.44
                            0.00       0.00       0.00       0.00       0.00       0.00    -435.37      -0.01       0.74       1.79

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -363.29      -0.00       0.63       1.48
                            0.00       0.00       0.00       0.00       0.00       0.00       1.50      -1.44       0.73     363.29

    7   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.62       1.19     363.29      -0.72
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.54      99.64       0.27       0.39

    8   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.33     573.47      -2.24       2.27
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.62      -1.19    -363.29       0.73

    9   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   10  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     272.23       0.00      -0.47      -1.12
                            0.00       0.00       0.00       0.00       0.00       0.00       1.12      -1.08       0.55     272.23

   11  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.47      -0.86    -272.23       0.55
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.03    -311.37       1.01      -1.24

   12  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.18    -193.02       0.39      -0.76
                            0.00       0.00       0.00       0.00       0.00       0.00       0.47       0.85     272.23      -0.55

   13   1.1  1.0  0.0    -254.97      -0.00     374.13     -31.81     224.86       0.03       0.00       0.00       0.00       0.00
                            0.00    -254.97     -58.57    -203.19      -0.03     224.86    -706.48     339.98      -0.36     115.02

   14   2.1  1.0  0.0    -233.21      -0.00    -409.12      34.54     205.66       0.03       0.00       0.00       0.00       0.00
                            0.00    -233.21      63.59     222.20      -0.03     205.66     773.80     311.84      -3.22    -122.19

   15   3.1  1.0  0.0      -0.19      -0.00      86.45     301.09       0.16      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.19     554.39     -46.95       0.00       0.17    -167.80       4.40      -1.83   -1047.79

   16   4.1  1.0  0.0      -0.00    -131.12      -0.00      -0.00       0.05    -341.62       0.00       0.00       0.00       0.00
                         -884.80       0.00      -0.00      -0.00    -206.16      -0.03       1.62       3.08     944.54      -1.89

   17   5.1  1.0  0.0       0.01   -1097.38       0.00       0.01      -0.00      40.82       0.00       0.00       0.00       0.00
                          662.24      -0.01       0.00      -0.01    -275.44      -0.04       0.69       1.34     404.57      -0.82

   18   6.1  1.0  0.0     552.59       0.02       0.00       0.00     297.95       0.04       0.00       0.00       0.00       0.00
                           -0.02    -552.59      -0.00      -0.00       0.04    -297.95      -0.28     951.92      -2.79       3.77

   19   7.1  1.0  0.0      -0.00      -0.02      -0.00    -297.95       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01      -0.00       0.00      -0.00      -0.00       2.11      -2.04       1.04     513.76

   20   8.1  1.0  0.0       0.02       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00      -0.00    -297.95       0.01       0.00    -513.77      -0.01       0.88       2.11

   21   9.1  1.0  0.0       0.00      -0.00      -0.00       0.01      -0.07     492.44       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00    -492.44      -0.07      -0.00       0.00       0.00      -0.00

   22  10.1  1.0  0.0     297.95       0.00      -0.01       0.00     598.31       0.08       0.00       0.00       0.00       0.00
                           -0.00     297.95       0.00      -0.00      -0.08     598.30       0.30     167.37      -0.88       0.67

   23  11.1  1.0  0.0      -0.00       0.00       0.07    -598.31       0.00       0.01       0.00       0.00       0.00       0.00
                            0.00      -0.01     492.44       0.08       0.00      -0.00       1.63      -1.53       0.77     384.99

   24  12.1  1.0  0.0      -0.00       0.00    -492.44      -0.08      -0.01      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.07    -598.30       0.00       0.00    -384.99      -0.01       0.66       1.63

   25   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     553.88    -355.00     -78.49      -3.52
                          325.84     -51.01    -585.53       0.00     287.36     -44.94      -3.12      90.14    -501.73    -552.31

   26   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     506.19     388.21      83.31      -0.71
                         -356.30      55.37    -535.54      -0.00    -314.24      48.80      -1.15     -93.47     546.42    -507.89

   27   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.75     -79.54     741.56      -1.81
                           75.29     482.83      -0.43       0.01      66.34     425.82      -0.29    -848.37    -112.74      -3.54

   28   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.36      -0.34       0.17      86.20
                           -0.00       0.00      -0.00    -191.57       0.00       0.00    -581.69      -0.01       1.00       2.39

   29   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.96      -2.85       1.45     721.44
                            0.01       0.01       0.00     447.25      -0.01      -0.01     435.37       0.01      -0.74      -1.79

   30   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -363.29      -0.00       0.63       1.48
                            0.01      -0.01       0.00      -0.01      -0.00      -0.00      -1.50       1.44      -0.73    -363.29

   31   7.1  1.0 -1.0   44827.55       0.00       0.00       0.00       0.00       0.00       0.62       1.19     363.29      -0.72
                           -0.00    -781.48       0.00       0.01      -0.06     421.37       0.54     -99.64      -0.27      -0.39

   32   8.1  1.0 -1.0       0.00   44827.55       0.00       0.00       0.00       0.00       0.33     573.47      -2.24       2.27
                          781.48       0.00      -0.00      -0.01    -421.37      -0.06       0.62       1.19     363.29      -0.73

   33   9.1  1.0 -1.0       0.00       0.00   46761.88       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00    -696.42       0.00       0.01       0.00       0.00      -0.00      -0.00

   34  10.1  1.0 -1.0       0.00       0.00       0.00   46741.03       0.00       0.00     272.23       0.00      -0.47      -1.12
                           -0.01       0.01     696.42       0.00       0.01      -0.01      -1.12       1.08      -0.55    -272.23

   35  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   46741.02       0.00      -0.47      -0.86    -272.23       0.55
                            0.06     421.37      -0.00      -0.01      -0.00    -846.13       0.03     311.37      -1.01       1.24

   36  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   46741.03       0.18    -193.02       0.39      -0.76
                         -421.37       0.06      -0.01       0.01     846.13       0.00      -0.47      -0.85    -272.23       0.55

   37   1.1  0.0  0.0       0.62       0.33       0.00     272.23      -0.47       0.18    5605.90       0.00       0.00       0.00
                           -0.54      -0.62      -0.00       1.12      -0.03       0.47       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       1.19     573.47      -0.00       0.00      -0.86    -193.02       0.00    5605.87       0.00       0.00
                           99.64      -1.19      -0.00      -1.08    -311.37       0.85      -0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0     363.29      -2.24       0.00      -0.47    -272.23       0.39       0.00       0.00    5605.89       0.00
                            0.27    -363.29       0.00       0.55       1.01     272.23      -0.00      -0.00       0.00       0.00

   40   4.1  0.0  0.0      -0.72       2.27       0.00      -1.12       0.55      -0.76       0.00       0.00       0.00    5605.90
                            0.39       0.73       0.00     272.23      -1.24      -0.55      -0.00      -0.00      -0.00       0.00

   41   5.1  0.0  0.0      -0.30    -446.15      -0.00       0.20       0.26    -248.10       0.00       0.00       0.00       0.00
                          719.72       0.30       0.00       0.00      43.11      -0.22      -0.00      -0.00      -0.00      -0.00

   42   6.1  0.0  0.0      -0.00       0.00      -0.00      -0.00       0.06    -395.72       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00     395.72       0.06      -0.00      -0.00      -0.00      -0.00

   43   7.1  0.0  0.0      -0.06       0.00    -903.44      -3.08      -0.03       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.06       9.41    -296.01       0.00      -0.03      -0.00      -0.00      -0.00      -0.00

   44   8.1  0.0  0.0       0.11      -0.00       9.41    -296.01       0.06       0.00       0.00       0.00       0.00       0.00
                            0.01       0.10     903.44       3.08      -0.00       0.06      -0.00      -0.00      -0.00      -0.00

   45   9.1  0.0  0.0     551.55       0.00      -0.09       0.06     296.03       0.04       0.00       0.00       0.00       0.00
                           -0.00     551.55      -0.18      -0.03      -0.04     296.03      -0.00      -0.00      -0.00      -0.00

   46  10.1  0.0  0.0       0.01       0.08      -0.00    -608.75       0.03       0.02       0.00       0.00       0.00       0.00
                           -0.04      -0.01       0.00       0.20       0.09      -0.02      -0.00      -0.00      -0.00      -0.00

   47  11.1  0.0  0.0       0.02     568.74       0.00       0.08       0.03      76.56       0.00       0.00       0.00       0.00
                         -230.40      -0.02       0.00       0.00     643.41       0.05      -0.00      -0.00      -0.00      -0.00

   48  12.1  0.0  0.0       0.02      -0.01      -0.00      -0.20       0.02      -0.01       0.00       0.00       0.00       0.00
                           -0.00      -0.01      -0.00    -608.75       0.00      -0.01      -0.00      -0.00      -0.00      -0.00

   49  13.1  0.0  0.0     286.07      -0.06      -0.00       0.03     608.75       0.28       0.00       0.00       0.00       0.00
                            0.17    -286.07      -0.00       0.01       0.12    -608.75      -0.00      -0.00      -0.00      -0.00

   50  14.1  0.0  0.0       0.08      62.32      -0.00      -0.01       0.27    -698.75       0.00       0.00       0.00       0.00
                         -523.71      -0.08      -0.00       0.00    -283.06      -0.21      -0.00      -0.00      -0.00      -0.00

   51  15.1  0.0  0.0      -0.00       0.00       0.00       0.01      -0.14    1023.32       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.01   -1023.33      -0.14      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.0  1.0    -455.51    -815.32       2.67     255.61     -36.21    -244.25      27.79      -0.08      34.63    -253.34
                           12.00     127.63     255.64      -2.71    -230.97       0.08      36.50    -244.26    -220.71     -16.13

    2   2.1  1.0  1.0     498.94     891.57       2.43     233.81      39.22    -223.41     -30.33      -0.07     -37.58     277.03
                          -13.01    -138.58     233.77      -2.38     252.62       0.08     -39.63    -223.40     241.36      17.51

    3   3.1  1.0  1.0    -105.97    -188.39      -0.03       0.25     342.30      -0.19       6.39      -0.01    -327.04     -58.63
                         -117.50   -1208.16       0.19      -0.01     -53.38      -0.05    -345.69      -0.18     -51.02     152.06

    4   4.1  1.0  1.0       0.00      -0.00     632.34      -6.58       0.06      -0.02      -0.00      67.88      -0.00      -0.00
                            0.43      -0.00       3.97     381.60      -0.07     458.05      -0.06       0.15      -0.02      -0.00

    5   5.1  1.0  1.0      -0.00      -0.00     -75.55       0.78      -0.02      -0.19       0.01     568.10      -0.02      -0.00
                           -0.33       0.00       5.32     509.85      -0.09    -342.83       0.05      -0.11       0.01       0.01

    6   6.1  1.0  1.0      -0.27       0.00      -5.74    -551.52       0.11    -286.07       0.04      -0.10       0.01       0.00
                            0.00       0.00     551.52      -5.75       0.06      -0.08      -0.00     286.07      -0.01      -0.00

    7   7.1  1.0  1.0      -0.30      -0.00      -0.06       0.11     551.55       0.01       0.02       0.02     286.07       0.08
                          719.72       0.00       0.00       0.01      -0.00      -0.04    -230.40      -0.00       0.17    -523.71

    8   8.1  1.0  1.0    -446.15       0.00       0.00      -0.00       0.00       0.08     568.74      -0.01      -0.06      62.32
                            0.30      -0.00      -0.06       0.10     551.55      -0.01      -0.02      -0.01    -286.07      -0.08

    9   9.1  1.0  1.0      -0.00      -0.00    -903.44       9.41      -0.09      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       9.41     903.44      -0.18       0.00       0.00      -0.00      -0.00      -0.00

   10  10.1  1.0  1.0       0.20      -0.00      -3.08    -296.01       0.06    -608.75       0.08      -0.20       0.03      -0.01
                            0.00       0.00    -296.01       3.08      -0.03       0.20       0.00    -608.75       0.01       0.00

   11  11.1  1.0  1.0       0.26       0.06      -0.03       0.06     296.03       0.03       0.03       0.02     608.75       0.27
                           43.11     395.72       0.00      -0.00      -0.04       0.09     643.41       0.00       0.12    -283.06

   12  12.1  1.0  1.0    -248.10    -395.72       0.00       0.00       0.04       0.02      76.56      -0.01       0.28    -698.75
                           -0.22       0.06      -0.03       0.06     296.03      -0.02       0.05      -0.01    -608.75      -0.21

   13   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -838.16    1276.02     -47.73     327.19      -0.07     312.11    -321.69     -48.76       0.08    -235.87

   14   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -765.56    1167.08      51.80    -357.79       0.08    -341.39    -294.14      52.94       0.09    -215.73

   15   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.74       0.93     484.84      70.44       0.03      71.97      -0.25     462.56      -0.01      -0.18

   16   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.78       0.00      -0.04       0.07     354.62       0.03       0.05       0.02     743.78       0.22

   17   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.33       0.00       0.10      -0.15    -827.92       0.01       0.03       0.00     318.58       0.08

   18   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          386.88      -0.00      -0.00       0.00       0.02       0.06     478.49      -0.00       0.15    -652.50

   19   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -779.96       8.12      -0.09      -0.13      -0.00     404.57      -0.01      -0.00

   20   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.38      -0.00       8.12     779.96      -0.14    -404.57       0.05      -0.13       0.01       0.00

   21   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.13       0.25    1277.72       0.00      -0.00       0.00       0.00      -0.00

   22  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -411.83     559.63       0.00      -0.00      -0.00      -0.10    -801.64      -0.01       0.22    -587.85

   23  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00     418.63      -4.30       0.04       0.16       0.01    -860.90       0.02       0.01

   24  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.28      -0.01      -4.30    -418.63       0.08     860.90      -0.11       0.16      -0.03       0.01

   25   1.1  1.0 -1.0    -455.51    -815.32       2.67     255.61     -36.21    -244.25      27.79      -0.08      34.63    -253.34
                          -12.00    -127.63    -255.64       2.71     230.97      -0.08     -36.50     244.26     220.71      16.13

   26   2.1  1.0 -1.0     498.94     891.57       2.43     233.81      39.22    -223.41     -30.33      -0.07     -37.58     277.03
                           13.01     138.58    -233.77       2.38    -252.62      -0.08      39.63     223.40    -241.36     -17.51

   27   3.1  1.0 -1.0    -105.97    -188.39      -0.03       0.25     342.30      -0.19       6.39      -0.01    -327.04     -58.63
                          117.50    1208.16      -0.19       0.01      53.38       0.05     345.69       0.18      51.02    -152.06

   28   4.1  1.0 -1.0       0.00      -0.00     632.34      -6.58       0.06      -0.02      -0.00      67.88      -0.00      -0.00
                           -0.43       0.00      -3.97    -381.60       0.07    -458.05       0.06      -0.15       0.02       0.00

   29   5.1  1.0 -1.0      -0.00      -0.00     -75.55       0.78      -0.02      -0.19       0.01     568.10      -0.02      -0.00
                            0.33      -0.00      -5.32    -509.85       0.09     342.83      -0.05       0.11      -0.01      -0.01

   30   6.1  1.0 -1.0      -0.27       0.00      -5.74    -551.52       0.11    -286.07       0.04      -0.10       0.01       0.00
                           -0.00      -0.00    -551.52       5.75      -0.06       0.08       0.00    -286.07       0.01       0.00

   31   7.1  1.0 -1.0      -0.30      -0.00      -0.06       0.11     551.55       0.01       0.02       0.02     286.07       0.08
                         -719.72      -0.00      -0.00      -0.01       0.00       0.04     230.40       0.00      -0.17     523.71

   32   8.1  1.0 -1.0    -446.15       0.00       0.00      -0.00       0.00       0.08     568.74      -0.01      -0.06      62.32
                           -0.30       0.00       0.06      -0.10    -551.55       0.01       0.02       0.01     286.07       0.08

   33   9.1  1.0 -1.0      -0.00      -0.00    -903.44       9.41      -0.09      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -9.41    -903.44       0.18      -0.00      -0.00       0.00       0.00       0.00

   34  10.1  1.0 -1.0       0.20      -0.00      -3.08    -296.01       0.06    -608.75       0.08      -0.20       0.03      -0.01
                           -0.00      -0.00     296.01      -3.08       0.03      -0.20      -0.00     608.75      -0.01      -0.00

   35  11.1  1.0 -1.0       0.26       0.06      -0.03       0.06     296.03       0.03       0.03       0.02     608.75       0.27
                          -43.11    -395.72      -0.00       0.00       0.04      -0.09    -643.41      -0.00      -0.12     283.06

   36  12.1  1.0 -1.0    -248.10    -395.72       0.00       0.00       0.04       0.02      76.56      -0.01       0.28    -698.75
                            0.22      -0.06       0.03      -0.06    -296.03       0.02      -0.05       0.01     608.75       0.21

   37   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   5.1  0.0  0.0    5605.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   42   6.1  0.0  0.0       0.00   13883.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   43   7.1  0.0  0.0       0.00       0.00   43416.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44   8.1  0.0  0.0       0.00       0.00       0.00   43416.17       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   9.1  0.0  0.0       0.00       0.00       0.00       0.00   43416.19       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   46  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   48966.62       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   47  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   48966.53       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   48  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   48966.64       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49  13.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   48966.72       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  14.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   48966.68
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  15.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       51

    1   1.1  1.0  1.0     405.89
                          -63.54

    2   2.1  1.0  1.0    -443.85
                           68.99

    3   3.1  1.0  1.0      93.79
                          601.47

    4   4.1  1.0  1.0       0.00
                            0.00

    5   5.1  1.0  1.0      -0.00
                           -0.00

    6   6.1  1.0  1.0      -0.00
                           -0.00

    7   7.1  1.0  1.0      -0.00
                           -0.00

    8   8.1  1.0  1.0       0.00
                            0.00

    9   9.1  1.0  1.0       0.00
                           -0.00

   10  10.1  1.0  1.0       0.01
                           -0.01

   11  11.1  1.0  1.0      -0.14
                        -1023.33

   12  12.1  1.0  1.0    1023.32
                           -0.14

   13   1.1  1.0  0.0       0.00
                         -635.24

   14   2.1  1.0  0.0       0.00
                         -581.02

   15   3.1  1.0  0.0       0.00
                           -0.47

   16   4.1  1.0  0.0       0.00
                           -0.00

   17   5.1  1.0  0.0       0.00
                           -0.00

   18   6.1  1.0  0.0       0.00
                           -0.00

   19   7.1  1.0  0.0       0.00
                            0.00

   20   8.1  1.0  0.0       0.00
                            0.00

   21   9.1  1.0  0.0       0.00
                           -0.00

   22  10.1  1.0  0.0       0.00
                        -1447.21

   23  11.1  1.0  0.0       0.00
                            0.01

   24  12.1  1.0  0.0       0.00
                            0.02

   25   1.1  1.0 -1.0     405.89
                           63.54

   26   2.1  1.0 -1.0    -443.85
                          -68.99

   27   3.1  1.0 -1.0      93.79
                         -601.47

   28   4.1  1.0 -1.0       0.00
                           -0.00

   29   5.1  1.0 -1.0      -0.00
                            0.00

   30   6.1  1.0 -1.0      -0.00
                            0.00

   31   7.1  1.0 -1.0      -0.00
                            0.00

   32   8.1  1.0 -1.0       0.00
                           -0.00

   33   9.1  1.0 -1.0       0.00
                            0.00

   34  10.1  1.0 -1.0       0.01
                            0.01

   35  11.1  1.0 -1.0      -0.14
                         1023.33

   36  12.1  1.0 -1.0    1023.32
                            0.14

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

   51  15.1  0.0  0.0   52810.85
                            0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 51)

    The diagonal matrixelements are shifted by   -214.22528721 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.006       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000   44827.423       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000   44827.427       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   44827.553       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   44827.551       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   44827.553
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000   -1068.804     122.591     -35.289     -47.163    -325.836       0.001    -360.586

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                             1068.804       0.000     112.908      38.315      51.197     356.308       0.002    -329.805

    3    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                             -122.591    -112.908       0.000     334.079     446.351     -75.294       0.007      -0.271

    4    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                               35.289     -38.315    -334.079       0.000       0.019      -0.000   -1251.294       0.002

    5    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               47.163     -51.197    -446.351      -0.019       0.000       0.012     936.545      -0.009

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                              325.836    -356.308      75.294       0.000      -0.012       0.000      -0.024    -781.478

    7    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                               -0.001      -0.002      -0.007    1251.294    -936.545       0.024       0.000       0.015

    8    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                              360.586     329.805       0.271      -0.002       0.009     781.478      -0.015       0.000

    9    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               82.825     -89.927    -784.028       0.000      -0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                              287.351    -314.231      66.398       0.002       0.009       0.005      -0.002     421.366

   11    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.043       0.043      -0.000     291.548     389.530      -0.063       0.006      -0.008

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -318.004    -290.850      -0.234       0.037       0.062     421.366       0.000      -0.005

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.585     730.062     163.937    -382.736       0.008    -325.843      51.011

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.585      -0.000    -798.203     149.942    -350.074       0.007     356.304     -55.373

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -730.062     798.203       0.000       0.120      -0.286       0.000     -75.288    -482.831

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -163.937    -149.942      -0.120       0.000       0.030    1436.719       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              382.736     350.074       0.286      -0.030       0.000     615.380      -0.012      -0.012

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.008      -0.007      -0.000   -1436.719    -615.380      -0.000      -0.009       0.008

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              325.843    -356.304      75.288      -0.000       0.012       0.009       0.000     781.478

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -51.011      55.373     482.831       0.000       0.012      -0.008    -781.478      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -585.526    -535.541      -0.429      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.001       0.005    -191.569     447.253      -0.009       0.012      -0.009

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              287.361    -314.235      66.338       0.001      -0.009      -0.000      -0.057    -421.366

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -44.942      48.796     425.817       0.002      -0.012      -0.000     421.366      -0.057

    1    1  |0 0>             783.300     715.857       2.479       0.505       4.182    -513.769       0.880       0.465
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>            -502.042     549.007    -112.491      -0.483      -4.030      -0.005       1.678     811.004
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>            -110.999     117.814    1048.724       0.245       2.044       0.884     513.770      -3.165
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>              -4.978      -1.008      -2.563     121.902    1020.268       2.092      -1.015       3.207
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            -644.195     705.603    -149.865       0.001      -0.001      -0.379      -0.419    -630.957
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>           -1153.043    1260.877    -266.428      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               3.769       3.437      -0.046     894.263    -106.848      -8.112      -0.080       0.002
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>             361.490     330.651       0.360      -9.305       1.099    -779.964       0.153      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>             -51.209      55.459     484.080       0.092      -0.023       0.152     780.006       0.003
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>            -345.419    -315.946      -0.269      -0.028      -0.271    -404.569       0.015       0.109
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>              39.308     -42.890       9.038      -0.000       0.011       0.055       0.026     804.324
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>              -0.115      -0.102      -0.012      95.993     803.419      -0.146       0.022      -0.011
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |0 0>              48.974     -53.148    -462.509      -0.002      -0.026       0.015     404.569      -0.081
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |0 0>            -358.270     391.776     -82.918      -0.001      -0.005       0.000       0.115      88.136
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |0 0>             574.020    -627.703     132.636       0.000      -0.000      -0.000      -0.000       0.003
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -1068.804     122.591     -35.289

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1068.804       0.000     112.908      38.315

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000    -122.591    -112.908       0.000     334.079

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      35.289     -38.315    -334.079       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      47.163     -51.197    -446.351      -0.019

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     325.836    -356.308      75.294       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.001      -0.002      -0.007    1251.294

    8    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     360.586     329.805       0.271      -0.002

    9    1  |1 1>+          46761.883       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      82.825     -89.927    -784.028       0.000

   10    1  |1 1>+              0.000   46741.027       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     287.351    -314.231      66.398       0.002

   11    1  |1 1>+              0.000       0.000   46741.024       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.043       0.043      -0.000     291.548

   12    1  |1 1>+              0.000       0.000       0.000   46741.027       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -318.004    -290.850      -0.234       0.037

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.006       0.000       0.000       0.000
                              -82.825    -287.351      -0.043     318.004       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.006       0.000       0.000
                               89.927     314.231      -0.043     290.850      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              784.028     -66.398       0.000       0.234      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000   44827.423
                               -0.000      -0.002    -291.548      -0.037      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.009    -389.530      -0.062      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.005       0.063    -421.366      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.002      -0.006      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -421.366       0.008       0.005      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.004    -696.421      -0.097      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.004       0.000      -0.118     846.131      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              696.421       0.118       0.000      -0.005      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.097    -846.131       0.005       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    -166.663    -788.733    -373.590
                              585.526      -0.001    -287.361      44.942      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     166.663       0.000    -721.279     408.528
                              535.541       0.001     314.235     -48.796       0.000      -0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     788.733     721.279       0.000     -86.319
                                0.429      -0.005     -66.338    -425.817      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000     373.590    -408.528      86.319       0.000
                                0.000     191.569      -0.001      -0.002       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000     -44.643      48.807     -10.306       0.004
                               -0.000    -447.253       0.009       0.012      -0.000      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000     -51.002      55.376     482.832      -0.000
                               -0.000       0.009       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000     360.586     329.805       0.264       0.006
                               -0.000      -0.012       0.057    -421.366       0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.002       0.000       0.000     185.425
                                0.000       0.009     421.366       0.057      -0.000      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000    -529.098     578.580    -122.256       0.000
                               -0.000     696.421      -0.004      -0.008      -0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      44.980     -48.842    -425.808       0.006
                             -696.421      -0.000      -0.010       0.005      -0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000    -318.001    -290.854      -0.230      -0.064
                                0.004       0.010       0.000     846.131       0.000      -0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -0.045      -0.040       0.005     483.117
                                0.008      -0.005    -846.131      -0.000       0.000       0.000       0.000      -0.000

    1    1  |0 0>               0.000     384.992      -0.662       0.254       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     706.482    -773.796     167.797      -1.618

    2    1  |0 0>              -0.000       0.001      -1.222    -272.966       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -339.975    -311.845      -4.401      -3.083

    3    1  |0 0>               0.000      -0.665    -384.991       0.549       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.360       3.219       1.828    -944.538

    4    1  |0 0>               0.000      -1.580       0.772      -1.081       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -115.019     122.192    1047.787       1.894

    5    1  |0 0>              -0.000       0.280       0.365    -350.869       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     838.158     765.559       0.743       0.778

    6    1  |0 0>              -0.000      -0.007       0.078    -559.629       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1276.016   -1167.085      -0.935      -0.000

    7    1  |0 0>           -1277.652      -4.359      -0.042       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      47.734     -51.801    -484.839       0.036

    8    1  |0 0>              13.304    -418.623       0.085       0.005       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -327.193     357.789     -70.440      -0.069

    9    1  |0 0>              -0.131       0.084     418.646       0.058       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.069      -0.075      -0.035    -354.618

   10    1  |0 0>              -0.000    -860.903       0.038       0.025       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -312.111     341.387     -71.973      -0.028

   11    1  |0 0>               0.000       0.118       0.047     108.277       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     321.689     294.142       0.246      -0.049

   12    1  |0 0>              -0.001      -0.283       0.021      -0.008       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      48.761     -52.938    -462.556      -0.019

   13    1  |0 0>              -0.000       0.038     860.903       0.393       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.080      -0.094       0.014    -743.778

   14    1  |0 0>              -0.000      -0.011       0.383    -988.179       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     235.869     215.734       0.176      -0.217

   15    1  |0 0>               0.000       0.017      -0.202    1447.194       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     635.244     581.015       0.465       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                              -47.163    -325.836       0.001    -360.586     -82.825    -287.351      -0.043     318.004

    2    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               51.197     356.308       0.002    -329.805      89.927     314.231      -0.043     290.850

    3    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                              446.351     -75.294       0.007      -0.271     784.028     -66.398       0.000       0.234

    4    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.019      -0.000   -1251.294       0.002      -0.000      -0.002    -291.548      -0.037

    5    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.012     936.545      -0.009       0.000      -0.009    -389.530      -0.062

    6    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.012       0.000      -0.024    -781.478      -0.000      -0.005       0.063    -421.366

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                             -936.545       0.024       0.000       0.015      -0.000       0.002      -0.006      -0.000

    8    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.009     781.478      -0.015       0.000      -0.000    -421.366       0.008       0.005

    9    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.004    -696.421      -0.097

   10    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.009       0.005      -0.002     421.366       0.004       0.000      -0.118     846.131

   11    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              389.530      -0.063       0.006      -0.008     696.421       0.118       0.000      -0.005

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.062     421.366       0.000      -0.005       0.097    -846.131       0.005       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           44827.427       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   44827.553       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   44827.551       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   44827.553       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   46761.883       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   46741.027       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   46741.024       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   46741.027
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-             44.643      51.002    -360.586      -0.002     529.098     -44.980     318.001       0.045
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 1>-            -48.807     -55.376    -329.805      -0.000    -578.580      48.842     290.854       0.040
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>-             10.306    -482.832      -0.264      -0.000     122.256     425.808       0.230      -0.005
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 1>-             -0.004       0.000      -0.006    -185.425      -0.000      -0.006       0.064    -483.117
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.012       0.020   -1551.925       0.000       0.007      -0.001      57.723
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 1>-             -0.012       0.000     781.478       0.028       0.000       0.003     421.366       0.053
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-             -0.020    -781.478       0.000      -0.024      -0.000    -421.366       0.003       0.006
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>-           1551.925      -0.028       0.024       0.000       0.000      -0.002      -0.000      -0.001
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    9    1  |1 1>-             -0.000      -0.000       0.000      -0.000       0.000       0.008      -0.097     696.421
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   10    1  |1 1>-             -0.007      -0.003     421.366       0.002      -0.008       0.000     846.131       0.118
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              0.001    -421.366      -0.003       0.000       0.097    -846.131       0.000       0.010
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-            -57.723      -0.053      -0.006       0.001    -696.421      -0.118      -0.010       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.685       0.285      -2.112     513.769       0.000      -0.299      -1.635     384.991

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.341    -951.921       2.035       0.005      -0.000    -167.371       1.526       0.006

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -404.567       2.789      -1.039      -0.878      -0.000       0.885      -0.774      -0.662

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.819      -3.775    -513.765      -2.110       0.000      -0.669    -384.988      -1.634

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.325    -386.882      -0.004       0.379       0.000     411.833      -0.006       0.279

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000    -559.629       0.004       0.007

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.095       0.000     779.965      -8.119       0.128      -0.003    -418.626       4.301

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.151      -0.000      -8.119    -779.965      -0.251       0.005       4.301     418.626

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              827.923      -0.017       0.093       0.140   -1277.721       0.000      -0.043      -0.082

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.006      -0.065       0.131     404.566      -0.000       0.099      -0.162    -860.902

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.031    -478.489       0.000      -0.055       0.000     801.636      -0.006       0.107

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.002       0.005    -404.567       0.131      -0.000       0.011     860.903      -0.162

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -318.576      -0.152       0.005      -0.011      -0.001      -0.225      -0.021       0.033

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.079     652.497       0.003      -0.000       0.000     587.852      -0.010      -0.007

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.004      -0.000      -0.000       0.000    1447.207      -0.009      -0.017

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.585     730.062     163.937    -382.736       0.008    -325.843      51.011

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.585      -0.000    -798.203     149.942    -350.074       0.007     356.304     -55.373

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -730.062     798.203       0.000       0.120      -0.286       0.000     -75.288    -482.831

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -163.937    -149.942      -0.120       0.000       0.030    1436.719       0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              382.736     350.074       0.286      -0.030       0.000     615.380      -0.012      -0.012

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.008      -0.007      -0.000   -1436.719    -615.380      -0.000      -0.009       0.008

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              325.843    -356.304      75.288      -0.000       0.012       0.009       0.000     781.478

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -51.011      55.373     482.831       0.000       0.012      -0.008    -781.478      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -585.526    -535.541      -0.429      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.001       0.005    -191.569     447.253      -0.009       0.012      -0.009

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              287.361    -314.235      66.338       0.001      -0.009      -0.000      -0.057    -421.366

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -44.942      48.796     425.817       0.002      -0.012      -0.000     421.366      -0.057

    1    1  |1 0>               0.000     166.663     788.733     373.590     -44.643     -51.002     360.586       0.002
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>            -166.663       0.000     721.279    -408.528      48.807      55.376     329.805       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>            -788.733    -721.279       0.000      86.319     -10.306     482.832       0.264       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 0>            -373.590     408.528     -86.319       0.000       0.004      -0.000       0.006     185.425
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 0>              44.643     -48.807      10.306      -0.004       0.000      -0.012      -0.020    1551.925
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    6    1  |1 0>              51.002     -55.376    -482.832       0.000       0.012       0.000    -781.478      -0.028
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>            -360.586    -329.805      -0.264      -0.006       0.020     781.478       0.000       0.024
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>              -0.002      -0.000      -0.000    -185.425   -1551.925       0.028      -0.024       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    9    1  |1 0>             529.098    -578.580     122.256      -0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   10    1  |1 0>             -44.980      48.842     425.808      -0.006       0.007       0.003    -421.366      -0.002
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

   11    1  |1 0>             318.001     290.854       0.230       0.064      -0.001     421.366       0.003      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.045       0.040      -0.005    -483.117      57.723       0.053       0.006      -0.001
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.006       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000   44827.423       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000   44827.427       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   44827.553       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   44827.551       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   44827.553
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
                               -4.415      -1.630      -0.405    -822.634     615.710      -2.128       0.759       0.870

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              127.474    -132.183   -1199.779      -0.009       0.009       2.035    -140.918       1.681

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -709.558     772.751    -159.440       1.415      -1.052      -1.033      -0.378     513.769

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -781.087    -718.262      -5.005       3.380      -2.535    -513.764      -0.552      -1.030

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -16.966      18.403     166.167      -0.607       0.470      -0.004   -1017.839      -0.426

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -180.496     195.975    1708.601       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -361.533    -330.604      -0.272      -5.612      -7.521    -779.964      -0.000       0.079

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.828       3.373       0.018    -539.663    -721.032       8.129      -0.011      -0.143

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              326.642    -357.264      75.484       0.106       0.129      -0.080       0.003    -780.007

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.109      -0.109       0.069    -647.786     484.840       0.119       0.052       0.008

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -51.622      56.048     488.875       0.088      -0.071       0.000     325.834       0.031

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              345.435     315.930       0.253      -0.209       0.152    -404.568       0.006       0.010

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              312.126    -341.334      72.150       0.024      -0.012       0.010      -0.236     404.567

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               22.805     -24.767    -215.045       0.000      -0.011       0.003     740.634       0.118

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               89.857     -97.563    -850.600      -0.000       0.000       0.000       0.006      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |1 1>+              0.000       0.000       0.000       0.000     783.300    -502.042    -110.999      -4.978
                              585.526      -0.001    -287.361      44.942       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000     715.857     549.007     117.814      -1.008
                              535.541       0.001     314.235     -48.796       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       2.479    -112.491    1048.724      -2.563
                                0.429      -0.005     -66.338    -425.817       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.505      -0.483       0.245     121.902
                                0.000     191.569      -0.001      -0.002       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       4.182      -4.030       2.044    1020.268
                               -0.000    -447.253       0.009       0.012       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000    -513.769      -0.005       0.884       2.092
                               -0.000       0.009       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.880       1.678     513.770      -1.015
                               -0.000      -0.012       0.057    -421.366       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.465     811.004      -3.165       3.207
                                0.000       0.009     421.366       0.057       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000     696.421      -0.004      -0.008       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000     384.992       0.001      -0.665      -1.580
                             -696.421      -0.000      -0.010       0.005       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.662      -1.222    -384.991       0.772
                                0.004       0.010       0.000     846.131       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.254    -272.966       0.549      -1.081
                                0.008      -0.005    -846.131      -0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>            -529.098      44.980    -318.001      -0.045       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000    -706.482     339.975      -0.360     115.019

    2    1  |1 0>             578.580     -48.842    -290.854      -0.040       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000     773.796     311.845      -3.219    -122.192

    3    1  |1 0>            -122.256    -425.808      -0.230       0.005       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000    -167.797       4.401      -1.828   -1047.787

    4    1  |1 0>               0.000       0.006      -0.064     483.117       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       1.618       3.083     944.538      -1.894

    5    1  |1 0>              -0.000      -0.007       0.001     -57.723       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.685       1.341     404.567      -0.819

    6    1  |1 0>              -0.000      -0.003    -421.366      -0.053       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.285     951.921      -2.789       3.775

    7    1  |1 0>               0.000     421.366      -0.003      -0.006       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       2.112      -2.035       1.039     513.765

    8    1  |1 0>              -0.000       0.002       0.000       0.001       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000    -513.769      -0.005       0.878       2.110

    9    1  |1 0>               0.000      -0.008       0.097    -696.421       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.008       0.000    -846.131      -0.118       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.299     167.371      -0.885       0.669

   11    1  |1 0>              -0.097     846.131       0.000      -0.010       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       1.635      -1.526       0.774     384.988

   12    1  |1 0>             696.421       0.118       0.010       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000    -384.991      -0.006       0.662       1.634

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       4.415    -127.474     709.558     781.087

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       1.630     132.183    -772.751     718.262

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.405    1199.779     159.440       5.005

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     822.634       0.009      -1.415      -3.380

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -615.710      -0.009       1.052       2.535

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       2.128      -2.035       1.033     513.764

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.759     140.918       0.378       0.552

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.870      -1.681    -513.769       1.030

    9    1  |1 1>-          46761.883       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000   46741.027       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       1.581      -1.528       0.779     384.988

   11    1  |1 1>-              0.000       0.000   46741.024       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.045    -440.341       1.434      -1.750

   12    1  |1 1>-              0.000       0.000       0.000   46741.027       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.659       1.199     384.992      -0.777

    1    1  |0 0>               0.000       0.000       0.000       0.000    5605.901       0.000       0.000       0.000
                                0.000      -1.581       0.045      -0.659       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000    5605.874       0.000       0.000
                                0.000       1.528     440.341      -1.199      -0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000    5605.894       0.000
                               -0.000      -0.779      -1.434    -384.992      -0.000      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000    5605.900
                               -0.000    -384.988       1.750       0.777      -0.000      -0.000      -0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.003     -60.965       0.307      -0.000      -0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.004    -559.629      -0.078      -0.000      -0.000      -0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -13.304     418.624      -0.003       0.037      -0.000      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1277.652      -4.359       0.000      -0.082      -0.000      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.250       0.038       0.058    -418.648      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.002      -0.283      -0.123       0.033      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.006    -909.924      -0.065      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     860.902      -0.003       0.011      -0.000      -0.000      -0.000      -0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.011      -0.168     860.902      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.004     400.301       0.300      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.009    1447.204       0.202      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |1 1>+           -644.195   -1153.043       3.769     361.490     -51.209    -345.419      39.308      -0.115
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+            705.603    1260.877       3.437     330.651      55.459    -315.946     -42.890      -0.102
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+           -149.865    -266.428      -0.046       0.360     484.080      -0.269       9.038      -0.012
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.001      -0.000     894.263      -9.305       0.092      -0.028      -0.000      95.993
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.001      -0.000    -106.848       1.099      -0.023      -0.271       0.011     803.419
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.379       0.000      -8.112    -779.964       0.152    -404.569       0.055      -0.146
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.419      -0.000      -0.080       0.153     780.006       0.015       0.026       0.022
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -630.957       0.000       0.002      -0.000       0.003       0.109     804.324      -0.011
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000   -1277.652      13.304      -0.131      -0.000       0.000      -0.001
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.280      -0.007      -4.359    -418.623       0.084    -860.903       0.118      -0.283
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.365       0.078      -0.042       0.085     418.646       0.038       0.047       0.021
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+           -350.869    -559.629       0.000       0.005       0.058       0.025     108.277      -0.008
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -838.158    1276.016     -47.734     327.193      -0.069     312.111    -321.689     -48.761

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -765.559    1167.085      51.801    -357.789       0.075    -341.387    -294.142      52.938

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.743       0.935     484.839      70.440       0.035      71.973      -0.246     462.556

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.778       0.000      -0.036       0.069     354.618       0.028       0.049       0.019

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.325       0.000       0.095      -0.151    -827.923       0.006       0.031       0.002

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              386.882      -0.000      -0.000       0.000       0.017       0.065     478.489      -0.005

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.004      -0.000    -779.965       8.119      -0.093      -0.131      -0.000     404.567

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.379      -0.000       8.119     779.965      -0.140    -404.566       0.055      -0.131

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.128       0.251    1277.721       0.000      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -411.833     559.629       0.003      -0.005      -0.000      -0.099    -801.636      -0.011

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006      -0.004     418.626      -4.301       0.043       0.162       0.006    -860.903

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.279      -0.007      -4.301    -418.626       0.082     860.902      -0.107       0.162

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               16.966     180.496     361.533      -3.828    -326.642       0.109      51.622    -345.435

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -18.403    -195.975     330.604      -3.373     357.264       0.109     -56.048    -315.930

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -166.167   -1708.601       0.272      -0.018     -75.484      -0.069    -488.875      -0.253

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.607      -0.000       5.612     539.663      -0.106     647.786      -0.088       0.209

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.470       0.000       7.521     721.032      -0.129    -484.840       0.071      -0.152

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.004       0.000     779.964      -8.129       0.080      -0.119      -0.000     404.568

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1017.839       0.000       0.000       0.011      -0.003      -0.052    -325.834      -0.006

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.426      -0.000      -0.079       0.143     780.007      -0.008      -0.031      -0.010

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      13.304    1277.652      -0.250       0.002       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003       0.004    -418.624       4.359      -0.038       0.283       0.006    -860.902

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               60.965     559.629       0.003      -0.000      -0.058       0.123     909.924       0.003

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.307       0.078      -0.037       0.082     418.648      -0.033       0.065      -0.011

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>            5605.883       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000   13883.295       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000   43416.179       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000   43416.168       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000   43416.189       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000   48966.618       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   48966.527       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   48966.639
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       49          50          51

    1    1  |1 1>+             48.974    -358.270     574.020
                                0.000       0.000       0.000

    2    1  |1 1>+            -53.148     391.776    -627.703
                                0.000       0.000       0.000

    3    1  |1 1>+           -462.509     -82.918     132.636
                                0.000       0.000       0.000

    4    1  |1 1>+             -0.002      -0.001       0.000
                                0.000       0.000       0.000

    5    1  |1 1>+             -0.026      -0.005      -0.000
                                0.000       0.000       0.000

    6    1  |1 1>+              0.015       0.000      -0.000
                                0.000       0.000       0.000

    7    1  |1 1>+            404.569       0.115      -0.000
                                0.000       0.000       0.000

    8    1  |1 1>+             -0.081      88.136       0.003
                                0.000       0.000       0.000

    9    1  |1 1>+             -0.000      -0.000       0.000
                                0.000       0.000       0.000

   10    1  |1 1>+              0.038      -0.011       0.017
                                0.000       0.000       0.000

   11    1  |1 1>+            860.903       0.383      -0.202
                                0.000       0.000       0.000

   12    1  |1 1>+              0.393    -988.179    1447.194
                                0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000
                                0.080    -235.869    -635.244

    2    1  |1 0>               0.000       0.000       0.000
                                0.094    -215.734    -581.015

    3    1  |1 0>               0.000       0.000       0.000
                               -0.014      -0.176      -0.465

    4    1  |1 0>               0.000       0.000       0.000
                              743.778       0.217      -0.000

    5    1  |1 0>               0.000       0.000       0.000
                              318.576       0.079      -0.000

    6    1  |1 0>               0.000       0.000       0.000
                                0.152    -652.497      -0.004

    7    1  |1 0>               0.000       0.000       0.000
                               -0.005      -0.003       0.000

    8    1  |1 0>               0.000       0.000       0.000
                                0.011       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000
                                0.001      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000
                                0.225    -587.852   -1447.207

   11    1  |1 0>               0.000       0.000       0.000
                                0.021       0.010       0.009

   12    1  |1 0>               0.000       0.000       0.000
                               -0.033       0.007       0.017

    1    1  |1 1>-              0.000       0.000       0.000
                             -312.126     -22.805     -89.857

    2    1  |1 1>-              0.000       0.000       0.000
                              341.334      24.767      97.563

    3    1  |1 1>-              0.000       0.000       0.000
                              -72.150     215.045     850.600

    4    1  |1 1>-              0.000       0.000       0.000
                               -0.024      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000
                                0.012       0.011      -0.000

    6    1  |1 1>-              0.000       0.000       0.000
                               -0.010      -0.003      -0.000

    7    1  |1 1>-              0.000       0.000       0.000
                                0.236    -740.634      -0.006

    8    1  |1 1>-              0.000       0.000       0.000
                             -404.567      -0.118       0.000

    9    1  |1 1>-              0.000       0.000       0.000
                               -0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000
                                0.011       0.004      -0.009

   11    1  |1 1>-              0.000       0.000       0.000
                                0.168    -400.301   -1447.204

   12    1  |1 1>-              0.000       0.000       0.000
                             -860.902      -0.300      -0.202

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

   13    1  |0 0>           48966.723       0.000       0.000
                                0.000       0.000       0.000

   14    1  |0 0>               0.000   48966.677       0.000
                               -0.000       0.000       0.000

   15    1  |0 0>               0.000       0.000   52810.849
                               -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -214.23789804    -0.01261083    -2767.76      0.00000000        0.00      0.0000
    2  -214.23044257    -0.00515536    -1131.47      0.00745547     1636.29      0.2029
    3  -214.23044257    -0.00515536    -1131.47      0.00745547     1636.29      0.2029
    4  -214.23044255    -0.00515535    -1131.47      0.00745548     1636.29      0.2029
    5  -214.22260646     0.00268074      588.36      0.01529158     3356.11      0.4161
    6  -214.22260644     0.00268076      588.36      0.01529160     3356.12      0.4161
    7  -214.22260638     0.00268082      588.37      0.01529165     3356.13      0.4161
    8  -214.22260638     0.00268083      588.37      0.01529166     3356.13      0.4161
    9  -214.22260637     0.00268084      588.38      0.01529167     3356.13      0.4161
   10  -214.19784046     0.02744675     6023.86      0.04005758     8791.62      1.0900
   11  -214.19784045     0.02744676     6023.87      0.04005759     8791.63      1.0900
   12  -214.19784042     0.02744678     6023.87      0.04005761     8791.63      1.0900
   13  -214.19784042     0.02744678     6023.87      0.04005762     8791.63      1.0900
   14  -214.19784041     0.02744679     6023.87      0.04005762     8791.63      1.0900
   15  -214.15966607     0.06562113    14402.17      0.07823197    17169.93      2.1288
   16  -214.03693478     0.18835242    41338.58      0.20096326    44106.34      5.4685
   17  -214.03693477     0.18835244    41338.58      0.20096327    44106.34      5.4685
   18  -214.03693475     0.18835246    41338.59      0.20096329    44106.34      5.4685
   19  -214.02676099     0.19852622    43571.47      0.21113705    46339.23      5.7453
   20  -214.02676097     0.19852623    43571.47      0.21113706    46339.23      5.7453
   21  -214.02676096     0.19852625    43571.48      0.21113708    46339.23      5.7453
   22  -214.02637487     0.19891234    43656.21      0.21152317    46423.97      5.7558
   23  -214.02637486     0.19891235    43656.21      0.21152318    46423.97      5.7558
   24  -214.02637485     0.19891236    43656.22      0.21152319    46423.97      5.7558
   25  -214.02637453     0.19891267    43656.29      0.21152351    46424.04      5.7558
   26  -214.02637450     0.19891270    43656.29      0.21152354    46424.05      5.7558
   27  -214.02313660     0.20215060    44366.93      0.21476144    47134.69      5.8440
   28  -214.01518872     0.21009848    46111.29      0.22270932    48879.04      6.0602
   29  -214.01518872     0.21009849    46111.29      0.22270932    48879.05      6.0602
   30  -214.01518871     0.21009850    46111.29      0.22270933    48879.05      6.0602
   31  -214.01391681     0.21137039    46390.44      0.22398122    49158.20      6.0948
   32  -214.01391681     0.21137040    46390.44      0.22398123    49158.20      6.0948
   33  -214.01391680     0.21137040    46390.44      0.22398124    49158.20      6.0948
   34  -214.01391667     0.21137054    46390.47      0.22398137    49158.23      6.0948
   35  -214.01391667     0.21137054    46390.47      0.22398137    49158.23      6.0948
   36  -214.01391667     0.21137054    46390.47      0.22398137    49158.23      6.0948
   37  -214.01391649     0.21137071    46390.51      0.22398155    49158.27      6.0948
   38  -214.00985852     0.21542869    47281.13      0.22803952    50048.89      6.2053
   39  -214.00985849     0.21542872    47281.14      0.22803955    50048.90      6.2053
   40  -214.00985847     0.21542873    47281.14      0.22803957    50048.90      6.2053
   41  -214.00985841     0.21542880    47281.16      0.22803963    50048.91      6.2053
   42  -214.00985840     0.21542881    47281.16      0.22803964    50048.92      6.2053
   43  -214.00847661     0.21681059    47584.43      0.22942143    50352.18      6.2429
   44  -214.00847661     0.21681059    47584.43      0.22942143    50352.18      6.2429
   45  -214.00847661     0.21681060    47584.43      0.22942143    50352.18      6.2429
   46  -213.99866549     0.22662171    49737.72      0.23923255    52505.48      6.5098
   47  -213.99866518     0.22662203    49737.79      0.23923286    52505.54      6.5099
   48  -213.99866510     0.22662210    49737.80      0.23923294    52505.56      6.5099
   49  -213.99866496     0.22662225    49737.83      0.23923308    52505.59      6.5099
   50  -213.99866481     0.22662240    49737.87      0.23923323    52505.63      6.5099
   51  -213.98116731     0.24411990    53578.12      0.25673073    56345.88      6.9860

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.37855934  0.04391451 -0.09494316 -0.51619549 -0.30524987  0.41843012 -0.08490404 -0.07004739
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.41396250  0.09267297  0.05106686 -0.47193923  0.33741162 -0.45721547  0.08465369 -0.07657569
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.08747213  0.24852471  0.65256977  0.00052048 -0.06297974  0.12005253  0.66261425 -0.05537781
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000 -0.00803890  0.00306253 -0.00124712 -0.00000000 -0.00000224 -0.00021567 -0.00256452
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00096052 -0.00036580  0.00014889  0.00000030 -0.00001852 -0.00180522 -0.02146386
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00101992 -0.00037800 -0.00750289 -0.00003968 -0.00000400  0.00008380  0.00167930
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00269764 -0.00708512 -0.00000975  0.00012775  0.00037550  0.01093053 -0.00091099
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000002 -0.00000003 -0.00000003 -0.00000000  0.01774711  0.01290286 -0.00064667  0.00005381
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.02188633  0.00833790 -0.00339553  0.00000000  0.00000000  0.00000000  0.00000003
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000016  0.00079020 -0.00029291 -0.00581255 -0.00001397 -0.00000145  0.00002959  0.00059258
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000184 -0.00208991 -0.00548892 -0.00000752  0.00004474  0.00013305  0.00385787 -0.00032142
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.01314883 -0.00000030 -0.00000077  0.00000007  0.00263204 -0.00361553  0.00009365 -0.00000347
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.41893281 -0.00481967  0.00249174 -0.47694704  0.23217234  0.52571442 -0.02309238  0.00090399

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.38316947  0.00474068 -0.00252295  0.52146935  0.21562406  0.48128636 -0.01634142  0.00135462

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00030682  0.66044121 -0.25145276 -0.00756999 -0.00020646  0.00092033  0.05608828  0.67360925

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00122645 -0.00322115 -0.00000444  0.00023482  0.00069052  0.02009544 -0.00167423

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00286330  0.00752051  0.00001045  0.00010100  0.00029557  0.00860734 -0.00071692

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000003 -0.00000006 -0.00000017 -0.00000000  0.02005964 -0.00891463  0.00007241  0.00001223

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00701136 -0.00267094  0.00108773  0.00000002 -0.00000941 -0.00090881 -0.01080825

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00102002  0.00037791  0.00750288 -0.00003968 -0.00000401  0.00008365  0.00167893

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00842094  0.02211671  0.00003045  0.00000001 -0.00000001 -0.00000003  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01314884 -0.00000003  0.00000001 -0.00000007 -0.00181585 -0.00408475  0.00016069 -0.00001113

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000008 -0.00543185  0.00206934 -0.00084189  0.00000000  0.00000335  0.00032081  0.00381479

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000015  0.00078945 -0.00029258 -0.00581267  0.00001403  0.00000146 -0.00002952 -0.00059205

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.05925933  0.31460668 -0.62412979  0.07421774 -0.07575915  0.00644810  0.40878075 -0.52870426

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.06434116  0.62447808  0.31353273  0.06909953  0.08221695 -0.00797700 -0.52994854 -0.40819144

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.56095767 -0.03839213 -0.10189512 -0.00008530  0.76805348  0.08445734  0.09203454 -0.00766737

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00070570  0.00026155  0.00519137  0.00006353  0.00000641 -0.00013412 -0.00268824

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00094310  0.00034942  0.00693603 -0.00004759 -0.00000447  0.00010021  0.00201195

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00701134  0.00267107 -0.00108784  0.00000002 -0.00000942 -0.00090894 -0.01080827

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000003  0.00000010  0.00231253 -0.02181749  0.00071916 -0.00004124

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00269766 -0.00708515 -0.00000985 -0.00012782 -0.00037564 -0.01093053  0.00091063

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00318402 -0.00118007 -0.02342074 -0.00000000  0.00000000 -0.00000000 -0.00000001

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000008  0.00543174 -0.00206937  0.00084270  0.00000002  0.00000333  0.00032076  0.00381470

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01314884  0.00000026  0.00000078 -0.00000000  0.00444789  0.00046922 -0.00006703  0.00000766

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000184 -0.00208998 -0.00548891 -0.00000757 -0.00004450 -0.00013248 -0.00385788  0.00032137

   1    1  |0 0>           0.00000001  0.00000005 -0.00000002  0.00000001 -0.00106857 -0.00033758  0.00183771  0.04589788
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000070  0.00000003  0.00000010  0.00000000 -0.29189760  0.00942911  0.00201036 -0.00148438
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000004 -0.00000013 -0.00000037  0.00000000 -0.00243865 -0.00978353 -0.29082532  0.02473534
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000035 -0.00000014 -0.00000000 -0.00114765  0.00030668  0.02477191  0.28736051
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000009  0.00000002  0.00000004  0.00000002  0.00935205  0.29174492 -0.00984193  0.00062852
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.17820772 -0.00000000 -0.00000000 -0.00000000 -0.00000026 -0.00000001 -0.00000004  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.01451334  0.00553052 -0.00208685  0.00000000  0.00000000  0.00000000  0.00000004
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00195848  0.00072101  0.01553136  0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00557727 -0.01464487 -0.00002342 -0.00000001  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000001  0.00000000  0.00000004  0.00004626  0.00000537 -0.00009383 -0.00189174
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00000011 -0.00000000 -0.00000000  0.00000000  0.01075371  0.00614986 -0.00033394  0.00002918
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000004  0.00000001 -0.00000000 -0.00000000 -0.00001053 -0.00102600 -0.01220415
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.00000000  0.00000001  0.00000002 -0.00000000  0.00014530  0.00042053  0.01234170 -0.00102785
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |0 0>           0.00000016  0.00000000  0.00000000  0.00000000 -0.00615717  0.01075077 -0.00029270  0.00001250
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |0 0>          -0.02740875  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000008  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |1 1>+          0.49420088 -0.09420541 -0.01829974 -0.12811558  0.00170189  0.15335045 -0.06879153  0.00132289
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.44938361  0.10320416  0.01934184  0.14168753  0.00447361  0.13879422  0.07522496  0.00121005
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00289872 -0.01679218  0.20515634 -0.02767110 -0.00053023  0.00061291 -0.01589534  0.00000141
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00039855  0.00002613 -0.00000307  0.00000883 -0.00241677  0.00004979  0.00000000  0.00734633
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00333669  0.00021836 -0.00002550  0.00007414 -0.02022733  0.00041767  0.00000000 -0.00087106
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.01084610  0.00000640 -0.00001667  0.00005292  0.00021085  0.01018615  0.00000000  0.41993734
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00005720 -0.00024309 -0.01018504 -0.00010294  0.00000928 -0.00001618  0.00000000 -0.00010394
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00006635 -0.01646168  0.00027164  0.01200555 -0.00013506 -0.00004879 -0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00229622
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00382808 -0.00000657  0.00001740 -0.00005490 -0.00021887 -0.01058955  0.00000017  0.01572657
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00002015  0.00025178  0.01058843  0.00010558 -0.00000998  0.00001690 -0.00000207 -0.00000399
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000806  0.00720111 -0.00027006  0.00988116  0.00011309 -0.00005851  0.01481040 -0.00000019
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.45717672  0.07111290  0.00017457 -0.16194578  0.01893639 -0.13757019  0.07612816  0.00119829

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.49786638  0.06568289 -0.00034845 -0.14652419 -0.02013975  0.15201487  0.06962927 -0.00131033

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                          -0.00068051  0.00224078 -0.00020711  0.00046358 -0.20500964 -0.02764837  0.00005576  0.00024918

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00010506 -0.00044686 -0.01872466 -0.00018908  0.00001762 -0.00002976  0.00000000 -0.00004703

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00004514 -0.00019179 -0.00802019 -0.00008116  0.00000770 -0.00001259  0.00000000  0.00010417

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00006764 -0.01862106  0.00052760 -0.00825440 -0.00023085  0.00006022  0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00168007  0.00011008 -0.00001304  0.00003724 -0.01018565  0.00021019  0.00000000 -0.00640881

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01084616  0.00000640 -0.00001656  0.00005292  0.00021049  0.01018616  0.00000000 -0.41993741

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00003722

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000771 -0.00495617  0.00000545  0.01118103 -0.00001388 -0.00005455 -0.01481040  0.00000019

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00059245  0.00011447 -0.00001343  0.00003864 -0.01058905  0.00021708  0.00000009  0.00023788

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00382816  0.00000673 -0.00001734  0.00005489  0.00021739  0.01058958  0.00000017  0.01572683

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.07841019 -0.02314279  0.13865607  0.00348516  0.15222494 -0.00292281  0.01076856 -0.00002049

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.06757819  0.02180253 -0.15123014 -0.00491103  0.14000789 -0.00312945 -0.01169202 -0.00001815

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00331693  0.23538345  0.02651793 -0.02476501  0.00253092 -0.00002817 -0.10193655 -0.00000008

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01736679 -0.00001025  0.00002669 -0.00008473 -0.00033700 -0.01630982 -0.00000000 -0.29056620

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.01299838  0.00000771 -0.00001983  0.00006373  0.00025213  0.01220727  0.00000000 -0.38821778

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00167973  0.00011008 -0.00001292  0.00003724 -0.01018564  0.00020988 -0.00000000  0.00641449

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000144 -0.00215939  0.00025591 -0.02025995 -0.00009548  0.00010918 -0.00000000 -0.00000589

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00005735  0.00024315  0.01018504  0.00010280 -0.00000959  0.00001599 -0.00000000 -0.00009831

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.15041959

  10    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00059299  0.00011451 -0.00001356  0.00003871 -0.01058901  0.00021856 -0.00000009 -0.00024007

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00001578  0.01215734 -0.00027551 -0.00129988  0.00012697 -0.00000396 -0.01481040  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00002016 -0.00025109 -0.01058842 -0.00010714  0.00001010 -0.00001683 -0.00000207 -0.00000389

   1    1  |0 0>          -0.28841965  0.00061943  0.00008395  0.00426225  0.02367029  0.95548668 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00084702  0.95509277 -0.01996507  0.02974666  0.00664983 -0.00091485 -0.00000008 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00210372  0.01964588  0.95553127  0.01032401  0.00095701 -0.00016645  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.04589111 -0.00658502 -0.00078871 -0.00342176  0.95546776 -0.02365021 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00033881 -0.02998038 -0.00970848  0.95525365  0.00309949 -0.00431770 -0.00000002 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000001  0.00000013 -0.00000001  0.00000005  0.00000000  0.00000000  0.98355634 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00302556
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.62360626
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00003154
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.01224694  0.00000350 -0.00000746  0.00002390  0.00009480  0.00466058 -0.00000000  0.00000029
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00004137  0.00404259 -0.00007272 -0.00231999  0.00003546  0.00000803 -0.00000002 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00189298 -0.00005038  0.00000603 -0.00001706  0.00466035 -0.00009466  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |0 0>          -0.00006495  0.00011162  0.00466001  0.00004839 -0.00000449  0.00000722  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |0 0>           0.00001823 -0.00231815  0.00009744 -0.00404301 -0.00003951  0.00002344 -0.00000003  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |0 0>          -0.00000000 -0.00000003  0.00000000 -0.00000003 -0.00000000  0.00000000  0.00526301  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |1 1>+          0.00002019 -0.00018748  0.01152688  0.00016623 -0.00163207 -0.00866146 -0.00000427  0.00122623
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00001848  0.00020290  0.01054324  0.00015170  0.00176933 -0.00792259 -0.00000433 -0.00132872
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000005  0.00177159  0.00001028 -0.00000146  0.01543660 -0.00000811 -0.00000207 -0.01159815
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.48149067  0.00000908 -0.00511534  0.35528062  0.00003712 -0.00004355  0.09097676 -0.00001622
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000014  0.00000000

   5    1  |1 1>+          0.05752912  0.00000529  0.00060614 -0.04244177 -0.00000912 -0.00040047  0.76146153 -0.00014149
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000115  0.00000000

   6    1  |1 1>+          0.00640517 -0.00010406 -0.30986457 -0.00445992  0.00003635 -0.38341372 -0.00021047  0.00005904
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000864 -0.41998771  0.00003683 -0.00003248  0.30989148  0.00005899  0.00007989  0.38341707
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000110 -0.00000174 -0.00000002  0.00000081  0.00000128 -0.00001498 -0.00000687  0.00000607
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.15041924 -0.00000283 -0.00526784  0.36567127  0.00003820  0.00000001 -0.00000369 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00024007 -0.00000400  0.31274406  0.00450539 -0.00003870 -0.17598749 -0.00009104  0.00002823
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000036 -0.01572804 -0.00003916  0.00003212 -0.31277963  0.00002821  0.00003138  0.17598413
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000220 -0.00000369 -0.00000005 -0.00004370  0.00000386 -0.00000006  0.00001741
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00016888 -0.00000029  0.01044003 -0.00148052 -0.00000139  0.00782733 -0.00122118 -0.00000121

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00018322  0.00000032 -0.01141620  0.00160632  0.00000152 -0.00855892  0.00132577  0.00000087

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000
                           0.00177560 -0.00000010  0.00218454  0.01546994  0.00000133  0.00180243  0.01159860 -0.00000235

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000432 -0.19094651  0.00001658 -0.00001447  0.14090196  0.00010867  0.00012565  0.70493390

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000362  0.44579975 -0.00003455  0.00003857 -0.32893462  0.00004077  0.00004801  0.30194472

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000933 -0.00000001 -0.00000000  0.00000687 -0.00000167  0.00000199 -0.00001991

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000058 -0.00000000
                           0.41993830 -0.00000115  0.00446243 -0.30985103 -0.00003735 -0.00019678  0.38342431 -0.00006372

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00640881  0.00009734  0.30984700  0.00446236 -0.00003140 -0.38342821 -0.00019677  0.00005492

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000340 -0.15043650 -0.00004345  0.00003758 -0.36571000  0.00000000  0.00000001  0.00000531

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000010  0.00000000  0.00000371 -0.00000195  0.00000000  0.00000640 -0.00000217 -0.00000462

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000027  0.00000000
                          -0.01572657  0.00000030  0.00446178 -0.31275149 -0.00003267  0.00006645 -0.17597694  0.00003136

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00023788 -0.00000390  0.31275316  0.00446182 -0.00003669  0.17597245  0.00006645 -0.00002709

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                           0.00132288 -0.00119556 -0.00016730  0.01152826 -0.01041634  0.00000326 -0.00866297 -0.00782511

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                           0.00121000  0.00130732 -0.00015053  0.01054196  0.01139290  0.00000543 -0.00792064  0.00856002

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000096 -0.00027625 -0.00000041  0.00000869 -0.00240713 -0.00000011 -0.00000673 -0.00180829

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00443179  0.00007222  0.21441681  0.00308603 -0.00002531  0.61395017  0.00031411 -0.00009433

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00593348  0.00008996  0.28644696  0.00413182 -0.00002901 -0.45952785 -0.00023121  0.00006506

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000058 -0.00000000
                          -0.41993780  0.00000791 -0.00446673  0.30985820  0.00003238 -0.00018493  0.38341843 -0.00006832

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000009  0.00000174  0.00000435  0.00000006 -0.00000130  0.00000636 -0.00000241 -0.00002410

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000941 -0.41998749  0.00003267 -0.00003191  0.30988070 -0.00005187 -0.00006835 -0.38342596

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00229622  0.00003727 -0.36567030 -0.00526785  0.00004290  0.00000884  0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000027  0.00000000
                           0.01572643 -0.00000048 -0.00450542  0.31274713  0.00002899  0.00009105 -0.17598297  0.00002928

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000010  0.00000220  0.00000003 -0.00000201  0.00004370 -0.00000255  0.00000211  0.00002202

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000054 -0.01572815 -0.00003711  0.00002846 -0.31278451 -0.00002708 -0.00002929 -0.17597477

   1    1  |0 0>           0.00000000  0.00000000  0.00000062  0.00000001  0.00000000  0.02684754  0.00012416  0.00004183
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000008 -0.00010622  0.00008744
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000038 -0.00004209  0.00005875  0.02684765
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000002  0.00000000 -0.00000001  0.00000025 -0.00000000 -0.00012407  0.02684730 -0.00005860
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00002033  0.00000012 -0.00002287
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.62360460 -0.00007605 -0.00236188  0.59159678  0.00000160 -0.00000013 -0.00000589 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00302557 -0.00003191  0.59159622  0.00236188  0.00004614 -0.00001336  0.00000006  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00007620  0.62361084 -0.00004613 -0.00000179  0.59160174 -0.00000000 -0.00000001 -0.00000783
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000547 -0.00000007 -0.00000000 -0.23439609 -0.00004434  0.00002722
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00003609 -0.00000118 -0.00001737
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000004  0.00000000  0.00000003 -0.00000235 -0.00000000  0.00004434 -0.23439524  0.00003594
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000035 -0.00000000

  13    1  |0 0>          -0.00000000  0.00000021  0.00000000 -0.00000000 -0.00000323 -0.00002722 -0.00003594 -0.23439175
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000258  0.00000159 -0.00007496
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |1 1>+          0.00012034  0.00903675  0.00960312 -0.00591707  0.00009596 -0.00083862  0.00000000 -0.00000051
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00013193 -0.00988172 -0.01050121 -0.00541238  0.00008726  0.00090757  0.00000000 -0.00000047
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00002791  0.00208764  0.00221895 -0.00000636 -0.00000235  0.00792444 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000092  0.00000004 -0.00000000  0.00307411  0.19016084  0.00005889  0.76931517  0.00007082
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000401 -0.00000000

   5    1  |1 1>+          0.00000702  0.00000014  0.00000000 -0.00036464 -0.02271985 -0.00000955 -0.09008953 -0.00002373
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000047  0.00000000

   6    1  |1 1>+         -0.00000745  0.00000346 -0.00000000  0.16577788 -0.00267914  0.00004156 -0.00003113  0.47202826
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000523  0.00001362  0.00000000 -0.00004239 -0.00005100  0.16580025 -0.00013892  0.00030324
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.76679418 -0.01022457 -0.00000149  0.00000001  0.00000043  0.00000069  0.00000312 -0.00001068
                           0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00456144 -0.28202578 -0.00008734  0.00001523  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000338  0.00000399 -0.00000652  0.55197290 -0.00892755  0.00014190 -0.00000000  0.00003456
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000132 -0.00002216  0.00007737 -0.00014465 -0.00016863  0.55204545 -0.00000001  0.00000002
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00270864  0.20319086 -0.55377651 -0.00000652  0.00000008  0.00007712  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00859373  0.00511562 -0.01062723 -0.00536053 -0.00075054 -0.00000160  0.00000008 -0.00000047

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00786043  0.00467906 -0.00972001  0.00586175  0.00081423  0.00000175 -0.00000008  0.00000052

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000633  0.00000373 -0.00000778 -0.00110736  0.00794334  0.00000214 -0.00000071 -0.00000011

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000737  0.00001893  0.00000000 -0.00001919 -0.00002304  0.07541203  0.00009601 -0.00020708

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000505  0.00002189  0.00000000  0.00004259  0.00005636 -0.17606672 -0.00020728  0.00047222

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.39225191  0.65895209  0.00000022 -0.00000001  0.00000000  0.00000368 -0.00000138  0.00001067

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000232  0.00000000
                          -0.00000220  0.00000015  0.00000000 -0.00268058 -0.16577804 -0.00005401  0.44541504  0.00006962

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000745  0.00000346 -0.00000000 -0.16577903  0.00268061 -0.00003891  0.00005284 -0.42158358

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001  0.00000001 -0.00007210 -0.00008619  0.28206161 -0.00000000  0.00000001

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.17461319  0.10394090  0.55377658  0.00000656  0.00000343  0.00000000  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000
                           0.00000213 -0.00000073 -0.00000355  0.00885040  0.55197456  0.00017093 -0.00003456 -0.00000001

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000548 -0.00000281 -0.00000652  0.55197366 -0.00885043  0.00013839 -0.00000001  0.00003261

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00123458  0.00069068 -0.00150326  0.00009707  0.00591895 -0.00534592 -0.00000053 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00134035 -0.00074991  0.00163218  0.00008604  0.00541038  0.00584956 -0.00000048  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01168582 -0.00654079  0.01423008  0.00000039  0.00000471 -0.00123568 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001194 -0.00000556  0.00000000 -0.11475565  0.00185453 -0.00002885 -0.00003843  0.48388255

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000324 -0.00000600  0.00000000 -0.15332281  0.00248265 -0.00003597 -0.00007390  0.60441197

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000234 -0.00000000
                          -0.00000220  0.00000015  0.00000000  0.00268280  0.16577722  0.00005134 -0.44904720 -0.00002849

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.37454261  0.66917703  0.00000175 -0.00000233  0.00000003 -0.00000068  0.00000139 -0.00000150

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000050 -0.00001079 -0.00000000 -0.00004017 -0.00005070  0.16580036 -0.00011895  0.00029020

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000000 -0.00000000 -0.28202768  0.00456147 -0.00007070  0.00000000 -0.00001480

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000
                           0.00000215  0.00000057  0.00000355 -0.00892749 -0.55197200 -0.00016445  0.00003476  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.17732419  0.09924817  0.55377720  0.00000008  0.00000356 -0.00007712 -0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00002571  0.00000763  0.00007737 -0.00014101 -0.00016219  0.55204377 -0.00000001  0.00000002

   1    1  |0 0>           0.00001247 -0.00001602 -0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.02140777  0.01620151 -0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00008336 -0.00003437  0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00008490  0.00006415 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.01620162  0.02140816  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000004 -0.00000003  0.02804830 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00269628  0.46811524  0.00009667 -0.00003421 -0.00000035
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000001  0.00000000  0.00000000 -0.46811416  0.00269628 -0.00002691  0.00000036 -0.00003337
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000001 -0.00000000 -0.00002746 -0.00009652  0.46812392 -0.00000001  0.00000003
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00003617 -0.00000087 -0.00000000  0.00000049 -0.00000001 -0.00000000 -0.00000000  0.00000097
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.23332987 -0.02242362 -0.00000103 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000102  0.00000171  0.00000000  0.00000000  0.00000027 -0.00000000  0.00000017  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.00002445 -0.00007296  0.00000000  0.00000000  0.00000000 -0.00000066 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |0 0>          -0.02242326  0.23332400 -0.00000272  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |0 0>          -0.00000002  0.00000071  0.28033003 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |1 1>+         -0.00000007 -0.00000001  0.00000009  0.00000000 -0.00000000 -0.00016502  0.00178238 -0.00000072
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000008  0.00000001  0.00000008  0.00000000  0.00000000  0.00017954  0.00163010 -0.00000060
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000069  0.00000013  0.00000000  0.00000000 -0.00000000 -0.00003769  0.00000143 -0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00022094  0.00012520  0.00207489 -0.06604144 -0.00000397 -0.00000092  0.00001109  0.03177368
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002

   5    1  |1 1>+         -0.00003268  0.00112255  0.01816068 -0.57326089 -0.00000706 -0.00001284  0.00010533  0.26593271
                          -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000018

   6    1  |1 1>+         -0.00030093  0.00027343  0.55698747  0.01762573  0.00000863 -0.00003387  0.13393091 -0.00005614
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.47116941 -0.55799118  0.00030576 -0.00108280 -0.00000917 -0.00001721 -0.00000589  0.00000461
                           0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00001040 -0.00001974  0.00000034 -0.00000750  0.57735033 -0.26679517 -0.00006890 -0.00001250
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000001 -0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000001  0.00000327
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000002  0.00000000  0.00001430  0.00000045 -0.00000000  0.00015219 -0.59895947  0.00023211
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00003458 -0.00001360  0.00000001 -0.00000002  0.00000000  0.00007338  0.00003022 -0.00000258
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000025  0.06118590 -0.00001886  0.00001116
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000005 -0.00000001 -0.00000000  0.00168493 -0.00161025 -0.00025146

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000005  0.00000001 -0.00000000  0.00154025  0.00176183  0.00027310

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000001  0.00000010  0.00000000  0.00000125 -0.00037124  0.00238676

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.32706716  0.51738105 -0.00028684  0.00099587  0.00001391 -0.00003227 -0.00001091  0.00000106

   5    1  |1 0>          -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.70179669  0.25712091 -0.00015909  0.00048611  0.00001297 -0.00001704 -0.00000266 -0.00000158

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000
                          -0.00000258  0.00001777 -0.00000061  0.00001598 -0.57735032 -0.15391822 -0.00002575 -0.00000803

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000  0.00000009
                           0.00013819 -0.00112172 -0.01832357  0.57846747  0.00001493 -0.00000447  0.00005134  0.13392976

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00029087  0.00031183  0.59604219  0.01889086 -0.00000789 -0.00003387  0.13393017 -0.00005135

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001458  0.00000078 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000039 -0.56601501 -0.00015997 -0.00000974

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000040
                          -0.00000001  0.00000003  0.00000046 -0.00001455  0.00000000 -0.00001635  0.00014843  0.59896250

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000002 -0.00000000 -0.00001685 -0.00000053 -0.00000000 -0.00014481  0.59896217 -0.00014843

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000047  0.00000004  0.00000000 -0.00000006 -0.00000000 -0.00026376 -0.00000068 -0.00178231

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000052 -0.00000005  0.00000000 -0.00000006  0.00000000  0.00028649 -0.00000064 -0.00163012

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000011  0.00000001  0.00000000 -0.00000000  0.00000000  0.00249945  0.00000058 -0.00000121

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00031258  0.00021364  0.44127570  0.01394718  0.00000886  0.00005422 -0.21441758  0.00008186

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00041151 -0.00019666 -0.37252204 -0.01180882  0.00000248 -0.00004230  0.16048340 -0.00005991

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000009
                          -0.00012928 -0.00111654 -0.01820901  0.57565671  0.00001700 -0.00000447  0.00004721  0.13392968

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00001411 -0.00001989 -0.00000503 -0.00001616  0.57735015  0.11287640  0.00004557  0.00000054

   8    1  |1 1>-         -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.42250129  0.59569076 -0.00034801  0.00114651  0.00002944  0.00001879  0.00000340 -0.00000058

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000000  0.00000063  0.00000002  0.00000000 -0.00000000  0.00000261  0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000040
                           0.00000001  0.00000003  0.00000049 -0.00001536 -0.00000000 -0.00001598  0.00023211  0.59896167

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000008  0.62719867  0.00014111  0.00002090

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00003293  0.00001720 -0.00000001  0.00000003 -0.00000001  0.00000570 -0.00002637 -0.00000447

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000014 -0.00000000 -0.00000000 -0.00000306 -0.02084882  0.00009371
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.01752340 -0.00000401 -0.00008332
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000015  0.00000000 -0.00000000 -0.00000000  0.00006364  0.00003498  0.00004200
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000014  0.00000000 -0.00007032  0.00009362  0.02084863
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

   5    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.01129623 -0.00001148  0.00000032
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000001 -0.00000000  0.00000000  0.00000025  0.00000000  0.00000000  0.00000000 -0.00000103
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000003  0.00000000  0.00000126  0.00000004  0.00000000  0.00000000  0.00000013  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00003328  0.00000172 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000001  0.00001553  0.00000049 -0.00000000  0.00004904 -0.41766108  0.00002478
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000019 -0.41758044 -0.00004849 -0.00001428
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000  0.00000003  0.00000048 -0.00001508  0.00000000 -0.00001424  0.00002478  0.41765810
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000028

  13    1  |0 0>          -0.00000081  0.00001562 -0.00000001  0.00000003 -0.00000000 -0.00002457 -0.00000260 -0.00000860
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |0 0>           0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000009 -0.00858626 -0.00002718  0.00000199
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000061 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |1 1>+          0.00024880 -0.00185273 -0.01086343  0.00160816  0.00155289  0.00117537 -0.00931717 -0.00000360
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00026996  0.00202621 -0.00993610  0.00146949 -0.00168707 -0.00128270 -0.00852281 -0.00000323
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00238713 -0.00042371 -0.00000824 -0.00000538 -0.01470468  0.00027042 -0.00000718 -0.00000019
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000014 -0.00000043 -0.00068234 -0.00461161  0.00000207 -0.00000003 -0.00000315  0.00915141
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000318 -0.00000316  0.00008136  0.00055031 -0.00000031  0.00000120 -0.00003002  0.07659298
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000591  0.00000804 -0.00402331  0.00059528 -0.00000019  0.00000534 -0.03857079 -0.00001601
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.13392883 -0.00024215  0.00000008  0.00000182  0.00406716  0.00000232  0.00000144  0.00000170
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000689  0.02369531 -0.00000000 -0.00000001  0.00000002  0.07657512  0.00001032 -0.00000115
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000  0.12790203  0.86437669 -0.00038767  0.00000000 -0.00000000 -0.00000018
                           0.00000000  0.00000000  0.00000001  0.00000009 -0.00000001 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00003025 -0.00002783  0.30830651 -0.04562019  0.00001231  0.00004651 -0.33188811 -0.00012723
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.59896512  0.00098626 -0.00000806 -0.00013859 -0.31166017  0.00001620  0.00001455  0.00000459
                           0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00116975  0.68890992 -0.00000363  0.00000051 -0.00004354  0.04627732  0.00002205 -0.00000195
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000198 -0.00118274 -0.01004392 -0.00008411  0.00000023 -0.00860107  0.00841925 -0.00131482

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000167 -0.00108159  0.01098147  0.00008005 -0.00000025 -0.00786448 -0.00920861  0.00142749

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000003 -0.00000092 -0.00011584  0.01488194 -0.00000663 -0.00000656  0.00194073  0.01247727

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.24618806 -0.00044293  0.00000003  0.00000082  0.00184830  0.00000442  0.00000267  0.00000098

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.10544792 -0.00019431 -0.00000003 -0.00000199 -0.00431575  0.00000286  0.00000056 -0.00000017

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00041676 -0.21919939 -0.00000000  0.00000000  0.00000009  0.04635463  0.00000832 -0.00000035

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000103 -0.00000177  0.00059523  0.00402279 -0.00000187  0.00000003 -0.00001463  0.03857070

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000447  0.00000804  0.00402261 -0.00059521  0.00000025  0.00000534 -0.03857039 -0.00001463

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000094  0.00000000  0.00001706  0.00038937  0.87378835 -0.00000000  0.00000000  0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00064087  0.39744448  0.00000392  0.00000144 -0.00000001 -0.30632790 -0.00003141 -0.00000304

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000002
                          -0.00000260 -0.00001046  0.04557640  0.30830803 -0.00013827  0.00000168  0.00008086 -0.33188580

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00002642  0.00003126  0.30830867 -0.04557648  0.00001429 -0.00004235  0.33188808  0.00008086

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00161068 -0.00011975  0.00160766  0.01086788  0.00991854  0.00139968  0.00000347 -0.00931781

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00176132  0.00013004  0.00147003  0.00993123 -0.01085591 -0.00151973  0.00000338 -0.00852212

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00036967  0.00116197  0.00000122  0.00000898  0.00229295 -0.01325526 -0.00000208 -0.00000681

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000939 -0.00001286  0.00278327 -0.00041180  0.00000013 -0.00000855  0.06175561  0.00002332

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000510  0.00001332  0.00371767 -0.00055018  0.00000023  0.00000686 -0.04622147 -0.00001706

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000058 -0.00000177 -0.00059543 -0.00402377  0.00000180  0.00000003 -0.00001343  0.03857087

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00042298 -0.24289418  0.00000006 -0.00000001 -0.00000002 -0.03022045 -0.00000270 -0.00000033

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.13392816  0.00024104  0.00000003  0.00000182  0.00406742 -0.00000276 -0.00000072 -0.00000053

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.86437651 -0.12790199  0.00004012  0.00000000  0.00000073 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000002
                           0.00000447 -0.00000606 -0.04562008 -0.30830572  0.00013461  0.00000197  0.00012723 -0.33188592

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00052888  0.29146723  0.00000029  0.00000199  0.00004354  0.35260648  0.00005346  0.00000108

  12    1  |1 1>-          0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.59896654 -0.00104179 -0.00000555 -0.00013525 -0.31166053  0.00002660 -0.00001242 -0.00000068

   1    1  |0 0>           0.00003481  0.00001160  0.00000006 -0.00000001  0.00000000 -0.00000089 -0.00370373 -0.00001663
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00004543 -0.01129620  0.00000000  0.00000000 -0.00000000 -0.00317647 -0.00000054  0.00001468
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.02084885 -0.00001519 -0.00000000 -0.00000000 -0.00000000  0.00001168  0.00000624 -0.00000750
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00004198 -0.00004490 -0.00000001 -0.00000005  0.00000000 -0.00001262  0.00001662 -0.00370364
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00004723 -0.01752360  0.00000000  0.00000000  0.00000000  0.00190464 -0.00000257 -0.00000002
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000 -0.02779627 -0.20238191  0.00007019 -0.00000000  0.00000000  0.00000003
                          -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.00000000  0.20238098 -0.02779612  0.00004855 -0.00000000  0.00000005 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000088 -0.00000000 -0.00003855  0.00007614  0.20428236 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000265 -0.00002617  0.00000080 -0.00000012  0.00000000 -0.00000263  0.87774847  0.00004842
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00004251 -0.00858597 -0.00000000  0.00000000 -0.00000000  0.87768027  0.00000228 -0.00000123
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000860 -0.00000230 -0.00000019 -0.00000129  0.00000000  0.00000120 -0.00004842  0.87775012
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004

  13    1  |0 0>           0.41764679 -0.00087281 -0.00000000  0.00000000 -0.00000056 -0.00000040 -0.00000032 -0.00000971
                          -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |0 0>           0.00087213  0.41756102 -0.00000000 -0.00000000 -0.00000000 -0.01045240 -0.00002869 -0.00000240
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.00000000  0.00000149  0.00000000 -0.00000000  0.00000000  0.00000041  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51

   1    1  |1 1>+         -0.00965106  0.00132105  0.00838543
                           0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.01055306 -0.00143366 -0.00916964
                          -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00223363 -0.01247587  0.00193758
                          -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000005 -0.00000013  0.00000000
                           0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000025 -0.00000164 -0.00000000
                           0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000119  0.00000144 -0.00000000
                          -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00001103  0.03857156 -0.00000000
                           0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00931513 -0.00000774  0.00000021
                           0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00001471  0.00001455  0.00000191
                          -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00014843  0.33187783 -0.00002264
                           0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+         -0.38042117  0.00015242  0.16208651
                          -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000
                          -0.00646508  0.00000215 -0.00927984

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000
                          -0.00591370  0.00000256 -0.00848764

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00000474 -0.00000024 -0.00000680

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000
                           0.00002092  0.07090822 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000
                           0.00000767  0.03037151 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.06166026  0.00001467 -0.00000028

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00000019 -0.00000007  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000
                          -0.00000119  0.00000103  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000043 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000
                          -0.23028510  0.00008703 -0.16208835

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000
                           0.00000315  0.00000459  0.00000104

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000
                           0.00001294 -0.00001242  0.00000191

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000
                          -0.00059859 -0.00841951 -0.00131266

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000
                           0.00065004  0.00920716  0.00142523

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000
                           0.00564337 -0.00194622  0.01242581

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                           0.00000190 -0.00000229  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000
                          -0.00000035  0.00000116 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                          -0.00000019 -0.00000053 -0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000
                          -0.07097558  0.00002260 -0.00000052

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000
                          -0.00001137 -0.03857137  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000
                           0.00000072  0.00000068 -0.00000104

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000
                          -0.15013150  0.00006539 -0.16208792

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000
                          -0.00011625 -0.33187792 -0.00002264

   1    1  |0 0>          -0.00000246 -0.00000620  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00190443 -0.00001245  0.00000002
                          -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000467 -0.00370349 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000756  0.00000747  0.00000000
                          -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00317625  0.00000200  0.00000000
                           0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000008 -0.00000000 -0.00849903
                           0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00002866  0.00000032 -0.00000000
                           0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.01045193  0.00000038 -0.00000032
                           0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000241  0.00000971  0.00000000
                           0.00000000 -0.00000000  0.00000000

  13    1  |0 0>           0.00000191  0.87775599  0.00000000
                           0.00000000  0.00000000 -0.00000000

  14    1  |0 0>           0.87769064 -0.00000192 -0.00000047
                           0.00000000  0.00000000  0.00000000

  15    1  |0 0>           0.00000048 -0.00000000  0.95949786
                           0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -214.23789804     -0.01261083    -2767.76      0.00000000        0.00      0.0000
     2   1   -214.23044257     -0.00515536    -1131.47      0.00745547     1636.29      0.2029
     3   1   -214.23044257     -0.00515536    -1131.47      0.00745547     1636.29      0.2029
     4   1   -214.23044255     -0.00515535    -1131.47      0.00745548     1636.29      0.2029
     5   1   -214.22260646      0.00268074      588.36      0.01529158     3356.11      0.4161
     6   1   -214.22260644      0.00268076      588.36      0.01529160     3356.12      0.4161
     7   1   -214.22260638      0.00268082      588.37      0.01529165     3356.13      0.4161
     8   1   -214.22260638      0.00268083      588.37      0.01529166     3356.13      0.4161
     9   1   -214.22260637      0.00268084      588.38      0.01529167     3356.13      0.4161
    10   1   -214.19784046      0.02744675     6023.86      0.04005758     8791.62      1.0900
    11   1   -214.19784045      0.02744676     6023.87      0.04005759     8791.63      1.0900
    12   1   -214.19784042      0.02744678     6023.87      0.04005761     8791.63      1.0900
    13   1   -214.19784042      0.02744678     6023.87      0.04005762     8791.63      1.0900
    14   1   -214.19784041      0.02744679     6023.87      0.04005762     8791.63      1.0900
    15   1   -214.15966607      0.06562113    14402.17      0.07823197    17169.93      2.1288
    16   1   -214.03693478      0.18835242    41338.58      0.20096326    44106.34      5.4685
    17   1   -214.03693477      0.18835244    41338.58      0.20096327    44106.34      5.4685
    18   1   -214.03693475      0.18835246    41338.59      0.20096329    44106.34      5.4685
    19   1   -214.02676099      0.19852622    43571.47      0.21113705    46339.23      5.7453
    20   1   -214.02676097      0.19852623    43571.47      0.21113706    46339.23      5.7453
    21   1   -214.02676096      0.19852625    43571.48      0.21113708    46339.23      5.7453
    22   1   -214.02637487      0.19891234    43656.21      0.21152317    46423.97      5.7558
    23   1   -214.02637486      0.19891235    43656.21      0.21152318    46423.97      5.7558
    24   1   -214.02637485      0.19891236    43656.22      0.21152319    46423.97      5.7558
    25   1   -214.02637453      0.19891267    43656.29      0.21152351    46424.04      5.7558
    26   1   -214.02637450      0.19891270    43656.29      0.21152354    46424.05      5.7558
    27   1   -214.02313660      0.20215060    44366.93      0.21476144    47134.69      5.8440
    28   1   -214.01518872      0.21009848    46111.29      0.22270932    48879.04      6.0602
    29   1   -214.01518872      0.21009849    46111.29      0.22270932    48879.05      6.0602
    30   1   -214.01518871      0.21009850    46111.29      0.22270933    48879.05      6.0602
    31   1   -214.01391681      0.21137039    46390.44      0.22398122    49158.20      6.0948
    32   1   -214.01391681      0.21137040    46390.44      0.22398123    49158.20      6.0948
    33   1   -214.01391680      0.21137040    46390.44      0.22398124    49158.20      6.0948
    34   1   -214.01391667      0.21137054    46390.47      0.22398137    49158.23      6.0948
    35   1   -214.01391667      0.21137054    46390.47      0.22398137    49158.23      6.0948
    36   1   -214.01391667      0.21137054    46390.47      0.22398137    49158.23      6.0948
    37   1   -214.01391649      0.21137071    46390.51      0.22398155    49158.27      6.0948
    38   1   -214.00985852      0.21542869    47281.13      0.22803952    50048.89      6.2053
    39   1   -214.00985849      0.21542872    47281.14      0.22803955    50048.90      6.2053
    40   1   -214.00985847      0.21542873    47281.14      0.22803957    50048.90      6.2053
    41   1   -214.00985841      0.21542880    47281.16      0.22803963    50048.91      6.2053
    42   1   -214.00985840      0.21542881    47281.16      0.22803964    50048.92      6.2053
    43   1   -214.00847661      0.21681059    47584.43      0.22942143    50352.18      6.2429
    44   1   -214.00847661      0.21681059    47584.43      0.22942143    50352.18      6.2429
    45   1   -214.00847661      0.21681060    47584.43      0.22942143    50352.18      6.2429
    46   1   -213.99866549      0.22662171    49737.72      0.23923255    52505.48      6.5098
    47   1   -213.99866518      0.22662203    49737.79      0.23923286    52505.54      6.5099
    48   1   -213.99866510      0.22662210    49737.80      0.23923294    52505.56      6.5099
    49   1   -213.99866496      0.22662225    49737.83      0.23923308    52505.59      6.5099
    50   1   -213.99866481      0.22662240    49737.87      0.23923323    52505.63      6.5099
    51   1   -213.98116731      0.24411990    53578.12      0.25673073    56345.88      6.9860

 E0 =   -214.22528721 is the energy of the lowest zeroth-order state
 E1 =   -214.23789804 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.37855934  0.04391451 -0.09494316 -0.51619549 -0.30524987  0.41843012 -0.08490404 -0.07004739
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.41396250  0.09267297  0.05106686 -0.47193923  0.33741162 -0.45721547  0.08465369 -0.07657569
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.08747213  0.24852471  0.65256977  0.00052048 -0.06297974  0.12005253  0.66261425 -0.05537781
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |1 1>+       0.00000000 -0.00803890  0.00306253 -0.00124712 -0.00000000 -0.00000224 -0.00021567 -0.00256452
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |1 1>+       0.00000000  0.00096052 -0.00036580  0.00014889  0.00000030 -0.00001852 -0.00180522 -0.02146386
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+       0.00000000  0.00101992 -0.00037800 -0.00750289 -0.00003968 -0.00000400  0.00008380  0.00167930
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00000000 -0.00269764 -0.00708512 -0.00000975  0.00012775  0.00037550  0.01093053 -0.00091099
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |1 1>+       0.00000002 -0.00000003 -0.00000003 -0.00000000  0.01774711  0.01290286 -0.00064667  0.00005381
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |1 1>+       0.00000000 -0.02188633  0.00833790 -0.00339553  0.00000000  0.00000000  0.00000000  0.00000003
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00000016  0.00079020 -0.00029291 -0.00581255 -0.00001397 -0.00000145  0.00002959  0.00059258
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000184 -0.00208991 -0.00548892 -0.00000752  0.00004474  0.00013305  0.00385787 -0.00032142
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+       0.01314883 -0.00000030 -0.00000077  0.00000007  0.00263204 -0.00361553  0.00009365 -0.00000347
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.41893281 -0.00481967  0.00249174 -0.47694704  0.23217234  0.52571442 -0.02309238  0.00090399

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.38316947  0.00474068 -0.00252295  0.52146935  0.21562406  0.48128636 -0.01634142  0.00135462

 15  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00030682  0.66044121 -0.25145276 -0.00756999 -0.00020646  0.00092033  0.05608828  0.67360925

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00122645 -0.00322115 -0.00000444  0.00023482  0.00069052  0.02009544 -0.00167423

 17  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00286330  0.00752051  0.00001045  0.00010100  0.00029557  0.00860734 -0.00071692

 18  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000003 -0.00000006 -0.00000017 -0.00000000  0.02005964 -0.00891463  0.00007241  0.00001223

 19  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00701136 -0.00267094  0.00108773  0.00000002 -0.00000941 -0.00090881 -0.01080825

 20  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00102002  0.00037791  0.00750288 -0.00003968 -0.00000401  0.00008365  0.00167893

 21  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00842094  0.02211671  0.00003045  0.00000001 -0.00000001 -0.00000003  0.00000000

 22  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01314884 -0.00000003  0.00000001 -0.00000007 -0.00181585 -0.00408475  0.00016069 -0.00001113

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000008 -0.00543185  0.00206934 -0.00084189  0.00000000  0.00000335  0.00032081  0.00381479

 24  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000015  0.00078945 -0.00029258 -0.00581267  0.00001403  0.00000146 -0.00002952 -0.00059205

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.05925933  0.31460668 -0.62412979  0.07421774 -0.07575915  0.00644810  0.40878075 -0.52870426

 26  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.06434116  0.62447808  0.31353273  0.06909953  0.08221695 -0.00797700 -0.52994854 -0.40819144

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.56095767 -0.03839213 -0.10189512 -0.00008530  0.76805348  0.08445734  0.09203454 -0.00766737

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00070570  0.00026155  0.00519137  0.00006353  0.00000641 -0.00013412 -0.00268824

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00094310  0.00034942  0.00693603 -0.00004759 -0.00000447  0.00010021  0.00201195

 30  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00701134  0.00267107 -0.00108784  0.00000002 -0.00000942 -0.00090894 -0.01080827

 31  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000003  0.00000010  0.00231253 -0.02181749  0.00071916 -0.00004124

 32  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00269766 -0.00708515 -0.00000985 -0.00012782 -0.00037564 -0.01093053  0.00091063

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00318402 -0.00118007 -0.02342074 -0.00000000  0.00000000 -0.00000000 -0.00000001

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000008  0.00543174 -0.00206937  0.00084270  0.00000002  0.00000333  0.00032076  0.00381470

 35  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01314884  0.00000026  0.00000078 -0.00000000  0.00444789  0.00046922 -0.00006703  0.00000766

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000184 -0.00208998 -0.00548891 -0.00000757 -0.00004450 -0.00013248 -0.00385788  0.00032137

 37  1     1    1  |0 0>        0.00000001  0.00000005 -0.00000002  0.00000001 -0.00106857 -0.00033758  0.00183771  0.04589788
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000070  0.00000003  0.00000010  0.00000000 -0.29189760  0.00942911  0.00201036 -0.00148438
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000004 -0.00000013 -0.00000037  0.00000000 -0.00243865 -0.00978353 -0.29082532  0.02473534
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000000  0.00000035 -0.00000014 -0.00000000 -0.00114765  0.00030668  0.02477191  0.28736051
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>       -0.00000009  0.00000002  0.00000004  0.00000002  0.00935205  0.29174492 -0.00984193  0.00062852
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.17820772 -0.00000000 -0.00000000 -0.00000000 -0.00000026 -0.00000001 -0.00000004  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00000000 -0.01451334  0.00553052 -0.00208685  0.00000000  0.00000000  0.00000000  0.00000004
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>       -0.00000000 -0.00195848  0.00072101  0.01553136  0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.00000000 -0.00557727 -0.01464487 -0.00002342 -0.00000001  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00000000 -0.00000001  0.00000000  0.00000004  0.00004626  0.00000537 -0.00009383 -0.00189174
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00000011 -0.00000000 -0.00000000  0.00000000  0.01075371  0.00614986 -0.00033394  0.00002918
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000000 -0.00000004  0.00000001 -0.00000000 -0.00000000 -0.00001053 -0.00102600 -0.01220415
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00000000  0.00000001  0.00000002 -0.00000000  0.00014530  0.00042053  0.01234170 -0.00102785
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 50  1    14    1  |0 0>        0.00000016  0.00000000  0.00000000  0.00000000 -0.00615717  0.01075077 -0.00029270  0.00001250
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 51  1    15    1  |0 0>       -0.02740875  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000008  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |1 1>+       0.49420088 -0.09420541 -0.01829974 -0.12811558  0.00170189  0.15335045 -0.06879153  0.00132289
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.44938361  0.10320416  0.01934184  0.14168753  0.00447361  0.13879422  0.07522496  0.00121005
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00289872 -0.01679218  0.20515634 -0.02767110 -0.00053023  0.00061291 -0.01589534  0.00000141
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00039855  0.00002613 -0.00000307  0.00000883 -0.00241677  0.00004979  0.00000000  0.00734633
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00333669  0.00021836 -0.00002550  0.00007414 -0.02022733  0.00041767  0.00000000 -0.00087106
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |1 1>+      -0.01084610  0.00000640 -0.00001667  0.00005292  0.00021085  0.01018615  0.00000000  0.41993734
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00005720 -0.00024309 -0.01018504 -0.00010294  0.00000928 -0.00001618  0.00000000 -0.00010394
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00006635 -0.01646168  0.00027164  0.01200555 -0.00013506 -0.00004879 -0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00229622
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00382808 -0.00000657  0.00001740 -0.00005490 -0.00021887 -0.01058955  0.00000017  0.01572657
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00002015  0.00025178  0.01058843  0.00010558 -0.00000998  0.00001690 -0.00000207 -0.00000399
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000806  0.00720111 -0.00027006  0.00988116  0.00011309 -0.00005851  0.01481040 -0.00000019
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.45717672  0.07111290  0.00017457 -0.16194578  0.01893639 -0.13757019  0.07612816  0.00119829

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.49786638  0.06568289 -0.00034845 -0.14652419 -0.02013975  0.15201487  0.06962927 -0.00131033

 15  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                               -0.00068051  0.00224078 -0.00020711  0.00046358 -0.20500964 -0.02764837  0.00005576  0.00024918

 16  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00010506 -0.00044686 -0.01872466 -0.00018908  0.00001762 -0.00002976  0.00000000 -0.00004703

 17  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00004514 -0.00019179 -0.00802019 -0.00008116  0.00000770 -0.00001259  0.00000000  0.00010417

 18  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00006764 -0.01862106  0.00052760 -0.00825440 -0.00023085  0.00006022  0.00000000 -0.00000000

 19  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00168007  0.00011008 -0.00001304  0.00003724 -0.01018565  0.00021019  0.00000000 -0.00640881

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01084616  0.00000640 -0.00001656  0.00005292  0.00021049  0.01018616  0.00000000 -0.41993741

 21  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00003722

 22  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000771 -0.00495617  0.00000545  0.01118103 -0.00001388 -0.00005455 -0.01481040  0.00000019

 23  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00059245  0.00011447 -0.00001343  0.00003864 -0.01058905  0.00021708  0.00000009  0.00023788

 24  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00382816  0.00000673 -0.00001734  0.00005489  0.00021739  0.01058958  0.00000017  0.01572683

 25  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.07841019 -0.02314279  0.13865607  0.00348516  0.15222494 -0.00292281  0.01076856 -0.00002049

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.06757819  0.02180253 -0.15123014 -0.00491103  0.14000789 -0.00312945 -0.01169202 -0.00001815

 27  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00331693  0.23538345  0.02651793 -0.02476501  0.00253092 -0.00002817 -0.10193655 -0.00000008

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01736679 -0.00001025  0.00002669 -0.00008473 -0.00033700 -0.01630982 -0.00000000 -0.29056620

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.01299838  0.00000771 -0.00001983  0.00006373  0.00025213  0.01220727  0.00000000 -0.38821778

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00167973  0.00011008 -0.00001292  0.00003724 -0.01018564  0.00020988 -0.00000000  0.00641449

 31  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000144 -0.00215939  0.00025591 -0.02025995 -0.00009548  0.00010918 -0.00000000 -0.00000589

 32  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00005735  0.00024315  0.01018504  0.00010280 -0.00000959  0.00001599 -0.00000000 -0.00009831

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.15041959

 34  1    10    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00059299  0.00011451 -0.00001356  0.00003871 -0.01058901  0.00021856 -0.00000009 -0.00024007

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00001578  0.01215734 -0.00027551 -0.00129988  0.00012697 -0.00000396 -0.01481040  0.00000000

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00002016 -0.00025109 -0.01058842 -0.00010714  0.00001010 -0.00001683 -0.00000207 -0.00000389

 37  1     1    1  |0 0>       -0.28841965  0.00061943  0.00008395  0.00426225  0.02367029  0.95548668 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00084702  0.95509277 -0.01996507  0.02974666  0.00664983 -0.00091485 -0.00000008 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00210372  0.01964588  0.95553127  0.01032401  0.00095701 -0.00016645  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 40  1     4    1  |0 0>        0.04589111 -0.00658502 -0.00078871 -0.00342176  0.95546776 -0.02365021 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00033881 -0.02998038 -0.00970848  0.95525365  0.00309949 -0.00431770 -0.00000002 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000001  0.00000013 -0.00000001  0.00000005  0.00000000  0.00000000  0.98355634 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00302556
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>       -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.62360626
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00003154
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 46  1    10    1  |0 0>        0.01224694  0.00000350 -0.00000746  0.00002390  0.00009480  0.00466058 -0.00000000  0.00000029
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00004137  0.00404259 -0.00007272 -0.00231999  0.00003546  0.00000803 -0.00000002 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>       -0.00189298 -0.00005038  0.00000603 -0.00001706  0.00466035 -0.00009466  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 49  1    13    1  |0 0>       -0.00006495  0.00011162  0.00466001  0.00004839 -0.00000449  0.00000722  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00001823 -0.00231815  0.00009744 -0.00404301 -0.00003951  0.00002344 -0.00000003  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00000000 -0.00000003  0.00000000 -0.00000003 -0.00000000  0.00000000  0.00526301  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |1 1>+       0.00002019 -0.00018748  0.01152688  0.00016623 -0.00163207 -0.00866146 -0.00000427  0.00122623
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00001848  0.00020290  0.01054324  0.00015170  0.00176933 -0.00792259 -0.00000433 -0.00132872
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000005  0.00177159  0.00001028 -0.00000146  0.01543660 -0.00000811 -0.00000207 -0.01159815
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.48149067  0.00000908 -0.00511534  0.35528062  0.00003712 -0.00004355  0.09097676 -0.00001622
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000014  0.00000000

  5  1     5    1  |1 1>+       0.05752912  0.00000529  0.00060614 -0.04244177 -0.00000912 -0.00040047  0.76146153 -0.00014149
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000115  0.00000000

  6  1     6    1  |1 1>+       0.00640517 -0.00010406 -0.30986457 -0.00445992  0.00003635 -0.38341372 -0.00021047  0.00005904
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |1 1>+      -0.00000864 -0.41998771  0.00003683 -0.00003248  0.30989148  0.00005899  0.00007989  0.38341707
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00000110 -0.00000174 -0.00000002  0.00000081  0.00000128 -0.00001498 -0.00000687  0.00000607
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.15041924 -0.00000283 -0.00526784  0.36567127  0.00003820  0.00000001 -0.00000369 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+       0.00024007 -0.00000400  0.31274406  0.00450539 -0.00003870 -0.17598749 -0.00009104  0.00002823
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |1 1>+      -0.00000036 -0.01572804 -0.00003916  0.00003212 -0.31277963  0.00002821  0.00003138  0.17598413
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |1 1>+      -0.00000000 -0.00000220 -0.00000369 -0.00000005 -0.00004370  0.00000386 -0.00000006  0.00001741
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00016888 -0.00000029  0.01044003 -0.00148052 -0.00000139  0.00782733 -0.00122118 -0.00000121

 14  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00018322  0.00000032 -0.01141620  0.00160632  0.00000152 -0.00855892  0.00132577  0.00000087

 15  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000
                                0.00177560 -0.00000010  0.00218454  0.01546994  0.00000133  0.00180243  0.01159860 -0.00000235

 16  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000432 -0.19094651  0.00001658 -0.00001447  0.14090196  0.00010867  0.00012565  0.70493390

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000362  0.44579975 -0.00003455  0.00003857 -0.32893462  0.00004077  0.00004801  0.30194472

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000933 -0.00000001 -0.00000000  0.00000687 -0.00000167  0.00000199 -0.00001991

 19  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000058 -0.00000000
                                0.41993830 -0.00000115  0.00446243 -0.30985103 -0.00003735 -0.00019678  0.38342431 -0.00006372

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00640881  0.00009734  0.30984700  0.00446236 -0.00003140 -0.38342821 -0.00019677  0.00005492

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000340 -0.15043650 -0.00004345  0.00003758 -0.36571000  0.00000000  0.00000001  0.00000531

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000010  0.00000000  0.00000371 -0.00000195  0.00000000  0.00000640 -0.00000217 -0.00000462

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000027  0.00000000
                               -0.01572657  0.00000030  0.00446178 -0.31275149 -0.00003267  0.00006645 -0.17597694  0.00003136

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00023788 -0.00000390  0.31275316  0.00446182 -0.00003669  0.17597245  0.00006645 -0.00002709

 25  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                                0.00132288 -0.00119556 -0.00016730  0.01152826 -0.01041634  0.00000326 -0.00866297 -0.00782511

 26  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                                0.00121000  0.00130732 -0.00015053  0.01054196  0.01139290  0.00000543 -0.00792064  0.00856002

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000096 -0.00027625 -0.00000041  0.00000869 -0.00240713 -0.00000011 -0.00000673 -0.00180829

 28  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00443179  0.00007222  0.21441681  0.00308603 -0.00002531  0.61395017  0.00031411 -0.00009433

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00593348  0.00008996  0.28644696  0.00413182 -0.00002901 -0.45952785 -0.00023121  0.00006506

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000058 -0.00000000
                               -0.41993780  0.00000791 -0.00446673  0.30985820  0.00003238 -0.00018493  0.38341843 -0.00006832

 31  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000009  0.00000174  0.00000435  0.00000006 -0.00000130  0.00000636 -0.00000241 -0.00002410

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000941 -0.41998749  0.00003267 -0.00003191  0.30988070 -0.00005187 -0.00006835 -0.38342596

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00229622  0.00003727 -0.36567030 -0.00526785  0.00004290  0.00000884  0.00000000 -0.00000000

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000027  0.00000000
                                0.01572643 -0.00000048 -0.00450542  0.31274713  0.00002899  0.00009105 -0.17598297  0.00002928

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000010  0.00000220  0.00000003 -0.00000201  0.00004370 -0.00000255  0.00000211  0.00002202

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000054 -0.01572815 -0.00003711  0.00002846 -0.31278451 -0.00002708 -0.00002929 -0.17597477

 37  1     1    1  |0 0>        0.00000000  0.00000000  0.00000062  0.00000001  0.00000000  0.02684754  0.00012416  0.00004183
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000008 -0.00010622  0.00008744
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000038 -0.00004209  0.00005875  0.02684765
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>        0.00000002  0.00000000 -0.00000001  0.00000025 -0.00000000 -0.00012407  0.02684730 -0.00005860
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004  0.00000000

 41  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00002033  0.00000012 -0.00002287
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.62360460 -0.00007605 -0.00236188  0.59159678  0.00000160 -0.00000013 -0.00000589 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00302557 -0.00003191  0.59159622  0.00236188  0.00004614 -0.00001336  0.00000006  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00007620  0.62361084 -0.00004613 -0.00000179  0.59160174 -0.00000000 -0.00000001 -0.00000783
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000547 -0.00000007 -0.00000000 -0.23439609 -0.00004434  0.00002722
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00003609 -0.00000118 -0.00001737
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000004  0.00000000  0.00000003 -0.00000235 -0.00000000  0.00004434 -0.23439524  0.00003594
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000035 -0.00000000

 49  1    13    1  |0 0>       -0.00000000  0.00000021  0.00000000 -0.00000000 -0.00000323 -0.00002722 -0.00003594 -0.23439175
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000258  0.00000159 -0.00007496
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 51  1    15    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |1 1>+       0.00012034  0.00903675  0.00960312 -0.00591707  0.00009596 -0.00083862  0.00000000 -0.00000051
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00013193 -0.00988172 -0.01050121 -0.00541238  0.00008726  0.00090757  0.00000000 -0.00000047
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00002791  0.00208764  0.00221895 -0.00000636 -0.00000235  0.00792444 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000092  0.00000004 -0.00000000  0.00307411  0.19016084  0.00005889  0.76931517  0.00007082
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000401 -0.00000000

  5  1     5    1  |1 1>+       0.00000702  0.00000014  0.00000000 -0.00036464 -0.02271985 -0.00000955 -0.09008953 -0.00002373
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000047  0.00000000

  6  1     6    1  |1 1>+      -0.00000745  0.00000346 -0.00000000  0.16577788 -0.00267914  0.00004156 -0.00003113  0.47202826
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+      -0.00000523  0.00001362  0.00000000 -0.00004239 -0.00005100  0.16580025 -0.00013892  0.00030324
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.76679418 -0.01022457 -0.00000149  0.00000001  0.00000043  0.00000069  0.00000312 -0.00001068
                                0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00456144 -0.28202578 -0.00008734  0.00001523  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00000338  0.00000399 -0.00000652  0.55197290 -0.00892755  0.00014190 -0.00000000  0.00003456
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.00000132 -0.00002216  0.00007737 -0.00014465 -0.00016863  0.55204545 -0.00000001  0.00000002
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00270864  0.20319086 -0.55377651 -0.00000652  0.00000008  0.00007712  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00859373  0.00511562 -0.01062723 -0.00536053 -0.00075054 -0.00000160  0.00000008 -0.00000047

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00786043  0.00467906 -0.00972001  0.00586175  0.00081423  0.00000175 -0.00000008  0.00000052

 15  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000633  0.00000373 -0.00000778 -0.00110736  0.00794334  0.00000214 -0.00000071 -0.00000011

 16  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000737  0.00001893  0.00000000 -0.00001919 -0.00002304  0.07541203  0.00009601 -0.00020708

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000505  0.00002189  0.00000000  0.00004259  0.00005636 -0.17606672 -0.00020728  0.00047222

 18  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.39225191  0.65895209  0.00000022 -0.00000001  0.00000000  0.00000368 -0.00000138  0.00001067

 19  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000232  0.00000000
                               -0.00000220  0.00000015  0.00000000 -0.00268058 -0.16577804 -0.00005401  0.44541504  0.00006962

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000745  0.00000346 -0.00000000 -0.16577903  0.00268061 -0.00003891  0.00005284 -0.42158358

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001  0.00000001 -0.00007210 -0.00008619  0.28206161 -0.00000000  0.00000001

 22  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.17461319  0.10394090  0.55377658  0.00000656  0.00000343  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000
                                0.00000213 -0.00000073 -0.00000355  0.00885040  0.55197456  0.00017093 -0.00003456 -0.00000001

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000548 -0.00000281 -0.00000652  0.55197366 -0.00885043  0.00013839 -0.00000001  0.00003261

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00123458  0.00069068 -0.00150326  0.00009707  0.00591895 -0.00534592 -0.00000053 -0.00000000

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00134035 -0.00074991  0.00163218  0.00008604  0.00541038  0.00584956 -0.00000048  0.00000000

 27  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01168582 -0.00654079  0.01423008  0.00000039  0.00000471 -0.00123568 -0.00000000 -0.00000000

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001194 -0.00000556  0.00000000 -0.11475565  0.00185453 -0.00002885 -0.00003843  0.48388255

 29  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000324 -0.00000600  0.00000000 -0.15332281  0.00248265 -0.00003597 -0.00007390  0.60441197

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000234 -0.00000000
                               -0.00000220  0.00000015  0.00000000  0.00268280  0.16577722  0.00005134 -0.44904720 -0.00002849

 31  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.37454261  0.66917703  0.00000175 -0.00000233  0.00000003 -0.00000068  0.00000139 -0.00000150

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000050 -0.00001079 -0.00000000 -0.00004017 -0.00005070  0.16580036 -0.00011895  0.00029020

 33  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000000 -0.00000000 -0.28202768  0.00456147 -0.00007070  0.00000000 -0.00001480

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000
                                0.00000215  0.00000057  0.00000355 -0.00892749 -0.55197200 -0.00016445  0.00003476  0.00000000

 35  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.17732419  0.09924817  0.55377720  0.00000008  0.00000356 -0.00007712 -0.00000000  0.00000000

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00002571  0.00000763  0.00007737 -0.00014101 -0.00016219  0.55204377 -0.00000001  0.00000002

 37  1     1    1  |0 0>        0.00001247 -0.00001602 -0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.02140777  0.01620151 -0.00000008 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00008336 -0.00003437  0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00008490  0.00006415 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.01620162  0.02140816  0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1     6    1  |0 0>        0.00000004 -0.00000003  0.02804830 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00269628  0.46811524  0.00009667 -0.00003421 -0.00000035
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000001  0.00000000  0.00000000 -0.46811416  0.00269628 -0.00002691  0.00000036 -0.00003337
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000000  0.00000001 -0.00000000 -0.00002746 -0.00009652  0.46812392 -0.00000001  0.00000003
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00003617 -0.00000087 -0.00000000  0.00000049 -0.00000001 -0.00000000 -0.00000000  0.00000097
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 47  1    11    1  |0 0>       -0.23332987 -0.02242362 -0.00000103 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000102  0.00000171  0.00000000  0.00000000  0.00000027 -0.00000000  0.00000017  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00002445 -0.00007296  0.00000000  0.00000000  0.00000000 -0.00000066 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>       -0.02242326  0.23332400 -0.00000272  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00000002  0.00000071  0.28033003 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |1 1>+      -0.00000007 -0.00000001  0.00000009  0.00000000 -0.00000000 -0.00016502  0.00178238 -0.00000072
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000008  0.00000001  0.00000008  0.00000000  0.00000000  0.00017954  0.00163010 -0.00000060
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000069  0.00000013  0.00000000  0.00000000 -0.00000000 -0.00003769  0.00000143 -0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+       0.00022094  0.00012520  0.00207489 -0.06604144 -0.00000397 -0.00000092  0.00001109  0.03177368
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002

  5  1     5    1  |1 1>+      -0.00003268  0.00112255  0.01816068 -0.57326089 -0.00000706 -0.00001284  0.00010533  0.26593271
                               -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000018

  6  1     6    1  |1 1>+      -0.00030093  0.00027343  0.55698747  0.01762573  0.00000863 -0.00003387  0.13393091 -0.00005614
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.47116941 -0.55799118  0.00030576 -0.00108280 -0.00000917 -0.00001721 -0.00000589  0.00000461
                                0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |1 1>+      -0.00001040 -0.00001974  0.00000034 -0.00000750  0.57735033 -0.26679517 -0.00006890 -0.00001250
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+       0.00000001 -0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000001  0.00000327
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |1 1>+      -0.00000002  0.00000000  0.00001430  0.00000045 -0.00000000  0.00015219 -0.59895947  0.00023211
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00003458 -0.00001360  0.00000001 -0.00000002  0.00000000  0.00007338  0.00003022 -0.00000258
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000025  0.06118590 -0.00001886  0.00001116
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000005 -0.00000001 -0.00000000  0.00168493 -0.00161025 -0.00025146

 14  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000005  0.00000001 -0.00000000  0.00154025  0.00176183  0.00027310

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000001  0.00000010  0.00000000  0.00000125 -0.00037124  0.00238676

 16  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.32706716  0.51738105 -0.00028684  0.00099587  0.00001391 -0.00003227 -0.00001091  0.00000106

 17  1     5    1  |1 0>       -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.70179669  0.25712091 -0.00015909  0.00048611  0.00001297 -0.00001704 -0.00000266 -0.00000158

 18  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000
                               -0.00000258  0.00001777 -0.00000061  0.00001598 -0.57735032 -0.15391822 -0.00002575 -0.00000803

 19  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000  0.00000009
                                0.00013819 -0.00112172 -0.01832357  0.57846747  0.00001493 -0.00000447  0.00005134  0.13392976

 20  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00029087  0.00031183  0.59604219  0.01889086 -0.00000789 -0.00003387  0.13393017 -0.00005135

 21  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001458  0.00000078 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000

 22  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000039 -0.56601501 -0.00015997 -0.00000974

 23  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000040
                               -0.00000001  0.00000003  0.00000046 -0.00001455  0.00000000 -0.00001635  0.00014843  0.59896250

 24  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000002 -0.00000000 -0.00001685 -0.00000053 -0.00000000 -0.00014481  0.59896217 -0.00014843

 25  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000047  0.00000004  0.00000000 -0.00000006 -0.00000000 -0.00026376 -0.00000068 -0.00178231

 26  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000052 -0.00000005  0.00000000 -0.00000006  0.00000000  0.00028649 -0.00000064 -0.00163012

 27  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000011  0.00000001  0.00000000 -0.00000000  0.00000000  0.00249945  0.00000058 -0.00000121

 28  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00031258  0.00021364  0.44127570  0.01394718  0.00000886  0.00005422 -0.21441758  0.00008186

 29  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00041151 -0.00019666 -0.37252204 -0.01180882  0.00000248 -0.00004230  0.16048340 -0.00005991

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000009
                               -0.00012928 -0.00111654 -0.01820901  0.57565671  0.00001700 -0.00000447  0.00004721  0.13392968

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00001411 -0.00001989 -0.00000503 -0.00001616  0.57735015  0.11287640  0.00004557  0.00000054

 32  1     8    1  |1 1>-      -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.42250129  0.59569076 -0.00034801  0.00114651  0.00002944  0.00001879  0.00000340 -0.00000058

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000000  0.00000063  0.00000002  0.00000000 -0.00000000  0.00000261  0.00000000

 34  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000040
                                0.00000001  0.00000003  0.00000049 -0.00001536 -0.00000000 -0.00001598  0.00023211  0.59896167

 35  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000008  0.62719867  0.00014111  0.00002090

 36  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00003293  0.00001720 -0.00000001  0.00000003 -0.00000001  0.00000570 -0.00002637 -0.00000447

 37  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000014 -0.00000000 -0.00000000 -0.00000306 -0.02084882  0.00009371
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.01752340 -0.00000401 -0.00008332
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 39  1     3    1  |0 0>        0.00000000 -0.00000015  0.00000000 -0.00000000 -0.00000000  0.00006364  0.00003498  0.00004200
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000014  0.00000000 -0.00007032  0.00009362  0.02084863
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

 41  1     5    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.01129623 -0.00001148  0.00000032
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000001 -0.00000000  0.00000000  0.00000025  0.00000000  0.00000000  0.00000000 -0.00000103
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 44  1     8    1  |0 0>        0.00000003  0.00000000  0.00000126  0.00000004  0.00000000  0.00000000  0.00000013  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00003328  0.00000172 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 46  1    10    1  |0 0>       -0.00000000  0.00000001  0.00001553  0.00000049 -0.00000000  0.00004904 -0.41766108  0.00002478
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 47  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000019 -0.41758044 -0.00004849 -0.00001428
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 48  1    12    1  |0 0>       -0.00000000  0.00000003  0.00000048 -0.00001508  0.00000000 -0.00001424  0.00002478  0.41765810
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000028

 49  1    13    1  |0 0>       -0.00000081  0.00001562 -0.00000001  0.00000003 -0.00000000 -0.00002457 -0.00000260 -0.00000860
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 50  1    14    1  |0 0>        0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000009 -0.00858626 -0.00002718  0.00000199
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000061 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |1 1>+       0.00024880 -0.00185273 -0.01086343  0.00160816  0.00155289  0.00117537 -0.00931717 -0.00000360
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00026996  0.00202621 -0.00993610  0.00146949 -0.00168707 -0.00128270 -0.00852281 -0.00000323
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00238713 -0.00042371 -0.00000824 -0.00000538 -0.01470468  0.00027042 -0.00000718 -0.00000019
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |1 1>+      -0.00000014 -0.00000043 -0.00068234 -0.00461161  0.00000207 -0.00000003 -0.00000315  0.00915141
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00000318 -0.00000316  0.00008136  0.00055031 -0.00000031  0.00000120 -0.00003002  0.07659298
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |1 1>+       0.00000591  0.00000804 -0.00402331  0.00059528 -0.00000019  0.00000534 -0.03857079 -0.00001601
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |1 1>+       0.13392883 -0.00024215  0.00000008  0.00000182  0.00406716  0.00000232  0.00000144  0.00000170
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00000689  0.02369531 -0.00000000 -0.00000001  0.00000002  0.07657512  0.00001032 -0.00000115
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000000  0.00000000  0.12790203  0.86437669 -0.00038767  0.00000000 -0.00000000 -0.00000018
                                0.00000000  0.00000000  0.00000001  0.00000009 -0.00000001 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00003025 -0.00002783  0.30830651 -0.04562019  0.00001231  0.00004651 -0.33188811 -0.00012723
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |1 1>+      -0.59896512  0.00098626 -0.00000806 -0.00013859 -0.31166017  0.00001620  0.00001455  0.00000459
                                0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |1 1>+       0.00116975  0.68890992 -0.00000363  0.00000051 -0.00004354  0.04627732  0.00002205 -0.00000195
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000198 -0.00118274 -0.01004392 -0.00008411  0.00000023 -0.00860107  0.00841925 -0.00131482

 14  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000167 -0.00108159  0.01098147  0.00008005 -0.00000025 -0.00786448 -0.00920861  0.00142749

 15  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000003 -0.00000092 -0.00011584  0.01488194 -0.00000663 -0.00000656  0.00194073  0.01247727

 16  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.24618806 -0.00044293  0.00000003  0.00000082  0.00184830  0.00000442  0.00000267  0.00000098

 17  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.10544792 -0.00019431 -0.00000003 -0.00000199 -0.00431575  0.00000286  0.00000056 -0.00000017

 18  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00041676 -0.21919939 -0.00000000  0.00000000  0.00000009  0.04635463  0.00000832 -0.00000035

 19  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000103 -0.00000177  0.00059523  0.00402279 -0.00000187  0.00000003 -0.00001463  0.03857070

 20  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000447  0.00000804  0.00402261 -0.00059521  0.00000025  0.00000534 -0.03857039 -0.00001463

 21  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000094  0.00000000  0.00001706  0.00038937  0.87378835 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00064087  0.39744448  0.00000392  0.00000144 -0.00000001 -0.30632790 -0.00003141 -0.00000304

 23  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000002
                               -0.00000260 -0.00001046  0.04557640  0.30830803 -0.00013827  0.00000168  0.00008086 -0.33188580

 24  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00002642  0.00003126  0.30830867 -0.04557648  0.00001429 -0.00004235  0.33188808  0.00008086

 25  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00161068 -0.00011975  0.00160766  0.01086788  0.00991854  0.00139968  0.00000347 -0.00931781

 26  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00176132  0.00013004  0.00147003  0.00993123 -0.01085591 -0.00151973  0.00000338 -0.00852212

 27  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00036967  0.00116197  0.00000122  0.00000898  0.00229295 -0.01325526 -0.00000208 -0.00000681

 28  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000939 -0.00001286  0.00278327 -0.00041180  0.00000013 -0.00000855  0.06175561  0.00002332

 29  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000510  0.00001332  0.00371767 -0.00055018  0.00000023  0.00000686 -0.04622147 -0.00001706

 30  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000058 -0.00000177 -0.00059543 -0.00402377  0.00000180  0.00000003 -0.00001343  0.03857087

 31  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00042298 -0.24289418  0.00000006 -0.00000001 -0.00000002 -0.03022045 -0.00000270 -0.00000033

 32  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.13392816  0.00024104  0.00000003  0.00000182  0.00406742 -0.00000276 -0.00000072 -0.00000053

 33  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.86437651 -0.12790199  0.00004012  0.00000000  0.00000073 -0.00000000

 34  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000002
                                0.00000447 -0.00000606 -0.04562008 -0.30830572  0.00013461  0.00000197  0.00012723 -0.33188592

 35  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00052888  0.29146723  0.00000029  0.00000199  0.00004354  0.35260648  0.00005346  0.00000108

 36  1    12    1  |1 1>-       0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.59896654 -0.00104179 -0.00000555 -0.00013525 -0.31166053  0.00002660 -0.00001242 -0.00000068

 37  1     1    1  |0 0>        0.00003481  0.00001160  0.00000006 -0.00000001  0.00000000 -0.00000089 -0.00370373 -0.00001663
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 38  1     2    1  |0 0>        0.00004543 -0.01129620  0.00000000  0.00000000 -0.00000000 -0.00317647 -0.00000054  0.00001468
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>        0.02084885 -0.00001519 -0.00000000 -0.00000000 -0.00000000  0.00001168  0.00000624 -0.00000750
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 40  1     4    1  |0 0>       -0.00004198 -0.00004490 -0.00000001 -0.00000005  0.00000000 -0.00001262  0.00001662 -0.00370364
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 41  1     5    1  |0 0>       -0.00004723 -0.01752360  0.00000000  0.00000000  0.00000000  0.00190464 -0.00000257 -0.00000002
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 43  1     7    1  |0 0>       -0.00000000 -0.00000000 -0.02779627 -0.20238191  0.00007019 -0.00000000  0.00000000  0.00000003
                               -0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000000  0.00000000  0.20238098 -0.02779612  0.00004855 -0.00000000  0.00000005 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     9    1  |0 0>        0.00000088 -0.00000000 -0.00003855  0.00007614  0.20428236 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1    10    1  |0 0>       -0.00000265 -0.00002617  0.00000080 -0.00000012  0.00000000 -0.00000263  0.87774847  0.00004842
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>       -0.00004251 -0.00858597 -0.00000000  0.00000000 -0.00000000  0.87768027  0.00000228 -0.00000123
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 48  1    12    1  |0 0>        0.00000860 -0.00000230 -0.00000019 -0.00000129  0.00000000  0.00000120 -0.00004842  0.87775012
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004

 49  1    13    1  |0 0>        0.41764679 -0.00087281 -0.00000000  0.00000000 -0.00000056 -0.00000040 -0.00000032 -0.00000971
                               -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.00087213  0.41756102 -0.00000000 -0.00000000 -0.00000000 -0.01045240 -0.00002869 -0.00000240
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000000  0.00000149  0.00000000 -0.00000000  0.00000000  0.00000041  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51

  1  1     1    1  |1 1>+      -0.00965106  0.00132105  0.00838543
                                0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.01055306 -0.00143366 -0.00916964
                               -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00223363 -0.01247587  0.00193758
                               -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |1 1>+      -0.00000005 -0.00000013  0.00000000
                                0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |1 1>+      -0.00000025 -0.00000164 -0.00000000
                                0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |1 1>+      -0.00000119  0.00000144 -0.00000000
                               -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |1 1>+       0.00001103  0.03857156 -0.00000000
                                0.00000000  0.00000000 -0.00000000

  8  1     8    1  |1 1>+       0.00931513 -0.00000774  0.00000021
                                0.00000000  0.00000000 -0.00000000

  9  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000

 10  1    10    1  |1 1>+      -0.00001471  0.00001455  0.00000191
                               -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |1 1>+       0.00014843  0.33187783 -0.00002264
                                0.00000000  0.00000000 -0.00000000

 12  1    12    1  |1 1>+      -0.38042117  0.00015242  0.16208651
                               -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000
                               -0.00646508  0.00000215 -0.00927984

 14  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000
                               -0.00591370  0.00000256 -0.00848764

 15  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00000474 -0.00000024 -0.00000680

 16  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000
                                0.00002092  0.07090822 -0.00000000

 17  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000
                                0.00000767  0.03037151 -0.00000000

 18  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.06166026  0.00001467 -0.00000028

 19  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00000019 -0.00000007  0.00000000

 20  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000
                               -0.00000119  0.00000103  0.00000000

 21  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000043 -0.00000000

 22  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000
                               -0.23028510  0.00008703 -0.16208835

 23  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000
                                0.00000315  0.00000459  0.00000104

 24  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000
                                0.00001294 -0.00001242  0.00000191

 25  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000
                               -0.00059859 -0.00841951 -0.00131266

 26  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000
                                0.00065004  0.00920716  0.00142523

 27  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000
                                0.00564337 -0.00194622  0.01242581

 28  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                                0.00000190 -0.00000229  0.00000000

 29  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000
                               -0.00000035  0.00000116 -0.00000000

 30  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                               -0.00000019 -0.00000053 -0.00000000

 31  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000
                               -0.07097558  0.00002260 -0.00000052

 32  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000
                               -0.00001137 -0.03857137  0.00000000

 33  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000

 34  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000
                                0.00000072  0.00000068 -0.00000104

 35  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000
                               -0.15013150  0.00006539 -0.16208792

 36  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000
                               -0.00011625 -0.33187792 -0.00002264

 37  1     1    1  |0 0>       -0.00000246 -0.00000620  0.00000000
                               -0.00000000  0.00000000 -0.00000000

 38  1     2    1  |0 0>        0.00190443 -0.00001245  0.00000002
                               -0.00000000  0.00000000 -0.00000000

 39  1     3    1  |0 0>       -0.00000467 -0.00370349 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 40  1     4    1  |0 0>        0.00000756  0.00000747  0.00000000
                               -0.00000000  0.00000000 -0.00000000

 41  1     5    1  |0 0>        0.00317625  0.00000200  0.00000000
                                0.00000000  0.00000000  0.00000000

 42  1     6    1  |0 0>        0.00000008 -0.00000000 -0.00849903
                                0.00000000  0.00000000  0.00000000

 43  1     7    1  |0 0>        0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 44  1     8    1  |0 0>        0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000

 45  1     9    1  |0 0>       -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000

 46  1    10    1  |0 0>        0.00002866  0.00000032 -0.00000000
                                0.00000000 -0.00000000  0.00000000

 47  1    11    1  |0 0>        0.01045193  0.00000038 -0.00000032
                                0.00000000 -0.00000000  0.00000000

 48  1    12    1  |0 0>        0.00000241  0.00000971  0.00000000
                                0.00000000 -0.00000000  0.00000000

 49  1    13    1  |0 0>        0.00000191  0.87775599  0.00000000
                                0.00000000  0.00000000 -0.00000000

 50  1    14    1  |0 0>        0.87769064 -0.00000192 -0.00000047
                                0.00000000  0.00000000  0.00000000

 51  1    15    1  |0 0>        0.00000048 -0.00000000  0.95949786
                                0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        14.33%    0.19%    0.90%   26.65%    9.32%   17.51%    0.72%    0.49%
  2  1     2    1  |1 1>+        17.14%    0.86%    0.26%   22.27%   11.38%   20.90%    0.72%    0.59%
  3  1     3    1  |1 1>+         0.77%    6.18%   42.58%    0.00%    0.40%    1.44%   43.91%    0.31%
  4  1     4    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.05%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.03%    0.02%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.05%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>         17.55%    0.00%    0.00%   22.75%    5.39%   27.64%    0.05%    0.00%
 14  1     2    1  |1 0>         14.68%    0.00%    0.00%   27.19%    4.65%   23.16%    0.03%    0.00%
 15  1     3    1  |1 0>          0.00%   43.62%    6.32%    0.01%    0.00%    0.00%    0.31%   45.37%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.04%    0.01%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.01%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.35%    9.90%   38.95%    0.55%    0.57%    0.00%   16.71%   27.95%
 26  1     2    1  |1 1>-         0.41%   39.00%    9.83%    0.48%    0.68%    0.01%   28.08%   16.66%
 27  1     3    1  |1 1>-        31.47%    0.15%    1.04%    0.00%   58.99%    0.71%    0.85%    0.01%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.21%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    8.52%    0.01%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    8.46%    0.06%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    8.26%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    8.51%    0.01%    0.00%
 42  1     6    1  |0 0>          3.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 51  1    15    1  |0 0>          0.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |1 1>+        24.42%    0.89%    0.03%    1.64%    0.00%    2.35%    0.47%    0.00%
  2  1     2    1  |1 1>+        20.19%    1.07%    0.04%    2.01%    0.00%    1.93%    0.57%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.03%    4.21%    0.08%    0.00%    0.00%    0.03%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%   17.63%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.03%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.02%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.01%    0.00%    0.01%    0.00%    0.00%    0.02%    0.00%
 13  1     1    1  |1 0>         20.90%    0.51%    0.00%    2.62%    0.04%    1.89%    0.58%    0.00%
 14  1     2    1  |1 0>         24.79%    0.43%    0.00%    2.15%    0.04%    2.31%    0.48%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    4.20%    0.08%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.03%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%   17.63%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.02%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.02%
 25  1     1    1  |1 1>-         0.61%    0.05%    1.92%    0.00%    2.32%    0.00%    0.01%    0.00%
 26  1     2    1  |1 1>-         0.46%    0.05%    2.29%    0.00%    1.96%    0.00%    0.01%    0.00%
 27  1     3    1  |1 1>-         0.00%    5.54%    0.07%    0.06%    0.00%    0.00%    1.04%    0.00%
 28  1     4    1  |1 1>-         0.03%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    8.44%
 29  1     5    1  |1 1>-         0.02%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%   15.07%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    2.26%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          8.32%    0.00%    0.00%    0.00%    0.06%   91.30%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%   91.22%    0.04%    0.09%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.04%   91.30%    0.01%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.21%    0.00%    0.00%    0.00%   91.29%    0.06%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.09%    0.01%   91.25%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   96.74%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   38.89%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.01%
  4  1     4    1  |1 1>+        23.18%    0.00%    0.00%   12.62%    0.00%    0.00%    0.83%    0.00%
  5  1     5    1  |1 1>+         0.33%    0.00%    0.00%    0.18%    0.00%    0.00%   57.98%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    9.60%    0.00%    0.00%   14.70%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%   17.64%    0.00%    0.00%    9.60%    0.00%    0.00%   14.70%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         2.26%    0.00%    0.00%   13.37%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    9.78%    0.00%    0.00%    3.10%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    9.78%    0.00%    0.00%    3.10%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.01%    0.00%
 16  1     4    1  |1 0>          0.00%    3.65%    0.00%    0.00%    1.99%    0.00%    0.00%   49.69%
 17  1     5    1  |1 0>          0.00%   19.87%    0.00%    0.00%   10.82%    0.00%    0.00%    9.12%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>         17.63%    0.00%    0.00%    9.60%    0.00%    0.00%   14.70%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    9.60%    0.00%    0.00%   14.70%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    2.26%    0.00%    0.00%   13.37%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.02%    0.00%    0.00%    9.78%    0.00%    0.00%    3.10%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    9.78%    0.00%    0.00%    3.10%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.01%    0.01%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.01%    0.01%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    4.60%    0.00%    0.00%   37.69%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    8.21%    0.00%    0.00%   21.12%    0.00%    0.00%
 30  1     6    1  |1 1>-        17.63%    0.00%    0.00%    9.60%    0.00%    0.00%   14.70%    0.00%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%   17.64%    0.00%    0.00%    9.60%    0.00%    0.00%   14.70%
 33  1     9    1  |1 1>-         0.00%    0.00%   13.37%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.02%    0.00%    0.00%    9.78%    0.00%    0.00%    3.10%    0.00%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.02%    0.00%    0.00%    9.78%    0.00%    0.00%    3.10%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.07%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>         38.89%    0.00%    0.00%   35.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%   35.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%   38.89%    0.00%    0.00%   35.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    5.49%    0.00%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    5.49%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    5.49%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |1 1>+         0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    3.62%    0.00%   59.18%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.05%    0.00%    0.81%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    2.75%    0.00%    0.00%    0.00%   22.28%
  7  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    2.75%    0.00%    0.00%
  8  1     8    1  |1 1>+        58.80%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    7.95%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%   30.47%    0.01%    0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   30.48%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    4.13%   30.67%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 0>          0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.57%    0.00%    0.00%
 17  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    3.10%    0.00%    0.00%
 18  1     6    1  |1 0>         15.39%   43.42%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    2.75%    0.00%   19.84%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    2.75%    0.00%    0.00%    0.00%   17.77%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    7.96%    0.00%    0.00%
 22  1    10    1  |1 0>          3.05%    1.08%   30.67%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.01%   30.47%    0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%   30.47%    0.01%    0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.01%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    1.32%    0.00%    0.00%    0.00%   23.41%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    2.35%    0.00%    0.00%    0.00%   36.53%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    2.75%    0.00%   20.16%    0.00%
 31  1     7    1  |1 1>-        14.03%   44.78%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    2.75%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    7.95%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.01%   30.47%    0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         3.14%    0.99%   30.67%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   30.48%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.05%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.03%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.08%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%   21.91%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%   21.91%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   21.91%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          5.44%    0.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.05%    5.44%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    7.86%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.44%    0.00%    0.00%    0.00%    0.10%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.03%   32.86%    0.00%    0.00%    0.00%    7.07%
  6  1     6    1  |1 1>+         0.00%    0.00%   31.02%    0.03%    0.00%    0.00%    1.79%    0.00%
  7  1     7    1  |1 1>+        22.20%   31.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.33%    7.12%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   35.88%    0.00%
 11  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.37%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 0>         10.70%   26.77%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>         49.25%    6.61%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.33%    2.37%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.03%   33.46%    0.00%    0.00%    0.00%    1.79%
 20  1     8    1  |1 0>          0.00%    0.00%   35.53%    0.04%    0.00%    0.00%    1.79%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   32.04%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   35.88%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   35.88%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%   19.47%    0.02%    0.00%    0.00%    4.60%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%   13.88%    0.01%    0.00%    0.00%    2.58%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.03%   33.14%    0.00%    0.00%    0.00%    1.79%
 31  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.33%    1.27%    0.00%    0.00%
 32  1     8    1  |1 1>-        17.85%   35.48%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   35.88%
 35  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   39.34%    0.00%    0.00%
 36  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   17.44%    0.00%
 47  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   17.44%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   17.44%
 49  1    13    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.01%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.59%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.15%    0.00%
  7  1     7    1  |1 1>+         1.79%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |1 1>+         0.00%    0.06%    0.00%    0.00%    0.00%    0.59%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    1.64%   74.71%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    9.51%    0.21%    0.00%    0.00%   11.01%    0.00%
 11  1    11    1  |1 1>+        35.88%    0.00%    0.00%    0.00%    9.71%    0.00%    0.00%    0.00%
 12  1    12    1  |1 1>+         0.00%   47.46%    0.00%    0.00%    0.00%    0.21%    0.00%    0.00%
 13  1     1    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.01%    0.00%
 14  1     2    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.01%    0.01%    0.00%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.02%
 16  1     4    1  |1 0>          6.06%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 0>          1.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 0>          0.00%    4.80%    0.00%    0.00%    0.00%    0.21%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.15%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.15%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%   76.35%    0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          0.00%   15.80%    0.00%    0.00%    0.00%    9.38%    0.00%    0.00%
 23  1    11    1  |1 0>          0.00%    0.00%    0.21%    9.51%    0.00%    0.00%    0.00%   11.01%
 24  1    12    1  |1 0>          0.00%    0.00%    9.51%    0.21%    0.00%    0.00%   11.01%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.01%
 26  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.01%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.38%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.21%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.15%
 31  1     7    1  |1 1>-         0.00%    5.90%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%
 32  1     8    1  |1 1>-         1.79%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%   74.71%    1.64%    0.00%    0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.21%    9.51%    0.00%    0.00%    0.00%   11.01%
 35  1    11    1  |1 1>-         0.00%    8.50%    0.00%    0.00%    0.00%   12.43%    0.00%    0.00%
 36  1    12    1  |1 1>-        35.88%    0.00%    0.00%    0.00%    9.71%    0.00%    0.00%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1     7    1  |0 0>          0.00%    0.00%    0.08%    4.10%    0.00%    0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    4.10%    0.08%    0.00%    0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    4.17%    0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   77.04%    0.00%
 47  1    11    1  |0 0>          0.00%    0.01%    0.00%    0.00%    0.00%   77.03%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   77.04%
 49  1    13    1  |0 0>         17.44%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1    14    1  |0 0>          0.00%   17.44%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51

  1  1     1    1  |1 1>+         0.01%    0.00%    0.01%
  2  1     2    1  |1 1>+         0.01%    0.00%    0.01%
  3  1     3    1  |1 1>+         0.00%    0.02%    0.00%
  4  1     4    1  |1 1>+         0.00%    0.00%    0.00%
  5  1     5    1  |1 1>+         0.00%    0.00%    0.00%
  6  1     6    1  |1 1>+         0.00%    0.00%    0.00%
  7  1     7    1  |1 1>+         0.00%    0.15%    0.00%
  8  1     8    1  |1 1>+         0.01%    0.00%    0.00%
  9  1     9    1  |1 1>+         0.00%    0.00%    0.00%
 10  1    10    1  |1 1>+         0.00%    0.00%    0.00%
 11  1    11    1  |1 1>+         0.00%   11.01%    0.00%
 12  1    12    1  |1 1>+        14.47%    0.00%    2.63%
 13  1     1    1  |1 0>          0.00%    0.00%    0.01%
 14  1     2    1  |1 0>          0.00%    0.00%    0.01%
 15  1     3    1  |1 0>          0.00%    0.00%    0.00%
 16  1     4    1  |1 0>          0.00%    0.50%    0.00%
 17  1     5    1  |1 0>          0.00%    0.09%    0.00%
 18  1     6    1  |1 0>          0.38%    0.00%    0.00%
 19  1     7    1  |1 0>          0.00%    0.00%    0.00%
 20  1     8    1  |1 0>          0.00%    0.00%    0.00%
 21  1     9    1  |1 0>          0.00%    0.00%    0.00%
 22  1    10    1  |1 0>          5.30%    0.00%    2.63%
 23  1    11    1  |1 0>          0.00%    0.00%    0.00%
 24  1    12    1  |1 0>          0.00%    0.00%    0.00%
 25  1     1    1  |1 1>-         0.00%    0.01%    0.00%
 26  1     2    1  |1 1>-         0.00%    0.01%    0.00%
 27  1     3    1  |1 1>-         0.00%    0.00%    0.02%
 28  1     4    1  |1 1>-         0.00%    0.00%    0.00%
 29  1     5    1  |1 1>-         0.00%    0.00%    0.00%
 30  1     6    1  |1 1>-         0.00%    0.00%    0.00%
 31  1     7    1  |1 1>-         0.50%    0.00%    0.00%
 32  1     8    1  |1 1>-         0.00%    0.15%    0.00%
 33  1     9    1  |1 1>-         0.00%    0.00%    0.00%
 34  1    10    1  |1 1>-         0.00%    0.00%    0.00%
 35  1    11    1  |1 1>-         2.25%    0.00%    2.63%
 36  1    12    1  |1 1>-         0.00%   11.01%    0.00%
 37  1     1    1  |0 0>          0.00%    0.00%    0.00%
 38  1     2    1  |0 0>          0.00%    0.00%    0.00%
 39  1     3    1  |0 0>          0.00%    0.00%    0.00%
 40  1     4    1  |0 0>          0.00%    0.00%    0.00%
 41  1     5    1  |0 0>          0.00%    0.00%    0.00%
 42  1     6    1  |0 0>          0.00%    0.00%    0.01%
 43  1     7    1  |0 0>          0.00%    0.00%    0.00%
 44  1     8    1  |0 0>          0.00%    0.00%    0.00%
 45  1     9    1  |0 0>          0.00%    0.00%    0.00%
 46  1    10    1  |0 0>          0.00%    0.00%    0.00%
 47  1    11    1  |0 0>          0.01%    0.00%    0.00%
 48  1    12    1  |0 0>          0.00%    0.00%    0.00%
 49  1    13    1  |0 0>          0.00%   77.05%    0.00%
 50  1    14    1  |0 0>         77.03%    0.00%    0.00%
 51  1    15    1  |0 0>          0.00%    0.00%   92.06%


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

              2       7     4398.21       700     1000      520     2100     2140     5201     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    132568.79 117078.62   7011.77   8472.25      3.81      0.34      1.74
 REAL TIME  *    134347.95 SEC
 DISK USED  *         4.35 GB (local),       52.37 GB (total)
 SF USED    *        23.38 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -213.981167308086

              CI              CI           MULTI         RHF-SCF
   -213.90324584   -213.93755745   -213.11257158   -213.37378088
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
