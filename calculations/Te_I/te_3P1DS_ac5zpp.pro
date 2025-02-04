
 Working directory              : /wrk/irikura/molpro.icESuiYnDZ/
 Global scratch directory       : /wrk/irikura/molpro.icESuiYnDZ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.icESuiYnDZ/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.02 sec
 ***,Te SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Te};
 
 basis=AWCV5Z-PP
 
 NT=3
 NS=6
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,6,3
     occ,7,6
     wf,charge=0,sym=PAR,spin=2;state,NT;
     wf,charge=0,sym=PAR,spin=0;state,NS;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=PAR,spin=2;state,NT; save,5302.2}
 hlsdiag = energd4
                                                                                 !hlsdiag(1) = energd
 {ci;wf,sym=PAR,spin=0;state,NS; save,5102.2}
 hlsdiag(NT+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Te SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 25-Jan-25          TIME: 10:04:37  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  42000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AWCV5Z-PP
 SETTING NT             =         3.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Te   ECP ECP28MDF                 selected for group  1
 Library entry TE     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TE     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TE     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TE     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TE     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TE     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry TE     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  TE     24.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   24
 NUMBER OF PRIMITIVE AOS:         465
 NUMBER OF SYMMETRY AOS:          332
 NUMBER OF CONTRACTIONS:          265   (  129Ag  +  136Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 7 8 91011121314  15 7 8 9101112131415
                                        7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9  10111213141516171819
                                       202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617  18192021111213141516
                                       17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.550E-05 0.287E-04 0.219E-03 0.219E-03 0.219E-03 0.219E-03 0.219E-03 0.287E-03
         2 0.224E-06 0.224E-06 0.224E-06 0.404E-03 0.404E-03 0.404E-03 0.264E-02 0.264E-02


 Contracted 2-electron integrals neglected if value below      1.0D-14
 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     746.586 MB (compressed) written to integral file ( 18.2%)

     Node minimum: 12.059 MB, node maximum: 38.535 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   11155044.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   11155044      RECORD LENGTH: 524288

 Memory used in sort:      11.71 MW

 SORT1 READ   511790813. AND WROTE     1880642. INTEGRALS IN      6 RECORDS. CPU TIME:     3.45 SEC, REAL TIME:     3.54 SEC
 SORT2 READ    53582289. AND WROTE   312900871. INTEGRALS IN   1848 RECORDS. CPU TIME:     0.21 SEC, REAL TIME:     0.27 SEC

 Node minimum:    11150627.  Node maximum:    11188428. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.12      7.81
 REAL TIME  *         9.32 SEC
 DISK USED  *        30.88 MB (local),        2.12 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -266.67494475    -266.67494475     0.00D+00     0.48D-01     0     0       0.07      0.15    start
   2     -266.71783666      -0.04289191     0.28D-02     0.29D-02     1     0       0.08      0.23    diag2
   3     -266.72026865      -0.00243199     0.15D-02     0.62D-03     2     0       0.08      0.31    diag2
   4     -266.72071070      -0.00044204     0.29D-03     0.39D-03     3     0       0.12      0.43    diag2
   5     -266.72073546      -0.00002476     0.63D-04     0.15D-03     4     0       0.08      0.51    diag2
   6     -266.72073561      -0.00000015     0.65D-05     0.25D-04     5     0       0.08      0.59    diag2
   7     -266.72073561      -0.00000000     0.81D-06     0.25D-05     6     0       0.08      0.67    diag2
   8     -266.72073561      -0.00000000     0.56D-07     0.22D-06     0     0       0.08      0.75    fixocc

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -266.720735613169
  RHF One-electron energy            -459.058929987142
  RHF Two-electron energy             192.338194373973
  RHF Kinetic energy                  102.493373239847
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.602321761710

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45861     1  1  s    1.00013
    2.1     2.00000    -2.27825     1  1  d2+  0.54459    1  1  d1-  0.83441
    3.1     2.00000    -2.27825     1  1  d0  -0.35170    1  1  d2-  0.74850    1  1  d1+ -0.25016    1  1  d2+  0.46111
    4.1     2.00000    -2.27825     1  1  d0  -0.32585    1  1  d2- -0.50713    1  1  d1+  0.35219    1  1  d2+  0.57360
                                    1  1  d1- -0.43025
    5.1     2.00000    -2.27825     1  1  d0   0.87673    1  1  d2+  0.37613    1  1  d1- -0.25707
    6.1     2.00000    -2.27825     1  1  d2-  0.39748    1  1  d1+  0.89860
    7.1     2.00000    -1.03500     1  1  s   -0.44110    1  5  s    0.66279    1  6  s    0.50406
    1.2     2.00000    -5.42335     1  1  px   0.37364    1  1  py  -0.44610    1  1  pz   0.81361
    2.2     2.00000    -5.42335     1  1  px   0.91288    1  1  pz  -0.40846
    3.2     2.00000    -5.42335     1  1  py   0.89509    1  1  pz   0.41445
    4.2     1.00000    -0.69090     1  1  px  -0.32655    1  4  px   0.26437    1  5  px   0.56092    1  6  px   0.31617
    5.2     1.00000    -0.69090     1  1  pz  -0.33111    1  4  pz   0.26806    1  5  pz   0.56875    1  6  pz   0.32059
    6.2     1.00000    -0.69090     1  1  py  -0.32423    1  4  py   0.26249    1  5  py   0.55695    1  6  py   0.31393


 HOMO      6.2    -0.690900 =     -18.8003eV
 LUMO      8.1    -0.114570 =      -3.1176eV
 LUMO-HOMO         0.576330 =      15.6827eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        1.51       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         8.89      0.77      7.81
 REAL TIME  *        10.16 SEC
 DISK USED  *        36.15 MB (local),        2.26 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     252 (  122  130)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.449D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.629D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.738D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.493D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.439D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 5 2 4 1 1 3 6   2 5 4 1 6 4 5 3 210  12 915 8 7111413 4 3   5 6 2 1 91211 71415
                                       13 810 3 4 6 2 5 1 9  15 8121314 71011 3 6   4 5 2 11114 91213 7   81015 3 4 6 5 22428
                                       27182223211620172519  261411 913101512 7 8   1 3 4 5 6 21113 915  12 81410 7 1 6 4 5 2
                                        3 4 2 3 5 6 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.502D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.319D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.393D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.182D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.135D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.250D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 3 2 1 3 2 1   3 210 8 4 5 7 9 6 1   3 2 6 810 4 5 9 7 6  10 9 4 5 8 711191213
                                       15211420181716 1 3 2   8 610 5 7 4 9131116  2015141817122119 6 8   510 7 9 4 1 3 210 5
                                        8 6 7 9 42116111918  121315142017 2 1 310   7 5 8 6 9 412192114  20171816111315 2 1 3
                                        7 9 8 610 5 4 2 1 3   2 1 3 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1649  ( 15 closed/active, 1122 closed/virtual, 0 active/active, 512 active/virtual )
 Total number of variables:    1718
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -266.93132916    -266.96477732   -0.03344816    0.22521871 0.00001596 0.00000000  0.19E+00      1.41
   2    6   10    0   -266.96591023    -266.96602612   -0.00011588    0.01258825 0.00000013 0.00000000  0.12E-01      2.99
   3   11   22    0   -266.96602639    -266.96602639   -0.00000000    0.00004797 0.00000001 0.00000000  0.40E-04      4.51

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.53E-08)
                       Final energy:   -266.96602639
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -266.999110764338
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67479215
 One electron energy                          -466.60028480
 Two electron energy                           199.60117404
 Virial ratio                                    3.60043488
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -266.999110764197
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67479216
 One electron energy                          -466.60028482
 Two electron energy                           199.60117405
 Virial ratio                                    3.60043488
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -266.999110764184
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67479216
 One electron energy                          -466.60028482
 Two electron energy                           199.60117406
 Virial ratio                                    3.60043488
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -266.956179829789
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67479215
 One electron energy                          -466.60028480
 Two electron energy                           199.64410498
 Virial ratio                                    3.60001675
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -266.956179829789
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67479215
 One electron energy                          -466.60028480
 Two electron energy                           199.64410498
 Virial ratio                                    3.60001675
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -266.956179829709
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67479216
 One electron energy                          -466.60028482
 Two electron energy                           199.64410499
 Virial ratio                                    3.60001675
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -266.956179829703
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67479216
 One electron energy                          -466.60028482
 Two electron energy                           199.64410499
 Virial ratio                                    3.60001675
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -266.956179829678
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67479216
 One electron energy                          -466.60028482
 Two electron energy                           199.64410499
 Virial ratio                                    3.60001675
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -266.916006086501
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66452953
 One electron energy                          -466.47531727
 Two electron energy                           199.55931118
 Virial ratio                                    3.59988535
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.995748081163
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.004252032656
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.889244617285
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.110756835035
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.115007301552
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.884991132309
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 4   6 3 5 1 2 4 6 3 5 9   711 81214151013 2 4   6 3 5 1 9 711 81214
                                       151013 2 4 6 3 5 1 9   7 8121114151310 2 4   6 3 5 1 9 7 8121114  151310 2 4 6 3 52825
                                       17212723262419182022  16 9 7 8121114151310   1 2 4 6 3 5 9 711 8  1214151310 1 2 4 6 3
                                        5 2 4 6 3 5 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 1 2 3   1 2 4 6 5 810 7 9 3   1 2 4 6 5 810 7 9 4   6 5 810 7 911192113
                                       12141615171820 3 1 2   4 6 5 810 7 9111921  1312141617152018 4 6   5 810 9 7 3 1 2 4 6
                                        510 8 9 71119211312  141615172018 3 1 2 4   6 510 8 9 711192113  12141615172018 3 1 2
                                        4 6 5 810 9 7 3 1 2   3 2 1 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.13713     1  1  s    1.00001
    2.1     2.00000    -1.95760     1  1  d0   1.00010
    3.1     2.00000    -1.95760     1  1  d1+  1.00010
    4.1     2.00000    -1.95760     1  1  d1-  1.00010
    5.1     2.00000    -1.95760     1  1  d2-  1.00010
    6.1     2.00000    -1.95760     1  1  d2+  1.00010
    7.1     1.99350    -0.74950     1  1  s   -0.42499    1  5  s    0.58167    1  6  s    0.51175
    1.2     2.00000    -5.10253     1  1  pz   1.00018
    2.2     2.00000    -5.10253     1  1  px   1.00018
    3.2     2.00000    -5.10253     1  1  py   1.00018
    4.2     1.33550    -0.24256     1  1  py  -0.30752    1  5  py   0.46119    1  6  py   0.38826
    5.2     1.33550    -0.24256     1  1  px  -0.30752    1  5  px   0.46119    1  6  px   0.38826
    6.2     1.33550    -0.24256     1  1  pz  -0.30752    1  5  pz   0.46119    1  6  pz   0.38826
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa          0.00000000     -0.00000000      1.00000000
 2 a2a          1.00000000      0.00000000     -0.00000000
 2 aa2          0.00000000      1.00000000      0.00000000
 
 Energy:     -266.99911076   -266.99911076   -266.99911076
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202         -0.02662054      0.00000000     -0.00000000      0.00000000      0.81606251      0.56884477
 2 022          0.72004113     -0.00000000      0.00000000     -0.00000000     -0.38497719      0.56884477
 2 ba2          0.00000000     -0.00000000     -0.70710678      0.00000000     -0.00000000     -0.00000000
 2 ab2         -0.00000000      0.00000000      0.70710678     -0.00000000      0.00000000      0.00000000
 2 2ba          0.00000000     -0.00000000     -0.00000000     -0.70710678      0.00000000     -0.00000000
 2 a2b          0.00000000      0.70710678     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2 b2a         -0.00000000     -0.70710678      0.00000000      0.00000000     -0.00000000      0.00000000
 2 2ab         -0.00000000      0.00000000      0.00000000      0.70710678     -0.00000000      0.00000000
 2 220         -0.69342059      0.00000000     -0.00000000     -0.00000000     -0.43108532      0.56884477
 0 222         -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.17101721
 
 Energy:     -266.95617983   -266.95617983   -266.95617983   -266.95617983   -266.95617983   -266.91600609
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        13.40      4.51      0.77      7.81
 REAL TIME  *        15.90 SEC
 DISK USED  *        71.78 MB (local),        3.24 GB (total)
 SF USED    *        94.75 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -266.9991108   2.0
    -266.9991108   2.0
    -266.9991108   2.0
    -266.9561798   6.0
    -266.9561798   6.0
    -266.9561798   6.0
    -266.9561798   6.0
    -266.9561798   6.0
    -266.9160061  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 24
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:       78 conf       78 CSFs
 N-1 el internal:      232 conf      564 CSFs
 N-2 el internal:      241 conf     1587 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     252 ( 122 130 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.99911076
     2      -266.99911076
     3      -266.99911076

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         71136
 Number of doubly external configurations:       7813824
 Total number of contracted configurations:      7884996
 Total number of uncontracted configurations:   25232430

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1981079 words, CPU-time:      1.23 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.99911076     0.00000000    -1.16656510  0.35D-01  0.14D+00     1.72
    1     2     2     1.00000000     0.00000000  -266.99911076     0.00000000    -1.16667629  0.35D-01  0.14D+00     1.72
    1     3     3     1.00000000     0.00000000  -266.99911076     0.00000000    -1.16643819  0.34D-01  0.14D+00     1.72
    2     1     1     1.11368247    -0.93019366  -267.92930442    -0.93019366    -0.03114922  0.34D-02  0.32D-02    25.08
    2     2     2     1.11377177    -0.93010686  -267.92921762    -0.93010686    -0.03123801  0.35D-02  0.32D-02    25.08
    2     3     3     1.11386084    -0.92999258  -267.92910335    -0.92999258    -0.03136915  0.35D-02  0.32D-02    25.08
    3     1     1     1.09505989    -0.95958340  -267.95869416    -0.02938974    -0.00044481  0.41D-04  0.57D-04    48.11
    3     2     2     1.09505831    -0.95958209  -267.95869286    -0.02947524    -0.00044613  0.41D-04  0.57D-04    48.11
    3     3     3     1.09506254    -0.95957787  -267.95868863    -0.02958528    -0.00045076  0.42D-04  0.57D-04    48.11
    4     1     1     1.09393157    -0.96003398  -267.95914474    -0.00045058    -0.00001084  0.17D-05  0.11D-05    71.21
    4     2     2     1.09393088    -0.96003397  -267.95914474    -0.00045188    -0.00001084  0.17D-05  0.11D-05    71.21
    4     3     3     1.09393084    -0.96003387  -267.95914463    -0.00045600    -0.00001095  0.17D-05  0.12D-05    71.21
    5     1     1     1.09389637    -0.96004542  -267.95915618    -0.00001144    -0.00000030  0.23D-07  0.39D-07    94.53
    5     2     2     1.09389633    -0.96004542  -267.95915618    -0.00001144    -0.00000030  0.23D-07  0.39D-07    94.53
    5     3     3     1.09389635    -0.96004541  -267.95915618    -0.00001155    -0.00000030  0.24D-07  0.40D-07    94.53
    6     1     1     1.09388987    -0.96004573  -267.95915649    -0.00000031    -0.00000001  0.11D-08  0.99D-09   118.09
    6     2     2     1.09388988    -0.96004573  -267.95915649    -0.00000031    -0.00000001  0.11D-08  0.99D-09   118.09
    6     3     3     1.09388985    -0.96004573  -267.95915649    -0.00000031    -0.00000001  0.11D-08  0.10D-08   118.09


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.2%
 P   0.7%  10.7%  12.7%

 Initialization:   1.1%
 Other:           74.6%

 Total CPU:      118.1 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//2           0.0000000   0.0000000   0.9561196
 2222222222/2/           0.9561196   0.0000000   0.0000000
 22222222222//           0.0000000   0.9561196   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956120    0.000000    0.000000
 2           0.000000    0.000000    0.956120
 3           0.000000    0.956120    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956120    0.000000    0.000000
 2           0.000000    0.956120    0.000000
 3           0.000000    0.000000    0.956120


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95611960 (fixed)   0.95611960 (relaxed)   0.95611960 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000451   -0.00002687   -0.84373756
 Singles      0.01068789   -0.03708992   -0.04328806
 Pairs        0.08320240    0.00000000   -0.07302010
 Total        1.09389480   -0.03711678   -0.96004573
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99911076
 Nuclear energy                         0.00000000
 Kinetic energy                       103.62297640
 One electron energy                 -466.27754941
 Two electron energy                  198.31839292
 Virial quotient                       -2.58590484
 Correlation energy                    -0.96004573
 !MRCI STATE 1.1 Energy              -267.959156490744

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.04929980 (Davidson, fixed reference)
 Cluster corrected energies          -268.04929980 (Davidson, relaxed reference)
 Cluster corrected energies          -268.04929980 (Davidson, rotated reference)

 Cluster corrected energies          -268.04784861 (Pople, fixed reference)
 Cluster corrected energies          -268.04784861 (Pople, relaxed reference)
 Cluster corrected energies          -268.04784861 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95611959 (fixed)   0.95611959 (relaxed)   0.95611959 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000451   -0.00002687   -0.00002852
 Singles      0.01068792   -0.03708994   -0.04328809
 Pairs        0.08320238   -0.92292892   -0.91672912
 Total        1.09389482   -0.96004573   -0.96004573
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99911076
 Nuclear energy                         0.00000000
 Kinetic energy                       103.62297590
 One electron energy                 -466.27754947
 Two electron energy                  198.31839298
 Virial quotient                       -2.58590486
 Correlation energy                    -0.96004573
 !MRCI STATE 2.1 Energy              -267.959156490698

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.04929981 (Davidson, fixed reference)
 Cluster corrected energies          -268.04929981 (Davidson, relaxed reference)
 Cluster corrected energies          -268.04929981 (Davidson, rotated reference)

 Cluster corrected energies          -268.04784862 (Pople, fixed reference)
 Cluster corrected energies          -268.04784862 (Pople, relaxed reference)
 Cluster corrected energies          -268.04784862 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95611961 (fixed)   0.95611961 (relaxed)   0.95611961 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000451   -0.00002687   -0.84373765
 Singles      0.01068783   -0.03708984   -0.04328799
 Pairs        0.08320245    0.00000000   -0.07302008
 Total        1.09389479   -0.03711670   -0.96004573
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99911076
 Nuclear energy                         0.00000000
 Kinetic energy                       103.62297784
 One electron energy                 -466.27755083
 Two electron energy                  198.31839434
 Virial quotient                       -2.58590481
 Correlation energy                    -0.96004573
 !MRCI STATE 3.1 Energy              -267.959156490631

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.04929978 (Davidson, fixed reference)
 Cluster corrected energies          -268.04929978 (Davidson, relaxed reference)
 Cluster corrected energies          -268.04929978 (Davidson, rotated reference)

 Cluster corrected energies          -268.04784859 (Pople, fixed reference)
 Cluster corrected energies          -268.04784859 (Pople, relaxed reference)
 Cluster corrected energies          -268.04784859 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      186.71       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       133.75    120.33      4.51      0.77      7.81
 REAL TIME  *       147.45 SEC
 DISK USED  *       255.67 MB (local),        8.27 GB (total)
 SF USED    *         1.76 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -268.04929980  AU                              
 SETTING HLSDIAG(2)     =      -268.04929981  AU                              
 SETTING HLSDIAG(3)     =      -268.04929978  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 24
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       91 conf       91 CSFs
 N-1 el internal:      286 conf      488 CSFs
 N-2 el internal:      478 conf     1349 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     252 ( 122 130 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.95617983
     2      -266.95617983
     3      -266.95617983
     4      -266.95617983
     5      -266.95617983
     6      -266.91600609

 Number of blocks in overlap matrix:   684   Smallest eigenvalue:  0.22D-01
 Number of N-2 electron functions:     826
 Number of N-1 electron functions:     488

 Number of internal configurations:                   49
 Number of singly external configurations:         61520
 Number of doubly external configurations:      13121552
 Total number of contracted configurations:     13183121
 Total number of uncontracted configurations:   21475495

 Diagonal Coupling coefficients finished.               Storage:    441505 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2098431 words, CPU-time:      2.08 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.95617983     0.00000000    -1.17011674  0.37D-01  0.14D+00     2.85
    1     2     2     1.00000000     0.00000000  -266.95617983     0.00000000    -1.16933036  0.37D-01  0.14D+00     2.85
    1     3     3     1.00000000     0.00000000  -266.95617983     0.00000000    -1.17040744  0.37D-01  0.14D+00     2.85
    1     4     4     1.00000000     0.00000000  -266.95617983     0.00000000    -1.17061715  0.37D-01  0.14D+00     2.85
    1     5     5     1.00000000     0.00000000  -266.95617983    -0.00000000    -1.16685948  0.37D-01  0.14D+00     2.85
    1     6     6     1.00000000     0.00000000  -266.91600609     0.00000000    -1.14423403  0.80D-02  0.15D+00     2.85
    2     1     1     1.11466487    -0.93876140  -267.89494123    -0.93876140    -0.02944379  0.35D-02  0.26D-02    81.80
    2     2     2     1.11472532    -0.93818261  -267.89436244    -0.93818261    -0.03019267  0.35D-02  0.28D-02    81.80
    2     3     3     1.11498978    -0.93801971  -267.89419954    -0.93801971    -0.03033777  0.35D-02  0.28D-02    81.80
    2     4     4     1.11493443    -0.93800350  -267.89418333    -0.93800350    -0.03036295  0.34D-02  0.28D-02    81.80
    2     5     5     1.11509523    -0.93779135  -267.89397118    -0.93779135    -0.03060874  0.35D-02  0.29D-02    81.80
    2     6     6     1.10746004    -0.93781526  -267.85382135    -0.93781526    -0.02284251  0.14D-02  0.29D-02    81.80
    3     1     1     1.09808023    -0.96620078  -267.92238061    -0.02743938    -0.00060208  0.55D-04  0.82D-04   160.67
    3     2     2     1.09811598    -0.96619922  -267.92237905    -0.02801662    -0.00060306  0.54D-04  0.83D-04   160.67
    3     3     3     1.09811568    -0.96619765  -267.92237748    -0.02817795    -0.00060506  0.54D-04  0.84D-04   160.67
    3     4     4     1.09811741    -0.96619283  -267.92237266    -0.02818933    -0.00061017  0.54D-04  0.85D-04   160.67
    3     5     5     1.09808257    -0.96618965  -267.92236948    -0.02839830    -0.00061477  0.56D-04  0.85D-04   160.67
    3     6     6     1.09491151    -0.95984254  -267.87584862    -0.02202728    -0.00034621  0.20D-04  0.58D-04   160.67
    4     1     1     1.09675176    -0.96677649  -267.92295632    -0.00057571    -0.00002280  0.32D-05  0.28D-05   239.92
    4     2     2     1.09675088    -0.96677646  -267.92295629    -0.00057724    -0.00002284  0.32D-05  0.28D-05   239.92
    4     3     3     1.09675109    -0.96677632  -267.92295615    -0.00057867    -0.00002297  0.32D-05  0.28D-05   239.92
    4     4     4     1.09675109    -0.96677609  -267.92295592    -0.00058326    -0.00002309  0.33D-05  0.28D-05   239.92
    4     5     5     1.09674409    -0.96677526  -267.92295509    -0.00058561    -0.00002378  0.32D-05  0.29D-05   239.92
    4     6     6     1.09399025    -0.96019215  -267.87619824    -0.00034961    -0.00001371  0.18D-05  0.19D-05   239.92
    5     1     1     1.09661363    -0.96679992  -267.92297975    -0.00002343    -0.00000074  0.77D-07  0.10D-06   319.27
    5     2     2     1.09661313    -0.96679991  -267.92297974    -0.00002345    -0.00000075  0.79D-07  0.10D-06   319.27
    5     3     3     1.09661363    -0.96679991  -267.92297974    -0.00002358    -0.00000075  0.77D-07  0.10D-06   319.27
    5     4     4     1.09661409    -0.96679991  -267.92297974    -0.00002381    -0.00000075  0.78D-07  0.10D-06   319.27
    5     5     5     1.09661308    -0.96679990  -267.92297973    -0.00002464    -0.00000076  0.80D-07  0.10D-06   319.27
    5     6     6     1.09397534    -0.96020617  -267.87621226    -0.00001402    -0.00000043  0.41D-07  0.54D-07   319.27
    6     1     1     1.09659286    -0.96680068  -267.92298051    -0.00000077    -0.00000002  0.14D-08  0.34D-08   397.68
    6     2     2     1.09659291    -0.96680068  -267.92298051    -0.00000077    -0.00000002  0.15D-08  0.34D-08   397.68
    6     3     3     1.09659285    -0.96680068  -267.92298051    -0.00000077    -0.00000002  0.14D-08  0.35D-08   397.68
    6     4     4     1.09659267    -0.96680068  -267.92298051    -0.00000078    -0.00000002  0.15D-08  0.34D-08   397.68
    6     5     5     1.09659263    -0.96680068  -267.92298051    -0.00000078    -0.00000002  0.17D-08  0.34D-08   397.68
    6     6     6     1.09396738    -0.96020662  -267.87621270    -0.00000044    -0.00000001  0.12D-08  0.17D-08   397.68


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.5%   9.2%  17.4%

 Initialization:   0.5%
 Other:           72.3%

 Total CPU:      397.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\2           0.0000000  -0.0000000   0.9548873  -0.0000000   0.0000000   0.0000000
 2222222222/2\           0.9548873   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 22222222222/\          -0.0000000   0.9548873   0.0000000  -0.0000000  -0.0000000   0.0000000
 2222222222022           0.0000000   0.0000000  -0.0000000   0.7594799  -0.1762484   0.5449590
 2222222222220           0.0000000  -0.0000000  -0.0000000  -0.2271043   0.7458531   0.5449590
 2222222222202           0.0000000   0.0000000  -0.0000000  -0.5323756  -0.5696047   0.5449590
 2222220222222          -0.0000000   0.0000000   0.0000000   0.0000004   0.0000003  -0.1520917

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.954887    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.000000   -0.000000    0.954887    0.000000   -0.000000
 3          -0.000000    0.000000    0.954887    0.000000   -0.000000   -0.000000
 4          -0.000000    0.718685   -0.000000   -0.000000   -0.628730   -0.000000
 5           0.000000   -0.628730    0.000000   -0.000000   -0.718685   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.956002

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954887   -0.000000    0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.954887   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.954887   -0.000000    0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.954887    0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.954887   -0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.956002


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95488728 (fixed)   0.95488728 (relaxed)   0.95488728 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011598   -0.00037845   -0.84449804
 Singles      0.01239248   -0.04073489   -0.04806863
 Pairs        0.08421158   -0.00000000   -0.07423401
 Total        1.09672005   -0.04111334   -0.96680068
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95617983
 Nuclear energy                         0.00000000
 Kinetic energy                       103.61897317
 One electron energy                 -466.24103790
 Two electron energy                  198.31805739
 Virial quotient                       -2.58565562
 Correlation energy                    -0.96680068
 !MRCI STATE 1.1 Energy              -267.922980512121

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01648952 (Davidson, fixed reference)
 Cluster corrected energies          -268.01648952 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01648952 (Davidson, rotated reference)

 Cluster corrected energies          -268.01613284 (Pople, fixed reference)
 Cluster corrected energies          -268.01613284 (Pople, relaxed reference)
 Cluster corrected energies          -268.01613284 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95488726 (fixed)   0.95488726 (relaxed)   0.95488726 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011598   -0.00037845   -0.84449783
 Singles      0.01239265   -0.04073507   -0.04806876
 Pairs        0.08421147    0.00000000   -0.07423409
 Total        1.09672010   -0.04111353   -0.96680068
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95617983
 Nuclear energy                         0.00000000
 Kinetic energy                       103.61897199
 One electron energy                 -466.24103990
 Two electron energy                  198.31805939
 Virial quotient                       -2.58565565
 Correlation energy                    -0.96680068
 !MRCI STATE 2.1 Energy              -267.922980511982

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01648957 (Davidson, fixed reference)
 Cluster corrected energies          -268.01648957 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01648957 (Davidson, rotated reference)

 Cluster corrected energies          -268.01613290 (Pople, fixed reference)
 Cluster corrected energies          -268.01613290 (Pople, relaxed reference)
 Cluster corrected energies          -268.01613290 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95488728 (fixed)   0.95488728 (relaxed)   0.95488728 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011598   -0.00037845   -0.84449795
 Singles      0.01239260   -0.04073499   -0.04806872
 Pairs        0.08421146    0.00000000   -0.07423401
 Total        1.09672004   -0.04111344   -0.96680068
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95617983
 Nuclear energy                         0.00000000
 Kinetic energy                       103.61896904
 One electron energy                 -466.24103491
 Two electron energy                  198.31805440
 Virial quotient                       -2.58565573
 Correlation energy                    -0.96680068
 !MRCI STATE 3.1 Energy              -267.922980511934

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01648951 (Davidson, fixed reference)
 Cluster corrected energies          -268.01648951 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01648951 (Davidson, rotated reference)

 Cluster corrected energies          -268.01613284 (Pople, fixed reference)
 Cluster corrected energies          -268.01613284 (Pople, relaxed reference)
 Cluster corrected energies          -268.01613284 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.71868545 (fixed)   0.95488736 (relaxed)   0.95488736 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011598   -0.00037846   -0.84449886
 Singles      0.01239190   -0.04073411   -0.04806805
 Pairs        0.08421197   -0.00000003   -0.07423378
 Total        1.09671986   -0.04111260   -0.96680068
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95617983
 Nuclear energy                         0.00000000
 Kinetic energy                       103.61898172
 One electron energy                 -466.24101810
 Two electron energy                  198.31803759
 Virial quotient                       -2.58565541
 Correlation energy                    -0.96680068
 !MRCI STATE 4.1 Energy              -267.922980511772

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01648934 (Davidson, fixed reference)
 Cluster corrected energies          -268.01648934 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01648934 (Davidson, rotated reference)

 Cluster corrected energies          -268.01613264 (Pople, fixed reference)
 Cluster corrected energies          -268.01613264 (Pople, relaxed reference)
 Cluster corrected energies          -268.01613264 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.71868547 (fixed)   0.95488738 (relaxed)   0.95488738 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011598   -0.00037846   -0.84449890
 Singles      0.01239199   -0.04073418   -0.04806813
 Pairs        0.08421184    0.00000004   -0.07423365
 Total        1.09671981   -0.04111260   -0.96680068
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95617983
 Nuclear energy                         0.00000000
 Kinetic energy                       103.61898657
 One electron energy                 -466.24101702
 Two electron energy                  198.31803651
 Virial quotient                       -2.58565529
 Correlation energy                    -0.96680068
 !MRCI STATE 5.1 Energy              -267.922980511541

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01648929 (Davidson, fixed reference)
 Cluster corrected energies          -268.01648929 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01648929 (Davidson, rotated reference)

 Cluster corrected energies          -268.01613260 (Pople, fixed reference)
 Cluster corrected energies          -268.01613260 (Pople, relaxed reference)
 Cluster corrected energies          -268.01613260 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95600155 (fixed)   0.95607157 (relaxed)   0.95600155 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018063   -0.00016069   -0.00030537
 Singles      0.00434729   -0.02093082   -0.02294424
 Pairs        0.08963706   -0.93911511   -0.93695701
 Total        1.09416498   -0.96020662   -0.96020662
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.91600609
 Nuclear energy                         0.00000000
 Kinetic energy                       103.62045207
 One electron energy                 -466.10990461
 Two electron energy                  198.23369190
 Virial quotient                       -2.58516738
 Correlation energy                    -0.96020662
 !MRCI STATE 6.1 Energy              -267.876212704693

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.96663054 (Davidson, fixed reference)
 Cluster corrected energies          -267.96647664 (Davidson, relaxed reference)
 Cluster corrected energies          -267.96663054 (Davidson, rotated reference)

 Cluster corrected energies          -267.96608182 (Pople, fixed reference)
 Cluster corrected energies          -267.96591612 (Pople, relaxed reference)
 Cluster corrected energies          -267.96608182 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      794.87       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       546.62    412.86    120.33      4.51      0.77      7.81
 REAL TIME  *       599.00 SEC
 DISK USED  *       863.83 MB (local),       24.90 GB (total)
 SF USED    *         5.68 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -268.01648952  AU                              
 SETTING HLSDIAG(5)     =      -268.01648957  AU                              
 SETTING HLSDIAG(6)     =      -268.01648951  AU                              
 SETTING HLSDIAG(7)     =      -268.01648934  AU                              
 SETTING HLSDIAG(8)     =      -268.01648929  AU                              
 SETTING HLSDIAG(9)     =      -267.96663054  AU                              


         HLSDIAG
    -268.0492998
    -268.0492998
    -268.0492998
    -268.0164895
    -268.0164896
    -268.0164895
    -268.0164893
    -268.0164893
    -267.9666305
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -267.959156   -267.959156   -267.959156
 Replaced energies:   -268.049300   -268.049300   -268.049300

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -267.922981   -267.922981   -267.922981   -267.922981   -267.922981   -267.876213
 Replaced energies:   -268.016490   -268.016490   -268.016490   -268.016489   -268.016489   -267.966631



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -268.04929981

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00    1367.46       0.00       0.00       0.00       0.00
                           -0.00   -1933.88       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                         1933.88      -0.00      -0.00      -0.00      -0.00    1367.46       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01   -1367.46      -0.00       0.00       0.00       0.00       0.00   -1373.11
                           -0.00       0.00       0.00       0.00   -1367.46       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0      -0.00      -0.00   -1367.46       0.00       0.00       0.00      -0.00       0.00    1367.46       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00    1367.46      -0.00       0.00       0.00      -0.00      -0.00    1367.46    1941.87

    6   3.1  1.0  0.0    1367.46       0.00       0.00       0.00       0.00       0.01   -1367.46      -0.00       0.00       0.00
                            0.00   -1367.46      -0.00      -0.00      -0.00       0.00       0.00   -1367.46       0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00   -1367.46       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00    1933.88      -0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    1367.46   -1933.88       0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00    1367.46       0.00       0.00       0.00       0.00       0.01   -1373.11
                           -0.00      -0.00      -0.00       0.00   -1367.46      -0.00       0.00      -0.00      -0.00      -0.00

   10   1.1  0.0  0.0       0.00      -0.00   -1373.11       0.00       0.00       0.00       0.00      -0.00   -1373.11    7201.03
                           -0.00       0.00      -0.00      -0.00   -1941.87      -0.00       0.00      -0.00       0.00       0.00

   11   2.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00    1373.12    1941.87      -0.00      -0.00       0.00       0.00   -1373.12      -0.00

   12   3.1  0.0  0.0    1373.11       0.00       0.00       0.00       0.00       0.00    1373.11       0.00       0.00       0.00
                            0.00    1373.12       0.00       0.00       0.00       0.00      -0.00   -1373.12      -0.00      -0.00

   13   4.1  0.0  0.0      -0.00    1544.48       0.00       0.00       0.00       0.00      -0.00    1544.48       0.00       0.00
                        -1082.63      -0.00      -0.00      -0.00       0.00    -653.14    1082.63       0.00       0.00      -0.00

   14   5.1  0.0  0.0       0.00    -358.42       0.00       0.00       0.00       0.00       0.00    -358.42       0.00       0.00
                        -1158.34       0.00      -0.00      -0.00       0.00    2145.03    1158.34      -0.00       0.00      -0.00

   15   6.1  0.0  0.0       0.00   -2224.46       0.00       0.00       0.00       0.00       0.00   -2224.46       0.00       0.00
                        -2224.47       0.00       0.00       0.00       0.00   -3145.87    2224.47      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00    1373.11      -0.00       0.00       0.00
                            0.00      -0.00    1082.63    1158.34    2224.47

    2   2.1  1.0  1.0      -0.00       0.00    1544.48    -358.42   -2224.46
                            0.00   -1373.12       0.00      -0.00      -0.00

    3   3.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00
                        -1373.12      -0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                        -1941.87      -0.00       0.00       0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     653.14   -2145.03    3145.87

    7   1.1  1.0 -1.0      -0.00    1373.11      -0.00       0.00       0.00
                           -0.00       0.00   -1082.63   -1158.34   -2224.47

    8   2.1  1.0 -1.0      -0.00       0.00    1544.48    -358.42   -2224.46
                           -0.00    1373.12      -0.00       0.00       0.00

    9   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00
                         1373.12       0.00      -0.00      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    7201.01       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    7201.03       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    7201.07       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    7201.08       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   18143.81
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -268.04929981 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.002       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000   -1933.878

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    1933.879    1933.878      -0.000

    3    1  |1 1>+              0.000       0.000       0.006       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000   -1933.879       0.000      -0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.002       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    1933.879      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.006    1933.879       0.000
                                0.000   -1933.879       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    1933.879       0.002       0.000
                               -0.000   -1933.878       0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                             1933.878      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000   -1933.879      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>               0.000      -0.000   -1941.866       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -1941.870      -0.000      -0.000       0.000

    2    1  |0 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1941.869      -0.000      -0.000      -0.000      -0.000

    3    1  |0 0>            1941.864       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000    1941.880

    4    1  |0 0>              -0.000    2184.218       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -653.143   -1531.075      -0.000

    5    1  |0 0>               0.000    -506.883       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    2145.029   -1638.143       0.000

    6    1  |0 0>               0.000   -3145.866       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -3145.867   -3145.873       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000      -0.000    1941.864      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000      -0.000       0.000    2184.218    -506.883   -3145.866
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   -1941.866      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>           -1933.879       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -1941.869      -0.000       0.000       0.000      -0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1941.870       0.000      -0.000      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     653.143   -2145.029    3145.867

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    1531.075    1638.143    3145.873

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000   -1941.880       0.000      -0.000      -0.000

    3    1  |1 1>-              0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -1941.882      -0.000       0.000       0.000      -0.000

    1    1  |0 0>               0.000    7201.026       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    7201.015       0.000       0.000       0.000       0.000
                             1941.882      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    7201.027       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    7201.066       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    7201.075       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   18143.806
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -268.06158326    -0.01228345    -2695.91      0.00000000        0.00      0.0000
    2  -268.06158325    -0.01228344    -2695.90      0.00000001        0.00      0.0000
    3  -268.06158323    -0.01228343    -2695.90      0.00000003        0.01      0.0000
    4  -268.06158319    -0.01228338    -2695.89      0.00000007        0.02      0.0000
    5  -268.06158316    -0.01228335    -2695.88      0.00000010        0.02      0.0000
    6  -268.04048841     0.00881140     1933.88      0.02109485     4629.79      0.5740
    7  -268.04048839     0.00881141     1933.88      0.02109487     4629.79      0.5740
    8  -268.04048838     0.00881142     1933.88      0.02109487     4629.79      0.5740
    9  -268.04006977     0.00923004     2025.76      0.02151349     4721.66      0.5854
   10  -268.01301750     0.03628231     7963.05      0.04856576    10658.95      1.3215
   11  -268.01301748     0.03628233     7963.05      0.04856578    10658.96      1.3215
   12  -268.01301746     0.03628235     7963.05      0.04856580    10658.96      1.3215
   13  -268.01301736     0.03628245     7963.08      0.04856590    10658.98      1.3215
   14  -268.01301731     0.03628249     7963.09      0.04856595    10658.99      1.3215
   15  -267.95823777     0.09106204    19985.81      0.10334549    22681.71      2.8122

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000 -0.68136134 -0.00000000  0.00000002 -0.00000000  0.70710771 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000002  0.00000000  0.74314361  0.25834436  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00116553 -0.00105601 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.68136148  0.00000000  0.00000000  0.00000000  0.70710738 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.68136174 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.70710715

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.68136262 -0.00000000 -0.00000000  0.00000000  0.70710618 -0.00000001

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00093366 -0.00210268 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000002  0.00000000  0.59530590 -0.51440413  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00023186  0.00315870 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.14783700  0.77274910 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.68136259  0.00000000 -0.00000002  0.00000000  0.70710586 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.68136191 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.70710641

   1    1  |0 0>           0.00000000  0.00000000 -0.26737896  0.00000000  0.00000000 -0.00000000 -0.00000006 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.26738010 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000143
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.26737939  0.00000000 -0.00000001  0.00000000  0.00000140 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.22616621 -0.14261345  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00035471  0.00058295  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.14261513 -0.22616390 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00022367  0.00092447 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000002 -0.00000032 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.18906458 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.54693065 -0.00000000 -0.00000000  0.00000000  0.18669280 -0.11316352 -0.18489717
                           0.00360730 -0.00000000 -0.00000000  0.00000000 -0.00000166 -0.00001919  0.00001915

   3    1  |1 1>+          0.00000000 -0.00000000 -0.18906527 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.18906521  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.18906568  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.00360730 -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00003702  0.00001915
                           0.54693117 -0.00000000 -0.00000000  0.00000000 -0.00465571 -0.21826265  0.18489731

   1    1  |1 1>-          0.00360730  0.00000000 -0.00000000  0.00000000  0.00000171 -0.00001783  0.00001915
                           0.54693058 -0.00000000 -0.00000000  0.00000000  0.19134831  0.10509844  0.18489751

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.18906698  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.18906735  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |0 0>          -0.00000000  0.00000000  0.96359146  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.96359114 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.96359133 -0.00000001  0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000008 -0.00000000 -0.00000000  0.00000001  0.91561125 -0.30027626  0.00000005
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000816 -0.00005093 -0.00000000

   5    1  |0 0>           0.00000058  0.00000000 -0.00000000 -0.00000001  0.30027653  0.91561121 -0.00000003
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000268  0.00015530  0.00000000

   6    1  |0 0>          -0.32024460 -0.00000000 -0.00000000  0.00000000 -0.00000007  0.00000017  0.94733253
                           0.00211218 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00009814


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -268.06158326     -0.01228345    -2695.91      0.00000000        0.00      0.0000
     2   1   -268.06158325     -0.01228344    -2695.90      0.00000001        0.00      0.0000
     3   1   -268.06158323     -0.01228343    -2695.90      0.00000003        0.01      0.0000
     4   1   -268.06158319     -0.01228338    -2695.89      0.00000007        0.02      0.0000
     5   1   -268.06158316     -0.01228335    -2695.88      0.00000010        0.02      0.0000
     6   1   -268.04048841      0.00881140     1933.88      0.02109485     4629.79      0.5740
     7   1   -268.04048839      0.00881141     1933.88      0.02109487     4629.79      0.5740
     8   1   -268.04048838      0.00881142     1933.88      0.02109487     4629.79      0.5740
     9   1   -268.04006977      0.00923004     2025.76      0.02151349     4721.66      0.5854
    10   1   -268.01301750      0.03628231     7963.05      0.04856576    10658.95      1.3215
    11   1   -268.01301748      0.03628233     7963.05      0.04856578    10658.96      1.3215
    12   1   -268.01301746      0.03628235     7963.05      0.04856580    10658.96      1.3215
    13   1   -268.01301736      0.03628245     7963.08      0.04856590    10658.98      1.3215
    14   1   -268.01301731      0.03628249     7963.09      0.04856595    10658.99      1.3215
    15   1   -267.95823777      0.09106204    19985.81      0.10334549    22681.71      2.8122

 E0 =   -268.04929981 is the energy of the lowest zeroth-order state
 E1 =   -268.06158326 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000 -0.68136134 -0.00000000  0.00000002 -0.00000000  0.70710771 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000002  0.00000000  0.74314361  0.25834436  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00116553 -0.00105601 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000 -0.68136148  0.00000000  0.00000000  0.00000000  0.70710738 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.68136174 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.70710715

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.68136262 -0.00000000 -0.00000000  0.00000000  0.70710618 -0.00000001

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00093366 -0.00210268 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000002  0.00000000  0.59530590 -0.51440413  0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00023186  0.00315870 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.14783700  0.77274910 -0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.68136259  0.00000000 -0.00000002  0.00000000  0.70710586 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.68136191 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.70710641

 10  1     1    1  |0 0>        0.00000000  0.00000000 -0.26737896  0.00000000  0.00000000 -0.00000000 -0.00000006 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.26738010 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000143
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000  0.26737939  0.00000000 -0.00000001  0.00000000  0.00000140 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.22616621 -0.14261345  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00035471  0.00058295  0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.14261513 -0.22616390 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00022367  0.00092447 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000002 -0.00000032 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.18906458 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.54693065 -0.00000000 -0.00000000  0.00000000  0.18669280 -0.11316352 -0.18489717
                                0.00360730 -0.00000000 -0.00000000  0.00000000 -0.00000166 -0.00001919  0.00001915

  3  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.18906527 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.18906521  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.18906568  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00360730 -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00003702  0.00001915
                                0.54693117 -0.00000000 -0.00000000  0.00000000 -0.00465571 -0.21826265  0.18489731

  7  1     1    1  |1 1>-       0.00360730  0.00000000 -0.00000000  0.00000000  0.00000171 -0.00001783  0.00001915
                                0.54693058 -0.00000000 -0.00000000  0.00000000  0.19134831  0.10509844  0.18489751

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.18906698  0.00000000 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.18906735  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.00000000  0.96359146  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.96359114 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.96359133 -0.00000001  0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000008 -0.00000000 -0.00000000  0.00000001  0.91561125 -0.30027626  0.00000005
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000816 -0.00005093 -0.00000000

 14  1     5    1  |0 0>        0.00000058  0.00000000 -0.00000000 -0.00000001  0.30027653  0.91561121 -0.00000003
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000268  0.00015530  0.00000000

 15  1     6    1  |0 0>       -0.32024460 -0.00000000 -0.00000000  0.00000000 -0.00000007  0.00000017  0.94733253
                                0.00211218 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00009814



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%   46.43%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   55.23%    6.67%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   46.43%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>         46.43%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>          0.00%    0.00%   46.43%    0.00%    0.00%    0.00%   50.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%   35.44%   26.46%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    2.19%   59.72%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%   46.43%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        46.43%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.00%    7.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          7.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    7.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    5.12%    2.03%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    2.03%    5.12%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    3.57%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        29.91%    0.00%    0.00%    0.00%    3.49%    1.28%    3.42%
  3  1     3    1  |1 1>+         0.00%    0.00%    3.57%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    3.57%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    3.57%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         29.91%    0.00%    0.00%    0.00%    0.00%    4.76%    3.42%
  7  1     1    1  |1 1>-        29.91%    0.00%    0.00%    0.00%    3.66%    1.10%    3.42%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    3.57%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    3.57%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%   92.85%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%   92.85%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%   92.85%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   83.83%    9.02%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    9.02%   83.83%    0.00%
 15  1     6    1  |0 0>         10.26%    0.00%    0.00%    0.00%    0.00%    0.00%   89.74%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       68.84       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      794.87       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       878.92    332.30    412.86    120.33      4.51      0.77      7.81
 REAL TIME  *       965.26 SEC
 DISK USED  *       863.83 MB (local),       24.90 GB (total)
 SF USED    *         5.68 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCV5Z-PP energy=   -267.958237765047

              CI              CI           MULTI         RHF-SCF
   -267.87621270   -267.95915649   -266.91600609   -266.72073561
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
