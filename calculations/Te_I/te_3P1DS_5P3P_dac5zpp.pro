
 Working directory              : /wrk/irikura/molpro.VvuAoJleHi/
 Global scratch directory       : /wrk/irikura/molpro.VvuAoJleHi/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.VvuAoJleHi/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Te SO-CI
                                                                                 ! add some Rydberg states
                                                                                 ! active space (6/7)
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Te};
 
 basis={
 ecp,te,ECP28MDF;
 spdfghi,te,aug-cc-pwCV5Z-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 NT=6
 NS=6
 NQ=3
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,6,3
     occ,7,9
     wf,charge=0,sym=PAR,spin=2;state,NT;
     wf,charge=0,sym=PAR,spin=0;state,NS;
     wf,charge=0,sym=PAR,spin=4;state,NQ;
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
 {ci;wf,sym=PAR,spin=4;state,NQ; save,5502.2}
 hlsdiag(NT+NS+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2,5502.2;print,vls=0,hls=0}                          !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Te SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 27-Jan-25          TIME: 15:30:17  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  42000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING NT             =         6.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING NQ             =         3.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Te   ECP ECP28MDF                 selected for group  1
 Library entry TE     S AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Te S diffuse               selected for group 1    nprim= 1    centre=  0.009    ratio= 3.000    dratio= 1.000
 Library entry TE     P AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Te P diffuse               selected for group 1    nprim= 1    centre=  0.007    ratio= 3.000    dratio= 1.000
 Library entry TE     D AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Te D diffuse               selected for group 1    nprim= 1    centre=  0.015    ratio= 3.000    dratio= 1.000
 Library entry TE     F AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Even tempered Te F diffuse               selected for group 1    nprim= 1    centre=  0.025    ratio= 3.000    dratio= 1.000
 Library entry TE     G AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry TE     H AUG-CC-PWCV5Z-PP     selected for orbital group  1
 Library entry TE     I AUG-CC-PWCV5Z-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         485
 NUMBER OF SYMMETRY AOS:          348
 NUMBER OF CONTRACTIONS:          281   (  135Ag  +  146Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8   9101112131415 7 8 9
                                       101112131415 7 8 910  1112131415 7 8 91011  12131415 7 8 9101112  131415 7 8 910111213
                                       14151617181920212223  2425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 1 2 3 4
                                        5 6 7 8 910 4 5 6 7   8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617
                                       18192021111213141516  17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.549E-05 0.283E-04 0.217E-03 0.217E-03 0.217E-03 0.217E-03 0.217E-03 0.268E-03
         2 0.224E-06 0.224E-06 0.224E-06 0.401E-03 0.401E-03 0.401E-03 0.254E-02 0.254E-02


 Contracted 2-electron integrals neglected if value below      1.0D-14
 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     910.426 MB (compressed) written to integral file ( 17.6%)

     Node minimum: 21.234 MB, node maximum: 54.264 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   14108412.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   14108412      RECORD LENGTH: 524288

 Memory used in sort:      14.67 MW

 SORT1 READ   646821870. AND WROTE     2419204. INTEGRALS IN      7 RECORDS. CPU TIME:     4.38 SEC, REAL TIME:     4.55 SEC
 SORT2 READ    68066261. AND WROTE   395255076. INTEGRALS IN   2828 RECORDS. CPU TIME:     0.26 SEC, REAL TIME:     0.32 SEC

 Node minimum:    14103376.  Node maximum:    14140936. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.53      9.32
 REAL TIME  *        11.18 SEC
 DISK USED  *        31.11 MB (local),        2.42 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -266.67494472    -266.67494472     0.00D+00     0.45D-01     0     0       0.09      0.18    start
   2     -266.71783667      -0.04289196     0.27D-02     0.27D-02     1     0       0.10      0.28    diag2
   3     -266.72026872      -0.00243204     0.15D-02     0.58D-03     2     0       0.11      0.39    diag2
   4     -266.72071079      -0.00044207     0.28D-03     0.37D-03     3     0       0.10      0.49    diag2
   5     -266.72073556      -0.00002477     0.61D-04     0.14D-03     4     0       0.10      0.59    diag2
   6     -266.72073571      -0.00000015     0.64D-05     0.22D-04     5     0       0.10      0.69    diag2
   7     -266.72073571      -0.00000000     0.78D-06     0.22D-05     6     0       0.10      0.79    diag2
   8     -266.72073571      -0.00000000     0.54D-07     0.20D-06     0     0       0.10      0.89    fixocc

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -266.720735711546
  RHF One-electron energy            -459.058938876967
  RHF Two-electron energy             192.338203165422
  RHF Kinetic energy                  102.493374858533
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.602321721572

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45861     1  1  s    1.00014
    2.1     2.00000    -2.27825     1  1  d0  -0.36919    1  1  d2- -0.25982    1  1  d2+  0.63686    1  1  d1- -0.60724
    3.1     2.00000    -2.27825     1  1  d2-  0.72454    1  1  d1+  0.68296
    4.1     2.00000    -2.27825     1  1  d0   0.71732    1  1  d2+  0.63253
    5.1     2.00000    -2.27825     1  1  d0   0.47604    1  1  d2- -0.56679    1  1  d1+  0.65479
    6.1     2.00000    -2.27825     1  1  d0  -0.34853    1  1  d2+  0.40672    1  1  d1-  0.78828
    7.1     2.00000    -1.03500     1  1  s   -0.44110    1  5  s    0.66288    1  6  s    0.50394
    1.2     2.00000    -5.42335     1  1  py   0.74560    1  1  pz   0.66599
    2.2     2.00000    -5.42335     1  1  px   0.76029    1  1  py  -0.41304    1  1  pz   0.50201
    3.2     2.00000    -5.42335     1  1  px   0.64917    1  1  py   0.52358    1  1  pz  -0.55237
    4.2     1.00000    -0.69090     1  1  py  -0.27423    1  5  py   0.47126    1  5  pz   0.32501    1  6  py   0.26610
    5.2     1.00000    -0.69090     1  5  px   0.41315    1  5  pz   0.33501
    6.2     1.00000    -0.69090     1  5  px   0.39627    1  5  pz  -0.33211


 HOMO      6.2    -0.690899 =     -18.8003eV
 LUMO      8.1    -0.116665 =      -3.1746eV
 LUMO-HOMO         0.574235 =      15.6257eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        1.64       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        10.44      0.90      9.32
 REAL TIME  *        12.19 SEC
 DISK USED  *        37.02 MB (local),        2.59 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     265 (  128  137)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             294   (345 determinants, 735 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             280   (625 determinants, 1225 intermediate states)

 State symmetry 3

 Number of active electrons:   6    Spin symmetry=Quintet   Space symmetry=1
 Number of states:             3
 Number of CSFs:              50   (51 determinants, 147 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.686D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.536D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.610D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.654D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.601D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 3 2 4 6 1 1 5 6   2 4 3 1 4 5 3 2 6 1   3 5 6 4 215 914 812  13 71011 3 4 5 2 6 1
                                        814121115 7 91013 3   4 6 2 5 114 8111210   9 71315 3 6 4 5 2 1  13 912151110 8 714 3
                                        6 4 5 2192022282726  161725232118241415 9  1113 710 812 1 6 3 4   5 21415 91113 710 8
                                       12 1 3 6 2 4 5 3 5 2   4 6 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.484D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.546D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.680D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.423D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.570D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.659D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.220D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.220D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 3 5 9 410 6 7 8 2   1 3 8 910 4 5 7 6 2   3 1 810 9 7 6 5 4 9
                                        8 6 410 5 718131519  11202114161217 3 1 2   7 4 6 910 8 5171413  211911122016181510 8
                                        6 7 5 4 9 2 1 310 7   6 4 5 8 91416201819  112113171215 1 3 210   8 6 4 5 7 915172013
                                       19111821121416 3 1 2  10 8 6 4 5 7 9 1 3 2   1 3 2 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06667   0.06667   0.06667   0.06667   0.06667   0.06667
 Weight factors for state symmetry  2:    0.06667   0.06667   0.06667   0.06667   0.06667   0.06667
 Weight factors for state symmetry  3:    0.06667   0.06667   0.06667
 
 Number of orbital rotations:  2153  ( 24 closed/active, 1179 closed/virtual, 0 active/active, 950 active/virtual )
 Total number of variables:    8126
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5   20    0   -266.88387849    -266.89323253   -0.00935404    0.11393224 0.00006813 0.00005579  0.17E+00      4.78
   2    7   24    0   -266.89334426    -266.89334840   -0.00000414    0.00258020 0.00000162 0.00000128  0.42E-02     10.01
   3    6   21    0   -266.89334840    -266.89334840   -0.00000000    0.00000183 0.00000000 0.00000000  0.14E-04     15.13

 CONVERGENCE REACHED!  Final gradient:    0.00000013 ( 0.13E-06)
                       Final energy:   -266.89334840
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -266.998361611501
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.89339403
 One electron energy                          -467.21731925
 Two electron energy                           200.21895763
 Virial ratio                                    3.59490285
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -266.998361611366
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.89339406
 One electron energy                          -467.21731927
 Two electron energy                           200.21895766
 Virial ratio                                    3.59490285
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -266.998361611231
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.89339410
 One electron energy                          -467.21731930
 Two electron energy                           200.21895769
 Virial ratio                                    3.59490285
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -266.781435048435
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.28460197
 One electron energy                          -461.48757648
 Two electron energy                           194.70614144
 Virial ratio                                    3.60822675
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -266.781435048393
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.28460198
 One electron energy                          -461.48757649
 Two electron energy                           194.70614145
 Virial ratio                                    3.60822675
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -266.781435048337
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.28460199
 One electron energy                          -461.48757651
 Two electron energy                           194.70614146
 Virial ratio                                    3.60822675
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -266.954323335029
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.86934353
 One electron energy                          -467.11300504
 Two electron energy                           200.15868171
 Virial ratio                                    3.59508143
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -266.954323334994
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.86934354
 One electron energy                          -467.11300505
 Two electron energy                           200.15868171
 Virial ratio                                    3.59508143
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -266.954323334757
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.86934357
 One electron energy                          -467.11300507
 Two electron energy                           200.15868174
 Virial ratio                                    3.59508143
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -266.954323334523
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.86934360
 One electron energy                          -467.11300510
 Two electron energy                           200.15868177
 Virial ratio                                    3.59508143
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -266.954323334486
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.86934361
 One electron energy                          -467.11300511
 Two electron energy                           200.15868177
 Virial ratio                                    3.59508143
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -266.914475767166
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.83510334
 One electron energy                          -466.87307636
 Two electron energy                           199.95860059
 Virial ratio                                    3.59555801
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Quintet
 =============================
 !MCSCF STATE 1.1 Quintet Energy              -266.791581188984
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.21843560
 One electron energy                          -461.20343874
 Two electron energy                           194.41185755
 Virial ratio                                    3.61001433
 
 !MCSCF STATE 1.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quintet
 =============================
 !MCSCF STATE 2.1 Quintet Energy              -266.791581188978
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.21843560
 One electron energy                          -461.20343875
 Two electron energy                           194.41185756
 Virial ratio                                    3.61001432
 
 !MCSCF STATE 2.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quintet
 =============================
 !MCSCF STATE 3.1 Quintet Energy              -266.791581188970
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.21843561
 One electron energy                          -461.20343876
 Two electron energy                           194.41185757
 Virial ratio                                    3.61001432
 
 !MCSCF STATE 3.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999985944
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000015441
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999745
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.999999992771
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.000000082182
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.999999921601
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.992376815800
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000001018
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999940
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000906
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.007623182334
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000001
 !MCSCF expec      <1.1 Quintet|LXLX|1.1 Quintet>     0.999999999985
 !MCSCF expec      <2.1 Quintet|LXLX|2.1 Quintet>     0.000000178400
 !MCSCF expec      <3.1 Quintet|LXLX|3.1 Quintet>     0.999999999991
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000016896
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999986770
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999998008
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.000000014810
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999992177
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.999999986869
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.735849817058
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999999637
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000016
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000102
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.264150183186
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000001
 !MCSCF expec      <1.1 Quintet|LYLY|1.1 Quintet>     0.000000003396
 !MCSCF expec      <2.1 Quintet|LYLY|2.1 Quintet>     0.999999821660
 !MCSCF expec      <3.1 Quintet|LYLY|3.1 Quintet>     0.999999996755
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999997160
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999997789
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000002247
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.999999992403
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.999999925624
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.000000091513
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.271773367141
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.999999999345
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000043
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999998991
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.728226634479
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000001
 !MCSCF expec      <1.1 Quintet|LZLZ|1.1 Quintet>     0.999999996601
 !MCSCF expec      <2.1 Quintet|LZLZ|2.1 Quintet>     0.999999999921
 !MCSCF expec      <3.1 Quintet|LZLZ|3.1 Quintet>     0.000000003235
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     1.999999999984
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     1.999999999984
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     1.999999999984
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     5.999999999999
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     5.999999999999
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     5.999999999999
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     5.999999999999
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     5.999999999999
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000002
 !MCSCF expec      <1.1 Quintet|L**2|1.1 Quintet>     1.999999999981
 !MCSCF expec      <2.1 Quintet|L**2|2.1 Quintet>     1.999999999981
 !MCSCF expec      <3.1 Quintet|L**2|3.1 Quintet>     1.999999999981
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 6 3 5 1 1 4 3   5 2 6 1 4 3 5 2 6 1   3 5 4 2 6 910131415   812 711 3 5 4 6 2 1
                                       10131415 9 812 711 3   5 4 6 2 113101415 8  1211 9 7 3 5 6 4 2 1  13101514 812 911 7 4
                                        3 5 2 6221618202419  23262717212528 9 7 8  121114151310 1 4 2 6   3 5 9 7 81211141513
                                       10 1 4 2 6 3 5 4 2 6   3 5 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 2 3 1 1   3 2 4 6 810 9 7 5 1   3 2 4 9 7 810 6 5 1   2 3 4 7 9 810 6 5 4
                                        6 810 7 9 518201517  11141621131912 2 1 3   4 6 810 9 7 5201817  1514162113121911 7 9
                                        4 810 6 5 2 1 3 4 6  10 8 5 9 72018151714  162113121911 2 1 3 4   6 510 8 9 711192113
                                       12141615172018 3 1 2   4 6 5 810 7 9 3 1 2   3 2 1 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.21329     1  1  s    0.99995
    2.1     2.00000    -2.03344     1  1  d1+  1.00037
    3.1     2.00000    -2.03344     1  1  d0   1.00037
    4.1     2.00000    -2.03344     1  1  d1-  1.00037
    5.1     2.00000    -2.03344     1  1  d2-  1.00037
    6.1     2.00000    -2.03344     1  1  d2+  1.00037
    7.1     1.99517    -0.81127     1  1  s   -0.43183    1  5  s    0.61338    1  6  s    0.51177
    1.2     2.00000    -5.17843     1  1  py   1.00032
    2.2     2.00000    -5.17843     1  1  px   1.00032
    3.2     2.00000    -5.17843     1  1  pz  -1.00032
    4.2     1.19925    -0.28134     1  1  pz   0.31610    1  5  pz  -0.49678    1  6  pz  -0.37192
    5.2     1.19925    -0.28134     1  1  py  -0.31610    1  5  py   0.49678    1  6  py   0.37192
    6.2     1.19925    -0.28134     1  1  px  -0.31610    1  5  px   0.49678    1  6  px   0.37192
    7.2     0.13569     0.03848     1 12  py   0.79716    1 13  py   0.26769
    8.2     0.13569     0.03848     1 12  pz   0.79716    1 13  pz   0.26769
    9.2     0.13569     0.03848     1 12  px   0.79716    1 13  px   0.26769
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa000       0.00005313      0.00004689      0.99712054     -0.00000580     -0.00001816      0.06659213
 2 aa2000       0.00011822      0.99712053     -0.00004689      0.00000566     -0.06659214     -0.00001816
 2 a2a000       0.99712053     -0.00011822     -0.00005313      0.06659214      0.00000566      0.00000580
 2 aaab00      -0.05804209      0.00000688      0.00000309      0.84945712      0.00007216      0.00007402
 2 aaa00b       0.00000688      0.05804209     -0.00000273     -0.00007218      0.84945709      0.00023164
 2 aaa0b0      -0.00000309     -0.00000273     -0.05804209     -0.00007400     -0.00023165      0.84945709
 2 baaa00       0.01616856     -0.00000192     -0.00000086     -0.31810276     -0.00002702     -0.00002772
 2 aaba00       0.01616856     -0.00000192     -0.00000086     -0.31810276     -0.00002702     -0.00002772
 2 aab0a0       0.00000086      0.00000076      0.01616856      0.00002771      0.00008675     -0.31810275
 2 baa00a      -0.00000192     -0.01616856      0.00000076      0.00002703     -0.31810275     -0.00008675
 2 aba0a0       0.00000086      0.00000076      0.01616856      0.00002771      0.00008675     -0.31810275
 2 aba00a      -0.00000192     -0.01616856      0.00000076      0.00002703     -0.31810275     -0.00008675
 2 abaa00       0.02570498     -0.00000305     -0.00000137     -0.21325161     -0.00001812     -0.00001858
 2 aab00a      -0.00000305     -0.02570498      0.00000121      0.00001812     -0.21325160     -0.00005815
 2 baa0a0       0.00000137      0.00000121      0.02570498      0.00001858      0.00005815     -0.21325160
 2 02a0a0       0.00306431     -0.00000036     -0.00000016      0.08355590      0.00000710      0.00000728
 2 a2000a       0.00306431     -0.00000036     -0.00000016      0.08355590      0.00000710      0.00000728
 2 2a000a       0.00000016      0.00000014      0.00306431     -0.00000728     -0.00002279      0.08355589
 2 0a20a0       0.00000036      0.00306431     -0.00000014      0.00000710     -0.08355589     -0.00002279
 2 20aa00      -0.00000016     -0.00000014     -0.00306431      0.00000728      0.00002279     -0.08355589
 2 a02a00       0.00000036      0.00306431     -0.00000014      0.00000710     -0.08355589     -0.00002279
 2 a0a200      -0.01500690      0.00000178      0.00000080      0.06759743      0.00000574      0.00000589
 2 0aa020      -0.00000080     -0.00000071     -0.01500690     -0.00000589     -0.00001843      0.06759743
 2 aa0002      -0.00000178     -0.01500690      0.00000071      0.00000574     -0.06759742     -0.00001843
 
 Energy:     -266.99836161   -266.99836161   -266.99836161   -266.78143505   -266.78143505   -266.78143505
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202000      -0.20919144      0.00000573     -0.00000048     -0.00001231      0.78670728      0.56571383
 2 022000       0.78590422     -0.00002898     -0.00000008      0.00001164     -0.21218854      0.56571382
 2 ab2000       0.00000020      0.00000159      0.70498373     -0.00000261      0.00000048      0.00000000
 2 ba2000      -0.00000020     -0.00000159     -0.70498373      0.00000261     -0.00000048     -0.00000000
 2 2ab000      -0.00000804     -0.00000496      0.00000261      0.70498373      0.00000889      0.00000000
 2 2ba000       0.00000804      0.00000496     -0.00000261     -0.70498373     -0.00000889     -0.00000000
 2 b2a000      -0.00002651     -0.70498373      0.00000159     -0.00000496     -0.00000191      0.00000000
 2 a2b000       0.00002651      0.70498373     -0.00000159      0.00000496      0.00000191     -0.00000000
 2 220000      -0.57671277      0.00002324      0.00000056      0.00000067     -0.57451876      0.56571383
 0 222000      -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.17511357
 
 Energy:     -266.95432334   -266.95432333   -266.95432333   -266.95432333   -266.95432333   -266.91447577
 
 
 CI Coefficients of symmetry 1 (Quintet)
 =======================================
 
 2 aaa00a       0.00000240      0.99633654      0.00000830
 2 aaaa00       0.99633654     -0.00000240      0.00005801
 2 aaa0a0      -0.00005801     -0.00000830      0.99633654
 2 a0aa0a       0.00000014      0.05983378      0.00000050
 2 a0aaa0      -0.00000348     -0.00000050      0.05983378
 2 0aa0aa       0.00000014      0.05983378      0.00000050
 2 0aaaa0      -0.05983378      0.00000014     -0.00000348
 2 aa0a0a       0.05983377     -0.00000014      0.00000348
 2 aa00aa      -0.00000348     -0.00000050      0.05983377
 
 Energy:     -266.79158119   -266.79158119   -266.79158119
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        3.11       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        23.64     13.20      0.90      9.32
 REAL TIME  *        31.19 SEC
 DISK USED  *        97.43 MB (local),        4.24 GB (total)
 SF USED    *       162.92 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -266.9983616   2.0
    -266.9983616   2.0
    -266.9983616   2.0
    -266.7814350   2.0
    -266.7814350   2.0
    -266.7814350   2.0
    -266.9543233   6.0
    -266.9543233   6.0
    -266.9543233   6.0
    -266.9543233   6.0
    -266.9543233   6.0
    -266.9144758   0.0
    -266.7915812   2.0
    -266.7915812   2.0
    -266.7915812   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 24
 Maximum number of shells:             6
 Maximum number of spin couplings:   297

 Reference space:      196 conf      294 CSFs
 N elec internal:    19609 conf    81480 CSFs
 N-1 el internal:    20264 conf   153948 CSFs
 N-2 el internal:    11240 conf   124860 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 12


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.99836161
     2      -266.99836161
     3      -266.99836161
     4      -266.78143505
     5      -266.78143505
     6      -266.78143505

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1650D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2236D-06

 Number of blocks in overlap matrix:   562   Smallest eigenvalue:  0.17D-06
 Number of N-2 electron functions:    1496
 Number of N-1 electron functions:  153948

 Number of internal configurations:                40740
 Number of singly external configurations:      20398758
 Number of doubly external configurations:      26272041
 Total number of contracted configurations:     46711539
 Total number of uncontracted configurations: 2209648584

 Diagonal Coupling coefficients finished.               Storage:  25198712 words, CPU-Time:     52.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   5210604 words, CPU-time:      7.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.99836161     0.00000000    -1.14671745  0.43D-01  0.12D+00    67.10
    1     2     2     1.00000000     0.00000000  -266.99836161     0.00000000    -1.14700495  0.44D-01  0.12D+00    67.10
    1     3     3     1.00000000     0.00000000  -266.99836161     0.00000000    -1.14668683  0.43D-01  0.12D+00    67.10
    1     4     4     1.00000000     0.00000000  -266.78143505    -0.00000000    -1.11527240  0.50D-01  0.11D+00    67.10
    1     5     5     1.00000000     0.00000000  -266.78143505     0.00000000    -1.11521440  0.50D-01  0.11D+00    67.10
    1     6     6     1.00000000     0.00000000  -266.78143505     0.00000000    -1.11525783  0.50D-01  0.11D+00    67.10
    2     1     1     1.10594136    -0.93232066  -267.93068227    -0.93232066    -0.02975829  0.50D-02  0.18D-02   756.49
    2     2     2     1.10600707    -0.93224839  -267.93061000    -0.93224839    -0.02981613  0.50D-02  0.18D-02   756.49
    2     3     3     1.10616312    -0.93215169  -267.93051330    -0.93215169    -0.02992931  0.51D-02  0.18D-02   756.49
    2     4     4     1.10729368    -0.91461458  -267.69604963    -0.91461458    -0.02620456  0.46D-02  0.15D-02   756.49
    2     5     5     1.10731285    -0.91460840  -267.69604345    -0.91460840    -0.02620809  0.46D-02  0.15D-02   756.49
    2     6     6     1.10731812    -0.91459606  -267.69603111    -0.91459606    -0.02622350  0.46D-02  0.15D-02   756.49
    3     1     1     1.09246471    -0.96086679  -267.95922840    -0.02854613    -0.00065327  0.74D-04  0.77D-04  1445.11
    3     2     2     1.09246831    -0.96086625  -267.95922786    -0.02861786    -0.00065440  0.74D-04  0.77D-04  1445.11
    3     3     3     1.09244880    -0.96086454  -267.95922616    -0.02871285    -0.00065443  0.74D-04  0.78D-04  1445.11
    3     4     4     1.09040154    -0.94000492  -267.72143997    -0.02539034    -0.00043929  0.59D-04  0.47D-04  1445.11
    3     5     5     1.09040133    -0.94000464  -267.72143969    -0.02539624    -0.00043948  0.59D-04  0.47D-04  1445.11
    3     6     6     1.09040123    -0.94000443  -267.72143948    -0.02540838    -0.00043963  0.59D-04  0.47D-04  1445.11
    4     1     1     1.09272653    -0.96160883  -267.95997044    -0.00074204    -0.00004909  0.21D-05  0.78D-05  2134.67
    4     2     2     1.09272441    -0.96160858  -267.95997020    -0.00074234    -0.00004936  0.21D-05  0.78D-05  2134.67
    4     3     3     1.09272123    -0.96160858  -267.95997019    -0.00074404    -0.00004942  0.21D-05  0.79D-05  2134.67
    4     4     4     1.08982569    -0.94049596  -267.72193101    -0.00049104    -0.00002984  0.28D-05  0.51D-05  2134.67
    4     5     5     1.08982550    -0.94049596  -267.72193100    -0.00049131    -0.00002980  0.28D-05  0.51D-05  2134.67
    4     6     6     1.08982532    -0.94049582  -267.72193086    -0.00049138    -0.00002983  0.28D-05  0.51D-05  2134.67
    5     1     1     1.09326554    -0.96167291  -267.96003452    -0.00006408    -0.00000457  0.25D-06  0.65D-06  2825.52
    5     2     2     1.09326570    -0.96167287  -267.96003449    -0.00006429    -0.00000459  0.25D-06  0.65D-06  2825.52
    5     3     3     1.09326607    -0.96167285  -267.96003446    -0.00006427    -0.00000459  0.26D-06  0.65D-06  2825.52
    5     4     4     1.09000488    -0.94053772  -267.72197277    -0.00004176    -0.00000445  0.30D-06  0.69D-06  2825.52
    5     5     5     1.09000486    -0.94053765  -267.72197270    -0.00004169    -0.00000445  0.30D-06  0.69D-06  2825.52
    5     6     6     1.09000469    -0.94053757  -267.72197262    -0.00004175    -0.00000445  0.30D-06  0.69D-06  2825.52
    6     1     1     1.09331848    -0.96167856  -267.96004017    -0.00000565    -0.00000038  0.25D-07  0.51D-07  3515.35
    6     2     2     1.09331853    -0.96167855  -267.96004016    -0.00000567    -0.00000038  0.25D-07  0.51D-07  3515.35
    6     3     3     1.09331885    -0.96167854  -267.96004015    -0.00000569    -0.00000038  0.25D-07  0.51D-07  3515.35
    6     4     4     1.09005250    -0.94054365  -267.72197870    -0.00000593    -0.00000050  0.39D-07  0.68D-07  3515.35
    6     5     5     1.09005245    -0.94054358  -267.72197862    -0.00000593    -0.00000050  0.40D-07  0.68D-07  3515.35
    6     6     6     1.09005233    -0.94054350  -267.72197855    -0.00000593    -0.00000050  0.39D-07  0.68D-07  3515.35
    7     1     1     1.09333348    -0.96167901  -267.96004062    -0.00000045    -0.00000004  0.36D-08  0.56D-08  4205.36
    7     2     2     1.09333346    -0.96167900  -267.96004061    -0.00000045    -0.00000004  0.36D-08  0.56D-08  4205.36
    7     3     3     1.09333355    -0.96167899  -267.96004060    -0.00000045    -0.00000004  0.36D-08  0.57D-08  4205.36
    7     4     4     1.09006576    -0.94054426  -267.72197930    -0.00000061    -0.00000006  0.42D-08  0.99D-08  4205.36
    7     5     5     1.09006566    -0.94054418  -267.72197923    -0.00000061    -0.00000006  0.42D-08  0.99D-08  4205.36
    7     6     6     1.09006557    -0.94054411  -267.72197916    -0.00000061    -0.00000006  0.42D-08  0.99D-08  4205.36
    8     1     1     1.09333340    -0.96167901  -267.96004062    -0.00000000    -0.00000004  0.36D-08  0.56D-08  4630.91
    8     2     2     1.09333339    -0.96167900  -267.96004061    -0.00000000    -0.00000004  0.36D-08  0.56D-08  4630.91
    8     3     3     1.09333348    -0.96167899  -267.96004060    -0.00000000    -0.00000004  0.36D-08  0.56D-08  4630.91
    8     4     4     1.09006594    -0.94054435  -267.72197940    -0.00000009    -0.00000001  0.33D-09  0.87D-09  4630.91
    8     5     5     1.09006585    -0.94054427  -267.72197932    -0.00000009    -0.00000001  0.32D-09  0.87D-09  4630.91
    8     6     6     1.09006575    -0.94054420  -267.72197925    -0.00000009    -0.00000001  0.33D-09  0.87D-09  4630.91


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.4%  27.8%
 P   0.3%  33.4%  18.7%

 Initialization:   1.3%
 Other:           17.9%

 Total CPU:     4630.9 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//2000          -0.0005773  -0.0009083   0.9552391  -0.0349301   0.0000433   0.0000069
 2222222222/2/000           0.9552380   0.0016864   0.0005789   0.0000065  -0.0003013   0.0349288
 22222222222//000          -0.0016869   0.9552378   0.0009073   0.0000434   0.0349288   0.0003012
 2222222222///00\          -0.0000213  -0.0000335   0.0352447   0.9407102  -0.0011660  -0.0001853
 2222222222///\00          -0.0352447  -0.0000622  -0.0000214   0.0001753  -0.0081131   0.9406762
 2222222222///0\0           0.0000622  -0.0352446  -0.0000335   0.0011675   0.9406754   0.0081129
 2222222222//\00/           0.0000034   0.0000054  -0.0056845   0.0813781  -0.0001009  -0.0000160
 2222222222/02/00          -0.0000001  -0.0000002   0.0002014  -0.0792064   0.0000982   0.0000156
 22222222220/20/0          -0.0000001  -0.0000002   0.0002014  -0.0792064   0.0000982   0.0000156
 222222222220//00           0.0000004  -0.0002014  -0.0000002  -0.0000983  -0.0792034  -0.0006831
 222222222202/0/0           0.0002015   0.0000004   0.0000001   0.0000148  -0.0006831   0.0792033
 2222222222/2000/           0.0002014   0.0000004   0.0000001   0.0000148  -0.0006831   0.0792033
 22222222222/000/          -0.0000004   0.0002015   0.0000002   0.0000983   0.0792033   0.0006831
 2222222222/\/0/0           0.0000087  -0.0049229  -0.0000047  -0.0000875  -0.0704730  -0.0006078
 2222222222/\//00           0.0049229   0.0000087   0.0000030   0.0000131  -0.0006078   0.0704727
 2222222222//0002           0.0000073   0.0000116  -0.0121525  -0.0675642   0.0000837   0.0000133
 2222222222/0/200          -0.0121525  -0.0000215  -0.0000074   0.0000126  -0.0005827   0.0675620
 22222222220//020           0.0000215  -0.0121525  -0.0000115   0.0000839   0.0675619   0.0005827
 22222222220//0/\          -0.0000064  -0.0000101   0.0106559   0.0553163  -0.0000686  -0.0000109
 2222222222/0//0\          -0.0000064  -0.0000101   0.0106559   0.0553162  -0.0000686  -0.0000109
 2222222222/0//\0           0.0000188  -0.0106559  -0.0000101   0.0000687   0.0553146   0.0004771
 22222222220//\/0           0.0106334   0.0000188   0.0000064  -0.0000094   0.0004362  -0.0505738
 2222222222//0\0/          -0.0106335  -0.0000188  -0.0000064   0.0000094  -0.0004362   0.0505737
 2222222222//00\/           0.0000188  -0.0106334  -0.0000101   0.0000628   0.0505732   0.0004362

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955892   -0.000578   -0.001688    0.028161    0.000017   -0.000050
 2           0.001688   -0.000909    0.955892    0.000050    0.000027    0.028161
 3           0.000579    0.955893    0.000908    0.000017   -0.028161    0.000027
 4          -0.000005    0.028998   -0.000036    0.000178    0.957328    0.001188
 5           0.000250   -0.000036   -0.028997   -0.008256   -0.001187    0.957292
 6          -0.028997   -0.000006   -0.000250    0.957293   -0.000189    0.008256

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956308   -0.000000   -0.000000   -0.000000    0.000004   -0.000397
 2          -0.000000    0.956308    0.000000   -0.000001   -0.000397   -0.000004
 3          -0.000000    0.000000    0.956308    0.000397   -0.000001   -0.000000
 4          -0.000000   -0.000001    0.000397    0.957767   -0.000000    0.000000
 5           0.000004   -0.000397   -0.000001   -0.000000    0.957767    0.000000
 6          -0.000397   -0.000004   -0.000000    0.000000    0.000000    0.957767


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95589213 (fixed)   0.95635009 (relaxed)   0.95630844 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011837   -0.00015081   -0.83777815
 Singles      0.01202924   -0.04577775   -0.05243474
 Pairs        0.08131521    0.00006417   -0.07146612
 Total        1.09346282   -0.04586440   -0.96167901
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99816816
 Nuclear energy                         0.00000000
 Kinetic energy                       103.71676151
 One electron energy                 -466.62599857
 Two electron energy                  198.66595795
 Virial quotient                       -2.58357508
 Correlation energy                    -0.96187246
 !MRCI STATE 1.1 Energy              -267.960040621448

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.04993993 (Davidson, fixed reference)
 Cluster corrected energies          -268.04984834 (Davidson, relaxed reference)
 Cluster corrected energies          -268.04993993 (Davidson, rotated reference)

 Cluster corrected energies          -268.04845957 (Pople, fixed reference)
 Cluster corrected energies          -268.04836219 (Pople, relaxed reference)
 Cluster corrected energies          -268.04845957 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95589188 (fixed)   0.95635009 (relaxed)   0.95630845 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011837   -0.00015081   -0.80449057
 Singles      0.01202922   -0.04577782   -0.05243473
 Pairs        0.08131521   -0.03633450   -0.10475369
 Total        1.09346281   -0.08226312   -0.96167900
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99816816
 Nuclear energy                         0.00000000
 Kinetic energy                       103.71675913
 One electron energy                 -466.62599655
 Two electron energy                  198.66595594
 Virial quotient                       -2.58357514
 Correlation energy                    -0.96187245
 !MRCI STATE 2.1 Energy              -267.960040610050

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.04993991 (Davidson, fixed reference)
 Cluster corrected energies          -268.04984831 (Davidson, relaxed reference)
 Cluster corrected energies          -268.04993991 (Davidson, rotated reference)

 Cluster corrected energies          -268.04845955 (Pople, fixed reference)
 Cluster corrected energies          -268.04836216 (Pople, relaxed reference)
 Cluster corrected energies          -268.04845955 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95589315 (fixed)   0.95635005 (relaxed)   0.95630841 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011837   -0.00015081   -0.83768779
 Singles      0.01202929   -0.04577779   -0.05243475
 Pairs        0.08131524   -0.00003451   -0.07155645
 Total        1.09346290   -0.04596311   -0.96167899
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99816816
 Nuclear energy                         0.00000000
 Kinetic energy                       103.71676108
 One electron energy                 -466.62599939
 Two electron energy                  198.66595879
 Virial quotient                       -2.58357509
 Correlation energy                    -0.96187243
 !MRCI STATE 3.1 Energy              -267.960040599123

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.04993999 (Davidson, fixed reference)
 Cluster corrected energies          -268.04984839 (Davidson, relaxed reference)
 Cluster corrected energies          -268.04993999 (Davidson, rotated reference)

 Cluster corrected energies          -268.04845963 (Pople, fixed reference)
 Cluster corrected energies          -268.04836225 (Pople, relaxed reference)
 Cluster corrected energies          -268.04845963 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95732760 (fixed)   0.95777819 (relaxed)   0.95776735 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006258   -0.00020324   -0.80890736
 Singles      0.01661210   -0.05769055   -0.06725555
 Pairs        0.07345948   -0.00109511   -0.06438143
 Total        1.09013416   -0.05898890   -0.94054435
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.78162850
 Nuclear energy                         0.00000000
 Kinetic energy                       103.38527813
 One electron energy                 -461.43869063
 Two electron energy                  193.71671123
 Virial quotient                       -2.58955612
 Correlation energy                    -0.94035090
 !MRCI STATE 4.1 Energy              -267.721979395065

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.80673713 (Davidson, fixed reference)
 Cluster corrected energies          -267.80671391 (Davidson, relaxed reference)
 Cluster corrected energies          -267.80673713 (Davidson, rotated reference)

 Cluster corrected energies          -267.80510162 (Pople, fixed reference)
 Cluster corrected energies          -267.80507708 (Pople, relaxed reference)
 Cluster corrected energies          -267.80510162 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95729205 (fixed)   0.95777823 (relaxed)   0.95776739 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006258   -0.00020324   -0.00055283
 Singles      0.01661203   -0.05769046   -0.06725542
 Pairs        0.07345946   -0.88231002   -0.87273603
 Total        1.09013407   -0.94020372   -0.94054427
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.78162850
 Nuclear energy                         0.00000000
 Kinetic energy                       103.38527718
 One electron energy                 -461.43869014
 Two electron energy                  193.71671082
 Virial quotient                       -2.58955614
 Correlation energy                    -0.94035083
 !MRCI STATE 5.1 Energy              -267.721979322946

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.80673697 (Davidson, fixed reference)
 Cluster corrected energies          -267.80671374 (Davidson, relaxed reference)
 Cluster corrected energies          -267.80673697 (Davidson, rotated reference)

 Cluster corrected energies          -267.80510145 (Pople, fixed reference)
 Cluster corrected energies          -267.80507690 (Pople, relaxed reference)
 Cluster corrected energies          -267.80510145 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95729281 (fixed)   0.95777828 (relaxed)   0.95776742 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006259   -0.00020324   -0.80293173
 Singles      0.01661196   -0.05769037   -0.06725528
 Pairs        0.07345943   -0.00760954   -0.07035719
 Total        1.09013398   -0.06550315   -0.94054420
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.78162850
 Nuclear energy                         0.00000000
 Kinetic energy                       103.38527749
 One electron energy                 -461.43869028
 Two electron energy                  193.71671103
 Virial quotient                       -2.58955613
 Correlation energy                    -0.94035075
 !MRCI STATE 6.1 Energy              -267.721979250238

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.80673681 (Davidson, fixed reference)
 Cluster corrected energies          -267.80671358 (Davidson, relaxed reference)
 Cluster corrected energies          -267.80673681 (Davidson, rotated reference)

 Cluster corrected energies          -267.80510128 (Pople, fixed reference)
 Cluster corrected energies          -267.80507673 (Pople, relaxed reference)
 Cluster corrected energies          -267.80510128 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     2152.89       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4939.30   4915.64     13.20      0.90      9.32
 REAL TIME  *      5108.74 SEC
 DISK USED  *         2.19 GB (local),       63.02 GB (total)
 SF USED    *        21.52 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -268.04993993  AU                              
 SETTING HLSDIAG(2)     =      -268.04993991  AU                              
 SETTING HLSDIAG(3)     =      -268.04993999  AU                              
 SETTING HLSDIAG(4)     =      -267.80673713  AU                              
 SETTING HLSDIAG(5)     =      -267.80673697  AU                              
 SETTING HLSDIAG(6)     =      -267.80673681  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 24
 Maximum number of shells:             7
 Maximum number of spin couplings:   132

 Reference space:      231 conf      280 CSFs
 N elec internal:    19959 conf    50764 CSFs
 N-1 el internal:    21164 conf    87808 CSFs
 N-2 el internal:    12950 conf    70120 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 12


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.95432334
     2      -266.95432333
     3      -266.95432333
     4      -266.95432333
     5      -266.95432333
     6      -266.91447577

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2327D-06

 Number of blocks in overlap matrix:   600   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    1414
 Number of N-1 electron functions:   87808

 Number of internal configurations:                25648
 Number of singly external configurations:      11636198
 Number of doubly external configurations:      24833389
 Total number of contracted configurations:     36495235
 Total number of uncontracted configurations: 1241831836

 Diagonal Coupling coefficients finished.               Storage:  17996529 words, CPU-Time:     15.97 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3990879 words, CPU-time:      6.90 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.95432334     0.00000000    -1.15389996  0.48D-01  0.12D+00    28.61
    1     2     2     1.00000000     0.00000000  -266.95432333     0.00000000    -1.15721494  0.48D-01  0.12D+00    28.61
    1     3     3     1.00000000     0.00000000  -266.95432333     0.00000000    -1.15781812  0.48D-01  0.12D+00    28.61
    1     4     4     1.00000000     0.00000000  -266.95432333     0.00000000    -1.15720580  0.48D-01  0.12D+00    28.61
    1     5     5     1.00000000     0.00000000  -266.95432333     0.00000000    -1.15371902  0.48D-01  0.12D+00    28.61
    1     6     6     1.00000000     0.00000000  -266.91447577     0.00000000    -1.12616406  0.19D-01  0.12D+00    28.61
    2     1     1     1.11002589    -0.93988467  -267.89420800    -0.93988467    -0.02944152  0.50D-02  0.17D-02   413.24
    2     2     2     1.11009056    -0.93967234  -267.89399568    -0.93967234    -0.02970353  0.51D-02  0.17D-02   413.24
    2     3     3     1.11012248    -0.93879244  -267.89311577    -0.93879244    -0.03062437  0.50D-02  0.19D-02   413.24
    2     4     4     1.11010157    -0.93863073  -267.89295407    -0.93863073    -0.03078591  0.51D-02  0.19D-02   413.24
    2     5     5     1.11012671    -0.93859983  -267.89292316    -0.93859983    -0.03086167  0.52D-02  0.19D-02   413.24
    2     6     6     1.09940267    -0.93885411  -267.85332988    -0.93885411    -0.02260347  0.33D-02  0.15D-02   413.24
    3     1     1     1.09622212    -0.96761075  -267.92193409    -0.02772609    -0.00071538  0.97D-04  0.75D-04   798.80
    3     2     2     1.09620463    -0.96759379  -267.92191713    -0.02792145    -0.00073197  0.99D-04  0.77D-04   798.80
    3     3     3     1.09603721    -0.96758493  -267.92190826    -0.02879249    -0.00072520  0.94D-04  0.79D-04   798.80
    3     4     4     1.09599232    -0.96756868  -267.92189201    -0.02893795    -0.00073943  0.96D-04  0.81D-04   798.80
    3     5     5     1.09601394    -0.96756589  -267.92188923    -0.02896606    -0.00074523  0.97D-04  0.81D-04   798.80
    3     6     6     1.09239793    -0.96071829  -267.87519406    -0.02186418    -0.00041565  0.35D-04  0.52D-04   798.80
    4     1     1     1.09585094    -0.96834576  -267.92266910    -0.00073501    -0.00004108  0.32D-05  0.59D-05  1185.47
    4     2     2     1.09583729    -0.96834412  -267.92266745    -0.00075033    -0.00004225  0.33D-05  0.61D-05  1185.47
    4     3     3     1.09577043    -0.96833925  -267.92266259    -0.00075432    -0.00004495  0.32D-05  0.68D-05  1185.47
    4     4     4     1.09576192    -0.96833811  -267.92266145    -0.00076944    -0.00004592  0.33D-05  0.69D-05  1185.47
    4     5     5     1.09575525    -0.96833796  -267.92266129    -0.00077207    -0.00004601  0.33D-05  0.70D-05  1185.47
    4     6     6     1.09302447    -0.96116887  -267.87564464    -0.00045058    -0.00002801  0.18D-05  0.43D-05  1185.47
    5     1     1     1.09608499    -0.96839354  -267.92271687    -0.00004777    -0.00000252  0.87D-07  0.43D-06  1571.61
    5     2     2     1.09608239    -0.96839340  -267.92271674    -0.00004928    -0.00000263  0.92D-07  0.44D-06  1571.61
    5     3     3     1.09606911    -0.96839239  -267.92271573    -0.00005314    -0.00000315  0.11D-06  0.53D-06  1571.61
    5     4     4     1.09606856    -0.96839237  -267.92271570    -0.00005426    -0.00000318  0.11D-06  0.54D-06  1571.61
    5     5     5     1.09606751    -0.96839232  -267.92271565    -0.00005436    -0.00000320  0.11D-06  0.54D-06  1571.61
    5     6     6     1.09348818    -0.96120188  -267.87567765    -0.00003302    -0.00000208  0.11D-06  0.32D-06  1571.61
    6     1     1     1.09613573    -0.96839665  -267.92271998    -0.00000311    -0.00000023  0.20D-07  0.32D-07  1958.28
    6     2     2     1.09613585    -0.96839664  -267.92271997    -0.00000324    -0.00000023  0.20D-07  0.32D-07  1958.28
    6     3     3     1.09613409    -0.96839631  -267.92271964    -0.00000392    -0.00000028  0.24D-07  0.39D-07  1958.28
    6     4     4     1.09613379    -0.96839631  -267.92271964    -0.00000394    -0.00000028  0.24D-07  0.39D-07  1958.28
    6     5     5     1.09613366    -0.96839629  -267.92271963    -0.00000397    -0.00000028  0.24D-07  0.40D-07  1958.28
    6     6     6     1.09353963    -0.96120446  -267.87568023    -0.00000258    -0.00000018  0.14D-07  0.23D-07  1958.28
    7     1     1     1.09615662    -0.96839692  -267.92272025    -0.00000027    -0.00000002  0.19D-08  0.30D-08  2344.77
    7     2     2     1.09615669    -0.96839690  -267.92272024    -0.00000026    -0.00000002  0.18D-08  0.29D-08  2344.77
    7     3     3     1.09615664    -0.96839664  -267.92271997    -0.00000033    -0.00000003  0.24D-08  0.38D-08  2344.77
    7     4     4     1.09615657    -0.96839664  -267.92271997    -0.00000033    -0.00000003  0.24D-08  0.39D-08  2344.77
    7     5     5     1.09615653    -0.96839662  -267.92271996    -0.00000033    -0.00000003  0.24D-08  0.39D-08  2344.77
    7     6     6     1.09355008    -0.96120467  -267.87568044    -0.00000020    -0.00000002  0.14D-08  0.21D-08  2344.77


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.5%   6.9%
 P   0.4%  34.0%  27.0%

 Initialization:   1.0%
 Other:           29.8%

 Total CPU:     2344.8 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2\000           0.0000148  -0.0000005   0.0103189   0.0578117   0.9512280   0.0000000
 2222222222/\2000           0.0008975   0.0014231   0.8634389  -0.4031435   0.0151348   0.0000000
 22222222222/\000           0.0004820  -0.0005326   0.4032964   0.8616353  -0.0567416   0.0000000
 2222222222202000           0.7756436  -0.0624410  -0.0007582  -0.0001174   0.0000033   0.5427351
 2222222222022000          -0.3337469   0.7029467  -0.0004285   0.0008192  -0.0000396   0.5427355
 2222222222220000          -0.4418963  -0.6405060   0.0011867  -0.0007017   0.0000363   0.5427356
 2222220222222000          -0.0000001  -0.0000003   0.0000000  -0.0000000  -0.0000000  -0.1555138

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.170610    0.000015    0.000899    0.000483    0.939607    0.000000
 2           0.939606   -0.000000    0.001426   -0.000534    0.170609   -0.000000
 3          -0.000867    0.010340    0.865189    0.404114   -0.001193   -0.000000
 4           0.001078    0.057929   -0.403961    0.863382    0.000138    0.000000
 5          -0.000053    0.953157    0.015166   -0.056857   -0.000010   -0.000000
 6           0.000000    0.000000    0.000000    0.000000   -0.000000    0.956082

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954971    0.000000   -0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.954971   -0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.954971    0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.954971    0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.954971    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.956082


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.93960695 (fixed)   0.95505761 (relaxed)   0.95497124 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033808   -0.00055587   -0.83744600
 Singles      0.01414926   -0.05044161   -0.05849026
 Pairs        0.08203986   -0.00000038   -0.07246067
 Total        1.09652720   -0.05099787   -0.96839692
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95432333
 Nuclear energy                         0.00000000
 Kinetic energy                       103.69170977
 One electron energy                 -466.47363686
 Two electron energy                  198.55091661
 Virial quotient                       -2.58383935
 Correlation energy                    -0.96839692
 !MRCI STATE 1.1 Energy              -267.922720252474

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01619690 (Davidson, fixed reference)
 Cluster corrected energies          -268.01600485 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01619690 (Davidson, rotated reference)

 Cluster corrected energies          -268.01582441 (Pople, fixed reference)
 Cluster corrected energies          -268.01561678 (Pople, relaxed reference)
 Cluster corrected energies          -268.01582441 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.93960644 (fixed)   0.95505758 (relaxed)   0.95497121 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033808   -0.00055587   -0.83744647
 Singles      0.01414916   -0.05044143   -0.05849015
 Pairs        0.08204005    0.00000004   -0.07246028
 Total        1.09652728   -0.05099726   -0.96839690
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95432334
 Nuclear energy                         0.00000000
 Kinetic energy                       103.69170983
 One electron energy                 -466.47363715
 Two electron energy                  198.55091692
 Virial quotient                       -2.58383935
 Correlation energy                    -0.96839690
 !MRCI STATE 2.1 Energy              -267.922720236689

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01619696 (Davidson, fixed reference)
 Cluster corrected energies          -268.01600491 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01619696 (Davidson, rotated reference)

 Cluster corrected energies          -268.01582448 (Pople, fixed reference)
 Cluster corrected energies          -268.01561685 (Pople, relaxed reference)
 Cluster corrected energies          -268.01582448 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.86518946 (fixed)   0.95505760 (relaxed)   0.95497123 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033809   -0.00055587   -0.83744506
 Singles      0.01414981   -0.05044272   -0.05849074
 Pairs        0.08203934    0.00000000   -0.07246083
 Total        1.09652725   -0.05099859   -0.96839664
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95432333
 Nuclear energy                         0.00000000
 Kinetic energy                       103.69171368
 One electron energy                 -466.47358883
 Two electron energy                  198.55086886
 Virial quotient                       -2.58383925
 Correlation energy                    -0.96839664
 !MRCI STATE 3.1 Energy              -267.922719971585

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01619663 (Davidson, fixed reference)
 Cluster corrected energies          -268.01600457 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01619663 (Davidson, rotated reference)

 Cluster corrected energies          -268.01582415 (Pople, fixed reference)
 Cluster corrected energies          -268.01561650 (Pople, relaxed reference)
 Cluster corrected energies          -268.01582415 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.86338217 (fixed)   0.95505763 (relaxed)   0.95497126 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033809   -0.00055587   -0.83744513
 Singles      0.01414980   -0.05044270   -0.05849073
 Pairs        0.08203929   -0.00000000   -0.07246078
 Total        1.09652717   -0.05099857   -0.96839664
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95432333
 Nuclear energy                         0.00000000
 Kinetic energy                       103.69171000
 One electron energy                 -466.47358991
 Two electron energy                  198.55086993
 Virial quotient                       -2.58383934
 Correlation energy                    -0.96839664
 !MRCI STATE 4.1 Energy              -267.922719971109

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01619656 (Davidson, fixed reference)
 Cluster corrected energies          -268.01600450 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01619656 (Davidson, rotated reference)

 Cluster corrected energies          -268.01582407 (Pople, fixed reference)
 Cluster corrected energies          -268.01561643 (Pople, relaxed reference)
 Cluster corrected energies          -268.01582407 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95315657 (fixed)   0.95505765 (relaxed)   0.95497127 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033810   -0.00055587   -0.83744511
 Singles      0.01414984   -0.05044274   -0.05849078
 Pairs        0.08203920    0.00000000   -0.07246073
 Total        1.09652714   -0.05099860   -0.96839662
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95432333
 Nuclear energy                         0.00000000
 Kinetic energy                       103.69171187
 One electron energy                 -466.47358690
 Two electron energy                  198.55086695
 Virial quotient                       -2.58383930
 Correlation energy                    -0.96839662
 !MRCI STATE 5.1 Energy              -267.922719956604

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01619652 (Davidson, fixed reference)
 Cluster corrected energies          -268.01600445 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01619652 (Davidson, rotated reference)

 Cluster corrected energies          -268.01582402 (Pople, fixed reference)
 Cluster corrected energies          -268.01561637 (Pople, relaxed reference)
 Cluster corrected energies          -268.01582402 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95608157 (fixed)   0.95623301 (relaxed)   0.95608157 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039481   -0.00035076   -0.00066752
 Singles      0.00632635   -0.03075931   -0.03367314
 Pairs        0.08726067   -0.93009460   -0.92686401
 Total        1.09398182   -0.96120467   -0.96120467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.91447577
 Nuclear energy                         0.00000000
 Kinetic energy                       103.68182271
 One electron energy                 -466.26738618
 Two electron energy                  198.39170574
 Virial quotient                       -2.58363205
 Correlation energy                    -0.96120467
 !MRCI STATE 6.1 Energy              -267.875680435059

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.96601620 (Davidson, fixed reference)
 Cluster corrected energies          -267.96568315 (Davidson, relaxed reference)
 Cluster corrected energies          -267.96601620 (Davidson, rotated reference)

 Cluster corrected energies          -267.96545341 (Pople, fixed reference)
 Cluster corrected energies          -267.96509499 (Pople, relaxed reference)
 Cluster corrected energies          -267.96545341 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     3830.23       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      7419.45   2480.16   4915.64     13.20      0.90      9.32
 REAL TIME  *      7706.57 SEC
 DISK USED  *         3.83 GB (local),      108.89 GB (total)
 SF USED    *        21.52 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =      -268.01619690  AU                              
 SETTING HLSDIAG(8)     =      -268.01619696  AU                              
 SETTING HLSDIAG(9)     =      -268.01619663  AU                              
 SETTING HLSDIAG(10)    =      -268.01619656  AU                              
 SETTING HLSDIAG(11)    =      -268.01619652  AU                              
 SETTING HLSDIAG(12)    =      -267.96601620  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Quintet 
 Number of electrons:                 24
 Maximum number of shells:             5
 Maximum number of spin couplings:   275

 Reference space:       46 conf       50 CSFs
 N elec internal:    12829 conf    34700 CSFs
 N-1 el internal:     9854 conf    65270 CSFs
 N-2 el internal:     3089 conf    44935 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 12


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  12

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.79158119
     2      -266.79158119
     3      -266.79158119

 Number of blocks in overlap matrix:   391   Smallest eigenvalue:  0.47D-05
 Number of N-2 electron functions:     714
 Number of N-1 electron functions:   65270

 Number of internal configurations:                17270
 Number of singly external configurations:       8648905
 Number of doubly external configurations:      12534312
 Total number of contracted configurations:     21200487
 Total number of uncontracted configurations:  796004530

 Diagonal Coupling coefficients finished.               Storage:   8822205 words, CPU-Time:      1.19 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4527458 words, CPU-time:      3.56 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.79158119     0.00000000    -1.10666887  0.46D-01  0.11D+00     6.66
    1     2     2     1.00000000     0.00000000  -266.79158119     0.00000000    -1.10667386  0.46D-01  0.11D+00     6.66
    1     3     3     1.00000000     0.00000000  -266.79158119     0.00000000    -1.10670861  0.46D-01  0.11D+00     6.66
    2     1     1     1.10404458    -0.91510572  -267.70668691    -0.91510572    -0.02324133  0.34D-02  0.12D-02    93.53
    2     2     2     1.10406622    -0.91510401  -267.70668520    -0.91510401    -0.02323312  0.34D-02  0.12D-02    93.53
    2     3     3     1.10404305    -0.91510353  -267.70668471    -0.91510353    -0.02324657  0.34D-02  0.12D-02    93.53
    3     1     1     1.08963706    -0.93771398  -267.72929517    -0.02260825    -0.00030819  0.47D-04  0.22D-04   180.18
    3     2     2     1.08964047    -0.93771353  -267.72929471    -0.02260952    -0.00030888  0.47D-04  0.22D-04   180.18
    3     3     3     1.08964175    -0.93771332  -267.72929451    -0.02260979    -0.00030914  0.47D-04  0.23D-04   180.18
    4     1     1     1.08918999    -0.93803990  -267.72962109    -0.00032593    -0.00001068  0.11D-05  0.16D-05   266.90
    4     2     2     1.08919127    -0.93803988  -267.72962107    -0.00032635    -0.00001071  0.11D-05  0.16D-05   266.90
    4     3     3     1.08919157    -0.93803986  -267.72962105    -0.00032654    -0.00001073  0.11D-05  0.16D-05   266.90
    5     1     1     1.08926682    -0.93805201  -267.72963320    -0.00001211    -0.00000068  0.28D-07  0.14D-06   353.26
    5     2     2     1.08926684    -0.93805201  -267.72963320    -0.00001213    -0.00000068  0.28D-07  0.14D-06   353.26
    5     3     3     1.08926688    -0.93805201  -267.72963320    -0.00001215    -0.00000068  0.28D-07  0.14D-06   353.26
    6     1     1     1.08928917    -0.93805285  -267.72963404    -0.00000084    -0.00000005  0.46D-08  0.76D-08   439.83
    6     2     2     1.08928922    -0.93805285  -267.72963404    -0.00000084    -0.00000005  0.46D-08  0.76D-08   439.83
    6     3     3     1.08928918    -0.93805284  -267.72963403    -0.00000083    -0.00000005  0.46D-08  0.75D-08   439.83
    7     1     1     1.08929367    -0.93805291  -267.72963410    -0.00000006    -0.00000000  0.19D-09  0.48D-09   526.51
    7     2     2     1.08929367    -0.93805291  -267.72963410    -0.00000006    -0.00000000  0.18D-09  0.48D-09   526.51
    7     3     3     1.08929366    -0.93805290  -267.72963409    -0.00000006    -0.00000000  0.19D-09  0.48D-09   526.51


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.9%  14.3%
 P   0.5%  36.7%  14.4%

 Initialization:   0.9%
 Other:           31.6%

 Total CPU:      526.5 seconds
 =====================================



 Wavefunction saved on  5502.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222////00           0.0000000   0.0000000   0.9543442
 2222222222///0/0          -0.0000000   0.9543442  -0.0000000
 2222222222///00/           0.9543442   0.0000000  -0.0000000
 22222222220//0//           0.0596523  -0.0000000   0.0000000
 2222222222//0/0/          -0.0000000  -0.0000000   0.0596523
 2222222222//00//           0.0000000   0.0596523   0.0000000
 2222222222/0///0           0.0000000   0.0596523   0.0000000
 2222222222/0//0/           0.0596523  -0.0000000   0.0000000
 22222222220////0           0.0000000   0.0000000  -0.0596522

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.958116   -0.000000
 2           0.000000    0.000000    0.958116
 3           0.958116   -0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958116   -0.000000   -0.000000
 2          -0.000000    0.958116   -0.000000
 3          -0.000000   -0.000000    0.958116


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95811592 (fixed)   0.95812268 (relaxed)   0.95811592 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004354   -0.00016125   -0.80824672
 Singles      0.01642443   -0.05763739   -0.06705131
 Pairs        0.07287312    0.00000000   -0.06275487
 Total        1.08934110   -0.05779863   -0.93805291
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.79158119
 Nuclear energy                         0.00000000
 Kinetic energy                       103.35975589
 One electron energy                 -461.31182623
 Two electron energy                  193.58219213
 Virial quotient                       -2.59026961
 Correlation energy                    -0.93805291
 !MRCI STATE 1.1 Energy              -267.729634100244

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.81344078 (Davidson, fixed reference)
 Cluster corrected energies          -267.81342635 (Davidson, relaxed reference)
 Cluster corrected energies          -267.81344078 (Davidson, rotated reference)

 Cluster corrected energies          -267.81079841 (Pople, fixed reference)
 Cluster corrected energies          -267.81078339 (Pople, relaxed reference)
 Cluster corrected energies          -267.81079841 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95811592 (fixed)   0.95812268 (relaxed)   0.95811592 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004354   -0.00016125   -0.00018552
 Singles      0.01642444   -0.05763742   -0.06705133
 Pairs        0.07287311   -0.88025424   -0.87081606
 Total        1.08934110   -0.93805291   -0.93805291
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.79158119
 Nuclear energy                         0.00000000
 Kinetic energy                       103.35975603
 One electron energy                 -461.31182583
 Two electron energy                  193.58219174
 Virial quotient                       -2.59026960
 Correlation energy                    -0.93805291
 !MRCI STATE 2.1 Energy              -267.729634096643

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.81344077 (Davidson, fixed reference)
 Cluster corrected energies          -267.81342635 (Davidson, relaxed reference)
 Cluster corrected energies          -267.81344077 (Davidson, rotated reference)

 Cluster corrected energies          -267.81079841 (Pople, fixed reference)
 Cluster corrected energies          -267.81078339 (Pople, relaxed reference)
 Cluster corrected energies          -267.81079841 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95811592 (fixed)   0.95812269 (relaxed)   0.95811592 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004354   -0.00016125   -0.80824672
 Singles      0.01642443   -0.05763738   -0.06705131
 Pairs        0.07287312   -0.00000000   -0.06275487
 Total        1.08934109   -0.05779863   -0.93805290
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.79158119
 Nuclear energy                         0.00000000
 Kinetic energy                       103.35975543
 One electron energy                 -461.31182572
 Two electron energy                  193.58219162
 Virial quotient                       -2.59026962
 Correlation energy                    -0.93805290
 !MRCI STATE 3.1 Energy              -267.729634093001

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.81344076 (Davidson, fixed reference)
 Cluster corrected energies          -267.81342633 (Davidson, relaxed reference)
 Cluster corrected energies          -267.81344076 (Davidson, rotated reference)

 Cluster corrected energies          -267.81079840 (Pople, fixed reference)
 Cluster corrected energies          -267.81078337 (Pople, relaxed reference)
 Cluster corrected energies          -267.81079840 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       8     4317.66       700     1000      520     2100     2140     5302     5102     5502   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      7960.60    541.15   2480.16   4915.64     13.20      0.90      9.32
 REAL TIME  *      8277.67 SEC
 DISK USED  *         4.31 GB (local),      122.21 GB (total)
 SF USED    *        21.52 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -267.81344078  AU                              
 SETTING HLSDIAG(14)    =      -267.81344077  AU                              
 SETTING HLSDIAG(15)    =      -267.81344076  AU                              


         HLSDIAG
    -268.0499399
    -268.0499399
    -268.0499400
    -267.8067371
    -267.8067370
    -267.8067368
    -268.0161969
    -268.0161970
    -268.0161966
    -268.0161966
    -268.0161965
    -267.9660162
    -267.8134408
    -267.8134408
    -267.8134408
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   6

 Original energies:   -267.960041   -267.960041   -267.960041   -267.721979   -267.721979   -267.721979
 Replaced energies:   -268.049940   -268.049940   -268.049940   -267.806737   -267.806737   -267.806737

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -267.922720   -267.922720   -267.922720   -267.922720   -267.922720   -267.875680
 Replaced energies:   -268.016197   -268.016197   -268.016197   -268.016197   -268.016197   -267.966016

 Wavefunction restored from record  5502.2  Symmetry=1  S= 2.0  NSTATE=   3

 Original energies:   -267.729634   -267.729634   -267.729634
 Replaced energies:   -267.813441   -267.813441   -267.813441



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -268.04993999

 Wigner-Eckart theorem used for 40 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00       0.00      -0.00      -0.84       2.44      -0.45
                            0.00      -1.86    1957.11    -363.63       0.45       0.29      -0.00    1383.89       1.32       0.32

    2   2.1  1.0  1.0       0.00       0.02       0.00       0.00       0.00       0.00       0.84      -0.00   -1383.89     257.12
                            1.86      -0.00       3.46      -0.64      -0.00       0.35   -1383.89       0.00      -0.84      -0.05

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -2.44    1383.89      -0.00       0.56
                        -1957.11      -3.46      -0.00      -0.29       3.14    -363.61      -1.32       0.84      -0.00       0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00   53376.86       0.00       0.00       0.45    -257.12      -0.56      -0.00
                          363.63       0.64       0.29       0.00       0.17     -19.46      -0.32       0.05      -0.00       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   53376.89       0.00       0.15       0.56    -257.11     -13.76
                           -0.45       0.00      -3.14      -0.17       0.00       0.02    -257.11      -2.67      -0.16       0.00

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   53376.93       0.00       0.05      -2.22      -0.12
                           -0.29      -0.35     363.61      19.46      -0.02      -0.00      -2.67     257.11       0.24      -0.02

    7   1.1  1.0  0.0      -0.00       0.84      -2.44       0.45       0.15       0.00       0.01       0.00       0.00       0.00
                            0.00    1383.89       1.32       0.32     257.11       2.67       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0      -0.84      -0.00    1383.89    -257.12       0.56       0.05       0.00       0.02       0.00       0.00
                        -1383.89      -0.00      -0.84      -0.05       2.67    -257.11      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0       2.44   -1383.89      -0.00      -0.56    -257.11      -2.22       0.00       0.00       0.00       0.00
                           -1.32       0.84       0.00       0.00       0.16      -0.24      -0.00      -0.00       0.00       0.00

   10   4.1  1.0  0.0      -0.45     257.12       0.56      -0.00     -13.76      -0.12       0.00       0.00       0.00   53376.86
                           -0.32       0.05      -0.00      -0.00      -0.00       0.02      -0.00      -0.00      -0.00       0.00

   11   5.1  1.0  0.0      -0.15      -0.56     257.11      13.76      -0.00      -0.00       0.00       0.00       0.00       0.00
                         -257.11      -2.67      -0.16       0.00       0.00      13.76      -0.00      -0.00      -0.00      -0.00

   12   6.1  1.0  0.0      -0.00      -0.05       2.22       0.12       0.00      -0.00       0.00       0.00       0.00       0.00
                           -2.67     257.11       0.24      -0.02     -13.76      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.84      -2.44       0.45
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    1383.89       1.32       0.32

   14   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.84      -0.00    1383.89    -257.12
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1383.89      -0.00      -0.84      -0.05

   15   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.44   -1383.89      -0.00      -0.56
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.32       0.84       0.00       0.00

   16   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.45     257.12       0.56      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.32       0.05      -0.00      -0.00

   17   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.15      -0.56     257.11      13.76
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -257.11      -2.67      -0.16       0.00

   18   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.05       2.22       0.12
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.67     257.11       0.24      -0.02

   19   1.1  0.0  0.0    1602.14       4.14       1.68       0.01       0.42     -53.41       0.00       0.00       0.00       0.00
                            1.26       0.85    -912.77     -30.43       0.04      -0.02       3.58    -974.92      -0.96       0.04

   20   2.1  0.0  0.0    -128.98       1.85      -0.85      -0.03      -0.11       4.30       0.00       0.00       0.00       0.00
                            0.02       1.26   -1323.01     -44.11       0.05       0.03      -0.69    2053.41       1.95      -0.08

   21   3.1  0.0  0.0      -4.15    1260.54     590.23      19.59     -42.07      -0.31       0.00       0.00       0.00       0.00
                          589.06     -14.03       2.79       0.08       0.67     -19.64    1783.48       1.92     -20.23      -0.72

   22   4.1  0.0  0.0       0.04    -590.01    1257.91      41.98      19.58       0.17       0.00       0.00       0.00       0.00
                         1258.62     -82.21      -0.77      -0.05       3.18     -41.93    -832.64       1.04    -119.91      -3.98

   23   5.1  0.0  0.0       0.02      22.18     -82.85      -2.76      -0.73      -0.01       0.00       0.00       0.00       0.00
                          -80.42   -1389.46      -1.29       0.06      46.29       3.16      32.45       1.81   -1964.78     -65.50

   24   6.1  0.0  0.0   -2264.55      -4.00      -1.37       0.02      -0.75      86.61       0.00       0.00       0.00       0.00
                            1.37       2.15   -2264.55     -86.61       0.11       0.02       5.66   -3202.55      -3.04       0.15

   25   1.1  2.0  2.0      -1.08     608.93       0.58       0.20     161.90       1.40       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  2.0  2.0      -0.37      -0.58     609.17    -162.91       0.20       0.03       0.00       0.00       0.00       0.00
                          608.89       1.08       0.37       0.03      -1.41     163.03      -0.00      -0.00      -0.00      -0.00

   27   3.1  2.0  2.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.08    -608.99      -0.58      -0.20    -161.66      -1.40      -0.00      -0.00      -0.00      -0.00

   28   1.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.76     430.58       0.41       0.14
                          608.82       1.08       0.37       0.03      -1.41     163.09       0.00      -0.00      -0.00       0.00

   29   2.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.26      -0.41     430.75    -115.19
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00     430.55       0.76       0.26       0.02

   30   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.37      -0.58     609.21    -162.59       0.20       0.03       0.76    -430.62      -0.41      -0.14

   31   1.1  2.0  0.0      -0.44     248.60       0.24       0.08      66.09       0.57       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00     703.01       1.24       0.43       0.03

   32   2.1  2.0  0.0      -0.15      -0.24     248.69     -66.51       0.08       0.01       0.00       0.00       0.00       0.00
                         -248.58      -0.44      -0.15      -0.01       0.57     -66.56      -0.00      -0.00       0.00      -0.00

   33   3.1  2.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.44     248.62       0.24       0.08      66.00       0.57      -0.42      -0.67     703.46    -187.74

   34   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.76     430.58       0.41       0.14
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   35   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.26      -0.41     430.75    -115.19
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -430.55      -0.76      -0.26      -0.02

   36   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.76     430.62       0.41       0.14

   37   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0      -0.15      -0.00       0.00       0.00       0.00       0.00       0.00       0.00    1602.14    -128.98
                          257.11       2.67       0.00       0.00       0.00       0.00       0.00       0.00      -1.26      -0.02

    2   2.1  1.0  1.0      -0.56      -0.05       0.00       0.00       0.00       0.00       0.00       0.00       4.14       1.85
                            2.67    -257.11       0.00       0.00       0.00       0.00       0.00       0.00      -0.85      -1.26

    3   3.1  1.0  1.0     257.11       2.22       0.00       0.00       0.00       0.00       0.00       0.00       1.68      -0.85
                            0.16      -0.24       0.00       0.00       0.00       0.00       0.00       0.00     912.77    1323.01

    4   4.1  1.0  1.0      13.76       0.12       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.03
                           -0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00      30.43      44.11

    5   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.42      -0.11
                           -0.00      13.76       0.00       0.00       0.00       0.00       0.00       0.00      -0.04      -0.05

    6   6.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     -53.41       4.30
                          -13.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02      -0.03

    7   1.1  1.0  0.0       0.00       0.00      -0.00      -0.84       2.44      -0.45      -0.15      -0.00       0.00       0.00
                            0.00       0.00      -0.00    1383.89       1.32       0.32     257.11       2.67      -3.58       0.69

    8   2.1  1.0  0.0       0.00       0.00       0.84      -0.00   -1383.89     257.12      -0.56      -0.05       0.00       0.00
                            0.00       0.00   -1383.89       0.00      -0.84      -0.05       2.67    -257.11     974.92   -2053.41

    9   3.1  1.0  0.0       0.00       0.00      -2.44    1383.89      -0.00       0.56     257.11       2.22       0.00       0.00
                            0.00       0.00      -1.32       0.84      -0.00       0.00       0.16      -0.24       0.96      -1.95

   10   4.1  1.0  0.0       0.00       0.00       0.45    -257.12      -0.56      -0.00      13.76       0.12       0.00       0.00
                            0.00       0.00      -0.32       0.05      -0.00       0.00      -0.00       0.02      -0.04       0.08

   11   5.1  1.0  0.0   53376.89       0.00       0.15       0.56    -257.11     -13.76      -0.00       0.00       0.00       0.00
                            0.00       0.00    -257.11      -2.67      -0.16       0.00      -0.00      13.76     -32.50      68.45

   12   6.1  1.0  0.0       0.00   53376.93       0.00       0.05      -2.22      -0.12      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -2.67     257.11       0.24      -0.02     -13.76       0.00      -0.22       0.69

   13   1.1  1.0 -1.0       0.15       0.00       0.01       0.00       0.00       0.00       0.00       0.00    1602.14    -128.98
                          257.11       2.67      -0.00       1.86   -1957.11     363.63      -0.45      -0.29       1.26       0.02

   14   2.1  1.0 -1.0       0.56       0.05       0.00       0.02       0.00       0.00       0.00       0.00       4.14       1.85
                            2.67    -257.11      -1.86       0.00      -3.46       0.64       0.00      -0.35       0.85       1.26

   15   3.1  1.0 -1.0    -257.11      -2.22       0.00       0.00       0.00       0.00       0.00       0.00       1.68      -0.85
                            0.16      -0.24    1957.11       3.46       0.00       0.29      -3.14     363.61    -912.77   -1323.01

   16   4.1  1.0 -1.0     -13.76      -0.12       0.00       0.00       0.00   53376.86       0.00       0.00       0.01      -0.03
                           -0.00       0.02    -363.63      -0.64      -0.29      -0.00      -0.17      19.46     -30.43     -44.11

   17   5.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00   53376.89       0.00       0.42      -0.11
                            0.00      13.76       0.45      -0.00       3.14       0.17      -0.00      -0.02       0.04       0.05

   18   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   53376.93     -53.41       4.30
                          -13.76      -0.00       0.29       0.35    -363.61     -19.46       0.02       0.00      -0.02       0.03

   19   1.1  0.0  0.0       0.00       0.00    1602.14       4.14       1.68       0.01       0.42     -53.41    7405.75       0.00
                           32.50       0.22      -1.26      -0.85     912.77      30.43      -0.04       0.02       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00    -128.98       1.85      -0.85      -0.03      -0.11       4.30       0.00    7405.74
                          -68.45      -0.69      -0.02      -1.26    1323.01      44.11      -0.05      -0.03      -0.00       0.00

   21   3.1  0.0  0.0       0.00       0.00      -4.15    1260.54     590.23      19.59     -42.07      -0.31       0.00       0.00
                            0.56     -59.46    -589.06      14.03      -2.79      -0.08      -0.67      19.64      -0.00      -0.00

   22   4.1  0.0  0.0       0.00       0.00       0.04    -590.01    1257.91      41.98      19.58       0.17       0.00       0.00
                           -0.31      27.76   -1258.62      82.21       0.77       0.05      -3.18      41.93      -0.00      -0.00

   23   5.1  0.0  0.0       0.00       0.00       0.02      22.18     -82.85      -2.76      -0.73      -0.01       0.00       0.00
                            0.09      -1.03      80.42    1389.46       1.29      -0.06     -46.29      -3.16      -0.00      -0.00

   24   6.1  0.0  0.0       0.00       0.00   -2264.55      -4.00      -1.37       0.02      -0.75      86.61       0.00       0.00
                          122.48       1.06      -1.37      -2.15    2264.55      86.61      -0.11      -0.02      -0.00      -0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   1.1  2.0  1.0     114.48       0.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   2.1  2.0  1.0       0.14       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.00     115.28      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -114.31      -0.99      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   1.1  2.0  0.0       0.00       0.00      -0.44     248.60       0.24       0.08      66.09       0.57       0.00       0.00
                           -1.63     188.32       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   32   2.1  2.0  0.0       0.00       0.00      -0.15      -0.24     248.69     -66.51       0.08       0.01       0.00       0.00
                           -0.00      -0.00     248.58       0.44       0.15       0.01      -0.57      66.56      -0.00      -0.00

   33   3.1  2.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.23       0.04       0.44    -248.62      -0.24      -0.08     -66.00      -0.57      -0.00      -0.00

   34   1.1  2.0 -1.0     114.48       0.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     608.82       1.08       0.37       0.03      -1.41     163.09      -0.00      -0.00

   35   2.1  2.0 -1.0       0.14       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.00    -115.28      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          114.31       0.99      -0.37      -0.58     609.21    -162.59       0.20       0.03      -0.00      -0.00

   37   1.1  2.0 -2.0       0.00       0.00      -1.08     608.93       0.58       0.20     161.90       1.40       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00      -0.37      -0.58     609.17    -162.91       0.20       0.03       0.00       0.00
                           -0.00      -0.00    -608.89      -1.08      -0.37      -0.03       1.41    -163.03      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -1.08     608.99       0.58       0.20     161.66       1.40      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0      -4.15       0.04       0.02   -2264.55      -1.08      -0.37       0.00       0.00       0.00       0.00
                         -589.06   -1258.62      80.42      -1.37      -0.00    -608.89      -1.08    -608.82       0.00       0.37

    2   2.1  1.0  1.0    1260.54    -590.01      22.18      -4.00     608.93      -0.58       0.00       0.00       0.00       0.00
                           14.03      82.21    1389.46      -2.15       0.00      -1.08     608.99      -1.08       0.00       0.58

    3   3.1  1.0  1.0     590.23    1257.91     -82.85      -1.37       0.58     609.17      -0.00       0.00       0.00       0.00
                           -2.79       0.77       1.29    2264.55       0.00      -0.37       0.58      -0.37      -0.00    -609.21

    4   4.1  1.0  1.0      19.59      41.98      -2.76       0.02       0.20    -162.91       0.00       0.00       0.00       0.00
                           -0.08       0.05      -0.06      86.61      -0.00      -0.03       0.20      -0.03       0.00     162.59

    5   5.1  1.0  1.0     -42.07      19.58      -0.73      -0.75     161.90       0.20       0.00       0.00       0.00       0.00
                           -0.67      -3.18     -46.29      -0.11       0.00       1.41     161.66       1.41       0.00      -0.20

    6   6.1  1.0  1.0      -0.31       0.17      -0.01      86.61       1.40       0.03       0.00       0.00       0.00       0.00
                           19.64      41.93      -3.16      -0.02      -0.00    -163.03       1.40    -163.09       0.00      -0.03

    7   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.76      -0.26       0.00
                        -1783.48     832.64     -32.45      -5.66       0.00       0.00       0.00      -0.00    -430.55      -0.76

    8   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     430.58      -0.41       0.00
                           -1.92      -1.04      -1.81    3202.55       0.00       0.00       0.00       0.00      -0.76     430.62

    9   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.41     430.75      -0.00
                           20.23     119.91    1964.78       3.04       0.00       0.00       0.00       0.00      -0.26       0.41

   10   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.14    -115.19       0.00
                            0.72       3.98      65.50      -0.15       0.00       0.00       0.00      -0.00      -0.02       0.14

   11   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     114.48       0.14       0.00
                           -0.56       0.31      -0.09    -122.48       0.00       0.00       0.00       0.00       1.00     114.31

   12   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.99       0.02       0.00
                           59.46     -27.76       1.03      -1.06       0.00       0.00       0.00      -0.00    -115.28       0.99

   13   1.1  1.0 -1.0      -4.15       0.04       0.02   -2264.55       0.00       0.00       0.00       0.00       0.00       0.00
                          589.06    1258.62     -80.42       1.37       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0 -1.0    1260.54    -590.01      22.18      -4.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -14.03     -82.21   -1389.46       2.15       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0 -1.0     590.23    1257.91     -82.85      -1.37       0.00       0.00       0.00       0.00       0.00       0.00
                            2.79      -0.77      -1.29   -2264.55       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0 -1.0      19.59      41.98      -2.76       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                            0.08      -0.05       0.06     -86.61       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0 -1.0     -42.07      19.58      -0.73      -0.75       0.00       0.00       0.00       0.00       0.00       0.00
                            0.67       3.18      46.29       0.11       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0 -1.0      -0.31       0.17      -0.01      86.61       0.00       0.00       0.00       0.00       0.00       0.00
                          -19.64     -41.93       3.16       0.02       0.00       0.00       0.00       0.00       0.00       0.00

   19   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   3.1  0.0  0.0    7405.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   4.1  0.0  0.0       0.00    7405.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   5.1  0.0  0.0       0.00       0.00    7405.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   6.1  0.0  0.0       0.00       0.00       0.00   18419.14       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00   51905.58       0.00       0.00       0.00      63.56      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -127.13      -0.00      -0.00      -0.00

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00   51905.58       0.00     -63.56       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      63.56

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00   51905.58       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00     127.13      -0.00      -0.00       0.00     -63.56      -0.00

   28   1.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00     -63.56       0.00   51905.58       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00     -63.56

   29   2.1  2.0  1.0       0.00       0.00       0.00       0.00      63.56       0.00      -0.00       0.00   51905.58       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      63.56       0.00      -0.00       0.00

   30   3.1  2.0  1.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00   51905.58
                           -0.00      -0.00      -0.00      -0.00       0.00     -63.56       0.00      63.56      -0.00      -0.00

   31   1.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -77.85       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   32   2.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      77.85       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      77.85

   33   3.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -77.85       0.00

   34   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39

    1   1.1  1.0  1.0      -0.44      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     248.58       0.44       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0     248.60      -0.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.44    -248.62       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.24     248.69      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.15      -0.24       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0       0.08     -66.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01      -0.08       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0      66.09       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.57     -66.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0       0.57       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      66.56      -0.57       0.00       0.00       0.00       0.00       0.00       0.00

    7   1.1  1.0  0.0       0.00       0.00       0.00      -0.76      -0.26       0.00       0.00       0.00       0.00
                         -703.01       0.00       0.42       0.00     430.55       0.76       0.00       0.00       0.00

    8   2.1  1.0  0.0       0.00       0.00       0.00     430.58      -0.41       0.00       0.00       0.00       0.00
                           -1.24       0.00       0.67      -0.00       0.76    -430.62       0.00       0.00       0.00

    9   3.1  1.0  0.0       0.00       0.00       0.00       0.41     430.75      -0.00       0.00       0.00       0.00
                           -0.43      -0.00    -703.46      -0.00       0.26      -0.41       0.00       0.00       0.00

   10   4.1  1.0  0.0       0.00       0.00       0.00       0.14    -115.19       0.00       0.00       0.00       0.00
                           -0.03       0.00     187.74       0.00       0.02      -0.14       0.00       0.00       0.00

   11   5.1  1.0  0.0       0.00       0.00       0.00     114.48       0.14       0.00       0.00       0.00       0.00
                            1.63       0.00      -0.23      -0.00      -1.00    -114.31       0.00       0.00       0.00

   12   6.1  1.0  0.0       0.00       0.00       0.00       0.99       0.02       0.00       0.00       0.00       0.00
                         -188.32       0.00      -0.04       0.00     115.28      -0.99       0.00       0.00       0.00

   13   1.1  1.0 -1.0      -0.44      -0.15       0.00       0.00       0.00       0.00      -1.08      -0.37       0.00
                           -0.00    -248.58      -0.44    -608.82       0.00       0.37       0.00     608.89       1.08

   14   2.1  1.0 -1.0     248.60      -0.24       0.00       0.00       0.00       0.00     608.93      -0.58       0.00
                            0.00      -0.44     248.62      -1.08       0.00       0.58      -0.00       1.08    -608.99

   15   3.1  1.0 -1.0       0.24     248.69      -0.00       0.00       0.00       0.00       0.58     609.17      -0.00
                            0.00      -0.15       0.24      -0.37      -0.00    -609.21      -0.00       0.37      -0.58

   16   4.1  1.0 -1.0       0.08     -66.51       0.00       0.00       0.00       0.00       0.20    -162.91       0.00
                           -0.00      -0.01       0.08      -0.03       0.00     162.59       0.00       0.03      -0.20

   17   5.1  1.0 -1.0      66.09       0.08       0.00       0.00       0.00       0.00     161.90       0.20       0.00
                            0.00       0.57      66.00       1.41       0.00      -0.20      -0.00      -1.41    -161.66

   18   6.1  1.0 -1.0       0.57       0.01       0.00       0.00       0.00       0.00       1.40       0.03       0.00
                           -0.00     -66.56       0.57    -163.09       0.00      -0.03       0.00     163.03      -1.40

   19   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   1.1  2.0  1.0       0.00      77.85      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   2.1  2.0  1.0     -77.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      77.85       0.00       0.00       0.00       0.00       0.00       0.00

   30   3.1  2.0  1.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -77.85      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   1.1  2.0  0.0   51905.58       0.00       0.00       0.00      77.85      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   32   2.1  2.0  0.0       0.00   51905.58       0.00     -77.85       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      77.85       0.00       0.00       0.00

   33   3.1  2.0  0.0       0.00       0.00   51905.58       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00     -77.85      -0.00       0.00       0.00       0.00

   34   1.1  2.0 -1.0       0.00     -77.85       0.00   51905.58       0.00       0.00       0.00      63.56      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      63.56      -0.00      -0.00      -0.00

   35   2.1  2.0 -1.0      77.85       0.00      -0.00       0.00   51905.58       0.00     -63.56       0.00       0.00
                            0.00       0.00      77.85      -0.00       0.00      -0.00       0.00      -0.00      63.56

   36   3.1  2.0 -1.0      -0.00       0.00      -0.00       0.00       0.00   51905.58       0.00      -0.00      -0.00
                            0.00     -77.85       0.00     -63.56       0.00       0.00       0.00     -63.56      -0.00

   37   1.1  2.0 -2.0       0.00       0.00       0.00       0.00     -63.56       0.00   51905.58       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00     127.13

   38   2.1  2.0 -2.0       0.00       0.00       0.00      63.56       0.00      -0.00       0.00   51905.58       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      63.56      -0.00       0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00   51905.58
                           -0.00      -0.00      -0.00       0.00     -63.56       0.00    -127.13       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -268.06243927    -0.01249928    -2743.28      0.00000000        0.00      0.0000
     2  -268.06243918    -0.01249919    -2743.26      0.00000009        0.02      0.0000
     3  -268.06243914    -0.01249915    -2743.25      0.00000013        0.03      0.0000
     4  -268.06243913    -0.01249914    -2743.25      0.00000014        0.03      0.0000
     5  -268.06243907    -0.01249908    -2743.23      0.00000020        0.04      0.0000
     6  -268.04109078     0.00884921     1942.18      0.02134849     4685.45      0.5809
     7  -268.04109077     0.00884922     1942.18      0.02134850     4685.45      0.5809
     8  -268.04109071     0.00884927     1942.19      0.02134856     4685.47      0.5809
     9  -268.04071357     0.00922641     2024.96      0.02172570     4768.24      0.5912
    10  -268.01272192     0.03721807     8168.42      0.04971735    10911.70      1.3529
    11  -268.01272185     0.03721814     8168.44      0.04971742    10911.71      1.3529
    12  -268.01272168     0.03721830     8168.47      0.04971758    10911.75      1.3529
    13  -268.01272162     0.03721837     8168.49      0.04971765    10911.76      1.3529
    14  -268.01272159     0.03721840     8168.49      0.04971768    10911.77      1.3529
    15  -267.95745902     0.09248097    20297.23      0.10498025    23040.50      2.8567
    16  -267.81438104     0.23555894    51699.21      0.24805823    54442.49      6.7500
    17  -267.81438034     0.23555965    51699.37      0.24805893    54442.64      6.7500
    18  -267.81438014     0.23555985    51699.41      0.24805913    54442.69      6.7500
    19  -267.81385328     0.23608670    51815.04      0.24858599    54558.32      6.7644
    20  -267.81385321     0.23608677    51815.06      0.24858606    54558.33      6.7644
    21  -267.81385198     0.23608801    51815.33      0.24858729    54558.60      6.7644
    22  -267.81385131     0.23608868    51815.48      0.24858796    54558.75      6.7644
    23  -267.81385106     0.23608893    51815.53      0.24858821    54558.81      6.7644
    24  -267.81286154     0.23707845    52032.71      0.24957773    54775.98      6.7914
    25  -267.81286154     0.23707845    52032.71      0.24957773    54775.98      6.7914
    26  -267.81286153     0.23707845    52032.71      0.24957774    54775.98      6.7914
    27  -267.81286153     0.23707845    52032.71      0.24957774    54775.98      6.7914
    28  -267.81286153     0.23707846    52032.71      0.24957774    54775.98      6.7914
    29  -267.81286153     0.23707846    52032.71      0.24957774    54775.98      6.7914
    30  -267.81286153     0.23707846    52032.71      0.24957774    54775.98      6.7914
    31  -267.80686334     0.24307665    53349.16      0.25557593    56092.43      6.9546
    32  -267.80668713     0.24325286    53387.83      0.25575214    56131.11      6.9594
    33  -267.80668679     0.24325320    53387.91      0.25575248    56131.18      6.9594
    34  -267.80668615     0.24325384    53388.05      0.25575312    56131.32      6.9594
    35  -267.80642068     0.24351930    53446.31      0.25601858    56189.58      6.9666
    36  -267.80642045     0.24351954    53446.36      0.25601882    56189.64      6.9666
    37  -267.80641968     0.24352031    53446.53      0.25601959    56189.80      6.9666
    38  -267.80641849     0.24352150    53446.79      0.25602078    56190.07      6.9667
    39  -267.80641840     0.24352158    53446.81      0.25602086    56190.08      6.9667


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.0  1.0   0.273808263   0.484688641   0.481816736   0.011121411  -0.012353455   0.499884905  -0.006485380  -0.000884494
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.0  1.0   0.000434769   0.000711879  -0.011125837   0.479824812   0.024526141  -0.006485385  -0.499884748   0.499032923
                        -0.000672358  -0.000915369   0.011831120   0.045452458   0.481331504   0.000423291   0.000093379  -0.029846429

    3    3.1  1.0  1.0  -0.000422108   0.001283058  -0.001057314  -0.000467260  -0.000684053  -0.000006250  -0.000474619   0.000421281
                         0.556659435   0.005220580   0.481807457   0.011933234  -0.011860399  -0.499869722   0.007368202  -0.000025133

    4    4.1  1.0  1.0   0.000003911  -0.000005505   0.000008647   0.000009353   0.000004457  -0.000002706   0.000004390  -0.000004710
                        -0.003407311  -0.000031994  -0.002948975  -0.000072433   0.000079057  -0.003503078   0.000051635   0.000000283

    5    5.1  1.0  1.0  -0.000014761  -0.000026455  -0.000098752   0.002935879   0.000150880   0.000081850   0.003502689  -0.003497276
                         0.000003326  -0.000005533   0.000078848   0.000278335   0.002945646   0.000004685  -0.000000767   0.000209163

    6    6.1  1.0  1.0   0.001675978   0.002966751   0.002948404   0.000098583  -0.000074057  -0.003502439   0.000081845  -0.000030138
                         0.000002721  -0.000000032   0.000003145   0.000002950   0.000030550   0.000002811  -0.000000049   0.000002173

    7    1.1  1.0  0.0  -0.000000691   0.000002050   0.017429850   0.000862843   0.680643716   0.000072818  -0.000126584   0.042510334
                         0.000776246  -0.000992000   0.000044725   0.000080123  -0.035562236  -0.000000044   0.000000079   0.705721261

    8    2.1  1.0  0.0   0.000356150  -0.001401494   0.001496441   0.000548757   0.001000671  -0.000009797  -0.000671639   0.000075071
                        -0.400007577   0.678070794   0.000003838   0.000050957  -0.000052283   0.000000006   0.000000420   0.001246271

    9    3.1  1.0  0.0   0.000000519   0.000001329  -0.016882471   0.678669181  -0.000434899   0.010420089   0.706922186   0.000007617
                        -0.000582961  -0.000642937  -0.000043321   0.063020828   0.000022723  -0.000006300  -0.000442590   0.000126453

   10    4.1  1.0  0.0   0.000000002  -0.000000027   0.000103441  -0.004154093   0.000005960   0.000073023   0.004954089  -0.000000183
                        -0.000001796   0.000013030   0.000000265  -0.000385747  -0.000000311  -0.000000044  -0.000003102  -0.000003032

   11    5.1  1.0  0.0   0.000002180  -0.000008577   0.000007824   0.000012376  -0.000037175  -0.000000085  -0.000006123   0.000002569
                        -0.002448151   0.004149914   0.000000020   0.000001149   0.000001942   0.000000000   0.000000004   0.000042654

   12    6.1  1.0  0.0   0.000000018  -0.000000077   0.000106696   0.000008686   0.004166180  -0.000000569  -0.000003083  -0.000297896
                        -0.000020689   0.000037044   0.000000274   0.000000807  -0.000217674   0.000000000   0.000000002  -0.004945415

   13    1.1  1.0 -1.0   0.273807829   0.484684498  -0.481810393  -0.010931254   0.012286192  -0.499884540   0.006485374  -0.000878099
                         0.000487574   0.002003582  -0.002472698  -0.002047798  -0.001287371   0.000604339  -0.000008119   0.000106173

   14    2.1  1.0 -1.0   0.000433571   0.000708089   0.011064973  -0.479989831   0.025767635   0.006485892   0.499884473   0.499007274
                         0.000673131   0.000918304   0.011888062  -0.043675375   0.481266638   0.000415449  -0.000532557  -0.030272238

   15    3.1  1.0 -1.0   0.000569143   0.001304628  -0.001415350  -0.001738009  -0.000555660  -0.000598071   0.000483843   0.000421252
                        -0.556659304  -0.005215230   0.481806538   0.011815233  -0.011867107  -0.499869364   0.007367602  -0.000025618

   16    4.1  1.0 -1.0  -0.000002157  -0.000005637   0.000006487   0.000004144   0.000003806  -0.000001529  -0.000004325  -0.000004710
                         0.003407313   0.000031971  -0.002948981  -0.000072917   0.000079091  -0.003503079   0.000051640   0.000000284

   17    5.1  1.0 -1.0  -0.000014755  -0.000026478   0.000098346  -0.002936931   0.000156912  -0.000081845  -0.003502687  -0.003497096
                        -0.000003353   0.000005423   0.000079354  -0.000267011   0.002945331   0.000004784   0.000003619   0.000212155

   18    6.1  1.0 -1.0   0.001675980   0.002966725  -0.002948381  -0.000097440   0.000076838   0.003502439  -0.000081845  -0.000030181
                         0.000000263   0.000012296  -0.000011987  -0.000015253   0.000022666  -0.000001424   0.000000054   0.000001460

   19    1.1  0.0  0.0  -0.148120183  -0.219058501  -0.000000698  -0.000043293  -0.000017629  -0.000000000  -0.000000000  -0.000000002
                        -0.000131880  -0.000452769   0.000272320   0.000466222  -0.000337411  -0.000000002  -0.000000000   0.000000000

   20    2.1  0.0  0.0  -0.219058653   0.148120428   0.000000527   0.000020353  -0.000019162  -0.000000000  -0.000000000   0.000000003
                        -0.000195040   0.000306148  -0.000205603  -0.000219184  -0.000366756  -0.000000000  -0.000000000  -0.000000000

   21    3.1  0.0  0.0   0.000449439  -0.000086389   0.000302846   0.000032908  -0.012346760  -0.000000000  -0.000000000   0.000000125
                         0.000000400  -0.000000179  -0.118020994  -0.000354380  -0.236310915  -0.000000648  -0.000000003  -0.000000008

   22    4.1  0.0  0.0  -0.000201039  -0.000317806   0.000606758  -0.000955299   0.006152618  -0.000000001  -0.000000000  -0.000000058
                        -0.000000179  -0.000000657  -0.236457887   0.010287587   0.117758080  -0.000001389  -0.000000056   0.000000004

   23    5.1  0.0  0.0   0.000088443   0.000523870  -0.000023316  -0.024431039  -0.000257194   0.000000000  -0.000000001   0.000000003
                         0.000000079   0.000001083   0.009086328   0.263097036  -0.004922559   0.000000075  -0.000001260  -0.000000000

   24    6.1  0.0  0.0  -0.000000420   0.000000073   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000061
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000017   0.000000016   0.000000004

   25    1.1  2.0  2.0   0.000000552   0.000001603   0.000133842  -0.005361227  -0.000274287   0.000089986   0.006104195  -0.006093949
                         0.000001617   0.000010172  -0.000137301  -0.000508001  -0.005378166   0.000000616  -0.000001227   0.000364470

   26    2.1  2.0  2.0   0.000010325  -0.000011042   0.000018449   0.000011388   0.000017241   0.000000007  -0.000000014   0.000000014
                        -0.009281759  -0.005473865  -0.010768786  -0.000266633   0.000275254   0.000002773  -0.000000038  -0.000000004

   27    3.1  2.0  2.0   0.000001595   0.000010169  -0.000137334  -0.000508049  -0.005378639   0.000000631  -0.000001224   0.000364501
                        -0.000000552  -0.000001606  -0.000133855   0.005361699   0.000274309  -0.000089999  -0.006104764   0.006094517

   28    1.1  2.0  1.0   0.000000945   0.000011090  -0.000007956  -0.000008428   0.000011020  -0.000003692   0.000000069  -0.000000643
                         0.000101524  -0.010772409  -0.005382622  -0.000134586   0.000137448  -0.006103025   0.000089968   0.000000039

   29    2.1  2.0  1.0   0.000000549   0.000001599   0.000133891  -0.005363393  -0.000274266  -0.000090010  -0.006106449   0.006093433
                         0.000001601   0.000010193  -0.000137299  -0.000508198  -0.005377841  -0.000000624   0.000001230  -0.000364435

   30    3.1  2.0  1.0   0.009383640  -0.005299581   0.005385945   0.000132045  -0.000137792  -0.006106884   0.000090019   0.000000050
                         0.000009384  -0.000022145   0.000026403   0.000019824   0.000006221   0.000003683  -0.000000050   0.000000639

   31    1.1  2.0  0.0   0.000001347   0.000003976   0.000000865   0.000002292  -0.000688181  -0.000000000  -0.000000001   0.004973658
                         0.000000001   0.000000008  -0.000337136  -0.000024679  -0.013171451  -0.000000567  -0.000002122  -0.000299597

   32    2.1  2.0  0.0   0.000000005  -0.000000005   0.000000005   0.000000005   0.000000004   0.000006026  -0.000000092   0.000001055
                         0.000000000  -0.000000000  -0.000002040  -0.000000049   0.000000068   0.009969523  -0.000146955  -0.000000064

   33    3.1  2.0  0.0  -0.000003927  -0.000024923  -0.000000839   0.001220084   0.000000856  -0.000000044  -0.000003123  -0.000002113
                        -0.000000003  -0.000000052   0.000327087  -0.013139049   0.000016387  -0.000073516  -0.004987982   0.000000127

   34    1.1  2.0 -1.0  -0.000001126   0.000033441  -0.000035579  -0.000033065  -0.000003364   0.000003687  -0.000000044   0.000000643
                         0.000101522  -0.010772363   0.005382510   0.000130733  -0.000137848   0.006103025  -0.000089968  -0.000000038

   35    2.1  2.0 -1.0  -0.000000551  -0.000001641   0.000133185  -0.005365263   0.000287660  -0.000090010  -0.006106446  -0.006093119
                         0.000001600   0.000010186   0.000137985  -0.000488059   0.005377141   0.000000733   0.000006416   0.000369643

   36    3.1  2.0 -1.0  -0.009383641   0.005299627   0.005386010   0.000133438  -0.000137690  -0.006106884   0.000090019   0.000000027
                        -0.000007326  -0.000000238   0.000001238   0.000004829   0.000008173   0.000003700  -0.000000063   0.000000641

   37    1.1  2.0 -2.0   0.000000555   0.000001645  -0.000133135   0.005363098  -0.000287673  -0.000089985  -0.006104192  -0.006093636
                        -0.000001616  -0.000010165  -0.000137986   0.000487854  -0.005377467   0.000000724   0.000006417   0.000369670

   38    2.1  2.0 -2.0  -0.000006203  -0.000033670   0.000036817   0.000037902   0.000011537  -0.000000003   0.000000014   0.000000014
                         0.009281762   0.005473773  -0.010768739  -0.000264171   0.000275552   0.000002773  -0.000000038   0.000000003

   39    3.1  2.0 -2.0   0.000001594   0.000010162   0.000138020  -0.000487894   0.005377939  -0.000000740  -0.000006420  -0.000369707
                         0.000000555   0.000001648  -0.000133149   0.005363571  -0.000287700  -0.000089999  -0.006104760  -0.006094204


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.0  1.0  -0.386646497   0.002464414   0.152596467   0.056754121   0.118907131  -0.010430434  -0.130908940  -0.007369751
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.0  1.0  -0.000682903   0.000262313   0.000446206  -0.002561571  -0.010823010  -0.131716453  -0.000231182  -0.000019082
                        -0.000367216  -0.000131741  -0.000068545   0.119281112  -0.056791240   0.003227287  -0.000124339  -0.000013273

    3    3.1  1.0  1.0  -0.000000650   0.000497446   0.000127069  -0.000143578  -0.000115241  -0.000119390  -0.000000220  -0.000000089
                         0.386645070   0.133384101   0.074163654   0.056863125   0.118833109  -0.010659887   0.130908786   0.007360025

    4    4.1  1.0  1.0   0.000004760  -0.000007759  -0.000000091   0.000002865   0.000002905  -0.000002785   0.000000315   0.000050276
                         0.006021133  -0.002091170  -0.001162734  -0.000887439  -0.001865100   0.000167244   0.000398508   0.064371965

    5    5.1  1.0  1.0  -0.000051933   0.000003728  -0.000017861  -0.000049406  -0.000189037  -0.002063083  -0.000003438  -0.000505182
                        -0.000007432   0.000002502   0.000001465   0.001871817  -0.000886201   0.000050226  -0.000000492  -0.000024727

    6    6.1  1.0  1.0   0.006020910   0.000038680   0.002392382   0.000889384   0.001862490  -0.000184986   0.000398491   0.064602505
                        -0.000004825   0.000001675   0.000000931   0.000020152  -0.000007738   0.000000390  -0.000000319  -0.000051388

    7    1.1  1.0  0.0  -0.000000584  -0.000000170   0.000000451   0.168786368  -0.080146943   0.004727807  -0.000000198   0.000008853
                        -0.000965767  -0.000038539  -0.000445983   0.001449313   0.000003822   0.000001662  -0.000326940  -0.000000005

    8    2.1  1.0  0.0   0.000330414  -0.000815024  -0.000112076   0.000201757   0.000163315   0.000169132   0.000111883   0.000000008
                         0.546800323  -0.185147873   0.110921510   0.000001732  -0.000000008   0.000000059   0.185133017  -0.000000000

    9    3.1  1.0  0.0   0.000000314  -0.000000799  -0.000000109  -0.002213032  -0.015647550  -0.186243738   0.000000106   0.000008580
                         0.000519324  -0.000181612   0.000107633  -0.000019003   0.000000746  -0.000065477   0.000175842  -0.000000005

   10    4.1  1.0  0.0  -0.000000006  -0.000000015  -0.000000002   0.000036790   0.000244339   0.002920005  -0.000000000   0.000075038
                        -0.000010569  -0.000003517   0.000002120   0.000000316  -0.000000012   0.000001027  -0.000000699  -0.000000045

   11    5.1  1.0  0.0  -0.000005145  -0.000012776  -0.000001757  -0.000024410   0.000015082  -0.000004495  -0.000000341   0.000000611
                        -0.008514856  -0.002902371   0.001738900  -0.000000210  -0.000000001  -0.000000002  -0.000563557  -0.000000000

   12    6.1  1.0  0.0  -0.000000044  -0.000000135  -0.000000011   0.002646128  -0.001256666   0.000071778  -0.000000003  -0.000077486
                        -0.000073436  -0.000030763   0.000011076   0.000022721   0.000000060   0.000000025  -0.000004860   0.000000046

   13    1.1  1.0 -1.0  -0.386646214   0.002464319   0.152596155  -0.056745753  -0.118907130   0.010430431  -0.130908844   0.007369746
                         0.000467276  -0.000021696   0.000308370  -0.000974586   0.000011342   0.000007334   0.000158226  -0.000008823

   14    2.1  1.0 -1.0  -0.000682459   0.000263463   0.000446067   0.000512888   0.010817593   0.131714151  -0.000231031   0.000019066
                         0.000368041   0.000129427   0.000069446   0.119307511  -0.056792272   0.003319901   0.000124619  -0.000013296

   15    3.1  1.0 -1.0  -0.000467924  -0.000676868   0.000276940  -0.000832901   0.000126575   0.000126886  -0.000158446   0.000008900
                        -0.386644787  -0.133383311  -0.074163245   0.056857206   0.118833097  -0.010659801  -0.130908690   0.007360019

   16    4.1  1.0 -1.0  -0.000002516   0.000010651  -0.000002441   0.000012374  -0.000003083   0.000002667  -0.000000167   0.000026790
                        -0.006021134   0.002091157   0.001162731  -0.000887357  -0.001865099   0.000167246  -0.000398508   0.064371979

   17    5.1  1.0 -1.0  -0.000051924   0.000003706  -0.000017858   0.000017256   0.000188952   0.002063047  -0.000003437   0.000505152
                         0.000007495  -0.000002534  -0.000001501   0.001872389  -0.000886219   0.000051677   0.000000497  -0.000025331

   18    6.1  1.0 -1.0   0.006020912   0.000038664   0.002392379  -0.000889599  -0.001862491   0.000184986   0.000398491  -0.064602521
                        -0.000002452  -0.000002016   0.000003903   0.000004876  -0.000007561   0.000000520  -0.000000163   0.000025955

   19    1.1  0.0  0.0  -0.000000054   0.092900947   0.959913328   0.000005218   0.000000001  -0.000000004   0.000000051   0.000000000
                         0.000000000  -0.000408951   0.000969906  -0.000607735   0.000021797   0.000010966  -0.000000000   0.000000004

   20    2.1  0.0  0.0   0.000000664   0.959904711  -0.092901763   0.000001676   0.000000015  -0.000000002  -0.000000019   0.000000000
                        -0.000000000  -0.004225514  -0.000093869  -0.000195209   0.000318364   0.000005026   0.000000000   0.000000002

   21    3.1  0.0  0.0   0.000000002   0.000255076   0.000586061  -0.008280478  -0.000000321   0.000000333  -0.000000000  -0.000000000
                        -0.000000000  -0.000001123   0.000000592   0.964340581  -0.006723576  -0.000946151   0.000000000  -0.000000469

   22    4.1  0.0  0.0  -0.000000000  -0.000316995   0.000013282  -0.000057531   0.000045980   0.000007778   0.000000000  -0.000000001
                         0.000000000   0.000001395   0.000000013   0.006699982   0.964123244  -0.022124027  -0.000000000  -0.000000999

   23    5.1  0.0  0.0   0.000000003  -0.000013084  -0.000009554  -0.000009446   0.000001055  -0.000338964  -0.000000000   0.000000000
                        -0.000000000   0.000000058  -0.000000010   0.001100093   0.022116921   0.964146231   0.000000000   0.000000064

   24    6.1  0.0  0.0  -0.320639178   0.000000120  -0.000000128  -0.000000000   0.000000000  -0.000000000   0.947193579  -0.000000000
                         0.000193752  -0.000000001  -0.000000000   0.000000001   0.000000000   0.000000001  -0.000572425  -0.000000001

   25    1.1  2.0  2.0  -0.000000006  -0.000003619  -0.000002474   0.000037270   0.000154476   0.001843897  -0.000000004  -0.000315965
                         0.000000010   0.000000075  -0.000000025  -0.001670803   0.000793554  -0.000045044   0.000000005  -0.000327241

   26    2.1  2.0  2.0  -0.000000005  -0.000005816   0.000000145   0.000005888   0.000002080  -0.000000185  -0.000000003  -0.000001066
                        -0.000002161  -0.001902787  -0.003175204  -0.001589387  -0.003329695   0.000298641  -0.000001155  -0.000331920

   27    3.1  2.0  2.0  -0.000000002   0.000000069  -0.000000030  -0.001670946   0.000793614  -0.000045046  -0.000000001  -0.000326975
                         0.000000010   0.000003619   0.000002473  -0.000037274  -0.000154489  -0.001844052   0.000000006   0.000315943

   28    1.1  2.0  1.0   0.000000001   0.000009198   0.000001737   0.000004409  -0.000003268   0.000000145   0.000000000  -0.000230603
                        -0.000000983   0.001798483  -0.003234341  -0.000794422  -0.001664299   0.000149272  -0.000000463  -0.384215089

   29    2.1  2.0  1.0   0.000000002  -0.000003619  -0.000002475   0.000037279   0.000154537   0.001844652   0.000000002   0.000315760
                         0.000000007   0.000000067  -0.000000023  -0.001670734   0.000793519  -0.000045043   0.000000004   0.000326966

   30    3.1  2.0  1.0   0.000001587   0.003701530  -0.000059390   0.000794932   0.001665320  -0.000149363   0.000000903  -0.383804504
                         0.000000004  -0.000015013  -0.000001595   0.000001479   0.000005347  -0.000000332   0.000000002   0.000228890

   31    1.1  2.0  0.0   0.000000004  -0.000008866  -0.000006060   0.000035143   0.000000093   0.000000039   0.000000003   0.000000160
                        -0.000000000   0.000000039  -0.000000006  -0.004092701   0.001943627  -0.000111909  -0.000000000   0.000266896

   32    2.1  2.0  0.0   0.000000000   0.000000002   0.000000000   0.000000002  -0.000000000  -0.000000000   0.000000000   0.000375400
                        -0.000000000  -0.000000000   0.000000000  -0.000000286  -0.000000613   0.000000055  -0.000000000   0.627129825

   33    3.1  2.0  0.0   0.000000006  -0.000000132   0.000000058  -0.000000482   0.000000018  -0.000001588   0.000000003   0.000000154
                        -0.000000000   0.000000001   0.000000000   0.000056161   0.000378423   0.004518105  -0.000000000   0.000257436

   34    1.1  2.0 -1.0  -0.000000002   0.000006636   0.000004799  -0.000009234  -0.000003109   0.000000250  -0.000000001   0.000229379
                        -0.000000983   0.001798494  -0.003234338   0.000794380   0.001664300  -0.000149272  -0.000000463   0.384215090

   35    2.1  2.0 -1.0  -0.000000002   0.000003619   0.000002475   0.000008583   0.000154461   0.001844620  -0.000000002   0.000315368
                         0.000000007   0.000000035  -0.000000018   0.001671128  -0.000793534   0.000046340   0.000000004  -0.000327344

   36    3.1  2.0 -1.0  -0.000001587  -0.003701519   0.000059393   0.000794840   0.001665319  -0.000149363  -0.000000903  -0.383804503
                         0.000000006   0.000017576  -0.000001475   0.000012172  -0.000005505   0.000000227   0.000000003   0.000230601

   37    1.1  2.0 -2.0  -0.000000006  -0.000003619  -0.000002474  -0.000008573  -0.000154400  -0.001843865  -0.000000004   0.000315573
                        -0.000000010  -0.000000043   0.000000020  -0.001671196   0.000793569  -0.000046340  -0.000000005  -0.000327619

   38    2.1  2.0 -2.0  -0.000000003   0.000010936  -0.000006271   0.000021406  -0.000002397  -0.000000025  -0.000000002   0.000000669
                         0.000002161   0.001902764   0.003175198  -0.001589254  -0.003329695   0.000298641   0.000001155  -0.000331921

   39    3.1  2.0 -2.0  -0.000000002   0.000000037  -0.000000025   0.001671340  -0.000793629   0.000046343  -0.000000001   0.000327353
                        -0.000000010  -0.000003620  -0.000002473  -0.000008575  -0.000154413  -0.001844020  -0.000000006   0.000315551


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.0  1.0   0.000014403   0.000019014   0.011166547   0.010274694  -0.000036758  -0.000026190   0.004019725   0.000000004
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.0  1.0  -0.006600778  -0.007347401   0.000029951   0.000026095   0.009545107   0.010295639   0.000019324  -0.000000032
                        -0.003210001   0.000009316  -0.000018019  -0.000023645  -0.003874801   0.000014590   0.000033362   0.000000139

    3    3.1  1.0  1.0  -0.000011889  -0.000006937   0.000008919   0.000000024   0.000021882   0.000037534  -0.000024519   0.000000001
                        -0.000005821  -0.000006068   0.009074337   0.010290843  -0.000008918  -0.000007842  -0.007659417   0.000000001

    4    4.1  1.0  1.0   0.000022535   0.000080236   0.000000591  -0.000067398   0.000007904   0.000124416  -0.000230170  -0.000000067
                         0.000010729  -0.000053229   0.075359320   0.085462870  -0.000003515  -0.000065557  -0.063612469   0.000000041

    5    5.1  1.0  1.0   0.057445376   0.063949781   0.000718039   0.000672853  -0.078827605  -0.084995862   0.000188985  -0.000001618
                         0.027935363  -0.000080983  -0.000015080   0.000009401   0.031998430  -0.000120223  -0.000136829   0.000006834

    6    6.1  1.0  1.0   0.000472842   0.000500069  -0.092938001  -0.085503778  -0.000516089  -0.000668730  -0.033518489  -0.000000039
                         0.000291163  -0.000000958  -0.000059767  -0.000067543   0.000333801  -0.000001280   0.000049516   0.000000081

    7    1.1  1.0  0.0   0.004584507  -0.000021565   0.000000071  -0.000019601  -0.005433239  -0.000033827  -0.000000125  -0.000001364
                        -0.009392336  -0.000000004  -0.000019649  -0.000000080  -0.013451118  -0.000000106  -0.000046390  -0.000000316

    8    2.1  1.0  0.0   0.000008120  -0.000010036  -0.000010770  -0.000000091  -0.000017967  -0.000053151   0.000044641   0.000000010
                        -0.000016636  -0.000000002   0.002970414  -0.000000000  -0.000044480  -0.000000167   0.016527312   0.000000002

    9    3.1  1.0  0.0   0.000009478   0.010447665   0.000000038   0.000011149  -0.000012730   0.014522451   0.000000142   0.000000001
                        -0.000019418   0.000002031  -0.000010509   0.000000045  -0.000031517   0.000045708   0.000052602   0.000000000

   10    4.1  1.0  0.0   0.000051179   0.091341106   0.000000513   0.000092809  -0.000069942   0.120593329   0.000000368   0.000000348
                        -0.000104850   0.000017753  -0.000141551   0.000000377  -0.000173156   0.000379552   0.000136098   0.000000081

   11    5.1  1.0  0.0   0.000346523  -0.000113558   0.000089068  -0.000001294  -0.000321370   0.000173255  -0.000368529   0.000000511
                        -0.000709925  -0.000000022  -0.024566426  -0.000000005  -0.000795618   0.000000545  -0.136440585   0.000000118

   12    6.1  1.0  0.0  -0.040160362   0.000115413   0.000000335   0.000163152   0.045240633   0.000187466  -0.000002801  -0.000021602
                         0.082277027   0.000000022  -0.000092304   0.000000663   0.112002639   0.000000590  -0.001037095  -0.000005003

   13    1.1  1.0 -1.0   0.000008860  -0.000019014   0.011166253  -0.010274355  -0.000026446   0.000026190   0.004019667  -0.000000004
                         0.000011355  -0.000000007   0.000080970  -0.000083514   0.000025530   0.000000165  -0.000021715  -0.000000002

   14    2.1  1.0 -1.0  -0.006591385   0.007347397   0.000029820  -0.000025902   0.009558509  -0.010295527   0.000019144  -0.000000033
                        -0.003229245   0.000012172   0.000018235  -0.000023856  -0.003841621  -0.000050218  -0.000033466   0.000000139

   15    3.1  1.0 -1.0  -0.000011903   0.000006939   0.000074718  -0.000083669   0.000021937  -0.000037484   0.000016857  -0.000000001
                        -0.000005792  -0.000006065  -0.009074034   0.010290503  -0.000008782  -0.000008078   0.007659437   0.000000000

   16    4.1  1.0 -1.0   0.000022322  -0.000080215   0.000547032  -0.000627261   0.000008128  -0.000124001   0.000113468   0.000000042
                         0.000011166  -0.000053260  -0.075357335   0.085460594  -0.000002961  -0.000066339   0.063612784   0.000000066

   17    5.1  1.0 -1.0   0.057363080  -0.063949745   0.000717911  -0.000672907  -0.078937350   0.084994935   0.000189721  -0.000001551
                         0.028103963  -0.000105841   0.000020286   0.000003932   0.031726733   0.000414801   0.000135806   0.000006849

   18    6.1  1.0 -1.0   0.000520432  -0.000500069  -0.092935991   0.085501502  -0.000603142   0.000668725  -0.033518268  -0.000000001
                         0.000193665  -0.000001152  -0.000614140   0.000627448   0.000118284   0.000002929   0.000131551   0.000000090

   19    1.1  0.0  0.0  -0.000000003  -0.000000000   0.001588749   0.000000018  -0.000000498   0.000000001   0.000431322   0.000000000
                        -0.000000002   0.000000001   0.000005760  -0.000004315   0.000000201  -0.000000379  -0.000001165  -0.000000000

   20    2.1  0.0  0.0   0.000000008   0.000000000   0.000432276   0.000000014   0.000003604   0.000000014  -0.001587074  -0.000000000
                         0.000000004  -0.000000009   0.000001567  -0.000003372  -0.000001456  -0.000004429   0.000004287   0.000000000

   21    3.1  0.0  0.0   0.000004052   0.000000000   0.000001655  -0.000002824   0.001382847   0.000000066   0.000002687   0.000000007
                         0.000001978  -0.000000049   0.000000006   0.000694750  -0.000558566  -0.000020923  -0.000000007  -0.000000031

   22    4.1  0.0  0.0  -0.000001889   0.000000000   0.000004687  -0.000006054  -0.000643570   0.000000314  -0.000003304  -0.000000003
                        -0.000000922  -0.000000238   0.000000017   0.001489494   0.000259954  -0.000099737   0.000000009   0.000000015

   23    5.1  0.0  0.0   0.000000064   0.000000001  -0.000001840   0.000000404   0.000021461   0.000005167   0.000004348   0.000000000
                         0.000000031  -0.000003858  -0.000000007  -0.000099325  -0.000008669  -0.001641836  -0.000000012  -0.000000001

   24    6.1  0.0  0.0   0.000000003   0.000000000   0.000000014   0.000000000   0.000000000   0.000000000  -0.000002361  -0.000000000
                         0.000000001  -0.000000002   0.000000000  -0.000000002  -0.000000000  -0.000000002   0.000000006   0.000000000

   25    1.1  2.0  2.0  -0.344786071  -0.383576350   0.000282964   0.000219536   0.264436670   0.285167707   0.000337790   0.063687380
                        -0.167670979   0.000485964  -0.000260077  -0.000383881  -0.107346315   0.000403786   0.000722085  -0.274921984

   26    2.1  2.0  2.0   0.000001651   0.000000930  -0.000092120  -0.000343106   0.000544332   0.000767258  -0.000619766  -0.000049179
                        -0.000000573  -0.000000966   0.559781604   0.568759956  -0.000694918  -0.000438105  -0.100659273   0.000257483

   27    3.1  2.0  2.0  -0.167648896   0.000485846  -0.000259329  -0.000383032  -0.107308433   0.000403753   0.000721449   0.036594514
                         0.344740537   0.383525683  -0.000282948  -0.000219539  -0.264343643  -0.285067285  -0.000337678   0.008478872

   28    1.1  2.0  1.0   0.000295842  -0.000001436  -0.000361813  -0.000171592   0.000024982  -0.000769286   0.001000222   0.000100544
                         0.000142118   0.000314853   0.366957077   0.284100949  -0.000956266  -0.000223397   0.434613902  -0.000476927

   29    2.1  2.0  1.0   0.345966495   0.384554589   0.000283097   0.000220187   0.262581508   0.283778462   0.000337507   0.110421712
                         0.168245134  -0.000487163  -0.000259128  -0.000381941  -0.106592988   0.000401781   0.000720798  -0.476674842

   30    3.1  2.0  1.0   0.000142674   0.000315587  -0.192754679  -0.284550858  -0.000260770   0.000214925   0.535050577   0.000038139
                        -0.000294582   0.000001729   0.000270329  -0.000170837   0.000519575   0.001536037  -0.001618611  -0.000002074

   31    1.1  2.0  0.0   0.283260253   0.000000089   0.000691228   0.000003818   0.645194379   0.000003793   0.000822759  -0.135214427
                         0.138262583  -0.000459757   0.000002506  -0.000939341  -0.260609947  -0.001205023  -0.000002222   0.583775599

   32    2.1  2.0  0.0  -0.000480731   0.000000100  -0.000000140  -0.000002014   0.000001806  -0.000000002   0.000000019   0.000125230
                        -0.000234650  -0.000514637  -0.000000001   0.000495674  -0.000000729   0.000000687  -0.000000000  -0.000537552

   33    3.1  2.0  0.0   0.000414087  -0.000061167   0.000637169  -0.000002174   0.001119467  -0.002190394  -0.001769020   0.000003903
                         0.000202121   0.314718410   0.000002310   0.000534869  -0.000452181   0.695944392   0.000004778  -0.000016843

   34    1.1  2.0 -1.0  -0.000294039  -0.000001313  -0.002299050   0.002137634  -0.000682131  -0.000770677   0.001347577  -0.000120570
                        -0.000145810  -0.000314853   0.366950053  -0.284092958  -0.000670645   0.000218551   0.434612964   0.000472289

   35    2.1  2.0 -1.0  -0.345473685   0.384554372  -0.000281210   0.000217076  -0.262949493   0.283775369  -0.000333608  -0.110395097
                        -0.169254759   0.000636643  -0.000261174   0.000383719   0.105681965   0.001384520   0.000722611   0.476681009

   36    3.1  2.0 -1.0   0.000144475   0.000315588   0.192747652  -0.284542846   0.000548476   0.000224589  -0.535051514   0.000033326
                        -0.000293703  -0.000001606   0.001668011  -0.002142046   0.000192701  -0.001534654   0.001271756   0.000018704

   37    1.1  2.0 -2.0  -0.344294855   0.383576132   0.000281070  -0.000216408   0.264807420  -0.285164599   0.000333884   0.063668780
                        -0.168677336   0.000635064   0.000262122  -0.000385652  -0.106428446  -0.001391260  -0.000723899  -0.274926305

   38    2.1  2.0 -2.0   0.000000564  -0.000000929   0.003966932  -0.004279882   0.000874269  -0.000764485  -0.000075995  -0.000069666
                         0.000001654  -0.000000966  -0.559767557   0.568743955   0.000121910  -0.000442926   0.100661152   0.000252738

   39    3.1  2.0 -2.0   0.168655023  -0.000634925  -0.000261374   0.000384803   0.106391090   0.001390661   0.000723263  -0.036595770
                        -0.344249434   0.383525465   0.000281060  -0.000216419   0.264714181  -0.285064179   0.000333775  -0.008473498


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.0  1.0  -0.000001025   0.000000008   0.000000803   0.000000009   0.000000076   0.000000003  -0.005837191  -0.000014171
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.0  1.0   0.000000007  -0.000002077  -0.000000006  -0.000002262  -0.000000002  -0.000000833  -0.000010297   0.004476378
                         0.000000000   0.000000515  -0.000000001   0.000000044   0.000000000  -0.000000045  -0.000005542  -0.000009766

    3    3.1  1.0  1.0   0.000000001  -0.000000008  -0.000000017  -0.000000009  -0.000000250  -0.000000004  -0.000000021   0.000004224
                         0.000000139   0.000000003  -0.000002173  -0.000000001  -0.000002661  -0.000000002   0.005833996   0.000006241

    4    4.1  1.0  1.0   0.000000269  -0.000000703   0.000000258  -0.000000717   0.000009309  -0.000000193  -0.000322627   0.000614881
                        -0.000007784   0.000000150   0.000075702   0.000000009   0.000100931  -0.000000016  -0.408004990  -0.000690834

    5    5.1  1.0  1.0   0.000000383  -0.000059176  -0.000000325  -0.000073278  -0.000000121  -0.000038581   0.003521476   0.497555488
                        -0.000000025   0.000014534   0.000000378   0.000001297   0.000000459  -0.000002114   0.000505618  -0.001083382

    6    6.1  1.0  1.0  -0.000016288  -0.000000471   0.000015159  -0.000000595   0.000013474  -0.000000312  -0.407473703   0.003599990
                        -0.000000068   0.000000179   0.000000522  -0.000000039  -0.000000482  -0.000000175   0.000325977  -0.000008634

    7    1.1  1.0  0.0  -0.000000006   0.000000006  -0.000000000   0.000000012  -0.000000001  -0.000000008  -0.000000009   0.000010172
                         0.000000000  -0.000000002  -0.000000010   0.000000616   0.000000000  -0.000000000  -0.000014478  -0.000000012

    8    2.1  1.0  0.0  -0.000000000  -0.000000002   0.000000019  -0.000000000  -0.000000002  -0.000000002   0.000004966   0.000006071
                         0.000000000   0.000000001   0.000002709  -0.000000003   0.000000000  -0.000000000   0.008233059  -0.000000007

    9    3.1  1.0  0.0  -0.000000001  -0.000002435   0.000000000  -0.000000000  -0.000000003   0.000002891   0.000000005  -0.006361515
                         0.000000000   0.000000603   0.000000010  -0.000000000   0.000000000   0.000000157   0.000007796   0.000007533

   10    4.1  1.0  0.0   0.000000076   0.000077528   0.000000006  -0.000000003  -0.000000008  -0.000115787   0.000000434   0.698766324
                        -0.000000000  -0.000019196   0.000000906  -0.000000138   0.000000001  -0.000006281   0.000718844  -0.000827483

   11    5.1  1.0  0.0   0.000000033   0.000000431   0.000000487  -0.000000002   0.000000046  -0.000000513   0.000348949  -0.000878588
                        -0.000000000  -0.000000107   0.000068671  -0.000000086  -0.000000004  -0.000000028   0.578553679   0.000001040

   12    6.1  1.0  0.0   0.000000036   0.000000672   0.000000004  -0.000000070  -0.000000222  -0.000000832   0.000003011   0.000558454
                         0.000000000  -0.000000166   0.000000531  -0.000003690   0.000000021  -0.000000045   0.004992541  -0.000000661

   13    1.1  1.0 -1.0   0.000001025  -0.000000007   0.000000803   0.000000009  -0.000000075  -0.000000003  -0.005837187   0.000014171
                        -0.000000000   0.000000004  -0.000000011  -0.000000000   0.000000014  -0.000000000   0.000007041  -0.000000034

   14    2.1  1.0 -1.0  -0.000000007   0.000002077  -0.000000006  -0.000002262   0.000000002   0.000000833  -0.000010291  -0.004476389
                         0.000000000  -0.000000513   0.000000001   0.000000042   0.000000000   0.000000045   0.000005554   0.000000836

   15    3.1  1.0 -1.0  -0.000000001   0.000000009   0.000000014  -0.000000009  -0.000000248   0.000000005  -0.000007058  -0.000004210
                         0.000000139  -0.000000002   0.000002173   0.000000001  -0.000002661  -0.000000002  -0.005833992   0.000006251

   16    4.1  1.0 -1.0  -0.000000270   0.000000692  -0.000000815  -0.000000717   0.000009574   0.000000193   0.000169542  -0.000616515
                        -0.000007784  -0.000000195  -0.000075698   0.000000018   0.000100906   0.000000005   0.408005083  -0.000689376

   17    5.1  1.0 -1.0  -0.000000383   0.000059121  -0.000000331  -0.000073275   0.000000204   0.000038583   0.003520864  -0.497556658
                        -0.000000025  -0.000014756  -0.000000374   0.000001489   0.000000428   0.000002072  -0.000509865   0.000095036

   18    6.1  1.0 -1.0   0.000016288   0.000000500   0.000015150  -0.000000593  -0.000013330   0.000000329  -0.407473800  -0.003600000
                        -0.000000072  -0.000000062  -0.000000737   0.000000062   0.000002025  -0.000000141   0.000165550  -0.000000108

   19    1.1  0.0  0.0  -0.000000000   0.000000000   0.000000045   0.000000000  -0.000000000  -0.000000000  -0.000002902  -0.000000000
                        -0.000000000   0.000000002  -0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000002  -0.000000002

   20    2.1  0.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000003228   0.000000000
                        -0.000000001   0.000000001   0.000000000   0.000000000   0.000000000   0.000000002  -0.000000002   0.000000015

   21    3.1  0.0  0.0  -0.000000000  -0.000000000   0.000000000  -0.000000020   0.000000001  -0.000000000  -0.000000012   0.000000000
                        -0.000000016  -0.000000000  -0.000000000   0.000000000   0.000000008   0.000000001   0.000000000   0.000000096

   22    4.1  0.0  0.0  -0.000000000   0.000000000   0.000000000   0.000000007   0.000000002  -0.000000000   0.000000007   0.000000001
                        -0.000000034   0.000000000  -0.000000000  -0.000000000   0.000000019   0.000000000  -0.000000000   0.000000501

   23    5.1  0.0  0.0   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000004   0.000000010
                         0.000000002  -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000014   0.000000000   0.000008268

   24    6.1  0.0  0.0  -0.000000000   0.000000002   0.000000075  -0.000000001   0.000000000   0.000000000  -0.003804832  -0.000000000
                        -0.000000002   0.000000007  -0.000000001   0.000000000   0.000000004  -0.000000002   0.000002295  -0.000000010

   25    1.1  2.0  2.0  -0.000019306   0.456495203   0.000018683   0.432329817   0.000039809   0.212862539  -0.000000212   0.049790462
                        -0.000266791  -0.113009510   0.000514707  -0.008197455   0.000346763   0.011559260  -0.000000479  -0.000108539

   26    2.1  2.0  2.0  -0.000014698  -0.000483818   0.002874250  -0.000242332   0.028587230   0.000111542   0.000000265  -0.000000363
                        -0.268949126   0.000111067   0.408180067  -0.000016564   0.305726196  -0.000009948   0.000021904  -0.000000642

   27    3.1  2.0  2.0   0.000031453   0.074106388  -0.000262602   0.009765719  -0.000407577  -0.022457719  -0.000000059  -0.000108232
                        -0.000017068   0.299358384   0.000027770   0.514995961   0.000053586   0.413647805   0.000000222  -0.049703813

   28    1.1  2.0  1.0   0.000038254   0.000486551  -0.002875442   0.000074852  -0.009192453  -0.000111318  -0.000000313   0.000000274
                         0.506839781  -0.000103066  -0.408171722   0.000019761  -0.098408046   0.000005725  -0.000154316  -0.000070313

   29    2.1  2.0  1.0  -0.000005183   0.314454478  -0.000017608  -0.165110425  -0.000027552  -0.401456320   0.000000032  -0.049760502
                        -0.000470589  -0.077850735   0.000503034   0.003132552  -0.000123076  -0.021790662  -0.000000500   0.000108531

   30    3.1  2.0  1.0  -0.031026704   0.000119242   0.408361730  -0.000013478   0.513301237  -0.000014255  -0.000134013  -0.000069172
                        -0.000009362   0.000482501  -0.002875268   0.000411484  -0.048007791  -0.000111027  -0.000000375   0.000000713

   31    1.1  2.0  0.0   0.000000781  -0.000002334   0.000025812   0.202131454   0.000014299  -0.000000800   0.000000317   0.000000048
                         0.000576337  -0.000009426  -0.000000185  -0.003842287   0.000152829   0.000014534  -0.000000000   0.000040148

   32    2.1  2.0  0.0   0.000057919   0.000004906  -0.000000887  -0.000411705   0.047527060   0.000000584   0.000000218   0.000000135
                         0.582780697   0.000019806  -0.000000009   0.000007823   0.508001921  -0.000010420  -0.000000000   0.000113735

   33    3.1  2.0  0.0   0.000000000  -0.095408476   0.000616604  -0.000007456   0.000001832  -0.026680230  -0.000000282  -0.000047942
                         0.000005737  -0.385329250  -0.000004367   0.000000175   0.000019410   0.491831397   0.000000000  -0.040484133

   34    1.1  2.0 -1.0  -0.000062489   0.000478426  -0.002912087  -0.000074054   0.009220793  -0.000110040   0.000000127   0.000000440
                        -0.506839795  -0.000135874  -0.408171443   0.000022592   0.098405389  -0.000017732  -0.000154317   0.000070312

   35    2.1  2.0 -1.0  -0.000003909   0.314450291   0.000024730   0.165110143  -0.000004242  -0.401457744  -0.000000033  -0.049760620
                         0.000470590  -0.077867643   0.000502730  -0.003144562   0.000126077  -0.021764776  -0.000000500   0.000009322

   36    3.1  2.0 -1.0  -0.031026718  -0.000119678  -0.408361455   0.000029101   0.513298439  -0.000026179   0.000134013  -0.000069173
                         0.000015529  -0.000482395   0.002914955   0.000410682  -0.048037642   0.000108798  -0.000000537  -0.000000549

   37    1.1  2.0 -2.0   0.000018573  -0.456485921   0.000011394   0.432329044   0.000025210  -0.212863887  -0.000000211  -0.049790580
                        -0.000266792   0.113046860  -0.000514927  -0.008238727   0.000348145  -0.011535007   0.000000479   0.000009386

   38    2.1  2.0 -2.0  -0.000038760   0.000479743  -0.002913397  -0.000241535   0.028618060  -0.000109791   0.000000238   0.000000361
                        -0.268949140  -0.000127523  -0.408179782   0.000025759   0.305723307  -0.000021954  -0.000021904  -0.000000643

   39    3.1  2.0 -2.0  -0.000031454   0.074135553  -0.000262978  -0.009813237   0.000410473  -0.022420463  -0.000000059  -0.000009487
                        -0.000016972   0.299351129  -0.000024050  -0.514995042  -0.000022954   0.413649869  -0.000000222  -0.049703930


   Nr   State  S   Sz       33            34            35            36            37            38            39

    1    1.1  1.0  1.0  -0.000008702   0.004494282  -0.000607407  -0.000004809  -0.000006990  -0.001651409  -0.001811741
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.0  1.0   0.004027838   0.000014221  -0.000003800   0.001684551   0.001596392  -0.000004709  -0.000005575
                         0.001943960   0.000008032  -0.000005629  -0.000006315  -0.000558114   0.000003940   0.000002869

    3    3.1  1.0  1.0   0.000007240   0.000000050   0.000004464   0.000006259   0.000003763   0.000000063  -0.000001499
                         0.000003420  -0.004486517   0.001264259  -0.000001800  -0.000001310  -0.001667695  -0.001441714

    4    4.1  1.0  1.0   0.000179601   0.000393231   0.001474151   0.000772834   0.000076141   0.000397276  -0.000019641
                         0.000088542   0.496669071   0.376668296  -0.000543648  -0.000027822  -0.491778153  -0.426462499

    5    5.1  1.0  1.0   0.448896192  -0.003580204  -0.000759013  -0.490985201  -0.462630408  -0.003717349  -0.003941405
                         0.216644870  -0.000198477   0.000839951   0.001841893   0.161733960  -0.000084357   0.000085130

    6    6.1  1.0  1.0   0.003689326   0.494938414   0.182172606  -0.003698824  -0.002744592   0.493455136   0.539383203
                         0.002240503  -0.000389480  -0.000294928   0.000015181   0.001699720   0.000400744   0.000340780

    7    1.1  1.0  0.0  -0.002773556  -0.000005312   0.000000026  -0.000005164  -0.000761008   0.000003281  -0.000000015
                         0.005732215   0.000000003   0.000008579   0.000000011  -0.002188101   0.000000013   0.000004316

    8    2.1  1.0  0.0  -0.000004889  -0.000000013  -0.000008016  -0.000008835  -0.000003012  -0.000000008   0.000001840
                         0.000010105   0.000000000  -0.002681433   0.000000019  -0.000008662  -0.000000000  -0.000541803

    9    3.1  1.0  0.0  -0.000004443  -0.000008831  -0.000000026   0.002331047  -0.000001694  -0.000002550  -0.000000005
                         0.000009183   0.000000005  -0.000008781  -0.000004978  -0.000004870  -0.000000010   0.000001589

   10    4.1  1.0  0.0   0.000245079   0.000979763  -0.000002616   0.699128833  -0.000328884  -0.000757995  -0.000002808
                        -0.000506515  -0.000000587  -0.000874919  -0.001492909  -0.000945628  -0.000002936   0.000827029

   11    5.1  1.0  0.0   0.002626168   0.000004381   0.002355445   0.001076757  -0.001484080   0.000009879  -0.000537576
                        -0.005427603  -0.000000003   0.787916926  -0.000002299  -0.004267125   0.000000038   0.158332941

   12    6.1  1.0  0.0  -0.303777282  -0.000588831   0.000016902   0.001007657   0.230054708  -0.000986800  -0.000001227
                         0.627828309   0.000000353   0.005653870  -0.000002152   0.661468628  -0.000003822   0.000361279

   13    1.1  1.0 -1.0  -0.000005400  -0.004494279  -0.000607396   0.000004809  -0.000005482   0.001651360  -0.001811699
                        -0.000006823   0.000005389   0.000003632  -0.000000021   0.000004338   0.000012792  -0.000012302

   14    2.1  1.0 -1.0   0.004023975  -0.000014211  -0.000003766  -0.001684563   0.001598191   0.000004678  -0.000005555
                         0.001951943   0.000008049   0.000005652   0.000000880  -0.000552942   0.000003976  -0.000002907

   15    3.1  1.0 -1.0   0.000007175  -0.000005429  -0.000003095  -0.000006267   0.000003763   0.000012855  -0.000011289
                         0.000003554  -0.004486514  -0.001264263  -0.000001773  -0.000001308  -0.001667645   0.001441671

   16    4.1  1.0 -1.0   0.000180888   0.000202280  -0.000777924  -0.000775148   0.000076973   0.003412135  -0.002915481
                         0.000085882   0.496669185  -0.376670377  -0.000540342  -0.000025430  -0.491766476   0.426452534

   17    5.1  1.0 -1.0   0.448460701   0.003579964  -0.000764022   0.490988589  -0.463147902   0.003717891  -0.003940736
                         0.217544915  -0.000202769  -0.000835398  -0.000254999   0.160246025  -0.000055559  -0.000111892

   18    6.1  1.0 -1.0   0.004046426  -0.494938525   0.182171113   0.003698855  -0.003206989  -0.493443436   0.539373082
                         0.001502472   0.000203956  -0.000794263  -0.000000616   0.000370203  -0.003421658   0.003321841

   19    1.1  0.0  0.0   0.000000007  -0.000000000  -0.000529961  -0.000000001  -0.000001768  -0.000000021  -0.002121743
                         0.000000003  -0.000000005   0.000001584  -0.000000535   0.000000615   0.000005317  -0.000007204

   20    2.1  0.0  0.0  -0.000000037  -0.000000000   0.002122931  -0.000000013   0.000005639  -0.000000017  -0.000529445
                        -0.000000018  -0.000000008  -0.000006346  -0.000006120  -0.000001961   0.000004272  -0.000001798

   21    3.1  0.0  0.0  -0.000010161   0.000000001  -0.000004530  -0.000000060   0.001873124   0.000003574  -0.000002923
                        -0.000004917   0.000001651   0.000000014  -0.000027895  -0.000651461  -0.000922656  -0.000000010

   22    4.1  0.0  0.0   0.000004736   0.000000002   0.000004867  -0.000000285  -0.000871584   0.000007663  -0.000005326
                         0.000002291   0.000003518  -0.000000015  -0.000133394   0.000303132  -0.001978406  -0.000000018

   23    5.1  0.0  0.0  -0.000000163  -0.000000000  -0.000006059  -0.000004663   0.000029300  -0.000000514   0.000002367
                        -0.000000079  -0.000000243   0.000000018  -0.002183631  -0.000010190   0.000132630   0.000000008

   24    6.1  0.0  0.0   0.000000030  -0.000000000   0.000005176  -0.000000000  -0.000000005   0.000000000   0.000003156
                         0.000000015  -0.000000001  -0.000000015  -0.000000005   0.000000002  -0.000000004   0.000000011

   25    1.1  2.0  2.0   0.044920772   0.000070016   0.000081525  -0.048940746  -0.046112896   0.000054830   0.000072025
                         0.021679864   0.000042267   0.000130605   0.000183570   0.016121573  -0.000069600  -0.000044587

   26    2.1  2.0  2.0   0.000000236  -0.000000689  -0.000121119  -0.000138026  -0.000095155  -0.000061804  -0.000014205
                        -0.000000819  -0.000142383  -0.019492899   0.000108918   0.000148089   0.098801491   0.096859547

   27    3.1  2.0  2.0   0.021642242   0.000041701   0.000129980   0.000183153   0.016094399  -0.000068755  -0.000043851
                        -0.044842550  -0.000069908  -0.000081383   0.048858558   0.046035499  -0.000054801  -0.000071968

   28    1.1  2.0  1.0  -0.000037239   0.000030116   0.000189521   0.000138418   0.000005191  -0.000031297  -0.000064230
                        -0.000018924   0.049882076   0.073803983   0.000054178   0.000227906   0.049513076   0.065277739

   29    2.1  2.0  1.0  -0.044756809  -0.000069694   0.000081880  -0.049556478  -0.046879914   0.000053960   0.000071431
                        -0.021601243  -0.000041957   0.000130512   0.000185899   0.016389403  -0.000069834  -0.000044649

   30    3.1  2.0  1.0  -0.000018142   0.049887784   0.093111050  -0.000054878   0.000079260  -0.049194665  -0.031523371
                         0.000038287  -0.000029511  -0.000309360  -0.000275974  -0.000100582  -0.000029889   0.000050626

   31    1.1  2.0  0.0  -0.036420259  -0.000000020   0.000199817   0.000000416  -0.114298094   0.000000664   0.000175273
                        -0.017622091  -0.000034007  -0.000000597   0.000194790   0.039752172  -0.000171368   0.000000595

   32    2.1  2.0  0.0   0.000061313  -0.000048885  -0.000000051   0.000000000   0.000001094   0.000000595  -0.000000423
                         0.000029666  -0.081542601   0.000000000   0.000000146  -0.000000380  -0.000153609  -0.000000001

   33    3.1  2.0  0.0  -0.000036811  -0.000000034  -0.000320550  -0.000257601  -0.000185586  -0.000000511   0.000109076
                        -0.000017811  -0.000056459   0.000000958  -0.120634715   0.000064546   0.000132014   0.000000370

   34    1.1  2.0 -1.0   0.000037950  -0.000029693   0.000251746   0.000138186   0.000137352   0.000352240  -0.000379032
                         0.000017456  -0.049882076   0.073803797  -0.000054769   0.000181942  -0.049511833   0.065276671

   35    2.1  2.0 -1.0   0.044714057  -0.000069643  -0.000081098  -0.049556820   0.046932571   0.000053417  -0.000071126
                         0.021689600   0.000042040   0.000130999   0.000025746  -0.016238001   0.000070249  -0.000045133

   36    3.1  2.0 -1.0  -0.000018763   0.049887783  -0.093111236  -0.000053699  -0.000124568  -0.049193420   0.031522300
                         0.000037987  -0.000030304   0.000247344   0.000276206  -0.000029692  -0.000351182   0.000264681

   37    1.1  2.0 -2.0   0.044877461  -0.000069965   0.000080743   0.048941084  -0.046164891  -0.000054289   0.000071721
                         0.021769377   0.000042351  -0.000131090  -0.000025446   0.015972072  -0.000070023   0.000045075

   38    2.1  2.0 -2.0  -0.000000496   0.000000519  -0.000004572   0.000138490  -0.000166512  -0.000703532   0.000643507
                         0.000000693  -0.000142384   0.019493275   0.000108328  -0.000057082   0.098799006  -0.096857410

   39    3.1  2.0 -2.0  -0.021731388  -0.000041784   0.000130464   0.000025511  -0.015945355   0.000069178  -0.000044338
                         0.044799416  -0.000069857   0.000080604   0.048858895  -0.046087336  -0.000054267   0.000071669


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.0  1.0   7.497%  23.492%  23.215%   0.012%   0.015%  24.988%   0.004%   0.000%  14.950%   0.001%
    2    2.1  1.0  1.0   0.000%   0.000%   0.026%  23.230%  23.228%   0.004%  24.988%  24.992%   0.000%   0.000%
    3    3.1  1.0  1.0  30.987%   0.003%  23.214%   0.014%   0.014%  24.987%   0.005%   0.000%  14.949%   1.779%
    4    4.1  1.0  1.0   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.004%   0.000%
    5    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.001%   0.001%   0.000%   0.000%
    6    6.1  1.0  1.0   0.000%   0.001%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.004%   0.000%
    7    1.1  1.0  0.0   0.000%   0.000%   0.030%   0.000%  46.454%   0.000%   0.000%  49.985%   0.000%   0.000%
    8    2.1  1.0  0.0  16.001%  45.978%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  29.899%   3.428%
    9    3.1  1.0  0.0   0.000%   0.000%   0.029%  46.456%   0.000%   0.011%  49.974%   0.000%   0.000%   0.000%
   10    4.1  1.0  0.0   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   11    5.1  1.0  0.0   0.001%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.001%
   12    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.002%   0.000%   0.000%
   13    1.1  1.0 -1.0   7.497%  23.492%  23.215%   0.012%   0.015%  24.988%   0.004%   0.000%  14.950%   0.001%
   14    2.1  1.0 -1.0   0.000%   0.000%   0.026%  23.230%  23.228%   0.004%  24.988%  24.992%   0.000%   0.000%
   15    3.1  1.0 -1.0  30.987%   0.003%  23.214%   0.014%   0.014%  24.987%   0.005%   0.000%  14.949%   1.779%
   16    4.1  1.0 -1.0   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.004%   0.000%
   17    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.001%   0.001%   0.000%   0.000%
   18    6.1  1.0 -1.0   0.000%   0.001%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.004%   0.000%
   19    1.1  0.0  0.0   2.194%   4.799%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.863%
   20    2.1  0.0  0.0   4.799%   2.194%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  92.143%
   21    3.1  0.0  0.0   0.000%   0.000%   1.393%   0.000%   5.600%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   5.591%   0.011%   1.390%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.008%   6.982%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  10.281%   0.000%
   25    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.004%   0.004%   0.000%   0.000%
   26    2.1  2.0  2.0   0.009%   0.003%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.004%   0.004%   0.000%   0.000%
   28    1.1  2.0  1.0   0.000%   0.012%   0.003%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%
   29    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.004%   0.004%   0.000%   0.000%
   30    3.1  2.0  1.0   0.009%   0.003%   0.003%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.001%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.000%   0.002%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.017%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.012%   0.003%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%
   35    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.004%   0.004%   0.000%   0.000%
   36    3.1  2.0 -1.0   0.009%   0.003%   0.003%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.001%
   37    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.004%   0.004%   0.000%   0.000%
   38    2.1  2.0 -2.0   0.009%   0.003%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.004%   0.004%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.0  1.0   2.329%   0.322%   1.414%   0.011%   1.714%   0.005%   0.000%   0.000%   0.012%   0.011%
    2    2.1  1.0  1.0   0.000%   1.423%   0.334%   1.736%   0.000%   0.000%   0.005%   0.005%   0.000%   0.000%
    3    3.1  1.0  1.0   0.550%   0.323%   1.412%   0.011%   1.714%   0.005%   0.000%   0.000%   0.008%   0.011%
    4    4.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.414%   0.000%   0.000%   0.568%   0.730%
    5    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.408%   0.409%   0.000%   0.000%
    6    6.1  1.0  1.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.417%   0.000%   0.000%   0.864%   0.731%
    7    1.1  1.0  0.0   0.000%   2.849%   0.642%   0.002%   0.000%   0.000%   0.011%   0.000%   0.000%   0.000%
    8    2.1  1.0  0.0   1.230%   0.000%   0.000%   0.000%   3.427%   0.000%   0.000%   0.000%   0.001%   0.000%
    9    3.1  1.0  0.0   0.000%   0.000%   0.024%   3.469%   0.000%   0.000%   0.000%   0.011%   0.000%   0.000%
   10    4.1  1.0  0.0   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.834%   0.000%   0.000%
   11    5.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.060%   0.000%
   12    6.1  1.0  0.0   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.838%   0.000%   0.000%   0.000%
   13    1.1  1.0 -1.0   2.329%   0.322%   1.414%   0.011%   1.714%   0.005%   0.000%   0.000%   0.012%   0.011%
   14    2.1  1.0 -1.0   0.000%   1.423%   0.334%   1.736%   0.000%   0.000%   0.005%   0.005%   0.000%   0.000%
   15    3.1  1.0 -1.0   0.550%   0.323%   1.412%   0.011%   1.714%   0.005%   0.000%   0.000%   0.008%   0.011%
   16    4.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.414%   0.000%   0.000%   0.568%   0.730%
   17    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.408%   0.409%   0.000%   0.000%
   18    6.1  1.0 -1.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.417%   0.000%   0.000%   0.864%   0.731%
   19    1.1  0.0  0.0  92.143%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.863%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%  93.002%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.004%  92.953%   0.049%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.049%  92.958%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%  89.718%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.699%  14.713%   0.000%   0.000%
   26    2.1  2.0  2.0   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%  31.336%  32.349%
   27    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.695%  14.709%   0.000%   0.000%
   28    1.1  2.0  1.0   0.001%   0.000%   0.000%   0.000%   0.000%  14.762%   0.000%   0.000%  13.466%   8.071%
   29    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.800%  14.788%   0.000%   0.000%
   30    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.731%   0.000%   0.000%   3.715%   8.097%
   31    1.1  2.0  0.0   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   9.935%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%  39.329%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   9.905%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.001%   0.000%   0.000%   0.000%   0.000%  14.762%   0.000%   0.000%  13.466%   8.071%
   35    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.800%  14.788%   0.000%   0.000%
   36    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.731%   0.000%   0.000%   3.715%   8.097%
   37    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.699%  14.713%   0.000%   0.000%
   38    2.1  2.0 -2.0   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%  31.336%  32.349%
   39    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.695%  14.709%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.0  1.0   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.0  1.0   0.011%   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.0  1.0   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.0  1.0   0.000%   0.000%   0.405%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.0  1.0   0.724%   0.722%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.0  1.0   0.000%   0.000%   0.112%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.1  1.0  0.0   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.1  1.0  0.0   0.000%   0.000%   0.027%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.1  1.0  0.0   0.000%   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.1  1.0  0.0   0.000%   1.454%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    5.1  1.0  0.0   0.000%   0.000%   1.862%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    6.1  1.0  0.0   1.459%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.1  1.0 -1.0   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.1  1.0 -1.0   0.011%   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.1  1.0 -1.0   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.1  1.0 -1.0   0.000%   0.000%   0.405%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    5.1  1.0 -1.0   0.724%   0.722%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    6.1  1.0 -1.0   0.000%   0.000%   0.112%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    1.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   8.145%   8.132%   0.000%   7.964%   0.000%  22.116%   0.000%  18.698%   0.000%   4.544%
   26    2.1  2.0  2.0   0.000%   0.000%   1.013%   0.000%   7.233%   0.000%  16.662%   0.000%   9.429%   0.000%
   27    3.1  2.0  2.0   8.139%   8.126%   0.000%   0.141%   0.000%   9.511%   0.000%  26.532%   0.000%  17.161%
   28    1.1  2.0  1.0   0.000%   0.000%  18.889%   0.000%  25.689%   0.000%  16.661%   0.000%   0.977%   0.000%
   29    2.1  2.0  1.0   8.031%   8.053%   0.000%  23.941%   0.000%  10.494%   0.000%   2.727%   0.000%  16.164%
   30    3.1  2.0  1.0   0.000%   0.000%  28.628%   0.000%   0.096%   0.000%  16.677%   0.000%  26.578%   0.000%
   31    1.1  2.0  0.0  48.419%   0.000%   0.000%  35.908%   0.000%   0.000%   0.000%   4.087%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%  33.963%   0.000%   0.000%   0.000%  26.032%   0.000%
   33    3.1  2.0  0.0   0.000%  48.434%   0.000%   0.000%   0.000%  15.758%   0.000%   0.000%   0.000%  24.261%
   34    1.1  2.0 -1.0   0.000%   0.000%  18.889%   0.000%  25.689%   0.000%  16.661%   0.000%   0.977%   0.000%
   35    2.1  2.0 -1.0   8.031%   8.053%   0.000%  23.941%   0.000%  10.494%   0.000%   2.727%   0.000%  16.164%
   36    3.1  2.0 -1.0   0.000%   0.000%  28.628%   0.000%   0.096%   0.000%  16.677%   0.000%  26.578%   0.000%
   37    1.1  2.0 -2.0   8.145%   8.132%   0.000%   7.964%   0.000%  22.116%   0.000%  18.698%   0.000%   4.544%
   38    2.1  2.0 -2.0   0.000%   0.000%   1.013%   0.000%   7.233%   0.000%  16.662%   0.000%   9.429%   0.000%
   39    3.1  2.0 -2.0   8.139%   8.126%   0.000%   0.141%   0.000%   9.511%   0.000%  26.532%   0.000%  17.161%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39

    1    1.1  1.0  1.0   0.003%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.0  1.0   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.0  1.0   0.003%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.0  1.0  16.647%   0.000%   0.000%  24.668%  14.188%   0.000%   0.000%  24.185%  18.187%
    5    5.1  1.0  1.0   0.001%  24.756%  24.844%   0.001%   0.000%  24.107%  24.018%   0.001%   0.002%
    6    6.1  1.0  1.0  16.603%   0.001%   0.002%  24.496%   3.319%   0.001%   0.001%  24.350%  29.093%
    7    1.1  1.0  0.0   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
    8    2.1  1.0  0.0   0.007%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    9    3.1  1.0  0.0   0.000%   0.004%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   10    4.1  1.0  0.0   0.000%  48.828%   0.000%   0.000%   0.000%  48.878%   0.000%   0.000%   0.000%
   11    5.1  1.0  0.0  33.472%   0.000%   0.004%   0.000%  62.082%   0.000%   0.002%   0.000%   2.507%
   12    6.1  1.0  0.0   0.002%   0.000%  48.645%   0.000%   0.003%   0.000%  49.047%   0.000%   0.000%
   13    1.1  1.0 -1.0   0.003%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.1  1.0 -1.0   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.1  1.0 -1.0   0.003%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.1  1.0 -1.0  16.647%   0.000%   0.000%  24.668%  14.188%   0.000%   0.000%  24.185%  18.187%
   17    5.1  1.0 -1.0   0.001%  24.756%  24.844%   0.001%   0.000%  24.107%  24.018%   0.001%   0.002%
   18    6.1  1.0 -1.0  16.603%   0.001%   0.002%  24.496%   3.319%   0.001%   0.001%  24.350%  29.093%
   19    1.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   0.000%   0.248%   0.249%   0.000%   0.000%   0.240%   0.239%   0.000%   0.000%
   26    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.038%   0.000%   0.000%   0.976%   0.938%
   27    3.1  2.0  2.0   0.000%   0.247%   0.248%   0.000%   0.000%   0.239%   0.238%   0.000%   0.000%
   28    1.1  2.0  1.0   0.000%   0.000%   0.000%   0.249%   0.545%   0.000%   0.000%   0.245%   0.426%
   29    2.1  2.0  1.0   0.000%   0.248%   0.247%   0.000%   0.000%   0.246%   0.247%   0.000%   0.000%
   30    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.249%   0.867%   0.000%   0.000%   0.242%   0.099%
   31    1.1  2.0  0.0   0.000%   0.000%   0.164%   0.000%   0.000%   0.000%   1.464%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.665%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.164%   0.000%   0.000%   0.000%   1.455%   0.000%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.000%   0.000%   0.249%   0.545%   0.000%   0.000%   0.245%   0.426%
   35    2.1  2.0 -1.0   0.000%   0.248%   0.247%   0.000%   0.000%   0.246%   0.247%   0.000%   0.000%
   36    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.249%   0.867%   0.000%   0.000%   0.242%   0.099%
   37    1.1  2.0 -2.0   0.000%   0.248%   0.249%   0.000%   0.000%   0.240%   0.239%   0.000%   0.000%
   38    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.038%   0.000%   0.000%   0.976%   0.938%
   39    3.1  2.0 -2.0   0.000%   0.247%   0.248%   0.000%   0.000%   0.239%   0.238%   0.000%   0.000%


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
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       8     4317.66       700     1000      520     2100     2140     5302     5102     5502   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     65207.99  57247.38    541.15   2480.16   4915.64     13.20      0.90      9.32
 REAL TIME  *     66162.76 SEC
 DISK USED  *         4.31 GB (local),      122.21 GB (total)
 SF USED    *        21.52 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -267.806418404573

              CI              CI              CI           MULTI         RHF-SCF
   -267.72963409   -267.87568044   -267.72197925   -266.79158119   -266.72073571
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
