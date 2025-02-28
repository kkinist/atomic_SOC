
 Working directory              : /wrk/irikura/molpro.Yf3VDKwcuC/
 Global scratch directory       : /wrk/irikura/molpro.Yf3VDKwcuC/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Yf3VDKwcuC/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   32
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Sb SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sb};
 
 basis=aug-cc-pwCVQZ-PP
 
 PAR=2                                                                           ! parity even (1) or odd (2)
 NQ=1
 ND=17
 
 {multi
     closed,6,3
     occ,7,9
     wf,charge=0,sym=PAR,spin=3;state,NQ; weight,25
     wf,charge=0,sym=PAR,spin=1;state,ND;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=PAR,spin=3;state,NQ; save,5302.2}
 if NQ.LT.2 then
 hlsdiag(1) = energd
 else
 hlsdiag = energd4
 endif
 
 {ci;wf,sym=PAR,spin=1;state,ND; save,5102.2}
 hlsdiag(NQ+1) = energd4
 
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
 LABEL *   Sb SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 12-Nov-24          TIME: 10:50:00  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  48000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP
 SETTING PAR            =         2.00000000                                  
 SETTING NQ             =         1.00000000                                  
 SETTING ND             =        17.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sb   ECP ECP28MDF                 selected for group  1
 Library entry SB     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SB     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SB     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SB     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SB     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry SB     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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

   1  SB     23.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   23
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

         1 0.513E-04 0.513E-04 0.513E-04 0.513E-04 0.513E-04 0.561E-04 0.928E-03 0.507E-02
         2 0.152E-03 0.152E-03 0.152E-03 0.216E-02 0.216E-02 0.216E-02 0.113E-01 0.113E-01


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     100.925 MB (compressed) written to integral file ( 13.6%)

     Node minimum: 0.786 MB, node maximum: 5.243 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1617588.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1617588      RECORD LENGTH: 524288

 Memory used in sort:       2.17 MW

 SORT1 READ    92659037. AND WROTE      294632. INTEGRALS IN      1 RECORDS. CPU TIME:     0.63 SEC, REAL TIME:     0.66 SEC
 SORT2 READ     9613363. AND WROTE    52200630. INTEGRALS IN    256 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC

 Node minimum:     1617364.  Node maximum:     1635365. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.37       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.41      3.09
 REAL TIME  *         4.76 SEC
 DISK USED  *        29.74 MB (local),        1.11 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     153 (   79   74)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:             104   (110 determinants, 245 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:            17
 Number of CSFs:             280   (390 determinants, 735 intermediate states)

 Orbital guess generated from atomic densities.
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.272D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.542D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.119D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.377D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.318D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 5 4 6 1 1 2 4   6 5 3 1 3 5 6 4 2 6   4 3 5 21415 7 91113  1012 8 1 6 4 2 3 514
                                       15 7 91112 81310 114  15 7 911131012 8 6 4   2 5 3 1 2 5 3 4 6 7  1514131012 8 911 1 5
                                        3 2 4 6 1 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.382D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.382D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.593D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.593D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.642D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.661D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 2 3 2   1 310 8 6 7 9 5 4 1   2 3 810 6 4 5 7 9 8  10 5 4 6 7 9 2 1 3 8
                                       10 9 7 4 5 6 2 1 319  16141211132118201517  10 8 6 9 7 4 5 1 2 3  10 8 7 9 6 5 4 2 1 3
                                        2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.59524
 Weight factors for state symmetry  2:    0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381
                                          0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381   0.02381
                                          0.02381
 
 Number of orbital rotations:  1243  ( 24 closed/active, 696 closed/virtual, 0 active/active, 523 active/virtual )
 Total number of variables:    7983
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   16    0   -239.19657386    -239.20992653   -0.01335267    0.09090556 0.00042504 0.00000000  0.52E+00      1.94
   2    7   12    0   -239.20819914    -239.20921639   -0.00101725    0.08224143 0.00004180 0.00000000  0.57E-01      3.64
   3    4    8    0   -239.20922045    -239.20922050   -0.00000005    0.00039404 0.00000151 0.00000000  0.11E-02      4.86
   4    2    4    0   -239.20922050    -239.20922050    0.00000000    0.00000006 0.00000001 0.00000000  0.11E-06      5.64

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.50E-08)
                       Final energy:   -239.20922050
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -239.276580835036
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.40082553
 One electron energy                          -419.82540334
 Two electron energy                           180.54882251
 Virial ratio                                    3.58955025
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -239.217169080474
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.35244213
 One electron energy                          -419.58380347
 Two electron energy                           180.36663439
 Virial ratio                                    3.59026360
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -239.217169080455
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.35244213
 One electron energy                          -419.58380347
 Two electron energy                           180.36663439
 Virial ratio                                    3.59026360
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -239.217169080366
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.35244213
 One electron energy                          -419.58380347
 Two electron energy                           180.36663439
 Virial ratio                                    3.59026360
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -239.217169080318
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.35244213
 One electron energy                          -419.58380348
 Two electron energy                           180.36663440
 Virial ratio                                    3.59026360
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -239.217169080314
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.35244213
 One electron energy                          -419.58380348
 Two electron energy                           180.36663440
 Virial ratio                                    3.59026360
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -239.194132590789
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.32586452
 One electron energy                          -419.39288959
 Two electron energy                           180.19875700
 Virial ratio                                    3.59075974
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Doublet
 =============================
 !MCSCF STATE 7.2 Doublet Energy              -239.194132590668
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.32586452
 One electron energy                          -419.39288959
 Two electron energy                           180.19875699
 Virial ratio                                    3.59075974
 
 !MCSCF STATE 7.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Doublet
 =============================
 !MCSCF STATE 8.2 Doublet Energy              -239.194132590589
 Nuclear energy                                  0.00000000
 Kinetic energy                                 92.32586452
 One electron energy                          -419.39288959
 Two electron energy                           180.19875700
 Virial ratio                                    3.59075974
 
 !MCSCF STATE 8.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.2 Doublet
 =============================
 !MCSCF STATE 9.2 Doublet Energy              -239.040435284718
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.83119833
 One electron energy                          -414.47429612
 Two electron energy                           175.43386083
 Virial ratio                                    3.60304166
 
 !MCSCF STATE 9.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.2 Doublet
 ==============================
 !MCSCF STATE 10.2 Doublet Energy             -239.023336475048
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.88677764
 One electron energy                          -414.73300055
 Two electron energy                           175.70966408
 Virial ratio                                    3.60128108
 
 !MCSCF STATE 10.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.2 Doublet
 ==============================
 !MCSCF STATE 11.2 Doublet Energy             -239.023336475030
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.88677764
 One electron energy                          -414.73300055
 Two electron energy                           175.70966408
 Virial ratio                                    3.60128108
 
 !MCSCF STATE 11.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.2 Doublet
 ==============================
 !MCSCF STATE 12.2 Doublet Energy             -239.023336474638
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.88677765
 One electron energy                          -414.73300060
 Two electron energy                           175.70966413
 Virial ratio                                    3.60128108
 
 !MCSCF STATE 12.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.2 Doublet
 ==============================
 !MCSCF STATE 13.2 Doublet Energy             -239.023336474599
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.88677765
 One electron energy                          -414.73300058
 Two electron energy                           175.70966411
 Virial ratio                                    3.60128108
 
 !MCSCF STATE 13.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.2 Doublet
 ==============================
 !MCSCF STATE 14.2 Doublet Energy             -239.023336474455
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.88677765
 One electron energy                          -414.73300061
 Two electron energy                           175.70966413
 Virial ratio                                    3.60128108
 
 !MCSCF STATE 14.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.2 Doublet
 ==============================
 !MCSCF STATE 15.2 Doublet Energy             -239.015793085537
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.90175322
 One electron energy                          -414.80359325
 Two electron energy                           175.78780016
 Virial ratio                                    3.60077512
 
 !MCSCF STATE 15.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.2 Doublet
 ==============================
 !MCSCF STATE 16.2 Doublet Energy             -239.015793084948
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.90175322
 One electron energy                          -414.80359328
 Two electron energy                           175.78780019
 Virial ratio                                    3.60077512
 
 !MCSCF STATE 16.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.2 Doublet
 ==============================
 !MCSCF STATE 17.2 Doublet Energy             -239.015793084941
 Nuclear energy                                  0.00000000
 Kinetic energy                                 91.90175323
 One electron energy                          -414.80359329
 Two electron energy                           175.78780021
 Virial ratio                                    3.60077512
 
 !MCSCF STATE 17.2 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.464317120716
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999986849
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999999736
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     3.999999999999
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     3.535718777418
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     1.000000000000
 !MCSCF expec      <7.2 Doublet|LXLX|7.2 Doublet>     1.000000000000
 !MCSCF expec      <8.2 Doublet|LXLX|8.2 Doublet>    -0.000000000000
 !MCSCF expec      <9.2 Doublet|LXLX|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|LXLX|10.2 Doublet>     3.999999999855
 !MCSCF expec    <11.2 Doublet|LXLX|11.2 Doublet>     3.993885361942
 !MCSCF expec    <12.2 Doublet|LXLX|12.2 Doublet>     0.999999994898
 !MCSCF expec    <13.2 Doublet|LXLX|13.2 Doublet>     0.999999991358
 !MCSCF expec    <14.2 Doublet|LXLX|14.2 Doublet>     0.006114733154
 !MCSCF expec    <15.2 Doublet|LXLX|15.2 Doublet>     0.000000000000
 !MCSCF expec    <16.2 Doublet|LXLX|16.2 Doublet>     1.000000000000
 !MCSCF expec    <17.2 Doublet|LXLX|17.2 Doublet>     1.000000000000
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     1.658220529606
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000018829
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     3.999999999201
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000000001
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     2.341724259585
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999999812
 !MCSCF expec      <7.2 Doublet|LYLY|7.2 Doublet>     0.000000000215
 !MCSCF expec      <8.2 Doublet|LYLY|8.2 Doublet>     1.000000000000
 !MCSCF expec      <9.2 Doublet|LYLY|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|LYLY|10.2 Doublet>     1.000000000108
 !MCSCF expec    <11.2 Doublet|LYLY|11.2 Doublet>     0.867721172628
 !MCSCF expec    <12.2 Doublet|LYLY|12.2 Doublet>     1.000000052103
 !MCSCF expec    <13.2 Doublet|LYLY|13.2 Doublet>     3.999999927053
 !MCSCF expec    <14.2 Doublet|LYLY|14.2 Doublet>     3.132279761306
 !MCSCF expec    <15.2 Doublet|LYLY|15.2 Doublet>     1.000000000000
 !MCSCF expec    <16.2 Doublet|LYLY|16.2 Doublet>     0.000001291249
 !MCSCF expec    <17.2 Doublet|LYLY|17.2 Doublet>     0.999998708751
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.877462349678
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999999994322
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000001063
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999999999999
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.122556962997
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.000000000188
 !MCSCF expec      <7.2 Doublet|LZLZ|7.2 Doublet>     0.999999999785
 !MCSCF expec      <8.2 Doublet|LZLZ|8.2 Doublet>     1.000000000000
 !MCSCF expec      <9.2 Doublet|LZLZ|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|LZLZ|10.2 Doublet>     1.000000000036
 !MCSCF expec    <11.2 Doublet|LZLZ|11.2 Doublet>     1.138393465430
 !MCSCF expec    <12.2 Doublet|LZLZ|12.2 Doublet>     3.999999952999
 !MCSCF expec    <13.2 Doublet|LZLZ|13.2 Doublet>     1.000000081589
 !MCSCF expec    <14.2 Doublet|LZLZ|14.2 Doublet>     2.861605505541
 !MCSCF expec    <15.2 Doublet|LZLZ|15.2 Doublet>     1.000000000000
 !MCSCF expec    <16.2 Doublet|LZLZ|16.2 Doublet>     0.999998708751
 !MCSCF expec    <17.2 Doublet|LZLZ|17.2 Doublet>     0.000001291250
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <7.2 Doublet|L**2|7.2 Doublet>     2.000000000000
 !MCSCF expec      <8.2 Doublet|L**2|8.2 Doublet>     2.000000000000
 !MCSCF expec      <9.2 Doublet|L**2|9.2 Doublet>    -0.000000000000
 !MCSCF expec    <10.2 Doublet|L**2|10.2 Doublet>     6.000000000000
 !MCSCF expec    <11.2 Doublet|L**2|11.2 Doublet>     6.000000000000
 !MCSCF expec    <12.2 Doublet|L**2|12.2 Doublet>     6.000000000000
 !MCSCF expec    <13.2 Doublet|L**2|13.2 Doublet>     6.000000000000
 !MCSCF expec    <14.2 Doublet|L**2|14.2 Doublet>     6.000000000000
 !MCSCF expec    <15.2 Doublet|L**2|15.2 Doublet>     2.000000000000
 !MCSCF expec    <16.2 Doublet|L**2|16.2 Doublet>     2.000000000000
 !MCSCF expec    <17.2 Doublet|L**2|17.2 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 2 4 1 1 6 3   5 2 4 1 4 5 3 6 2 4   6 5 3 2 7141511 9 8  121310 1 6 4 2 5 314
                                       15 711 8121310 9 114  15111310 7 812 9 6 4   2 5 3 1 2 5 3 6 413  10141511 812 7 9 1 5
                                        3 2 6 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 1 2 1   2 3 810 6 4 5 9 7 1   2 3 810 6 5 4 9 7 8  10 5 9 7 6 4 2 1 3 8
                                       10 9 7 5 6 4 2 1 318  20121517161419211311   810 6 9 7 5 4 2 1 3   7 910 8 6 5 4 2 1 3
                                        2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.56187     1  1  s    1.00006
    2.1     2.00000    -1.65643     1  1  d2-  1.00030
    3.1     2.00000    -1.65643     1  1  d2+  1.00030
    4.1     2.00000    -1.65643     1  1  d1-  1.00030
    5.1     2.00000    -1.65643     1  1  d0   1.00030
    6.1     2.00000    -1.65643     1  1  d1+  1.00030
    7.1     1.99028    -0.65120     1  1  s   -0.34751    1  4  s    0.55386    1  5  s    0.62665    1  9  s   -0.28616
    1.2     2.00000    -4.62885     1  1  py   0.99972
    2.2     2.00000    -4.62885     1  1  px   0.99972
    3.2     2.00000    -4.62885     1  1  pz   0.99972
    4.2     0.93062    -0.16346     1  1  py  -0.29699    1  4  py   0.45434    1  5  py   0.49079
    5.2     0.93062    -0.16346     1  1  px  -0.29699    1  4  px   0.45434    1  5  px   0.49079
    6.2     0.93062    -0.16346     1  1  pz  -0.29699    1  4  pz   0.45434    1  5  pz   0.49079
    7.2     0.07262     0.05436     1 10  pz   1.14336
    8.2     0.07262     0.05436     1 10  px   1.14336
    9.2     0.07262     0.05436     1 10  py   1.14336
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa000       0.99930560
 
 Energy:     -239.27658084
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 aab000      -0.14238846     -0.00000030     -0.00000743     -0.00000077      0.80096549      0.00000000     -0.00000000
 2 aba000       0.76485069     -0.00006621      0.00001867      0.00000052     -0.27717072     -0.00000000      0.00000000
 2 a20000      -0.00001585     -0.00002623      0.70453187     -0.00000005      0.00000372      0.00000952      0.69470508
 2 2a0000      -0.00000025      0.00000002      0.00000005      0.70453187      0.00000063     -0.00000004     -0.00000005
 2 02a000      -0.00006529     -0.70453186     -0.00002623      0.00000002     -0.00001187      0.69470509     -0.00000952
 2 20a000       0.00006529      0.70453185      0.00002623     -0.00000002      0.00001187      0.69470510     -0.00000952
 2 0a2000       0.00000025     -0.00000002     -0.00000005     -0.70453185     -0.00000063     -0.00000004     -0.00000005
 2 a02000       0.00001585      0.00002623     -0.70453185      0.00000005     -0.00000372      0.00000952      0.69470510
 2 a0a0b0      -0.04314459      0.00000373     -0.00000105     -0.00000003      0.01563497     -0.00000000     -0.00000000
 2 baa000      -0.62246223      0.00006651     -0.00001124      0.00000025     -0.52379477      0.00000000      0.00000000
 2 0aa00b      -0.03511256      0.00000375     -0.00000063      0.00000001     -0.02954681      0.00000000      0.00000000
 2 a0ab00       0.00000089      0.00000148     -0.03974205      0.00000000     -0.00000021      0.00000077      0.05593037
 2 a0a00b      -0.00000368     -0.03974204     -0.00000148      0.00000000     -0.00000067     -0.05593036      0.00000077
 2 0aab00       0.00000001     -0.00000000     -0.00000000     -0.03974205     -0.00000004     -0.00000000     -0.00000000
 2 aa000b       0.00000001     -0.00000000     -0.00000000     -0.03974204     -0.00000004      0.00000000      0.00000000
 2 0aa0b0       0.00000368      0.03974205      0.00000148     -0.00000000      0.00000067     -0.05593038      0.00000077
 2 aa00b0      -0.00000089     -0.00000148      0.03974205     -0.00000000      0.00000021      0.00000077      0.05593038
 2 aa0b00      -0.00803201     -0.00000002     -0.00000042     -0.00000004      0.04518179      0.00000000     -0.00000000
 2 ab000a      -0.00000000      0.00000000      0.00000000      0.01304784      0.00000001     -0.00000000     -0.00000000
 2 0baa00      -0.00000000      0.00000000      0.00000000      0.01304784      0.00000001      0.00000000      0.00000000
 2 ba00a0       0.00000029      0.00000049     -0.01304784      0.00000000     -0.00000007     -0.00000022     -0.01573570
 2 0ab0a0      -0.00000121     -0.01304784     -0.00000049      0.00000000     -0.00000022      0.01573570     -0.00000022
 2 a0b00a       0.00000121      0.01304784      0.00000049     -0.00000000      0.00000022      0.01573570     -0.00000022
 2 b0aa00      -0.00000029     -0.00000049      0.01304784     -0.00000000      0.00000007     -0.00000022     -0.01573570
 2 0ba00a       0.02634262     -0.00000251      0.00000057      0.00000001      0.00433198     -0.00000000      0.00000000
 2 ab0a00       0.01745173     -0.00000128      0.00000050      0.00000002     -0.02020241     -0.00000000      0.00000000
 2 b0a0a0       0.02622167     -0.00000251      0.00000056      0.00000000      0.00501244      0.00000000     -0.00000000
 2 a0b0a0       0.01692292     -0.00000122      0.00000049      0.00000002     -0.02064741      0.00000000      0.00000000
 2 ba0a00      -0.00941972      0.00000129     -0.00000008      0.00000002     -0.02497938     -0.00000000      0.00000000
 2 0ab00a       0.00876994     -0.00000124      0.00000006     -0.00000002      0.02521483     -0.00000000     -0.00000000
 2 a0ba00      -0.00000060     -0.00000099      0.02669421     -0.00000000      0.00000014     -0.00000055     -0.04019468
 2 b0a00a       0.00000247      0.02669420      0.00000099     -0.00000000      0.00000045      0.04019466     -0.00000055
 2 0aba00      -0.00000001      0.00000000      0.00000000      0.02669421      0.00000002      0.00000000      0.00000000
 2 ba000a      -0.00000001      0.00000000      0.00000000      0.02669420      0.00000002     -0.00000000     -0.00000000
 2 0ba0a0      -0.00000247     -0.02669421     -0.00000099      0.00000000     -0.00000045      0.04019468     -0.00000055
 2 ab00a0       0.00000060      0.00000099     -0.02669421      0.00000000     -0.00000014     -0.00000055     -0.04019468
 0 a22000       0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000207     -0.15120904
 0 2a2000       0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000001      0.00000001
 0 22a000      -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.15120904      0.00000207
 2 00200a       0.00000031      0.00000051     -0.01364636      0.00000000     -0.00000007      0.00000017      0.01251370
 2 0020a0       0.00000000     -0.00000000     -0.00000000     -0.01364638     -0.00000001     -0.00000000     -0.00000000
 2 200a00       0.00000126      0.01364637      0.00000051     -0.00000000      0.00000023      0.01251371     -0.00000017
 2 2000a0      -0.00000000      0.00000000      0.00000000      0.01364638      0.00000001     -0.00000000     -0.00000000
 2 020a00      -0.00000126     -0.01364637     -0.00000051      0.00000000     -0.00000023      0.01251371     -0.00000017
 2 02000a      -0.00000031     -0.00000051      0.01364636     -0.00000000      0.00000007      0.00000017      0.01251370
 2 0200a0      -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 2 002a00       0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.01194527      0.00000016
 2 20000a      -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000016     -0.01194527
 0 a2a0b0       0.01721643     -0.00000149      0.00000042      0.00000001     -0.00623898     -0.00000000      0.00000000
 0 aa200b      -0.00000001      0.00000000      0.00000000      0.01585868      0.00000001      0.00000000      0.00000000
 0 2aab00      -0.00000001      0.00000000      0.00000000      0.01585868      0.00000001     -0.00000000     -0.00000000
 0 aa20b0       0.00000036      0.00000059     -0.01585868      0.00000000     -0.00000008      0.00000010      0.00701763
 0 2aa0b0      -0.00000147     -0.01585868     -0.00000059      0.00000000     -0.00000027     -0.00701763      0.00000010
 0 a2a00b       0.00000147      0.01585868      0.00000059     -0.00000000      0.00000027     -0.00701763      0.00000010
 0 a2ab00      -0.00000036     -0.00000059      0.01585868     -0.00000000      0.00000008      0.00000010      0.00701763
 0 2aa00b       0.01401133     -0.00000150      0.00000025     -0.00000001      0.01179038     -0.00000000     -0.00000000
 0 aa2b00       0.00320510      0.00000001      0.00000017      0.00000002     -0.01802936     -0.00000000      0.00000000
 
 Energy:     -239.21716908   -239.21716908   -239.21716908   -239.21716908   -239.21716908   -239.19413259   -239.19413259

 State:              8               9              10              11              12              13              14
 2 aab000      -0.00000000     -0.00000000     -0.00000023      0.04446774      0.00000207     -0.00000274     -0.02804700
 2 aba000       0.00000000     -0.00000001     -0.00000008      0.00205553     -0.00000385      0.00000494      0.05253370
 2 a20000       0.00000005      0.00000000      0.00000031     -0.00000011     -0.00000521     -0.04553033      0.00000428
 2 2a0000       0.69470509      0.00000000      0.04553031      0.00000028      0.00000002      0.00000031      0.00000006
 2 02a000       0.00000004     -0.00000000      0.00000002      0.00000002     -0.04553033      0.00000521     -0.00000334
 2 20a000       0.00000004     -0.00000000     -0.00000002     -0.00000002      0.04553032     -0.00000521      0.00000334
 2 0a2000       0.69470510     -0.00000000     -0.04553033     -0.00000028     -0.00000002     -0.00000031     -0.00000006
 2 a02000       0.00000005      0.00000000     -0.00000031      0.00000011      0.00000521      0.04553034     -0.00000428
 2 a0a0b0       0.00000000     -0.46795365     -0.00000096      0.02495125     -0.00004676      0.00005991      0.63768269
 2 baa000       0.00000000      0.00000001      0.00000031     -0.04652328      0.00000178     -0.00000219     -0.02448670
 2 0aa00b      -0.00000000      0.46795365     -0.00000381      0.56472503     -0.00002161      0.00002663      0.29723293
 2 a0ab00       0.00000000      0.00000000      0.00000371     -0.00000129     -0.00006320     -0.55267204      0.00005197
 2 a0a00b      -0.00000000     -0.00000000     -0.00000023     -0.00000018      0.55267203     -0.00006319      0.00004054
 2 0aab00       0.05593037      0.00000000      0.55267202      0.00000336      0.00000023      0.00000371      0.00000070
 2 aa000b      -0.05593036      0.00000000      0.55267198      0.00000336      0.00000023      0.00000371      0.00000070
 2 0aa0b0      -0.00000000      0.00000000      0.00000023      0.00000018     -0.55267196      0.00006319     -0.00004054
 2 aa00b0       0.00000000     -0.00000000     -0.00000371      0.00000129      0.00006320      0.55267194     -0.00005197
 2 aa0b00      -0.00000000      0.46795365      0.00000285     -0.53977379     -0.00002515      0.00003327      0.34044975
 2 ab000a       0.01573570     -0.00000000     -0.34778547     -0.00000211     -0.00000014     -0.00000233     -0.00000044
 2 0baa00      -0.01573570     -0.00000000     -0.34778549     -0.00000211     -0.00000014     -0.00000233     -0.00000044
 2 ba00a0      -0.00000000      0.00000000      0.00000233     -0.00000081     -0.00003977     -0.34778545      0.00003270
 2 0ab0a0       0.00000000     -0.00000000     -0.00000014     -0.00000012      0.34778546     -0.00003977      0.00002551
 2 a0b00a       0.00000000      0.00000000      0.00000014      0.00000012     -0.34778550      0.00003977     -0.00002551
 2 b0aa00      -0.00000000     -0.00000000     -0.00000233      0.00000081      0.00003977      0.34778551     -0.00003270
 2 0ba00a       0.00000000     -0.23397683      0.00000215     -0.34891882      0.00000151     -0.00000127     -0.02216342
 2 ab0a00       0.00000000     -0.23397682     -0.00000204      0.34612029      0.00000374     -0.00000545     -0.04935890
 2 b0a0a0      -0.00000000      0.23397682     -0.00000038      0.13031408      0.00002384     -0.00003081     -0.32442842
 2 a0b0a0      -0.00000000      0.23397682      0.00000134     -0.15526533      0.00002292     -0.00002909     -0.31325427
 2 ba0a00       0.00000000     -0.23397682     -0.00000081      0.19365350      0.00002141     -0.00002782     -0.29109085
 2 0ab00a       0.00000000     -0.23397683      0.00000166     -0.21580622      0.00002010     -0.00002536     -0.27506951
 2 a0ba00      -0.00000000     -0.00000000     -0.00000137      0.00000048      0.00002343      0.20488653     -0.00001926
 2 b0a00a       0.00000000      0.00000000      0.00000008      0.00000007     -0.20488653      0.00002343     -0.00001503
 2 0aba00      -0.04019468      0.00000000     -0.20488652     -0.00000125     -0.00000008     -0.00000137     -0.00000026
 2 ba000a       0.04019466      0.00000000     -0.20488651     -0.00000125     -0.00000008     -0.00000137     -0.00000026
 2 0ba0a0       0.00000000     -0.00000000     -0.00000008     -0.00000007      0.20488650     -0.00002343      0.00001503
 2 ab00a0      -0.00000000      0.00000000      0.00000137     -0.00000048     -0.00002343     -0.20488649      0.00001926
 0 a22000      -0.00000001     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0 2a2000      -0.15120904     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 0 22a000      -0.00000001      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 2 00200a       0.00000000     -0.00000000     -0.00000096      0.00000033      0.00001634      0.14289897     -0.00001344
 2 0020a0       0.01251372      0.00000000     -0.14289897     -0.00000087     -0.00000006     -0.00000096     -0.00000018
 2 200a00       0.00000000     -0.00000000     -0.00000006     -0.00000005      0.14289897     -0.00001634      0.00001048
 2 2000a0       0.01251371     -0.00000000      0.14289896      0.00000087      0.00000006      0.00000096      0.00000018
 2 020a00       0.00000000      0.00000000      0.00000006      0.00000005     -0.14289896      0.00001634     -0.00001048
 2 02000a       0.00000000      0.00000000      0.00000096     -0.00000033     -0.00001634     -0.14289896      0.00001344
 2 0200a0      -0.01194527      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2 002a00      -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2 20000a      -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000001      0.00000000
 0 a2a0b0      -0.00000000      0.04738750      0.00000010     -0.00255096      0.00000478     -0.00000612     -0.06519536
 0 aa200b      -0.00701763     -0.00000000     -0.05650404     -0.00000034     -0.00000002     -0.00000038     -0.00000007
 0 2aab00       0.00701763      0.00000000     -0.05650404     -0.00000034     -0.00000002     -0.00000038     -0.00000007
 0 aa20b0       0.00000000      0.00000000      0.00000038     -0.00000013     -0.00000646     -0.05650403      0.00000531
 0 2aa0b0      -0.00000000     -0.00000000     -0.00000002     -0.00000002      0.05650403     -0.00000646      0.00000414
 0 a2a00b      -0.00000000      0.00000000      0.00000002      0.00000002     -0.05650404      0.00000646     -0.00000414
 0 a2ab00       0.00000000     -0.00000000     -0.00000038      0.00000013      0.00000646      0.05650404     -0.00000531
 0 2aa00b       0.00000000     -0.04738750      0.00000039     -0.05773632      0.00000221     -0.00000272     -0.03038848
 0 aa2b00       0.00000000     -0.04738750     -0.00000029      0.05518535      0.00000257     -0.00000340     -0.03480688
 
 Energy:     -239.19413259   -239.04043528   -239.02333648   -239.02333648   -239.02333647   -239.02333647   -239.02333647

 State:             15              16              17
 2 aab000      -0.00000000      0.00000000     -0.00000000
 2 aba000       0.00000000     -0.00000000      0.00000000
 2 a20000      -0.00000001     -0.05993111     -0.00006810
 2 2a0000       0.05993113     -0.00000001      0.00000001
 2 02a000      -0.00000001     -0.00006810      0.05993111
 2 20a000      -0.00000001     -0.00006810      0.05993109
 2 0a2000       0.05993114     -0.00000001      0.00000001
 2 a02000      -0.00000001     -0.05993110     -0.00006810
 2 a0a0b0       0.00000000     -0.00000000      0.00000000
 2 baa000       0.00000000      0.00000000     -0.00000000
 2 0aa00b      -0.00000000      0.00000000     -0.00000000
 2 a0ab00       0.00000008      0.55015658      0.00062516
 2 a0a00b      -0.00000005     -0.00062516      0.55015660
 2 0aab00      -0.55015697      0.00000008     -0.00000005
 2 aa000b       0.55015701     -0.00000008      0.00000005
 2 0aa0b0      -0.00000005     -0.00062516      0.55015667
 2 aa00b0       0.00000008      0.55015669      0.00062516
 2 aa0b00      -0.00000000      0.00000000      0.00000000
 2 ab000a      -0.36671580      0.00000005     -0.00000003
 2 0baa00       0.36671578     -0.00000005      0.00000003
 2 ba00a0      -0.00000005     -0.36671559     -0.00041671
 2 0ab0a0       0.00000003      0.00041671     -0.36671558
 2 a0b00a       0.00000003      0.00041671     -0.36671553
 2 b0aa00      -0.00000005     -0.36671552     -0.00041671
 2 0ba00a       0.00000000     -0.00000000      0.00000000
 2 ab0a00       0.00000000     -0.00000000     -0.00000000
 2 b0a0a0      -0.00000000      0.00000000     -0.00000000
 2 a0b0a0      -0.00000000      0.00000000     -0.00000000
 2 ba0a00       0.00000000      0.00000000     -0.00000000
 2 0ab00a       0.00000000      0.00000000     -0.00000000
 2 a0ba00      -0.00000003     -0.18344107     -0.00020845
 2 b0a00a       0.00000002      0.00020845     -0.18344107
 2 0aba00       0.18344120     -0.00000003      0.00000002
 2 ba000a      -0.18344121      0.00000003     -0.00000002
 2 0ba0a0       0.00000002      0.00020845     -0.18344109
 2 ab00a0      -0.00000003     -0.18344110     -0.00020845
 0 a22000       0.00000000      0.01504734      0.00001710
 0 2a2000      -0.01504735      0.00000000     -0.00000000
 0 22a000       0.00000000      0.00001710     -0.01504734
 2 00200a      -0.00000002     -0.11352254     -0.00012900
 2 0020a0       0.11352263     -0.00000002      0.00000001
 2 200a00      -0.00000001     -0.00012900      0.11352255
 2 2000a0       0.11352264     -0.00000002      0.00000001
 2 020a00      -0.00000001     -0.00012900      0.11352258
 2 02000a      -0.00000002     -0.11352258     -0.00012900
 2 0200a0      -0.06975195      0.00000001     -0.00000001
 2 002a00       0.00000001      0.00007926     -0.06975191
 2 20000a       0.00000001      0.06975191      0.00007926
 0 a2a0b0      -0.00000000      0.00000000     -0.00000000
 0 aa200b      -0.05895523      0.00000001     -0.00000001
 0 2aab00       0.05895523     -0.00000001      0.00000001
 0 aa20b0      -0.00000001     -0.05895520     -0.00006699
 0 2aa0b0       0.00000001      0.00006699     -0.05895519
 0 a2a00b       0.00000001      0.00006699     -0.05895519
 0 a2ab00      -0.00000001     -0.05895519     -0.00006699
 0 2aa00b       0.00000000     -0.00000000      0.00000000
 0 aa2b00       0.00000000     -0.00000000     -0.00000000
 
 Energy:     -239.01579309   -239.01579308   -239.01579308
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.79       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         8.80      5.39      3.09
 REAL TIME  *        11.23 SEC
 DISK USED  *        53.25 MB (local),        1.85 GB (total)
 SF USED    *        60.21 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -239.2765808  -0.0
    -239.2171691   6.0
    -239.2171691   6.0
    -239.2171691   6.0
    -239.2171691   6.0
    -239.2171691   6.0
    -239.1941326   2.0
    -239.1941326   2.0
    -239.1941326   2.0
    -239.0404353  -0.0
    -239.0233365   6.0
    -239.0233365   6.0
    -239.0233365   6.0
    -239.0233365   6.0
    -239.0233365   6.0
    -239.0157931   2.0
    -239.0157931   2.0
    -239.0157931   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 23
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:       86 conf      104 CSFs
 N elec internal:    18764 conf    67760 CSFs
 N-1 el internal:    14189 conf   101369 CSFs
 N-2 el internal:     4931 conf    61610 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.27658084

 Number of blocks in overlap matrix:   167   Smallest eigenvalue:  0.31D-04
 Number of N-2 electron functions:     250
 Number of N-1 electron functions:  101369

 Number of internal configurations:                33680
 Number of singly external configurations:       7754546
 Number of doubly external configurations:       1463815
 Total number of contracted configurations:      9252041
 Total number of uncontracted configurations:  367286991

 Diagonal Coupling coefficients finished.               Storage:  10292981 words, CPU-Time:      0.52 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1796366 words, CPU-time:      0.26 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.27658084     0.00000000    -1.03242906  0.47D-01  0.12D+00     2.11
    2     1     1     1.10343185    -0.81617966  -240.09276050    -0.81617966    -0.02666902  0.42D-02  0.18D-02    14.30
    3     1     1     1.08862099    -0.84135090  -240.11793173    -0.02517124    -0.00039068  0.54D-04  0.34D-04    26.16
    4     1     1     1.08821665    -0.84174777  -240.11832860    -0.00039687    -0.00000940  0.17D-05  0.86D-06    37.94
    5     1     1     1.08826522    -0.84175745  -240.11833829    -0.00000968    -0.00000028  0.23D-07  0.44D-07    49.70
    6     1     1     1.08828005    -0.84175775  -240.11833858    -0.00000030    -0.00000001  0.11D-08  0.23D-08    61.45


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.6%
 S   3.7%  27.8%
 P   0.9%  52.2%   4.5%

 Initialization:   1.7%
 Other:            5.5%

 Total CPU:       61.5 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///000           0.9580857


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.95850539 (fixed)   0.95854739 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016168   -0.00028333   -0.00038534
 Singles      0.01409332   -0.05114557   -0.05789007
 Pairs        0.07420100   -0.79032885   -0.78348234
 Total        1.08845601   -0.84175775   -0.84175775
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.27658084
 Nuclear energy                         0.00000000
 Kinetic energy                        93.08657897
 One electron energy                 -419.31093389
 Two electron energy                  179.19259531
 Virial quotient                       -2.57951620
 Correlation energy                    -0.84175775
 !MRCI STATE 1.2 Energy              -240.118338583684

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.19279712 (Davidson, fixed reference)
 Cluster corrected energies          -240.19271682 (Davidson, relaxed reference)

 Cluster corrected energies          -240.19039582 (Pople, fixed reference)
 Cluster corrected energies          -240.19031233 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       73.40       700     1000      520     2140     5302   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        71.54     62.72      5.39      3.09
 REAL TIME  *        76.93 SEC
 DISK USED  *       125.86 MB (local),        4.11 GB (total)
 SF USED    *       994.33 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -240.19271682  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 17  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
 Number of reference states: 17  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 23
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:      176 conf      280 CSFs
 N elec internal:    21164 conf    87808 CSFs
 N-1 el internal:    18620 conf   124768 CSFs
 N-2 el internal:     9446 conf    81340 CSFs

 Number of electrons in valence space:                     23
 Maximum number of open shell orbitals in reference space:  5
 Maximum number of open shell orbitals in internal spaces: 11


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     153 (  79  74 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  35

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -239.21716908
     2      -239.21716908
     3      -239.21716908
     4      -239.21716908
     5      -239.21716908
     6      -239.19413259
     7      -239.19413259
     8      -239.19413259
     9      -239.04043528
    10      -239.02333648
    11      -239.02333648
    12      -239.02333647
    13      -239.02333647
    14      -239.02333647
    15      -239.01579309
    16      -239.01579308
    17      -239.01579308

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3252D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1910D-06

 Number of blocks in overlap matrix:  1471   Smallest eigenvalue:  0.19D-06
 Number of N-2 electron functions:    3628
 Number of N-1 electron functions:  124768

 Number of internal configurations:                44086
 Number of singly external configurations:       9543892
 Number of doubly external configurations:      21241426
 Total number of contracted configurations:     30829404
 Total number of uncontracted configurations:  484809336

 Diagonal Coupling coefficients finished.               Storage:  46705908 words, CPU-Time:    204.36 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2706800 words, CPU-time:      3.60 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -239.21716908     0.00000000    -1.02901631  0.55D-01  0.11D+00   229.96
    1     2     2     1.00000000     0.00000000  -239.21716908     0.00000000    -1.02815576  0.55D-01  0.11D+00   229.96
    1     3     3     1.00000000     0.00000000  -239.21716908    -0.00000000    -1.02858640  0.56D-01  0.11D+00   229.96
    1     4     4     1.00000000     0.00000000  -239.21716908     0.00000000    -1.02789038  0.55D-01  0.11D+00   229.96
    1     5     5     1.00000000     0.00000000  -239.21716908     0.00000000    -1.02831813  0.56D-01  0.11D+00   229.96
    1     6     6     1.00000000     0.00000000  -239.19413259     0.00000000    -1.00962098  0.36D-01  0.11D+00   229.96
    1     7     7     1.00000000     0.00000000  -239.19413259    -0.00000000    -1.00933761  0.36D-01  0.11D+00   229.96
    1     8     8     1.00000000     0.00000000  -239.19413259    -0.00000000    -1.00932695  0.36D-01  0.11D+00   229.96
    1     9     9     1.00000000     0.00000000  -239.04043528     0.00000000    -0.98849701  0.47D-01  0.10D+00   229.96
    1    10    10     1.00000000     0.00000000  -239.02333648     0.00000000    -0.99404877  0.50D-01  0.10D+00   229.96
    1    11    11     1.00000000     0.00000000  -239.02333648     0.00000000    -0.99418798  0.51D-01  0.10D+00   229.96
    1    12    12     1.00000000     0.00000000  -239.02333647     0.00000000    -0.99406836  0.50D-01  0.10D+00   229.96
    1    13    13     1.00000000     0.00000000  -239.02333647     0.00000000    -0.99421965  0.50D-01  0.10D+00   229.96
    1    14    14     1.00000000     0.00000000  -239.02333647     0.00000000    -0.99424438  0.51D-01  0.10D+00   229.96
    1    15    15     1.00000000     0.00000000  -239.01579309     0.00000000    -0.99512774  0.53D-01  0.10D+00   229.96
    1    16    16     1.00000000     0.00000000  -239.01579308     0.00000000    -0.99516301  0.53D-01  0.10D+00   229.96
    1    17    17     1.00000000     0.00000000  -239.01579308     0.00000000    -0.99503894  0.52D-01  0.10D+00   229.96
    2     1     1     1.10632778    -0.82570050  -240.04286958    -0.82570050    -0.02627232  0.47D-02  0.16D-02  1410.13
    2     2     2     1.10622916    -0.82567444  -240.04284352    -0.82567444    -0.02628710  0.47D-02  0.16D-02  1410.13
    2     3     3     1.10637426    -0.82561411  -240.04278319    -0.82561411    -0.02636852  0.47D-02  0.16D-02  1410.13
    2     4     4     1.10657910    -0.82529143  -240.04246051    -0.82529143    -0.02668215  0.48D-02  0.16D-02  1410.13
    2     5     5     1.10689896    -0.82501334  -240.04218242    -0.82501334    -0.02697002  0.50D-02  0.16D-02  1410.13
    2     6     6     1.09872808    -0.82385915  -240.01799175    -0.82385915    -0.02286866  0.38D-02  0.15D-02  1410.13
    2     7     7     1.09859564    -0.82371986  -240.01785245    -0.82371986    -0.02299177  0.38D-02  0.16D-02  1410.13
    2     8     8     1.09854958    -0.82361114  -240.01774374    -0.82361114    -0.02304062  0.38D-02  0.16D-02  1410.13
    2     9     9     1.09998640    -0.80974728  -239.85018257    -0.80974728    -0.02065792  0.31D-02  0.13D-02  1410.13
    2    10    10     1.10179381    -0.81131026  -239.83464673    -0.81131026    -0.02175154  0.37D-02  0.13D-02  1410.13
    2    11    11     1.10182097    -0.81129846  -239.83463494    -0.81129846    -0.02175891  0.37D-02  0.13D-02  1410.13
    2    12    12     1.10190201    -0.81122425  -239.83456072    -0.81122425    -0.02183813  0.37D-02  0.13D-02  1410.13
    2    13    13     1.10215694    -0.81109111  -239.83442759    -0.81109111    -0.02197595  0.39D-02  0.13D-02  1410.13
    2    14    14     1.10230609    -0.81094404  -239.83428051    -0.81094404    -0.02212245  0.39D-02  0.13D-02  1410.13
    2    15    15     1.10362885    -0.81092499  -239.82671808    -0.81092499    -0.02252498  0.45D-02  0.13D-02  1410.13
    2    16    16     1.10368814    -0.81087570  -239.82666879    -0.81087570    -0.02257405  0.45D-02  0.13D-02  1410.13
    2    17    17     1.10370462    -0.81085190  -239.82664498    -0.81085190    -0.02258655  0.45D-02  0.13D-02  1410.13
    3     1     1     1.09309395    -0.85054555  -240.06771463    -0.02484505    -0.00065587  0.98D-04  0.70D-04  2594.80
    3     2     2     1.09309988    -0.85053936  -240.06770845    -0.02486493    -0.00065967  0.99D-04  0.71D-04  2594.80
    3     3     3     1.09306400    -0.85053421  -240.06770329    -0.02492010    -0.00066252  0.99D-04  0.72D-04  2594.80
    3     4     4     1.09303374    -0.85051048  -240.06767956    -0.02521904    -0.00067927  0.10D-03  0.75D-04  2594.80
    3     5     5     1.09303925    -0.85050409  -240.06767317    -0.02549075    -0.00068622  0.10D-03  0.76D-04  2594.80
    3     6     6     1.09010413    -0.84584550  -240.03997809    -0.02198634    -0.00053171  0.60D-04  0.69D-04  2594.80
    3     7     7     1.09001183    -0.84582998  -240.03996257    -0.02211012    -0.00054180  0.61D-04  0.71D-04  2594.80
    3     8     8     1.08993226    -0.84579634  -240.03992893    -0.02218519    -0.00055947  0.61D-04  0.75D-04  2594.80
    3     9     9     1.08846618    -0.82953167  -239.86996696    -0.01978439    -0.00035115  0.40D-04  0.36D-04  2594.80
    3    10    10     1.08931247    -0.83216897  -239.85550545    -0.02085871    -0.00041504  0.53D-04  0.46D-04  2594.80
    3    11    11     1.08931309    -0.83216727  -239.85550374    -0.02086880    -0.00041606  0.54D-04  0.46D-04  2594.80
    3    12    12     1.08931073    -0.83216119  -239.85549767    -0.02093694    -0.00041950  0.54D-04  0.47D-04  2594.80
    3    13    13     1.08933090    -0.83216067  -239.85549715    -0.02106956    -0.00042367  0.54D-04  0.47D-04  2594.80
    3    14    14     1.08931999    -0.83215072  -239.85548720    -0.02120669    -0.00042947  0.55D-04  0.48D-04  2594.80
    3    15    15     1.08965359    -0.83267132  -239.84846440    -0.02174633    -0.00045492  0.61D-04  0.53D-04  2594.80
    3    16    16     1.08964988    -0.83266841  -239.84846150    -0.02179271    -0.00045703  0.61D-04  0.54D-04  2594.80
    3    17    17     1.08964398    -0.83266133  -239.84845442    -0.02180943    -0.00046033  0.62D-04  0.54D-04  2594.80
    4     1     1     1.09290925    -0.85123802  -240.06840710    -0.00069247    -0.00003935  0.34D-05  0.61D-05  3784.20
    4     2     2     1.09290395    -0.85123672  -240.06840580    -0.00069736    -0.00004021  0.34D-05  0.63D-05  3784.20
    4     3     3     1.09289475    -0.85123605  -240.06840513    -0.00070184    -0.00004063  0.34D-05  0.64D-05  3784.20
    4     4     4     1.09286891    -0.85123253  -240.06840161    -0.00072205    -0.00004267  0.33D-05  0.69D-05  3784.20
    4     5     5     1.09286984    -0.85123231  -240.06840139    -0.00072822    -0.00004281  0.34D-05  0.69D-05  3784.20
    4     6     6     1.09084475    -0.84643160  -240.04056419    -0.00058610    -0.00003826  0.24D-05  0.66D-05  3784.20
    4     7     7     1.09081847    -0.84642917  -240.04056176    -0.00059919    -0.00003983  0.24D-05  0.69D-05  3784.20
    4     8     8     1.09077387    -0.84642225  -240.04055484    -0.00062592    -0.00004413  0.26D-05  0.77D-05  3784.20
    4     9     9     1.08831043    -0.82989867  -239.87033396    -0.00036700    -0.00001678  0.23D-05  0.24D-05  3784.20
    4    10    10     1.08915988    -0.83261336  -239.85594984    -0.00044439    -0.00002582  0.31D-05  0.44D-05  3784.20
    4    11    11     1.08915820    -0.83261335  -239.85594983    -0.00044608    -0.00002562  0.30D-05  0.44D-05  3784.20
    4    12    12     1.08915645    -0.83261303  -239.85594950    -0.00045183    -0.00002575  0.30D-05  0.44D-05  3784.20
    4    13    13     1.08915056    -0.83261133  -239.85594780    -0.00045065    -0.00002650  0.30D-05  0.46D-05  3784.20
    4    14    14     1.08914996    -0.83261087  -239.85594734    -0.00046014    -0.00002687  0.31D-05  0.47D-05  3784.20
    4    15    15     1.08944469    -0.83316758  -239.84896066    -0.00049626    -0.00003019  0.35D-05  0.53D-05  3784.20
    4    16    16     1.08944111    -0.83316715  -239.84896023    -0.00049873    -0.00003040  0.35D-05  0.53D-05  3784.20
    4    17    17     1.08943181    -0.83316511  -239.84895819    -0.00050378    -0.00003141  0.35D-05  0.56D-05  3784.20
    5     1     1     1.09314010    -0.85128481  -240.06845389    -0.00004679    -0.00000278  0.14D-06  0.49D-06  4974.34
    5     2     2     1.09313902    -0.85128466  -240.06845374    -0.00004794    -0.00000287  0.14D-06  0.51D-06  4974.34
    5     3     3     1.09313799    -0.85128458  -240.06845366    -0.00004853    -0.00000292  0.14D-06  0.52D-06  4974.34
    5     4     4     1.09313299    -0.85128412  -240.06845320    -0.00005158    -0.00000324  0.16D-06  0.57D-06  4974.34
    5     5     5     1.09313281    -0.85128404  -240.06845313    -0.00005174    -0.00000325  0.16D-06  0.57D-06  4974.34
    5     6     6     1.09133707    -0.84647885  -240.04061144    -0.00004725    -0.00000296  0.14D-06  0.49D-06  4974.34
    5     7     7     1.09133699    -0.84647862  -240.04061121    -0.00004945    -0.00000313  0.15D-06  0.51D-06  4974.34
    5     8     8     1.09133408    -0.84647786  -240.04061045    -0.00005560    -0.00000368  0.19D-06  0.59D-06  4974.34
    5     9     9     1.08837909    -0.82991879  -239.87035407    -0.00002011    -0.00000140  0.61D-07  0.29D-06  4974.34
    5    10    10     1.08931168    -0.83264622  -239.85598269    -0.00003285    -0.00000265  0.14D-06  0.51D-06  4974.34
    5    11    11     1.08931160    -0.83264613  -239.85598260    -0.00003278    -0.00000268  0.15D-06  0.52D-06  4974.34
    5    12    12     1.08931111    -0.83264606  -239.85598253    -0.00003303    -0.00000272  0.15D-06  0.52D-06  4974.34
    5    13    13     1.08930890    -0.83264565  -239.85598212    -0.00003432    -0.00000293  0.16D-06  0.56D-06  4974.34
    5    14    14     1.08930888    -0.83264558  -239.85598206    -0.00003472    -0.00000295  0.16D-06  0.56D-06  4974.34
    5    15    15     1.08961808    -0.83320623  -239.84899931    -0.00003865    -0.00000307  0.17D-06  0.58D-06  4974.34
    5    16    16     1.08961731    -0.83320614  -239.84899923    -0.00003900    -0.00000312  0.17D-06  0.59D-06  4974.34
    5    17    17     1.08961450    -0.83320578  -239.84899886    -0.00004067    -0.00000336  0.19D-06  0.63D-06  4974.34
    6     1     1     1.09317800    -0.85128826  -240.06845734    -0.00000346    -0.00000025  0.24D-07  0.36D-07  6162.34
    6     2     2     1.09317730    -0.85128825  -240.06845733    -0.00000358    -0.00000026  0.25D-07  0.37D-07  6162.34
    6     3     3     1.09317728    -0.85128824  -240.06845732    -0.00000366    -0.00000027  0.26D-07  0.38D-07  6162.34
    6     4     4     1.09317556    -0.85128819  -240.06845727    -0.00000407    -0.00000030  0.29D-07  0.41D-07  6162.34
    6     5     5     1.09317543    -0.85128813  -240.06845721    -0.00000408    -0.00000030  0.29D-07  0.42D-07  6162.34
    6     6     6     1.09138318    -0.84648255  -240.04061514    -0.00000370    -0.00000023  0.20D-07  0.32D-07  6162.34
    6     7     7     1.09138271    -0.84648253  -240.04061512    -0.00000391    -0.00000024  0.21D-07  0.33D-07  6162.34
    6     8     8     1.09138027    -0.84648245  -240.04061505    -0.00000460    -0.00000029  0.25D-07  0.40D-07  6162.34
    6     9     9     1.08839806    -0.82992073  -239.87035601    -0.00000194    -0.00000017  0.16D-07  0.25D-07  6162.34
    6    10    10     1.08934283    -0.83264980  -239.85598628    -0.00000358    -0.00000029  0.27D-07  0.43D-07  6162.34
    6    11    11     1.08934322    -0.83264978  -239.85598625    -0.00000365    -0.00000029  0.26D-07  0.43D-07  6162.34
    6    12    12     1.08934310    -0.83264977  -239.85598625    -0.00000371    -0.00000030  0.27D-07  0.44D-07  6162.34
    6    13    13     1.08934218    -0.83264968  -239.85598616    -0.00000403    -0.00000033  0.30D-07  0.49D-07  6162.34
    6    14    14     1.08934159    -0.83264964  -239.85598611    -0.00000406    -0.00000034  0.31D-07  0.50D-07  6162.34
    6    15    15     1.08965003    -0.83321029  -239.84900337    -0.00000406    -0.00000032  0.29D-07  0.51D-07  6162.34
    6    16    16     1.08964985    -0.83321028  -239.84900336    -0.00000414    -0.00000033  0.30D-07  0.52D-07  6162.34
    6    17    17     1.08964883    -0.83321027  -239.84900336    -0.00000450    -0.00000037  0.34D-07  0.58D-07  6162.34
    7     1     1     1.09319671    -0.85128855  -240.06845763    -0.00000029    -0.00000002  0.19D-08  0.35D-08  7351.80
    7     2     2     1.09319665    -0.85128855  -240.06845763    -0.00000030    -0.00000002  0.21D-08  0.38D-08  7351.80
    7     3     3     1.09319666    -0.85128855  -240.06845763    -0.00000031    -0.00000002  0.21D-08  0.38D-08  7351.80
    7     4     4     1.09319647    -0.85128853  -240.06845761    -0.00000034    -0.00000003  0.25D-08  0.43D-08  7351.80
    7     5     5     1.09319642    -0.85128847  -240.06845755    -0.00000034    -0.00000003  0.25D-08  0.43D-08  7351.80
    7     6     6     1.09140073    -0.84648281  -240.04061540    -0.00000026    -0.00000002  0.21D-08  0.32D-08  7351.80
    7     7     7     1.09140049    -0.84648281  -240.04061540    -0.00000028    -0.00000002  0.22D-08  0.34D-08  7351.80
    7     8     8     1.09139963    -0.84648279  -240.04061538    -0.00000033    -0.00000003  0.29D-08  0.43D-08  7351.80
    7     9     9     1.08840645    -0.82992093  -239.87035622    -0.00000020    -0.00000002  0.13D-08  0.29D-08  7351.80
    7    10    10     1.08935743    -0.83265014  -239.85598661    -0.00000034    -0.00000003  0.24D-08  0.52D-08  7351.80
    7    11    11     1.08935747    -0.83265012  -239.85598660    -0.00000035    -0.00000003  0.26D-08  0.54D-08  7351.80
    7    12    12     1.08935748    -0.83265012  -239.85598659    -0.00000035    -0.00000003  0.25D-08  0.53D-08  7351.80
    7    13    13     1.08935740    -0.83265007  -239.85598655    -0.00000039    -0.00000004  0.30D-08  0.62D-08  7351.80
    7    14    14     1.08935728    -0.83265004  -239.85598652    -0.00000040    -0.00000004  0.31D-08  0.64D-08  7351.80
    7    15    15     1.08966780    -0.83321072  -239.84900381    -0.00000044    -0.00000004  0.36D-08  0.78D-08  7351.80
    7    16    16     1.08966782    -0.83321068  -239.84900376    -0.00000040    -0.00000004  0.30D-08  0.66D-08  7351.80
    7    17    17     1.08966781    -0.83321068  -239.84900376    -0.00000040    -0.00000004  0.29D-08  0.65D-08  7351.80
    8     1     1     1.09319671    -0.85128855  -240.06845763    -0.00000000    -0.00000002  0.19D-08  0.35D-08  7648.22
    8     2     2     1.09319665    -0.85128855  -240.06845763     0.00000000    -0.00000002  0.21D-08  0.38D-08  7648.22
    8     3     3     1.09319666    -0.85128855  -240.06845763     0.00000000    -0.00000002  0.21D-08  0.38D-08  7648.22
    8     4     4     1.09319647    -0.85128853  -240.06845761     0.00000000    -0.00000003  0.25D-08  0.43D-08  7648.22
    8     5     5     1.09319642    -0.85128847  -240.06845755    -0.00000000    -0.00000003  0.25D-08  0.43D-08  7648.22
    8     6     6     1.09140073    -0.84648281  -240.04061540    -0.00000000    -0.00000002  0.21D-08  0.32D-08  7648.22
    8     7     7     1.09140049    -0.84648281  -240.04061540     0.00000000    -0.00000002  0.22D-08  0.34D-08  7648.22
    8     8     8     1.09139957    -0.84648279  -240.04061538    -0.00000000    -0.00000003  0.29D-08  0.43D-08  7648.22
    8     9     9     1.08840645    -0.82992093  -239.87035622     0.00000000    -0.00000002  0.13D-08  0.29D-08  7648.22
    8    10    10     1.08935743    -0.83265014  -239.85598661     0.00000000    -0.00000003  0.24D-08  0.52D-08  7648.22
    8    11    11     1.08935747    -0.83265012  -239.85598660    -0.00000000    -0.00000003  0.26D-08  0.54D-08  7648.22
    8    12    12     1.08935748    -0.83265012  -239.85598659     0.00000000    -0.00000003  0.25D-08  0.53D-08  7648.22
    8    13    13     1.08935740    -0.83265007  -239.85598655    -0.00000000    -0.00000004  0.30D-08  0.62D-08  7648.22
    8    14    14     1.08935728    -0.83265004  -239.85598652    -0.00000000    -0.00000004  0.31D-08  0.64D-08  7648.22
    8    15    15     1.08966856    -0.83321078  -239.84900387    -0.00000006    -0.00000000  0.23D-09  0.63D-09  7648.22
    8    16    16     1.08966782    -0.83321068  -239.84900376    -0.00000000    -0.00000004  0.30D-08  0.66D-08  7648.22
    8    17    17     1.08966781    -0.83321068  -239.84900376    -0.00000000    -0.00000004  0.29D-08  0.65D-08  7648.22


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.6%   4.7%
 P   0.3%  36.2%  41.1%

 Initialization:   2.8%
 Other:           13.8%

 Total CPU:     7648.2 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//\000           0.4016010   0.0238690  -0.0862111   0.8614243  -0.0108959   0.0000000  -0.0000000  -0.0000000
                            0.0000001   0.0151245   0.0003790   0.0011202   0.0023627  -0.0271013  -0.0000000   0.0000000
                           -0.0000000
 2222222222/\/000           0.8537687   0.0263760  -0.1159069  -0.4103711  -0.0006546   0.0000000   0.0000000  -0.0000000
                            0.0000002   0.0271801  -0.0001091   0.0012186  -0.0016967   0.0150694   0.0000000   0.0000000
                           -0.0000000
 22222222220//00\          -0.0285578  -0.0010563   0.0043583  -0.0022878   0.0001827  -0.0000000   0.0000000  -0.0000000
                            0.5497361   0.7494924   0.0022894   0.0389307  -0.0069423  -0.0120551   0.0000000   0.0000001
                           -0.0000000
 2222222222/20000           0.0039357   0.0053784   0.0023606   0.0067903   0.6750052  -0.0112219   0.0044849   0.6677926
                           -0.0000000   0.0002163   0.0001003   0.0003745   0.0219249   0.0020490  -0.0376182  -0.0000668
                           -0.0004967
 2222222222/02000          -0.0039357  -0.0053784  -0.0023606  -0.0067903  -0.6750051  -0.0112219   0.0044850   0.6677926
                            0.0000000  -0.0002163  -0.0001003  -0.0003745  -0.0219250  -0.0020490  -0.0376183  -0.0000668
                           -0.0004967
 22222222222/0000           0.0968611  -0.3700242   0.5558756   0.0207306   0.0002310  -0.1162522   0.6576763  -0.0063706
                           -0.0000000  -0.0004320   0.0208239   0.0071497  -0.0002435   0.0003244  -0.0002056  -0.0319465
                            0.0198692
 22222222220/2000          -0.0968612   0.3700246  -0.5558762  -0.0207306  -0.0002310  -0.1162520   0.6576753  -0.0063706
                            0.0000000   0.0004320  -0.0208241  -0.0071498   0.0002435  -0.0003244  -0.0002056  -0.0319466
                            0.0198693
 222222222220/000           0.0350457   0.5640460   0.3691759   0.0049031  -0.0060391   0.6576113   0.1163402   0.0102695
                            0.0000000   0.0010591   0.0071681  -0.0207962   0.0003251  -0.0001400  -0.0004570   0.0198702
                            0.0319433
 222222222202/000          -0.0350457  -0.5640466  -0.3691763  -0.0049031   0.0060391   0.6576103   0.1163400   0.0102694
                            0.0000000  -0.0010591  -0.0071682   0.0207962  -0.0003251   0.0001400  -0.0004571   0.0198703
                            0.0319434
 2222222222//0\00           0.0121984   0.0007250  -0.0026186   0.0261654  -0.0003309  -0.0000000  -0.0000000   0.0000000
                            0.5497330  -0.3644845  -0.0091324  -0.0269965  -0.0569378   0.6531105   0.0000001  -0.0000000
                            0.0000002
 2222222222//00\0           0.0001464   0.0002001   0.0000878   0.0002526   0.0251108  -0.0007571   0.0003026   0.0450537
                            0.0000001  -0.0063836  -0.0029615  -0.0110538  -0.6471183  -0.0604765   0.6476126   0.0011499
                            0.0085506
 2222222222/0/\00          -0.0001464  -0.0002001  -0.0000878  -0.0002526  -0.0251107  -0.0007571   0.0003026   0.0450537
                           -0.0000001   0.0063836   0.0029612   0.0110541   0.6471186   0.0604763   0.6476123   0.0011500
                            0.0085507
 2222222222/0/0\0          -0.0163592  -0.0003313   0.0017396   0.0238776  -0.0001483   0.0000000  -0.0000000   0.0000000
                           -0.5497330   0.3850124  -0.0068431   0.0119343  -0.0638804   0.6410554   0.0000001   0.0000000
                            0.0000001
 22222222220//\00          -0.0036034   0.0137654  -0.0206793  -0.0007712  -0.0000086  -0.0078431   0.0443711  -0.0004298
                           -0.0000001  -0.0127512   0.6146189   0.2110243  -0.0071863   0.0095745   0.0035397   0.5499651
                           -0.3420529
 2222222222//000\          -0.0036033   0.0137653  -0.0206792  -0.0007712  -0.0000086   0.0078431  -0.0443712   0.0004298
                           -0.0000001  -0.0127510   0.6146160   0.2110234  -0.0071862   0.0095743  -0.0035396  -0.5499677
                            0.3420547
 22222222220//0\0           0.0013037   0.0209832   0.0137338   0.0001824  -0.0002247  -0.0443668  -0.0078491  -0.0006928
                           -0.0000001  -0.0312584  -0.2115671   0.6137964  -0.0095944   0.0041321  -0.0078682   0.3420697
                            0.5499104
 2222222222/0/00\          -0.0013037  -0.0209831  -0.0137337  -0.0001824   0.0002247  -0.0443668  -0.0078491  -0.0006928
                           -0.0000000   0.0312583   0.2115662  -0.6137946   0.0095943  -0.0041323  -0.0078679   0.3420707
                            0.5499123
 22222222220/\00/          -0.0014510   0.0001373  -0.0003065   0.0174509  -0.0001671   0.0000000   0.0000000  -0.0000000
                           -0.0000000  -0.0030424   0.0023678   0.0022325   0.0179071  -0.1918147  -0.0000000   0.0000000
                           -0.0000000
 2222222222/\0/00           0.0156631   0.0004839  -0.0021264  -0.0075285  -0.0000120   0.0000000   0.0000000   0.0000000
                            0.0000003   0.1681504  -0.0006749   0.0075389  -0.0104970   0.0932278   0.0000000   0.0000000
                            0.0000000
 2222222222/0\0/0          -0.0142123  -0.0006212   0.0024329  -0.0099219   0.0001791   0.0000000  -0.0000000   0.0000000
                           -0.0000003  -0.1651078  -0.0016929  -0.0097714  -0.0074101   0.0985881   0.0000000  -0.0000000
                            0.0000000
 222222222202000/           0.0000722   0.0000987   0.0000433   0.0001246   0.0123836  -0.0001804   0.0000721   0.0107373
                           -0.0000000   0.0013381   0.0006207   0.0023170   0.1356409   0.0126763  -0.1074450  -0.0001908
                           -0.0014186
 222222222200200/          -0.0000722  -0.0000987  -0.0000433  -0.0001246  -0.0123836  -0.0001804   0.0000721   0.0107372
                            0.0000000  -0.0013380  -0.0006207  -0.0023170  -0.1356408  -0.0126763  -0.1074449  -0.0001908
                           -0.0014186
 2222220222/22000          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000001   0.0022319  -0.0008920  -0.1328171
                           -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0096045   0.0000171
                            0.0001268
 22222202222/2000           0.0000000  -0.0000002   0.0000003   0.0000000  -0.0000000   0.0231214  -0.1308054   0.0012670
                            0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000525   0.0081560
                           -0.0050727
 222222022222/000           0.0000000   0.0000002   0.0000002   0.0000000  -0.0000000  -0.1307926  -0.0231389  -0.0020425
                           -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0001167  -0.0050729
                           -0.0081552
 22222222222000/0           0.0017770  -0.0067885   0.0101981   0.0003803   0.0000042  -0.0018691   0.0105740  -0.0001024
                           -0.0000000  -0.0026727   0.1288284   0.0442322  -0.0015063   0.0020068  -0.0005873  -0.0912460
                            0.0567509
 22222222220020/0          -0.0017770   0.0067884  -0.0101980  -0.0003803  -0.0000042  -0.0018691   0.0105742  -0.0001024
                            0.0000000   0.0026727  -0.1288283  -0.0442321   0.0015063  -0.0020069  -0.0005873  -0.0912448
                            0.0567500
 2222222222020/00          -0.0006429  -0.0103478  -0.0067728  -0.0000900   0.0001108   0.0105730   0.0018705   0.0001651
                           -0.0000000  -0.0065520  -0.0443460   0.1286563  -0.0020111   0.0008661  -0.0013054   0.0567530
                            0.0912359
 2222222222200/00           0.0006429   0.0103479   0.0067729   0.0000900  -0.0001108   0.0105728   0.0018705   0.0001651
                            0.0000000   0.0065520   0.0443459  -0.1286560   0.0020110  -0.0008662  -0.0013054   0.0567534
                            0.0912367
 2222222222/0\/00           0.0000511   0.0000698   0.0000306   0.0000881   0.0087563   0.0002854  -0.0001141  -0.0169839
                           -0.0000000   0.0009462   0.0004389   0.0016384   0.0959135   0.0089636   0.1235181   0.0002193
                            0.0016309
 2222222222/\00/0          -0.0000511  -0.0000698  -0.0000306  -0.0000881  -0.0087564   0.0002854  -0.0001141  -0.0169840
                            0.0000000  -0.0009462  -0.0004389  -0.0016383  -0.0959133  -0.0089636   0.1235181   0.0002193
                            0.0016309
 22222222220/\/00           0.0012565  -0.0048001   0.0072111   0.0002689   0.0000030   0.0029566  -0.0167266   0.0001620
                           -0.0000000  -0.0018899   0.0910959   0.0312770  -0.0010651   0.0014191   0.0006751   0.1048950
                           -0.0652398
 2222222222/\000/          -0.0012566   0.0048003  -0.0072113  -0.0002689  -0.0000030   0.0029567  -0.0167270   0.0001620
                            0.0000000   0.0018899  -0.0910950  -0.0312768   0.0010651  -0.0014190   0.0006751   0.1048946
                           -0.0652396
 22222222220/\0/0           0.0004546   0.0073172   0.0047892   0.0000636  -0.0000783  -0.0167252  -0.0029589  -0.0002612
                            0.0000000   0.0046330   0.0313574  -0.0909738   0.0014220  -0.0006124   0.0015007  -0.0652427
                           -0.1048841
 2222222222/0\00/          -0.0004546  -0.0073173  -0.0047893  -0.0000636   0.0000783  -0.0167254  -0.0029589  -0.0002612
                            0.0000000  -0.0046329  -0.0313572   0.0909732  -0.0014220   0.0006125   0.0015006  -0.0652427
                           -0.1048840
 22222202222//00\           0.0165287   0.0006114  -0.0025225   0.0013241  -0.0001057  -0.0000000  -0.0000000  -0.0000000
                           -0.0499558  -0.0697236  -0.0002130  -0.0036216   0.0006458   0.0011214  -0.0000000  -0.0000000
                            0.0000000
 222222222220000/          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0002232  -0.0000892  -0.0132823
                            0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000001   0.0000000   0.0672367   0.0001194
                            0.0008878
 2222220222//20\0          -0.0000847  -0.0001158  -0.0000508  -0.0001462  -0.0145338  -0.0001587   0.0000634   0.0094423
                           -0.0000000   0.0005938   0.0002755   0.0010283   0.0601996   0.0056260  -0.0624599  -0.0001109
                           -0.0008246
 2222220222/2/\00           0.0000847   0.0001158   0.0000508   0.0001462   0.0145338  -0.0001587   0.0000634   0.0094424
                            0.0000000  -0.0005938  -0.0002755  -0.0010283  -0.0601996  -0.0056259  -0.0624598  -0.0001109
                           -0.0008247
 2222220222//2\00          -0.0070602  -0.0004196   0.0015156  -0.0151440   0.0001915   0.0000000   0.0000000   0.0000000
                           -0.0499557   0.0339070   0.0008496   0.0025114   0.0052968  -0.0607571   0.0000000   0.0000000
                           -0.0000000
 2222222222/00/\0           0.0061164   0.0000917  -0.0005616  -0.0118835   0.0000851   0.0000000   0.0000000   0.0000000
                            0.0177471  -0.0049934   0.0007348   0.0004949   0.0056878  -0.0604614  -0.0000000   0.0000000
                           -0.0000000
 2222220222/2/0\0           0.0094685   0.0001918  -0.0010069  -0.0138198   0.0000858  -0.0000000  -0.0000000   0.0000000
                            0.0499557  -0.0358167   0.0006366  -0.0011102   0.0059426  -0.0596357   0.0000000  -0.0000000
                           -0.0000000
 22222202222//\00           0.0020855  -0.0079671   0.0119687   0.0004464   0.0000050  -0.0016438   0.0092994  -0.0000901
                            0.0000000   0.0011862  -0.0571765  -0.0196311   0.0006685  -0.0008907  -0.0003414  -0.0530403
                            0.0329886
 2222220222//200\           0.0020856  -0.0079672   0.0119688   0.0004464   0.0000050   0.0016438  -0.0092996   0.0000901
                            0.0000000   0.0011862  -0.0571762  -0.0196310   0.0006685  -0.0008907   0.0003414   0.0530403
                           -0.0329886
 22222202222//0\0          -0.0007546  -0.0121447  -0.0079488  -0.0001056   0.0001300  -0.0092985  -0.0016450  -0.0001452
                            0.0000000   0.0029079   0.0196816  -0.0571000   0.0008925  -0.0003844   0.0007589  -0.0329902
                           -0.0530350
 22222222220200/0          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0023122  -0.0130809   0.0001267
                           -0.0000000  -0.0000000   0.0000004   0.0000001  -0.0000000   0.0000000   0.0003675   0.0570998
                           -0.0355134
 2222220222/2/00\           0.0007546   0.0121447   0.0079489   0.0001056  -0.0001300  -0.0092988  -0.0016451  -0.0001452
                           -0.0000000  -0.0029079  -0.0196815   0.0570997  -0.0008925   0.0003844   0.0007588  -0.0329902
                           -0.0530350
 2222222222002/00           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0130797  -0.0023140  -0.0002043
                            0.0000000   0.0000000   0.0000000  -0.0000001   0.0000000   0.0000000   0.0008169  -0.0355152
                           -0.0570941
 222222222200/0/\          -0.0132085  -0.0004702   0.0019649   0.0006352   0.0000675  -0.0000000  -0.0000000  -0.0000000
                            0.0177468   0.0550197  -0.0001638   0.0025241  -0.0030058   0.0259028  -0.0000000   0.0000000
                            0.0000000
 22222222220/0/0\           0.0129288   0.0004966  -0.0020240   0.0027291  -0.0000997   0.0000000  -0.0000000  -0.0000000
                           -0.0177468  -0.0541702  -0.0004974  -0.0031475  -0.0019945   0.0276590  -0.0000000  -0.0000000
                            0.0000000
 2222222222/00020          -0.0000587  -0.0000803  -0.0000352  -0.0001013  -0.0100720   0.0002310  -0.0000923  -0.0137434
                            0.0000000   0.0004875   0.0002262   0.0008442   0.0494222   0.0046188  -0.0502118  -0.0000892
                           -0.0006630
 2222222222/00200           0.0000587   0.0000803   0.0000352   0.0001013   0.0100719   0.0002309  -0.0000923  -0.0137434
                           -0.0000000  -0.0004875  -0.0002262  -0.0008442  -0.0494223  -0.0046187  -0.0502118  -0.0000892
                           -0.0006630

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.771258    0.049617    0.005572    0.137135    0.545301   -0.000000    0.000000   -0.000000   -0.000000    0.004250
             0.024669   -0.001538    0.000173    0.015758   -0.000000   -0.000000    0.000000
 2           0.021821    0.798572    0.007615   -0.523878    0.028144   -0.000000    0.000000    0.000000   -0.000000   -0.016235
             0.001063   -0.024748    0.000236    0.000297    0.000000   -0.000000    0.000000
 3          -0.099158    0.522677    0.003342    0.787005   -0.105266   -0.000000    0.000000   -0.000000    0.000000    0.024390
            -0.004181   -0.016198    0.000104   -0.001615   -0.000000   -0.000000    0.000000
 4          -0.555286    0.006942    0.009614    0.029350    0.777269   -0.000000   -0.000000   -0.000000   -0.000000    0.000910
             0.015814   -0.000215    0.000298   -0.025026   -0.000000    0.000000    0.000000
 5           0.001262   -0.008550    0.955667    0.000327   -0.010855    0.000000    0.000000    0.000000    0.000000    0.000010
            -0.000297    0.000265    0.029617    0.000163    0.000000   -0.000000   -0.000000
 6           0.000000    0.000001   -0.000000   -0.000000    0.000000    0.941816   -0.016072   -0.166494   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.004914    0.000474    0.027796
 7           0.000000    0.000000   -0.000000    0.000001   -0.000000    0.166620    0.006423    0.941909    0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.027799   -0.000190    0.004917
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.014708    0.956398   -0.009124   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000269   -0.028226    0.000434
 9           0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.958301   -0.000000
             0.000002   -0.000000   -0.000000    0.000001    0.000000   -0.000000   -0.000000
 10         -0.023661   -0.001469   -0.000300    0.000599   -0.019273    0.000000   -0.000000   -0.000000   -0.000003   -0.018779
             0.838862   -0.046036    0.009401    0.458630   -0.000000   -0.000000   -0.000000
 11          0.000170   -0.009946   -0.000139   -0.028893   -0.000347    0.000000   -0.000000    0.000000    0.000000    0.905174
             0.008063   -0.311584    0.004361   -0.009050    0.000002   -0.000000   -0.000001
 12         -0.000985    0.028855   -0.000520   -0.009920   -0.001291   -0.000000    0.000000    0.000000   -0.000000    0.310784
             0.049105    0.903964    0.016280    0.013313    0.000001    0.000000    0.000001
 13          0.002044   -0.000451   -0.030422    0.000338   -0.001991    0.000000   -0.000000   -0.000000    0.000000   -0.010584
             0.033604   -0.014130    0.953040   -0.082851   -0.000000    0.000000   -0.000000
 14         -0.019206    0.000194   -0.002843   -0.000450    0.023595    0.000000   -0.000000    0.000000    0.000000    0.014101
            -0.457489    0.006086    0.089066    0.836138    0.000000   -0.000000   -0.000000
 15          0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000350    0.028819    0.000158    0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.005232    0.957217   -0.011630
 16          0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.015222    0.000051    0.024473    0.000000   -0.000002
             0.000000   -0.000001    0.000000    0.000000    0.812889    0.001700    0.505604
 17         -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.024471    0.000380   -0.015221    0.000000    0.000001
            -0.000000   -0.000001    0.000000    0.000000   -0.505580    0.012638    0.812808

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956226   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000438
            -0.000069   -0.000021    0.000005   -0.000031    0.000000    0.000000   -0.000000
 2          -0.000000    0.956226   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000039
             0.000109    0.000429   -0.000012    0.000009    0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.956226    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000062
            -0.000425    0.000114   -0.000001   -0.000013    0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.956227    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000028
            -0.000020   -0.000008   -0.000045    0.000441   -0.000000    0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.956227   -0.000000   -0.000000    0.000000   -0.000000   -0.000001
            -0.000001   -0.000011   -0.000442   -0.000046    0.000000   -0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.956971   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000002   -0.000190   -0.000211
 7           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.956971    0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000004    0.000211   -0.000190
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.956971    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000284   -0.000004    0.000001
 9           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958301   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 10         -0.000438   -0.000039    0.000062   -0.000028   -0.000001    0.000000   -0.000000   -0.000000   -0.000000    0.957875
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 11         -0.000069    0.000109   -0.000425   -0.000020   -0.000001    0.000000    0.000000    0.000000    0.000000   -0.000000
             0.957875    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 12         -0.000021    0.000429    0.000114   -0.000008   -0.000011   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.957875    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 13          0.000005   -0.000012   -0.000001   -0.000045   -0.000442    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.957875   -0.000000   -0.000000    0.000000    0.000000
 14         -0.000031    0.000009   -0.000013    0.000441   -0.000046   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.957875    0.000000   -0.000000    0.000000
 15          0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000002    0.000004    0.000284    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.957735    0.000000    0.000000
 16          0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000190    0.000211   -0.000004    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957736    0.000000
 17         -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000211   -0.000190    0.000001    0.000000    0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.957736


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.77125840 (fixed)   0.95627665 (relaxed)   0.95622646 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041495   -0.00091371   -0.72579942
 Singles      0.01760614   -0.05787101   -0.06661199
 Pairs        0.07562923   -0.00000001   -0.05887714
 Total        1.09365033   -0.05878473   -0.85128855
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21697748
 Nuclear energy                         0.00000000
 Kinetic energy                        93.06424137
 One electron energy                 -419.14516969
 Two electron energy                  179.07671206
 Virial quotient                       -2.57959936
 Correlation energy                    -0.85148015
 !MRCI STATE 1.2 Energy              -240.068457631852

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14819903 (Davidson, fixed reference)
 Cluster corrected energies          -240.14810127 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14819903 (Davidson, rotated reference)

 Cluster corrected energies          -240.14689867 (Pople, fixed reference)
 Cluster corrected energies          -240.14679472 (Pople, relaxed reference)
 Cluster corrected energies          -240.14689867 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.79857243 (fixed)   0.95627668 (relaxed)   0.95622648 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041495   -0.00091371   -0.72579906
 Singles      0.01760633   -0.05787130   -0.06661217
 Pairs        0.07562899   -0.00000015   -0.05887733
 Total        1.09365027   -0.05878517   -0.85128855
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21697748
 Nuclear energy                         0.00000000
 Kinetic energy                        93.06424760
 One electron energy                 -419.14517193
 Two electron energy                  179.07671430
 Virial quotient                       -2.57959919
 Correlation energy                    -0.85148015
 !MRCI STATE 2.2 Energy              -240.068457629820

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14819898 (Davidson, fixed reference)
 Cluster corrected energies          -240.14810122 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14819898 (Davidson, rotated reference)

 Cluster corrected energies          -240.14689862 (Pople, fixed reference)
 Cluster corrected energies          -240.14679467 (Pople, relaxed reference)
 Cluster corrected energies          -240.14689862 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.78700480 (fixed)   0.95627668 (relaxed)   0.95622648 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041495   -0.00091371   -0.72579905
 Singles      0.01760636   -0.05787136   -0.06661220
 Pairs        0.07562896   -0.00000010   -0.05887730
 Total        1.09365027   -0.05878517   -0.85128855
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21697748
 Nuclear energy                         0.00000000
 Kinetic energy                        93.06424832
 One electron energy                 -419.14517183
 Two electron energy                  179.07671420
 Virial quotient                       -2.57959917
 Correlation energy                    -0.85148015
 !MRCI STATE 3.2 Energy              -240.068457629370

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14819898 (Davidson, fixed reference)
 Cluster corrected energies          -240.14810122 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14819898 (Davidson, rotated reference)

 Cluster corrected energies          -240.14689862 (Pople, fixed reference)
 Cluster corrected energies          -240.14679467 (Pople, relaxed reference)
 Cluster corrected energies          -240.14689862 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.77726935 (fixed)   0.95627676 (relaxed)   0.95622657 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041494   -0.00091371   -0.72579847
 Singles      0.01760688   -0.05787220   -0.06661270
 Pairs        0.07562826   -0.00000000   -0.05887736
 Total        1.09365008   -0.05878591   -0.85128853
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21697748
 Nuclear energy                         0.00000000
 Kinetic energy                        93.06425006
 One electron energy                 -419.14516006
 Two electron energy                  179.07670245
 Virial quotient                       -2.57959912
 Correlation energy                    -0.85148013
 !MRCI STATE 4.2 Energy              -240.068457607902

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14819879 (Davidson, fixed reference)
 Cluster corrected energies          -240.14810104 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14819879 (Davidson, rotated reference)

 Cluster corrected energies          -240.14689842 (Pople, fixed reference)
 Cluster corrected energies          -240.14679448 (Pople, relaxed reference)
 Cluster corrected energies          -240.14689842 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95566705 (fixed)   0.95627678 (relaxed)   0.95622658 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00041495   -0.00091371   -0.72579846
 Singles      0.01760691   -0.05787220   -0.06661264
 Pairs        0.07562818    0.00000000   -0.05887738
 Total        1.09365004   -0.05878591   -0.85128847
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.21697748
 Nuclear energy                         0.00000000
 Kinetic energy                        93.06425551
 One electron energy                 -419.14517143
 Two electron energy                  179.07671388
 Virial quotient                       -2.57959897
 Correlation energy                    -0.85148008
 !MRCI STATE 5.2 Energy              -240.068457552490

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.14819870 (Davidson, fixed reference)
 Cluster corrected energies          -240.14810094 (Davidson, relaxed reference)
 Cluster corrected energies          -240.14819870 (Davidson, rotated reference)

 Cluster corrected energies          -240.14689833 (Pople, fixed reference)
 Cluster corrected energies          -240.14679437 (Pople, relaxed reference)
 Cluster corrected energies          -240.14689833 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.94181605 (fixed)   0.95708975 (relaxed)   0.95697066 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050328   -0.00077911   -0.70373679
 Singles      0.01210580   -0.04552496   -0.05106944
 Pairs        0.07934093   -0.03293847   -0.09167658
 Total        1.09195001   -0.07924255   -0.84648281
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19397426
 Nuclear energy                         0.00000000
 Kinetic energy                        93.05591577
 One electron energy                 -418.98746702
 Two electron energy                  178.94685161
 Virial quotient                       -2.57953096
 Correlation energy                    -0.84664115
 !MRCI STATE 6.2 Energy              -240.040615403670

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.11846407 (Davidson, fixed reference)
 Cluster corrected energies          -240.11823400 (Davidson, relaxed reference)
 Cluster corrected energies          -240.11846407 (Davidson, rotated reference)

 Cluster corrected energies          -240.11708190 (Pople, fixed reference)
 Cluster corrected energies          -240.11683799 (Pople, relaxed reference)
 Cluster corrected energies          -240.11708190 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94190909 (fixed)   0.95708986 (relaxed)   0.95697076 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050328   -0.00077911   -0.72856493
 Singles      0.01210593   -0.04552526   -0.05106962
 Pairs        0.07934056   -0.00582726   -0.06684826
 Total        1.09194978   -0.05213163   -0.84648281
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19397425
 Nuclear energy                         0.00000000
 Kinetic energy                        93.05591715
 One electron energy                 -418.98746314
 Two electron energy                  178.94684774
 Virial quotient                       -2.57953092
 Correlation energy                    -0.84664115
 !MRCI STATE 7.2 Energy              -240.040615400532

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.11846386 (Davidson, fixed reference)
 Cluster corrected energies          -240.11823380 (Davidson, relaxed reference)
 Cluster corrected energies          -240.11846386 (Davidson, rotated reference)

 Cluster corrected energies          -240.11708169 (Pople, fixed reference)
 Cluster corrected energies          -240.11683777 (Pople, relaxed reference)
 Cluster corrected energies          -240.11708169 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95639811 (fixed)   0.95709026 (relaxed)   0.95697116 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050328   -0.00077911   -0.73343010
 Singles      0.01210643   -0.04552629   -0.05107025
 Pairs        0.07933914   -0.00051436   -0.06198244
 Total        1.09194886   -0.04681976   -0.84648279
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.19397425
 Nuclear energy                         0.00000000
 Kinetic energy                        93.05593727
 One electron energy                 -418.98745585
 Two electron energy                  178.94684046
 Virial quotient                       -2.57953036
 Correlation energy                    -0.84664113
 !MRCI STATE 8.2 Energy              -240.040615380626

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -240.11846306 (Davidson, fixed reference)
 Cluster corrected energies          -240.11823299 (Davidson, relaxed reference)
 Cluster corrected energies          -240.11846306 (Davidson, rotated reference)

 Cluster corrected energies          -240.11708084 (Pople, fixed reference)
 Cluster corrected energies          -240.11683692 (Pople, relaxed reference)
 Cluster corrected energies          -240.11708084 (Pople, rotated reference)



 RESULTS FOR STATE 9.2
 =====================

 Coefficient of reference function:   C(0) = 0.95830145 (fixed)   0.95835991 (relaxed)   0.95830145 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00047122   -0.00105419   -0.70638829
 Singles      0.01903128   -0.06111219   -0.07061995
 Pairs        0.06941683    0.00000005   -0.05291269
 Total        1.08891934   -0.06216632   -0.82992093
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.04043528
 Nuclear energy                         0.00000000
 Kinetic energy                        92.79297695
 One electron energy                 -414.60194340
 Two electron energy                  174.73158718
 Virial quotient                       -2.58500550
 Correlation energy                    -0.82992093
 !MRCI STATE 9.2 Energy              -239.870356218470

 Properties without orbital relaxation:

 !MRCI STATE 9.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.94415224 (Davidson, fixed reference)
 Cluster corrected energies          -239.94404199 (Davidson, relaxed reference)
 Cluster corrected energies          -239.94415224 (Davidson, rotated reference)

 Cluster corrected energies          -239.94265230 (Pople, fixed reference)
 Cluster corrected energies          -239.94253601 (Pople, relaxed reference)
 Cluster corrected energies          -239.94265230 (Pople, rotated reference)



 RESULTS FOR STATE 10.2
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.83886191 (fixed)   0.95793205 (relaxed)   0.95787513 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048783   -0.00110641   -0.70789741
 Singles      0.01923106   -0.06152692   -0.07113569
 Pairs        0.07016997    0.00000008   -0.05361704
 Total        1.08988885   -0.06263325   -0.83265014
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02352808
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81493614
 One electron energy                 -414.71603748
 Two electron energy                  174.86005087
 Virial quotient                       -2.58423910
 Correlation energy                    -0.83245854
 !MRCI STATE 10.2 Energy             -239.855986614776

 Properties without orbital relaxation:

 !MRCI STATE 10.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93081535 (Davidson, fixed reference)
 Cluster corrected energies          -239.93070753 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93081535 (Davidson, rotated reference)

 Cluster corrected energies          -239.92935587 (Pople, fixed reference)
 Cluster corrected energies          -239.92924195 (Pople, relaxed reference)
 Cluster corrected energies          -239.92935587 (Pople, rotated reference)



 RESULTS FOR STATE 11.2
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.90517442 (fixed)   0.95793203 (relaxed)   0.95787511 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048783   -0.00110641   -0.70789756
 Singles      0.01923114   -0.06152724   -0.07113582
 Pairs        0.07016993    0.00000062   -0.05361674
 Total        1.08988889   -0.06263303   -0.83265012
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02352808
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81493782
 One electron energy                 -414.71603693
 Two electron energy                  174.86005033
 Virial quotient                       -2.58423905
 Correlation energy                    -0.83245852
 !MRCI STATE 11.2 Energy             -239.855986597393

 Properties without orbital relaxation:

 !MRCI STATE 11.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93081537 (Davidson, fixed reference)
 Cluster corrected energies          -239.93070755 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93081537 (Davidson, rotated reference)

 Cluster corrected energies          -239.92935589 (Pople, fixed reference)
 Cluster corrected energies          -239.92924197 (Pople, relaxed reference)
 Cluster corrected energies          -239.92935589 (Pople, rotated reference)



 RESULTS FOR STATE 12.2
 ======================

 Coefficient of reference function:   C(0) = 0.90396388 (fixed)   0.95793203 (relaxed)   0.95787510 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048783   -0.00110641   -0.70789573
 Singles      0.01923106   -0.06152709   -0.07113573
 Pairs        0.07017001   -0.00000152   -0.05361866
 Total        1.08988890   -0.06263502   -0.83265012
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02352808
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81493534
 One electron energy                 -414.71603583
 Two electron energy                  174.86004924
 Virial quotient                       -2.58423912
 Correlation energy                    -0.83245852
 !MRCI STATE 12.2 Energy             -239.855986592953

 Properties without orbital relaxation:

 !MRCI STATE 12.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93081537 (Davidson, fixed reference)
 Cluster corrected energies          -239.93070755 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93081537 (Davidson, rotated reference)

 Cluster corrected energies          -239.92935589 (Pople, fixed reference)
 Cluster corrected energies          -239.92924197 (Pople, relaxed reference)
 Cluster corrected energies          -239.92935589 (Pople, rotated reference)



 RESULTS FOR STATE 13.2
 ======================

 Coefficient of reference function:   C(0) = 0.95304030 (fixed)   0.95793206 (relaxed)   0.95787514 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048783   -0.00110640   -0.70789625
 Singles      0.01923160   -0.06152811   -0.07113626
 Pairs        0.07016938    0.00000006   -0.05361757
 Total        1.08988882   -0.06263446   -0.83265007
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02352808
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81496278
 One electron energy                 -414.71605006
 Two electron energy                  174.86006351
 Virial quotient                       -2.58423835
 Correlation energy                    -0.83245847
 !MRCI STATE 13.2 Energy             -239.855986549178

 Properties without orbital relaxation:

 !MRCI STATE 13.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93081526 (Davidson, fixed reference)
 Cluster corrected energies          -239.93070743 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93081526 (Davidson, rotated reference)

 Cluster corrected energies          -239.92935578 (Pople, fixed reference)
 Cluster corrected energies          -239.92924184 (Pople, relaxed reference)
 Cluster corrected energies          -239.92935578 (Pople, rotated reference)



 RESULTS FOR STATE 14.2
 ======================

 Coefficient of reference function:   C(0) = 0.83613769 (fixed)   0.95793212 (relaxed)   0.95787519 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048783   -0.00110640   -0.70789636
 Singles      0.01923164   -0.06152812   -0.07113625
 Pairs        0.07016923    0.00000014   -0.05361743
 Total        1.08988870   -0.06263439   -0.83265004
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.02352808
 Nuclear energy                         0.00000000
 Kinetic energy                        92.81496705
 One electron energy                 -414.71605165
 Two electron energy                  174.86006513
 Virial quotient                       -2.58423823
 Correlation energy                    -0.83245844
 !MRCI STATE 14.2 Energy             -239.855986516021

 Properties without orbital relaxation:

 !MRCI STATE 14.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.93081513 (Davidson, fixed reference)
 Cluster corrected energies          -239.93070729 (Davidson, relaxed reference)
 Cluster corrected energies          -239.93081513 (Davidson, rotated reference)

 Cluster corrected energies          -239.92935564 (Pople, fixed reference)
 Cluster corrected energies          -239.92924171 (Pople, relaxed reference)
 Cluster corrected energies          -239.92935564 (Pople, rotated reference)



 RESULTS FOR STATE 15.2
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.95721659 (fixed)   0.95779719 (relaxed)   0.95773525 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049434   -0.00109276   -0.71760322
 Singles      0.01899422   -0.06065597   -0.07015608
 Pairs        0.07071867    0.00936952   -0.04545148
 Total        1.09020723   -0.05237921   -0.83321078
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.01595142
 Nuclear energy                         0.00000000
 Kinetic energy                        92.82333593
 One electron energy                 -414.76054444
 Two electron energy                  174.91154057
 Virial quotient                       -2.58393002
 Correlation energy                    -0.83305245
 !MRCI STATE 15.2 Energy             -239.849003868750

 Properties without orbital relaxation:

 !MRCI STATE 15.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.92415122 (Davidson, fixed reference)
 Cluster corrected energies          -239.92403375 (Davidson, relaxed reference)
 Cluster corrected energies          -239.92415122 (Davidson, rotated reference)

 Cluster corrected energies          -239.92270581 (Pople, fixed reference)
 Cluster corrected energies          -239.92258163 (Pople, relaxed reference)
 Cluster corrected energies          -239.92270581 (Pople, rotated reference)



 RESULTS FOR STATE 16.2
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.81288910 (fixed)   0.95779753 (relaxed)   0.95773554 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049442   -0.00109274   -0.33536303
 Singles      0.01900180   -0.06066945   -0.07016248
 Pairs        0.07071036   -0.40733821   -0.42768517
 Total        1.09020657   -0.46910040   -0.83321068
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.01595142
 Nuclear energy                         0.00000000
 Kinetic energy                        92.82358327
 One electron energy                 -414.76072698
 Two electron energy                  174.91172322
 Virial quotient                       -2.58392313
 Correlation energy                    -0.83305234
 !MRCI STATE 16.2 Energy             -239.849003762007

 Properties without orbital relaxation:

 !MRCI STATE 16.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.92415056 (Davidson, fixed reference)
 Cluster corrected energies          -239.92403300 (Davidson, relaxed reference)
 Cluster corrected energies          -239.92415056 (Davidson, rotated reference)

 Cluster corrected energies          -239.92270512 (Pople, fixed reference)
 Cluster corrected energies          -239.92258084 (Pople, relaxed reference)
 Cluster corrected energies          -239.92270512 (Pople, rotated reference)



 RESULTS FOR STATE 17.2
 ======================

 Coefficient of reference function:   C(0) = 0.81280769 (fixed)   0.95779753 (relaxed)   0.95773554 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049442   -0.00109274   -0.10834384
 Singles      0.01900175   -0.06066936   -0.07016242
 Pairs        0.07071040   -0.65483610   -0.65470441
 Total        1.09020657   -0.71659820   -0.83321068
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -239.01595142
 Nuclear energy                         0.00000000
 Kinetic energy                        92.82358141
 One electron energy                 -414.76072589
 Two electron energy                  174.91172213
 Virial quotient                       -2.58392318
 Correlation energy                    -0.83305234
 !MRCI STATE 17.2 Energy             -239.849003760259

 Properties without orbital relaxation:

 !MRCI STATE 17.2 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -239.92415055 (Davidson, fixed reference)
 Cluster corrected energies          -239.92403299 (Davidson, relaxed reference)
 Cluster corrected energies          -239.92415055 (Davidson, rotated reference)

 Cluster corrected energies          -239.92270511 (Pople, fixed reference)
 Cluster corrected energies          -239.92258083 (Pople, relaxed reference)
 Cluster corrected energies          -239.92270511 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     4120.38       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *     11750.30  11678.73     62.72      5.39      3.09
 REAL TIME  *     12212.95 SEC
 DISK USED  *         4.08 GB (local),      130.58 GB (total)
 SF USED    *        40.25 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =      -240.14819903  AU                              
 SETTING HLSDIAG(3)     =      -240.14819898  AU                              
 SETTING HLSDIAG(4)     =      -240.14819898  AU                              
 SETTING HLSDIAG(5)     =      -240.14819879  AU                              
 SETTING HLSDIAG(6)     =      -240.14819870  AU                              
 SETTING HLSDIAG(7)     =      -240.11846407  AU                              
 SETTING HLSDIAG(8)     =      -240.11846386  AU                              
 SETTING HLSDIAG(9)     =      -240.11846306  AU                              
 SETTING HLSDIAG(10)    =      -239.94415224  AU                              
 SETTING HLSDIAG(11)    =      -239.93081535  AU                              
 SETTING HLSDIAG(12)    =      -239.93081537  AU                              
 SETTING HLSDIAG(13)    =      -239.93081537  AU                              
 SETTING HLSDIAG(14)    =      -239.93081526  AU                              
 SETTING HLSDIAG(15)    =      -239.93081513  AU                              
 SETTING HLSDIAG(16)    =      -239.92415122  AU                              
 SETTING HLSDIAG(17)    =      -239.92415056  AU                              
 SETTING HLSDIAG(18)    =      -239.92415055  AU                              


         HLSDIAG
    -240.1927168
    -240.1481990
    -240.1481990
    -240.1481990
    -240.1481988
    -240.1481987
    -240.1184641
    -240.1184639
    -240.1184631
    -239.9441522
    -239.9308154
    -239.9308154
    -239.9308154
    -239.9308153
    -239.9308151
    -239.9241512
    -239.9241506
    -239.9241506
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:   -240.118339
 Replaced energies:   -240.192717

 Wavefunction restored from record  5102.2  Symmetry=2  S= 0.5  NSTATE=  17

 Original energies:   -240.068458   -240.068458   -240.068458   -240.068458   -240.068458   -240.040615   -240.040615   -240.040615
                      -239.870356   -239.855987   -239.855987   -239.855987   -239.855987   -239.855987   -239.849004   -239.849004
                      -239.849004
 Replaced energies:   -240.148199   -240.148199   -240.148199   -240.148199   -240.148199   -240.118464   -240.118464   -240.118463
                      -239.944152   -239.930815   -239.930815   -239.930815   -239.930815   -239.930815   -239.924151   -239.924151
                      -239.924151



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -240.19271682

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      35.03
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     362.90

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    2370.41

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      20.23
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -209.52

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00    9770.53       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.04      -7.63      -5.08      -0.19       0.01    -709.27

    6   2.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00    9770.54       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       7.63      -0.45      -1.45      -3.68       2.77     -27.15

    7   3.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00    9770.54       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       5.08       1.45       0.26      -2.47      -4.19     131.86

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9770.58       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.19       3.68       2.47      -0.60      -0.24   -1515.96

    9   5.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    9770.60       0.00
                            0.00       0.00      -0.00      -0.00      -0.01      -2.77       4.19       0.24      -0.61     276.83

   10   6.2  0.5  0.5      35.03       0.00      20.23       0.00       0.00       0.00       0.00       0.00       0.00   16296.59
                         -362.90   -2370.41     209.52      -0.00     709.27      27.15    -131.86    1515.96    -276.83      -0.67

   11   7.2  0.5  0.5     -14.00       0.00      -8.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         2053.04    -419.36   -1185.32      -0.00     132.20      20.42     -32.61     282.75    1453.81      -4.14

   12   8.2  0.5  0.5   -2084.62       0.00   -1203.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.89     -37.02      11.48      -0.00    -197.90     811.16   -1220.13     -24.16     -15.63       0.37

   13   9.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.46      -0.26      -0.14       0.24      -4.29    -148.63

   14  10.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.66     218.38     143.61       7.95      -4.18       0.23

   15  11.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     -85.35      -3.36      13.01      43.09     140.46       2.24

   16  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     249.76      23.18     -35.49    -120.09      47.84       2.15

   17  13.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     -17.17      68.24    -132.67      -1.39      -2.68      -0.24

   18  14.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       7.39     128.96      67.61       2.09      -3.81      11.92

   19  15.2  0.5  0.5     660.46       0.00     381.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.61       9.27       2.08      -0.00      -0.99     -12.32      19.16      -1.86      -0.20     -22.04

   20  16.2  0.5  0.5       1.17       0.00       0.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -560.89    -402.84     323.83      -0.00       5.40      -2.37      -1.67      10.98     -16.26      -5.76

   21  17.2  0.5  0.5       8.72       0.00       5.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          348.85    -647.60    -201.41      -0.00       9.39       0.38       0.43      17.88       9.94       2.62

   22   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.07       2.80       1.94       0.07      -0.88    -197.08
                           -0.00       0.00      -0.00      -0.00      -4.14       4.76      -7.29       1.60      -0.37     161.39

   23   2.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.51       0.29       6.21       1.50      -0.33     588.10
                           -0.00      -0.00      -0.00       0.00      -5.14      -1.68       0.40      -3.06      -4.23      10.70

   24   3.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.89      -6.85      -0.57       1.14       0.04   -1352.46
                           -0.00       0.00      -0.00      -0.00       8.11      -1.10      -1.39       4.33      -2.92     -10.25

   25   4.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.08      -1.12      -0.40       0.02      11.19     -43.49
                           -0.00       0.00       0.00      -0.00      -0.22       3.51      -5.24       0.03      -0.16    -260.32

   26   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.42       0.98      -1.37     -10.52      -0.06       1.21
                           -0.00       0.00       0.00      -0.00       0.30       4.60       3.19      -0.44      -1.74   -1462.70

   27   6.2  0.5 -0.5       0.00      20.23       0.00      35.03     196.92    -583.54    1343.59      43.03      -1.69       0.76
                           -0.00    -209.52   -2370.41     362.90    -160.49      -8.26      11.05     259.29    1455.10       6.66

   28   7.2  0.5 -0.5       0.00      -8.08       0.00     -14.00     -26.80   -1357.63    -585.97      -1.54       9.14      -4.01
                           -0.00    1185.32    -419.36   -2053.04     951.38      26.84     -88.92   -1382.38     266.10       0.80

   29   8.2  0.5 -0.5       0.00   -1203.56       0.00   -2084.62    1686.16      57.20    -223.39     135.28     -10.85       0.17
                           -0.00     -11.48     -37.02      19.89      67.72    1235.82     810.00      24.81       4.95      -3.39

   30   9.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.37       2.42       1.98       0.19      -0.63     -15.25
                           -0.00      -0.00       0.00       0.00     -10.19      -0.57       1.62       1.14       1.02      26.69

   31  10.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -2.02      -6.00     -12.27       2.42       4.15      -4.98
                           -0.00       0.00       0.00      -0.00      49.44    -142.31     209.73      11.56       3.81       0.34

   32  11.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.89     145.98      37.96      -1.23       8.25      -4.65
                           -0.00      -0.00       0.00       0.00    -230.10       5.37      14.43    -156.77      51.44      -1.86

   33  12.2  0.5 -0.5       0.00       0.00       0.00       0.00      26.59     -36.73     141.66      13.84       0.75      -0.61
                           -0.00      -0.00      -0.00       0.00     -77.39      -6.17      17.30     -54.86    -139.95       3.69

   34  13.2  0.5 -0.5       0.00       0.00       0.00       0.00     -26.50      14.69     -24.98     296.49     -31.01       0.57
                           -0.00       0.00       0.00      -0.00      -4.37    -130.96     -71.88       1.94      20.47     -12.57

   35  14.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -1.21      -2.06      -3.42      30.54     298.03       3.24
                           -0.00      -0.00       0.00       0.00     -16.35      73.08    -135.27      -6.01      -0.46       0.15

   36  15.2  0.5 -0.5       0.00     381.32       0.00     660.46     -21.09      -9.11      15.61      -3.02       0.22      -1.42
                           -0.00      -2.08       9.27       3.61      -1.11     -16.29     -10.54       0.33      -5.96    -128.66

   37  16.2  0.5 -0.5       0.00       0.68       0.00       1.17       2.82       7.76      17.48       1.48       3.74    -100.40
                           -0.00    -323.83    -402.84     560.89     -12.13       2.78      -9.70      17.11      10.20      -3.30

   38  17.2  0.5 -0.5       0.00       5.03       0.00       8.72       2.73     -18.41       8.00       2.31      -1.08      88.98
                           -0.00     201.41    -647.60    -348.85       7.29      -8.20       1.40     -10.46      16.48      -7.62


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  1.5  1.5     -14.00   -2084.62      -0.00      -0.00      -0.00       0.00       0.00      -0.00     660.46       1.17
                        -2053.04      19.89       0.00      -0.00       0.00       0.00      -0.00       0.00       3.61     560.89

    2   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          419.36      37.02      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -9.27     402.84

    3   1.2  1.5 -0.5      -8.08   -1203.56      -0.00      -0.00      -0.00       0.00       0.00      -0.00     381.32       0.68
                         1185.32     -11.48      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -2.08    -323.83

    4   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -132.20     197.90      -0.46      -0.66      85.35    -249.76      17.17      -7.39       0.99      -5.40

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -20.42    -811.16       0.26    -218.38       3.36     -23.18     -68.24    -128.96      12.32       2.37

    7   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           32.61    1220.13       0.14    -143.61     -13.01      35.49     132.67     -67.61     -19.16       1.67

    8   4.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -282.75      24.16      -0.24      -7.95     -43.09     120.09       1.39      -2.09       1.86     -10.98

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1453.81      15.63       4.29       4.18    -140.46     -47.84       2.68       3.81       0.20      16.26

   10   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.14      -0.37     148.63      -0.23      -2.24      -2.15       0.24     -11.92      22.04       5.76

   11   7.2  0.5  0.5   16296.64       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.67      -2.41      26.66      -0.45      -2.23       6.13       8.95      -1.14    -129.29       2.04

   12   8.2  0.5  0.5       0.00   16296.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.41       0.49      -2.58       1.36      -8.09      -2.83       1.43      -5.19       2.50     113.42

   13   9.2  0.5  0.5       0.00       0.00   54553.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -26.66       2.58      -0.19       0.17       0.13       0.12      -0.35       0.25      15.18    -655.40

   14  10.2  0.5  0.5       0.00       0.00       0.00   57480.73       0.00       0.00       0.00       0.00       0.00       0.00
                            0.45      -1.36      -0.17       1.29    -343.32    1017.45      -9.32      37.23       6.71     -64.85

   15  11.2  0.5  0.5       0.00       0.00       0.00       0.00   57480.72       0.00       0.00       0.00       0.00       0.00
                            2.23       8.09      -0.13     343.32       0.56       3.19    -612.34     143.23    -215.75      -1.15

   16  12.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   57480.72       0.00       0.00       0.00       0.00
                           -6.13       2.83      -0.12   -1017.45      -3.19      -1.75    -138.67    -593.93     -73.94      -2.09

   17  13.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   57480.75       0.00       0.00       0.00
                           -8.95      -1.43       0.35       9.32     612.34     138.67       0.41      19.28       4.16     180.69

   18  14.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   57480.78       0.00       0.00
                            1.14       5.19      -0.25     -37.23    -143.23     593.93     -19.28       0.38      -5.90     136.95

   19  15.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   58943.33       0.00
                          129.29      -2.50     -15.18      -6.71     215.75      73.94      -4.16       5.90      -0.28     336.06

   20  16.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   58943.48
                           -2.04    -113.42     655.40      64.85       1.15       2.09    -180.69    -136.95    -336.06       0.57

   21  17.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.54      70.29    1053.91     108.24       6.25      10.95     135.56    -180.27     209.29       5.95

   22   1.2  0.5 -0.5      26.68   -1693.90      -0.08       1.40       0.26     -24.05      26.33       0.36      16.83      -3.02
                         -953.88     -67.92       0.61     -42.12     229.81      78.03       3.27      25.46       0.69       9.92

   23   2.2  0.5 -0.5    1363.41     -61.36      -0.19      -2.77    -146.97      40.67      -1.94      -4.54       0.28      -8.69
                          -29.09   -1240.84      -0.10     139.75      11.55      16.67     131.36     -71.24      11.34      -0.29

   24   3.2  0.5 -0.5     587.40     229.31      -0.09       7.21     -35.48    -149.18       8.25      -3.08      -1.55     -15.98
                           93.24    -813.40       0.01    -206.97     -41.96     -22.95      73.05     132.05       7.61      -2.11

   25   4.2  0.5 -0.5       2.40    -136.30       0.01      -2.75      -0.96      -9.37    -295.94     -30.70       2.08      -0.44
                         1387.39     -24.99       0.83     -10.27     159.39      55.89      -0.75       7.53       0.29     -15.25

   26   5.2  0.5 -0.5     -11.13      10.94      -0.00      -4.54       4.36       3.61      30.33    -294.31      -0.11      -0.18
                         -267.59      -9.05      -0.02      -7.00     -49.56     134.32      -4.17       0.92      -0.25      -8.92

   27   6.2  0.5 -0.5       2.79      -0.53       1.59       0.22       8.05       1.75       0.04       0.73       1.25      97.68
                            0.92       3.17     -26.43      -0.86       0.67      -0.87       8.78      -0.85     131.13      -0.26

   28   7.2  0.5 -0.5       0.09       0.51      -1.18      -0.09      -0.52       5.87      -2.30      -0.24      -1.85      87.77
                            1.79       0.46     149.75       5.41      -0.34      -0.23       0.57       9.48      23.25       0.46

   29   8.2  0.5 -0.5       0.24      -0.06    -152.36      10.86       0.08       0.47      -0.05      -0.20       0.12       0.74
                            0.11       1.87      -1.45       0.52       3.65     -10.73      -1.95      -0.55      -0.37      69.04

   30   9.2  0.5 -0.5      -0.92     145.66       0.02       0.04       0.91      -1.91       2.29       0.21   -1257.00      -4.41
                         -148.83       0.17       0.19      -3.23       0.11       0.00       0.77      -1.43       7.54    1056.40

   31  10.2  0.5 -0.5      -0.68      -7.47       0.29       0.04      32.33      -1.98     -21.63      10.65     262.04      -5.62
                           -5.91       0.02      -1.88       0.99   -1013.04    -356.14     -19.05      -6.24      11.67     112.70

   32  11.2  0.5 -0.5       2.45       2.86       0.59     -31.86      -1.62     630.43      10.40      15.08       0.75    -175.67
                            4.91      -2.30      -0.03     994.00       0.55      48.24    -157.23    -613.95      74.87      -1.92

   33  12.2  0.5 -0.5      -8.35       0.51      -2.04       0.60    -626.22       1.45      18.14      14.05      14.82     141.43
                            2.62       6.50      -0.11     349.24     -50.99       1.86     602.79    -150.37    -217.25      -0.73

   34  13.2  0.5 -0.5      -6.61       0.22      -0.02      20.58      -0.94     -15.30       1.43    1229.14      -2.81       1.44
                           -1.12      -5.48      -0.04      19.20     158.47    -608.85       7.15       1.59       6.02    -135.75

   35  14.2  0.5 -0.5      -0.38       1.92       0.05     -10.84     -14.22     -12.91   -1245.50      -1.39      -1.13       1.65
                           -9.58      -1.30       0.34       8.85     625.59     153.89      -0.69       1.36       0.49     176.80

   36  15.2  0.5 -0.5       4.75      -0.50    1240.92    -258.26      -3.64     -15.68       2.48       3.89       0.33       4.52
                          -22.20      -2.00      -6.73     -11.63     -73.90     214.08      -9.56      -0.61       0.79     206.47

   37  16.2  0.5 -0.5     -88.36      -0.09       2.17       6.14     178.53    -147.39       2.86       0.57      -6.45       0.49
                           -2.98     -70.15   -1053.87    -111.84       2.81      -0.02     138.55    -176.44    -209.77       0.27

   38  17.2  0.5 -0.5     -97.98       2.64      16.04     -13.91     143.60     178.82      -4.81       3.26       1.09    -392.42
                           -1.54    -113.16     655.40      72.03      -2.33       9.62     181.01     134.81    -336.92       1.11


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  1.5  1.5       8.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -348.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00      -0.00      -0.00      -0.00       0.00      -0.00      20.23      -8.08   -1203.56      -0.00
                          647.60      -0.00       0.00      -0.00      -0.00      -0.00     209.52   -1185.32      11.48       0.00

    3   1.2  1.5 -0.5       5.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          201.41       0.00       0.00       0.00      -0.00      -0.00    2370.41     419.36      37.02      -0.00

    4   1.2  1.5 -1.5       0.00      -0.00      -0.00      -0.00       0.00      -0.00      35.03     -14.00   -2084.62      -0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00    -362.90    2053.04     -19.89      -0.00

    5   1.2  0.5  0.5       0.00      -0.07      -0.51      -0.89      -0.08       0.42     196.92     -26.80    1686.16       0.37
                           -9.39       4.14       5.14      -8.11       0.22      -0.30     160.49    -951.38     -67.72      10.19

    6   2.2  0.5  0.5       0.00       2.80       0.29      -6.85      -1.12       0.98    -583.54   -1357.63      57.20       2.42
                           -0.38      -4.76       1.68       1.10      -3.51      -4.60       8.26     -26.84   -1235.82       0.57

    7   3.2  0.5  0.5       0.00       1.94       6.21      -0.57      -0.40      -1.37    1343.59    -585.97    -223.39       1.98
                           -0.43       7.29      -0.40       1.39       5.24      -3.19     -11.05      88.92    -810.00      -1.62

    8   4.2  0.5  0.5       0.00       0.07       1.50       1.14       0.02     -10.52      43.03      -1.54     135.28       0.19
                          -17.88      -1.60       3.06      -4.33      -0.03       0.44    -259.29    1382.38     -24.81      -1.14

    9   5.2  0.5  0.5       0.00      -0.88      -0.33       0.04      11.19      -0.06      -1.69       9.14     -10.85      -0.63
                           -9.94       0.37       4.23       2.92       0.16       1.74   -1455.10    -266.10      -4.95      -1.02

   10   6.2  0.5  0.5       0.00    -197.08     588.10   -1352.46     -43.49       1.21       0.76      -4.01       0.17     -15.25
                           -2.62    -161.39     -10.70      10.25     260.32    1462.70      -6.66      -0.80       3.39     -26.69

   11   7.2  0.5  0.5       0.00      26.68    1363.41     587.40       2.40     -11.13       2.79       0.09       0.24      -0.92
                           -2.54     953.88      29.09     -93.24   -1387.39     267.59      -0.92      -1.79      -0.11     148.83

   12   8.2  0.5  0.5       0.00   -1693.90     -61.36     229.31    -136.30      10.94      -0.53       0.51      -0.06     145.66
                          -70.29      67.92    1240.84     813.40      24.99       9.05      -3.17      -0.46      -1.87      -0.17

   13   9.2  0.5  0.5       0.00      -0.08      -0.19      -0.09       0.01      -0.00       1.59      -1.18    -152.36       0.02
                        -1053.91      -0.61       0.10      -0.01      -0.83       0.02      26.43    -149.75       1.45      -0.19

   14  10.2  0.5  0.5       0.00       1.40      -2.77       7.21      -2.75      -4.54       0.22      -0.09      10.86       0.04
                         -108.24      42.12    -139.75     206.97      10.27       7.00       0.86      -5.41      -0.52       3.23

   15  11.2  0.5  0.5       0.00       0.26    -146.97     -35.48      -0.96       4.36       8.05      -0.52       0.08       0.91
                           -6.25    -229.81     -11.55      41.96    -159.39      49.56      -0.67       0.34      -3.65      -0.11

   16  12.2  0.5  0.5       0.00     -24.05      40.67    -149.18      -9.37       3.61       1.75       5.87       0.47      -1.91
                          -10.95     -78.03     -16.67      22.95     -55.89    -134.32       0.87       0.23      10.73      -0.00

   17  13.2  0.5  0.5       0.00      26.33      -1.94       8.25    -295.94      30.33       0.04      -2.30      -0.05       2.29
                         -135.56      -3.27    -131.36     -73.05       0.75       4.17      -8.78      -0.57       1.95      -0.77

   18  14.2  0.5  0.5       0.00       0.36      -4.54      -3.08     -30.70    -294.31       0.73      -0.24      -0.20       0.21
                          180.27     -25.46      71.24    -132.05      -7.53      -0.92       0.85      -9.48       0.55       1.43

   19  15.2  0.5  0.5       0.00      16.83       0.28      -1.55       2.08      -0.11       1.25      -1.85       0.12   -1257.00
                         -209.29      -0.69     -11.34      -7.61      -0.29       0.25    -131.13     -23.25       0.37      -7.54

   20  16.2  0.5  0.5       0.00      -3.02      -8.69     -15.98      -0.44      -0.18      97.68      87.77       0.74      -4.41
                           -5.95      -9.92       0.29       2.11      15.25       8.92       0.26      -0.46     -69.04   -1056.40

   21  17.2  0.5  0.5   58943.48      -3.08      16.17      -6.46      -0.03       0.10     -87.47      98.22      -1.86     -19.93
                           -0.39       6.09       1.62      -0.12      -9.24      14.64      -0.87      -1.35    -111.73     656.70

   22   1.2  0.5 -0.5      -3.08    9770.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.09      -0.04       7.63       5.08       0.19      -0.01     709.27     132.20    -197.90       0.46

   23   2.2  0.5 -0.5      16.17       0.00    9770.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.62      -7.63       0.45       1.45       3.68      -2.77      27.15      20.42     811.16      -0.26

   24   3.2  0.5 -0.5      -6.46       0.00       0.00    9770.54       0.00       0.00       0.00       0.00       0.00       0.00
                            0.12      -5.08      -1.45      -0.26       2.47       4.19    -131.86     -32.61   -1220.13      -0.14

   25   4.2  0.5 -0.5      -0.03       0.00       0.00       0.00    9770.58       0.00       0.00       0.00       0.00       0.00
                            9.24      -0.19      -3.68      -2.47       0.60       0.24    1515.96     282.75     -24.16       0.24

   26   5.2  0.5 -0.5       0.10       0.00       0.00       0.00       0.00    9770.60       0.00       0.00       0.00       0.00
                          -14.64       0.01       2.77      -4.19      -0.24       0.61    -276.83    1453.81     -15.63      -4.29

   27   6.2  0.5 -0.5     -87.47       0.00       0.00       0.00       0.00       0.00   16296.59       0.00       0.00       0.00
                            0.87    -709.27     -27.15     131.86   -1515.96     276.83       0.67      -4.14       0.37    -148.63

   28   7.2  0.5 -0.5      98.22       0.00       0.00       0.00       0.00       0.00       0.00   16296.64       0.00       0.00
                            1.35    -132.20     -20.42      32.61    -282.75   -1453.81       4.14      -0.67       2.41     -26.66

   29   8.2  0.5 -0.5      -1.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00   16296.82       0.00
                          111.73     197.90    -811.16    1220.13      24.16      15.63      -0.37      -2.41      -0.49       2.58

   30   9.2  0.5 -0.5     -19.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   54553.62
                         -656.70      -0.46       0.26       0.14      -0.24       4.29     148.63      26.66      -2.58       0.19

   31  10.2  0.5 -0.5      13.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -72.46      -0.66    -218.38    -143.61      -7.95       4.18      -0.23      -0.45       1.36       0.17

   32  11.2  0.5 -0.5    -143.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.52      85.35       3.36     -13.01     -43.09    -140.46      -2.24      -2.23      -8.09       0.13

   33  12.2  0.5 -0.5    -174.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.24    -249.76     -23.18      35.49     120.09     -47.84      -2.15       6.13      -2.83       0.12

   34  13.2  0.5 -0.5       1.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -176.07      17.17     -68.24     132.67       1.39       2.68       0.24       8.95       1.43      -0.35

   35  14.2  0.5 -0.5      -0.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -134.60      -7.39    -128.96     -67.61      -2.09       3.81     -11.92      -1.14      -5.19       0.25

   36  15.2  0.5 -0.5      -0.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          332.74       0.99      12.32     -19.16       1.86       0.20      22.04    -129.29       2.50      15.18

   37  16.2  0.5 -0.5     393.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.32      -5.40       2.37       1.67     -10.98      16.26       5.76       2.04     113.42    -655.40

   38  17.2  0.5 -0.5      -0.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.46      -9.39      -0.38      -0.43     -17.88      -9.94      -2.62      -2.54     -70.29   -1053.91


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5      -0.00      -0.00       0.00       0.00      -0.00     381.32       0.68       5.03
                           -0.00       0.00       0.00      -0.00       0.00       2.08     323.83    -201.41

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -9.27     402.84     647.60

    4   1.2  1.5 -1.5      -0.00      -0.00       0.00       0.00      -0.00     660.46       1.17       8.72
                            0.00      -0.00      -0.00       0.00      -0.00      -3.61    -560.89     348.85

    5   1.2  0.5  0.5      -2.02      -0.89      26.59     -26.50      -1.21     -21.09       2.82       2.73
                          -49.44     230.10      77.39       4.37      16.35       1.11      12.13      -7.29

    6   2.2  0.5  0.5      -6.00     145.98     -36.73      14.69      -2.06      -9.11       7.76     -18.41
                          142.31      -5.37       6.17     130.96     -73.08      16.29      -2.78       8.20

    7   3.2  0.5  0.5     -12.27      37.96     141.66     -24.98      -3.42      15.61      17.48       8.00
                         -209.73     -14.43     -17.30      71.88     135.27      10.54       9.70      -1.40

    8   4.2  0.5  0.5       2.42      -1.23      13.84     296.49      30.54      -3.02       1.48       2.31
                          -11.56     156.77      54.86      -1.94       6.01      -0.33     -17.11      10.46

    9   5.2  0.5  0.5       4.15       8.25       0.75     -31.01     298.03       0.22       3.74      -1.08
                           -3.81     -51.44     139.95     -20.47       0.46       5.96     -10.20     -16.48

   10   6.2  0.5  0.5      -4.98      -4.65      -0.61       0.57       3.24      -1.42    -100.40      88.98
                           -0.34       1.86      -3.69      12.57      -0.15     128.66       3.30       7.62

   11   7.2  0.5  0.5      -0.68       2.45      -8.35      -6.61      -0.38       4.75     -88.36     -97.98
                            5.91      -4.91      -2.62       1.12       9.58      22.20       2.98       1.54

   12   8.2  0.5  0.5      -7.47       2.86       0.51       0.22       1.92      -0.50      -0.09       2.64
                           -0.02       2.30      -6.50       5.48       1.30       2.00      70.15     113.16

   13   9.2  0.5  0.5       0.29       0.59      -2.04      -0.02       0.05    1240.92       2.17      16.04
                            1.88       0.03       0.11       0.04      -0.34       6.73    1053.87    -655.40

   14  10.2  0.5  0.5       0.04     -31.86       0.60      20.58     -10.84    -258.26       6.14     -13.91
                           -0.99    -994.00    -349.24     -19.20      -8.85      11.63     111.84     -72.03

   15  11.2  0.5  0.5      32.33      -1.62    -626.22      -0.94     -14.22      -3.64     178.53     143.60
                         1013.04      -0.55      50.99    -158.47    -625.59      73.90      -2.81       2.33

   16  12.2  0.5  0.5      -1.98     630.43       1.45     -15.30     -12.91     -15.68    -147.39     178.82
                          356.14     -48.24      -1.86     608.85    -153.89    -214.08       0.02      -9.62

   17  13.2  0.5  0.5     -21.63      10.40      18.14       1.43   -1245.50       2.48       2.86      -4.81
                           19.05     157.23    -602.79      -7.15       0.69       9.56    -138.55    -181.01

   18  14.2  0.5  0.5      10.65      15.08      14.05    1229.14      -1.39       3.89       0.57       3.26
                            6.24     613.95     150.37      -1.59      -1.36       0.61     176.44    -134.81

   19  15.2  0.5  0.5     262.04       0.75      14.82      -2.81      -1.13       0.33      -6.45       1.09
                          -11.67     -74.87     217.25      -6.02      -0.49      -0.79     209.77     336.92

   20  16.2  0.5  0.5      -5.62    -175.67     141.43       1.44       1.65       4.52       0.49    -392.42
                         -112.70       1.92       0.73     135.75    -176.80    -206.47      -0.27      -1.11

   21  17.2  0.5  0.5      13.96    -143.63    -174.76       1.51      -0.87      -0.24     393.05      -0.73
                           72.46      -2.52      10.24     176.07     134.60    -332.74       3.32       1.46

   22   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.66     -85.35     249.76     -17.17       7.39      -0.99       5.40       9.39

   23   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          218.38      -3.36      23.18      68.24     128.96     -12.32      -2.37       0.38

   24   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          143.61      13.01     -35.49    -132.67      67.61      19.16      -1.67       0.43

   25   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            7.95      43.09    -120.09      -1.39       2.09      -1.86      10.98      17.88

   26   5.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.18     140.46      47.84      -2.68      -3.81      -0.20     -16.26       9.94

   27   6.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.23       2.24       2.15      -0.24      11.92     -22.04      -5.76       2.62

   28   7.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.45       2.23      -6.13      -8.95       1.14     129.29      -2.04       2.54

   29   8.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.36       8.09       2.83      -1.43       5.19      -2.50    -113.42      70.29

   30   9.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.17      -0.13      -0.12       0.35      -0.25     -15.18     655.40    1053.91

   31  10.2  0.5 -0.5   57480.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.29     343.32   -1017.45       9.32     -37.23      -6.71      64.85     108.24

   32  11.2  0.5 -0.5       0.00   57480.72       0.00       0.00       0.00       0.00       0.00       0.00
                         -343.32      -0.56      -3.19     612.34    -143.23     215.75       1.15       6.25

   33  12.2  0.5 -0.5       0.00       0.00   57480.72       0.00       0.00       0.00       0.00       0.00
                         1017.45       3.19       1.75     138.67     593.93      73.94       2.09      10.95

   34  13.2  0.5 -0.5       0.00       0.00       0.00   57480.75       0.00       0.00       0.00       0.00
                           -9.32    -612.34    -138.67      -0.41     -19.28      -4.16    -180.69     135.56

   35  14.2  0.5 -0.5       0.00       0.00       0.00       0.00   57480.78       0.00       0.00       0.00
                           37.23     143.23    -593.93      19.28      -0.38       5.90    -136.95    -180.27

   36  15.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   58943.33       0.00       0.00
                            6.71    -215.75     -73.94       4.16      -5.90       0.28    -336.06     209.29

   37  16.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   58943.48       0.00
                          -64.85      -1.15      -2.09     180.69     136.95     336.06      -0.57       5.95

   38  17.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   58943.48
                         -108.24      -6.25     -10.95    -135.56     180.27    -209.29      -5.95       0.39


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -240.19529465    -0.00257783     -565.77      0.00000000        0.00      0.0000
     2  -240.19529449    -0.00257767     -565.73      0.00000016        0.04      0.0000
     3  -240.19529359    -0.00257677     -565.54      0.00000106        0.23      0.0000
     4  -240.19529326    -0.00257645     -565.46      0.00000139        0.30      0.0000
     5  -240.15398469     0.03873213     8500.72      0.04130996     9066.49      1.1241
     6  -240.15396759     0.03874923     8504.47      0.04132707     9070.24      1.1246
     7  -240.15395594     0.03876088     8507.03      0.04133871     9072.80      1.1249
     8  -240.15394182     0.03877500     8510.13      0.04135283     9075.90      1.1253
     9  -240.14817340     0.04454342     9776.15      0.04712125    10341.92      1.2822
    10  -240.14816253     0.04455429     9778.54      0.04713212    10344.30      1.2825
    11  -240.14815970     0.04455712     9779.16      0.04713496    10344.93      1.2826
    12  -240.14815690     0.04455992     9779.77      0.04713775    10345.54      1.2827
    13  -240.14815449     0.04456233     9780.30      0.04714016    10346.07      1.2827
    14  -240.14814236     0.04457446     9782.96      0.04715229    10348.73      1.2831
    15  -240.11851459     0.07420223    16285.51      0.07678006    16851.28      2.0893
    16  -240.11849683     0.07421999    16289.41      0.07679783    16855.17      2.0898
    17  -240.11030988     0.08240694    18086.23      0.08498478    18652.00      2.3126
    18  -240.11027530     0.08244151    18093.82      0.08501935    18659.59      2.3135
    19  -240.11025820     0.08245862    18097.58      0.08503646    18663.34      2.3140
    20  -240.11024028     0.08247654    18101.51      0.08505437    18667.28      2.3144
    21  -239.94876287     0.24395395    53541.70      0.24653178    54107.47      6.7085
    22  -239.94872101     0.24399581    53550.89      0.24657364    54116.66      6.7096
    23  -239.93965799     0.25305882    55539.99      0.25563666    56105.76      6.9562
    24  -239.93959803     0.25311878    55553.15      0.25569662    56118.92      6.9579
    25  -239.93958128     0.25313554    55556.83      0.25571337    56122.60      6.9583
    26  -239.93952594     0.25319088    55568.98      0.25576871    56134.74      6.9598
    27  -239.92525140     0.26746542    58701.87      0.27004325    59267.64      7.3483
    28  -239.92520414     0.26751267    58712.25      0.27009051    59278.01      7.3495
    29  -239.92518828     0.26752854    58715.73      0.27010637    59281.50      7.3500
    30  -239.92512210     0.26759472    58730.25      0.27017256    59296.02      7.3518
    31  -239.92507153     0.26764529    58741.35      0.27022312    59307.12      7.3531
    32  -239.92505379     0.26766303    58745.25      0.27024087    59311.01      7.3536
    33  -239.92315443     0.26956239    59162.11      0.27214022    59727.87      7.4053
    34  -239.92312482     0.26959200    59168.60      0.27216983    59734.37      7.4061
    35  -239.92199703     0.27071979    59416.13      0.27329762    59981.90      7.4368
    36  -239.92199033     0.27072648    59417.60      0.27330432    59983.36      7.4370
    37  -239.92196844     0.27074838    59422.40      0.27332622    59988.17      7.4376
    38  -239.92195642     0.27076040    59425.04      0.27333824    59990.81      7.4379


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5   0.944178603  -0.197472370  -0.177081240  -0.029251568  -0.108678481  -0.038168676   0.021342780  -0.030846524
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.124540310   0.605983250  -0.096363558   0.512397737  -0.000096994  -0.003523736  -0.002946313   0.002626005
                         0.144921079   0.470920112   0.228685910   0.114340790  -0.033834680   0.109368545   0.037657132   0.009918522

    3    1.2  1.5 -0.5   0.033725227   0.338320820  -0.174618402  -0.138305629  -0.016093317   0.034791612  -0.099878181  -0.055418520
                        -0.084128734  -0.456676521  -0.064847801   0.760045924  -0.001994591  -0.001757669   0.000144518   0.009232325

    4    1.2  1.5 -1.5  -0.031251853  -0.088793778  -0.018682481  -0.296233377   0.000834051   0.000881542   0.009075221   0.002265799
                         0.159695778  -0.061802557   0.913644767   0.041210836  -0.038108332  -0.003007964  -0.051745605   0.101811325

    5    1.2  0.5  0.5  -0.001540791  -0.008778747   0.000079493   0.005410303  -0.003855938  -0.001561095   0.017585227   0.034456639
                        -0.010465310  -0.006570343  -0.033342679  -0.003214735  -0.281644830   0.217522089  -0.203273677   0.418616525

    6    2.2  0.5  0.5  -0.003556266   0.009567381  -0.027623622  -0.015137412  -0.158518052  -0.014734978  -0.212751187   0.434389890
                         0.009164720   0.000965018  -0.006639971  -0.012528975   0.168763248  -0.020335912   0.162900700   0.174291237

    7    3.2  0.5  0.5  -0.005275972  -0.009434975  -0.021083742   0.020128046  -0.094731977  -0.000041281  -0.143713123   0.235721373
                        -0.015082512  -0.006502303   0.011953604  -0.001468929  -0.237462330  -0.004154864  -0.313827896  -0.323198952

    8    4.2  0.5  0.5  -0.004731851  -0.022774942   0.002698752  -0.021554623  -0.001260456  -0.014539234  -0.038301057   0.007462423
                        -0.002946978  -0.017207878   0.007367505  -0.003408793  -0.079232007   0.485462513   0.261662936  -0.179034388

    9    5.2  0.5  0.5   0.016915355  -0.014591658   0.002658346   0.004225054   0.197381706   0.238565484  -0.469425313  -0.164074619
                         0.002819301   0.015194468   0.002267546  -0.024819961  -0.006433351  -0.013388474  -0.000947624   0.038070782

   10    6.2  0.5  0.5  -0.025027593  -0.076772666  -0.034572890  -0.006832726  -0.081933135   0.253995501   0.085991730   0.019017814
                         0.040077330   0.082563396  -0.016132806   0.077093162   0.035534555   0.028817503  -0.021240629  -0.006366956

   11    7.2  0.5  0.5   0.003312520   0.021753333  -0.001452411  -0.060194605  -0.014602367   0.043204440   0.016162191   0.015733735
                        -0.117007246   0.066938463   0.007300220   0.007412918  -0.199653666  -0.115547012   0.160000972   0.001641206

   12    8.2  0.5  0.5   0.126858619  -0.001729281  -0.037287023  -0.014118099   0.239333162   0.040920517   0.075466441   0.129026212
                        -0.004950246  -0.033870893  -0.005262836   0.059198659   0.004338553   0.003313459  -0.001657169  -0.011070971

   13    9.2  0.5  0.5   0.000000719  -0.000001499  -0.000001083   0.000006747  -0.000000003   0.000007585  -0.000001767  -0.000000990
                        -0.000009477   0.000001914   0.000004183   0.000001172  -0.000001560   0.000012206  -0.000047366  -0.000020991

   14   10.2  0.5  0.5   0.000006566   0.000044753  -0.000004487   0.000006594   0.000032757   0.000022383  -0.000140944  -0.000363443
                         0.000037484   0.000035233   0.000155058   0.000020881   0.002197459  -0.002297879   0.001183068  -0.004302721

   15   11.2  0.5  0.5   0.000016912   0.000067470   0.000059430  -0.000099630   0.000470081  -0.000066600   0.000764520  -0.001178340
                         0.000086190   0.000039724  -0.000035002  -0.000004693   0.002997948  -0.000527971   0.003368622   0.002779229

   16   12.2  0.5  0.5  -0.000006791   0.000033622  -0.000146391  -0.000040952  -0.001657393  -0.000070013  -0.002073844   0.004562982
                         0.000026313   0.000001268  -0.000007945  -0.000051382   0.001111230  -0.000370166   0.000763260   0.000632149

   17   13.2  0.5  0.5  -0.000075480   0.000074564  -0.000013382  -0.000010325  -0.001864896  -0.002165217   0.004457855   0.001472986
                        -0.000010447  -0.000063057  -0.000016055   0.000109580   0.000069599  -0.000296118  -0.000299954  -0.000174333

   18   14.2  0.5  0.5  -0.000027338  -0.000088607   0.000009305  -0.000089048  -0.000209110  -0.000344639   0.000091519   0.000213888
                        -0.000015598  -0.000077122   0.000044204  -0.000000883  -0.000429756   0.004364025   0.002586820  -0.001877849

   19   15.2  0.5  0.5  -0.010904158   0.000082599   0.003189685   0.001284756   0.000549054   0.000065491   0.000103542   0.000207524
                         0.000589809   0.002871677   0.000435934  -0.005060179   0.000000555  -0.000003023   0.000004604  -0.000016270

   20   16.2  0.5  0.5  -0.001491382  -0.005810480  -0.001934308   0.003426599   0.000088604  -0.000255991  -0.000098084  -0.000005084
                         0.009771233   0.000404521  -0.001406554   0.004019010  -0.000325478  -0.000151495   0.000249463   0.000035426

   21   17.2  0.5  0.5  -0.001461891  -0.003653439  -0.002278700  -0.003877290   0.000156377  -0.000391939  -0.000163042  -0.000041715
                        -0.004147487   0.009139826  -0.000606092   0.005328954   0.000204322   0.000080742  -0.000171298  -0.000000218

   22    1.2  0.5 -0.5   0.031546390  -0.003498724  -0.012293712  -0.003982212   0.472033546   0.159376839   0.117829222   0.286660150
                         0.001011376  -0.005152045  -0.001832596   0.013704448   0.030743160   0.017657022  -0.005239680  -0.014502595

   23    2.2  0.5 -0.5   0.005252914   0.007817837   0.013298469   0.002172642   0.144669285  -0.247587786  -0.009105932  -0.148608205
                         0.027996047  -0.016861523  -0.003733184  -0.006408998   0.440437149   0.151487212  -0.080273664   0.134349487

   24    3.2  0.5 -0.5  -0.010881218  -0.012138724  -0.019055902  -0.003207973  -0.263544227   0.366085813  -0.004167784   0.197566002
                         0.022816490   0.012464945  -0.006372457   0.006058388   0.285353613   0.112369846  -0.064488445   0.073522847

   25    4.2  0.5 -0.5  -0.014576835   0.014164194  -0.003849315  -0.004625367  -0.163716050  -0.218348777   0.483529863   0.189148800
                        -0.002520365  -0.015312630  -0.002284320   0.026323597   0.012148157   0.014222852   0.001052278  -0.042029470

   26    5.2  0.5 -0.5  -0.004742629  -0.021811785   0.002879551  -0.022405410  -0.003748209  -0.015046406  -0.040118518   0.002499686
                        -0.002014573  -0.016426774   0.009878235  -0.003297303  -0.055006435   0.466448606   0.283926090  -0.207894658

   27    6.2  0.5 -0.5   0.014300604   0.060348347   0.027861249  -0.114619319   0.002014546   0.019272872   0.026649841  -0.012675428
                         0.006900052   0.060430878  -0.029355811  -0.007388826   0.035746031  -0.077679155   0.234605656   0.132109316

   28    7.2  0.5 -0.5  -0.007623720   0.055757134  -0.099962435  -0.016954756  -0.037930425  -0.133114027  -0.147830267   0.197021297
                        -0.012296353  -0.047862499   0.001094808  -0.080532015   0.005671245  -0.020971664   0.019746327   0.019727704

   29    8.2  0.5 -0.5   0.005653604   0.035112780  -0.008670868  -0.001864602  -0.001348894   0.003575564  -0.013600326  -0.009300742
                         0.032342640   0.029078057   0.137577499   0.014573222   0.118350673  -0.123350318   0.064946458  -0.217451375

   30    9.2  0.5 -0.5   0.000003701  -0.000020238  -0.000013789  -0.000007826   0.000058446   0.000103960   0.000100104  -0.000120667
                         0.000009408   0.000025221  -0.000004774   0.000025022   0.000013225  -0.000001707   0.000032433   0.000012835

   31   10.2  0.5 -0.5  -0.000153173  -0.000012330   0.000031571   0.000018573  -0.004808283  -0.000592346  -0.001461628  -0.002279888
                         0.000002238   0.000057236   0.000004522  -0.000071491  -0.000270888  -0.000138053  -0.000023356   0.000150943

   32   11.2  0.5 -0.5   0.000022938   0.000071336   0.000106434   0.000019365   0.002201323  -0.004053039   0.000038433  -0.002358243
                        -0.000071304  -0.000080664   0.000018386  -0.000035646  -0.001608917  -0.000634395   0.000385837  -0.000291802

   33   12.2  0.5 -0.5   0.000001395   0.000030752   0.000036311   0.000006268   0.000524286  -0.001397605  -0.000103932  -0.000947545
                         0.000154686  -0.000053577  -0.000002603  -0.000019381   0.004755539   0.001381310  -0.000896921   0.001244797

   34   13.2  0.5 -0.5   0.000029348   0.000092886  -0.000006931   0.000083559   0.000219613   0.000427745  -0.000055339  -0.000168684
                        -0.000004835   0.000085617  -0.000045059   0.000004832   0.000262277  -0.004438816  -0.002552076   0.001912018

   35   14.2  0.5 -0.5  -0.000076654   0.000073319  -0.000027480  -0.000012448  -0.001820921  -0.002163611   0.004399676   0.001641437
                        -0.000010409  -0.000057030  -0.000014584   0.000100425   0.000134300  -0.000330199  -0.000248759  -0.000177264

   36   15.2  0.5 -0.5  -0.000470145  -0.003055774   0.000882886   0.000122687  -0.000007180   0.000003824  -0.000026565  -0.000009627
                        -0.002744790  -0.002413826  -0.011840447  -0.001158956   0.000297326  -0.000148515   0.000138287  -0.000310686

   37   16.2  0.5 -0.5   0.001317954  -0.000062792   0.007978217  -0.005509103   0.000031567  -0.000201985  -0.000069189   0.000372975
                         0.001220056   0.006549858  -0.001592723   0.004765903  -0.000045752   0.000090719  -0.000251261  -0.000090131

   38   17.2  0.5 -0.5   0.000466073   0.007026499  -0.003946488  -0.008315774  -0.000016876   0.000127587   0.000058375  -0.000257484
                        -0.000279867   0.001098710  -0.001885022  -0.005118213  -0.000067075   0.000156797  -0.000332794  -0.000113879


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  1.5  1.5   0.000070314  -0.000011949  -0.000047033  -0.000071107  -0.000044681   0.000078473   0.000454704  -0.000298086
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.000009751  -0.000000331   0.000004858  -0.000003226   0.000009945   0.000006423  -0.000028063  -0.000065084
                         0.000030051   0.000039276  -0.000008264   0.000028583  -0.000053688   0.000004093   0.000194225   0.000548225

    3    1.2  1.5 -0.5   0.000114193   0.000008022   0.000038007   0.000032261  -0.000009704   0.000167666   0.000041190   0.000160720
                         0.000018002   0.000014837   0.000005331  -0.000019887  -0.000005382  -0.000019822   0.000030988   0.000034960

    4    1.2  1.5 -1.5   0.000005829   0.000022903  -0.000104364   0.000041451   0.000022335   0.000000685  -0.000019119  -0.000016198
                         0.000289730   0.000028225  -0.000087388   0.000093819   0.000277824  -0.000293777  -0.000181576  -0.000254336

    5    1.2  0.5  0.5  -0.024961383  -0.090203412  -0.100695856   0.054758281  -0.041380456  -0.006205015   0.000077432   0.000088931
                        -0.242468730   0.568625967   0.167721288  -0.083468376   0.384509230  -0.109563963  -0.000260293  -0.000438084

    6    2.2  0.5  0.5  -0.137066277  -0.523669537   0.149441504   0.240878321  -0.206239929  -0.289808792  -0.000175966  -0.000211808
                         0.024350681  -0.082184089   0.057905126  -0.263926423  -0.120060328  -0.075511778   0.000123265  -0.000031635

    7    3.2  0.5  0.5  -0.017966492  -0.242778748  -0.119089687   0.207710350   0.044545529  -0.134169274  -0.000049824  -0.000128514
                        -0.019459204   0.053170413  -0.362479164   0.557179300   0.098423209   0.098468095  -0.000271936  -0.000013669

    8    4.2  0.5  0.5  -0.036768250  -0.157932343   0.106626141  -0.056008152   0.034217514   0.055403094   0.000092190   0.000040783
                         0.164115585  -0.135485263   0.598774712   0.351484123   0.146348387   0.086460217  -0.000301276  -0.000794880

    9    5.2  0.5  0.5  -0.002484985  -0.399858385  -0.013031788  -0.382185066   0.494503337   0.120611824  -0.000218656  -0.000016563
                        -0.019902216  -0.025844104  -0.117482806  -0.129797228   0.060917025  -0.000274732   0.000079939   0.000019864

   10    6.2  0.5  0.5   0.000087704  -0.000020733  -0.000363075  -0.000088318  -0.000176734   0.000133396   0.451269927  -0.343596837
                        -0.000027853  -0.000054135   0.000025687  -0.000043326  -0.000057532   0.000040594  -0.089227228  -0.052332392

   11    7.2  0.5  0.5   0.000086020   0.000064038  -0.000086668   0.000009338  -0.000035631  -0.000011506   0.079092431  -0.053224644
                        -0.000093447  -0.000158257  -0.000219136  -0.000047197   0.000130273  -0.000150706   0.335437699   0.459845653

   12    8.2  0.5  0.5  -0.000412775  -0.000081852  -0.000035256   0.000321118   0.000342645  -0.000509476   0.349358038   0.458988926
                        -0.000076680  -0.000076063   0.000036244  -0.000025869  -0.000000659   0.000030880   0.000247891  -0.006984018

   13    9.2  0.5  0.5   0.000003084   0.000012758   0.000010529   0.000018500   0.000004612   0.000000787   0.000330449  -0.000324306
                        -0.000001196  -0.000041815  -0.000016359  -0.000019465   0.000063404   0.000016519   0.005186624  -0.003949545

   14   10.2  0.5  0.5  -0.000226796  -0.000675804  -0.000378304   0.000254315  -0.000366393  -0.000051768  -0.000004550   0.000011255
                        -0.001398333   0.003287098   0.001557988  -0.000981133   0.002169463  -0.000672198  -0.000042493   0.000075660

   15   11.2  0.5  0.5   0.000040671  -0.000738784  -0.000958811   0.000923494   0.000566987  -0.000323413  -0.000004002   0.000043810
                        -0.000355453   0.000930682  -0.001883147   0.003662390   0.001163697   0.000574097  -0.000038675   0.000021714

   16   12.2  0.5  0.5   0.000918024   0.003293016  -0.000774271  -0.001918796   0.001145189   0.001885939  -0.000001931  -0.000128385
                        -0.000176918   0.000524932   0.000314166   0.000676060   0.000711809   0.000279061  -0.000022876   0.000016801

   17   13.2  0.5  0.5  -0.000112528  -0.002501893   0.000082201  -0.002358846   0.003057443   0.000668392   0.000045227  -0.000035903
                         0.000007485  -0.000290509  -0.000347433  -0.000611151   0.000445615   0.000051500   0.000018341   0.000009412

   18   14.2  0.5  0.5   0.000233425   0.000678017  -0.000683161   0.000155179   0.000121618  -0.000240587   0.000005721  -0.000005795
                        -0.001129274   0.001040151  -0.003659427  -0.002137669  -0.000595831  -0.000479771  -0.000075639  -0.000035419

   19   15.2  0.5  0.5  -0.000013712  -0.000011127  -0.000090109   0.000102281  -0.000013527   0.000015393   0.002106029   0.002736095
                        -0.000008720  -0.000025844   0.000025469  -0.000007796  -0.000021376  -0.000002689   0.000029279   0.000015592

   20   16.2  0.5  0.5  -0.000004181   0.000015924   0.000026691   0.000028999   0.000022428   0.000003582  -0.001456098   0.001091395
                        -0.000019003  -0.000028837   0.000009144   0.000016619  -0.000010561  -0.000024952   0.001935035   0.002202844

   21   17.2  0.5  0.5  -0.000002641   0.000029210   0.000016040   0.000056447   0.000033130   0.000003735  -0.002297686   0.001771307
                         0.000010621   0.000024475   0.000007950  -0.000004014  -0.000008278   0.000003613  -0.000984801  -0.001567407

   22    1.2  0.5 -0.5   0.480485569   0.070053615  -0.287915346   0.266392971   0.288891241  -0.245441572   0.000015119  -0.000475137
                        -0.095164618  -0.063999880   0.197259933  -0.058110975  -0.102876248  -0.000434007   0.000086493  -0.000087510

   23    2.2  0.5 -0.5  -0.215524791   0.025049970   0.215257836   0.059400582   0.199550863  -0.237904586   0.000385801   0.000049767
                        -0.431877133   0.125839478  -0.022422685   0.237041277  -0.169023701   0.344012281   0.000254331  -0.000073838

   24    3.2  0.5 -0.5   0.252777438  -0.045449090  -0.243135254  -0.194782071  -0.264360243   0.414657453  -0.000776389  -0.000007482
                        -0.308412083  -0.003093033   0.022474709   0.112357069  -0.138654572   0.258286309   0.000106803  -0.000288170

   25    4.2  0.5 -0.5  -0.255130558  -0.267602327  -0.183796869   0.067151814   0.503450460   0.377550857  -0.000364243  -0.000106834
                        -0.052171792  -0.064808685  -0.017717881  -0.134149244  -0.039196567  -0.036659739   0.000011719   0.000063120

   26    5.2  0.5 -0.5   0.020347085   0.111739455  -0.017409620  -0.010323598  -0.043343124  -0.037640721   0.000041926   0.000086929
                        -0.437773010  -0.077760922  -0.379337948  -0.109075555  -0.050269635  -0.475704226  -0.000836029  -0.000523987

   27    6.2  0.5 -0.5  -0.000114160   0.000003096   0.000125567  -0.000105855  -0.000127790   0.000054263  -0.076667587   0.057833496
                        -0.000203328   0.000127765  -0.000067806  -0.000226821  -0.000172979  -0.000354928  -0.341663249  -0.456204924

   28    7.2  0.5 -0.5   0.000639205  -0.000096025  -0.000486245  -0.000006157   0.000663837  -0.000585627   0.455299868  -0.340652731
                        -0.000057136  -0.000108072   0.000233721  -0.000198675  -0.000077507  -0.000015923  -0.085952570  -0.055509593

   29    8.2  0.5 -0.5  -0.000021199   0.000018069   0.000267800  -0.000037248  -0.000080299  -0.000040891   0.025345566  -0.024701483
                        -0.000705473  -0.000250956  -0.000090354  -0.000482249  -0.000618520   0.000795047   0.457765847  -0.350582289

   30    9.2  0.5 -0.5   0.000022571  -0.000104204  -0.000083574   0.000015975  -0.000070012   0.000012232  -0.003724354  -0.005231192
                        -0.000002822  -0.000019821  -0.000014850   0.000009842  -0.000017677  -0.000001115  -0.000053008   0.000058483

   31   10.2  0.5 -0.5   0.002423475   0.000371946  -0.001435562   0.001889207   0.002304573  -0.001860395   0.000088548  -0.000037445
                        -0.000562317  -0.000361027   0.001140703  -0.000396183  -0.000576953  -0.000061085   0.000004651  -0.000007205

   32   11.2  0.5 -0.5   0.002200178  -0.000266003  -0.001836734  -0.001233566  -0.001683687   0.002557035   0.000007763   0.000100825
                        -0.001187777  -0.000214752   0.000259320   0.000288079  -0.000580972   0.001020849   0.000027118  -0.000034941

   33   12.2  0.5 -0.5   0.000985958  -0.000051926  -0.000905878  -0.000046248  -0.000718499   0.000679253   0.000007450   0.000046697
                         0.002875093  -0.000761741   0.000057123  -0.001620191   0.001200864  -0.002524891  -0.000103437   0.000105910

   34   13.2  0.5 -0.5  -0.000069979   0.000551013  -0.000341894  -0.000042603   0.000162890   0.000019408   0.000017031  -0.000029604
                        -0.002692952  -0.000286599  -0.002533914  -0.000254701  -0.000377637  -0.002919049   0.000148627   0.000108012

   35   14.2  0.5 -0.5   0.001723945   0.001731917   0.000940381  -0.000333477  -0.002983901  -0.002452681  -0.000081705   0.000074038
                        -0.000004123   0.000308124  -0.000068992   0.000750663   0.000205366  -0.000055173   0.000031608   0.000016950

   36   15.2  0.5 -0.5  -0.000021767  -0.000033211   0.000090555  -0.000003508  -0.000059724  -0.000022179   0.000209431  -0.000161577
                         0.000016874  -0.000086985   0.000119764  -0.000261878  -0.000063283   0.000016824   0.002697009  -0.002079231

   37   16.2  0.5 -0.5  -0.000002579   0.000004274   0.000093937  -0.000078477  -0.000086904  -0.000009339   0.002289054  -0.001874596
                         0.000016719  -0.000026236  -0.000059918   0.000040122   0.000005683  -0.000006727   0.000990178   0.001570125

   38   17.2  0.5 -0.5   0.000002748   0.000017556  -0.000039247   0.000056629   0.000044100   0.000000624  -0.001450913   0.001148904
                        -0.000003361  -0.000096521  -0.000018167   0.000012374  -0.000048563  -0.000028729   0.001968992   0.002182960


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  1.5  1.5  -0.007515419  -0.018818372   0.139396323  -0.050559700   0.000034896  -0.000008517  -0.000284026   0.002089115
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    1.2  1.5  0.5  -0.016856529  -0.041941693  -0.013187097  -0.018236184  -0.000000082   0.000000330  -0.000019300  -0.000008493
                        -0.022511627  -0.083668323   0.026633850   0.107869263  -0.000010820   0.000000770  -0.000468833  -0.000009394

    3    1.2  1.5 -0.5  -0.079128319  -0.058650987  -0.039809176  -0.076170583   0.000022811  -0.000007794   0.001979218   0.000180512
                         0.059532342   0.040773264   0.005036080  -0.010112663   0.000001265   0.000000161  -0.000102235   0.000003240

    4    1.2  1.5 -1.5   0.067652070  -0.050997989  -0.002793391   0.001225787  -0.000000056  -0.000000405   0.000014020   0.000052466
                         0.084913789  -0.074822657  -0.021624007  -0.044347309  -0.000008531   0.000002813   0.000543456   0.000450413

    5    1.2  0.5  0.5  -0.077035835   0.111500021   0.016004837   0.012081989   0.000004017   0.000011396   0.000138807   0.000185494
                        -0.081442791   0.166011934   0.004840553   0.011495433   0.000241028  -0.000045338   0.001251210   0.001862218

    6    2.2  0.5  0.5  -0.153761024   0.070568856   0.025795555   0.065664905   0.000004867  -0.000005103   0.001148555   0.001234641
                         0.022972943  -0.110697712   0.025857994  -0.077614533   0.000029828   0.000084656  -0.002548700  -0.001975336

    7    3.2  0.5  0.5   0.004128139   0.092957907   0.021807502   0.024224355   0.000007288   0.000000984   0.001046734   0.000789527
                         0.160421149   0.008045158  -0.047200283   0.123534039  -0.000071427  -0.000116878   0.003724403   0.002560971

    8    4.2  0.5  0.5   0.070687518   0.027672404   0.018506956   0.026810529   0.000003926   0.000003360   0.000008378  -0.000098603
                         0.090865426   0.068418767  -0.053183470  -0.174527873   0.000020161   0.000004073  -0.001813751  -0.000440691

    9    5.2  0.5  0.5   0.100610203   0.061630512   0.159834840   0.061920413  -0.000026031  -0.000080717   0.005226706  -0.002614529
                        -0.080546227  -0.055043790  -0.006276435   0.015402669  -0.000015713  -0.000001348  -0.000219070  -0.000039824

   10    6.2  0.5  0.5  -0.141090961  -0.434638840   0.136167176   0.530871111  -0.000679555  -0.001837172   0.000431141   0.000194490
                         0.056802541   0.197377760  -0.057150450   0.094739035  -0.000356356  -0.000012194  -0.000138744   0.000162701

   11    7.2  0.5  0.5   0.129616986   0.029717634   0.032192931   0.072271372  -0.000105249  -0.000333769   0.000105033   0.000047153
                         0.177803440   0.100920512   0.705114972  -0.013490783   0.001889614  -0.000270543   0.000767075  -0.001075058

   12    8.2  0.5  0.5   0.228639446   0.221877662  -0.503850960   0.417494113   0.001791595  -0.000116158   0.000524866   0.001093431
                        -0.150276007  -0.100176699  -0.018511128   0.026894961   0.000031871   0.000000156  -0.000015013  -0.000000723

   13    9.2  0.5  0.5  -0.000010125   0.000005126  -0.000007881   0.000003648  -0.001336684  -0.031608934  -0.000103426  -0.000060366
                        -0.000010996  -0.000001759   0.000071291  -0.000050266   0.106119525   0.899274810   0.000142386  -0.001518019

   14   10.2  0.5  0.5   0.001137339  -0.001367610  -0.000201789  -0.000195158  -0.000014846  -0.000030474   0.013374291   0.015924312
                         0.001272043  -0.002026388  -0.000168830   0.000234418  -0.000937452   0.000305053   0.060548494   0.102598462

   15   11.2  0.5  0.5  -0.000437896  -0.001181703  -0.000200500  -0.000101496  -0.000342961   0.000143343   0.078675575   0.041041763
                        -0.001835511  -0.000791498   0.000717333  -0.001771234   0.000221793   0.000176924   0.435897565   0.324476687

   16   12.2  0.5  0.5  -0.001956871   0.001170890   0.000217774   0.000802650   0.000632181  -0.000606678  -0.131973088  -0.129213157
                         0.000903203  -0.001477444   0.000177496  -0.000579460   0.000077649   0.000023939   0.155522371   0.132791009

   17   13.2  0.5  0.5  -0.001382434  -0.000797324  -0.002161722  -0.000915051  -0.000949105  -0.000187165   0.545431241  -0.261250516
                         0.000931332   0.000665608   0.000127347   0.000082890   0.000181785  -0.000029010  -0.050139704  -0.010670057

   18   14.2  0.5  0.5   0.000820618   0.000173708   0.000003946   0.000259662  -0.000094523  -0.000126116   0.057097817  -0.015646015
                         0.001311036   0.000783931  -0.000596877  -0.002487505  -0.000508050   0.000256040   0.201473441   0.076136691

   19   15.2  0.5  0.5   0.000195902   0.000159630  -0.000396386   0.000332262   0.244652985  -0.031864414   0.038130759   0.095813935
                        -0.000120514  -0.000058550  -0.000019067   0.000015581   0.002776543  -0.001044690  -0.002127318  -0.000429477

   20   16.2  0.5  0.5   0.000136555   0.000228809  -0.000051977  -0.000286773   0.014827516   0.128543087  -0.010585290  -0.000394396
                         0.000074788  -0.000109506   0.000479469   0.000064390   0.206204875  -0.019962182   0.053610289  -0.073402772

   21   17.2  0.5  0.5   0.000004991   0.000261491  -0.000084280  -0.000369784   0.028840798   0.204916952  -0.021372639   0.000504831
                        -0.000122232  -0.000146997  -0.000363286  -0.000122165  -0.127755456   0.022415511  -0.032228259   0.046261661

   22    1.2  0.5 -0.5  -0.066324959  -0.039629637   0.164108770  -0.134913833  -0.000037325  -0.000051536  -0.001693474  -0.005423033
                         0.042783886   0.011538084   0.011265572  -0.014994907   0.000005532  -0.000002758   0.000144292  -0.000323419

   23    2.2  0.5 -0.5   0.016374949  -0.095741094   0.014845228   0.055493946  -0.000003737  -0.000015694   0.000089540  -0.000559279
                        -0.022922362   0.030090615   0.190545315  -0.054113989  -0.000035302  -0.000007850   0.000637530  -0.005002822

   24    3.2  0.5 -0.5  -0.016347940   0.151311310  -0.035961084  -0.070676030   0.000020648   0.000029512   0.000091190   0.001329055
                         0.009845233  -0.099817342   0.100550446  -0.061182646  -0.000019295  -0.000003383   0.000423455  -0.003338442

   25    4.2  0.5 -0.5  -0.105485728  -0.063610381  -0.148231101  -0.075370967  -0.000000638  -0.000023962  -0.005506927   0.002144700
                         0.084646316   0.054040818   0.007495253  -0.017155277   0.000004381  -0.000002461   0.000281772  -0.000076841

   26    5.2  0.5 -0.5   0.076027120   0.018014930   0.016029759   0.026658543  -0.000000515   0.000000274  -0.000013280  -0.000086243
                         0.094590419   0.053779440  -0.054140314  -0.177487606  -0.000070713   0.000015104  -0.002013022  -0.000628306

   27    6.2  0.5 -0.5   0.223069000   0.215138089   0.052146850   0.029698660   0.000057355   0.000337283   0.000132384   0.000017424
                         0.452942856   0.259503093   0.200130459   0.387642550  -0.001878981   0.000300831   0.001207849   0.000020945

   28    7.2  0.5 -0.5   0.468336236  -0.075680075  -0.155044124  -0.463619526  -0.000228988  -0.001928763  -0.000448798  -0.000122119
                        -0.263674205   0.169303486   0.014569740   0.015913991  -0.000347044  -0.000034621   0.000225853   0.000034455

   29    8.2  0.5 -0.5  -0.250876294   0.330454506   0.046939709   0.044102226   0.000008540   0.000084438   0.000006424   0.000024380
                        -0.302739340   0.537695632   0.028795983  -0.070618535  -0.000135079  -0.001963693   0.000201132   0.000267644

   30    9.2  0.5 -0.5   0.000071275  -0.000245483  -0.000034022   0.000259260   0.899203433  -0.106126990   0.000870878  -0.001511268
                        -0.000058531   0.000154886   0.000005165   0.000053651   0.004777930  -0.002971121   0.000033305   0.000082985

   31   10.2  0.5 -0.5   0.000761910   0.000925924  -0.002070603   0.001640537  -0.000679119  -0.000753672  -0.211363055  -0.556471281
                        -0.000467831  -0.000406404  -0.000154287   0.000169293  -0.000143258  -0.000120493   0.016682399  -0.030239652

   32   11.2  0.5 -0.5   0.000332389  -0.002166633   0.000340087   0.001115348  -0.000073969  -0.000005341  -0.047788647   0.057727355
                        -0.000243270   0.001342426  -0.000681082   0.000579807  -0.000361630  -0.000312369   0.029398735  -0.204136482

   33   12.2  0.5 -0.5   0.000132192  -0.000692085   0.000026427   0.000466440  -0.000119976  -0.000077920  -0.031756148  -0.005998755
                        -0.000316272   0.000027357   0.002755999  -0.000764728   0.000925293   0.000895394  -0.080368759   0.573192254

   34   13.2  0.5 -0.5  -0.000830175  -0.000108659   0.000018875  -0.000294613   0.000066655   0.000097691  -0.055272288   0.019179854
                        -0.001306549  -0.000797906   0.000634857   0.002499542   0.000126078  -0.000420183  -0.196178674  -0.081462703

   35   14.2  0.5 -0.5  -0.001448172  -0.000899774  -0.002126416  -0.000972851  -0.000603983  -0.000287910   0.545770445  -0.254310414
                         0.000965125   0.000678403   0.000160819   0.000048821  -0.000028571  -0.000021159  -0.045334748  -0.001772341

   36   15.2  0.5 -0.5  -0.000234352   0.000292809   0.000038438   0.000032181   0.000206247   0.007193252   0.000022078   0.001981628
                        -0.000280993   0.000474246  -0.000034762  -0.000090347  -0.031647706  -0.242095042   0.013279676   0.019478961

   37   16.2  0.5 -0.5   0.000161589  -0.000176532  -0.000105856  -0.000275026  -0.024798672  -0.205573032  -0.033028815  -0.016684628
                        -0.000448475  -0.000098856  -0.000093118  -0.000129302   0.127638664  -0.022800511  -0.051829815  -0.002467659

   38   17.2  0.5 -0.5  -0.000450634  -0.000132948   0.000039751   0.000195285   0.013944754   0.128919816   0.014449901   0.010599057
                        -0.000164633  -0.000313197  -0.000113184  -0.000129135   0.205602734  -0.022940683  -0.085204951  -0.008465211


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  1.5  1.5   0.000378561  -0.000141165  -0.000021603   0.000028790   0.000008276  -0.000015917  -0.000018390   0.000012451
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000041653   0.000019157   0.000001802  -0.000004494   0.000009100   0.000013351   0.000013937   0.000021967
                         0.000572317   0.001999948   0.000009109  -0.000026742   0.000023934  -0.000077179   0.000041770   0.000066357

    3    1.2  1.5 -0.5   0.000705972   0.000271714  -0.000000200  -0.000017785   0.000057146  -0.000066490   0.000044314   0.000014470
                        -0.000099698   0.000007017   0.000000969   0.000003812  -0.000031083  -0.000011230  -0.000016731  -0.000006286

    4    1.2  1.5 -1.5  -0.000265364   0.000040983   0.000002204  -0.000013509   0.000018405   0.000009560  -0.000020982  -0.000011269
                        -0.001883052   0.000691415  -0.000028406  -0.000064213   0.000031888  -0.000057208  -0.000051811  -0.000033912

    5    1.2  0.5  0.5  -0.000868448   0.000239419  -0.000024398  -0.000341026   0.000362457   0.000025342  -0.000194721   0.000254760
                        -0.003762020   0.004175267  -0.003839487  -0.002316625   0.000742101  -0.000281713  -0.000934282   0.000224937

    6    2.2  0.5  0.5  -0.004606321   0.001652174   0.001583310   0.001291319  -0.000583491  -0.000234666   0.002493855   0.001934392
                        -0.000589557  -0.000303959  -0.000215032  -0.000109028   0.000812087   0.000270576   0.001095945  -0.002515828

    7    3.2  0.5  0.5  -0.002673434   0.001044811   0.001072139   0.000872202  -0.000784099  -0.000127967   0.000213314   0.002453419
                         0.002609135  -0.000212264   0.000655481  -0.000175179  -0.000446681  -0.000386969  -0.003148027   0.001864991

    8    4.2  0.5  0.5   0.000406663   0.000003745  -0.000016598   0.000561900  -0.000323956   0.000187288   0.000233168   0.000336815
                         0.003889167   0.004313661  -0.002374925   0.003719969  -0.000391472  -0.000967707   0.000445870   0.000853108

    9    5.2  0.5  0.5   0.001418078   0.001257633  -0.001092697   0.000319844  -0.001471800   0.004015972   0.001054782  -0.000682373
                        -0.000293152  -0.000047507   0.000074388  -0.000113231   0.000778672   0.000637910  -0.000405758   0.000293754

   10    6.2  0.5  0.5  -0.000434352  -0.001136846   0.000032098   0.000017285  -0.000020622   0.000051885   0.000017165   0.000101466
                         0.000023201   0.000003609  -0.000019637  -0.000002530   0.000017564  -0.000000507  -0.000024596  -0.000053382

   11    7.2  0.5  0.5  -0.000034181  -0.000193898   0.000005706   0.000003709  -0.000010736  -0.000003884   0.000019061   0.000047355
                         0.000070300  -0.000005440   0.000140721  -0.000024252  -0.000011805   0.000041925   0.000056200   0.000052396

   12    8.2  0.5  0.5   0.000281837  -0.000066577  -0.000082018  -0.000001990   0.000004512   0.000026118   0.000089744   0.000094036
                        -0.000007736   0.000008421   0.000000177   0.000005390  -0.000003661   0.000003200  -0.000051366  -0.000028783

   13    9.2  0.5  0.5   0.000176129   0.000040145  -0.000130112   0.000316149  -0.000488800  -0.000109007   0.000334634   0.000387773
                         0.000723630   0.000253981  -0.000395887   0.001838151  -0.000803709   0.000056717   0.000929542   0.001152654

   14   10.2  0.5  0.5  -0.087344481   0.023521599   0.007212019   0.050300569  -0.072633437  -0.008780142  -0.002625372  -0.019369477
                        -0.397714597   0.457365217   0.672228150   0.337337536  -0.154944247   0.037656638   0.058096607   0.022092175

   15   11.2  0.5  0.5  -0.155450573   0.063621828  -0.103037982  -0.085998843   0.091531058  -0.000703360   0.088146796  -0.282253464
                         0.247860762   0.048825489  -0.022350421   0.011808922   0.089467931   0.083838863   0.605964313  -0.317414438

   16   12.2  0.5  0.5   0.530106395  -0.186304111   0.293192085   0.241484956  -0.106961098  -0.039502749   0.406871310   0.416377245
                        -0.014323310   0.055945821   0.021776286  -0.033293046   0.096309104   0.032360199   0.065347002  -0.291232700

   17   13.2  0.5  0.5   0.118830243   0.091862087   0.140032097  -0.047708758   0.254272351  -0.661797095  -0.191028496   0.099907621
                         0.016478353   0.034529949   0.022810631  -0.047292940  -0.112413568  -0.088737591   0.054293928  -0.054199653

   18   14.2  0.5  0.5  -0.033087245   0.007820122   0.015249111   0.085481663  -0.033634197  -0.036078393   0.034824809   0.064404254
                        -0.413659546  -0.411344341  -0.350997979   0.630861479  -0.089890373  -0.164160629   0.121609514   0.124524386

   19   15.2  0.5  0.5   0.032872052  -0.000253125  -0.000674449   0.000102208   0.003086334  -0.003327666  -0.000165226   0.002347006
                        -0.002272338   0.000237700   0.000046014   0.000125229  -0.001503027  -0.000563234  -0.000336496  -0.000739973

   20   16.2  0.5  0.5   0.017217467   0.053152287   0.000392798  -0.001975002   0.002436038  -0.001640796   0.000879799   0.001497825
                        -0.000548354   0.010527819   0.001538480  -0.001836065   0.001377010  -0.002061583   0.000996082   0.000719730

   21   17.2  0.5  0.5   0.023476156   0.085656719   0.000672236  -0.002931464   0.001119580  -0.003680862   0.000966567   0.001004328
                        -0.002160293  -0.007653041  -0.001244655   0.001907893  -0.002171767   0.000301805  -0.001035487  -0.001040501

   22    1.2  0.5 -0.5  -0.002065231   0.000815409   0.000189849  -0.000925153  -0.003498948  -0.001249880  -0.001880967   0.000327515
                         0.000139580   0.000014948   0.000039043   0.000071195   0.001841904  -0.000150375   0.000593881  -0.000000959

   23    2.2  0.5 -0.5   0.000645677  -0.003262822  -0.001518673  -0.000379680   0.001316946  -0.000362634   0.000436786   0.002122487
                        -0.000967323   0.000417252   0.000552523   0.000891860   0.002970256   0.000493875  -0.001715629   0.000700712

   24    3.2  0.5 -0.5  -0.000749493   0.004915332   0.002371970   0.000754738   0.001370629   0.000410327  -0.001594324  -0.002318294
                        -0.000334611   0.000141026   0.000240864   0.000417622   0.001732861   0.000355776  -0.000361635   0.001776607

   25    4.2  0.5 -0.5  -0.001388072  -0.000715086  -0.000439240   0.000627802  -0.000407514   0.003996924  -0.001703872   0.001265329
                         0.000305427   0.000029664   0.000003907  -0.000143431   0.000223454   0.000681389   0.000602523  -0.000308294

   26    5.2  0.5 -0.5   0.000506554   0.000019332  -0.000029363  -0.000458970   0.000224658  -0.000178702   0.000502583   0.000657476
                         0.004020642   0.003965596   0.001546511  -0.003495146   0.000203757   0.000571537   0.001297466   0.002014055

   27    6.2  0.5 -0.5  -0.000140855  -0.000041909  -0.000003953   0.000010997   0.000019266  -0.000016209   0.000018617   0.000021051
                         0.000376689   0.000230040  -0.000049369   0.000007526   0.000104307   0.000045727   0.000028356   0.000060419

   28    7.2  0.5 -0.5   0.001131726   0.000255253  -0.000010121  -0.000017291   0.000110199   0.000057026  -0.000056486  -0.000020875
                        -0.000088552   0.000062482  -0.000002312   0.000004051  -0.000030553   0.000017622   0.000026796   0.000014397

   29    8.2  0.5 -0.5  -0.000136181   0.000034860  -0.000007038   0.000010377  -0.000009187  -0.000018462  -0.000027836  -0.000018396
                        -0.000848068   0.000991287  -0.000021238  -0.000027324  -0.000016623   0.000096958  -0.000064537  -0.000020420

   30    9.2  0.5 -0.5  -0.000872061   0.000368199  -0.000268693   0.001005069  -0.000966387   0.000590732   0.000361993  -0.001205203
                         0.000150400  -0.000025739   0.000022662  -0.000098585   0.000606668   0.000045323  -0.000075613   0.000493515

   31   10.2  0.5 -0.5  -0.189786750  -0.014097595   0.060845537   0.150296474   0.585918736   0.174537182   0.282669730  -0.137970946
                         0.012373918   0.005411831  -0.009228832  -0.009267147  -0.305289768   0.017384139  -0.087857624   0.028190376

   32   11.2  0.5 -0.5  -0.124760626   0.575555465  -0.443277254  -0.117603136  -0.051729654  -0.074060658   0.309606412   0.421238755
                        -0.005285227   0.005398089  -0.016293389  -0.028378945  -0.207674012  -0.037221280  -0.025276852  -0.243757213

   33   12.2  0.5 -0.5  -0.053445272   0.196786393  -0.142681514  -0.022654380   0.298692054  -0.041222276   0.014283819   0.224153551
                         0.117239229  -0.036812043   0.090076347   0.174138100   0.520815406   0.091905263  -0.297727026   0.175999016

   34   13.2  0.5 -0.5   0.041213545  -0.016186175   0.017185276   0.065362407  -0.040525236  -0.037284013  -0.062240159  -0.143604654
                         0.420056332   0.407466366  -0.262102962   0.564534381  -0.040708325  -0.116439170  -0.219494977  -0.342803084

   35   14.2  0.5 -0.5   0.128036197   0.100505309  -0.090831608   0.120586979  -0.028293166   0.665064627  -0.258285762   0.207592020
                         0.015023405   0.039353527  -0.025196379   0.034136702   0.012991083   0.098145527   0.067858986  -0.093462582

   36   15.2  0.5 -0.5  -0.009915139   0.002411737  -0.000009093  -0.000265605   0.000444944   0.000599278  -0.000311356   0.000521902
                        -0.067098978   0.080914599  -0.001518529  -0.001527802   0.001100681  -0.004416402  -0.000617241   0.001563098

   37   16.2  0.5 -0.5   0.079796179   0.017419657   0.000925358   0.003649725  -0.001690883   0.000349017   0.002784599   0.003958626
                        -0.029954305  -0.005900108   0.000557987  -0.000673865  -0.000182878   0.001353966  -0.002960607  -0.001201906

   38   17.2  0.5 -0.5  -0.055858941  -0.010365085  -0.000499244  -0.002111739  -0.000115498  -0.000527468  -0.003061814  -0.002303790
                        -0.024876036  -0.011106773   0.000487187   0.000553248  -0.002206775   0.001700028  -0.001851773   0.001014387


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  1.5  1.5  -0.000013921  -0.000152436  -0.004515556   0.007922456  -0.001462249   0.012435851
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    1.2  1.5  0.5   0.000019519   0.000004171  -0.003825560  -0.002249871  -0.002205679  -0.000214243
                         0.000085885   0.000029079   0.013925973   0.002801389  -0.002123440   0.003028406

    3    1.2  1.5 -0.5  -0.000015053  -0.000148965   0.000839829  -0.012781911  -0.001579976   0.008252011
                        -0.000009144   0.000042656  -0.001594803  -0.000659985   0.001540979   0.000022828

    4    1.2  1.5 -1.5  -0.000006998  -0.000012794  -0.001061834   0.000193395   0.009956938   0.000661856
                        -0.000027122  -0.000092910   0.002586937  -0.000758784   0.011156564   0.002736718

    5    1.2  0.5  0.5   0.000009162  -0.000011451   0.000178182   0.000063237  -0.000681050  -0.000049130
                         0.000043138  -0.000043300  -0.000649564   0.000025102  -0.000682618  -0.000430507

    6    2.2  0.5  0.5  -0.000069549  -0.000104945  -0.000092104   0.000045810  -0.000799255  -0.000137134
                        -0.000152493   0.000038810  -0.000264795  -0.000327666   0.000547403   0.000627662

    7    3.2  0.5  0.5   0.000036446  -0.000065997  -0.000283280  -0.000077449  -0.000330807  -0.000083276
                         0.000242442  -0.000048227   0.000311007   0.000502957   0.000642253  -0.000813730

    8    4.2  0.5  0.5  -0.000001541   0.000003107   0.000241428   0.000180347   0.000515876   0.000037330
                        -0.000043815   0.000069266  -0.000929647  -0.000200552   0.000557111  -0.000166358

    9    5.2  0.5  0.5  -0.000058678   0.000047584  -0.000296888   0.001164241  -0.000018095  -0.000083754
                         0.000019491   0.000015955   0.000096171   0.000059501  -0.000042030   0.000003155

   10    6.2  0.5  0.5  -0.004401063   0.000811723  -0.001296731  -0.000253893   0.000218327  -0.000150949
                         0.001186408   0.000942649  -0.000420659  -0.000005574  -0.000221444   0.000092336

   11    7.2  0.5  0.5  -0.001166716  -0.000396963  -0.000174408  -0.000039613  -0.000038258  -0.000012278
                        -0.000399040  -0.004520676   0.000421368  -0.001218711   0.000003746  -0.000648520

   12    8.2  0.5  0.5  -0.000684161  -0.004609628  -0.000339638   0.000075416  -0.000241830   0.001343443
                         0.000395810   0.000534701  -0.000090179   0.000010250   0.000115352   0.000008820

   13    9.2  0.5  0.5   0.099021143   0.013324054   0.000413979  -0.000090093   0.000595510   0.000567197
                         0.405495753  -0.067638055  -0.001911754  -0.000434786   0.000601300  -0.000600355

   14   10.2  0.5  0.5  -0.000178769   0.000068917   0.014267193   0.006065070  -0.042319391  -0.003208337
                        -0.001137080   0.000329016  -0.048105350  -0.005073430  -0.042417776  -0.017176304

   15   11.2  0.5  0.5   0.001326542   0.000318324  -0.011277414  -0.001148738  -0.012908272  -0.004290683
                         0.000228706   0.002553367   0.005077309   0.038176374   0.030660881  -0.067450930

   16   12.2  0.5  0.5  -0.003482783   0.000188153   0.009721339  -0.002667890   0.061686291   0.013507123
                         0.001068798   0.000929298   0.004854951   0.011288543  -0.052112345  -0.028153244

   17   13.2  0.5  0.5   0.000189515  -0.002064902  -0.018583144   0.083382811   0.004259163  -0.008446244
                         0.000366159  -0.000016871   0.001500817   0.001084037  -0.001054612   0.000590648

   18   14.2  0.5  0.5  -0.000362207  -0.000102332  -0.017167473  -0.003360680  -0.034168788  -0.003442203
                        -0.002583724   0.001757474   0.059706030   0.014804777  -0.037716446   0.005070275

   19   15.2  0.5  0.5   0.078442967   0.501434299  -0.193087478   0.020876054  -0.104631743   0.782692056
                        -0.045041125  -0.049811636  -0.043232601  -0.023858593   0.037079641  -0.001525642

   20   16.2  0.5  0.5  -0.224967555   0.090515036   0.420768735   0.093435928  -0.091630877   0.084845772
                         0.126419386   0.446590913   0.296141310  -0.527456473   0.083984851  -0.282772368

   21   17.2  0.5  0.5  -0.444137990   0.051433904   0.595087890   0.115111291  -0.076076287   0.145400400
                         0.063692032  -0.259291145   0.051055186   0.466003750   0.084931769   0.189918872

   22    1.2  0.5 -0.5   0.000037631  -0.000078216  -0.000387418   0.000063916  -0.000165261   0.001052042
                        -0.000014099   0.000000343  -0.000109027  -0.000014107   0.000070456   0.000045505

   23    2.2  0.5 -0.5   0.000022268  -0.000006652   0.000557099   0.000111692   0.000221968   0.000208453
                        -0.000023115  -0.000063867  -0.000153119   0.000587093  -0.000209808   0.000729923

   24    3.2  0.5 -0.5  -0.000049591   0.000020132  -0.000816158  -0.000141348  -0.000246053  -0.000414109
                         0.000001331  -0.000036620  -0.000450500   0.000218053   0.000199337   0.000496877

   25    4.2  0.5 -0.5   0.000010354  -0.000018125   0.000228670  -0.001199059  -0.000045954   0.000199318
                        -0.000002326   0.000000433  -0.000127210  -0.000036146   0.000102444   0.000012450

   26    5.2  0.5 -0.5  -0.000003594  -0.000000153   0.000210810   0.000166656   0.000534554   0.000033132
                        -0.000018331   0.000021118  -0.000824597  -0.000212756   0.000568055  -0.000109333

   27    6.2  0.5 -0.5   0.001151629   0.000346912   0.000070526   0.000059872   0.000118164   0.000017113
                         0.000415989   0.004524314  -0.000018577  -0.001208083  -0.000200765   0.000851567

   28    7.2  0.5 -0.5  -0.004383330   0.000845386   0.000489809   0.000204470  -0.000983212  -0.000095505
                         0.001147882   0.000958581   0.000105051  -0.000087728   0.000890970   0.000227798

   29    8.2  0.5 -0.5  -0.001058018  -0.000150082  -0.000258580  -0.000087358   0.000720962   0.000038019
                        -0.004549988   0.000751438   0.000859705   0.000055299   0.000792868   0.000367494

   30    9.2  0.5 -0.5  -0.059134516  -0.416385613   0.001410100   0.001780365  -0.000868848  -0.007526935
                         0.035424062   0.043524214   0.000270121   0.001094309   0.001263363   0.000214541

   31   10.2  0.5 -0.5   0.000590025  -0.001382470  -0.017524497   0.006233795  -0.009580242   0.079634899
                        -0.000055659  -0.000017043  -0.005065261   0.000544717   0.003016514   0.003168415

   32   11.2  0.5 -0.5  -0.002069911  -0.000657553  -0.070795163  -0.010706159  -0.018260591  -0.022590316
                         0.000336854   0.000694710  -0.027959471   0.003763723   0.012709510   0.023267411

   33   12.2  0.5 -0.5  -0.000884407  -0.000350504  -0.024782896  -0.004159281  -0.006105577  -0.003927226
                         0.000221103  -0.001755629   0.014072333  -0.043406226   0.013670960  -0.065262028

   34   13.2  0.5 -0.5   0.000062276  -0.000051359   0.016629808   0.003324658   0.036179405   0.002336820
                        -0.001760273   0.002109702  -0.055348001  -0.016456513   0.039715028  -0.005788789

   35   14.2  0.5 -0.5  -0.001113954   0.001570800  -0.011820325   0.078683351   0.007233675  -0.003098069
                         0.000229656  -0.000205355   0.002592947   0.001516912  -0.003641794  -0.000944403

   36   15.2  0.5 -0.5   0.124813903   0.014958739  -0.145022108  -0.049166382   0.389529856   0.024783310
                         0.500704064  -0.093631723   0.479004112   0.030600608   0.451718045   0.207161124

   37   16.2  0.5 -0.5   0.451810691  -0.037274949   0.163361060   0.073258979  -0.430827683  -0.038165167
                        -0.064556444   0.260172037   0.020258000   0.409024672   0.475845124  -0.194357021

   38   17.2  0.5 -0.5  -0.228238190   0.089063290  -0.201373320  -0.085212644   0.370408160   0.025632547
                         0.134723186   0.449942766  -0.059726005   0.529834894  -0.190661159  -0.376316506


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5  89.147%   3.900%   3.136%   0.086%   1.181%   0.146%   0.046%   0.095%   0.000%   0.000%
    2    1.2  1.5  0.5   3.651%  58.898%   6.158%  27.563%   0.114%   1.197%   0.143%   0.011%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.822%  32.301%   3.470%  59.680%   0.026%   0.121%   0.998%   0.316%   0.000%   0.000%
    4    1.2  1.5 -1.5   2.648%   1.170%  83.510%   8.945%   0.145%   0.001%   0.276%   1.037%   0.000%   0.000%
    5    1.2  0.5  0.5   0.011%   0.012%   0.111%   0.004%   7.934%   4.732%   4.163%  17.643%   5.941%  33.147%
    6    2.2  0.5  0.5   0.010%   0.009%   0.081%   0.039%   5.361%   0.063%   7.180%  21.907%   1.938%  28.098%
    7    3.2  0.5  0.5   0.026%   0.013%   0.059%   0.041%   6.536%   0.002%  11.914%  16.002%   0.070%   6.177%
    8    4.2  0.5  0.5   0.003%   0.081%   0.006%   0.048%   0.628%  23.589%   6.993%   3.211%   2.829%   4.330%
    9    5.2  0.5  0.5   0.029%   0.044%   0.001%   0.063%   3.900%   5.709%  22.036%   2.837%   0.040%  16.055%
   10    6.2  0.5  0.5   0.223%   1.271%   0.146%   0.599%   0.798%   6.534%   0.785%   0.040%   0.000%   0.000%
   11    7.2  0.5  0.5   1.370%   0.495%   0.006%   0.368%   4.007%   1.522%   2.586%   0.025%   0.000%   0.000%
   12    8.2  0.5  0.5   1.612%   0.115%   0.142%   0.370%   5.730%   0.169%   0.570%   1.677%   0.000%   0.000%
   13    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%   0.001%
   15   11.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.001%   0.000%   0.000%
   16   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%
   17   13.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.001%
   18   14.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%
   19   15.2  0.5  0.5   0.012%   0.001%   0.001%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   16.2  0.5  0.5   0.010%   0.003%   0.001%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21   17.2  0.5  0.5   0.002%   0.010%   0.001%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    1.2  0.5 -0.5   0.100%   0.004%   0.015%   0.020%  22.376%   2.571%   1.391%   8.238%  23.992%   0.900%
   23    2.2  0.5 -0.5   0.081%   0.035%   0.019%   0.005%  21.491%   8.425%   0.653%   4.013%  23.297%   1.646%
   24    3.2  0.5 -0.5   0.064%   0.030%   0.040%   0.005%  15.088%  14.665%   0.418%   4.444%  15.901%   0.208%
   25    4.2  0.5 -0.5   0.022%   0.044%   0.002%   0.071%   2.695%   4.788%  23.380%   3.754%   6.781%   7.581%
   26    5.2  0.5 -0.5   0.003%   0.075%   0.011%   0.051%   0.304%  21.780%   8.222%   4.323%  19.206%   1.853%
   27    6.2  0.5 -0.5   0.025%   0.729%   0.164%   1.319%   0.128%   0.641%   5.575%   1.761%   0.000%   0.000%
   28    7.2  0.5 -0.5   0.021%   0.540%   0.999%   0.677%   0.147%   1.816%   2.224%   3.921%   0.000%   0.000%
   29    8.2  0.5 -0.5   0.108%   0.208%   1.900%   0.022%   1.401%   1.523%   0.440%   4.737%   0.000%   0.000%
   30    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   10.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.001%   0.001%   0.000%
   32   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%   0.001%   0.001%   0.000%
   33   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%
   34   13.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.001%   0.000%
   35   14.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   36   15.2  0.5 -0.5   0.001%   0.002%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37   16.2  0.5 -0.5   0.000%   0.004%   0.007%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   17.2  0.5 -0.5   0.000%   0.005%   0.002%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.035%   1.943%   0.256%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.079%   0.876%   0.088%   1.197%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.981%   0.510%   0.161%   0.590%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.179%   0.820%   0.048%   0.197%
    5    1.2  0.5  0.5   3.827%   0.997%  14.956%   1.204%   0.000%   0.000%   1.257%   3.999%   0.028%   0.028%
    6    2.2  0.5  0.5   2.569%  12.768%   5.695%   8.969%   0.000%   0.000%   2.417%   1.723%   0.133%   1.034%
    7    3.2  0.5  0.5  14.557%  35.359%   1.167%   2.770%   0.000%   0.000%   2.575%   0.871%   0.270%   1.585%
    8    4.2  0.5  0.5  36.990%  12.668%   2.259%   1.054%   0.000%   0.000%   1.325%   0.545%   0.317%   3.118%
    9    5.2  0.5  0.5   1.397%  16.291%  24.824%   1.455%   0.000%   0.000%   1.661%   0.683%   2.559%   0.407%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  21.161%  12.080%   2.313%  22.787%   2.181%  29.080%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  11.877%  21.429%   4.841%   1.107%  49.822%   0.541%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  12.205%  21.072%   7.486%   5.927%  25.421%  17.502%
   13    9.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.003%   0.002%   0.000%   0.000%   0.000%   0.000%
   14   10.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   15   11.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   12.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   13.2  0.5  0.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18   14.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   19   15.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   20   16.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%
   21   17.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%
   22    1.2  0.5 -0.5  12.181%   7.434%   9.404%   6.024%   0.000%   0.000%   0.623%   0.170%   2.706%   1.843%
   23    2.2  0.5 -0.5   4.684%   5.972%   6.839%  17.494%   0.000%   0.000%   0.079%   1.007%   3.653%   0.601%
   24    3.2  0.5 -0.5   5.962%   5.056%   8.911%  23.865%   0.000%   0.000%   0.036%   3.286%   1.140%   0.874%
   25    4.2  0.5 -0.5   3.410%   2.251%  25.500%  14.389%   0.000%   0.000%   1.829%   0.697%   2.203%   0.598%
   26    5.2  0.5 -0.5  14.420%   1.200%   0.441%  22.771%   0.000%   0.000%   1.473%   0.322%   0.319%   3.221%
   27    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  12.261%  21.147%  25.492%  11.363%   4.277%  15.115%
   28    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  21.469%  11.913%  28.886%   3.439%   2.425%  21.520%
   29    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  21.019%  12.352%  15.459%  39.832%   0.303%   0.693%
   30    9.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.003%   0.000%   0.000%   0.000%   0.000%
   31   10.2  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   11.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   33   12.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   34   13.2  0.5 -0.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   35   14.2  0.5 -0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36   15.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   37   16.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%
   38   17.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.002%   0.001%   0.001%   0.000%   0.000%
    6    2.2  0.5  0.5   0.000%   0.000%   0.001%   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    3.2  0.5  0.5   0.000%   0.000%   0.001%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.002%   0.001%   0.001%   0.000%   0.000%
    9    5.2  0.5  0.5   0.000%   0.000%   0.003%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   10    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    9.2  0.5  0.5   1.126%  80.969%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   10.2  0.5  0.5   0.000%   0.000%   0.384%   1.078%  16.581%  20.974%  45.194%  11.633%   2.928%   0.150%
   15   11.2  0.5  0.5   0.000%   0.000%  19.620%  10.697%   8.560%   0.643%   1.112%   0.754%   1.638%   0.703%
   16   12.2  0.5  0.5   0.000%   0.000%   4.160%   3.433%  28.122%   3.784%   8.644%   5.942%   2.072%   0.261%
   17   13.2  0.5  0.5   0.000%   0.000%  30.001%   6.837%   1.439%   0.963%   2.013%   0.451%   7.729%  44.585%
   18   14.2  0.5  0.5   0.000%   0.000%   4.385%   0.604%  17.221%  16.927%  12.343%  40.529%   0.921%   2.825%
   19   15.2  0.5  0.5   5.986%   0.102%   0.146%   0.918%   0.109%   0.000%   0.000%   0.000%   0.001%   0.001%
   20   16.2  0.5  0.5   4.274%   1.692%   0.299%   0.539%   0.030%   0.294%   0.000%   0.001%   0.001%   0.001%
   21   17.2  0.5  0.5   1.715%   4.249%   0.150%   0.214%   0.056%   0.740%   0.000%   0.001%   0.001%   0.001%
   22    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   23    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.003%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%
   24    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%
   25    4.2  0.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   26    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.002%   0.000%   0.001%   0.000%   0.000%
   27    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    7.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    8.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30    9.2  0.5 -0.5  80.859%   1.127%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   10.2  0.5 -0.5   0.000%   0.000%   4.495%  31.057%   3.617%   0.023%   0.379%   2.267%  43.650%   3.077%
   32   11.2  0.5 -0.5   0.000%   0.000%   0.315%   4.500%   1.559%  33.129%  19.676%   1.464%   4.580%   0.687%
   33   12.2  0.5 -0.5   0.000%   0.000%   0.747%  32.859%   1.660%   4.008%   2.847%   3.084%  36.047%   1.015%
   34   13.2  0.5 -0.5   0.000%   0.000%   4.154%   0.700%  17.815%  16.629%   6.899%  32.297%   0.330%   1.495%
   35   14.2  0.5 -0.5   0.000%   0.000%  29.992%   6.468%   1.662%   1.165%   0.889%   1.571%   0.097%  45.194%
   36   15.2  0.5 -0.5   0.100%   5.866%   0.018%   0.038%   0.460%   0.655%   0.000%   0.000%   0.000%   0.002%
   37   16.2  0.5 -0.5   1.691%   4.278%   0.378%   0.028%   0.726%   0.034%   0.000%   0.001%   0.000%   0.000%
   38   17.2  0.5 -0.5   4.247%   1.715%   0.747%   0.018%   0.374%   0.023%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.006%   0.000%   0.015%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.021%   0.001%   0.001%   0.001%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.000%   0.007%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.022%   0.001%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    2.2  0.5  0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    3.2  0.5  0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    6.2  0.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    7.2  0.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   12    8.2  0.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   13    9.2  0.5  0.5   0.000%   0.000%  17.423%   0.475%   0.000%   0.000%   0.000%   0.000%
   14   10.2  0.5  0.5   0.338%   0.086%   0.000%   0.000%   0.252%   0.006%   0.359%   0.031%
   15   11.2  0.5  0.5  37.496%  18.042%   0.000%   0.001%   0.015%   0.146%   0.111%   0.457%
   16   12.2  0.5  0.5  16.981%  25.819%   0.001%   0.000%   0.012%   0.013%   0.652%   0.098%
   17   13.2  0.5  0.5   3.944%   1.292%   0.000%   0.000%   0.035%   0.695%   0.002%   0.007%
   18   14.2  0.5  0.5   1.600%   1.965%   0.001%   0.000%   0.386%   0.023%   0.259%   0.004%
   19   15.2  0.5  0.5   0.000%   0.001%   0.818%  25.392%   3.915%   0.101%   1.232%  61.261%
   20   16.2  0.5  0.5   0.000%   0.000%   6.659%  20.764%  26.475%  28.694%   1.545%   8.716%
   21   17.2  0.5  0.5   0.000%   0.000%  20.132%   6.988%  35.674%  23.041%   1.300%   5.721%
   22    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    3.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   28    7.2  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    8.2  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   30    9.2  0.5 -0.5   0.000%   0.000%   0.475%  17.527%   0.000%   0.000%   0.000%   0.006%
   31   10.2  0.5 -0.5   8.762%   1.983%   0.000%   0.000%   0.033%   0.004%   0.010%   0.635%
   32   11.2  0.5 -0.5   9.650%  23.686%   0.000%   0.000%   0.579%   0.013%   0.049%   0.105%
   33   12.2  0.5 -0.5   8.885%   8.122%   0.000%   0.000%   0.081%   0.190%   0.022%   0.427%
   34   13.2  0.5 -0.5   5.205%  13.814%   0.000%   0.000%   0.334%   0.028%   0.289%   0.004%
   35   14.2  0.5 -0.5   7.132%   5.183%   0.000%   0.000%   0.015%   0.619%   0.007%   0.001%
   36   15.2  0.5 -0.5   0.000%   0.000%  26.628%   0.899%  25.048%   0.335%  35.578%   4.353%
   37   16.2  0.5 -0.5   0.002%   0.002%  20.830%   6.908%   2.710%  17.267%  41.204%   3.923%
   38   17.2  0.5 -0.5   0.001%   0.001%   7.024%  21.038%   4.412%  28.799%  17.355%  14.227%


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
              1      21       52.36       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     4120.38       700     1000      520     2140     5302     5102   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *   1219792.271208041.96  11678.73     62.72      5.39      3.09
 REAL TIME  *   1227635.97 SEC
 DISK USED  *         4.08 GB (local),      130.58 GB (total)
 SF USED    *        40.25 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -239.921956415786

              CI              CI           MULTI
   -239.84900376   -240.11833858   -239.02333648
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
